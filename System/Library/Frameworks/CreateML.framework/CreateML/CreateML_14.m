Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLBoostedTreeRegressor.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
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
  MLBoostedTreeRegressor.write(to:metadata:)();
  (*(v24 + 8))(v29, v21);
  OUTLINED_FUNCTION_73();
}

unint64_t MLBoostedTreeRegressor.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLBoostedTreeRegressor();
  v3 = v0 + v2[8];
  v4 = MLBoostedTreeRegressor.ModelParameters.description.getter();
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

  return 0xD000000000000021;
}

id MLBoostedTreeRegressor.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLBoostedTreeRegressor.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237AF7E10()
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

uint64_t sub_237AF7ECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

id sub_237AF7F28@<X0>(void *a1@<X8>)
{
  result = MLBoostedTreeRegressor.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237AF7F6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_237AF8028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_237AF80D0()
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

uint64_t sub_237AF8198()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_237AF81E0(uint64_t a1)
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

  return sub_237AF6664(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_237AF82A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCA0, &qword_237C12348);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF8310()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_237AF8364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_34()
{
  result = *(v0 - 280);
  v2 = *(v0 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_25()
{
  v1 = *(v0 - 256);
  v2 = *(*(v0 - 248) + 8);
  return *(v0 - 416);
}

uint64_t OUTLINED_FUNCTION_23_22()
{
  v1 = *(*(v0 - 312) + 8);
  result = *(v0 - 280);
  v3 = *(v0 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_9()
{
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[7];
  v6 = v0[8];

  return sub_237AF82A0(v5, v6);
}

uint64_t OUTLINED_FUNCTION_43_6()
{
  v2 = *(v0 - 352);

  return sub_237AF8310();
}

uint64_t sub_237AF8540(uint64_t a1)
{
  _s20PersistentParametersVMa_1();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_237C05DAC();
  sub_237C05DBC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  _s10ClassifierVMa_1();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  _s5ModelVMa();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  OUTLINED_FUNCTION_16_21();
  sub_237AFC250(a1, v1 + v26, v27);
  return v1;
}

void sub_237AF8658()
{
  OUTLINED_FUNCTION_74();
  v87 = v2;
  v3 = v0;
  v89 = v4;
  v6 = v5;
  v8 = v7;
  v88 = v9;
  v11 = v10;
  v85 = *v3;
  v86 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23();
  v82 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23();
  v83 = v22;
  v23 = sub_237C05DBC();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_22();
  v84 = v29;
  v30 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  v31 = _s20PersistentParametersVMa_1();
  v81 = v30;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  sub_237C05DAC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v23);
  _s10ClassifierVMa_1();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  _s5ModelVMa();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  v46 = type metadata accessor for MLClassifierMetrics(0);
  v47 = v6;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v46);
  OUTLINED_FUNCTION_64();
  v51 = v11;
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v46);
  sub_237B19700(v11, v8, v47, v86);
  if (v1)
  {

    OUTLINED_FUNCTION_3_49();
    sub_237AFC1F8(v89, v56);
    sub_237A2A1B0(v87);
    sub_2379D9054(v88, &qword_27DE9A9A0, &qword_237C0BF60);
    v57 = *(v26 + 8);
    v57(v11, v23);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9B670, &qword_237C0DD10);
    v57(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData, v23);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, &qword_27DE9CCD0, &qword_237C123E0);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model, &qword_27DE9B668, &qword_237C0DD08);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics, &qword_27DE9B660, &qword_237C0DD00);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics, &qword_27DE9B660, &qword_237C0DD00);
    v58 = *(*v3 + 48);
    v59 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v79 = v55;
    v78 = v31;
    v80 = v8;

    v60 = v88;
    sub_237AFC148(v88, v83, &qword_27DE9A9A0, &qword_237C0BF60);
    OUTLINED_FUNCTION_20_20(v83);
    if (v61)
    {
      sub_2379D9054(v83, &qword_27DE9A9A0, &qword_237C0BF60);
      v73 = *(v26 + 32);
      v76 = v87;
    }

    else
    {
      v77 = *(v26 + 32);
      v77(v84, v83, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0B660;
      *(inited + 32) = v8;
      *(inited + 40) = v47;

      sub_2379F2DA4();
      v73 = v77;
      swift_setDeallocating();
      sub_237B9082C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_237C0B670;
      v75 = MEMORY[0x277D83B88];
      *(v74 + 32) = MEMORY[0x277D837D0];
      *(v74 + 40) = v75;
      sub_2379F30EC();
      (*(v26 + 8))(v84, v23);

      v76 = v87;
      v60 = v88;
    }

    v73(v82, v51, v23);
    v62 = v78[5];
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v23);
    sub_237AFC2B0(v60, v82 + v62, &qword_27DE9A9A0, &qword_237C0BF60);
    v66 = (v82 + v78[6]);
    *v66 = v80;
    v66[1] = v47;
    *(v82 + v78[7]) = v79;
    memcpy((v82 + v78[8]), v76, 0x49uLL);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v78);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237AFC2B0(v82, v3 + v81, &qword_27DE9B670, &qword_237C0DD10);
    swift_endAccess();
    OUTLINED_FUNCTION_16_21();
    sub_237AFC250(v89, v3 + v70, v71);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237AF8E1C()
{
  OUTLINED_FUNCTION_74();
  v128 = v1;
  v116 = sub_237C0747C();
  v2 = OUTLINED_FUNCTION_0(v116);
  v115 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B668, &qword_237C0DD08);
  OUTLINED_FUNCTION_20(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v11);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B628, &unk_237C0DBE0);
  v12 = OUTLINED_FUNCTION_0(v127);
  v126 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0(&v112 - v17);
  v129 = _s10ClassifierVMa_1();
  v18 = OUTLINED_FUNCTION_4(v129);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v26);
  v134 = sub_237C0602C();
  v27 = OUTLINED_FUNCTION_0(v134);
  v124 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCD0, &qword_237C123E0);
  v33 = OUTLINED_FUNCTION_20(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77_0(&v112 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  v43 = &v112 - v42;
  v44 = _s20PersistentParametersVMa_1();
  v45 = OUTLINED_FUNCTION_4(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_0();
  v50 = v49 - v48;
  v51 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237AFC148(v0 + v51, v43, &qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20_20(v43);
  if (v52)
  {
    sub_2379D9054(v43, &qword_27DE9B670, &qword_237C0DD10);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_1_55();
    sub_237AFC250(v43, v50, v53);
    v54 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    v55 = sub_237C05DBC();
    OUTLINED_FUNCTION_4(v55);
    (*(v56 + 24))(v0 + v54, v50, v55);
    swift_endAccess();
    v57 = v44[5];
    v58 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237A6EE90(v50 + v57, v0 + v58);
    swift_endAccess();
    v59 = v44[6];
    v130 = v50;
    v60 = (v50 + v59);
    v61 = *v60;
    v62 = v60[1];
    OUTLINED_FUNCTION_27_10();
    swift_beginAccess();
    sub_237C05DFC();
    swift_endAccess();
    OUTLINED_FUNCTION_27_10();
    swift_beginAccess();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0 + v58, 1, v55);
    v113 = v0;
    if (EnumTagSinglePayload)
    {
      swift_endAccess();
      v64 = 1;
      v65 = v126;
      v66 = v134;
      v67 = v123;
    }

    else
    {
      v67 = v123;
      sub_237C05DFC();
      swift_endAccess();
      v64 = 0;
      v65 = v126;
      v66 = v134;
    }

    v68 = v62;
    v120 = v62;
    __swift_storeEnumTagSinglePayload(v67, v64, 1, v66);
    v69 = v44[8];
    v70 = *(v130 + v44[7]);
    sub_237A3B70C(v130 + v69, v133);
    v71 = v121;
    *v121 = v61;
    *(v71 + 8) = v68;
    *(v71 + 16) = v70;
    sub_237A3B70C(v133, v71 + 24);
    *(v71 + 120) = v70;
    *(v71 + 128) = 0xD000000000000013;
    *(v71 + 136) = 0x8000000237C17BE0;
    sub_237A3B70C(v133, v132);
    sub_237A20BBC();
    swift_bridgeObjectRetain_n();

    v72 = v125;
    sub_237C072AC();
    v73 = v127;
    sub_237C0725C();
    sub_237C0728C();
    sub_237C0729C();
    sub_237C0727C();
    sub_237C0726C();
    sub_237A2A1B0(v132);
    (*(v65 + 16))(v122, v72, v73);
    v74 = v129;
    v75 = *(v129 + 36);
    sub_237C073CC();
    v76 = v128;
    v77 = sub_237B89590(v131, v67);
    v128 = v76;
    if (v76)
    {
      (*(v65 + 8))(v72, v73);
      sub_237A2A1B0(v133);
      sub_2379D9054(v67, &qword_27DE9AF88, &unk_237C0C700);
      v79 = OUTLINED_FUNCTION_28_12();
      v80(v79);

      sub_237A2A1B0(v71 + 24);

      v81 = sub_237C0741C();
      OUTLINED_FUNCTION_4(v81);
      (*(v82 + 8))(v71 + v75);
      OUTLINED_FUNCTION_2_55();
      sub_237AFC1F8(v130, v83);
LABEL_9:
      OUTLINED_FUNCTION_73();
      return;
    }

    v84 = v77;
    v85 = v72;
    v86 = v78;
    (*(v65 + 8))(v85, v73);
    sub_237A2A1B0(v133);
    sub_2379D9054(v67, &qword_27DE9AF88, &unk_237C0C700);
    v87 = OUTLINED_FUNCTION_28_12();
    v88(v87);
    *(v71 + 104) = v84;
    *(v71 + 112) = v86 & 1;
    v89 = v118;
    sub_237AFC250(v71, v118, _s10ClassifierVMa_1);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v74);
    v93 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    v94 = v113;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237AFC2B0(v89, v94 + v93, &qword_27DE9CCD0, &qword_237C123E0);
    swift_endAccess();
    v95 = v119;
    sub_237AFC148(v94 + v93, v119, &qword_27DE9CCD0, &qword_237C123E0);
    OUTLINED_FUNCTION_73_1(v95, 1, v74);
    if (!v52)
    {
      v97 = *v95;
      v96 = *(v95 + 8);
      v98 = *(*(v95 + 104) + 16);
      v99 = *(v74 + 36);

      v100 = v114;
      sub_237C073DC();
      v101 = *(v95 + 104);
      v102 = *(v95 + 112);
      v103 = v117;
      *v117 = v97;
      *(v103 + 1) = v96;
      v104 = _s5ModelVMa();
      *(v103 + 3) = 0;
      *(v103 + 4) = 0;
      *(v103 + 2) = 0;
      (*(v115 + 32))(&v103[*(v104 + 24)], v100, v116);
      v105 = &v103[*(v104 + 28)];
      *v105 = v101;
      v105[8] = v102;

      OUTLINED_FUNCTION_2_55();
      sub_237AFC1F8(v130, v106);
      OUTLINED_FUNCTION_0_57();
      sub_237AFC1F8(v95, v107);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v104);
      v111 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237AFC2B0(v103, v94 + v111, &qword_27DE9B668, &qword_237C0DD08);
      swift_endAccess();
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_237AF97A4()
{
  OUTLINED_FUNCTION_74();
  v84[0] = v1;
  v93 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B668, &qword_237C0DD08);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCD0, &qword_237C123E0);
  v9 = OUTLINED_FUNCTION_20(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v12);
  v89 = v84 - v13;
  v14 = sub_237C0602C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v87 = v16;
  v88 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v25 = v84 - v24;
  v26 = type metadata accessor for MLCheckpoint();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_22();
  v91 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  v36 = v84 - v35;
  v37 = _s20PersistentParametersVMa_1();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_0();
  v43 = v42 - v41;
  v44 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v90 = v0;
  sub_237AFC148(v0 + v44, v36, &qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_73_1(v36, 1, v37);
  if (v45)
  {
    sub_2379D9054(v36, &qword_27DE9B670, &qword_237C0DD10);
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_1_55();
  sub_237AFC250(v36, v43, v46);
  sub_237A9A92C(v93, v25);
  OUTLINED_FUNCTION_73_1(v25, 1, v26);
  if (v45)
  {
    sub_2379D9054(v25, &qword_27DE9B8E8, &qword_237C0EBF0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_18_4(v47, 0xD00000000000001DLL);
LABEL_12:
    OUTLINED_FUNCTION_2_55();
    sub_237AFC1F8(v43, v67);
    goto LABEL_19;
  }

  v48 = v91;
  sub_237AFC250(v25, v91, type metadata accessor for MLCheckpoint);
  v49 = v90;
  switch(*(v48 + *(v26 + 20)))
  {
    case 2:

      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_60_0();
      goto LABEL_8;
    default:
LABEL_8:
      OUTLINED_FUNCTION_57_0();
      v50 = sub_237C0929C();

      if ((v50 & 1) == 0)
      {
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_18_4(v66, 0xD000000000000027);
        OUTLINED_FUNCTION_17_20();
        goto LABEL_12;
      }

LABEL_9:
      v51 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v52 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v52);
      (*(v53 + 24))(v49 + v51, v43);
      swift_endAccess();
      v54 = v37[5];
      v55 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6EE90(v43 + v54, v49 + v55);
      swift_endAccess();
      v56 = (v43 + v37[6]);
      v57 = *v56;
      v58 = v56[1];
      OUTLINED_FUNCTION_27_10();
      swift_beginAccess();
      v59 = v86;
      sub_237C05DFC();
      swift_endAccess();
      sub_237C05FFC();
      (*(v87 + 8))(v59, v88);
      if (swift_dynamicCastMetatype())
      {
        v60 = *(v43 + v37[7]);

        v61 = MEMORY[0x277D84F90];
        v62 = v37;
        v63 = v89;
        v64 = v89;
        v65 = 1;
      }

      else
      {
        if (!swift_dynamicCastMetatype())
        {
LABEL_23:
          sub_237C090DC();
          __break(1u);
          JUMPOUT(0x237AF9F80);
        }

        v60 = *(v43 + v37[7]);

        v61 = MEMORY[0x277D84F90];
        v62 = v37;
        v63 = v89;
        v64 = v89;
        v65 = 0;
      }

      sub_237A95650(v61, v65, v57, v58, v60, v64);
      v68 = _s10ClassifierVMa_1();
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
      v72 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237AFC2B0(v63, v49 + v72, &qword_27DE9CCD0, &qword_237C123E0);
      swift_endAccess();
      sub_237A3B70C(v43 + v62[8], v92);
      v73 = v49 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      _s10ClassifierVMa_1();
      OUTLINED_FUNCTION_73_1(v73, 1, v68);
      if (v45)
      {
        goto LABEL_21;
      }

      sub_237AFC19C(v92, v73 + 24);
      swift_endAccess();
      v74 = v85;
      sub_237AFC148(v73, v85, &qword_27DE9CCD0, &qword_237C123E0);
      OUTLINED_FUNCTION_73_1(v74, 1, v68);
      if (v45)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      sub_237AFC0F0();
      v75 = v84[1];
      v76 = v84[0];
      sub_237C0723C();
      OUTLINED_FUNCTION_17_20();
      OUTLINED_FUNCTION_2_55();
      sub_237AFC1F8(v43, v77);
      OUTLINED_FUNCTION_0_57();
      sub_237AFC1F8(v74, v78);
      if (!v76)
      {
        _s5ModelVMa();
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
        v83 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        sub_237AFC2B0(v75, v49 + v83, &qword_27DE9B668, &qword_237C0DD08);
        swift_endAccess();
      }

LABEL_19:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237AF9F94(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters;
  return *(v3 + *(type metadata accessor for MLTrainingSessionParameters() + 28));
}

uint64_t sub_237AF9FE8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_237C06A4C();
  v2[16] = v3;
  OUTLINED_FUNCTION_1(v3);
  v2[17] = v4;
  v6 = *(v5 + 64);
  v2[18] = OUTLINED_FUNCTION_19();
  v7 = sub_237C05DBC();
  v2[19] = v7;
  OUTLINED_FUNCTION_1(v7);
  v2[20] = v8;
  v10 = *(v9 + 64);
  v2[21] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCD0, &qword_237C123E0);
  OUTLINED_FUNCTION_20(v11);
  v13 = *(v12 + 64);
  v2[22] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v14);
  v16 = *(v15 + 64);
  v2[23] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_237AFA138()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237AFC148(v2 + v3, v1, &qword_27DE9B670, &qword_237C0DD10);
  v4 = _s20PersistentParametersVMa_1();
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v1, 1, v4);
  result = sub_2379D9054(v1, &qword_27DE9B670, &qword_237C0DD10);
  if (v2 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v0[14];
  v7 = v0[15] + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters;
  result = type metadata accessor for MLTrainingSessionParameters();
  v8 = *(v7 + *(result + 20));
  if (__OFADD__(v6, v8))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = *(v7 + *(result + 28));
  if (__OFSUB__(v9, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v8 >= v9 - v6)
  {
    v10 = v9 - v6;
  }

  else
  {
    v10 = *(v7 + *(result + 20));
  }

  type metadata accessor for EventCollector();
  swift_allocObject();
  result = sub_237AD988C();
  v49 = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = result;
    v12 = v0[20];
    v13 = v0[15];
    v14 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
    v15 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
    v48 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v47 = v14;
    OUTLINED_FUNCTION_71();
    result = swift_beginAccess();
    v16 = 0;
    v17 = (v12 + 16);
    v18 = (v12 + 8);
    while (1)
    {
      if (v49 == v16)
      {
        v28 = v0[17];
        v29 = v0[18];
        v30 = v0[16];
        sub_237C06A1C();
        sub_237B1A15C();
        v32 = v31;
        v33 = *(v28 + 8);
        v33(v29, v30);
        if ((v32 & 1) == 0)
        {
          OUTLINED_FUNCTION_36_11();
          sub_237B19FFC(v34, 3);
        }

        v35 = v0[18];
        v36 = v0[16];
        sub_237C069EC();
        sub_237B1A15C();
        v38 = v37;
        v33(v35, v36);
        if ((v38 & 1) == 0)
        {
          OUTLINED_FUNCTION_36_11();
          sub_237B19FFC(v39, 0);
        }

        v41 = v0[22];
        v40 = v0[23];
        v42 = v0[21];
        v43 = v0[18];

        v44 = v0[1];
        OUTLINED_FUNCTION_25_19();

        __asm { BRAA            X4, X16 }
      }

      if (__OFADD__(v16, 1))
      {
        break;
      }

      v19 = v0[22];
      sub_237AFC148(v13 + v48, v19, &qword_27DE9CCD0, &qword_237C123E0);
      v20 = _s10ClassifierVMa_1();
      result = __swift_getEnumTagSinglePayload(v19, 1, v20);
      if (result == 1)
      {
        goto LABEL_26;
      }

      (*v17)(v0[21], v13 + v47, v0[19]);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v21 = _s5ModelVMa();
      result = __swift_getEnumTagSinglePayload(v13 + v15, 1, v21);
      if (result == 1)
      {
        goto LABEL_27;
      }

      v23 = v0[21];
      v22 = v0[22];

      sub_237A960C0((v13 + v15), v23, sub_237AFC198, v11);
      v25 = v0[21];
      v24 = v0[22];
      v26 = v0[19];
      swift_endAccess();

      (*v18)(v25, v26);
      OUTLINED_FUNCTION_0_57();
      result = sub_237AFC1F8(v24, v27);
      ++v16;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_237AFA5BC()
{
  v1[26] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  v1[27] = OUTLINED_FUNCTION_19();
  v5 = sub_237C0602C();
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v8 = type metadata accessor for AnyClassificationMetrics();
  OUTLINED_FUNCTION_20(v8);
  v10 = *(v9 + 64);
  v1[30] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  OUTLINED_FUNCTION_20(v11);
  v13 = *(v12 + 64);
  v1[31] = OUTLINED_FUNCTION_19();
  v14 = sub_237C05DBC();
  v1[32] = v14;
  OUTLINED_FUNCTION_1(v14);
  v1[33] = v15;
  v17 = *(v16 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B668, &qword_237C0DD08);
  OUTLINED_FUNCTION_20(v18);
  v20 = *(v19 + 64);
  v1[38] = OUTLINED_FUNCTION_19();
  v21 = _s5ModelVMa();
  v1[39] = v21;
  OUTLINED_FUNCTION_20(v21);
  v23 = *(v22 + 64);
  v1[40] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

void sub_237AFA790()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[26];
  v4 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237AFC148(v3 + v4, v1, &qword_27DE9B668, &qword_237C0DD08);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2379D9054(v0[38], &qword_27DE9B668, &qword_237C0DD08);
  }

  else
  {
    v5 = v0[26];
    sub_237AFC250(v0[38], v0[40], _s5ModelVMa);
    v6 = v5 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
    OUTLINED_FUNCTION_27_10();
    swift_beginAccess();
    v7 = _s20PersistentParametersVMa_1();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7))
    {
      sub_237AFC1F8(v0[40], _s5ModelVMa);
      swift_endAccess();
    }

    else
    {
      v22 = v0[36];
      v21 = v0[37];
      v23 = v0[32];
      v24 = v0[33];
      v25 = v0[26];
      v26 = (v6 + *(v7 + 24));
      v27 = v26[1];
      v78 = *v26;
      swift_endAccess();
      v28 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      (*(v24 + 16))(v22, v25 + v28, v23);

      OUTLINED_FUNCTION_11();
      sub_237A93A8C(v29);
      v30 = v0[37];
      v31 = v0[30];
      v32 = v0[31];
      v34 = v0[28];
      v33 = v0[29];
      v35 = v0[27];
      v72 = v35;
      v74 = v0[32];
      v70 = v0[26];
      v77 = *(v0[33] + 8);
      (v77)(v0[36]);
      sub_237C05DFC();
      OUTLINED_FUNCTION_27_10();
      swift_beginAccess();
      sub_237C05DFC();
      swift_endAccess();
      sub_237B0CBBC();
      OUTLINED_FUNCTION_14_23();
      sub_237AFC250(v31, v32, v36);
      type metadata accessor for MLClassifierMetrics.Contents(0);
      swift_storeEnumTagMultiPayload();
      v37 = type metadata accessor for MLClassifierMetrics(0);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
      v41 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237AFC2B0(v32, v70 + v41, &qword_27DE9B660, &qword_237C0DD00);
      swift_endAccess();
      v42 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237AFC148(v70 + v42, v72, &qword_27DE9A9A0, &qword_237C0BF60);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v74);
      v44 = v0[40];
      if (EnumTagSinglePayload == 1)
      {
        v45 = v0[37];
        v47 = v0[31];
        v46 = v0[32];
        v48 = v0[26];
        v49 = v0[27];

        v77(v45, v46);
        OUTLINED_FUNCTION_4_48();
        sub_237AFC1F8(v44, v50);
        sub_2379D9054(v49, &qword_27DE9A9A0, &qword_237C0BF60);
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v37);
        v54 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics;
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        sub_237AFC2B0(v47, v48 + v54, &qword_27DE9B660, &qword_237C0DD00);
      }

      else
      {
        v55 = v0[34];
        (*(v0[33] + 32))(v0[35], v0[27], v0[32]);
        OUTLINED_FUNCTION_11();
        sub_237A93A8C(v56);
        v69 = v0[37];
        v71 = v0[40];
        v66 = v0[35];
        v67 = v0[34];
        v57 = v0[32];
        v58 = v0[29];
        v68 = v0[30];
        v59 = v0[28];
        v73 = v0[31];
        v75 = v0[26];
        sub_237C05DFC();
        sub_237C05DFC();

        sub_237B0CBBC();
        v77(v67, v57);
        v77(v66, v57);
        v77(v69, v57);
        OUTLINED_FUNCTION_4_48();
        sub_237AFC1F8(v71, v60);
        OUTLINED_FUNCTION_14_23();
        sub_237AFC250(v68, v73, v61);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v62, v63, v64, v37);
        v65 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics;
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        sub_237AFC2B0(v73, v75 + v65, &qword_27DE9B660, &qword_237C0DD00);
      }

      swift_endAccess();
    }
  }

  v8 = v0[40];
  v10 = v0[37];
  v9 = v0[38];
  v12 = v0[35];
  v11 = v0[36];
  v13 = v0[34];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[28];
  v17 = v0[29];
  v76 = v0[27];

  v18 = v0[1];
  OUTLINED_FUNCTION_25_19();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_237AFAEA8(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B668, &qword_237C0DD08);
  OUTLINED_FUNCTION_20(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCD0, &qword_237C123E0);
  OUTLINED_FUNCTION_20(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v25[-v14];
  switch(*a2)
  {
    case 2:

      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_60_0();
      goto LABEL_4;
    default:
LABEL_4:
      OUTLINED_FUNCTION_57_0();
      v16 = sub_237C0929C();

      if ((v16 & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

LABEL_5:
      v17 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237AFC148(v2 + v17, v15, &qword_27DE9CCD0, &qword_237C123E0);
      _s10ClassifierVMa_1();
      OUTLINED_FUNCTION_20_20(v15);
      if (v18)
      {
        __break(1u);
        goto LABEL_11;
      }

      v19 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237AFC148(v2 + v19, v9, &qword_27DE9B668, &qword_237C0DD08);
      v20 = _s5ModelVMa();
      OUTLINED_FUNCTION_73_1(v9, 1, v20);
      if (v18)
      {
LABEL_11:
        __break(1u);
        JUMPOUT(0x237AFB120);
      }

      sub_237AFC0F0();
      v21 = 1;
      sub_237C0724C();
      OUTLINED_FUNCTION_4_48();
      sub_237AFC1F8(v9, v22);
      OUTLINED_FUNCTION_0_57();
      sub_237AFC1F8(v15, v23);
      return v21 & 1;
  }
}

void sub_237AFB134()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = _s20PersistentParametersVMa_1();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237AFC148(v0 + v16, v8, &qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_73_1(v8, 1, v9);
  if (v17)
  {
    sub_2379D9054(v8, &qword_27DE9B670, &qword_237C0DD10);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v18 = 0xD000000000000030;
    *(v18 + 8) = 0x8000000237C191C0;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_1_55();
    sub_237AFC250(v8, v15, v19);
    sub_237A2A204(v2);
    OUTLINED_FUNCTION_2_55();
    sub_237AFC1F8(v15, v20);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237AFB2D4()
{
  OUTLINED_FUNCTION_74();
  v43 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = sub_237C05ADC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v22 = (v21 - v20);
  v23 = _s20PersistentParametersVMa_1();
  v24 = OUTLINED_FUNCTION_4(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v42 - v31;
  (*(v17 + 16))(v22, v3, v14);
  sub_237A28F78(v22, v32);
  if (!v1)
  {
    v33 = v10;
    v34 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
    v35 = v43;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_237AFC148(v35 + v34, v13, &qword_27DE9B670, &qword_237C0DD10);
    OUTLINED_FUNCTION_20_20(v13);
    if (v36)
    {
      sub_2379D9054(v13, &qword_27DE9B670, &qword_237C0DD10);
      OUTLINED_FUNCTION_1_55();
      sub_237AFC250(v32, v33, v37);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v23);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237AFC2B0(v33, v35 + v34, &qword_27DE9B670, &qword_237C0DD10);
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_1_55();
      sub_237AFC250(v13, v29, v41);
      sub_237AFB578(v32, v29);
      sub_237AFC1F8(v29, _s20PersistentParametersVMa_1);
      sub_237AFC1F8(v32, _s20PersistentParametersVMa_1);
    }
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237AFB578(uint64_t a1, uint64_t a2)
{
  v4 = _s20PersistentParametersVMa_1();
  v5 = v4[6];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v7 == *v8 && v6 == v8[1];
  if (v9 || (v10 = *v8, v11 = v8[1], (sub_237C0929C() & 1) != 0))
  {
    v12 = *(a1 + v4[7]);

    v14 = sub_237B42F98(v13);
    v15 = *(a2 + v4[7]);

    v17 = sub_237B42F98(v16);
    v18 = sub_237A6E3A8(v14, v17);

    if (v18)
    {
      result = sub_237AF2008((a1 + v4[8]), a2 + v4[8], &v28);
      v20 = v29;
      if (!v29)
      {
        return result;
      }

      v22 = v32;
      v21 = v33;
      v7 = v30;
      v6 = v31;
      v23 = v28;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
    }

    else
    {
      v20 = 0x8000000237C198F0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
      sub_237A6EF00();
      v7 = OUTLINED_FUNCTION_50_4();
      v6 = v25;

      OUTLINED_FUNCTION_50_4();

      v22 = sub_237C0883C();
      v21 = v26;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
      v23 = 0xD000000000000011;
    }
  }

  else
  {

    v22 = sub_237C0883C();
    v21 = v27;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    v20 = 0xED00006E6D756C6FLL;
    v23 = 0x6320746567726154;
  }

  *v24 = v23;
  *(v24 + 8) = v20;
  *(v24 + 16) = v7;
  *(v24 + 24) = v6;
  *(v24 + 32) = v22;
  *(v24 + 40) = v21;
  *(v24 + 48) = 3;
  return swift_willThrow();
}

uint64_t sub_237AFB7FC()
{
  OUTLINED_FUNCTION_3_49();
  sub_237AFC1F8(v0 + v1, v2);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9B670, &qword_237C0DD10);
  v3 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(v0 + v3);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, &qword_27DE9CCD0, &qword_237C123E0);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model, &qword_27DE9B668, &qword_237C0DD08);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics, &qword_27DE9B660, &qword_237C0DD00);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics, &qword_27DE9B660, &qword_237C0DD00);
  return v0;
}

uint64_t sub_237AFB930()
{
  sub_237AFB7FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate()
{
  result = qword_27DE9CCA8;
  if (!qword_27DE9CCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237AFB9DC()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_237AFBC5C(319, &qword_27DE9CCB8, _s20PersistentParametersVMa_1);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      v4 = sub_237C05DBC();
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_237AFBC5C(319, &qword_27DE9AE50, MEMORY[0x277CE1898]);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_237AFBC5C(319, &qword_27DE9CCC0, _s10ClassifierVMa_1);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_237AFBC5C(319, &qword_27DE9CCC8, _s5ModelVMa);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_237AFBC5C(319, &qword_27DE9B880, type metadata accessor for MLClassifierMetrics);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_237AFBC5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237C08D2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_237AFBD20(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237AFBDB8;

  return sub_237AF9FE8(a1);
}

uint64_t sub_237AFBDB8(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v11 = *(v14 + 8);
  if (v3)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 & 1;
    v9 = a1;
    v10 = a2;
  }

  return v11(v9, v10, v12);
}

uint64_t sub_237AFBED8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237AFBF68;

  return sub_237AFA5BC();
}

uint64_t sub_237AFBF68(uint64_t a1, char a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v8 = *(v11 + 8);
  if (v2)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2 & 1;
    v7 = a1;
  }

  return v8(v7, v9);
}

unint64_t sub_237AFC0F0()
{
  result = qword_27DE9C198;
  if (!qword_27DE9C198)
  {
    _s10ClassifierVMa_1();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C198);
  }

  return result;
}

uint64_t sub_237AFC148(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_151(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_237AFC1F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237AFC250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237AFC2B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_151(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_17_20()
{

  return sub_237AFC1F8(v0, type metadata accessor for MLCheckpoint);
}

uint64_t OUTLINED_FUNCTION_28_12()
{
  v2 = *(*(v1 - 336) + 8);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

uint64_t MLDataValue.sequenceValue.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 16) == 3)
  {
    v3 = *v1;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t MLDataValue.doubleValue.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MLDataValue.intValue.getter()
{
  if (v0[16])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t MLDataValue.stringValue.getter()
{
  if (*(v0 + 16) != 2)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

id MLDataValue.multiArrayValue.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 16) == 5)
  {
    v3 = *v1;
    result = v3;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_237AFC548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(sub_237A2E910())
  {
    case 1u:
      v14 = *(a1 + 16);

      sub_237B0E848();
      v16 = v15;

      v9 = 0;
      v7 = v16;
      v6 = 1;
      break;
    case 2u:

      v7 = sub_237A2DE60();
      v9 = v12;
      v6 = 2;

      break;
    case 3u:
      v13 = sub_237B0DD68(*(a1 + 16));
      if (!v13)
      {
        goto LABEL_15;
      }

      type metadata accessor for CMLSequence();
      v7 = swift_allocObject();
      *(v7 + 16) = v13;
      *(v7 + 24) = 1;

      v9 = 0;
      v6 = 3;
      break;
    case 4u:
      v10 = sub_237B0DDC8(*(a1 + 16));
      if (!v10)
      {
        goto LABEL_14;
      }

      type metadata accessor for CMLDictionary();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      v19[0] = v11;
      v19[1] = sub_237B004D4;
      v19[2] = 0;
      v19[3] = sub_237B02424;
      v19[4] = 0;
      v19[5] = sub_237AB65A0;
      v19[6] = 0;
      v18 = MEMORY[0x277D84F98];
      swift_retain_n();
      sub_237B019D8(v19, 1, &v18);

      v9 = 0;
      v7 = v18;
      v6 = 4;
      break;
    case 5u:

      v7 = 0;
      v9 = 0;
      v6 = 6;
      break;
    case 6u:

      sub_237AC8278(v17, v19);
      v7 = v19[0];
      if (!v19[0])
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        JUMPOUT(0x237AFC83CLL);
      }

      v9 = 0;
      v6 = 5;
      break;
    default:
      v4 = *(a1 + 16);

      v5 = v4;
      v6 = 0;
      v7 = sub_237B0ECCC(v5);

      v9 = 0;
      break;
  }

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_237AFC858()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      v2 = sub_237B0F594(*v0);
      if (!v2)
      {
        __break(1u);
        OUTLINED_FUNCTION_57_4();
        swift_unexpectedError();
        __break(1u);
        JUMPOUT(0x237AFC9B0);
      }

      goto LABEL_8;
    case 2:
      v4 = v0[1];
      type metadata accessor for CMLFeatureValue();

      return sub_237A2E7CC();
    case 3:
      OUTLINED_FUNCTION_14_24();
      return sub_237A91FA8();
    case 4:
      goto LABEL_4;
    case 5:
      OUTLINED_FUNCTION_14_24();
      return sub_237AC85C4();
    case 6:
      type metadata accessor for CMLFeatureValue();
      return sub_237A2E78C();
    default:
      v2 = sub_237B0F164(*v0);
      if (v2)
      {
LABEL_8:
        type metadata accessor for CMLFeatureValue();
        swift_allocObject();
        return sub_237A2E764(v2, 1);
      }

      else
      {
        __break(1u);
LABEL_4:
        OUTLINED_FUNCTION_14_24();
        return sub_237AFF290();
      }
  }
}

uint64_t MLDataValue.ValueType.description.getter()
{
  result = 7630409;
  switch(*v0)
  {
    case 1:
      result = 0x656C62756F44;
      break;
    case 2:
      result = 0x676E69727453;
      break;
    case 3:
      result = 0x65636E6575716553;
      break;
    case 4:
      result = 0x616E6F6974636944;
      break;
    case 5:
      result = 0x72724169746C754DLL;
      break;
    case 6:
      result = 0x676E697373694DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t MLDataValue.description.getter()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      v5 = *v0;
      v11 = 0;
      MEMORY[0x2383DC360](0x756C615661746144, 0xEA00000000002865);
      sub_237C08A8C();
      goto LABEL_10;
    case 2:
      v11 = 0x756C615661746144;
      MEMORY[0x2383DC360](v1, *(v0 + 8));
      v3 = 10530;
      v4 = 0xE200000000000000;
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_0_58();
      OUTLINED_FUNCTION_14_24();
      v2 = MLDataValue.SequenceType.description.getter();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_0_58();
      sub_237A60DE0();
      v2 = sub_237C0858C();
      goto LABEL_6;
    case 5:
      OUTLINED_FUNCTION_0_58();
      v6 = [v1 description];
      v7 = sub_237C086EC();
      v9 = v8;

      MEMORY[0x2383DC360](v7, v9);
      goto LABEL_9;
    case 6:
      return 0xD000000000000012;
    default:
      OUTLINED_FUNCTION_0_58();
      v2 = sub_237C0924C();
LABEL_6:
      MEMORY[0x2383DC360](v2);
LABEL_9:

LABEL_10:
      v3 = 41;
      v4 = 0xE100000000000000;
LABEL_11:
      MEMORY[0x2383DC360](v3, v4);
      return v11;
  }
}

void sub_237AFCC90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  sub_2379FED88(a1, v80);
  if (OUTLINED_FUNCTION_7_35())
  {
    v7 = *(&v70 + 1);
    v6 = v70;
    v8 = v71;
LABEL_51:
    __swift_destroy_boxed_opaque_existential_1(v80);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
LABEL_52:
    __swift_destroy_boxed_opaque_existential_1(v4);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
  if (OUTLINED_FUNCTION_7_35())
  {
    sub_237A1FCF0(&v70, &v66);
    v9 = *(&v67 + 1);
    v10 = v68;
    __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
    (*(v10 + 32))(&v61, v9, v10);
    v7 = *(&v61 + 1);
    v6 = v61;
    v8 = v62;
    __swift_destroy_boxed_opaque_existential_1(&v66);
    goto LABEL_51;
  }

  if (OUTLINED_FUNCTION_7_35())
  {
    v7 = *(&v70 + 1);
    v6 = v70;
    v8 = 2;
    goto LABEL_51;
  }

  if (OUTLINED_FUNCTION_7_35())
  {
    v7 = 0;
    v8 = 0;
    v6 = v70;
    goto LABEL_51;
  }

  if (OUTLINED_FUNCTION_7_35())
  {
    v7 = 0;
    v6 = v70;
    v8 = 1;
    goto LABEL_51;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
  v11 = swift_dynamicCast();
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = v74;
    v14 = *(v74 + 16);
    if (!v14)
    {

      v16 = MEMORY[0x277D84F90];
LABEL_46:
      sub_237A7987C(v16, &v70);
      v7 = 0;
      v6 = v70;
      v8 = 3;
      goto LABEL_51;
    }

    v59 = v4;
    v65[0] = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v15 = 0;
    v16 = v65[0];
    v17 = v74 + 32;
    while (v15 < *(v13 + 16))
    {
      sub_2379FED88(v17, &v70);
      sub_2379FED88(&v70, &v66);
      sub_237AFCC90(&v61, &v66);
      if (v3)
      {

        __swift_destroy_boxed_opaque_existential_1(&v70);

        v4 = v59;
        goto LABEL_49;
      }

      v81 = 0;
      v18 = v14;
      v19 = v13;
      __swift_destroy_boxed_opaque_existential_1(&v70);
      v20 = v61;
      v21 = v62;
      v65[0] = v16;
      v22 = *(v16 + 16);
      if (v22 >= *(v16 + 24) >> 1)
      {
        v57 = v61;
        sub_237AC8A94();
        v20 = v57;
        v16 = v65[0];
      }

      ++v15;
      *(v16 + 16) = v22 + 1;
      v23 = v16 + 24 * v22;
      *(v23 + 32) = v20;
      *(v23 + 48) = v21;
      v17 += 32;
      v14 = v18;
      v24 = v18 == v15;
      v13 = v19;
      v3 = v81;
      if (v24)
      {

        v4 = v59;
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCE8, &qword_237C12718);
    if (!swift_dynamicCast())
    {
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0x20666F2065707954, 0xEF272065756C6176);
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      sub_237C0927C();
      MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1BB20);
      sub_2379E8AF0();
      swift_allocError();
      *v48 = 0;
      *(v48 + 8) = 0xE000000000000000;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      *(v48 + 48) = 1;
      swift_willThrow();
LABEL_49:
      __swift_destroy_boxed_opaque_existential_1(v80);
      goto LABEL_52;
    }

    v25 = v79;
    v26 = *(v79 + 16);
    if (!v26)
    {

      v27 = MEMORY[0x277D84F90];
LABEL_50:
      v6 = sub_237B6A9C8(v27);
      v7 = 0;
      v8 = 4;
      goto LABEL_51;
    }

    v78 = v12;
    sub_237AC8AB4();
    v27 = v12;
    v30 = sub_237B024B4(v79);
    v31 = 0;
    v81 = v79 + 64;
    v52 = v28;
    v53 = v26;
    v51 = v79 + 72;
    v54 = v79;
    while ((v30 & 0x8000000000000000) == 0 && v30 < 1 << *(v25 + 32))
    {
      if ((*(v81 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
      {
        goto LABEL_55;
      }

      v58 = v30 >> 6;
      v55 = v29;
      v56 = v31;
      v60 = v28;
      if (*(v25 + 36) != v28)
      {
        goto LABEL_56;
      }

      sub_2379E8F20(*(v25 + 48) + 40 * v30, &v70);
      sub_2379FED88(*(v25 + 56) + 32 * v30, v73);
      v66 = v70;
      v67 = v71;
      v68 = v72;
      sub_2379DAD24(v73, &v69);
      sub_237AFE670(&v66, &v61);
      v65[3] = MEMORY[0x277D84030];
      v32 = swift_allocObject();
      v65[0] = v32;
      v33 = v62;
      *(v32 + 16) = v61;
      *(v32 + 32) = v33;
      *(v32 + 48) = v63;
      sub_237AFCC90(&v74, v65);
      if (v2)
      {

        sub_237AFE718(&v66);
        __swift_destroy_boxed_opaque_existential_1(v64);

        goto LABEL_49;
      }

      __swift_destroy_boxed_opaque_existential_1(v64);
      sub_237AFE670(&v66, &v61);
      sub_237AFCC90(&v76, v64);
      sub_237AFE718(&v66);
      sub_2379E8F7C(&v61);
      v34 = v74;
      v35 = v75;
      v36 = v76;
      v37 = v77;
      v78 = v27;
      v38 = *(v27 + 16);
      if (v38 >= *(v27 + 24) >> 1)
      {
        v49 = v76;
        v50 = v74;
        sub_237AC8AB4();
        v36 = v49;
        v34 = v50;
        v27 = v78;
      }

      *(v27 + 16) = v38 + 1;
      v39 = v27 + 48 * v38;
      *(v39 + 32) = v34;
      *(v39 + 48) = v35;
      *(v39 + 56) = v36;
      *(v39 + 72) = v37;
      v25 = v54;
      v40 = 1 << *(v54 + 32);
      if (v30 >= v40)
      {
        goto LABEL_57;
      }

      v41 = *(v81 + 8 * v58);
      if ((v41 & (1 << v30)) == 0)
      {
        goto LABEL_58;
      }

      if (*(v54 + 36) != v60)
      {
        goto LABEL_59;
      }

      v42 = v41 & (-2 << (v30 & 0x3F));
      if (v42)
      {
        v40 = __clz(__rbit64(v42)) | v30 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v43 = v58 << 6;
        v44 = v58 + 1;
        v45 = (v51 + 8 * v58);
        while (v44 < (v40 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            sub_2379E8FD0(v30, v60, v55 & 1);
            v40 = __clz(__rbit64(v46)) + v43;
            goto LABEL_41;
          }
        }

        sub_2379E8FD0(v30, v60, v55 & 1);
      }

LABEL_41:
      v29 = 0;
      v31 = v56 + 1;
      v30 = v40;
      v28 = v52;
      if (v56 + 1 == v53)
      {

        goto LABEL_50;
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t MLDataValue.dictionaryValue.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 16) == 4)
  {
    v3 = *v1;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t MLDataValue.isValid.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v5 = *(v0 + 8);
      goto LABEL_5;
    case 3:
      v6 = *v0;

      goto LABEL_7;
    case 4:
      v7 = *v0;
LABEL_5:

      goto LABEL_7;
    case 5:
      v8 = v1;
      goto LABEL_7;
    case 6:
      goto LABEL_8;
    default:
LABEL_7:
      v4 = 1;
LABEL_8:
      sub_2379E8CE8(v1, v2, v3);
      sub_2379E8CE8(0, 0, 6);
      return v4;
  }
}

uint64_t MLDataValue.ValueType.hashValue.getter()
{
  v1 = *v0;
  sub_237C093CC();
  MEMORY[0x2383DCF70](v1);
  return sub_237C0940C();
}

unint64_t MLDataValue.debugDescription.getter()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      v4 = *v0;
      return sub_237C08A6C();
    case 2:
      v3 = *(v0 + 8);

      return v1;
    case 3:
      OUTLINED_FUNCTION_14_24();
      return MLDataValue.SequenceType.debugDescription.getter();
    case 4:
      sub_237A60DE0();
      return sub_237C0859C();
    case 5:
      v6 = [*v0 debugDescription];
      v1 = sub_237C086EC();

      return v1;
    case 6:
      return 0xD000000000000012;
    default:
      v7 = *v0;
      sub_237A20C10();
      return sub_237C08DEC();
  }
}

uint64_t static MLDataValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_33;
      }

      v54 = *a1;
      v55 = *a2;
      v56 = OUTLINED_FUNCTION_62_2();
      v58 = OUTLINED_FUNCTION_3_50(v56, v57, 1);
      sub_2379E8CE8(v58, v59, 1);
      v12 = *&v2 == *&v5;
      goto LABEL_16;
    case 2:
      if (v7 != 2)
      {
        v81 = *(a1 + 8);
        goto LABEL_30;
      }

      v32 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v22 = sub_237C0929C();
        v34 = OUTLINED_FUNCTION_32_3();
        v36 = OUTLINED_FUNCTION_2_56(v34, v35, 2);
        v38 = OUTLINED_FUNCTION_2_56(v36, v37, 2);
        v29 = OUTLINED_FUNCTION_3_50(v38, v39, 2);
        v31 = 2;
        goto LABEL_21;
      }

      v91 = OUTLINED_FUNCTION_2_56(v32, v3, 2);
      v93 = OUTLINED_FUNCTION_2_56(v91, v92, 2);
      sub_2379E8CE8(v93, v94, 2);
      v77 = OUTLINED_FUNCTION_62_2();
      v79 = 2;
LABEL_36:
      sub_2379E8CE8(v77, v78, v79);
      v22 = 1;
      return v22 & 1;
    case 3:
      if (v7 == 3)
      {
        v95 = *a2;
        v96 = v2;
        v40 = OUTLINED_FUNCTION_32_3();
        v42 = OUTLINED_FUNCTION_2_56(v40, v41, 3);
        sub_2379E9288(v42, v43, 3);
        v44 = OUTLINED_FUNCTION_32_3();
        v46 = OUTLINED_FUNCTION_2_56(v44, v45, 3);
        sub_2379E9288(v46, v47, 3);
        v22 = static MLDataValue.SequenceType.== infix(_:_:)(&v96, &v95);
        v48 = OUTLINED_FUNCTION_62_2();
        v50 = OUTLINED_FUNCTION_3_50(v48, v49, 3);
        v52 = OUTLINED_FUNCTION_3_50(v50, v51, 3);
        sub_2379E8CE8(v52, v53, 3);
        v29 = OUTLINED_FUNCTION_62_2();
        v31 = 3;
        goto LABEL_21;
      }

      v82 = *a1;

      goto LABEL_33;
    case 4:
      if (v7 == 4)
      {
        v13 = OUTLINED_FUNCTION_32_3();
        v15 = OUTLINED_FUNCTION_2_56(v13, v14, 4);
        sub_2379E9288(v15, v16, 4);
        v17 = OUTLINED_FUNCTION_32_3();
        v19 = OUTLINED_FUNCTION_2_56(v17, v18, 4);
        sub_2379E9288(v19, v20, 4);
        sub_237AFDD70(v2, v5);
        v22 = v21;
        v23 = OUTLINED_FUNCTION_62_2();
        v25 = OUTLINED_FUNCTION_3_50(v23, v24, 4);
        v27 = OUTLINED_FUNCTION_3_50(v25, v26, 4);
        sub_2379E8CE8(v27, v28, 4);
        v29 = OUTLINED_FUNCTION_62_2();
        v31 = 4;
        goto LABEL_21;
      }

      v80 = *a1;
LABEL_30:

      goto LABEL_33;
    case 5:
      if (v7 == 5)
      {
        sub_237A380A4();
        v60 = OUTLINED_FUNCTION_32_3();
        v62 = OUTLINED_FUNCTION_2_56(v60, v61, 5);
        sub_2379E9288(v62, v63, 5);
        v64 = OUTLINED_FUNCTION_32_3();
        v66 = OUTLINED_FUNCTION_2_56(v64, v65, 5);
        sub_2379E9288(v66, v67, 5);
        v22 = sub_237C08CEC();
        v68 = OUTLINED_FUNCTION_62_2();
        v70 = OUTLINED_FUNCTION_3_50(v68, v69, 5);
        v72 = OUTLINED_FUNCTION_3_50(v70, v71, 5);
        sub_2379E8CE8(v72, v73, 5);
        v29 = OUTLINED_FUNCTION_62_2();
        v31 = 5;
LABEL_21:
        sub_2379E8CE8(v29, v30, v31);
      }

      else
      {
        v83 = v2;
LABEL_33:
        v84 = OUTLINED_FUNCTION_32_3();
        v86 = OUTLINED_FUNCTION_2_56(v84, v85, v7);
        v88 = OUTLINED_FUNCTION_3_50(v86, v87, v4);
        sub_2379E8CE8(v88, v89, v7);
        v22 = 0;
      }

      return v22 & 1;
    case 6:
      if (v7 != 6 || (v6 | v5) != 0)
      {
        goto LABEL_33;
      }

      v75 = OUTLINED_FUNCTION_62_2();
      sub_2379E8CE8(v75, v76, 6);
      v77 = 0;
      v78 = 0;
      v79 = 6;
      goto LABEL_36;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_33;
      }

      v8 = OUTLINED_FUNCTION_62_2();
      v10 = OUTLINED_FUNCTION_3_50(v8, v9, 0);
      sub_2379E8CE8(v10, v11, 0);
      v12 = v2 == v5;
LABEL_16:
      v22 = v12;
      return v22 & 1;
  }
}

uint64_t MLDataValue.hash(into:)()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = *v0;
      }

      else
      {
        v5 = 0;
      }

      return MEMORY[0x2383DCF90](v5);
    case 2:
      v3 = *(v0 + 8);

      return sub_237C0878C();
    case 3:
    case 4:
    case 5:
      sub_237C090DC();
      __break(1u);
      JUMPOUT(0x237AFDB38);
    case 6:
      v2 = 1;
      return MEMORY[0x2383DCF70](v2, v1);
    default:
      v2 = *v0;
      return MEMORY[0x2383DCF70](v2, v1);
  }
}

uint64_t MLDataValue.hashValue.getter()
{
  OUTLINED_FUNCTION_13_24();
  sub_237C093CC();
  MLDataValue.hash(into:)();
  return sub_237C0940C();
}

uint64_t sub_237AFDBA0()
{
  OUTLINED_FUNCTION_13_24();
  sub_237C093CC();
  MLDataValue.hash(into:)();
  return sub_237C0940C();
}

void sub_237AFDBE4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    OUTLINED_FUNCTION_11_32(a1, a2);
    if (v27)
    {
      v4 = 0;
      v5 = *(v3 + 64);
      v29 = v3 + 64;
      v6 = *(v3 + 32);
      OUTLINED_FUNCTION_5_33();
      v9 = v8 & v7;
      v30 = (v10 + 63) >> 6;
      while (v9)
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = v11 | (v4 << 6);
        v16 = (*(v3 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(v3 + 56) + 16 * v15);
        v21 = *v19;
        v20 = v19[1];

        if (!v17)
        {
          return;
        }

        v22 = v3;
        v23 = sub_237ACAC78(v18, v17);
        v25 = v24;

        if ((v25 & 1) == 0)
        {

          return;
        }

        v26 = (*(a2 + 56) + 16 * v23);
        v27 = *v26 == v21 && v20 == v26[1];
        if (v27)
        {

          v3 = v22;
        }

        else
        {
          v28 = sub_237C0929C();

          v3 = v22;
          if ((v28 & 1) == 0)
          {
            return;
          }
        }
      }

      v12 = v4;
      while (1)
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v4 >= v30)
        {
          return;
        }

        ++v12;
        if (*(v29 + 8 * v4))
        {
          OUTLINED_FUNCTION_8_26();
          v9 = v14 & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_237AFDD70(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    OUTLINED_FUNCTION_11_32(a1, a2);
    if (v4)
    {
      v5 = 0;
      v6 = *(v3 + 64);
      v54 = v3 + 64;
      v7 = *(v3 + 32);
      OUTLINED_FUNCTION_5_33();
      v11 = (v10 + 63) >> 6;
      v55 = v11;
      v56 = v3;
      if ((v9 & v8) != 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_15_26();
          v57 = v13;
LABEL_11:
          v17 = 3 * (v12 | (v5 << 6));
          v18 = *(v3 + 48) + 8 * v17;
          v19 = *v18;
          v20 = *(v18 + 8);
          v21 = *(v18 + 16);
          v22 = *(v3 + 56) + 8 * v17;
          v24 = *v22;
          v23 = *(v22 + 8);
          v25 = *(v22 + 16);
          v26 = OUTLINED_FUNCTION_6_41();
          sub_2379E9288(v26, v27, v28);
          v29 = OUTLINED_FUNCTION_12_29();
          sub_2379E9288(v29, v30, v31);
          if (v21 == 255)
          {
            break;
          }

          v60[0] = v24;
          v60[1] = v23;
          v61 = v25;
          v32 = OUTLINED_FUNCTION_6_41();
          v33 = sub_237ACB180(v32);
          v35 = v34;
          v36 = OUTLINED_FUNCTION_6_41();
          sub_2379E8CE8(v36, v37, v38);
          if ((v35 & 1) == 0)
          {
            v51 = OUTLINED_FUNCTION_12_29();
            sub_2379E8CE8(v51, v52, v53);
            return;
          }

          v39 = *(a2 + 56) + 24 * v33;
          v40 = *(v39 + 8);
          v58[0] = *v39;
          v58[1] = v40;
          v59 = *(v39 + 16);
          v41 = OUTLINED_FUNCTION_6_41();
          sub_2379E9288(v41, v42, v43);
          v44 = static MLDataValue.== infix(_:_:)(v58, v60);
          v45 = OUTLINED_FUNCTION_6_41();
          sub_2379E8CE8(v45, v46, v47);
          v48 = OUTLINED_FUNCTION_12_29();
          sub_2379E8CE8(v48, v49, v50);
          if ((v44 & 1) == 0)
          {
            return;
          }

          v11 = v55;
          v3 = v56;
          if (!v57)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
LABEL_6:
        v14 = v5;
        while (1)
        {
          v5 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v5 >= v11)
          {
            return;
          }

          ++v14;
          if (*(v54 + 8 * v5))
          {
            OUTLINED_FUNCTION_8_26();
            v57 = v16 & v15;
            goto LABEL_11;
          }
        }

        __break(1u);
      }
    }
  }
}

unint64_t sub_237AFDF08()
{
  result = qword_27DE9CCD8;
  if (!qword_27DE9CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CCD8);
  }

  return result;
}

unint64_t sub_237AFDF60()
{
  result = qword_27DE9CCE0;
  if (!qword_27DE9CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CCE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8CreateML11MLDataValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_237AFDFD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
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

uint64_t sub_237AFE010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_237AFE054(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MLDataValue.ValueType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237AFE170);
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

void sub_237AFE1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C05ADC();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v10 = 0;
    v11 = *(a1 + 64);
    v46 = a1 + 64;
    v12 = *(a1 + 32);
    OUTLINED_FUNCTION_5_33();
    v16 = (v15 + 63) >> 6;
    v17 = v56 + 16;
    v53 = (v56 + 8);
    v47 = v16;
    v48 = a1;
    v57 = v18;
    if ((v14 & v13) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_15_26();
        v50 = v20;
LABEL_10:
        v24 = v19 | (v10 << 6);
        v25 = *(a1 + 56);
        v26 = (*(a1 + 48) + 16 * v24);
        v27 = *v26;
        v28 = v26[1];
        v29 = *(v25 + 8 * v24);

        v30 = sub_237ACAC78(v27, v28);
        v32 = v31;

        if ((v32 & 1) == 0 || (v49 = v10, v55 = *(*(a2 + 56) + 8 * v30), v33 = *(v55 + 16), v33 != *(v29 + 16)))
        {
LABEL_24:

          return;
        }

        v34 = v57;
        if (v33)
        {
          if (v55 != v29)
          {
            break;
          }
        }

LABEL_20:

        v16 = v47;
        a1 = v48;
        v10 = v49;
        if (!v50)
        {
          goto LABEL_5;
        }
      }

      v45 = a2;
      v35 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v51 = v29 + v35;
      v52 = v55 + v35;

      v36 = 0;
      while (v36 < *(v55 + 16))
      {
        v37 = *(v56 + 72) * v36;
        v38 = *(v56 + 16);
        v38(v9, v52 + v37, v34);
        if (v36 >= *(v29 + 16))
        {
          goto LABEL_28;
        }

        v39 = v17;
        v40 = v54;
        v41 = v39;
        v38(v54, v51 + v37, v34);
        sub_237AC8FA0();
        v42 = sub_237C0867C();
        v43 = *v53;
        (*v53)(v40, v57);
        v34 = v57;
        v43(v9, v57);
        if ((v42 & 1) == 0)
        {

          goto LABEL_24;
        }

        ++v36;
        v17 = v41;
        if (v33 == v36)
        {

          a2 = v45;
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_5:
      v21 = v10;
      while (1)
      {
        v10 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v10 >= v16)
        {
          return;
        }

        ++v21;
        if (*(v46 + 8 * v10))
        {
          OUTLINED_FUNCTION_8_26();
          v50 = v23 & v22;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }
}

void sub_237AFE4F0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_11_32(a1, a2);
    if (v28)
    {
      v4 = 0;
      v5 = *(a1 + 64);
      v6 = *(a1 + 32);
      OUTLINED_FUNCTION_5_33();
      v9 = v8 & v7;
      v11 = (v10 + 63) >> 6;
      if ((v8 & v7) != 0)
      {
        while (1)
        {
          v12 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
LABEL_11:
          v16 = v12 | (v4 << 6);
          v17 = (*(a1 + 48) + 16 * v16);
          v18 = *v17;
          v19 = v17[1];
          v20 = *(*(a1 + 56) + 8 * v16);

          v21 = OUTLINED_FUNCTION_32_3();
          v23 = sub_237ACAC78(v21, v22);
          v25 = v24;

          if ((v25 & 1) == 0 || (v26 = *(*(a2 + 56) + 8 * v23), v27 = *(v26 + 16), v27 != *(v20 + 16)))
          {
LABEL_28:

            return;
          }

          v28 = !v27 || v26 == v20;
          if (!v28)
          {
            break;
          }

LABEL_25:

          if (!v9)
          {
            goto LABEL_6;
          }
        }

        v29 = (v26 + 40);
        v30 = (v20 + 40);
        while (v27)
        {
          v31 = *(v29 - 1) == *(v30 - 1) && *v29 == *v30;
          if (!v31 && (sub_237C0929C() & 1) == 0)
          {
            goto LABEL_28;
          }

          v29 += 2;
          v30 += 2;
          if (!--v27)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_6:
        v13 = v4;
        while (1)
        {
          v4 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v4 >= v11)
          {
            return;
          }

          ++v13;
          if (*(a1 + 64 + 8 * v4))
          {
            OUTLINED_FUNCTION_8_26();
            v9 = v15 & v14;
            goto LABEL_11;
          }
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_237AFE670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCF0, &qword_237C12720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AFE6E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_237AFE718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCF0, &qword_237C12720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_35()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_32(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

__n128 OUTLINED_FUNCTION_13_24()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 48) = *v0;
  *(v1 - 32) = v2;
  return result;
}

uint64_t MLDataValue.DictionaryType.description.getter()
{
  v1 = *v0;
  sub_237A60DE0();

  return sub_237C0858C();
}

uint64_t sub_237AFE8C0()
{
  v0 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12 - v6);
  *v7 = sub_237A2DE60();
  v7[1] = v8;
  v9 = MEMORY[0x277D837D0];
  if (__swift_getEnumTagSinglePayload(v7, 1, MEMORY[0x277D837D0]) == 1)
  {
    (*(v2 + 8))(v7, v0);
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    *(&v14 + 1) = v9;
    v15 = &off_284AC56F0;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
    (*(*(v9 - 8) + 32))(boxed_opaque_existential_0, v7, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C850, qword_237C10F20);
  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237AFEA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;

  result = sub_237AFFB0C(v4);
  *(a2 + 8) = result;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  v8 = *(a1 + 36);
  *(a2 + 32) = 1 << *(a1 + 32);
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_237AFEAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;

  v6 = sub_237A2E9F4();
  v7 = sub_237A017E8(0, v6);
  result = sub_237A0290C(0, v7, a3);
  a4[4] = result;
  return result;
}

uint64_t sub_237AFEB28(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result += a2;
  return result;
}

uint64_t sub_237AFEB50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = result;
  v10 = a6;
  if (a4)
  {
    v12 = a5 + 64;
    result = sub_237A934DC(result, a2, a3 & 1);
    v13 = 0;
    v14 = v8;
    v27 = v8;
    while ((v9 & 0x8000000000000000) == 0)
    {
      v15 = 1 << *(a5 + 32);
      if (v9 >= v15)
      {
        break;
      }

      v16 = v9 >> 6;
      v17 = *(v12 + 8 * (v9 >> 6));
      if (((v17 >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(a5 + 36) != v8)
      {
        goto LABEL_22;
      }

      v18 = v17 & (-2 << (v9 & 0x3F));
      if (v18)
      {
        result = sub_2379E8FD0(v9, v8, v7 & 1);
        v9 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v6;
        v20 = v12;
        v21 = v16 << 6;
        v22 = v16 + 1;
        v23 = (a5 + 72 + 8 * v16);
        while (v22 < (v15 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_2379E8FD0(v9, v8, v7 & 1);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_15;
          }
        }

        result = sub_2379E8FD0(v9, v8, v7 & 1);
        v9 = v15;
LABEL_15:
        v12 = v20;
        v6 = v19;
        v14 = v27;
      }

      v7 = 0;
      ++v13;
      v8 = v14;
      if (v13 >= v6)
      {
        v8 = v14;
        v10 = a6;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = sub_237A934DC(result, a2, a3 & 1);
LABEL_19:
  *v10 = v9;
  *(v10 + 8) = v8;
  *(v10 + 16) = v7 & 1;
  return result;
}

uint64_t sub_237AFED0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    v16 = result;
    result = sub_237A934DC(result, a2, a3 & 1);
    if (!v13)
    {
LABEL_21:
      *a9 = v16;
      *(a9 + 8) = v15;
      *(a9 + 16) = v14 & 1;
      return result;
    }

    v31 = a9;
    v18 = 0;
    v19 = v14 | a7;
    v32 = v13;
    while ((v19 & 1) == 0)
    {
      if (v15 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v16 == a5)
      {
        result = sub_2379E8FD0(a5, v15, 0);
        *v31 = 0;
        *(v31 + 8) = 0;
        *(v31 + 16) = -1;
        return result;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v20 = 1 << *(a8 + 32);
      if (v16 >= v20)
      {
        goto LABEL_24;
      }

      v21 = v16 >> 6;
      v22 = *(a8 + 64 + 8 * (v16 >> 6));
      if (((v22 >> v16) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v16 & 0x3F));
      if (v23)
      {
        result = sub_2379E8FD0(v16, v15, 0);
        v16 = __clz(__rbit64(v23)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = a7;
        v25 = a5;
        v26 = v21 << 6;
        v27 = v21 + 1;
        v28 = (a8 + 72 + 8 * v21);
        while (v27 < (v20 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_2379E8FD0(v16, v15, 0);
            v16 = __clz(__rbit64(v29)) + v26;
            goto LABEL_18;
          }
        }

        result = sub_2379E8FD0(v16, v15, 0);
        v16 = v20;
LABEL_18:
        a5 = v25;
        a7 = v24;
        v13 = v32;
      }

      ++v18;
      v15 = a6;
      v19 = a7;
      if (v18 >= v13)
      {
        v14 = 0;
        v15 = a6;
        a9 = v31;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237AFEF08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    while (1)
    {
      if (a3 == result)
      {
        return 0;
      }

      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++result;
      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_237AFEF54(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_31;
  }

  v7 = a4;
  v8 = result;
  if (a4 < result)
  {
    goto LABEL_29;
  }

  v9 = a5;
  v10 = a2;
  if (a5 != a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v11 = 0;
    v13 = a7 + 64;
    v14 = a5;
    v28 = a7 + 72;
    v29 = a5;
    while (!__OFADD__(v11++, 1))
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v16 = 1 << *(a7 + 32);
      if (v8 >= v16)
      {
        goto LABEL_25;
      }

      v17 = v8 >> 6;
      v18 = *(v13 + 8 * (v8 >> 6));
      if (((v18 >> v8) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(a7 + 36) != v10)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        result = sub_2379E8FD0(v8, v10, 0);
        v8 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v7;
        v21 = v13;
        v22 = v9;
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = (v28 + 8 * v17);
        while (v24 < (v16 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_2379E8FD0(v8, v10, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_20;
          }
        }

        result = sub_2379E8FD0(v8, v10, 0);
        v8 = v16;
LABEL_20:
        v9 = v22;
        v13 = v21;
        v7 = v20;
        v14 = v29;
      }

      if (v10 != v9)
      {
        goto LABEL_28;
      }

      v10 = v14;
      if (v8 == v7)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_2379E8FD0(a4, a2, 0);
  return 0;
}

uint64_t sub_237AFF124(uint64_t a1, uint64_t a2)
{
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(a1, a2);
  v5 = a1 - a2;
  if (!v5)
  {
    return 0;
  }

  if (v5 < 0 == v4)
  {
    goto LABEL_9;
  }

  if (v5 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_237AFF160@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_237B0DDC8(*(a1 + 16));
  if (v3)
  {
    type metadata accessor for CMLDictionary();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v7[0] = v4;
    v7[1] = sub_237B004D4;
    v7[2] = 0;
    v7[3] = sub_237B02424;
    v7[4] = 0;
    v7[5] = sub_237AB65A0;
    v7[6] = 0;
    v6 = MEMORY[0x277D84F98];
    swift_retain_n();
    sub_237B019D8(v7, 1, &v6);

    *a2 = v6;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_237AFF290()
{
  v1 = *v0;
  v2 = MEMORY[0x2383DDA80](0);
  if (!v2)
  {
    goto LABEL_41;
  }

  v3 = v2;
  type metadata accessor for CMLDictionary();
  inited = swift_initStackObject();
  *(inited + 16) = v3;

  v5 = sub_237AFFB0C(v4);
  v7 = v6;
  v41 = v1;
  v42 = v1 + 64;
  if (v8)
  {
LABEL_32:
    __break(1u);
  }

  else
  {
    while (2)
    {
      if (*(v1 + 36) != v7)
      {
        __break(1u);
        goto LABEL_35;
      }

      v9 = 1 << *(v1 + 32);
      if (v5 != v9)
      {
        if ((v5 & 0x8000000000000000) == 0 && v5 < v9)
        {
          if ((*(v42 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5))
          {
            v10 = *(v1 + 48) + 24 * v5;
            v12 = *v10;
            v11 = *(v10 + 8);
            v13 = *(v10 + 16);
            v14 = *(v1 + 56) + 24 * v5;
            v15 = *v14;
            v16 = *(v14 + 8);
            v17 = *(v14 + 16);
            sub_2379E9288(*v10, v11, *(v10 + 16));
            sub_2379E9288(v15, v16, v17);
            v18 = sub_237B01EB4(v5, v7, 0, v1);
            v44 = v19;
            v46 = v20;
            sub_2379E8FD0(v5, v7, 0);
            sub_2379E9288(v12, v11, v13);
            sub_2379E9288(v15, v16, v17);
            sub_2379E8CE8(v15, v16, v17);
            v45 = v18;
            switch(v13)
            {
              case 1:
                if (sub_237B0F594(*&v12))
                {
                  goto LABEL_15;
                }

                goto LABEL_37;
              case 2:
                type metadata accessor for CMLFeatureValue();

                OUTLINED_FUNCTION_83();
                sub_237A2E7CC();
                v21 = OUTLINED_FUNCTION_83();
                v23 = 2;
                goto LABEL_17;
              case 3:
                sub_237A91FA8();
                v21 = OUTLINED_FUNCTION_83();
                v23 = 3;
                goto LABEL_17;
              case 4:
                sub_237AFF290();
                v21 = OUTLINED_FUNCTION_83();
                v23 = 4;
                goto LABEL_17;
              case 5:
                sub_237AC85C4();
                v21 = OUTLINED_FUNCTION_83();
                v23 = 5;
LABEL_17:
                sub_2379E8CE8(v21, v22, v23);
                goto LABEL_19;
              case 6:
                type metadata accessor for CMLFeatureValue();
                sub_237A2E78C();
                goto LABEL_19;
              default:
                if (!sub_237B0F164(v12))
                {
                  goto LABEL_40;
                }

LABEL_15:
                type metadata accessor for CMLFeatureValue();
                swift_allocObject();
                OUTLINED_FUNCTION_7_23();
LABEL_19:
                v24 = sub_237A2DE60();
                v26 = v25;

                v27 = OUTLINED_FUNCTION_83();
                sub_2379E9288(v27, v28, v13);
                sub_2379E9288(v15, v16, v17);
                v29 = OUTLINED_FUNCTION_83();
                sub_2379E8CE8(v29, v30, v13);
                switch(v17)
                {
                  case 1:
                    if (sub_237B0F594(*&v15))
                    {
                      goto LABEL_26;
                    }

                    goto LABEL_38;
                  case 2:
                    type metadata accessor for CMLFeatureValue();

                    v11 = sub_237A2E7CC();
                    sub_2379E8CE8(v15, v16, 2);
                    goto LABEL_31;
                  case 3:
                    sub_237A91FA8();
                    v31 = OUTLINED_FUNCTION_9_36();
                    v33 = 3;
                    goto LABEL_28;
                  case 4:
                    sub_237AFF290();
                    v31 = OUTLINED_FUNCTION_9_36();
                    v33 = 4;
                    goto LABEL_28;
                  case 5:
                    sub_237AC85C4();
                    v31 = OUTLINED_FUNCTION_9_36();
                    v33 = 5;
LABEL_28:
                    sub_2379E8CE8(v31, v32, v33);
                    goto LABEL_31;
                  case 6:
                    type metadata accessor for CMLFeatureValue();
                    v34 = sub_237A2E78C();
                    goto LABEL_30;
                  default:
                    if (!sub_237B0F164(v15))
                    {
                      goto LABEL_39;
                    }

LABEL_26:
                    type metadata accessor for CMLFeatureValue();
                    swift_allocObject();
                    v34 = OUTLINED_FUNCTION_7_23();
LABEL_30:
                    v11 = v34;
LABEL_31:
                    sub_237A2EABC(v24, v26, v11);
                    v35 = OUTLINED_FUNCTION_83();
                    sub_2379E8CE8(v35, v36, v13);
                    sub_2379E8CE8(v15, v16, v17);

                    v7 = v44;
                    v5 = v45;
                    v1 = v41;
                    if (v46)
                    {
                      goto LABEL_32;
                    }

                    continue;
                }
            }
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);

        OUTLINED_FUNCTION_2_29();
        while (1)
        {
          swift_unexpectedError();
          __break(1u);
          OUTLINED_FUNCTION_57_4();
        }
      }

      break;
    }
  }

  sub_2379E8FD0(v5, v7, 0);
  type metadata accessor for CMLFeatureValue();

  v38 = sub_237A2E858(v37);
  swift_setDeallocating();
  v39 = *(inited + 16);
  tc_v1_release();
  return v38;
}

uint64_t MLDataValue.DictionaryType.init<A>(uniqueKeysWithValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  OUTLINED_FUNCTION_3_15();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  (*(v7 + 16))(v12 - v11, a1, a2);
  sub_237A60DE0();
  v13 = sub_237C085BC();
  result = (*(v7 + 8))(a1, a2);
  *a3 = v13;
  return result;
}

uint64_t MLDataValue.DictionaryType.debugDescription.getter()
{
  v1 = *v0;
  sub_237A60DE0();

  return sub_237C0859C();
}

unint64_t MLDataValue.DictionaryType.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (result = sub_237ACB180(*result, *(result + 8), *(result + 16)), (v5 & 1) != 0))
  {
    v6 = *(v4 + 56) + 24 * result;
    v7 = *v6;
    v8 = *(v6 + 8);
    *a2 = *v6;
    *(a2 + 8) = v8;
    v9 = *(v6 + 16);
    *(a2 + 16) = v9;

    return sub_2379E9288(v7, v8, v9);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  return result;
}

BOOL static MLDataValue.DictionaryType.Index.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL static MLDataValue.DictionaryType.Index.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MLDataValue.DictionaryType.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_237AFFB0C(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

uint64_t sub_237AFFB0C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_237C08E2C();
  v4 = *(a1 + 36);
  return result;
}

void MLDataValue.DictionaryType.endIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void *sub_237AFFB80(void *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = 3 * a3;
  v8 = *(a6 + 56);
  v9 = *(a6 + 48) + 24 * a3;
  v10 = *v9;
  v11 = *(v9 + 8);
  *result = *v9;
  result[1] = v11;
  v12 = *(v9 + 16);
  *(result + 16) = v12;
  v13 = v8 + 8 * v7;
  v14 = *v13;
  v15 = *(v13 + 8);
  *a2 = *v13;
  *(a2 + 8) = v15;
  v16 = *(v13 + 16);
  *(a2 + 16) = v16;
  sub_2379E9288(v10, v11, v12);

  return sub_2379E9288(v14, v15, v16);
}

uint64_t sub_237AFFC70(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 56);
    v9 = (*(a5 + 48) + 16 * a2);
    v10 = *v9;
    v11 = v9[1];
    v12 = a6(0);
    (*(*(v12 - 8) + 16))(v7, v8 + *(*(v12 - 8) + 72) * a2, v12);

    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t MLDataValue.DictionaryType.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237B01EB4(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

void (*sub_237AFFD90(void *a1, uint64_t a2))(uint64_t *a1)
{
  v4 = __swift_coroFrameAllocStub(0x59uLL);
  *a1 = v4;
  MLDataValue.DictionaryType.subscript.getter(v4, v4 + 24, a2);
  v4[3] = *v4;
  *(v4 + 64) = *(v4 + 16);
  v5 = *(v4 + 40);
  *(v4 + 72) = *(v4 + 24);
  *(v4 + 88) = v5;
  return sub_237AFFE18;
}

void sub_237AFFE18(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  sub_2379E8CE8(*(*a1 + 48), *(v1 + 56), *(v1 + 64));
  v5 = OUTLINED_FUNCTION_6_42();
  sub_2379E8CE8(v5, v6, v7);

  free(v1);
}

uint64_t sub_237AFFE70@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return sub_237A90230(&v5, *v2, a2);
}

void sub_237AFFEB8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_237AFFF54(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, __int128 *, void))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = a2[1];
  v11 = *a2;
  v12[0] = v9;
  *(v12 + 9) = *(a2 + 25);
  return a5(v6, v7, v8, &v11, *v5);
}

uint64_t sub_237AFFFA4(__int128 *a1)
{
  OUTLINED_FUNCTION_12_30(a1);
  v3 = v2[1];
  v7 = *v2;
  v8[0] = v3;
  *(v8 + 9) = *(v2 + 25);
  v4 = *v1;
  return sub_237A9062C(&v6, &v7);
}

uint64_t sub_237AFFFE8(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = OUTLINED_FUNCTION_6_42();
  v11 = sub_237B01EB4(v7, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v16 = OUTLINED_FUNCTION_6_42();
  result = sub_2379E8FD0(v16, v17, v18);
  *a1 = v11;
  a1[1] = v13;
  *(a1 + 16) = v15 & 1;
  return result;
}

uint64_t sub_237B00054@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;

  v4 = sub_237AFFB0C(v3);
  v6 = v5;
  v8 = v7;

  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8 & 1;
  return result;
}

uint64_t sub_237B00128@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = sub_237A901BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237B00158(uint64_t *a1)
{
  v3 = *v1;
  result = sub_237A901BC(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_237B00188(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  v4 = *v2;
  result = sub_237A8FD04(v3, v5);
  *v1 = result;
  return result;
}

uint64_t sub_237B001E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_237B000DC();
  *a1 = result;
  return result;
}

uint64_t (*sub_237B00210(uint64_t *a1, uint64_t *a2))(uint64_t *a1)
{
  v4 = *v2;
  *a1 = sub_237B000E0(*a2);
  a1[1] = v5;
  return sub_237B0025C;
}

uint64_t sub_237B0025C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
}

uint64_t sub_237B00298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = sub_237A90218(*a1, a1[1]);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_237B002D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_237A8FBD0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_237B00348(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  v5 = *v2;
  result = sub_237A8FE44(v3, v6, *v4);
  *v1 = result;
  *(v1 + 8) = v8 & 1;
  return result;
}

uint64_t sub_237B003B4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_26(a1);
  v4 = *v2;
  result = sub_237B6A974(v3);
  *v1 = result;
  return result;
}

uint64_t sub_237B003E0(uint64_t *a1)
{
  v3 = *v1;
  result = sub_237B6A974(*a1);
  *a1 = result;
  return result;
}

void *MLDataValue.DictionaryType.init(from:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_26(a1);
  v4 = *(v3 + 16);
  if (v4 != 4)
  {
    sub_2379E8CE8(result, *(v3 + 8), v4);
    result = 0;
  }

  *v1 = result;
  return result;
}

uint64_t MLDataValue.DictionaryType.dataValue.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

void *sub_237B004D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_237A2DE60();
  v7 = v6;

  result = sub_237AFC548(&v12, v8);
  v10 = v12;
  v11 = v13;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 2;
  *(a2 + 24) = v10;
  *(a2 + 40) = v11;
  return result;
}

uint64_t Dictionary<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  if (*(a1 + 16) == 4)
  {
    v9 = v7;
    result = Dictionary<>.init(from:)(&v9, a2, a3, a4, a5, a6);
    if (result)
    {
      return result;
    }
  }

  else
  {
    sub_2379E8CE8(v7, *(a1 + 8), *(a1 + 16));
  }

  return 0;
}

uint64_t Dictionary<>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v103 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v102 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v112 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v127 = &v101 - v19;
  OUTLINED_FUNCTION_3_15();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v111 = v26 - v25;
  v105 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v104 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v120 = &v101 - v31;
  OUTLINED_FUNCTION_3_15();
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_0();
  v110 = v37 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v101 - v40;
  v42 = *a1;
  v130 = a2;
  v117 = a3;
  v113 = a5;
  v136 = sub_237C084CC();

  v44 = sub_237AFFB0C(v43);
  v46 = v45;
  LOBYTE(a5) = v47;

  v131 = v42;
  v121 = a4;
  v122 = v42 + 64;
  v135 = a5 & 1;
  v118 = a6;
  v119 = a4 + 16;
  v115 = (v33 + 32);
  v114 = a6 + 16;
  v109 = v21 + 32;
  v108 = v33 + 16;
  v107 = v21 + 16;
  v106 = v21 + 8;
  v116 = (v33 + 8);
  v128 = v41;
  if (a5)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v94 = v135;

    sub_2379E8FD0(v44, v46, v94);
    return v136;
  }

  else
  {
    while (*(v131 + 36) == v46)
    {
      v49 = 1 << *(v131 + 32);
      if (v44 == v49)
      {
        goto LABEL_11;
      }

      if (v44 < 0 || v44 >= v49)
      {
        goto LABEL_17;
      }

      if (((*(v122 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
      {
        goto LABEL_18;
      }

      v50 = v131;
      v51 = *(v131 + 48) + 24 * v44;
      v52 = *v51;
      v53 = *(v51 + 8);
      v54 = *(v51 + 16);
      v55 = *(v131 + 56) + 24 * v44;
      v56 = *v55;
      v57 = *(v55 + 8);
      v58 = *(v55 + 16);
      v59 = v135;
      v60 = OUTLINED_FUNCTION_1_56();
      sub_2379E9288(v60, v61, v62);
      sub_2379E9288(v56, v57, v58);
      v125 = sub_237B01EB4(v44, v46, v59, v50);
      v126 = v63;
      LODWORD(v50) = v64;
      LOBYTE(v64) = v59;
      v65 = v130;
      sub_2379E8FD0(v44, v46, v64);
      v124 = v50;
      v66 = v50 & 1;
      v67 = v58;
      v135 = v66;
      v68 = OUTLINED_FUNCTION_1_56();
      sub_2379E9288(v68, v69, v70);
      sub_2379E9288(v56, v57, v58);
      v129 = v57;
      sub_2379E8CE8(v56, v57, v58);
      v132 = v52;
      v133 = v53;
      v134 = v54;
      v71 = v120;
      (*(v121 + 16))(&v132, v65);
      if (__swift_getEnumTagSinglePayload(v71, 1, v65) == 1)
      {

        v95 = OUTLINED_FUNCTION_1_56();
        sub_2379E8CE8(v95, v96, v97);
        sub_2379E8CE8(v56, v129, v67);

        sub_2379E8FD0(v125, v126, v66);
        (*(v104 + 8))(v71, v105);
        return 0;
      }

      v72 = v128;
      (*v115)(v128, v71, v130);
      v73 = OUTLINED_FUNCTION_1_56();
      sub_2379E9288(v73, v74, v75);
      v76 = v129;
      sub_2379E9288(v56, v129, v67);
      v77 = OUTLINED_FUNCTION_1_56();
      sub_2379E8CE8(v77, v78, v79);
      v132 = v56;
      v133 = v76;
      v134 = v67;
      v80 = v117;
      v81 = v127;
      (*(v118 + 16))(&v132, v117);
      if (__swift_getEnumTagSinglePayload(v81, 1, v80) == 1)
      {
        v98 = OUTLINED_FUNCTION_1_56();
        sub_2379E8CE8(v98, v99, v100);
        sub_2379E8CE8(v56, v129, v67);
        (*v116)(v72, v130);

        sub_2379E8FD0(v125, v126, v124 & 1);
        (*(v102 + 8))(v127, v103);
        return 0;
      }

      OUTLINED_FUNCTION_9_29(&v140);
      v82 = v111;
      v83(v111, v127, v80);
      OUTLINED_FUNCTION_9_29(&v139);
      v123 = v67;
      v84 = v130;
      v85(v110, v128, v130);
      OUTLINED_FUNCTION_9_29(&v138);
      v86 = v112;
      v87(v112, v82, v80);
      __swift_storeEnumTagSinglePayload(v86, 0, 1, v80);
      sub_237C085DC();
      sub_237C085EC();
      v88 = OUTLINED_FUNCTION_1_56();
      sub_2379E8CE8(v88, v89, v90);
      sub_2379E8CE8(v56, v129, v123);
      OUTLINED_FUNCTION_9_29(&v137);
      v91 = v82;
      v92 = v128;
      v93(v91, v80);
      result = (*v116)(v92, v84);
      v44 = v125;
      v46 = v126;
      if (v124)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t Dictionary<>.dataValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19 = a1;
  v12 = sub_237C085DC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2383DC430](&v18, v12, WitnessTable);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  sub_237C08EEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B348, &qword_237C0CBF0);
  swift_getWitnessTable();
  sub_237C0914C();

  v15 = sub_237C0905C();
  swift_getWitnessTable();
  result = MLDataValue.DictionaryType.init<A>(uniqueKeysWithValues:)(&v20, v15, &v19);
  *a7 = v19;
  *(a7 + 8) = 0;
  *(a7 + 16) = 4;
  return result;
}

uint64_t sub_237B00EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a4 + 32))(a2, a4);
  v9 = a1 + *(swift_getTupleTypeMetadata2() + 48);
  return (*(a6 + 32))(a3, a6);
}

uint64_t sub_237B00F58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Dictionary<>.init(from:)(a1, a2[2], a2[3], *(a3 - 8), a2[4], *(a3 - 16));
  *a4 = result;
  return result;
}

uint64_t sub_237B00F90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_237C084CC();
  *a2 = result;
  return result;
}

uint64_t sub_237B00FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v52 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  OUTLINED_FUNCTION_3_15();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = sub_237B0DDC8(*(a1 + 16));
  v58 = v16;
  v59 = v13;
  v56 = v24;
  v51 = v6;
  if (v25)
  {
    type metadata accessor for CMLDictionary();
    inited = swift_initStackObject();
    *(inited + 16) = v25;
    v26 = 0;
    v69 = sub_237C084CC();
    v55 = v18 + 32;
    v54 = v18 + 16;
    v53 = v18 + 8;
    v57 = a1;
    while (1)
    {
      if (v26 == sub_237A2EAA4())
      {

        return v69;
      }

      v27 = v58;
      v28 = sub_237A2EB64(v26);
      v60 = sub_237B6A974(v26);
      v29 = sub_237C08D2C();
      v61 = &v50;
      OUTLINED_FUNCTION_3_15();
      v31 = v30;
      v33 = *(v32 + 64);
      MEMORY[0x28223BE20](v34);
      v36 = (&v50 - v35);
      v62 = v28;
      *v36 = sub_237A2DE60();
      v36[1] = v37;
      v38 = MEMORY[0x277D837D0];
      if (__swift_getEnumTagSinglePayload(v36, 1, MEMORY[0x277D837D0]) == 1)
      {
        (*(v31 + 8))(v36, v29);
        v66 = 0;
        v64 = 0u;
        v65 = 0u;
      }

      else
      {
        *(&v65 + 1) = v38;
        v66 = &off_284AC56F0;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
        (*(*(v38 - 8) + 32))(boxed_opaque_existential_0, v36, v38);
      }

      v40 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C850, qword_237C10F20);
      v41 = swift_dynamicCast();
      v42 = v59;
      if ((v41 & 1) == 0 || (v43 = v68) == 0)
      {

        return 0;
      }

      v44 = v67;
      sub_237B70F8C(a2, a3, v40);
      if (__swift_getEnumTagSinglePayload(v40, 1, a2) == 1)
      {
        break;
      }

      OUTLINED_FUNCTION_9_29(&v72);
      v45 = v56;
      v46(v56, v40, a2);
      OUTLINED_FUNCTION_9_29(&v71);
      v47(v42, v45, a2);
      __swift_storeEnumTagSinglePayload(v42, 0, 1, a2);
      *&v64 = v44;
      *(&v64 + 1) = v43;
      sub_237C085DC();
      sub_237C085EC();

      OUTLINED_FUNCTION_9_29(&v70);
      v48(v45, a2);
      v26 = v60;
    }

    (*(v52 + 8))(v40, v51);
    return 0;
  }

  else
  {
    __break(1u);
    OUTLINED_FUNCTION_2_29();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B01534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  OUTLINED_FUNCTION_3_15();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v60 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v58 = &v56 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v68 = (&v56 - v24);
  v25 = MEMORY[0x2383DDA80](0);
  if (!v25)
  {
    goto LABEL_19;
  }

  v26 = v25;
  type metadata accessor for CMLDictionary();
  inited = swift_initStackObject();
  *(inited + 16) = v26;
  v27 = *(a1 + 64);
  v67 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v66 = (v28 + 63) >> 6;
  v56 = v6 + 16;
  v57 = v6;
  v69 = (v6 + 32);
  v63 = (v16 + 32);
  v61 = (v6 + 8);
  v59 = a1;

  v31 = 0;
  v70 = 0;
  v32 = v60;
  while (1)
  {
    v33 = v68;
    if (v30)
    {
      v34 = v31;
      goto LABEL_11;
    }

    do
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:

        while (1)
        {
          swift_unexpectedError();
          __break(1u);
LABEL_22:
          OUTLINED_FUNCTION_2_29();
        }
      }

      if (v34 >= v66)
      {
        __swift_storeEnumTagSinglePayload(v22, 1, 1, TupleTypeMetadata2);
        v30 = 0;
        goto LABEL_12;
      }

      v30 = *(v67 + 8 * v34);
      ++v31;
    }

    while (!v30);
    v31 = v34;
LABEL_11:
    v35 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v36 = v35 | (v34 << 6);
    v37 = v58;
    v38 = (*(v59 + 48) + 16 * v36);
    v40 = *v38;
    v39 = v38[1];
    v41 = v57;
    (*(v57 + 16))(v58, *(v59 + 56) + *(v57 + 72) * v36, a2);
    v42 = *(TupleTypeMetadata2 + 48);
    *v22 = v40;
    *(v22 + 1) = v39;
    (*(v41 + 32))(&v22[v42], v37, a2);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, TupleTypeMetadata2);

    v32 = v60;
LABEL_12:
    (*v63)(v33, v22, v65);
    if (__swift_getEnumTagSinglePayload(v33, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v43 = v33;
    v44 = *v33;
    v45 = v43[1];
    (*v69)(v32, v43 + *(TupleTypeMetadata2 + 48), a2);
    v46 = sub_237B70DD4(a2, v62);
    v47 = v44;
    v48 = v70;
    sub_237A2EABC(v47, v45, v46);
    v70 = v48;
    if (v48)
    {
      goto LABEL_20;
    }

    (*v61)(v32, a2);
  }

  type metadata accessor for CMLFeatureValue();
  v49 = inited;

  v51 = v70;
  v52 = sub_237A2E858(v50);
  if (v51)
  {
    goto LABEL_22;
  }

  v53 = v52;
  swift_setDeallocating();
  v54 = *(v49 + 16);
  tc_v1_release();
  return v53;
}

uint64_t sub_237B01994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_237B00FDC(a1, *(a2 + 24), *(a3 - 8));
  *a4 = result;
  return result;
}

void sub_237B019D8(uint64_t *a1, int a2, void *a3)
{
  v4 = v3;
  v81 = a3;
  HIDWORD(v80) = a2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v77 = a1[5];
  v10 = a1[6];

  v98 = v7;

  v82 = v9;

  v11 = 0;
  while (1)
  {
    while (1)
    {
      if (v11 == sub_237A2EAA4())
      {
LABEL_16:

        return;
      }

      v12 = v10;
      v13 = sub_237A2EB64(v11);
      if (v4)
      {
        goto LABEL_21;
      }

      v15 = v13;
      v16 = v14;
      v11 = sub_237B6A974(v11);
      v87 = v15;
      v88 = v16;
      v6(&v83, &v87);

      v89 = v83;
      v90 = v84;
      v91 = v85;
      v92 = v86;
      v17 = v8(&v89);
      v25 = OUTLINED_FUNCTION_15_27(v17, v18, v19, v20, v21, v22, v23, v24, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, v80, v81, v82, v83, *(&v83 + 1), v84, *(&v84 + 1), v85, v86, v87, v88, v89);
      if (v31)
      {
        break;
      }

      sub_237B02450(v25, v26, v27, v28, v29, v30);
      v10 = v12;
    }

    *&v89 = v25;
    *(&v89 + 1) = v26;
    *&v90 = v27;
    *(&v90 + 1) = v28;
    v91 = v29;
    v92 = v30;
    v32 = v77(&v93, &v89);
    v40 = OUTLINED_FUNCTION_15_27(v32, v33, v34, v35, v36, v37, v38, v39, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, v80, v81, v82, v83, *(&v83 + 1), v84, *(&v84 + 1), v85, v86, v87, v88, v89);
    sub_237B02450(v40, v41, v42, v43, v44, v45);
    if (v94 == 255)
    {
      goto LABEL_16;
    }

    v89 = v93;
    LOBYTE(v90) = v94;
    v74 = v95;
    v75 = v96;
    HIDWORD(v76) = v97;
    v46 = *v81;
    v78 = v93;
    v79 = v94;
    v48 = sub_237ACB180(v93, *(&v93 + 1), v94);
    v49 = v46[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      swift_unexpectedError();
      __break(1u);
LABEL_22:
      sub_237C0932C();
      __break(1u);
      goto LABEL_23;
    }

    v52 = v47;
    if (v46[3] >= v51)
    {
      if ((v80 & 0x100000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BDE8, &qword_237C0EC80);
        sub_237C090BC();
      }
    }

    else
    {
      sub_237ABF994(v51, BYTE4(v80) & 1);
      v53 = *v81;
      v54 = sub_237ACB180(v78, *(&v78 + 1), v79);
      if ((v52 & 1) != (v55 & 1))
      {
        goto LABEL_22;
      }

      v48 = v54;
    }

    v56 = *v81;
    if (v52)
    {
      break;
    }

    v56[(v48 >> 6) + 8] |= 1 << v48;
    v57 = v56[6] + 24 * v48;
    *v57 = v78;
    *(v57 + 16) = v79;
    v58 = v56[7] + 24 * v48;
    *v58 = v74;
    *(v58 + 8) = v75;
    *(v58 + 16) = BYTE4(v76);
    v59 = v56[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_20;
    }

    v56[2] = v61;
    HIDWORD(v80) = 1;
    v10 = v12;
  }

  v62 = v56[7] + 24 * v48;
  v63 = *v62;
  v64 = *(v62 + 8);
  v65 = *(v62 + 16);
  v66 = swift_allocError();
  swift_willThrow();
  v67 = OUTLINED_FUNCTION_83();
  sub_2379E9288(v67, v68, v65);

  v69 = OUTLINED_FUNCTION_83();
  sub_2379E8CE8(v69, v70, v65);
  v87 = v66;
  v71 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2379E8CE8(v74, v75, SBYTE4(v76));

    sub_2379E8CE8(v78, *(&v78 + 1), v79);

    return;
  }

LABEL_23:
  *&v83 = 0;
  *(&v83 + 1) = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
  sub_237C0907C();
  MEMORY[0x2383DC360](39, 0xE100000000000000);
  sub_237C090DC();
  __break(1u);
}

uint64_t sub_237B01EB4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_237C08E3C();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_237B01F58()
{
  result = qword_27DE9CCF8;
  if (!qword_27DE9CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CCF8);
  }

  return result;
}

unint64_t sub_237B01FB0()
{
  result = qword_27DE9CD00;
  if (!qword_27DE9CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CD00);
  }

  return result;
}

unint64_t sub_237B02008()
{
  result = qword_27DE9CD08;
  if (!qword_27DE9CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CD08);
  }

  return result;
}

uint64_t sub_237B02128(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_237B02360(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9CD60, &qword_237C12AE0);
    sub_237B023E4(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237B023E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    type metadata accessor for CMLDictionary();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_237B02450(void *a1, void *a2, char a3, void *a4, void *a5, char a6)
{
  if (a3 != -1)
  {
    sub_2379E8CE8(a1, a2, a3);

    sub_2379E8CE8(a4, a5, a6);
  }
}

__n128 OUTLINED_FUNCTION_12_30(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return *(a1 + 25);
}

uint64_t sub_237B0251C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_237B02560(uint64_t a1)
{
  v4 = MEMORY[0x2383DDAC0](0);
  if (!v4)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v5 = v4;
  type metadata accessor for CMLSequence();
  inited = swift_initStackObject();
  *(inited + 16) = v5;
  *(inited + 24) = 1;
  v32 = *(a1 + 16);
  v33 = inited;
  v30 = v1;
  if (!v32)
  {
LABEL_35:

    v24 = sub_237B0E008(*(v33 + 16));
    if (v2)
    {
      swift_setDeallocating();
      sub_237A2E6E8();
      swift_deallocClassInstance();
      goto LABEL_41;
    }

    v25 = v24;
    if (v24)
    {
      swift_setDeallocating();
      sub_237A2E6E8();
      swift_deallocClassInstance();
      type metadata accessor for CMLColumn();
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      v27 = v30;
      *(v30 + 16) = v26;
      return v27;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_unexpectedError();
    __break(1u);
    JUMPOUT(0x237B02A1CLL);
  }

  v7 = 0;
  v8 = (a1 + 48);
  v9 = 6;
  v31 = a1;
  while (2)
  {
    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v11 = *(v8 - 2);
    v10 = *(v8 - 1);
    ++v7;
    v12 = *v8;
    switch(*v8)
    {
      case 2:
        v13 = *(v8 - 1);
        goto LABEL_11;
      case 3:
        v14 = *(v8 - 2);

        goto LABEL_12;
      case 4:
        v17 = *(v8 - 2);
LABEL_11:

        goto LABEL_12;
      case 5:
        v15 = v11;
        goto LABEL_12;
      case 6:
        type metadata accessor for CMLFeatureValue();
        v16 = sub_237A2E78C();
LABEL_30:
        v20 = v16;
        goto LABEL_33;
      default:
LABEL_12:
        if (v9 == 6)
        {
          switch(v12)
          {
            case 1:
              goto LABEL_27;
            case 2:
              goto LABEL_22;
            case 3:
              goto LABEL_25;
            case 4:
              goto LABEL_20;
            case 5:
              goto LABEL_32;
            default:
              goto LABEL_16;
          }
        }

        break;
    }

    switch(v12)
    {
      case 1:
        if (v9 != 1)
        {
          goto LABEL_40;
        }

LABEL_27:
        v22 = sub_237B0F594(*&v11);
        if (v2)
        {
          goto LABEL_48;
        }

        v23 = v22;
        if (!v22)
        {
          goto LABEL_44;
        }

        type metadata accessor for CMLFeatureValue();
        swift_allocObject();
        v9 = 1;
        v16 = sub_237A2E764(v23, 1);
        goto LABEL_30;
      case 2:
        if (v9 != 2)
        {
          goto LABEL_40;
        }

LABEL_22:
        type metadata accessor for CMLFeatureValue();

        v21 = sub_237A2E7CC();
        if (v2)
        {
          goto LABEL_48;
        }

        v20 = v21;
        v9 = 2;
        goto LABEL_33;
      case 3:
        if (v9 != 3)
        {
          goto LABEL_40;
        }

LABEL_25:
        v20 = sub_237A91FA8();
        v9 = 3;
        goto LABEL_33;
      case 4:
        if (v9 != 4)
        {
          goto LABEL_40;
        }

LABEL_20:
        v20 = sub_237AFF290();
        v9 = 4;
        goto LABEL_33;
      case 5:
        if (v9 != 5)
        {
          goto LABEL_40;
        }

LABEL_32:
        v20 = sub_237AC85C4();
        v9 = 5;
        goto LABEL_33;
      default:
        if (!v9)
        {
LABEL_16:
          v18 = sub_237B0F164(v11);
          if (v2)
          {
            goto LABEL_48;
          }

          v19 = v18;
          if (!v18)
          {
            goto LABEL_45;
          }

          type metadata accessor for CMLFeatureValue();
          swift_allocObject();
          v20 = sub_237A2E764(v19, 1);
          v9 = 0;
LABEL_33:
          sub_237A2DE9C(v20);
          if (v2)
          {

            swift_setDeallocating();
            sub_237A2E6E8();
            swift_deallocClassInstance();
            sub_2379E8CE8(v11, v10, v12);

            goto LABEL_41;
          }

          sub_2379E8CE8(v11, v10, v12);

          v8 += 24;
          a1 = v31;
          if (v32 == v7)
          {
            goto LABEL_35;
          }

          continue;
        }

LABEL_40:
        sub_2379E8AF0();
        swift_allocError();
        *v28 = 0xD000000000000027;
        *(v28 + 8) = 0x8000000237C19320;
        *(v28 + 16) = 0u;
        *(v28 + 32) = 0u;
        *(v28 + 48) = 1;
        swift_willThrow();
        sub_2379E8CE8(v11, v10, v12);
        swift_setDeallocating();
        sub_237A2E6E8();
        swift_deallocClassInstance();

LABEL_41:
        type metadata accessor for _UntypedColumn();
        v27 = v30;
        swift_deallocPartialClassInstance();
        return v27;
    }
  }
}

uint64_t sub_237B02A68(uint64_t a1)
{
  v3 = MEMORY[0x2383DDAC0](0);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    v6 = 0;
    *(inited + 16) = v4;
    v20 = inited;
    *(inited + 24) = 1;
    v7 = *(a1 + 16);
    v8 = (a1 + 40);
    while (v7 != v6)
    {
      if (v6 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_12;
      }

      v9 = *(v8 - 1);
      v10 = *v8;
      v19[3] = MEMORY[0x277D837D0];
      v19[4] = &off_284AC56F0;
      v19[0] = v9;
      v19[1] = v10;
      v11 = __swift_project_boxed_opaque_existential_1(v19, MEMORY[0x277D837D0]);
      v12 = *v11;
      v13 = v11[1];
      type metadata accessor for CMLFeatureValue();
      swift_bridgeObjectRetain_n();

      v14 = sub_237A2E7CC();
      if (v1)
      {
        goto LABEL_13;
      }

      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1(v19);
      sub_237A2DE9C(v15);

      v8 += 2;
      ++v6;
    }

    type metadata accessor for CMLColumn();
    v16 = sub_237A2ED1C(v20, 2);
    if (v1)
    {
      type metadata accessor for _UntypedColumn();
      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v18 + 16) = v16;
    }

    return v18;
  }

  else
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B02C68(uint64_t a1)
{
  v3 = MEMORY[0x2383DDAC0](0);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    v6 = 0;
    *(inited + 16) = v4;
    *(inited + 24) = 1;
    v7 = *(a1 + 16);
    v8 = MEMORY[0x277D83B88];
    while (v7 != v6)
    {
      if (v6 >= *(a1 + 16))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v9 = *(a1 + 8 * v6 + 32);
      v17[3] = v8;
      v17[4] = &off_284AC55D0;
      v17[0] = v9;
      v10 = __swift_project_boxed_opaque_existential_1(v17, v8);
      v11 = sub_237B0F164(*v10);
      if (v1)
      {
        goto LABEL_15;
      }

      v12 = v11;
      if (!v11)
      {
        goto LABEL_13;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      v13 = sub_237A2E764(v12, 1);
      __swift_destroy_boxed_opaque_existential_1(v17);
      sub_237A2DE9C(v13);

      ++v6;
    }

    type metadata accessor for CMLColumn();
    v14 = sub_237A2ED1C(inited, 0);
    v15 = v18;
    if (v1)
    {
      type metadata accessor for _UntypedColumn();
      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v18 + 16) = v14;
    }

    return v15;
  }

  else
  {
LABEL_14:
    __break(1u);
LABEL_15:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B02E5C(uint64_t a1)
{
  v3 = MEMORY[0x2383DDAC0](0);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    v6 = 0;
    *(inited + 16) = v4;
    *(inited + 24) = 1;
    v7 = *(a1 + 16);
    while (v7 != v6)
    {
      if (v6 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_12;
      }

      v8 = *(a1 + 8 * v6 + 32);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
      v16[3] = v9;
      v16[4] = sub_237B060E8();
      v16[0] = v8;
      v10 = *__swift_project_boxed_opaque_existential_1(v16, v9);
      type metadata accessor for CMLFeatureValue();
      swift_bridgeObjectRetain_n();
      sub_237BF258C(v10);
      v11 = sub_237A2DECC();
      if (v1)
      {
        goto LABEL_13;
      }

      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_237A2DE9C(v12);

      ++v6;
    }

    type metadata accessor for CMLColumn();
    v13 = sub_237A2ED1C(inited, 3);
    v14 = v17;
    if (v1)
    {
      type metadata accessor for _UntypedColumn();
      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v17 + 16) = v13;
    }

    return v14;
  }

  else
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_237B03064(uint64_t a1)
{
  v3 = MEMORY[0x2383DDAC0](0);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    v6 = 0;
    *(inited + 16) = v4;
    *(inited + 24) = 1;
    v7 = *(a1 + 16);
    while (1)
    {
      if (v7 == v6)
      {

        type metadata accessor for CMLColumn();
        v11 = sub_237A2ED1C(inited, 6);
        if (!v1)
        {
          *(v12[10] + 16) = v11;
          return;
        }

        goto LABEL_10;
      }

      if (v6 >= *(a1 + 16))
      {
        break;
      }

      v8 = *(a1 + 8 * v6 + 32);
      v12[3] = &type metadata for MLDataValue.MultiArrayType;
      v12[4] = &off_284AC3CA8;
      v12[0] = v8;
      __swift_project_boxed_opaque_existential_1(v12, &type metadata for MLDataValue.MultiArrayType);
      v9 = v8;
      v10 = sub_237AC85C4();
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_237A2DE9C(v10);
      if (v1)
      {

        swift_setDeallocating();
        sub_237A2E6E8();
        swift_deallocClassInstance();

LABEL_10:
        type metadata accessor for _UntypedColumn();
        swift_deallocPartialClassInstance();
        return;
      }

      ++v6;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237B0320C(uint64_t a1)
{
  result = MEMORY[0x2383DDAC0](0);
  if (result)
  {
    v4 = result;
    type metadata accessor for CMLSequence();
    result = swift_initStackObject();
    v5 = result;
    v6 = 0;
    *(result + 16) = v4;
    *(result + 24) = 1;
    v7 = *(a1 + 16);
    while (1)
    {
      if (v7 == v6)
      {

        type metadata accessor for CMLColumn();
        v12 = sub_237A2ED1C(v5, 4);
        if (v1)
        {
          goto LABEL_10;
        }

        v13 = v15;
        *(v15 + 16) = v12;
        return v13;
      }

      if (v6 >= *(a1 + 16))
      {
        break;
      }

      v8 = *(a1 + 8 * v6 + 32);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
      v14[3] = v9;
      v14[4] = sub_237B06164();
      v14[0] = v8;
      v10 = *__swift_project_boxed_opaque_existential_1(v14, v9);
      swift_bridgeObjectRetain_n();
      v11 = sub_237B033D4(v10);
      __swift_destroy_boxed_opaque_existential_1(v14);
      sub_237A2DE9C(v11);
      if (v1)
      {

        swift_setDeallocating();
        sub_237A2E6E8();
        swift_deallocClassInstance();

LABEL_10:
        v13 = v15;
        type metadata accessor for _UntypedColumn();
        swift_deallocPartialClassInstance();
        return v13;
      }

      ++v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237B033D4(uint64_t a1)
{
  v2 = MEMORY[0x2383DDA80](0);
  if (v2)
  {
    v3 = v2;
    type metadata accessor for CMLDictionary();
    inited = swift_initStackObject();
    *(inited + 16) = v3;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v24 = inited;
    while (v7)
    {
LABEL_10:
      v11 = __clz(__rbit64(v7)) | (v9 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v11);
      v25[3] = MEMORY[0x277D839F8];
      v25[4] = &off_284AC56A8;
      v25[0] = v15;
      v16 = *__swift_project_boxed_opaque_existential_1(v25, MEMORY[0x277D839F8]);

      v17 = sub_237B0F594(v16);
      if (!v17)
      {
        goto LABEL_14;
      }

      v7 &= v7 - 1;
      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      v18 = sub_237A2E764(v17, 1);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v19 = v14;
      inited = v24;
      sub_237A2EABC(v19, v13, v18);
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        type metadata accessor for CMLFeatureValue();

        v21 = sub_237A2E858(v20);
        swift_setDeallocating();
        v22 = *(inited + 16);
        tc_v1_release();
        return v21;
      }

      v7 = *(a1 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_237B03618(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B318, &qword_237C12D60);
  v4 = swift_allocObject();
  v5 = 0;
  *(v4 + 16) = xmmword_237C0B660;
  *(v4 + 32) = a1;
  while (1)
  {
    v6 = v5 + 1;
    if (v5 >= v5 + 1)
    {
      break;
    }

    v7 = *(v4 + 8 * v5 + 32) ^ (*(v4 + 8 * v5 + 32) >> 30);
    v8 = 0x5851F42D00000000 * v7 + 0x4C957F2D00000000 * HIDWORD(v7) + 1284865837 * v7;
    v9 = v8 + v6;
    if (__CFADD__(v8, v6))
    {
      goto LABEL_9;
    }

    v10 = *(v4 + 24);
    if (v6 >= v10 >> 1)
    {
      sub_237BC0D70(v10 > 1, v5 + 2, 1, v4);
      v4 = v11;
    }

    *(v4 + 16) = v5 + 2;
    *(v4 + 8 * v5++ + 40) = v9;
    if (v5 == 623)
    {
      *a2 = xmmword_237C12C80;
      *(a2 + 16) = xmmword_237C12C90;
      *(a2 + 32) = xmmword_237C12CA0;
      *(a2 + 48) = xmmword_237C12CB0;
      *(a2 + 64) = xmmword_237C12CC0;
      *(a2 + 80) = xmmword_237C12CD0;
      *(a2 + 96) = 0x5851F42D4C957F2DLL;
      *(a2 + 104) = v4;
      *(a2 + 112) = 0;
      return;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void sub_237B03780()
{
  v1 = v0[14];
  if (v1 == v0[1])
  {
    sub_237B05B68();
    v1 = v0[14];
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v2 = v0[13];
  if (v1 >= *(v2 + 16))
  {
LABEL_34:
    __break(1u);
    return;
  }

  v3 = *(v2 + 8 * v1 + 32);
  v4 = v0[5];
  v5 = v3 >> v4;
  if (v4 >= 0x40)
  {
    v5 = 0;
  }

  v6 = v3 << -v4;
  if (v4 <= 0xFFFFFFFFFFFFFFC0)
  {
    v6 = 0;
  }

  v7 = (v4 & 0x8000000000000000) == 0;
  v8 = v4 - 65;
  if (!v7)
  {
    v5 = v6;
  }

  if (v8 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v0[6] & v9 ^ v3;
  v11 = v0[7];
  v12 = v11 - 65;
  v13 = v10 << v11;
  if (v11 >= 0x40)
  {
    v13 = 0;
  }

  v14 = v10 >> -v11;
  if (v11 <= 0xFFFFFFFFFFFFFFC0)
  {
    v14 = 0;
  }

  if (v11 < 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  if (v12 < 0xFFFFFFFFFFFFFF7FLL)
  {
    v15 = 0;
  }

  v16 = v0[9];
  v17 = v0[8] & v15 ^ v10;
  v18 = v17 << v16;
  if (v16 >= 0x40)
  {
    v18 = 0;
  }

  v19 = v17 >> -v16;
  if (v16 <= 0xFFFFFFFFFFFFFFC0)
  {
    v19 = 0;
  }

  if (v16 < 0)
  {
    v18 = v19;
  }

  if ((v16 - 65) >= 0xFFFFFFFFFFFFFF7FLL)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v0[10] & v20 ^ v17) << -v0[11];
  v0[14] = v1 + 1;
}

uint64_t sub_237B038C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v81 = a4;
  v82 = a5;
  v80 = a2;
  v74 = sub_237C05ADC();
  v9 = OUTLINED_FUNCTION_0(v74);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a3;
  v16 = sub_237BA2F3C(a3);
  v17 = 0;
  v84 = *(v16 + 16);
  v85 = v16;
  v95 = v11;
  v91 = (v11 + 32);
  v92 = v11 + 16;
  v18 = v16 + 40;
  v19 = MEMORY[0x277D84F90];
  v73 = v16 + 40;
LABEL_2:
  for (i = (v18 + 16 * v17); ; i += 2)
  {
    if (v84 == v17)
    {
      goto LABEL_41;
    }

    if (v17 >= *(v85 + 16))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v21 = *(i - 1);
    v22 = *i;

    v88 = v21;
    v90 = v22;
    v23 = sub_237ACDA88(v21, v22, v83);
    if (!v23)
    {
      goto LABEL_49;
    }

    v24 = v23;
    v25 = sub_2379DFF68(0, *(v23 + 16));
    sub_237B03EA4(v25, a1);
    v89 = v26;
    if (v6)
    {

LABEL_41:

      return v19;
    }

    if (*(a1 + 16))
    {
      break;
    }

    ++v17;
  }

  v75 = *(a1 + 16);
  v27 = 0;
  v78 = 0;
  v79 = v89 + 32;
  v96 = v24;
  v76 = v17 + 1;
  v77 = a1;
  while (1)
  {
    v28 = *(v19 + 16);
    v87 = v27;
    if (v28 <= v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
      v29 = sub_237C085AC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = *(v19 + 16);
        OUTLINED_FUNCTION_7_10();
        sub_237BC1E44();
        v19 = v69;
      }

      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      if (v31 >= v30 >> 1)
      {
        OUTLINED_FUNCTION_106(v30);
        sub_237BC1E44();
        v19 = v70;
      }

      *(v19 + 16) = v31 + 1;
      *(v19 + 8 * v31 + 32) = v29;
      v27 = v87;
    }

    if (v27 >= *(v89 + 16))
    {
      break;
    }

    v86 = v19;
    v32 = *(v79 + 8 * v27);
    v33 = *(v32 + 16);
    if (v33)
    {
      v97 = MEMORY[0x277D84F90];

      sub_237AC8AF4(0, v33, 0);
      v34 = v97;
      v94 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v93 = v24 + v94;
      v35 = 32;
      v36 = v74;
      while (1)
      {
        v37 = *(v32 + v35);
        if ((v37 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v37 >= *(v24 + 16))
        {
          goto LABEL_43;
        }

        v38 = *(v95 + 72);
        (*(v95 + 16))(v15, v93 + v38 * v37, v36);
        v97 = v34;
        v40 = v34[2];
        v39 = v34[3];
        if (v40 >= v39 >> 1)
        {
          v41 = OUTLINED_FUNCTION_106(v39);
          sub_237AC8AF4(v41, v40 + 1, 1);
          v36 = v74;
          v34 = v97;
        }

        v34[2] = v40 + 1;
        (*v91)(v34 + v94 + v40 * v38, v15, v36);
        v35 += 8;
        --v33;
        v24 = v96;
        if (!v33)
        {

          v27 = v87;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v34 = MEMORY[0x277D84F90];
LABEL_26:
    v42 = v86;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v90;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237B05FE4(v42);
      v42 = v67;
    }

    if (v27 >= *(v42 + 16))
    {
      goto LABEL_46;
    }

    v45 = v42;
    v46 = v42 + 32;
    v47 = *(v46 + 8 * v27);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = v27;
    v49 = *(v46 + 8 * v27);
    v97 = v49;
    v50 = v46;
    *(v46 + 8 * v48) = 0x8000000000000000;
    v51 = sub_237ACAC78(v88, v44);
    if (__OFADD__(v49[2], (v52 & 1) == 0))
    {
      goto LABEL_47;
    }

    v53 = v51;
    v54 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
    if (sub_237C090AC())
    {
      v55 = v90;
      v56 = sub_237ACAC78(v88, v90);
      if ((v54 & 1) != (v57 & 1))
      {
        goto LABEL_50;
      }

      v53 = v56;
    }

    else
    {
      v55 = v90;
    }

    v58 = v97;
    if (v54)
    {
      v59 = v97[7];
      v60 = *(v59 + 8 * v53);
      *(v59 + 8 * v53) = v34;
    }

    else
    {
      v97[(v53 >> 6) + 8] |= 1 << v53;
      v61 = (v58[6] + 16 * v53);
      *v61 = v88;
      v61[1] = v55;
      *(v58[7] + 8 * v53) = v34;
      v62 = v58[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        goto LABEL_48;
      }

      v58[2] = v64;
    }

    v65 = v87 + 1;
    v66 = *(v50 + 8 * v87);
    *(v50 + 8 * v87) = v58;

    v27 = v65;
    v17 = v76;
    a1 = v77;
    v19 = v45;
    v24 = v96;
    v6 = v78;
    if (v65 == v75)
    {

      v18 = v73;
      goto LABEL_2;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

void sub_237B03EA4(uint64_t a1, uint64_t a2)
{
  v2 = 0xD000000000000024;
  if (!*(a2 + 16))
  {
    v7 = "-zero proportion is required.";
    goto LABEL_16;
  }

  v63 = *(a2 + 16);
  v5 = COERCE_DOUBLE(sub_237B0251C(a2));
  if (v6)
  {
    goto LABEL_62;
  }

  if (v5 < 0.0)
  {
    v7 = "ed.";
    v2 = 0xD00000000000002ALL;
LABEL_16:
    v20 = v7 | 0x8000000000000000;
    sub_2379E8AF0();
    v21 = OUTLINED_FUNCTION_6_2();
    *v22 = v2;
    v22[1] = v20;
    OUTLINED_FUNCTION_52(v21, v22);
    return;
  }

  v8 = COERCE_DOUBLE(sub_2379FBDB8(a2));
  if ((v9 & 1) == 0)
  {
    if (v8 <= 0.0)
    {
      v7 = "e proportions are allowed.";
      v2 = 0xD00000000000002DLL;
      goto LABEL_16;
    }

    v62 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A474D0();
    v64 = sub_237C088BC();
    v10 = 0;
    v11 = a2 + 32;
    v12 = 0.0;
    do
    {
      v13 = *(v11 + 8 * v10++);
      v12 = v12 + v13;
    }

    while (v63 != v10);
    v66 = MEMORY[0x277D84F90];
    sub_237AC8B54();
    v14 = v63;
    v15 = 0;
    v16 = *(v66 + 16);
    do
    {
      v17 = *(v11 + 8 * v15);
      v18 = *(v66 + 24);
      v19 = v16 + 1;
      if (v16 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_106(v18);
        sub_237AC8B54();
        v14 = v63;
      }

      ++v15;
      *(v66 + 16) = v19;
      *(v66 + 8 * v16++ + 32) = v17 / v12;
    }

    while (v14 != v15);
    sub_237BC0EDC(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = v23;
    v25 = 0;
    v26 = *(v23 + 16);
    v27 = 8 * v26;
    do
    {
      if (v26 + v25)
      {
        v28 = *(v24 + v27 + 8 * v25 + 24);
      }

      else
      {
        v28 = 0.0;
      }

      v29 = *(v66 + 32 + 8 * v25);
      v30 = *(v24 + 24);
      if (v26 + v25 >= v30 >> 1)
      {
        sub_237BC0EDC(v30 > 1, v26 + v25 + 1, 1, v24);
        v24 = v31;
      }

      *(v24 + 16) = v26 + v25 + 1;
      *(v24 + v27 + 8 * v25++ + 32) = v29 + v28;
    }

    while (v19 != v25);

    v32 = *(v24 + 16);
    if (v32)
    {
      v67 = MEMORY[0x277D84F90];
      sub_237AC8A34();
      v33 = 32;
      v34 = v67;
      while (1)
      {
        v35 = round(*(v24 + v33) * v62);
        if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v35 <= -9.22337204e18)
        {
          goto LABEL_58;
        }

        if (v35 >= 9.22337204e18)
        {
          goto LABEL_59;
        }

        v37 = *(v67 + 16);
        v36 = *(v67 + 24);
        if (v37 >= v36 >> 1)
        {
          OUTLINED_FUNCTION_106(v36);
          sub_237AC8A34();
        }

        *(v67 + 16) = v37 + 1;
        *(v67 + 8 * v37 + 32) = v35;
        v33 += 8;
        if (!--v32)
        {

          goto LABEL_33;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
LABEL_33:
      v38 = 0;
      v39 = 0;
      v40 = v34 + 32;
      v41 = v63;
      v61 = a1 + 32;
      v65 = MEMORY[0x277D84F90];
      while (v39 != v41)
      {
        if (v39 >= *(v34 + 16))
        {
          goto LABEL_61;
        }

        if (v38 < *(v40 + 8 * v39))
        {
          sub_237BC0EB4(0, 1, 1, MEMORY[0x277D84F90]);
          v43 = v61;
          v42 = v64 + 32;
          v45 = v44;
          v46 = v64;
          v47 = v38;
          v48 = v62;
          while ((v38 & 0x8000000000000000) == 0)
          {
            if (v47 >= *(v46 + 16))
            {
              goto LABEL_54;
            }

            v49 = *(v42 + 8 * v47);
            if (v49 >= v48)
            {
              goto LABEL_55;
            }

            v50 = *(v43 + 8 * v49);
            v52 = *(v45 + 16);
            v51 = *(v45 + 24);
            if (v52 >= v51 >> 1)
            {
              v53 = OUTLINED_FUNCTION_106(v51);
              sub_237BC0EB4(v53, v52 + 1, 1, v45);
              v43 = v61;
              v42 = v64 + 32;
              v48 = v62;
              v45 = v54;
              v46 = v64;
            }

            *(v45 + 16) = v52 + 1;
            *(v45 + 8 * v52 + 32) = v50;
            if (v39 >= *(v34 + 16))
            {
              goto LABEL_56;
            }

            if (++v47 >= *(v40 + 8 * v39))
            {
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v47 = v38;
        v45 = MEMORY[0x277D84F90];
LABEL_47:
        v55 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = *(v65 + 16);
          OUTLINED_FUNCTION_7_10();
          sub_237BC0DEC();
          v55 = v59;
        }

        v57 = *(v55 + 16);
        v56 = *(v55 + 24);
        v41 = v63;
        if (v57 >= v56 >> 1)
        {
          OUTLINED_FUNCTION_106(v56);
          sub_237BC0DEC();
          v41 = v63;
          v55 = v60;
        }

        ++v39;
        *(v55 + 16) = v57 + 1;
        v65 = v55;
        *(v55 + 8 * v57 + 32) = v45;
        v38 = v47;
        if (v39 == v41)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
}

void sub_237B04410(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v109 = *a3;
  HIDWORD(v108) = *(a3 + 8);
  if ((v108 & 0x100000000) != 0)
  {
    v13 = MEMORY[0x2383DDAC0](0);
    if (!v13)
    {
LABEL_66:
      __break(1u);
      return;
    }

    v14 = v13;
    type metadata accessor for CMLSequence();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v16, v17);
    sub_237B6C208(&v121);
    v18 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v18, v19);
  }

  v110 = a4;
  v111 = a5;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_14();
  *(v20 - 16) = &v110;
  v21 = sub_237AC1AB8(sub_2379F57B8);

  if ((v21 & 1) == 0)
  {
    sub_2379E8AF0();
    v69 = OUTLINED_FUNCTION_6_2();
    *v70 = 0xD000000000000022;
    v70[1] = 0x8000000237C1BBE0;
    OUTLINED_FUNCTION_52(v69, v70);
    return;
  }

  v22 = v109;
  v121 = v109;
  v23 = BYTE4(v108);
  v122 = BYTE4(v108);
  MLDataTable.subscript.getter();
  OUTLINED_FUNCTION_16_22();
  MLUntypedColumn.dropDuplicates()(&v110);
  sub_2379DBC9C(v117, v118);
  v121 = v110;
  v122 = v111;
  Array<A>.init(_:)(&v121);
  v25 = v24;
  v110 = v109;
  LOBYTE(v111) = BYTE4(v108);
  v26 = MLDataTable.size.getter();
  if (v26 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v102 = a1;
  v103 = a4;
  v92 = a8;
  v27 = sub_2379DFF68(0, v26);
  v121 = v109;
  v122 = BYTE4(v108);
  v110 = v109;
  LOBYTE(v111) = BYTE4(v108);
  sub_2379DBCF4(v109, SBYTE4(v108));
  v28 = MLDataTable.size.getter();
  v29 = sub_237AC7A20(0, v28);
  v96 = *(v25 + 16);
  if (v96)
  {
    v30 = 0;
    v97 = v25 + 32;
    v104 = v27;
    v91 = (v27 + 3);
    v94 = a5;
    v95 = v25;
    while (2)
    {
      if (v30 < *(v25 + 16))
      {
        v31 = v97 + 24 * v30;
        v32 = *v31;
        v33 = *(v31 + 8);
        v34 = *(v31 + 16);
        v98 = v30 + 1;
        v117 = v22;
        v118 = v23;
        sub_2379E9288(v32, v33, v34);
        MLDataTable.subscript.getter();
        v113 = v115;
        v114 = v116;
        v101 = v32;
        v110 = v32;
        v111 = v33;
        v100 = v33;
        HIDWORD(v99) = v34;
        v112 = v34;
        sub_237BBF460(&v113);
        sub_2379DBC9C(v113, v114);
        v110 = v119;
        LOBYTE(v111) = v120;
        Array<A>.init(_:)(&v110);
        v36 = v35;
        v37 = 0;
        v38 = v35 + 48;
        v39 = MEMORY[0x277D84F90];
        v40 = v104;
LABEL_11:
        v41 = *(v36 + 16);
        v42 = (v38 + 24 * v37);
        while (v41 != v37)
        {
          if (v37 >= v41)
          {
            goto LABEL_61;
          }

          v43 = v42;
          v44 = *(v40 + 16);
          if (v37 == v44)
          {
            break;
          }

          if (v37 >= v44)
          {
            goto LABEL_62;
          }

          v42 = v43 + 24;
          ++v37;
          if (!*v43 && *(v43 - 2) == 1)
          {
            v45 = *(v43 - 1);
            v123 = *(v91 + 8 * v37);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v110 = v39;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v47 = v39[2];
              sub_237AC8B74();
              v40 = v104;
              v39 = v110;
            }

            v49 = v39[2];
            v48 = v39[3];
            if (v49 >= v48 >> 1)
            {
              OUTLINED_FUNCTION_106(v48);
              sub_237AC8B74();
              v40 = v104;
              v39 = v110;
            }

            v39[2] = v49 + 1;
            v50 = &v39[4 * v49];
            v50[4] = 1;
            v50[5] = v45;
            *(v50 + 48) = 0;
            v50[7] = v123;
            goto LABEL_11;
          }
        }

        v51 = v39[2];
        if (v51)
        {
          v110 = MEMORY[0x277D84F90];
          sub_237AC8A34();
          v52 = 0;
          v53 = v110;
          v54 = 7;
          while (v52 < v39[2])
          {
            v55 = v39[v54];
            v110 = v53;
            v57 = v53[2];
            v56 = v53[3];
            if (v57 >= v56 >> 1)
            {
              OUTLINED_FUNCTION_106(v56);
              sub_237AC8A34();
              v53 = v110;
            }

            ++v52;
            v53[2] = v57 + 1;
            v53[v57 + 4] = v55;
            v54 += 4;
            if (v51 == v52)
            {

              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          break;
        }

        v53 = MEMORY[0x277D84F90];
LABEL_31:
        v58 = sub_2379DFF68(0, v53[2]);
        sub_237B03EA4(v58, v102);
        if (v8)
        {
LABEL_59:
          sub_2379DBC9C(v121, v122);

          OUTLINED_FUNCTION_12_31();

          return;
        }

        v60 = v59;

        v123 = *(v102 + 16);
        if (v123)
        {
          v61 = 0;
          v62 = v60 + 32;
          while (v61 < *(v60 + 16))
          {
            v63 = *(*(v62 + 8 * v61) + 16);
            if (v63)
            {
              v64 = 0;
              while (1)
              {
                v65 = *(v62 + 8 * v61);
                if (v64 >= *(v65 + 16))
                {
                  break;
                }

                v66 = *(v65 + 8 * v64 + 32);
                if ((v66 & 0x8000000000000000) != 0)
                {
                  goto LABEL_55;
                }

                if (v66 >= v53[2])
                {
                  goto LABEL_56;
                }

                v67 = v53[v66 + 4];
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if ((v67 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_57;
                  }
                }

                else
                {
                  sub_237B05F04(v29);
                  v29 = v68;
                  if ((v67 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_57;
                  }
                }

                if (v67 >= v29[2])
                {
                  goto LABEL_58;
                }

                ++v64;
                v29[v67 + 4] = v61;
                if (v63 == v64)
                {
                  goto LABEL_47;
                }
              }

              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_47:
            if (++v61 == v123)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_63;
        }

LABEL_48:

        OUTLINED_FUNCTION_12_31();
        v30 = v98;
        v22 = v109;
        v23 = BYTE4(v108);
        v25 = v95;
        if (v98 != v96)
        {
          continue;
        }

        goto LABEL_51;
      }

      break;
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_51:

  v110 = v29;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_17_14();
  *(v72 - 16) = &v110;
  v73 = sub_237BBDC94(sub_237B062B4);
  v75 = v74;

  sub_237B6C670(v76, v77, v78, v79, v80, v81, v82, v83, v90, v91, v92, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, a2, a6, a7, v108, v109, v8);
  v110 = v73;
  LOBYTE(v111) = v75 & 1;
  OUTLINED_FUNCTION_20_21();
  sub_237B6C9CC();
  sub_2379DBC9C(v110, v111);
  v84 = v122;
  v85 = v121;
  if ((v122 & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v86, v87);
    sub_237B6C588();
    v88 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v88, v89);
  }

  *v93 = v85;
  *(v93 + 8) = v84;
}

void sub_237B04B7C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *(&v202 + 1) = a5;
  *&v202 = a4;
  v14 = *a3;
  LODWORD(v205) = *(a3 + 8);
  v192 = a9;
  v195 = a8;
  v194 = a2;
  v193 = a1;
  if (v205)
  {
    v15 = v14;
    v16 = a6;
    if (!MEMORY[0x2383DDAC0](0))
    {
      goto LABEL_88;
    }

    type metadata accessor for CMLSequence();
    v17 = swift_allocObject();
    v18 = OUTLINED_FUNCTION_21_23(v17);
  }

  else
  {
    v16 = a6;
    v19 = v14;
    sub_2379DBCF4(v14, 0);
    sub_237B6C208(&v215);
    v15 = v19;
    v20 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v20, v21);
  }

  v11 = &v189;
  v22 = v202;
  v207 = v202;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_14();
  *(v23 - 16) = &v207;
  v24 = sub_237AC1AB8(sub_2379F345C);

  if ((v24 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_36();
    v28 = *(&v22 + 1);
    v27 = v22;
LABEL_31:
    MEMORY[0x2383DC360](v27, v28);
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v82 = v207;
    sub_2379E8AF0();
    v83 = OUTLINED_FUNCTION_6_2();
    *v84 = v82;
    OUTLINED_FUNCTION_52(v83, v84);
    return;
  }

  if (v205)
  {
    if (!MEMORY[0x2383DDAC0](0))
    {
LABEL_91:
      __break(1u);
LABEL_92:
      sub_2379DBC9C(v11, 1);
      goto LABEL_93;
    }

    type metadata accessor for CMLSequence();
    v25 = swift_allocObject();
    v26 = OUTLINED_FUNCTION_21_23(v25);
  }

  else
  {
    sub_2379DBCF4(v15, 0);
    sub_237B6C208(&v215);
    sub_2379DBC9C(v15, 0);
  }

  *&v207 = v16;
  *(&v207 + 1) = a7;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17_14();
  *(v29 - 16) = &v207;
  v30 = sub_237AC1AB8(sub_2379F57B8);
  v201 = v10;

  if ((v30 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_36();
    v27 = v16;
    v28 = a7;
    goto LABEL_31;
  }

  v197 = v16;
  v196 = a7;
  v190 = a10;
  v215 = v15;
  v216 = v205;
  v213 = v15;
  v214 = v205;
  v203 = v15;
  sub_2379DBCF4(v15, v205);
  MLDataTable.subscript.getter();
  v209 = v211;
  v210 = v212;
  MLUntypedColumn.dropDuplicates()(&v207);
  sub_2379DBC9C(v209, v210);
  v213 = v207;
  v214 = BYTE8(v207);
  Array<A>.init(_:)(&v213);
  v32 = v31;
  v11 = *(v31 + 16);
  v191 = v31;
  if (!v11)
  {
    v204 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v209 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v33 = v209;
  v217 = 0x8000000237C199C0;
  v34 = (v32 + 48);
  v200 = v11;
  do
  {
    v204 = v33;
    v36 = *(v34 - 2);
    v35 = *(v34 - 1);
    v37 = *v34;
    LODWORD(v206) = *v34;
    if (v205)
    {
      swift_willThrow();
      v38 = OUTLINED_FUNCTION_23_23();
      sub_2379E9288(v38, v39, v37);
    }

    else
    {
      v40 = v203[2];
      swift_retain_n();
      v41 = OUTLINED_FUNCTION_23_23();
      sub_2379E9288(v41, v42, v37);
      OUTLINED_FUNCTION_18_26();
      v43 = v201;
      v44 = sub_237B6ACC0();
      if (!v43)
      {
        v69 = v44;

        type metadata accessor for _UntypedColumn();
        v70 = swift_allocObject();
        v71 = v37;
        v72 = v70;
        *(v70 + 16) = v69;
        *&v207 = v36;
        *(&v207 + 1) = v35;
        v208 = v71;
        v52 = sub_237A60280(4, v70, &v207);
        sub_2379DBC9C(v72, 0);
        v54 = 0;
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_25_20();

    OUTLINED_FUNCTION_13_25();
    v45 = OUTLINED_FUNCTION_18_26();
    MEMORY[0x2383DC360](v45);
    MEMORY[0x2383DC360](34, 0xE100000000000000);
    v46 = v207;
    sub_2379E8AF0();
    v47 = OUTLINED_FUNCTION_6_2();
    *v48 = v46;
    OUTLINED_FUNCTION_19_26(v47, v48);
    *&v207 = v49;
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v51 = sub_237C0925C();
    if (v51)
    {
      v52 = v51;
      OUTLINED_FUNCTION_15_28();
    }

    else
    {
      v52 = OUTLINED_FUNCTION_6_2();
      *v53 = v47;
    }

    v54 = 1;
    OUTLINED_FUNCTION_15_28();
LABEL_22:
    v213 = v203;
    v214 = v205;
    *&v207 = v52;
    BYTE8(v207) = v54;
    MLDataTable.subscript.getter(&v207, &v211);
    sub_2379DBC9C(v207, SBYTE8(v207));
    v55 = v211;
    v56 = v212;
    if (v212)
    {
      swift_willThrow();
      v201 = 0;
      OUTLINED_FUNCTION_25_20();

      OUTLINED_FUNCTION_13_25();
      v58 = OUTLINED_FUNCTION_17_21();
      MEMORY[0x2383DC360](v58);
      MEMORY[0x2383DC360](34, 0xE100000000000000);
      v59 = v207;
      sub_2379E8AF0();
      v60 = OUTLINED_FUNCTION_6_2();
      *v61 = v59;
      OUTLINED_FUNCTION_19_26(v60, v61);
      sub_2379DBC9C(v55, v56);
      v62 = OUTLINED_FUNCTION_23_23();
      sub_2379E8CE8(v62, v63, v206);
      OUTLINED_FUNCTION_15_28();
      v64 = 0uLL;
      v65 = 6;
    }

    else
    {
      v57 = v211[2];
      swift_retain_n();
      OUTLINED_FUNCTION_17_21();
      v73 = sub_237B6ACC0();
      v201 = 0;

      sub_2379DBC9C(v55, 0);
      type metadata accessor for _UntypedColumn();
      v74 = swift_allocObject();
      v74[2] = v73;
      sub_2379DBCF4(v74, 0);
      sub_237A607E0(0, &v207);
      v75 = OUTLINED_FUNCTION_23_23();
      sub_2379E8CE8(v75, v76, v206);
      v77 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v77, v78);
      v79 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v79, v80);
      v64 = v207;
      v65 = v208;
    }

    v33 = v204;
    v209 = v204;
    v67 = v204[2];
    v66 = v204[3];
    if (v67 >= v66 >> 1)
    {
      OUTLINED_FUNCTION_106(v66);
      v206 = v81;
      sub_237AC8A94();
      v64 = v206;
      v33 = v209;
    }

    v34 += 24;
    v33[2] = v67 + 1;
    v68 = &v33[3 * v67];
    *(v68 + 2) = v64;
    *(v68 + 48) = v65;
    v11 = (v11 - 1);
  }

  while (v11);
  v204 = v33;
  v11 = v200;
LABEL_33:

  v86 = sub_237B6AA54(v85, 0, v11);
  v87 = sub_237AC7AC4(MEMORY[0x277D84F90], v11);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_16_22();
  Array<A>.init(_:)(&v211);
  v88 = 0;
  v200 = *(v89 + 16);
  v199 = v89;
  v90 = (v89 + 48);
  v198 = v86;
  while (v200 != v88)
  {
    if (v88 >= *(v199 + 16))
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      OUTLINED_FUNCTION_15_28();
      goto LABEL_90;
    }

    if (!*(v86 + 16))
    {
      goto LABEL_83;
    }

    v91 = *(v90 - 2);
    v92 = *(v90 - 1);
    v93 = *v90;
    v94 = OUTLINED_FUNCTION_9_37();
    sub_2379E9288(v94, v95, v96);
    v97 = OUTLINED_FUNCTION_9_37();
    v100 = sub_237ACB180(v97, v98, v99);
    if ((v101 & 1) == 0)
    {
      goto LABEL_84;
    }

    v102 = *(*(v86 + 56) + 8 * v100);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v102 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      sub_237B05F1C(v87);
      v87 = v113;
      if ((v102 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }
    }

    if (v102 >= *(v87 + 16))
    {
      goto LABEL_86;
    }

    v11 = (v87 + 32);
    v103 = *(v87 + 32 + 8 * v102);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v87 + 32 + 8 * v102) = v103;
    *&v206 = v87;
    v217 = v88;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v114 = *(v103 + 16);
      v115 = OUTLINED_FUNCTION_7_10();
      sub_237BC0EB4(v115, v116, v117, v103);
      v103 = v118;
      v11[v102] = v118;
    }

    v106 = *(v103 + 16);
    v105 = *(v103 + 24);
    if (v106 >= v105 >> 1)
    {
      v119 = OUTLINED_FUNCTION_106(v105);
      sub_237BC0EB4(v119, v106 + 1, 1, v103);
      v11[v102] = v120;
    }

    v107 = OUTLINED_FUNCTION_9_37();
    sub_2379E8CE8(v107, v108, v109);
    v110 = v11[v102];
    *(v110 + 16) = v106 + 1;
    v111 = v110 + 8 * v106;
    v112 = v217;
    *(v111 + 32) = v217;
    v90 += 24;
    v88 = v112 + 1;
    v86 = v198;
    v87 = v206;
  }

  OUTLINED_FUNCTION_24_22();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  *(inited + 32) = v86;
  *(inited + 40) = 0xE700000000000000;
  *&v207 = v87;
  MEMORY[0x28223BE20](inited);
  OUTLINED_FUNCTION_11_33();
  *(v122 - 16) = &v207;

  v123 = sub_237BBDC94(sub_237B06088);
  v125 = v124;

  *(inited + 48) = v123;
  *(inited + 56) = v125 & 1;
  v127 = v196;
  *(inited + 64) = v197;
  *(inited + 72) = v127;
  *&v207 = v204;
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_11_33();
  *(v128 - 16) = &v207;

  v129 = sub_237BBDC94(sub_237B060A8);
  v131 = v130;

  *(inited + 80) = v129;
  *(inited + 88) = v131 & 1;
  v132 = *(&v202 + 1);
  *(inited + 96) = v202;
  *(inited + 104) = v132;
  *&v207 = v191;
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_11_33();
  *(v133 - 16) = &v207;

  v134 = sub_237BBDC94(sub_237B0629C);
  v136 = v135;

  *(inited + 112) = v134;
  *(inited + 120) = v136 & 1;
  v137 = sub_237C085AC();
  v138 = v201;
  sub_237B6CB9C(v137, &v207);
  if (v138)
  {
    sub_2379DBC9C(v215, v216);

    return;
  }

  *&v206 = v87;
  v139 = v207;
  v140 = BYTE8(v207);
  v213 = v207;
  v214 = BYTE8(v207);
  MLDataTable.stratifiedSplit<A>(proportions:on:generator:)(v193, v197, v127, v194, v195, v190, &v207);
  v201 = v207;
  LODWORD(v217) = BYTE8(v207);
  OUTLINED_FUNCTION_3_51();
  v141 = v213;
  v142 = v214;
  if (v214)
  {
    v143 = -1;
  }

  else
  {
    v144 = v213[2];

    v143 = sub_237A2F128();
    sub_2379DBC9C(v141, 0);
  }

  OUTLINED_FUNCTION_24_22();
  sub_2379DBC9C(v141, v142);
  v145 = sub_237AC7A20(0, v143);
  *&v207 = v201;
  BYTE8(v207) = v217;
  MLDataTable.subscript.getter();
  v11 = v213;
  if (v214 == 1)
  {
    goto LABEL_92;
  }

  v146 = v213[2];

  v147 = sub_237A2F128();
  sub_2379DBC9C(v11, 0);
  sub_2379DBC9C(v11, 0);
  if (v147 < 0)
  {
LABEL_93:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  LODWORD(v202) = v140;
  *(&v202 + 1) = v139;
  if (!v147)
  {
    goto LABEL_75;
  }

  v148 = 0;
  while (2)
  {
    v213 = v201;
    v214 = v217;
    MLDataTable.subscript.getter();
    if (v212)
    {
      goto LABEL_89;
    }

    v149 = v147;
    v150 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v150, v151);
    sub_237A607E0(v148, &v207);
    v152 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v152, v153);
    v154 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v154, v155);
    if (v208 != 3)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v205 = v148 + 1;
    v203 = *(&v207 + 1);
    v11 = v207;

    for (i = 0; i != sub_237A2E9F4(); ++i)
    {
      v157 = sub_237A2E9C8(i);
      sub_237AFC548(v157, &v207);
      v158 = v207;
      v159 = v208;
      if (i >= sub_237A2E9F4())
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v159)
      {
        goto LABEL_87;
      }

      sub_2379DF794(v201, v217, &v213);
      if (v214)
      {
        OUTLINED_FUNCTION_15_28();
        goto LABEL_67;
      }

      v160 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v160, v161);
      sub_237A607E0(v148, &v207);
      v162 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v162, v163);
      v164 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v164, v165);
      v166 = v207;
      if (v208)
      {
        sub_2379E8CE8(v207, *(&v207 + 1), v208);
LABEL_67:
        v166 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_68;
        }

        goto LABEL_72;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_68:
        if ((v158 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }

        goto LABEL_69;
      }

LABEL_72:
      sub_237B05F04(v145);
      v145 = v167;
      if ((v158 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

LABEL_69:
      if (v158 >= *(v145 + 16))
      {
        goto LABEL_81;
      }

      *(v145 + 8 * v158 + 32) = v166;
    }

    sub_2379E8CE8(v11, v203, 3);

    v148 = v205;
    v147 = v149;
    if (v205 != v149)
    {
      continue;
    }

    break;
  }

LABEL_75:

  *&v207 = v145;
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_17_14();
  *(v169 - 16) = &v207;
  v170 = sub_237BBDC94(sub_237B060C8);
  v172 = v171;

  sub_237B6C670(v173, v174, v175, v176, v177, v178, v179, v180, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, *(&v202 + 1), v203, v204, v205, v206, *(&v206 + 1));
  *&v207 = v170;
  BYTE8(v207) = v172 & 1;
  OUTLINED_FUNCTION_20_21();
  sub_237B6C9CC();
  sub_2379DBC9C(v207, SBYTE8(v207));
  v181 = v215;
  v182 = v216;
  if (v216)
  {
    v183 = v215;
  }

  else
  {
    v184 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v184, v185);
    sub_237B6C588();
  }

  v186 = *(&v202 + 1);
  v187 = v202;
  sub_2379DBC9C(v201, v217);
  sub_2379DBC9C(v186, v187);
  sub_2379DBC9C(v181, v182);
  v188 = v192;
  *v192 = v181;
  *(v188 + 8) = v182;
}

void sub_237B05B68()
{
  v3 = v1[1];
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v3)
  {
    v2 = v1[2];
    v0 = v1[13];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_20;
    }

    while (v3 <= *(v0 + 16))
    {
      v4 = 0;
      v5 = v0 + 32;
      while (1)
      {
        v6 = v4 + 1;
        v7 = (v4 + 1) % v3;
        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }

        v8 = *(v0 + 16);
        if (v7 >= v8)
        {
          goto LABEL_16;
        }

        v9 = v0 + 8 * v4;
        v10 = *(v5 + 8 * v7) % v3;
        v11 = (v10 & 0xFFFFFFFE | (*(v9 + 36) << 32)) >> 1;
        if (v10)
        {
          v11 ^= v1[4];
        }

        v12 = __OFADD__(v4, v2);
        v13 = v4 + v2;
        if (v12)
        {
          goto LABEL_17;
        }

        v14 = v13 % v3;
        if (v14 >= v8)
        {
          goto LABEL_18;
        }

        *(v9 + 32) = *(v5 + 8 * v14) ^ v11;
        v4 = v6;
        if (v3 == v6)
        {
          v1[13] = v0;
          v1[14] = 0;
          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_237B05EF0(v0);
      v0 = v15;
    }

    __break(1u);
  }
}

Swift::Int __swiftcall timestampSeed()()
{
  v0 = sub_237C05BFC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C05BEC();
  sub_237C05BDC();
  v9 = v8;
  result = (*(v3 + 8))(v7, v0);
  v11 = v9 * 1000.0;
  if (COERCE__INT64(fabs(v9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 < 9.22337204e18)
  {
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237B05E18(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for _UntypedColumn();
  swift_allocObject();

  return a2(v3);
}

void sub_237B05E78(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_237AC8A94();
  }
}

uint64_t sub_237B05F80(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_237C090EC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_237C08F6C();
}

uint64_t sub_237B0602C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_237B05E18(*a1, a3);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_237B060E8()
{
  result = qword_27DE9CD90;
  if (!qword_27DE9CD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AEC8, &qword_237C0C2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CD90);
  }

  return result;
}

unint64_t sub_237B06164()
{
  result = qword_27DE9CD98;
  if (!qword_27DE9CD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B150, &unk_237C152C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CD98);
  }

  return result;
}

uint64_t sub_237B061E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_237B06228(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_3_51()
{
  *(v0 - 176) = *(v0 - 344);
  *(v0 - 168) = *(v0 - 328);
  v2 = *(v0 - 360);
  v3 = *(v0 - 352);

  MLDataTable.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_4_49@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  return sub_237B0602C(a1, a2, sub_237B02E5C, a3);
}

uint64_t OUTLINED_FUNCTION_5_43@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  return sub_237B0602C(a1, a2, sub_237B02C68, a3);
}

uint64_t OUTLINED_FUNCTION_6_43@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  return sub_237B0602C(a1, a2, sub_237B02560, a3);
}

void OUTLINED_FUNCTION_12_31()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);
  v4 = *(v0 - 284);

  sub_2379E8CE8(v2, v3, v4);
}

void OUTLINED_FUNCTION_15_28()
{

  sub_2379DBC9C(v0, 1);
}

void OUTLINED_FUNCTION_16_22()
{
  v1 = *(v0 - 112);
  *(v0 - 136) = *(v0 - 120);
  *(v0 - 128) = v1;
}

uint64_t OUTLINED_FUNCTION_17_21()
{
  result = *(v0 - 400);
  v2 = *(v0 - 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_26()
{
  result = *(v0 - 360);
  v2 = *(v0 - 352);
  return result;
}

double OUTLINED_FUNCTION_19_26(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_23(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_20()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0xE000000000000000;

  return sub_237C08EDC();
}

void sub_237B064E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a4)
  {
    v12 = MEMORY[0x2383DDAC0](0);
    if (!v12)
    {
LABEL_67:
      __break(1u);
      return;
    }

    v13 = v12;
    type metadata accessor for CMLSequence();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = 1;
  }

  else
  {
    sub_2379DBCF4(a3, 0);
    sub_237B6C208(&v110);
    sub_2379DBC9C(a3, 0);
  }

  v99 = a5;
  v100 = a6;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_52();
  v16 = sub_237AC1AB8(sub_2379F345C);
  v17 = v7;

  if ((v16 & 1) == 0)
  {
    sub_2379E8AF0();
    swift_allocError();
    *v79 = 0xD000000000000022;
    *(v79 + 8) = 0x8000000237C1BBE0;
    *(v79 + 16) = 0u;
    *(v79 + 32) = 0u;
    *(v79 + 48) = 0;
    swift_willThrow();
    return;
  }

  v18 = a3;
  v110 = a3;
  v111 = a4 & 1;
  MLDataTable.subscript.getter();
  v106 = v108;
  v107 = v109;
  MLUntypedColumn.dropDuplicates()(&v99);
  sub_2379DBC9C(v106, v107);
  v110 = v99;
  v111 = v100;
  Array<A>.init(_:)(&v110);
  v20 = v19;
  v99 = a3;
  LOBYTE(v100) = a4 & 1;
  v21 = MLDataTable.size.getter();
  if (v21 < 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  HIDWORD(v92) = a4;
  v93 = a5;
  v82 = a7;
  v22 = sub_2379DFF68(0, v21);
  v110 = a3;
  v111 = a4 & 1;
  v99 = a3;
  LOBYTE(v100) = a4 & 1;
  sub_2379DBCF4(a3, a4 & 1);
  v23 = MLDataTable.size.getter();
  v24 = sub_237AC7A20(0, v23);
  v86 = *(v20 + 16);
  if (v86)
  {
    v25 = 0;
    v87 = v20 + 32;
    v81 = (v22 + 3);
    v84 = a6;
    v85 = v20;
    v94 = v22;
    while (v25 < *(v20 + 16))
    {
      v97 = v17;
      v26 = v87 + 24 * v25;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v88 = v25 + 1;
      v106 = v18;
      v107 = BYTE4(v92) & 1;
      sub_2379E9288(v27, v28, v29);
      MLDataTable.subscript.getter();
      v30 = v94;
      v102 = v104;
      v103 = v105;
      v91 = v27;
      v99 = v27;
      v100 = v28;
      v90 = v28;
      HIDWORD(v89) = v29;
      v101 = v29;
      sub_237BBF460(&v102);
      sub_2379DBC9C(v102, v103);
      v99 = v108;
      LOBYTE(v100) = v109;
      Array<A>.init(_:)(&v99);
      v32 = v31;
      v33 = 0;
      v34 = v31 + 48;
      v35 = MEMORY[0x277D84F90];
LABEL_11:
      v36 = *(v32 + 16);
      v37 = (v34 + 24 * v33);
      while (v36 != v33)
      {
        if (v33 >= v36)
        {
          goto LABEL_62;
        }

        v38 = v37;
        v39 = *(v30 + 16);
        if (v33 == v39)
        {
          break;
        }

        if (v33 >= v39)
        {
          goto LABEL_63;
        }

        v37 = v38 + 24;
        ++v33;
        if (!*v38 && *(v38 - 2) == 1)
        {
          v40 = *(v38 - 1);
          v112 = *(v81 + 8 * v33);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v99 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v42 = v35[2];
            sub_237AC8B74();
            v30 = v94;
            v35 = v99;
          }

          v44 = v35[2];
          v43 = v35[3];
          if (v44 >= v43 >> 1)
          {
            OUTLINED_FUNCTION_4_50(v43);
            sub_237AC8B74();
            v30 = v94;
            v35 = v99;
          }

          v35[2] = v44 + 1;
          v45 = &v35[4 * v44];
          v45[4] = 1;
          v45[5] = v40;
          *(v45 + 48) = 0;
          v45[7] = v112;
          goto LABEL_11;
        }
      }

      v46 = v35[2];
      if (v46)
      {
        v99 = MEMORY[0x277D84F90];
        sub_237AC8A34();
        v47 = 0;
        v48 = v99;
        v49 = 7;
        while (v47 < v35[2])
        {
          v50 = v35[v49];
          v99 = v48;
          v52 = v48[2];
          v51 = v48[3];
          if (v52 >= v51 >> 1)
          {
            OUTLINED_FUNCTION_4_50(v51);
            sub_237AC8A34();
            v48 = v99;
          }

          ++v47;
          v48[2] = v52 + 1;
          v48[v52 + 4] = v50;
          v49 += 4;
          if (v46 == v47)
          {

            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        break;
      }

      v48 = MEMORY[0x277D84F90];
LABEL_31:
      v53 = sub_2379DFF68(0, v48[2]);
      v54 = v97;
      sub_237B3D088(v53, a1);
      v17 = v97;
      v18 = a3;
      if (v97)
      {
LABEL_60:
        sub_2379DBC9C(v110, v111);

        OUTLINED_FUNCTION_7_37();

        return;
      }

      v56 = v55;

      v112 = *(a1 + 16);
      if (v112)
      {
        v97 = 0;
        v57 = 0;
        v58 = v56 + 32;
        while (v57 < *(v56 + 16))
        {
          v59 = *(*(v58 + 8 * v57) + 16);
          if (v59)
          {
            v60 = 0;
            while (1)
            {
              v61 = *(v58 + 8 * v57);
              if (v60 >= *(v61 + 16))
              {
                break;
              }

              v62 = *(v61 + 8 * v60 + 32);
              if ((v62 & 0x8000000000000000) != 0)
              {
                goto LABEL_56;
              }

              if (v62 >= v48[2])
              {
                goto LABEL_57;
              }

              v63 = v48[v62 + 4];
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if ((v63 & 0x8000000000000000) != 0)
                {
                  goto LABEL_58;
                }
              }

              else
              {
                sub_237B05F04(v24);
                v24 = v64;
                if ((v63 & 0x8000000000000000) != 0)
                {
                  goto LABEL_58;
                }
              }

              if (v63 >= v24[2])
              {
                goto LABEL_59;
              }

              ++v60;
              v24[v63 + 4] = v57;
              if (v59 == v60)
              {
                goto LABEL_47;
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

LABEL_47:
          if (++v57 == v112)
          {

            v17 = v54;
            v18 = a3;
            goto LABEL_50;
          }
        }

        goto LABEL_64;
      }

LABEL_50:
      OUTLINED_FUNCTION_7_37();

      v25 = v88;
      v20 = v85;
      if (v88 == v86)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

LABEL_51:

  v99 = v24;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_3_52();
  v66 = sub_237BBDC94(sub_2379F5698);
  v68 = v67;

  sub_237B6C670(v69, v70, v71, v72, v73, v74, v75, v76, v80, v81, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, a1, a2, v97, a3, v99, v100);
  v99 = v66;
  LOBYTE(v100) = v68 & 1;
  sub_237B6C9CC();
  sub_2379DBC9C(v99, v100);
  v77 = v111;
  v78 = v110;
  if ((v111 & 1) == 0)
  {
    sub_2379DBCF4(v110, 0);
    sub_237B6C588();
    sub_2379DBC9C(v78, 0);
  }

  *v83 = v78;
  *(v83 + 8) = v77;
}

void MLTextClassifier.DataSource.diagnose()()
{
  v99 = type metadata accessor for DataSourceIssue();
  v1 = OUTLINED_FUNCTION_0(v99);
  v98 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v5);
  v103 = &v75 - v6;
  v7 = sub_237C0873C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_2_0();
  v96 = v10 - v9;
  v85 = sub_237C0825C();
  v11 = OUTLINED_FUNCTION_0(v85);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = sub_237C05ADC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  v28 = &v75 - v27;
  v29 = type metadata accessor for MLTextClassifier.DataSource();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  sub_237A8E880(v0, v32 - v31);
  v34 = v22;
  (*(v22 + 4))(v28, v33, v19);
  sub_237A5CD94();
  v86 = *(v35 + 16);
  v75 = v28;
  if (v86)
  {
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B288, &qword_237C137F0);
  v36 = v22;
  v37 = *(v22 + 9);
  v38 = (v22[80] + 32) & ~v22[80];
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_237C0B660;
  v40 = v39 + v38;
  v41 = v39;
  (*(v34 + 2))(v40, v28, v19);
  v86 = *(v41 + 16);
  v35 = v41;
  if (v86)
  {
LABEL_3:
    v42 = 0;
    v43 = v34;
    v76 = (v34[80] + 32) & ~v34[80];
    v84 = v35 + v76;
    v83 = (v13 + 8);
    v94 = 0x8000000237C1BC10;
    v93 = "incorrectTextEncoding";
    v107 = (v34 + 8);
    v79 = 0x8000000237C1BC60;
    v78 = "noExamplesForLabel";
    v44 = MEMORY[0x277D84F90];
    v45 = v35;
    v77 = xmmword_237C0B660;
    v82 = v34;
    v81 = v18;
    v105 = (v34 + 16);
    v80 = v35;
    while (1)
    {
      if (v42 >= *(v45 + 16))
      {
        __break(1u);
        return;
      }

      v46 = v44;
      v102 = *(v43 + 9);
      v101 = *(v43 + 2);
      v101(v92, v84 + v102 * v42, v19);
      sub_237C081FC();
      sub_237A5D3A4();
      v48 = v47;
      (*v83)(v18, v85);
      v49 = *(v48 + 16);
      v50 = v101;
      v91 = v42;
      if (v49)
      {
        break;
      }

      v57 = sub_237C059DC();
      v59 = v58;
      v108 = 0;
      v109 = 0xE000000000000000;
      sub_237C08EDC();

      v108 = 0x22206C6562614CLL;
      v109 = 0xE700000000000000;
      MEMORY[0x2383DC360](v57, v59);
      MEMORY[0x2383DC360](0xD000000000000012, v78 | 0x8000000000000000);
      v106 = v108;
      v104 = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDA8, &qword_237C16720);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = v57;
      *(inited + 56) = v59;
      sub_237B0778C();

      v61 = sub_237C085AC();
      v62 = v99;
      v63 = v89;
      __swift_storeEnumTagSinglePayload(v89 + *(v99 + 24), 1, 1, v19);
      v64 = *(v62 + 28);
      sub_237C085AC();

      *v63 = 0xD000000000000012;
      v65 = v106;
      v63[1] = v79;
      v63[2] = v65;
      v63[3] = v104;
      *(v63 + v64) = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v46 + 16);
        sub_237BC1F0C();
        v46 = v73;
      }

      v56 = v91;
      v67 = *(v46 + 16);
      v66 = *(v46 + 24);
      v68 = v46;
      v43 = v82;
      v69 = v81;
      if (v67 >= v66 >> 1)
      {
        sub_237BC1F0C();
        v68 = v74;
      }

      v34 = *v107;
      (*v107)(v92, v19);
      *(v68 + 16) = v67 + 1;
      OUTLINED_FUNCTION_5_44();
      v44 = v68;
      sub_237B07BD4(v89, v68 + v70 + *(v71 + 72) * v67);
      v18 = v69;
      v45 = v80;
LABEL_16:
      v42 = v56 + 1;
      if (v42 == v86)
      {

        (v34)(v75, v19);
        return;
      }
    }

    v51 = v46;
    v90 = 0;
    v52 = 0;
    v95 = v49;
    v88 = v49 - 1;
    v53 = v48 + v76;
    v36 = v97;
    v100 = v48;
    v87 = v48 + v76;
    while (v52 < *(v48 + 16))
    {
      v106 = v52 + 1;
      v104 = v53 + v102 * v52;
      v50(v36);
      sub_237C0872C();
      sub_237C086AC();

      v54 = OUTLINED_FUNCTION_8_34();
      (v34)(v54);
      v90 = 1;
      v55 = v88 == v52;
      v48 = v100;
      v53 = v87;
      v52 = v106;
      if (v55)
      {
        v44 = v51;

        (v34)(v92, v19);
        v43 = v82;
        v18 = v81;
        v45 = v80;
        v56 = v91;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  (*(v36 + 1))(v75, v19);
}

uint64_t type metadata accessor for MLTextClassifier.DataSource()
{
  result = qword_27DE9CDB0;
  if (!qword_27DE9CDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_237B0778C()
{
  result = qword_27DE9CDA0;
  if (!qword_27DE9CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CDA0);
  }

  return result;
}

uint64_t MLTextClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:textColumn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = v7;
  result = sub_237A8E3B4(v9);
  if (!v8)
  {
    sub_237B078E8(result, a5, a6, a3, a4, &v22);

    v18 = v22;
    v19 = v23;
    sub_237B03618(a2, __src);
    sub_237B064E0(a1, __src, v18, v19, a3, a4, a7);
    sub_2379DBC9C(v18, v19);
    memcpy(__dst, __src, sizeof(__dst));
    return sub_237B07C38(__dst);
  }

  return result;
}

void sub_237B078E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_237B45F18(a1);
  v42 = v9;
  sub_237B4A484();
  v10 = v42;
  v11 = *(v42 + 16);
  if (v11)
  {
    v37 = a3;
    v38 = a6;
    v42 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v12 = v42;
    v39 = v10;
    v13 = (v10 + 40);
    v14 = v11;
    do
    {
      v16 = *(v13 - 1);
      v15 = *v13;
      v42 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);

      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_6_44();
        v12 = v42;
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v13 += 4;
      --v14;
    }

    while (v14);
    v42 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v20 = v42;
    v21 = (v39 + 56);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v42 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);

      if (v25 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_6_44();
        v20 = v42;
      }

      *(v20 + 16) = v25 + 1;
      v26 = v20 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      v21 += 4;
      --v11;
    }

    while (v11);

    a3 = v37;
    a6 = v38;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B670;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  v42 = v12;
  MEMORY[0x28223BE20](inited);

  v28 = sub_237BBDC94(sub_2379F5678);
  v30 = v29;

  *(inited + 48) = v28;
  *(inited + 56) = v30 & 1;
  *(inited + 64) = a4;
  *(inited + 72) = a5;
  v42 = v20;
  MEMORY[0x28223BE20](a5);

  v31 = sub_237BBDC94(sub_2379F57A0);
  v33 = v32;

  *(inited + 80) = v31;
  *(inited + 88) = v33 & 1;
  v34 = sub_237C085AC();
  v35 = v44;
  sub_237B6CB9C(v34, &v42);
  if (!v35)
  {
    v36 = v43;
    *a6 = v42;
    *(a6 + 8) = v36;
  }
}

uint64_t sub_237B07BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSourceIssue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_6_44()
{

  sub_237AC8A74();
}

void OUTLINED_FUNCTION_7_37()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 264);
  v4 = *(v0 - 268);

  sub_2379E8CE8(v2, v3, v4);
}

uint64_t sub_237B07D30(uint64_t a1)
{
  v3 = _s20PersistentParametersVMa_3();
  OUTLINED_FUNCTION_13_26(v3);
  sub_237C05DAC();
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_13_26(v4);
  v5 = _s9RegressorVMa();
  OUTLINED_FUNCTION_13_26(v5);
  v6 = _s5ModelVMa_2();
  OUTLINED_FUNCTION_13_26(v6);
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
  *(v7 + 16) = -1;
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
  *(v8 + 16) = v9;
  OUTLINED_FUNCTION_11_34();
  sub_237B0B17C(a1, v10, v11);
  return v1;
}

uint64_t sub_237B07DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v72 = a7;
  v69 = a2;
  v70 = a6;
  v67[1] = *v7;
  v68 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = v67 - v15;
  v17 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  v18 = _s20PersistentParametersVMa_3();
  v67[0] = v17;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  sub_237C05DAC();
  v22 = sub_237C05DBC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  _s9RegressorVMa();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  _s5ModelVMa_2();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
  *(v34 + 16) = -1;
  OUTLINED_FUNCTION_34_12(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
  *(v35 + 16) = v36;
  v37 = a1;
  v38 = a1;
  v39 = a3;
  v40 = a3;
  v41 = v68;
  v42 = v71;
  sub_237B19700(v38, v40, v68, a5);
  v71 = v42;
  if (v42)
  {

    OUTLINED_FUNCTION_12_32();
    sub_237B0B124(v72, v44);
    sub_237A68B6C(v70);
    sub_2379D9054(v69, &qword_27DE9A9A0, &qword_237C0BF60);
    v45 = *(*(v22 - 8) + 8);
    v45(v37, v22);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, &qword_27DE9CE00, &qword_237C15080);
    v45(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData, v22);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, &qword_27DE9CDF0, &qword_237C12E38);
    sub_2379D9054(v7 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model, &qword_27DE9CDE8, &qword_237C12E30);
    v46 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
    sub_237B0B0B0(v46, v47, v48);
    v49 = OUTLINED_FUNCTION_17_22(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
    sub_237B0B0B0(v49, v50, v51);
    v52 = *(*v7 + 48);
    v53 = *(*v7 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v54 = v43;

    (*(*(v22 - 8) + 32))(v16, v37, v22);
    v55 = v18[5];
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v22);
    sub_2379E8FDC(v69, &v16[v55], &qword_27DE9A9A0, &qword_237C0BF60);
    v59 = &v16[v18[6]];
    *v59 = v39;
    *(v59 + 1) = v41;
    *&v16[v18[7]] = v54;
    memcpy(&v16[v18[8]], v70, 0x49uLL);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v18);
    v63 = v67[0];
    swift_beginAccess();
    sub_2379E8FDC(v16, v7 + v63, &qword_27DE9CE00, &qword_237C15080);
    swift_endAccess();
    OUTLINED_FUNCTION_11_34();
    sub_237B0B17C(v72, v64, v65);
  }

  return v7;
}

void sub_237B08208()
{
  OUTLINED_FUNCTION_74();
  v70 = v1;
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDE8, &qword_237C12E30);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77_0(&v69 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  v9 = OUTLINED_FUNCTION_0(v8);
  v72 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDF0, &qword_237C12E38);
  v17 = OUTLINED_FUNCTION_20(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v75 = (v20 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = (&v69 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v30 = &v69 - v29;
  v31 = _s20PersistentParametersVMa_3();
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_0();
  v37 = v36 - v35;
  v38 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v2 + v38, v30, &qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_73_1(v30, 1, v31);
  if (v39)
  {
    sub_2379D9054(v30, &qword_27DE9CE00, &qword_237C15080);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_59();
    sub_237B0B17C(v30, v37, v40);
    v41 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
    OUTLINED_FUNCTION_10_35();
    v42 = sub_237C05DBC();
    OUTLINED_FUNCTION_4(v42);
    (*(v43 + 24))(v2 + v41, v37);
    swift_endAccess();
    v44 = v31[5];
    v45 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
    OUTLINED_FUNCTION_10_35();
    sub_237A6EE90(v37 + v44, v2 + v45);
    swift_endAccess();
    v46 = (v37 + v31[6]);
    v47 = *v46;
    v48 = v46[1];
    v49 = *(v37 + v31[7]);
    sub_237B0B0C8(v37 + v31[8], v74);
    *v24 = v47;
    v24[1] = v48;
    v24[2] = v49;
    sub_237B0B0C8(v74, (v24 + 3));
    sub_237B0B0C8(v74, v73);
    sub_237A20BBC();

    sub_237C06C3C();
    sub_237C06BEC();
    sub_237C06C1C();
    sub_237C06C2C();
    sub_237C06C0C();
    sub_237C06BFC();
    sub_237A68B6C(v73);
    v50 = v72;
    (*(v72 + 16))(v71, v15, v8);
    v51 = _s9RegressorVMa();
    v52 = v24 + *(v51 + 28);
    sub_237C06E5C();
    (*(v50 + 8))(v15, v8);
    sub_237A68B6C(v74);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v51);
    v56 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
    OUTLINED_FUNCTION_10_35();
    sub_2379E8FDC(v24, v2 + v56, &qword_27DE9CDF0, &qword_237C12E38);
    swift_endAccess();
    sub_2379E9068(v2 + v56, v75, &qword_27DE9CDF0, &qword_237C12E38);
    OUTLINED_FUNCTION_73_1(v75, 1, v51);
    if (!v39)
    {
      v57 = *v75;
      v58 = v75[1];
      v59 = *(v51 + 28);
      v60 = _s5ModelVMa_2();
      v61 = *(v60 + 24);

      v62 = v69;
      sub_237C06E6C();
      OUTLINED_FUNCTION_3_53();
      sub_237B0B124(v37, v63);
      *v62 = v57;
      v62[1] = v58;
      v62[3] = 0;
      v62[4] = 0;
      v62[2] = 0;
      OUTLINED_FUNCTION_1_57();
      sub_237B0B124(v75, v64);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v60);
      v68 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_10_35();
      sub_2379E8FDC(v62, v2 + v68, &qword_27DE9CDE8, &qword_237C12E30);
      swift_endAccess();
      OUTLINED_FUNCTION_73();
      return;
    }
  }

  __break(1u);
}

void sub_237B08738()
{
  OUTLINED_FUNCTION_74();
  v85 = v1;
  v96 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDE8, &qword_237C12E30);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77_0(&v84 - v7);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  v8 = OUTLINED_FUNCTION_0(v91);
  v90 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0(&v84 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDF0, &qword_237C12E38);
  v15 = OUTLINED_FUNCTION_20(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0(&v84 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - v24;
  v26 = type metadata accessor for MLCheckpoint();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v31 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v37 = &v84 - v36;
  v38 = _s20PersistentParametersVMa_3();
  v39 = OUTLINED_FUNCTION_4(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_0();
  v44 = v43 - v42;
  v45 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v46 = v0 + v45;
  v47 = v0;
  sub_2379E9068(v46, v37, &qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_73_1(v37, 1, v38);
  if (v48)
  {
    sub_2379D9054(v37, &qword_27DE9CE00, &qword_237C15080);
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_0_59();
  sub_237B0B17C(v37, v44, v49);
  sub_237A9A92C(v96, v25);
  OUTLINED_FUNCTION_73_1(v25, 1, v26);
  if (v48)
  {
    sub_2379D9054(v25, &qword_27DE9B8E8, &qword_237C0EBF0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_18_4(v50, 0xD00000000000001DLL);
LABEL_13:
    OUTLINED_FUNCTION_3_53();
    sub_237B0B124(v44, v83);
    goto LABEL_14;
  }

  v51 = v93;
  sub_237B0B17C(v25, v93, type metadata accessor for MLCheckpoint);
  switch(*(v51 + *(v26 + 20)))
  {
    case 2:

      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_60_0();
      goto LABEL_8;
    default:
LABEL_8:
      OUTLINED_FUNCTION_57_0();
      v52 = sub_237C0929C();

      if ((v52 & 1) == 0)
      {
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_18_4(v82, 0xD000000000000027);
        OUTLINED_FUNCTION_14_25();
        goto LABEL_13;
      }

LABEL_9:
      v53 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_10_35();
      v54 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v54);
      (*(v55 + 24))(v0 + v53, v44);
      swift_endAccess();
      v56 = v38[5];
      v57 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
      OUTLINED_FUNCTION_10_35();
      sub_237A6EE90(v44 + v56, v0 + v57);
      swift_endAccess();
      v58 = (v44 + v38[6]);
      v60 = *v58;
      v59 = v58[1];
      v61 = *(v44 + v38[7]);
      sub_237B0B0C8(v44 + v38[8], v95);
      v62 = v89;
      *v89 = v60;
      *(v62 + 8) = v59;
      *(v62 + 16) = v61;
      sub_237B0B0C8(v95, v62 + 24);
      sub_237B0B0C8(v95, v94);
      sub_237A20BBC();

      v63 = v87;
      sub_237C06C3C();
      v64 = v91;
      sub_237C06BEC();
      sub_237C06C1C();
      sub_237C06C2C();
      sub_237C06C0C();
      sub_237C06BFC();
      sub_237A68B6C(v94);
      v65 = v90;
      (*(v90 + 16))(v88, v63, v64);
      v66 = _s9RegressorVMa();
      v67 = v62 + *(v66 + 28);
      sub_237C06E5C();
      (*(v65 + 8))(v63, v64);
      sub_237A68B6C(v95);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v66);
      v71 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
      OUTLINED_FUNCTION_10_35();
      sub_2379E8FDC(v62, v47 + v71, &qword_27DE9CDF0, &qword_237C12E38);
      swift_endAccess();
      v72 = v92;
      sub_2379E9068(v47 + v71, v92, &qword_27DE9CDF0, &qword_237C12E38);
      OUTLINED_FUNCTION_73_1(v72, 1, v66);
      if (v48)
      {
LABEL_16:
        __break(1u);
        JUMPOUT(0x237B08EA4);
      }

      sub_237B0B058();
      v73 = v86;
      v74 = v85;
      sub_237C0723C();
      OUTLINED_FUNCTION_14_25();
      OUTLINED_FUNCTION_3_53();
      sub_237B0B124(v44, v75);
      OUTLINED_FUNCTION_1_57();
      sub_237B0B124(v72, v76);
      if (!v74)
      {
        _s5ModelVMa_2();
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
        v81 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
        OUTLINED_FUNCTION_10_35();
        sub_2379E8FDC(v73, v47 + v81, &qword_27DE9CDE8, &qword_237C12E30);
        swift_endAccess();
      }

LABEL_14:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237B08EB8(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters;
  return *(v3 + *(type metadata accessor for MLTrainingSessionParameters() + 28));
}

uint64_t sub_237B08F0C(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_237C06A4C();
  v2[16] = v3;
  OUTLINED_FUNCTION_1(v3);
  v2[17] = v4;
  v6 = *(v5 + 64);
  v2[18] = OUTLINED_FUNCTION_19();
  v7 = sub_237C05DBC();
  v2[19] = v7;
  OUTLINED_FUNCTION_1(v7);
  v2[20] = v8;
  v10 = *(v9 + 64);
  v2[21] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDF0, &qword_237C12E38);
  OUTLINED_FUNCTION_20(v11);
  v13 = *(v12 + 64);
  v2[22] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v14);
  v16 = *(v15 + 64);
  v2[23] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_237B0905C()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v2 + v3, v1, &qword_27DE9CE00, &qword_237C15080);
  _s20PersistentParametersVMa_3();
  v4 = OUTLINED_FUNCTION_20_22();
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v4, v5, v6);
  result = sub_2379D9054(v1, &qword_27DE9CE00, &qword_237C15080);
  if (v2 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v0[14];
  v9 = v0[15] + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters;
  result = type metadata accessor for MLTrainingSessionParameters();
  v10 = *(v9 + *(result + 20));
  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = *(v9 + *(result + 28));
  if (__OFSUB__(v12, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (v10 >= v12 - v8)
  {
    v13 = v12 - v8;
  }

  else
  {
    v13 = *(v9 + *(result + 20));
  }

  type metadata accessor for EventCollector();
  swift_allocObject();
  result = sub_237AD988C();
  v53 = v13;
  if (v13 < 0)
  {
    goto LABEL_25;
  }

  v14 = result;
  v49 = v12;
  v50 = v11;
  v15 = v0[20];
  v16 = v0[15];
  v17 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
  v18 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
  v52 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v51 = v17;
  OUTLINED_FUNCTION_71();
  result = swift_beginAccess();
  v19 = 0;
  v20 = (v15 + 16);
  v21 = (v15 + 8);
  while (v53 != v19)
  {
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_2379E9068(v16 + v52, v0[22], &qword_27DE9CDF0, &qword_237C12E38);
    _s9RegressorVMa();
    v22 = OUTLINED_FUNCTION_20_22();
    result = __swift_getEnumTagSinglePayload(v22, v23, v24);
    if (result == 1)
    {
      goto LABEL_26;
    }

    (*v20)(v0[21], v16 + v51, v0[19]);
    swift_beginAccess();
    v25 = _s5ModelVMa_2();
    result = __swift_getEnumTagSinglePayload(v16 + v18, 1, v25);
    if (result == 1)
    {
      goto LABEL_27;
    }

    v27 = v0[21];
    v26 = v0[22];

    sub_237B72B94((v16 + v18), v27, sub_237AFC198, v14);
    v29 = v0[21];
    v28 = v0[22];
    v30 = v0[19];
    swift_endAccess();

    (*v21)(v29, v30);
    OUTLINED_FUNCTION_1_57();
    result = sub_237B0B124(v28, v31);
    ++v19;
  }

  v32 = v0[17];
  v33 = v0[18];
  v34 = v0[16];
  v54 = MEMORY[0x277D84F98];
  sub_237C06A3C();
  sub_237B1A15C();
  v36 = v35;
  v37 = *(v32 + 8);
  v37(v33, v34);
  if ((v36 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_11();
    sub_237B19FFC(v38, 8);
  }

  v39 = v0[18];
  v40 = v0[16];
  sub_237C069FC();
  sub_237B1A15C();
  v42 = v41;
  v37(v39, v40);
  if ((v42 & 1) == 0)
  {
    OUTLINED_FUNCTION_36_11();
    sub_237B19FFC(v43, 7);
  }

  v45 = v0[22];
  v44 = v0[23];
  v46 = v0[21];
  v47 = v0[18];

  v48 = v0[1];

  return v48(v53, v54, v50 >= v49);
}

uint64_t sub_237B094EC()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  v1[26] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v1[27] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[28] = v6;
  v8 = *(v7 + 64);
  v1[29] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B818, &qword_237C0DFE0);
  v1[30] = v9;
  OUTLINED_FUNCTION_1(v9);
  v1[31] = v10;
  v12 = *(v11 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDE8, &qword_237C12E30);
  OUTLINED_FUNCTION_20(v13);
  v15 = *(v14 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v16 = sub_237C05DBC();
  v1[38] = v16;
  OUTLINED_FUNCTION_1(v16);
  v1[39] = v17;
  v19 = *(v18 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_237B0970C()
{
  v1 = v0[25] + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v2 = _s20PersistentParametersVMa_3();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = 0;
  if (!EnumTagSinglePayload)
  {
    v17 = v0[37];
    v18 = v0[25];
    v19 = (v1 + *(v2 + 24));
    v20 = v19[1];
    v100 = *v19;
    v21 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v97 = v18;
    sub_2379E9068(v18 + v21, v17, &qword_27DE9CDE8, &qword_237C12E30);
    _s5ModelVMa_2();
    v22 = OUTLINED_FUNCTION_20_22();
    v94 = v23;
    result = __swift_getEnumTagSinglePayload(v22, v24, v23);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v25 = v0[42];
      v26 = v0[43];
      v27 = v0[38];
      v28 = v0[39];
      v29 = v0[37];
      v30 = v0[25];
      v31 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      (*(v28 + 16))(v25, v30 + v31, v27);

      OUTLINED_FUNCTION_11();
      sub_237AAA8FC(v32);
      v78 = v21;
      v33 = v0[43];
      v34 = v0[37];
      v82 = v0[35];
      v84 = v0[34];
      v35 = v0[29];
      v36 = v0[28];
      v81 = v0[27];
      v37 = v0[26];
      v89 = v37;
      v91 = v0[38];
      v87 = v0[25];
      v93 = (v0[39] + 8);
      v80 = *v93;
      (*v93)(v0[42]);
      OUTLINED_FUNCTION_2_57();
      sub_237B0B124(v34, v38);
      sub_237C05DEC();
      v0[17] = 0;
      sub_2379D9224(&qword_27DE9B820, &qword_27DE9AB88, &qword_237C0B8F0);
      sub_237C05EAC();
      v39 = *(v36 + 8);
      v39(v35, v81);
      swift_beginAccess();
      sub_237C05DEC();
      swift_endAccess();
      v0[18] = 0;
      sub_237C05EAC();
      v77 = v39;
      v39(v35, v81);
      sub_237A48144();
      sub_2379D9224(&qword_27DE9B838, &qword_27DE9B818, &qword_237C0DFE0);
      OUTLINED_FUNCTION_23_24();
      sub_237C06EDC();
      v40 = v0[19];
      OUTLINED_FUNCTION_23_24();
      sub_237C06EEC();
      v41 = v0[20];
      v42 = v87 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics;
      v43 = *(v87 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
      v44 = *(v87 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 8);
      *v42 = v40;
      *(v42 + 8) = v41;
      v45 = *(v42 + 16);
      *(v42 + 16) = 0;
      sub_237B0B0B0(v43, v44, v45);
      v46 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_2379E9068(v87 + v46, v89, &qword_27DE9A9A0, &qword_237C0BF60);
      if (__swift_getEnumTagSinglePayload(v89, 1, v91) == 1)
      {
        v47 = v0[43];
        v48 = v0[38];
        v50 = v0[34];
        v49 = v0[35];
        v52 = v0[30];
        v51 = v0[31];
        v54 = v0[25];
        v53 = v0[26];

        v55 = *(v51 + 8);
        v55(v50, v52);
        v55(v49, v52);
        v80(v47, v48);
        sub_2379D9054(v53, &qword_27DE9A9A0, &qword_237C0BF60);
        v56 = v54 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics;
        v57 = *(v54 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
        v58 = *(v54 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
        *v56 = 0;
        *(v56 + 8) = 0;
        LOBYTE(v55) = *(v56 + 16);
        v60 = (v56 + 16);
        v59 = v55;
        v61 = -1;
LABEL_10:
        *v60 = v61;
        sub_237B0B0B0(v57, v58, v59);
        v4 = 1;
        goto LABEL_2;
      }

      v62 = v0[36];
      (*(v0[39] + 32))(v0[41], v0[26], v0[38]);
      sub_2379E9068(v97 + v78, v62, &qword_27DE9CDE8, &qword_237C12E30);
      result = __swift_getEnumTagSinglePayload(v62, 1, v94);
      if (result != 1)
      {
        v64 = v0[40];
        v63 = v0[41];
        v65 = v0[36];
        OUTLINED_FUNCTION_11();
        sub_237AAA8FC(v66);
        v98 = v0[43];
        v95 = v0[41];
        v67 = v0[36];
        v92 = v0[35];
        v88 = v0[38];
        v90 = v0[34];
        v79 = v0[33];
        v83 = v0[32];
        v85 = v0[40];
        v86 = v0[31];
        v68 = v0[29];
        v69 = v0[30];
        v70 = v0[27];
        v102 = v0[25];
        OUTLINED_FUNCTION_2_57();
        sub_237B0B124(v71, v72);
        sub_237C05DEC();
        v0[21] = 0;
        sub_237C05EAC();
        v77(v68, v70);
        sub_237C05DEC();

        v0[22] = 0;
        sub_237C05EAC();
        v77(v68, v70);
        OUTLINED_FUNCTION_22_20();
        sub_237C06EDC();
        v73 = v0[23];
        OUTLINED_FUNCTION_22_20();
        sub_237C06EEC();
        v74 = *(v86 + 8);
        v74(v83, v69);
        v74(v79, v69);
        v80(v85, v88);
        v80(v95, v88);
        v74(v90, v69);
        v74(v92, v69);
        v80(v98, v88);
        v61 = 0;
        v75 = v0[24];
        v76 = v102 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics;
        v57 = *(v102 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
        v58 = *(v102 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
        *v76 = v73;
        *(v76 + 8) = v75;
        v60 = (v76 + 16);
        v59 = *(v76 + 16);
        goto LABEL_10;
      }
    }

    __break(1u);
    return result;
  }

LABEL_2:
  v101 = v4;
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v10 = v0[36];
  v9 = v0[37];
  v12 = v0[34];
  v11 = v0[35];
  v13 = v0[32];
  v14 = v0[33];
  v96 = v0[29];
  v99 = v0[26];

  v15 = v0[1];

  return v15(v101, 1);
}