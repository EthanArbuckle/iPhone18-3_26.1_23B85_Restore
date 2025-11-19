uint64_t sub_237B29430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_67()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_5_51(uint64_t result, uint64_t a2)
{
  *(v2 - 160) = result;
  *(v2 - 152) = a2;
  *(v2 - 176) = 0;
  *(v2 - 168) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_38()
{
  result = v0;
  v3 = *(v1 - 264);
  return result;
}

uint64_t sub_237B2955C(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D300, &qword_237C137F8);
  v8 = sub_237B2E920();
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_237B2E984(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_237B29600(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_7:
      v6[0] = v4;
      v6[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      result = sub_237B0FB44(v6);
      if (!v2 && !result)
      {
        __break(1u);
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      result = sub_237B0FB44((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (v2 || result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_7;
    }
  }

  result = sub_237C08ECC();
  if (!v2)
  {
    return v6[2];
  }

  return result;
}

uint64_t sub_237B2969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLFeatureValue();
    sub_237C08ECC();

    if (!v3)
    {
      return v10[2];
    }

    return v4;
  }

  v8 = sub_237B11A18(*(a3 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v6 = v3;
  if (v3)
  {
LABEL_8:

    return v4;
  }

  v4 = v8;
  if (v8)
  {
LABEL_11:
    type metadata accessor for CMLFeatureValue();
    swift_allocObject();
    v4 = sub_237A2E764(v4, 1);

    return v4;
  }

  __break(1u);
LABEL_7:
  v10[0] = a1;
  v10[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B11A18(*(a3 + 16), v10);
  if (v4)
  {
    goto LABEL_8;
  }

  v4 = result;
  if (result)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B297D0(uint64_t a1, uint64_t a2)
{
  v7[3] = MEMORY[0x277D837D0];
  v7[4] = &off_284AC56F0;
  v7[0] = a1;
  v7[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v7, MEMORY[0x277D837D0]);
  v3 = *v2;
  v4 = v2[1];
  type metadata accessor for CMLFeatureValue();

  v5 = sub_237A2E7CC();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t sub_237B29888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_237B297D0(a1, a2);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_237B10560(*(v5 + 16), a3);
    if (v6)
    {

      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;

      *(v3 + 16) = v7;
      return v3;
    }
  }

  __break(1u);

  swift_unexpectedError();
  type metadata accessor for _UntypedColumn();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t (*sub_237B29968())()
{
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_237B299C8(uint64_t a1)
{
  v3 = v2;
  OUTLINED_FUNCTION_32_12();
  v5 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  v6 = _s20PersistentParametersVMa_4();
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args;
    type metadata accessor for CMLParameters();
    OUTLINED_FUNCTION_103();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v1 + v9) = v10;
    v11 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
    OUTLINED_FUNCTION_8_37();
    sub_237B2EA58(a1, v1 + v11);
    v12 = v1[2];
    v13 = v1[3];

    v14 = sub_237ADFBE4(v12, v13);
    if (v3)
    {

      sub_237B2EAD0(a1, type metadata accessor for MLTrainingSessionParameters);
      v15 = v1[3];

      sub_237B2EAD0(v1 + v11, type metadata accessor for MLTrainingSessionParameters);
      sub_2379D9054(v1 + v5, &qword_27DE9D258, &unk_237C137D0);
      v16 = *(v1 + v9);

      _s23TrainingSessionDelegateCMa();
      v17 = *(*v1 + 48);
      v18 = *(*v1 + 52);
      swift_deallocPartialClassInstance();
    }

    else
    {
      v19 = v14;

      type metadata accessor for CMLModel();
      OUTLINED_FUNCTION_103();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      OUTLINED_FUNCTION_16_24();
      sub_237B2EAD0(a1, v21);
      *(v1 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v20;
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B29B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLStyleTransfer.ModelParameters();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  OUTLINED_FUNCTION_20(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_67_4();
  OUTLINED_FUNCTION_32_12();
  v17 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  v18 = _s20PersistentParametersVMa_4();
  __swift_storeEnumTagSinglePayload(v3 + v17, 1, 1, v18);
  result = MEMORY[0x2383DDB70](0);
  if (result)
  {
    v20 = result;
    v21 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args;
    type metadata accessor for CMLParameters();
    OUTLINED_FUNCTION_103();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v3 + v21) = v22;
    OUTLINED_FUNCTION_7_42();
    sub_237B2EA58(a1, v4);
    OUTLINED_FUNCTION_26_18();
    sub_237B2EA58(a2, v12);
    *(v4 + v18[5]) = *v12;
    *(v4 + v18[7]) = 4 * (*&v12[v6[8]] / 4);
    *(v4 + v18[8]) = *&v12[v6[9]];
    v23 = v6[5];
    v24 = v18[6];
    OUTLINED_FUNCTION_2_64();
    sub_237B2EA58(&v12[v25], v4 + v26);
    LOBYTE(v20) = v12[v6[10]];
    OUTLINED_FUNCTION_1_65();
    sub_237B2EAD0(v12, v27);
    *(v4 + v18[9]) = v20;
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v18);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237B2E858(v4, v3 + v17);
    swift_endAccess();
    v31 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
    OUTLINED_FUNCTION_8_37();
    sub_237B2EA58(a3, v3 + v31);
    v32 = v3[2];
    v33 = v3[3];

    v34 = sub_237ADFBE4(v32, v33);
    if (v46)
    {

      sub_237B2EAD0(a3, type metadata accessor for MLTrainingSessionParameters);
      OUTLINED_FUNCTION_1_65();
      sub_237B2EAD0(a2, v35);
      OUTLINED_FUNCTION_3_63();
      sub_237B2EAD0(a1, v36);
      v37 = v3[3];

      sub_237B2EAD0(v3 + v31, type metadata accessor for MLTrainingSessionParameters);
      sub_2379D9054(v3 + v17, &qword_27DE9D258, &unk_237C137D0);
      v38 = *(v3 + v21);

      _s23TrainingSessionDelegateCMa();
      v39 = *(*v3 + 48);
      v40 = *(*v3 + 52);
      swift_deallocPartialClassInstance();
    }

    else
    {
      v41 = v34;

      type metadata accessor for CMLModel();
      OUTLINED_FUNCTION_103();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      OUTLINED_FUNCTION_16_24();
      sub_237B2EAD0(a3, v43);
      OUTLINED_FUNCTION_1_65();
      sub_237B2EAD0(a2, v44);
      OUTLINED_FUNCTION_3_63();
      sub_237B2EAD0(a1, v45);
      *(v3 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v42;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237B29EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v23;
  a20 = v24;
  v327 = v21;
  v25 = v20;
  v343[1] = *MEMORY[0x277D85DE8];
  v26 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  v27 = OUTLINED_FUNCTION_20(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_22();
  v314 = v30;
  OUTLINED_FUNCTION_41_0();
  v31 = type metadata accessor for MLStyleTransfer.DataSource();
  v32 = OUTLINED_FUNCTION_20(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  v324 = v38;
  OUTLINED_FUNCTION_41_0();
  v330 = type metadata accessor for MLStyleTransfer.ModelParameters();
  v39 = OUTLINED_FUNCTION_4(v330);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v48 = OUTLINED_FUNCTION_20(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_138();
  v331 = v52;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_138();
  v332 = v54;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_58();
  v336 = v56;
  OUTLINED_FUNCTION_41_0();
  v304 = type metadata accessor for MLTrainingSessionParameters();
  v57 = OUTLINED_FUNCTION_4(v304);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_2_0();
  v62 = v61 - v60;
  v63 = sub_237C05ADC();
  v64 = OUTLINED_FUNCTION_0(v63);
  v340 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_138();
  v335 = v71;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_138();
  v338 = v78;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_138();
  v333 = v80;
  OUTLINED_FUNCTION_39_0();
  v82 = MEMORY[0x28223BE20](v81);
  v84 = &v293[-v83];
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_138();
  v337 = v85;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_58();
  v339 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  v89 = OUTLINED_FUNCTION_20(v88);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v92);
  v94 = &v293[-v93];
  v95 = _s20PersistentParametersVMa_4();
  v96 = OUTLINED_FUNCTION_4(v95);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_67_4();
  v99 = [objc_opt_self() defaultManager];
  v100 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_31_11();
  v308 = v100;
  sub_237B23430(v25 + v100, v94);
  v329 = v95;
  OUTLINED_FUNCTION_73_1(v94, 1, v95);
  if (v107)
  {
    sub_2379D9054(v94, &qword_27DE9D258, &unk_237C137D0);
    OUTLINED_FUNCTION_60_7();
    v101 = OUTLINED_FUNCTION_6_2();
    *v102 = 0xD000000000000061;
    v102[1] = v84;
    OUTLINED_FUNCTION_52(v101, v102);

LABEL_22:
    v193 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_73();
    return;
  }

  v334 = v99;
  OUTLINED_FUNCTION_5_52();
  sub_237B2E9FC(v94, v22);
  v103 = v25 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
  OUTLINED_FUNCTION_8_37();
  sub_237B2EA58(v103, v62);
  v104 = v336;
  sub_2379E8770(v62, v336);
  v105 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_73_1(v105, v106, v63);
  v328 = v84;
  v321 = v22;
  v302 = v25;
  if (v107)
  {
    v108 = NSTemporaryDirectory();
    sub_237C086EC();

    sub_237C059AC();

    v109 = OUTLINED_FUNCTION_21_19();
    v111 = v63;
    OUTLINED_FUNCTION_73_1(v109, v110, v63);
    if (!v107)
    {
      sub_2379D9054(v104, &qword_27DE9AA18, &qword_237C0B710);
    }
  }

  else
  {
    v111 = v63;
    (*(v340 + 32))(v339, v104, v63);
  }

  sub_237C05A1C();
  sub_237C05A9C();
  v112 = sub_237C086BC();

  v113 = v334;
  v114 = [v334 fileExistsAtPath_];

  if ((v114 & 1) == 0)
  {
    v115 = sub_237C059EC();
    v341 = 0;
    v116 = [v113 createDirectoryAtURL:v115 withIntermediateDirectories:0 attributes:0 error:&v341];

    if (!v116)
    {
      v165 = v341;
      sub_237C0593C();

      swift_willThrow();
      v166 = *(v340 + 8);
      v167 = OUTLINED_FUNCTION_23_2();
      v166(v167);
      (v166)(v339, v111);
LABEL_19:
      OUTLINED_FUNCTION_0_68();
      v164 = v321;
      goto LABEL_21;
    }

    v117 = v341;
  }

  v299 = v103;
  v118 = v333;
  sub_237C05A2C();
  v119 = v328;
  OUTLINED_FUNCTION_33_16();
  sub_237C05A3C();
  v120 = (v340 + 8);
  v121 = v111;
  v336 = *(v340 + 8);
  v336(v118, v111);
  sub_237C05A1C();
  sub_237C05A9C();
  v122 = sub_237C086BC();

  v123 = [v113 fileExistsAtPath_];

  v124 = v321;
  v125 = v335;
  if ((v123 & 1) == 0)
  {
    v126 = sub_237C059EC();
    v341 = 0;
    v127 = v334;
    v128 = [v334 createDirectoryAtURL:v126 withIntermediateDirectories:0 attributes:0 error:&v341];

    if (!v128)
    {
      v189 = v119;
      v190 = v341;
      sub_237C0593C();

      swift_willThrow();
      v191 = OUTLINED_FUNCTION_23_2();
      v192 = v336;
      (v336)(v191);
      v192(v189, v111);
      v192(v337, v111);
      v192(v339, v111);
      OUTLINED_FUNCTION_0_68();
      v164 = v124;
      goto LABEL_21;
    }

    v129 = v341;
    v121 = v111;
  }

  v303 = v120;
  v130 = v329;
  v131 = v329[6];
  v297 = v329[5];
  v132 = *(v124 + v297);
  v133 = v330;
  v134 = v330[5];
  OUTLINED_FUNCTION_2_64();
  v135 = v326;
  v298 = v137;
  sub_237B2EA58(v137, v326 + v136);
  v138 = v125;
  v139 = *(v124 + v130[7]);
  v140 = *(v124 + v130[8]);
  *(v135 + v133[6]) = 1;
  v141 = v133[10];
  *v135 = v132;
  OUTLINED_FUNCTION_31_16();
  *(v135 + v142) = v143;
  *(v135 + v133[8]) = v139;
  v144 = v133[9];
  v296 = v145;
  *(v135 + v144) = v145;
  v294 = *(v124 + v130[9]);
  *(v135 + v146) = v294;
  OUTLINED_FUNCTION_1_65();
  sub_237B2EAD0(v135, v147);
  v295 = v139;
  v326 = (4 * (v139 / 4));
  v148 = (v340 + 16);
  v149 = *(v340 + 16);
  v150 = v332;
  v151 = v328;
  v149(v332, v328, v121);
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v121);
  v155 = v124;
  v156 = v331;
  v301 = v148;
  v300 = v149;
  v149(v331, v338, v121);
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v121);
  v160 = v325;
  v161 = v327;
  MLStyleTransfer.DataSource.processImages(textelDensity:styleImageDestination:contentImagesDestination:)();
  v327 = v161;
  if (v161)
  {

    sub_2379D9054(v156, &qword_27DE9AA18, &qword_237C0B710);
    sub_2379D9054(v150, &qword_27DE9AA18, &qword_237C0B710);
    v162 = v336;
    v336(v338, v121);
    v162(v151, v121);
    v162(v337, v121);
    v162(v339, v121);
    OUTLINED_FUNCTION_0_68();
    v164 = v155;
LABEL_21:
    sub_237B2EAD0(v164, v163);
    goto LABEL_22;
  }

  v169 = (v340 + 32);
  v168 = *(v340 + 32);
  v168(v323, v160, v121);
  v170 = v322;
  v168(v322, v335, v121);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710);
  v340 = *(v171 + 48);
  v172 = v324;
  v173 = v324 + *(v171 + 64);
  OUTLINED_FUNCTION_54_4();
  v138();
  v174 = v170;
  v175 = v171;
  (v138)(v172 + v340, v174, v121);
  *v173 = 0;
  *(v173 + 8) = 0;
  OUTLINED_FUNCTION_7_42();
  v176 = v320;
  sub_237B2EA58(v172, v320);
  v177 = *(v171 + 48);
  v178 = v319;
  v168(v319, v176, v121);
  v168(v318, v176 + v177, v121);
  v179 = v327;
  sub_237B22410(&v341);
  if (v179)
  {

    v180 = OUTLINED_FUNCTION_49_6();
    v182 = *(v181 - 256);
    v183 = v178;
    v184 = v336;
    (v336)(v180);
    v184(v183, v121);
    OUTLINED_FUNCTION_3_63();
    sub_237B2EAD0(v324, v185);
    v186 = OUTLINED_FUNCTION_37_12(&a11);
    (v184)(v186);
    v187 = OUTLINED_FUNCTION_37_12(&a12);
    (v184)(v187);
    sub_2379D9054(v331, &qword_27DE9AA18, &qword_237C0B710);
    sub_2379D9054(v332, &qword_27DE9AA18, &qword_237C0B710);
    v184(v338, v121);
    v188 = OUTLINED_FUNCTION_37_12(&a17);
    (v184)(v188);
    v184(v337, v121);
    v184(v339, v121);
    goto LABEL_19;
  }

  v194 = v169;
  v327 = 0;
  v195 = OUTLINED_FUNCTION_49_6();
  v197 = *(v196 - 256);
  v198 = v336;
  (v336)(v195);
  OUTLINED_FUNCTION_3_63();
  sub_237B2EAD0(v324, v199);
  v200 = OUTLINED_FUNCTION_37_12(&a11);
  v198(v200);
  v201 = OUTLINED_FUNCTION_37_12(&a12);
  v198(v201);
  sub_2379D9054(v331, &qword_27DE9AA18, &qword_237C0B710);
  sub_2379D9054(v332, &qword_27DE9AA18, &qword_237C0B710);
  v335 = v341;
  LODWORD(v332) = v342;
  v202 = v311;
  v168(v311, v178, v121);
  v340 = v194;
  v326 = v168;
  v168(v317, v202, v121);
  v203 = *(v175 + 48);
  v204 = v321;
  v205 = v315;
  v331 = (v315 + *(v175 + 64));
  OUTLINED_FUNCTION_54_4();
  v194();
  (v194)(v205 + v203, v338, v121);
  OUTLINED_FUNCTION_7_42();
  v206 = v313;
  sub_237B2EA58(v204, v313);
  v207 = *(v175 + 48);
  v208 = v206 + *(v175 + 64);
  v209 = *v208;
  v210 = *(v208 + 8);
  (v198)(v206 + v207, v121);
  (v198)(v206, v121);
  v212 = v330;
  v211 = v331;
  *v331 = v209;
  *(v211 + 8) = v210;
  v213 = v297;
  LOBYTE(v198) = *(v204 + v297);
  v214 = v212[5];
  OUTLINED_FUNCTION_15_32();
  v215 = v316;
  v331 = v216;
  v217 = v298;
  sub_237B2EA58(v298, v216 + v316);
  *&v215[v212[6]] = 1;
  v218 = v212[10];
  *v215 = v198;
  *&v215[v212[7]] = 500;
  *&v215[v212[8]] = v295;
  *&v215[v212[9]] = v296;
  v215[v218] = v294;
  LOBYTE(v203) = *(v204 + v213);
  v219 = v212[5];
  v220 = v312;
  sub_237B2EA58(v217, &v312[v219]);
  *v220 = v203;
  OUTLINED_FUNCTION_29_13();
  v221 = &v220[v219];
  v222 = v314;
  sub_237B2E9FC(v221, v314);
  LODWORD(v209) = __swift_getEnumTagSinglePayload(v222, 1, v121);
  OUTLINED_FUNCTION_4_56();
  sub_237B2EAD0(v222, v223);
  if (v209 == 1)
  {
    v224 = v121;
    v225 = v316;
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    sub_237C05A2C();
    v226 = v217;
    v227 = v305;
    OUTLINED_FUNCTION_33_16();
    sub_237C05A3C();
    v228 = OUTLINED_FUNCTION_49_6();
    v230 = *(v229 - 256);
    (v336)(v228);
    v231 = v321;
    v232 = *(v321 + v213);
    v233 = v212[5];
    OUTLINED_FUNCTION_2_64();
    v234 = v307;
    sub_237B2EA58(v226, &v307[v233]);
    *v234 = v232;
    v235 = v306;
    v300(v306, v227, v121);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v236, v237, v238, v121);
    v239 = &v234[v233];
    v240 = v327;
    sub_237B26D60(v235);
    v327 = v240;
    if (v240)
    {

      sub_2379DBC9C(v335, v332);
      sub_2379D9054(v235, &qword_27DE9AA18, &qword_237C0B710);
      v241 = v227;
      v242 = v336;
      v336(v241, v121);
      OUTLINED_FUNCTION_3_63();
      v243 = OUTLINED_FUNCTION_30_6();
      sub_237B2EAD0(v243, v244);
      v245 = OUTLINED_FUNCTION_37_12(v343);
      v242(v245);
      (v242)(v338, v121);
      v246 = OUTLINED_FUNCTION_37_12(&a17);
      v242(v246);
      (v242)(v337, v121);
      (v242)(v339, v121);
      OUTLINED_FUNCTION_0_68();
      sub_237B2EAD0(v231, v247);
      OUTLINED_FUNCTION_4_56();
      sub_237B2EAD0(&v234[v233], v248);
      OUTLINED_FUNCTION_1_65();
      v164 = v316;
      goto LABEL_21;
    }

    sub_2379D9054(v235, &qword_27DE9AA18, &qword_237C0B710);
    OUTLINED_FUNCTION_28_15();
    sub_237B2EAD0(&v234[v233], v249);
    v250 = v121;
    v225 = v316;
    v251 = v331;
    sub_237B2EAD0(v331 + v316, v239);
    v326(v251 + v225, v227, v250);
    OUTLINED_FUNCTION_80_0();
    v224 = v250;
    __swift_storeEnumTagSinglePayload(v252, v253, v254, v250);
  }

  v255 = v335;
  OUTLINED_FUNCTION_7_42();
  v256 = v315;
  v257 = v309;
  sub_237B2EA58(v315, v309);
  OUTLINED_FUNCTION_26_18();
  v258 = v310;
  sub_237B2EA58(v225, v310);
  v259 = v329;
  *(v257 + v329[5]) = *v258;
  v260 = v330;
  *(v257 + v259[7]) = 4 * (*&v258[v330[8]] / 4);
  *(v257 + v259[8]) = *&v258[v260[9]];
  v261 = v260[5];
  v262 = v259[6];
  OUTLINED_FUNCTION_2_64();
  sub_237B2EA58(&v258[v263], v257 + v264);
  LOBYTE(v260) = v258[v260[10]];
  OUTLINED_FUNCTION_1_65();
  sub_237B2EAD0(v258, v265);
  *(v257 + v259[9]) = v260;
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v266, v267, v268, v259);
  v269 = v302;
  v270 = v308;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237B2E858(v257, v269 + v270);
  swift_endAccess();
  v341 = v255;
  v271 = v332;
  v342 = v332;
  v272 = v225;
  v273 = v225;
  v274 = v317;
  v275 = v327;
  v276 = sub_237B202E8(v272, v317, &v341);
  if (v275)
  {

    OUTLINED_FUNCTION_3_63();
    sub_237B2EAD0(v256, v277);
    v278 = v336;
    v336(v274, v224);
    v278(v338, v224);
    v279 = OUTLINED_FUNCTION_38_1();
    v278(v279, v224);
    v278(v337, v224);
    v278(v339, v224);
    OUTLINED_FUNCTION_0_68();
    sub_237B2EAD0(v321, v280);
    sub_2379DBC9C(v255, v271);
    OUTLINED_FUNCTION_1_65();
    sub_237B2EAD0(v273, v281);
    goto LABEL_22;
  }

  v282 = v276;
  v340 = v224;

  v283 = sub_237B2969C(1937010799, 0xE400000000000000, v282);
  v284 = sub_237B0DDC8(*(v283 + 16));
  v285 = v336;
  v286 = v284;
  if (v284)
  {

    type metadata accessor for CMLDictionary();
    *(swift_initStackObject() + 16) = v286;
    sub_237B18AFC(*(v299 + *(v304 + 20)), 0, 4);
    type metadata accessor for CMLFeatureValue();

    sub_237A2E858(v287);
    sub_237A2F598(47);

    v292 = *(v302 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);

    sub_237A31864(0);

    OUTLINED_FUNCTION_76_4();

    OUTLINED_FUNCTION_3_63();
    sub_237B2EAD0(v256, v288);
    OUTLINED_FUNCTION_71_4();
    v285();
    (v285)(v338, v292);
    v289 = OUTLINED_FUNCTION_38_1();
    (v285)(v289, v292);
    (v285)(v337, v292);
    (v285)(v339, v292);
    OUTLINED_FUNCTION_0_68();
    sub_237B2EAD0(v321, v290);
    OUTLINED_FUNCTION_1_65();
    sub_237B2EAD0(v273, v291);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_237B2B5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v25;
  a20 = v26;
  v206 = v21;
  v27 = v20;
  v212 = v28;
  v29 = type metadata accessor for MLStyleTransfer.DataSource();
  v30 = OUTLINED_FUNCTION_20(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  v214 = &v191 - v38;
  OUTLINED_FUNCTION_41_0();
  v211 = type metadata accessor for MLCheckpoint();
  v39 = OUTLINED_FUNCTION_4(v211);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_0_22();
  a10 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v46);
  v205 = &v191 - v47;
  OUTLINED_FUNCTION_41_0();
  v48 = type metadata accessor for MLTrainingSessionParameters();
  v49 = OUTLINED_FUNCTION_20(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_0_22();
  v208 = v52;
  OUTLINED_FUNCTION_41_0();
  v213 = sub_237C05ADC();
  v53 = OUTLINED_FUNCTION_0(v213);
  v209 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_138();
  v210 = v60;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_46_7();
  v65 = type metadata accessor for MLStyleTransfer.ModelParameters();
  v66 = OUTLINED_FUNCTION_4(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v69);
  v71 = &v191 - v70;
  v72 = _s20PersistentParametersVMa_4();
  v73 = OUTLINED_FUNCTION_4(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v76);
  v78 = &v191 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  v80 = OUTLINED_FUNCTION_20(v79);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_14_0();
  v204 = v83;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_46_2();
  v85 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  v86 = OUTLINED_FUNCTION_20(v85);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_67_4();
  v89 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_31_11();
  v207 = v27;
  v203 = v89;
  sub_237B23430(v27 + v89, v22);
  v90 = OUTLINED_FUNCTION_6_17();
  if (__swift_getEnumTagSinglePayload(v90, v91, v72))
  {
    v92 = a10;
    sub_2379D9054(v22, &qword_27DE9D258, &unk_237C137D0);
    v94 = v213;
    v93 = v214;
  }

  else
  {
    v95 = v208;
    v193 = v23;
    OUTLINED_FUNCTION_27_12();
    sub_237B2EA58(v22, v78);
    sub_2379D9054(v22, &qword_27DE9D258, &unk_237C137D0);
    v96 = *(v72 + 24);
    v97 = v78[*(v72 + 20)];
    v98 = *(v65 + 20);
    OUTLINED_FUNCTION_2_64();
    sub_237B2EA58(&v78[v99], &v71[v98]);
    *v71 = v97;
    OUTLINED_FUNCTION_0_68();
    sub_237B2EAD0(v78, v100);
    OUTLINED_FUNCTION_29_13();
    v92 = a10;
    sub_237B2E9FC(&v71[v98], v24);
    v94 = v213;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v213);
    OUTLINED_FUNCTION_4_56();
    sub_237B2EAD0(v24, v102);
    v93 = v214;
    if (EnumTagSinglePayload != 1)
    {
      OUTLINED_FUNCTION_8_37();
      sub_237B2EA58(v207 + v103, v95);
      v104 = v205;
      sub_2379E8770(v95, v205);
      v105 = OUTLINED_FUNCTION_6_17();
      OUTLINED_FUNCTION_73_1(v105, v106, v94);
      if (v107)
      {
        sub_2379D9054(v104, &qword_27DE9AA18, &qword_237C0B710);
      }

      else
      {
        v208 = v65;
        v108 = v209;
        v209[4](v193, v104, v94);
        v109 = v200;
        v110 = v72;
        sub_237C05A1C();
        OUTLINED_FUNCTION_49_0();
        v111 = v201;
        sub_237C05A2C();
        v112 = v108[1];
        v112(v109, v94);
        v113 = v202;
        OUTLINED_FUNCTION_33_16();
        sub_237C05A3C();
        v112(v111, v94);
        v114 = sub_237B29968();
        v116 = v115;
        v117 = __swift_getEnumTagSinglePayload(v115, 1, v110);
        v192 = v110;
        if (!v117)
        {
          v118 = *(v110 + 24);
          OUTLINED_FUNCTION_4_56();
          sub_237B2EAD0(v116 + v118, v119);
          v108[2](v116 + v118, v113, v94);
          OUTLINED_FUNCTION_80_0();
          __swift_storeEnumTagSinglePayload(v120, v121, v122, v94);
        }

        (v114)(&v215, 0);
        v65 = v208;
        v93 = v214;
        v112(v113, v94);
        v123 = OUTLINED_FUNCTION_37_12(&a9);
        (v112)(v123);
        v92 = a10;
        v72 = v192;
      }
    }
  }

  sub_237A9A92C(v212, v93);
  v124 = v211;
  OUTLINED_FUNCTION_73_1(v93, 1, v211);
  if (v107)
  {
    sub_2379D9054(v93, &qword_27DE9B8E8, &qword_237C0EBF0);
    OUTLINED_FUNCTION_60_7();
    v125 = OUTLINED_FUNCTION_6_2();
    *v126 = 0xD00000000000001DLL;
    v126[1] = v124;
    OUTLINED_FUNCTION_52(v125, v126);
  }

  else
  {
    sub_237B2E9FC(v93, v92);
    v127 = *(v92 + *(v124 + 20));
    v128 = 0xEB0000000064657ALL;
    v129 = v72;
    v208 = v65;
    switch(v127)
    {
      case 1:
      case 3:
        v128 = 0xEA0000000000676ELL;
        goto LABEL_17;
      case 2:

        v130 = v210;
        goto LABEL_18;
      case 4:
        v128 = 0xEB00000000676E69;
        OUTLINED_FUNCTION_60_0();
        goto LABEL_17;
      default:
LABEL_17:
        OUTLINED_FUNCTION_57_0();
        v131 = sub_237C0929C();

        v130 = v210;
        if ((v131 & 1) == 0)
        {
          OUTLINED_FUNCTION_60_7();
          OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_48_11();
          *v138 = v137 + 24;
          v138[1] = v128;
          OUTLINED_FUNCTION_52(v139, v138);
          goto LABEL_21;
        }

LABEL_18:
        v132 = v209;
        v209[2](v130, v92, v94);
        v133 = sub_237C0598C();
        v134 = v206;
        v136 = sub_237B29600(v133, v135);
        if (v134)
        {
          (v132[1])(v130, v94);

LABEL_21:
          OUTLINED_FUNCTION_30_17();
          v141 = v92;
          goto LABEL_30;
        }

        v142 = v136;
        v143 = v94;
        v144 = v132[1];
        v144(v130, v143);

        type metadata accessor for CMLModel();
        OUTLINED_FUNCTION_103();
        v145 = swift_allocObject();
        *(v145 + 16) = v142;
        v146 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model;
        v147 = v207;
        v148 = *(v207 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);
        *(v207 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v145;

        v149 = v147 + v203;
        v150 = v204;
        sub_237B23430(v149, v204);
        OUTLINED_FUNCTION_73_1(v150, 1, v129);
        if (v107)
        {
          sub_2379D9054(v150, &qword_27DE9D258, &unk_237C137D0);
          OUTLINED_FUNCTION_60_7();
          OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_48_11();
          *v152 = v151 + 81;
          v152[1] = v150;
          OUTLINED_FUNCTION_52(v153, v152);
        }

        else
        {
          v211 = v146;
          v212 = v144;
          v214 = (v132 + 1);
          OUTLINED_FUNCTION_5_52();
          v154 = v132;
          v155 = v199;
          sub_237B2E9FC(v150, v199);
          OUTLINED_FUNCTION_7_42();
          v156 = v198;
          sub_237B2EA58(v155, v198);
          v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D228, &unk_237C13710) + 48);
          v158 = v154[4];
          v159 = v197;
          v158(v197, v156, v143);
          v160 = v156 + v157;
          v161 = v196;
          v158(v196, v160, v143);
          sub_237B22410(&v215);
          v162 = v212;
          v212(v161, v143);
          v163 = v216;
          v164 = v159;
          v165 = v215;
          v158(v195, v164, v143);
          v215 = v165;
          v216 = v163;
          OUTLINED_FUNCTION_40_12();
          MLDataTable.subscript.getter();
          v166 = v217;
          if (v218)
          {
            sub_2379DBC9C(v217, 1);
            OUTLINED_FUNCTION_60_7();
            OUTLINED_FUNCTION_6_2();
            OUTLINED_FUNCTION_48_11();
            *v168 = v167 | 0xC;
            v168[1] = v158;
            OUTLINED_FUNCTION_52(v169, v168);
            sub_2379DBC9C(v165, v163);
            v162(v195, v143);
            OUTLINED_FUNCTION_0_68();
            v171 = v199;
          }

          else
          {
            v209 = v165;
            LODWORD(v210) = v163;
            v172 = v217[2];

            sub_2379DBC9C(v166, 0);
            v173 = sub_237C05A9C();
            v175 = v174;
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            swift_allocObject();
            v176 = sub_237B29888(v173, v175, 1);
            v177 = v208;
            v178 = *(v207 + v211);
            v211 = v176;
            v179 = *(v176 + 16);
            v180 = v129[6];
            v181 = v199;
            v182 = *(v199 + v129[5]);
            v183 = v208[5];
            OUTLINED_FUNCTION_2_64();
            v185 = v194;
            sub_237B2EA58(v181 + v184, &v194[v186]);
            v187 = *(v181 + v129[7]);
            v188 = *(v181 + v129[8]);
            *&v185[v177[6]] = 1;
            v189 = v177[10];
            *v185 = v182;
            *&v185[v177[7]] = 500;
            *&v185[v177[8]] = v187;
            *&v185[v177[9]] = v188;
            LOBYTE(v177) = *(v181 + v129[9]);
            v185[v189] = v177;

            OUTLINED_FUNCTION_1_65();
            sub_237B2EAD0(v185, v190);
            sub_237B2C288(v179, v172, v177);

            sub_2379DBC9C(v209, v210);

            v212(v195, v213);
            OUTLINED_FUNCTION_0_68();
            v171 = v181;
          }

          sub_237B2EAD0(v171, v170);
        }

        OUTLINED_FUNCTION_30_17();
        v141 = a10;
LABEL_30:
        sub_237B2EAD0(v141, v140);
        break;
    }
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B2C288(uint64_t a1, uint64_t a2, char a3)
{
  v6 = OUTLINED_FUNCTION_87();
  result = MEMORY[0x2383DDB70](v6);
  if (result)
  {
    v8 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v8;
    OUTLINED_FUNCTION_74_4();
    sub_237A31004(v10);
    if (v4)
    {
LABEL_13:
      swift_setDeallocating();
      v18 = *(inited + 16);
      return tc_v1_release();
    }

    OUTLINED_FUNCTION_74_4();
    sub_237A31004(v11);
    result = MEMORY[0x2383DDA80](0);
    if (result)
    {
      OUTLINED_FUNCTION_87();
      type metadata accessor for CMLDictionary();
      v12 = swift_initStackObject();
      *(v12 + 16) = v3;
      if (a3)
      {
        v13 = 7696483;
        v14 = 0xE300000000000000;
      }

      else
      {
        v13 = 1869903201;
        v14 = 0xE400000000000000;
      }

      sub_237B18AFC(v13, v14, 3);
      type metadata accessor for CMLFeatureValue();

      sub_237A2E858(v15);
      OUTLINED_FUNCTION_74_4();
      sub_237A2F598(v16);

      sub_237A31864(3);

      swift_setDeallocating();
      v17 = *(v12 + 16);
      tc_v1_release();
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237B2C414(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 0;
  switch(v2)
  {
    case 1:
      return result;
    case 2:
      v4 = v1 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
      result = *(v4 + *(type metadata accessor for MLTrainingSessionParameters() + 28));
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void sub_237B2C49C()
{
  OUTLINED_FUNCTION_87();
  v2 = sub_237C0825C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_67_4();
  v8 = sub_237A2ECA0();
  if (v0)
  {
    return;
  }

  v9 = v8;
  v34 = v5;
  v35 = v2;
  v36 = MEMORY[0x277D84F90];
  sub_237AC8E54();
  v10 = 0;
  v11 = v36;
  do
  {
    v12 = *(v9 + v10);
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v12 <= -1.0)
    {
      goto LABEL_20;
    }

    if (v12 >= 256.0)
    {
      goto LABEL_21;
    }

    v37 = v11;
    v13 = *(v11 + 16);
    if (v13 >= *(v11 + 24) >> 1)
    {
      sub_237AC8E54();
      v11 = v37;
    }

    *(v11 + 16) = v13 + 1;
    *(v11 + v13 + 32) = v12;
    v10 += 8;
  }

  while (v10 != 6291456);
  v14 = sub_237B2955C(v11);
  v16 = v15;
  v17 = sub_237C05B6C();
  v18 = CGDataProviderCreateWithCFData(v17);

  if (!v18)
  {
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_22_9(v28, 41);
    OUTLINED_FUNCTION_45_9(v29, v30);
LABEL_16:
    v26 = v14;
    v27 = v16;
    goto LABEL_17;
  }

  v19 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = v19;
  v21 = CGImageCreate(0x200uLL, 0x200uLL, 8uLL, 0x18uLL, 0x600uLL, v19, 0, v18, 0, 0, kCGRenderingIntentDefault);

  if (!v21)
  {
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_22_9(v31, 41);
    OUTLINED_FUNCTION_45_9(v32, v33);

    goto LABEL_16;
  }

  v22 = v21;
  v23 = sub_237C059EC();
  sub_237C081CC();
  sub_237C0819C();
  (*(v34 + 8))(v1, v35);
  v24 = sub_237C086BC();

  v25 = CGImageDestinationCreateWithURL(v23, v24, 1uLL, 0);

  if (v25)
  {
    CGImageDestinationAddImage(v25, v22, 0);
    CGImageDestinationFinalize(v25);

    v26 = v14;
    v27 = v16;
LABEL_17:
    sub_2379E86D4(v26, v27);
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_237B2C7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v26 = v20;
  OUTLINED_FUNCTION_87();
  v167 = sub_237C05C2C();
  v27 = OUTLINED_FUNCTION_0(v167);
  v166 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  v168 = v161 - v36;
  OUTLINED_FUNCTION_41_0();
  v37 = type metadata accessor for MLTrainingSessionParameters();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_0_22();
  v164 = v41;
  OUTLINED_FUNCTION_41_0();
  v42 = sub_237C05ADC();
  v43 = OUTLINED_FUNCTION_0(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  v50 = MEMORY[0x28223BE20](v49);
  inited = v161 - v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_46_2();
  v175 = type metadata accessor for MLStyleTransfer.ModelParameters();
  v53 = OUTLINED_FUNCTION_4(v175);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_0_22();
  v176 = v56;
  OUTLINED_FUNCTION_41_0();
  v181 = _s20PersistentParametersVMa_4();
  v57 = OUTLINED_FUNCTION_4(v181);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  OUTLINED_FUNCTION_20(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v64);
  v66 = v161 - v65;
  v67 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData();
  v68 = OUTLINED_FUNCTION_20(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_58();
  v178 = v74;
  v75 = *(v20 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters + *(v37 + 20));
  if (__OFADD__(v20, v75))
  {
    __break(1u);
    goto LABEL_35;
  }

  v180 = v20 + v75;
  v76 = *(v37 + 28);
  v163 = v20 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
  v77 = *(v20 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters + v76);
  if (__OFSUB__(v77, v20))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v179 = *(v20 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters + v76);
  if (v75 >= v77 - v20)
  {
    v78 = v77 - v20;
  }

  else
  {
    v78 = v75;
  }

  if (v78 < 0)
  {
    goto LABEL_36;
  }

  v162 = inited;
  v171 = v45;
  v170 = v22;
  v177 = v42;
  v79 = 0;
  v45 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model;
  v80 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args;
  while (v78 != v79)
  {
    if (__OFADD__(v79, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v81 = *(v26 + v45);
    v82 = *(v26 + v80);

    sub_237A31864(1);
    if (v25)
    {
      goto LABEL_13;
    }

    ++v79;
  }

  v83 = *(v26 + v45);
  v84 = *(v26 + v80);

  sub_237A31864(2);
  if (v25)
  {
LABEL_13:

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF50, &unk_237C137E0);
  sub_237A84BFC();
  v85 = sub_237C085AC();
  a10 = v85;
  v86 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_31_11();
  sub_237B23430(v26 + v86, v66);
  v87 = OUTLINED_FUNCTION_21_19();
  v88 = v181;
  if (__swift_getEnumTagSinglePayload(v87, v89, v181))
  {
    sub_2379D9054(v66, &qword_27DE9D258, &unk_237C137D0);
    goto LABEL_21;
  }

  v161[1] = v85;
  OUTLINED_FUNCTION_27_12();
  v90 = v173;
  sub_237B2EA58(v66, v173);
  sub_2379D9054(v66, &qword_27DE9D258, &unk_237C137D0);
  v91 = v88[6];
  v92 = *(v90 + v88[5]);
  v93 = v176;
  v94 = *(v175 + 20);
  OUTLINED_FUNCTION_2_64();
  v181 = v95;
  sub_237B2EA58(v90 + v96, &v93[v94]);
  *v93 = v92;
  OUTLINED_FUNCTION_0_68();
  sub_237B2EAD0(v90, v97);
  v98 = v172;
  sub_237B2E9FC(&v93[v94], v172);
  v99 = v178;
  sub_237B2E9FC(v98, v178);
  v100 = v174;
  sub_237B2EA58(v99, v174);
  v101 = v177;
  OUTLINED_FUNCTION_73_1(v100, 1, v177);
  if (v102)
  {
    OUTLINED_FUNCTION_28_15();
    sub_237B2EAD0(v99, v103);
    v104 = v100;
    v105 = v101;
    goto LABEL_20;
  }

  v114 = (v171 + 32);
  v181 = *(v171 + 32);
  (v181)(v170, v100, v101);
  v115 = *(v26 + v45);

  v79 = sub_237B2D48C();
  v176 = v114;

  v73 = sub_237B0E488(*(v79 + 16));
LABEL_27:
  v116 = v73;
  v175 = v79;
  if (!v73)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  type metadata accessor for CMLColumn();
  inited = swift_initStackObject();
  *(inited + 2) = v116;
  if (sub_237A2F128() != 1)
  {
    OUTLINED_FUNCTION_30_6();

    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_22_9(v118, 28);
    OUTLINED_FUNCTION_45_9(v119, v120);
    swift_setDeallocating();
    tc_v1_release();

    v121 = OUTLINED_FUNCTION_47_12(&a15);
    v122(v121, v177);
LABEL_32:
    OUTLINED_FUNCTION_4_56();
    sub_237B2EAD0(v178, v123);
    goto LABEL_14;
  }

  v174 = v116;
  v117 = sub_237A2F1A8(0);
  if (v25)
  {
    swift_setDeallocating();
    OUTLINED_FUNCTION_56_7();
LABEL_40:

    v127 = OUTLINED_FUNCTION_47_12(&a15);
    v128(v127, v177);
    OUTLINED_FUNCTION_4_56();
    sub_237B2EAD0(v178, v129);
    OUTLINED_FUNCTION_30_6();

LABEL_14:
    OUTLINED_FUNCTION_73();
    return;
  }

  v73 = sub_237B0DE28(*(v117 + 16));
  v25 = 0;
LABEL_37:
  v124 = v73;
  if (v73)
  {

    type metadata accessor for CMLMultiArray();
    v125 = swift_initStackObject();
    *(v125 + 16) = v124;
    v126 = sub_237A2EC48();
    if (!v25)
    {
      v130 = v126;
      v173 = inited;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B318, &qword_237C12D60);
      v131 = swift_allocObject();
      v132 = _swift_stdlib_malloc_size(v131);
      *(v131 + 16) = 3;
      *(v131 + 24) = 2 * ((v132 - 32) / 8);
      v133 = *(v130 + 16);
      *(v131 + 32) = *v130;
      *(v131 + 48) = v133;
      v182[0] = MEMORY[0x277D84F90];
      sub_237AC8A34();
      v134 = v131;
      v135 = 32;
      v136 = v182[0];
      do
      {
        v137 = *(v134 + v135);
        if (v137 < 0)
        {
          __break(1u);
          goto LABEL_54;
        }

        v182[0] = v136;
        v138 = *(v136 + 16);
        v139 = v138 + 1;
        if (v138 >= *(v136 + 24) >> 1)
        {
          v161[0] = v134;
          v172 = v138 + 1;
          sub_237AC8A34();
          v139 = v172;
          v134 = v161[0];
          v136 = v182[0];
        }

        *(v136 + 16) = v139;
        *(v136 + 8 * v138 + 32) = v137;
        v135 += 8;
      }

      while (v135 != 56);

      v140 = sub_237A01F48(&unk_284AC0518, v136);

      if ((v140 & 1) == 0)
      {
        OUTLINED_FUNCTION_30_6();

        OUTLINED_FUNCTION_68_2();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_22_9(v149, 28);
        OUTLINED_FUNCTION_45_9(v150, v151);
        OUTLINED_FUNCTION_38_1();
        swift_setDeallocating();
        OUTLINED_FUNCTION_56_7();

        (*(v171 + 8))(v170, v177);
        goto LABEL_32;
      }

      v172 = v125;
      OUTLINED_FUNCTION_8_37();
      v141 = v164;
      sub_237B2EA58(v163, v164);
      v142 = v168;
      sub_2379E8770(v141, v168);
      v143 = OUTLINED_FUNCTION_6_17();
      v144 = v177;
      OUTLINED_FUNCTION_73_1(v143, v145, v177);
      if (v102)
      {
        v146 = NSTemporaryDirectory();
        sub_237C086EC();

        sub_237C059AC();

        v147 = OUTLINED_FUNCTION_6_17();
        OUTLINED_FUNCTION_73_1(v147, v148, v144);
        if (!v102)
        {
          sub_2379D9054(v168, &qword_27DE9AA18, &qword_237C0B710);
        }
      }

      else
      {
        (v181)(v162, v142, v144);
      }

      sub_237C05C1C();
      sub_237C05C0C();
      v152 = OUTLINED_FUNCTION_47_12(&a10);
      v153(v152, v167);
      v154 = v165;
      sub_237C05A2C();

      v155 = v169;
      OUTLINED_FUNCTION_33_16();
      sub_237C05A3C();
      v156 = *(v171 + 8);
      v156(v154, v144);
      sub_237B2C49C();
      v182[3] = v144;
      v182[4] = sub_237B2E8C8();
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v182);
      (*(v171 + 16))(boxed_opaque_existential_0, v155, v144);
      sub_237B19FFC(v182, 6);
      OUTLINED_FUNCTION_38_1();
      swift_setDeallocating();
      OUTLINED_FUNCTION_56_7();

      v158 = OUTLINED_FUNCTION_52_10(&a13);
      (v156)(v158);
      v159 = OUTLINED_FUNCTION_52_10(&v183);
      (v156)(v159);
      v160 = OUTLINED_FUNCTION_52_10(&a14);
      (v156)(v160);
      OUTLINED_FUNCTION_4_56();
      v104 = v178;
LABEL_20:
      sub_237B2EAD0(v104, v105);
LABEL_21:
      v106 = *(v26 + v45);

      sub_237B2258C();
      v108 = v107;

      if ((v108 & 1) == 0)
      {
        v109 = OUTLINED_FUNCTION_69_5();
        sub_237B19FFC(v109, 1);
      }

      v110 = *(v26 + v45);

      sub_237B226D0();
      v112 = v111;

      if ((v112 & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_69_5();
        sub_237B19FFC(v113, 2);
      }

      goto LABEL_14;
    }

    swift_setDeallocating();
    OUTLINED_FUNCTION_56_7();

    goto LABEL_40;
  }

LABEL_55:
  __break(1u);
}

uint64_t sub_237B2D48C()
{
  v2 = OUTLINED_FUNCTION_87();
  result = MEMORY[0x2383DDB70](v2);
  if (result)
  {
    v4 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B288, &qword_237C137F0);
    v6 = sub_237C05ADC();
    OUTLINED_FUNCTION_0(v6);
    v8 = v7;
    v10 = *(v9 + 72);
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_237C0B660;
    (*(v8 + 16))(v12 + v11, v0, v6);
    sub_237B22168(v12, &v23);
    if (v1)
    {
      swift_setDeallocating();
      tc_v1_release();
      swift_setDeallocating();
      v13 = v12;
      sub_237B9097C();
      return v13;
    }

    swift_setDeallocating();
    sub_237B9097C();
    OUTLINED_FUNCTION_40_12();
    v13 = &v23;
    MLDataTable.subscript.getter();
    if (v22)
    {
      sub_2379DBC9C(v21, 1);
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_22_9(v14, 33);
      OUTLINED_FUNCTION_45_9(v15, v16);
      OUTLINED_FUNCTION_59_6();
    }

    else
    {
      v17 = v21[2];

      sub_2379DBC9C(v21, 0);
      OUTLINED_FUNCTION_74_4();
      sub_237A31004(v18);
      if (!v21)
      {
        v13 = sub_237A31864(10);

        OUTLINED_FUNCTION_59_6();
        v20 = *(inited + 16);
        tc_v1_release();
        return v13;
      }

      OUTLINED_FUNCTION_59_6();
      v19 = *(inited + 16);
    }

    tc_v1_release();
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_237B2D6E8()
{
  v2 = *(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);
  v3 = *(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args);

  sub_237A31864(4);

  if (!v1)
  {
  }

  return 1;
}

uint64_t sub_237B2D764(uint64_t a1, _BYTE *a2)
{
  switch(*a2)
  {
    case 2:

      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_60_0();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_57_0();
  v4 = sub_237C0929C();

  if (v4)
  {
LABEL_5:
    v5 = MEMORY[0x2383DDB70](0);
    if (!v5)
    {
      __break(1u);
      JUMPOUT(0x237B2D950);
    }

    v6 = v5;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    type metadata accessor for CMLFeatureValue();
    sub_237C05A9C();
    sub_237A2E7CC();
    if (v3)
    {
      swift_setDeallocating();
      tc_v1_release();
    }

    else
    {
      sub_237A2F598(7);

      v8 = *(v2 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);

      sub_237A31864(6);

      swift_setDeallocating();
      v11 = *(inited + 16);
      tc_v1_release();

      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_237B2D964(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = _s20PersistentParametersVMa_4();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_31_11();
  sub_237B23430(v1 + v16, v8);
  OUTLINED_FUNCTION_73_1(v8, 1, v9);
  if (v17)
  {
    sub_2379D9054(v8, &qword_27DE9D258, &unk_237C137D0);
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_22_9(v18, 48);
    *(v19 + 48) = 2;
    return swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_5_52();
    sub_237B2E9FC(v8, v15);
    sub_237B28A88(a1);
    OUTLINED_FUNCTION_0_68();
    return sub_237B2EAD0(v15, v20);
  }
}

void sub_237B2DD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v22;
  a20 = v23;
  v140 = v20;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for MLStyleTransfer.ModelParameters();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_0();
  v142 = v32;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_138();
  v141 = v34;
  OUTLINED_FUNCTION_39_0();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v140 - v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_46_7();
  v39 = _s20PersistentParametersVMa_4();
  v40 = v39[6];
  v147 = v39[5];
  v41 = v27[v147];
  OUTLINED_FUNCTION_6_49();
  v145 = v42;
  sub_237B2EA58(&v27[v42], &v21[v43]);
  v44 = *&v27[v39[7]];
  v45 = *&v27[v39[8]];
  OUTLINED_FUNCTION_23_27();
  *v21 = v41;
  *&v21[v28[7]] = 500;
  v46 = v28[8];
  v153 = v48;
  v154 = v47;
  *&v21[v46] = v47;
  *&v21[v28[9]] = v48;
  v144 = v27[v39[9]];
  v21[v49] = v144;
  LODWORD(v143) = *v21;
  OUTLINED_FUNCTION_25_23();
  sub_237B2EAD0(v21, v50);
  v51 = v39[6];
  v149 = v39[5];
  v150 = v51;
  v52 = *(v25 + v149);
  sub_237B2EA58(v25 + v51, &v38[v28[5]]);
  v53 = *(v25 + v39[7]);
  v54 = *(v25 + v39[8]);
  OUTLINED_FUNCTION_18_28();
  *v38 = v52;
  *&v38[v28[7]] = 500;
  v55 = v28[8];
  v146 = v56;
  *&v38[v55] = v56;
  v57 = v28[9];
  v151 = v58;
  v152 = v25;
  *&v38[v57] = v58;
  v148 = *(v25 + v39[9]);
  v38[v59] = v148;
  v60 = *v38;
  sub_237B2EAD0(v38, v41);
  v61 = sub_2379F732C(v143, v60);
  v62 = v27[v147];
  v63 = v28[5];
  if ((v61 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_32();
    v111 = v141;
    sub_237B2EA58(&v27[v145], &v141[v112]);
    OUTLINED_FUNCTION_18_28();
    *v111 = v62;
    OUTLINED_FUNCTION_20_25();
    v113 = v153;
    *&v111[v114] = v154;
    *&v111[v28[9]] = v113;
    v111[v115] = v144;
    v116 = *v111;
    OUTLINED_FUNCTION_25_23();
    sub_237B2EAD0(v111, v117);
    if (v116)
    {
      v118 = 0xD00000000000004FLL;
    }

    else
    {
      v118 = 0xD000000000000046;
    }

    if (v116)
    {
      v119 = "Style image not readable.";
    }

    else
    {
      v119 = "Style strength: ";
    }

    v153 = v119 | 0x8000000000000000;
    v154 = v118;
    v120 = *(v152 + v149);
    v121 = v142;
    sub_237B2EA58(v152 + v150, &v142[v28[5]]);
    *&v121[v28[6]] = 1;
    v122 = v28[10];
    *v121 = v120;
    OUTLINED_FUNCTION_31_16();
    *&v121[v123] = v124;
    *&v121[v28[8]] = v146;
    *&v121[v28[9]] = v151;
    v121[v125] = v148;
    v126 = *v121;
    sub_237B2EAD0(v121, v62);
    v127 = v126 == 0;
    if (v126)
    {
      v107 = 0xD00000000000004FLL;
    }

    else
    {
      v107 = 0xD000000000000046;
    }

    if (v127)
    {
      v128 = "Style strength: ";
    }

    else
    {
      v128 = "Style image not readable.";
    }

    v109 = v128 | 0x8000000000000000;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v110 = xmmword_237C0E010;
    v129 = v153;
    *(v110 + 16) = v154;
    *(v110 + 24) = v129;
    goto LABEL_19;
  }

  v64 = v145;
  v143 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData;
  sub_237B2EA58(&v27[v145], &v21[v63]);
  OUTLINED_FUNCTION_23_27();
  *v21 = v62;
  OUTLINED_FUNCTION_31_16();
  *&v21[v65] = v66;
  v67 = v153;
  *&v21[v28[8]] = v154;
  *&v21[v28[9]] = v67;
  v68 = v144;
  v21[v69] = v144;
  sub_237B2EAD0(v21, type metadata accessor for MLStyleTransfer.ModelParameters);
  v70 = *(v152 + v149);
  v71 = v28[5];
  v72 = OUTLINED_FUNCTION_72_5();
  sub_237B2EA58(v72, v73);
  OUTLINED_FUNCTION_18_28();
  *v38 = v70;
  OUTLINED_FUNCTION_20_25();
  v74 = v146;
  *&v38[v75] = v146;
  OUTLINED_FUNCTION_51_6(v76);
  sub_237B2EAD0(v38, type metadata accessor for MLStyleTransfer.ModelParameters);
  v77 = v27[v147];
  v78 = v28[5];
  v142 = v27;
  sub_237B2EA58(&v27[v64], &v21[v78]);
  OUTLINED_FUNCTION_23_27();
  *v21 = v77;
  OUTLINED_FUNCTION_31_16();
  *&v21[v79] = v80;
  v81 = v153;
  v82 = v154;
  *&v21[v28[8]] = v154;
  *&v21[v28[9]] = v81;
  v21[v83] = v68;
  sub_237B2EAD0(v21, type metadata accessor for MLStyleTransfer.ModelParameters);
  if (v82 != v74)
  {
    a10 = v154;
    sub_237A20C10();
    OUTLINED_FUNCTION_23_2();
    v130 = sub_237C08DEC();
    v132 = v131;
    OUTLINED_FUNCTION_34_15();
    OUTLINED_FUNCTION_2_64();
    v133 = OUTLINED_FUNCTION_72_5();
    sub_237B2EA58(v133, v134);
    OUTLINED_FUNCTION_18_28();
    *v38 = &a10;
    OUTLINED_FUNCTION_20_25();
    v135 = v146;
    *&v38[v136] = v146;
    OUTLINED_FUNCTION_51_6(v137);
    OUTLINED_FUNCTION_1_65();
    sub_237B2EAD0(v38, v138);
    v155 = v135;
    OUTLINED_FUNCTION_23_2();
    v107 = sub_237C08DEC();
    v109 = v139;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v110 = xmmword_237C13740;
    *(v110 + 16) = v130;
    *(v110 + 24) = v132;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_34_15();
  OUTLINED_FUNCTION_2_64();
  v84 = OUTLINED_FUNCTION_72_5();
  sub_237B2EA58(v84, v85);
  OUTLINED_FUNCTION_18_28();
  *v38 = type metadata accessor for MLStyleTransfer.ModelParameters;
  OUTLINED_FUNCTION_20_25();
  *&v38[v86] = v154;
  v87 = v151;
  *&v38[v28[9]] = v151;
  v38[v88] = v148;
  OUTLINED_FUNCTION_1_65();
  sub_237B2EAD0(v38, v89);
  if (v153 != v87)
  {
    v90 = v142[v147];
    OUTLINED_FUNCTION_6_49();
    sub_237B2EA58(v91 + v64, &v21[v92]);
    OUTLINED_FUNCTION_23_27();
    *v21 = v90;
    OUTLINED_FUNCTION_31_16();
    *&v21[v93] = v94;
    v95 = v153;
    v96 = v154;
    *&v21[v28[8]] = v154;
    *&v21[v28[9]] = v95;
    v21[v97] = v68;
    sub_237B2EAD0(v21, type metadata accessor for MLStyleTransfer.ModelParameters);
    a10 = v95;
    sub_237A20C10();
    v98 = sub_237C08DEC();
    v100 = v99;
    OUTLINED_FUNCTION_34_15();
    v101 = OUTLINED_FUNCTION_72_5();
    sub_237B2EA58(v101, v102);
    OUTLINED_FUNCTION_18_28();
    *v38 = &a10;
    OUTLINED_FUNCTION_20_25();
    *&v38[v103] = v96;
    v104 = v28[9];
    v105 = v151;
    *&v38[v104] = v151;
    v38[v106] = v148;
    sub_237B2EAD0(v38, type metadata accessor for MLStyleTransfer.ModelParameters);
    v155 = v105;
    v107 = sub_237C08DEC();
    v109 = v108;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v110 = xmmword_237C13750;
    *(v110 + 16) = v98;
    *(v110 + 24) = v100;
LABEL_19:
    *(v110 + 32) = v107;
    *(v110 + 40) = v109;
    *(v110 + 48) = 3;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B2E3DC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_16_24();
  sub_237B2EAD0(v0 + v2, v3);
  sub_2379D9054(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, &qword_27DE9D258, &unk_237C137D0);
  v4 = *(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);

  v5 = *(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args);

  return v0;
}

uint64_t sub_237B2E450()
{
  sub_237B2E3DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s23TrainingSessionDelegateCMa()
{
  result = qword_27DE9D2E8;
  if (!qword_27DE9D2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B2E4FC()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_237B2E5E4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_237B2E5E4()
{
  if (!qword_27DE9D2F8)
  {
    _s20PersistentParametersVMa_4();
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9D2F8);
    }
  }
}

uint64_t sub_237B2E760()
{
  v2 = *v0;
  sub_237B2D6E8();
  v3 = *(v1 + 8);

  return v3(1, 1);
}

uint64_t sub_237B2E858(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D258, &unk_237C137D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_237B2E8C8()
{
  result = qword_27DE9BFF8;
  if (!qword_27DE9BFF8)
  {
    sub_237C05ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BFF8);
  }

  return result;
}

unint64_t sub_237B2E920()
{
  result = qword_27DE9D308;
  if (!qword_27DE9D308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9D300, &qword_237C137F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D308);
  }

  return result;
}

uint64_t sub_237B2E984@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_237C05AEC();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2383D96A0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2383D96C0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_237B2E9FC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_237B2EA58(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237B2EAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_34_15()
{
  v2 = *(v1 - 128);
  v3 = *(*(v1 - 112) + *(v1 - 136));
  v4 = *(v0 + 20);
}

uint64_t OUTLINED_FUNCTION_45_9(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_56_7()
{
  v2 = *(v0 - 264);

  return tc_v1_release();
}

uint64_t OUTLINED_FUNCTION_59_6()
{
  sub_2379DBC9C(v1, v0);

  return swift_setDeallocating();
}

unint64_t OUTLINED_FUNCTION_60_7()
{

  return sub_2379E8AF0();
}

uint64_t OUTLINED_FUNCTION_69_5()
{
  *(v3 - 128) = v1;
  *(v3 - 120) = v2;
  *(v3 - 152) = v0;
  return v3 - 152;
}

void OUTLINED_FUNCTION_76_4()
{
  v3 = *(v1 - 216);

  sub_2379DBC9C(v3, v0);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLTextClassifier.prediction(from:)(Swift::String from)
{
  v2 = *v1;
  v3 = sub_237C086BC();
  v4 = [v2 predictedLabelForString_];

  if (v4)
  {
    v5 = sub_237C086EC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t MLTextClassifier.predictions(from:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for MLTextClassifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_0_69(v8, v9, v10, v11, v12, v13, v14, v15, v31);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_237B2F18C(v2, v17 + v16);
  v18 = *(a1 + 16);
  if (v18)
  {
    OUTLINED_FUNCTION_3_64(MEMORY[0x277D84F90]);
    sub_237AC8A74();
    v19 = v32;
    v20 = (a1 + 40);
    while (1)
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      v23 = sub_237B2F1F0();
      if (v3)
      {
        break;
      }

      v25 = v23;
      v26 = v24;
      v27 = v17;

      v28 = *(v32 + 16);
      if (v28 >= *(v32 + 24) >> 1)
      {
        sub_237AC8A74();
      }

      *(v32 + 16) = v28 + 1;
      v29 = v32 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v20 += 2;
      --v18;
      v17 = v27;
      v3 = 0;
      if (!v18)
      {

        return v19;
      }
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t sub_237B2F124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B2F18C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLTextClassifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B2F1F0()
{
  v0 = *(*(OUTLINED_FUNCTION_4_57() - 8) + 80);
  v1._countAndFlagsBits = OUTLINED_FUNCTION_1_66();
  return MLTextClassifier.prediction(from:)(v1)._countAndFlagsBits;
}

uint64_t sub_237B2F260()
{
  v3 = v0;
  v1 = *v0;
  v2 = v3[1];
  v4 = *(v2 + 16);
  v5 = sub_237C08CCC();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v4 < v7)
  {
    sub_2379E8AF0();
    swift_allocError();
    *v8 = 0xD000000000000037;
    *(v8 + 8) = 0x8000000237C1CA90;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0;
    swift_willThrow();

    return v6;
  }

  if (v7 == v4)
  {
    return v6;
  }

  v9 = 0;
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = 0.0;
  if (v12)
  {
    while (1)
    {
      v15 = v9;
LABEL_12:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v14 = v14 + *(*(v5 + 56) + ((v15 << 9) | (8 * v16)));
      if (!v12)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v5 + 64 + 8 * v15);
    ++v9;
    if (v12)
    {
      v9 = v15;
      goto LABEL_12;
    }
  }

  v17 = (1.0 - v14) / (v4 - *(v5 + 16));
  v18 = 1 << *(v2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v2 + 56);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    while (2)
    {
      v23 = v22;
LABEL_21:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = (*(v2 + 48) + ((v23 << 10) | (16 * v24)));
      v27 = *v25;
      v26 = v25[1];
      v28 = v6[2];

      if (v28)
      {

        sub_237ACAC78(v27, v26);
        v30 = v29;

        if (v30)
        {

          goto LABEL_24;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v40 = sub_237ACAC78(v27, v26);
      v41 = v31;
      if (__OFADD__(v6[2], (v31 & 1) == 0))
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D310, &qword_237C13800);
      if (sub_237C090AC())
      {
        v32 = sub_237ACAC78(v27, v26);
        if ((v41 & 1) != (v33 & 1))
        {
          goto LABEL_40;
        }

        v34 = v32;
        if ((v41 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v34 = v40;
        if ((v41 & 1) == 0)
        {
LABEL_30:
          v6[(v34 >> 6) + 8] |= 1 << v34;
          v35 = (v6[6] + 16 * v34);
          *v35 = v27;
          v35[1] = v26;
          *(v6[7] + 8 * v34) = v17;
          v36 = v6[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_39;
          }

          v6[2] = v38;
          goto LABEL_24;
        }
      }

      *(v6[7] + 8 * v34) = v17;
LABEL_24:
      v22 = v23;
      if (!v20)
      {
        break;
      }

      continue;
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return v6;
    }

    v20 = *(v2 + 56 + 8 * v23);
    ++v22;
    if (v20)
    {
      goto LABEL_21;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t MLTextClassifier.predictionsWithConfidence(from:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for MLTextClassifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_0_69(v8, v9, v10, v11, v12, v13, v14, v15, v27);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_237B2F18C(v2, v17 + v16);
  v18 = *(a1 + 16);
  if (v18)
  {
    OUTLINED_FUNCTION_3_64(MEMORY[0x277D84F90]);
    sub_237AC8EF4();
    v19 = v28;
    for (i = (a1 + 40); ; i += 2)
    {
      v21 = *(i - 1);
      v22 = *i;

      v23 = sub_237B2FCF8();
      if (v3)
      {
        break;
      }

      v24 = v23;

      v25 = *(v28 + 16);
      if (v25 >= *(v28 + 24) >> 1)
      {
        sub_237AC8EF4();
      }

      *(v28 + 16) = v25 + 1;
      *(v28 + 8 * v25 + 32) = v24;
      if (!--v18)
      {

        return v19;
      }
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t sub_237B2F81C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  sub_2379DBCF4(*a1, v9);
  sub_2379DFC10(v8, v9);
  a2();

  if (!v4)
  {
    MEMORY[0x28223BE20](result);
    v11 = sub_237BBDC94(a3);
    v13 = v12;

    *a4 = v11;
    *(a4 + 8) = v13 & 1;
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = v0;
  v2 = type metadata accessor for MLTextClassifier();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v1 + v4;

  v7 = *(v1 + v4 + 8);

  v8 = v1 + v4 + v2[7];
  type metadata accessor for MLTextClassifier.ModelAlgorithmType();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v9 = sub_237C05ADC();
    if (!__swift_getEnumTagSinglePayload(v8, 4, v9))
    {
      (*(*(v9 - 8) + 8))(v8, v9);
    }
  }

  v10 = type metadata accessor for MLTextClassifier.ModelParameters();

  v11 = (v8 + v10[6]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v12 = *(v8 + v10[7] + 8);

  v13 = *(v8 + v10[8] + 8);

  v14 = (v6 + v2[8]);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v18 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v37 = *(v18 + 20);
      v19 = sub_237C05DBC();
      v38 = v5;
      v20 = *(*(v19 - 8) + 8);
      v20(v14 + v37, v19);
      v20(v14 + *(v18 + 24), v19);
      v5 = v38;
      v4 = (v3 + 16) & ~v3;
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = &qword_27DE9AA00;
        v17 = &qword_237C0B6F0;
      }

      else
      {
        v16 = &qword_27DE9A9C8;
        v17 = &qword_237C0B6A0;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
      OUTLINED_FUNCTION_4(v21);
      (*(v22 + 8))(v14);
      break;
  }

  v23 = (v6 + v2[9]);
  v24 = swift_getEnumCaseMultiPayload();
  switch(v24)
  {
    case 2:

      break;
    case 1:
      v27 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v28 = v5;
      v29 = *(v27 + 20);
      v30 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v30);
      v32 = *(v31 + 8);
      v33 = v23 + v29;
      v5 = v28;
      v32(v33, v30);
      v32(v23 + *(v27 + 24), v30);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = &qword_27DE9AA00;
        v26 = &qword_237C0B6F0;
      }

      else
      {
        v25 = &qword_27DE9A9C8;
        v26 = &qword_237C0B6A0;
      }

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
      OUTLINED_FUNCTION_4(v34);
      (*(v35 + 8))(v23);
      break;
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_237B2FCF8()
{
  v0 = *(*(OUTLINED_FUNCTION_4_57() - 8) + 80);
  OUTLINED_FUNCTION_1_66();
  return sub_237B2F260();
}

uint64_t sub_237B2FD50@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237B05DEC(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237B2F124(v9, &a9 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_4_57()
{

  return type metadata accessor for MLTextClassifier();
}

uint64_t sub_237B2FE34(char *a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v6 = OUTLINED_FUNCTION_20(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = sub_237C0683C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_138();
  v42 = v25;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v41 - v27;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v15);
  v32 = *(v3 + 24);
  v33 = *(type metadata accessor for MLFewShotSoundClassifier() + 40);
  v45 = a3;
  v46 = v32;
  v47 = vrev64_s32(*(v3 + 28));
  v48 = v14;
  _s18TemporalClassifierVMa(0);
  sub_237A24C78();
  sub_237C061AC();
  v34 = v18[2];
  v34(v28, v23, v15);
  sub_237A7FA40(v14, v11);
  result = __swift_getEnumTagSinglePayload(v11, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v36 = v18[1];
    v36(v23, v15);
    v37 = v18[4];
    v38 = v42;
    v39 = OUTLINED_FUNCTION_1_15();
    v40(v39);
    sub_2379F6DD8(v14, &qword_27DE9B410, &qword_237C0CCC8);
    v34(v43, v28, v15);
    sub_237C0689C();
    v36(v38, v15);
    return (v36)(v28, v15);
  }

  return result;
}

uint64_t sub_237B300F8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, float a7@<S2>)
{
  v233 = a3;
  v240 = a1;
  v232[5] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v12 = OUTLINED_FUNCTION_20(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0(v232 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v17 = OUTLINED_FUNCTION_20(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0(v232 - v20);
  v242 = sub_237C0610C();
  v21 = OUTLINED_FUNCTION_0(v242);
  v248 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77_0(v232 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D318, &qword_237C13808);
  v27 = OUTLINED_FUNCTION_20(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77_0(v232 - v30);
  v31 = sub_237C0683C();
  v241 = *(v31 - 8);
  v246 = (v31 - 8);
  v252 = v241;
  v32 = *(v241 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_138();
  v250 = v39;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_138();
  v251 = v41;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_138();
  v255 = v43;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_138();
  v257 = v45;
  OUTLINED_FUNCTION_39_0();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = v232 - v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_138();
  v253 = v50;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_138();
  v249 = v52;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  v55 = MEMORY[0x28223BE20](v54);
  v256 = v232 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = v232 - v57;
  v59 = _s18TemporalClassifierV6OutputVMa(0);
  v60 = v59 - 8;
  v61 = *(*(v59 - 8) + 64);
  v238 = v59 - 8;
  MEMORY[0x28223BE20](v59);
  v63 = v232 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  v247 = a2;
  sub_237C0608C();
  _s18TemporalClassifierVMa(0);
  sub_237A24C78();
  v236 = v63;
  sub_237C063CC();
  v65 = *(v252 + 8);
  v66 = OUTLINED_FUNCTION_16_16();
  v65(v66);
  v67 = &v63[*(v60 + 36)];
  v68 = v65;
  *&v237 = v64;
  sub_237C0606C();
  v69 = *MEMORY[0x277D2CD58];
  v70 = sub_237C0618C();
  v71 = v239;
  (*(*(v70 - 8) + 104))(v239, v69, v70);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v70);
  v232[4] = v58;
  sub_237C061DC();
  sub_2379F6DD8(v71, &qword_27DE9D318, &qword_237C13808);
  v72 = OUTLINED_FUNCTION_16_16();
  v68(v72);
  sub_237C0606C();
  v232[3] = v67;
  sub_237C0689C();
  sub_237C066AC();
  sub_237C0673C();
  v73 = OUTLINED_FUNCTION_29_11();
  v68(v73);
  sub_237C0661C();
  sub_237C066DC();
  v74 = OUTLINED_FUNCTION_87_0();
  v68(v74);
  sub_237C066AC();
  v75 = OUTLINED_FUNCTION_55_1();
  v68(v75);
  sub_237C0670C();
  v76 = OUTLINED_FUNCTION_87_0();
  v68(v76);
  sub_237C066DC();
  v254 = v49;
  v77 = OUTLINED_FUNCTION_29_11();
  v68(v77);
  v78 = OUTLINED_FUNCTION_1_15();
  v68(v78);
  v79 = OUTLINED_FUNCTION_13_29();
  v68(v79);
  v80 = OUTLINED_FUNCTION_12_35();
  v68(v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B320, &qword_237C0CBC8);
  v81 = *(v241 + 72);
  v82 = v252;
  v83 = (*(v252 + 80) + 32) & ~*(v252 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_237C0BC00;
  v241 = v83;
  v85 = v84 + v83;
  sub_237C0608C();
  v86 = v82 + 16;
  v87 = *(v82 + 16);
  v88 = v236;
  v87(v85 + v81, v236, v31);
  v89 = v238;
  v87(v85 + 2 * v81, (v88 + *(v238 + 28)), v31);
  v235 = v81;
  v90 = *(v89 + 32);
  v232[1] = 3 * v81;
  v246 = v87;
  v87(v85 + 3 * v81, (v88 + v90), v31);
  v91 = sub_237C068AC();

  v247 = v91;
  if (!*(v91 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v238 = v247 + v241;
  OUTLINED_FUNCTION_18_29();
  v252 = v86;
  v93();
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v94 = swift_allocObject();
  v237 = xmmword_237C0B670;
  *(v94 + 16) = xmmword_237C0B670;
  OUTLINED_FUNCTION_15_33(&v263);
  sub_237C0679C();
  v95 = sub_237C0612C();
  v96 = v248 + 8;
  v97 = *(v248 + 8);
  v98 = v242;
  v97(v88, v242);
  *(v94 + 32) = v95;
  *(v94 + 40) = -1;
  sub_237C0611C();
  v99 = v253;
  sub_237C0681C();
  v248 = v96;
  v240 = v97;
  v100 = (v97)(v88, v98);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_17_14();
  *(v101 - 16) = v99;
  sub_237C0619C();
  OUTLINED_FUNCTION_17_24(v259);
  v102 = MEMORY[0x277D83A90];
  v103 = MEMORY[0x277D2CF38];
  sub_237C066CC();
  sub_237C0669C();
  v104 = OUTLINED_FUNCTION_16_16();
  v68(v104);
  v260 = v102;
  v261 = v103;
  *&v258 = a5;
  sub_237C065DC();
  v105 = sub_237C0616C();
  v106 = OUTLINED_FUNCTION_1_67();
  OUTLINED_FUNCTION_20_26(v106, v107, v108, v105);
  sub_237C0680C();
  v109 = (1.0 - a6) * a5;
  v260 = v102;
  v261 = MEMORY[0x277D2CF38];
  *&v258 = v109;
  sub_237C065DC();
  v110 = OUTLINED_FUNCTION_1_67();
  v241 = v105;
  OUTLINED_FUNCTION_20_26(v110, v111, v112, v105);
  OUTLINED_FUNCTION_21_25();
  OUTLINED_FUNCTION_15_33(&v264);
  sub_237C066DC();
  OUTLINED_FUNCTION_24_25(&v266);
  sub_237C062FC();
  v113 = OUTLINED_FUNCTION_1_15();
  v68(v113);
  v114 = v250;
  sub_237C066BC();
  v115 = OUTLINED_FUNCTION_87_0();
  v68(v115);
  v116 = v243;
  sub_237C066DC();
  sub_237C062FC();
  v117 = OUTLINED_FUNCTION_12_35();
  v68(v117);
  sub_237C066DC();
  v118 = OUTLINED_FUNCTION_1_15();
  v68(v118);
  sub_237C0676C();
  v119 = OUTLINED_FUNCTION_87_0();
  v68(v119);
  v120 = OUTLINED_FUNCTION_55_1();
  v68(v120);
  v121 = OUTLINED_FUNCTION_29_11();
  v68(v121);
  v122 = OUTLINED_FUNCTION_16_16();
  v68(v122);
  v123 = OUTLINED_FUNCTION_13_29();
  v68(v123);
  (v68)(v254, v31);
  (v68)(v249, v31);
  result = (v68)(v253, v31);
  if (*(v247 + 16) < 2uLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_18_29();
  v124();
  v125 = OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_3_65(v125);
  v127 = *(v126 - 256);
  sub_237C0679C();
  v128 = sub_237C0612C();
  OUTLINED_FUNCTION_2_65();
  v130 = *(v129 - 256);
  v130();
  *(v114 + 32) = v128;
  *(v114 + 40) = -1;
  OUTLINED_FUNCTION_27_13();
  sub_237C0611C();
  v131 = v254;
  sub_237C0681C();
  v132 = (v130)(v127, v116);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_17_14();
  *(v133 - 16) = v131;
  sub_237C0619C();
  OUTLINED_FUNCTION_17_24(v259);
  v134 = MEMORY[0x277D83A90];
  v135 = MEMORY[0x277D2CF38];
  sub_237C066CC();
  sub_237C0669C();
  v136 = OUTLINED_FUNCTION_29_11();
  v68(v136);
  v260 = v134;
  v261 = v135;
  *&v258 = a5;
  sub_237C065DC();
  v137 = OUTLINED_FUNCTION_1_67();
  v138 = v241;
  OUTLINED_FUNCTION_20_26(v137, v139, v140, v241);
  sub_237C0680C();
  v260 = v134;
  v261 = MEMORY[0x277D2CF38];
  *&v258 = v109;
  sub_237C065DC();
  v141 = OUTLINED_FUNCTION_1_67();
  OUTLINED_FUNCTION_20_26(v141, v142, v143, v138);
  v144 = v250;
  OUTLINED_FUNCTION_21_25();
  OUTLINED_FUNCTION_24_25(&v265);
  sub_237C066DC();
  OUTLINED_FUNCTION_15_33(&v264);
  sub_237C062FC();
  v145 = OUTLINED_FUNCTION_87_0();
  v68(v145);
  v146 = v244;
  sub_237C066BC();
  v147 = OUTLINED_FUNCTION_1_15();
  v68(v147);
  sub_237C066DC();
  sub_237C062FC();
  v148 = OUTLINED_FUNCTION_13_29();
  v68(v148);
  sub_237C066DC();
  v149 = OUTLINED_FUNCTION_87_0();
  v68(v149);
  sub_237C0676C();
  v150 = OUTLINED_FUNCTION_1_15();
  v68(v150);
  v151 = OUTLINED_FUNCTION_55_1();
  v68(v151);
  v152 = OUTLINED_FUNCTION_12_35();
  v68(v152);
  v153 = OUTLINED_FUNCTION_29_11();
  v68(v153);
  v154 = OUTLINED_FUNCTION_16_16();
  v68(v154);
  (v68)(v257, v31);
  (v68)(v253, v31);
  result = (v68)(v254, v31);
  if (*(v247 + 16) < 3uLL)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18_29();
  v155();
  v156 = OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_3_65(v156);
  v158 = *(v157 - 256);
  sub_237C0679C();
  v159 = sub_237C0612C();
  OUTLINED_FUNCTION_2_65();
  v161 = *(v160 - 256);
  v161();
  *(v146 + 32) = v159;
  *(v146 + 40) = -1;
  OUTLINED_FUNCTION_27_13();
  sub_237C0611C();
  v162 = v257;
  sub_237C0681C();
  v163 = (v161)(v158, v144);
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_17_14();
  *(v164 - 16) = v162;
  sub_237C0619C();
  OUTLINED_FUNCTION_17_24(&v260);
  v165 = v250;
  v166 = MEMORY[0x277D83A90];
  v167 = MEMORY[0x277D2CF38];
  sub_237C066CC();
  sub_237C0669C();
  v168 = OUTLINED_FUNCTION_12_35();
  v68(v168);
  v260 = v166;
  v261 = v167;
  *&v258 = a5;
  v169 = sub_237C065DC();
  v170 = OUTLINED_FUNCTION_1_67();
  v171 = v241;
  OUTLINED_FUNCTION_20_26(v170, v172, v173, v241);
  sub_237C0680C();
  v260 = v166;
  v261 = MEMORY[0x277D2CF38];
  *&v258 = v109;
  sub_237C065DC();
  v174 = OUTLINED_FUNCTION_1_67();
  OUTLINED_FUNCTION_20_26(v174, v175, v176, v171);
  OUTLINED_FUNCTION_15_33(&v266);
  OUTLINED_FUNCTION_21_25();
  sub_237C066DC();
  OUTLINED_FUNCTION_24_25(&v265);
  sub_237C062FC();
  v177 = OUTLINED_FUNCTION_16_16();
  v68(v177);
  sub_237C066BC();
  v178 = OUTLINED_FUNCTION_87_0();
  v68(v178);
  v179 = v234;
  sub_237C066DC();
  sub_237C062FC();
  v180 = OUTLINED_FUNCTION_55_1();
  v68(v180);
  sub_237C066DC();
  v181 = OUTLINED_FUNCTION_16_16();
  v68(v181);
  sub_237C0676C();
  v182 = OUTLINED_FUNCTION_87_0();
  v68(v182);
  v183 = OUTLINED_FUNCTION_29_11();
  v68(v183);
  v184 = OUTLINED_FUNCTION_1_15();
  v68(v184);
  v185 = OUTLINED_FUNCTION_12_35();
  v68(v185);
  v186 = OUTLINED_FUNCTION_13_29();
  v68(v186);
  (v68)(v255, v31);
  (v68)(v254, v31);
  result = (v68)(v257, v31);
  if (*(v247 + 16) >= 4uLL)
  {
    OUTLINED_FUNCTION_26_19();
    v187();

    v188 = OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_3_65(v188);
    OUTLINED_FUNCTION_15_33(v189);
    sub_237C0679C();
    v190 = sub_237C0612C();
    OUTLINED_FUNCTION_2_65();
    v192 = *(v191 - 256);
    v192();
    *(v179 + 32) = v190;
    *(v179 + 40) = -1;
    sub_237C0611C();
    v193 = v255;
    sub_237C0681C();
    v194 = (v192)(v169, v165);
    MEMORY[0x28223BE20](v194);
    OUTLINED_FUNCTION_17_14();
    *(v195 - 16) = v193;
    sub_237C0619C();
    *&v258 = a7;
    v196 = MEMORY[0x277D83A90];
    v197 = MEMORY[0x277D2CF38];
    sub_237C066CC();
    sub_237C0669C();
    v198 = OUTLINED_FUNCTION_16_16();
    v68(v198);
    v260 = v196;
    v261 = v197;
    *&v258 = a5;
    sub_237C065DC();
    OUTLINED_FUNCTION_64();
    v199 = v241;
    OUTLINED_FUNCTION_20_26(v200, v201, v202, v241);
    sub_237C0680C();
    v260 = MEMORY[0x277D83A90];
    v261 = v197;
    *&v258 = v109;
    sub_237C065DC();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_20_26(v203, v204, v205, v199);
    sub_237C0680C();
    sub_237C066DC();
    OUTLINED_FUNCTION_15_33(&v262);
    sub_237C062FC();
    v206 = OUTLINED_FUNCTION_12_35();
    v68(v206);
    OUTLINED_FUNCTION_27_13();
    sub_237C066BC();
    v207 = OUTLINED_FUNCTION_1_15();
    v68(v207);
    OUTLINED_FUNCTION_24_25(&v253);
    sub_237C066DC();
    sub_237C062FC();
    v208 = OUTLINED_FUNCTION_87_0();
    v68(v208);
    sub_237C066DC();
    v209 = OUTLINED_FUNCTION_12_35();
    v68(v209);
    sub_237C0676C();
    v210 = OUTLINED_FUNCTION_1_15();
    v68(v210);
    v211 = OUTLINED_FUNCTION_29_11();
    v68(v211);
    v212 = OUTLINED_FUNCTION_13_29();
    v68(v212);
    v213 = OUTLINED_FUNCTION_16_16();
    v68(v213);
    v214 = OUTLINED_FUNCTION_55_1();
    v68(v214);
    v215 = OUTLINED_FUNCTION_29_11();
    v68(v215);
    v216 = OUTLINED_FUNCTION_13_29();
    v68(v216);
    v217 = OUTLINED_FUNCTION_1_15();
    v68(v217);
    v260 = MEMORY[0x277D839F8];
    v261 = MEMORY[0x277D2CF30];
    v258 = 0x3FD0000000000000;
    sub_237C065DC();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_20_26(v218, v219, v220, v241);
    sub_237C0680C();
    sub_237C066BC();
    sub_237C066BC();
    v221 = OUTLINED_FUNCTION_16_16();
    v68(v221);
    OUTLINED_FUNCTION_27_13();
    sub_237C066BC();
    v222 = OUTLINED_FUNCTION_55_1();
    v68(v222);
    sub_237C066AC();
    v223 = OUTLINED_FUNCTION_29_11();
    v68(v223);
    sub_237C066BC();
    v224 = OUTLINED_FUNCTION_1_15();
    v68(v224);
    v225 = OUTLINED_FUNCTION_13_29();
    v68(v225);
    v226 = OUTLINED_FUNCTION_16_16();
    v68(v226);
    v227 = OUTLINED_FUNCTION_12_35();
    v68(v227);
    v228 = OUTLINED_FUNCTION_87_0();
    v68(v228);
    (v68)(v245, v31);
    (v68)(v256, v31);
    v229 = OUTLINED_FUNCTION_29_11();
    v68(v229);
    v230 = v232[6];
    OUTLINED_FUNCTION_26_19();
    v231();
    sub_237B31948(v236);
    __swift_storeEnumTagSinglePayload(v230, 0, 1, v31);
    return sub_237B319A4(v230, v233);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_237B317F8()
{
  v0 = sub_237C0683C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  sub_237C067FC();
  sub_237C0673C();
  v8 = *(v1 + 8);
  v8(v5, v0);
  sub_237C0630C();
  return (v8)(v7, v0);
}

uint64_t sub_237B31948(uint64_t a1)
{
  v2 = _s18TemporalClassifierV6OutputVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237B319A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_3_65(__n128 *a1)
{
  result = *(v1 - 384);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_28()
{
  v2 = *(v0 - 352);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_25()
{

  return sub_237C0680C();
}

void sub_237B31B30()
{
  v0 = NSTemporaryDirectory();
  v1 = sub_237C086EC();
  v3 = v2;

  qword_27DEACE98 = v1;
  unk_27DEACEA0 = v3;
}

uint64_t sub_237B31B80@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v6 = sub_237C0714C();
  if (v6 != sub_237C0714C())
  {
    sub_237C0714C();
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_0_70();
    sub_237C0714C();
    result = OUTLINED_FUNCTION_1_68();
    v2 = 0xEF736E6F69746172;
    v11 = 0x657469202E78614DLL;
    goto LABEL_16;
  }

  v6 = sub_237C070EC();
  if (v6 != sub_237C070EC())
  {
    sub_237C070EC();
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_0_70();
    sub_237C070EC();
    result = OUTLINED_FUNCTION_1_68();
    v2 = 0xEA00000000006874;
    v11 = 0x706564202E78614DLL;
    goto LABEL_16;
  }

  sub_237C0718C();
  OUTLINED_FUNCTION_3_66();
  sub_237C0718C();
  if (v3 != v7)
  {
    OUTLINED_FUNCTION_2_66();
    sub_237C0718C();
    sub_237C08A6C();
    OUTLINED_FUNCTION_0_70();
    sub_237C0718C();
    result = sub_237C08A6C();
    v11 = 0xD000000000000013;
    goto LABEL_16;
  }

  sub_237C0716C();
  OUTLINED_FUNCTION_3_66();
  sub_237C0716C();
  if (v3 != v8)
  {
    v11 = 0xD000000000000011;
    OUTLINED_FUNCTION_2_66();
    sub_237C0716C();
    sub_237C08A6C();
    OUTLINED_FUNCTION_0_70();
    sub_237C0716C();
LABEL_13:
    result = sub_237C08A6C();
    goto LABEL_16;
  }

  v6 = sub_237C070AC();
  if (v6 != sub_237C070AC())
  {
    sub_237C070AC();
    OUTLINED_FUNCTION_1_68();
    OUTLINED_FUNCTION_0_70();
    sub_237C070AC();
    result = OUTLINED_FUNCTION_1_68();
    v2 = 0xEB00000000646565;
    v11 = 0x73206D6F646E6152;
    goto LABEL_16;
  }

  sub_237C0710C();
  OUTLINED_FUNCTION_3_66();
  sub_237C0710C();
  if (v3 != v9)
  {
    sub_237C0710C();
    sub_237C08A6C();
    OUTLINED_FUNCTION_0_70();
    sub_237C0710C();
    result = sub_237C08A6C();
    v2 = 0xEE00656C706D6173;
    v11 = 0x2062757320776F52;
    goto LABEL_16;
  }

  sub_237C0712C();
  OUTLINED_FUNCTION_3_66();
  sub_237C0712C();
  if (v3 != v10)
  {
    v11 = 0xD000000000000011;
    OUTLINED_FUNCTION_2_66();
    sub_237C0712C();
    sub_237C08A6C();
    OUTLINED_FUNCTION_0_70();
    sub_237C0712C();
    goto LABEL_13;
  }

  v11 = 0;
  v2 = 0;
  a1 = 0;
  v6 = 0;
  result = 0;
  v13 = 0;
LABEL_16:
  *a2 = v11;
  a2[1] = v2;
  a2[2] = a1;
  a2[3] = v6;
  a2[4] = result;
  a2[5] = v13;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_68()
{

  return sub_237C0924C();
}

uint64_t MLImageClassifier.ModelParameters.ClassifierType.hashValue.getter()
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](0);
  return sub_237C0940C();
}

unint64_t sub_237B31F64()
{
  result = qword_27DE9D320;
  if (!qword_27DE9D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D320);
  }

  return result;
}

_BYTE *_s14ClassifierTypeOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x237B32074);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237B320AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v235 = a8;
  LODWORD(v216) = a4;
  if (a4)
  {
    v11 = 1;
    v12 = OUTLINED_FUNCTION_117_0();
    sub_2379DBCF4(v12, v13);
    v14 = MEMORY[0x2383DDAC0](0);
    if (!v14)
    {
      goto LABEL_88;
    }

    v15 = v14;
    v16 = a7;
    type metadata accessor for CMLSequence();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = 1;
  }

  else
  {
    v16 = a7;
    v18 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v18, v19);
    v17 = sub_237B6C208(&v233);
  }

  *&v225 = a5;
  *(&v225 + 1) = a6;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_71();
  v20 = sub_237AC1AB8(sub_2379F345C);

  if ((v20 & 1) == 0)
  {
    sub_2379DBC9C(a3, v216 & 1);
    OUTLINED_FUNCTION_7_36();
    v25 = a5;
    v26 = a6;
LABEL_31:
    MEMORY[0x2383DC360](v25, v26);
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v91 = swift_allocError();
    *v92 = v225;
    OUTLINED_FUNCTION_23_3(v91, v92);
    swift_willThrow();
    return;
  }

  v21 = v235;
  if (v216)
  {
    v11 = 1;
    sub_2379DBC9C(a3, 1);
    v22 = MEMORY[0x2383DDAC0](0);
    if (!v22)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      sub_2379DBC9C(v11, 1);
      goto LABEL_93;
    }

    v23 = v22;
    type metadata accessor for CMLSequence();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = 1;
  }

  else
  {
    sub_237B6C208(&v233);
    v27 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v27, v28);
  }

  *&v225 = v16;
  *(&v225 + 1) = v21;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_71();
  v29 = sub_237AC1AB8(sub_2379F57B8);
  v209 = v9;

  if ((v29 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_36();
    v25 = v16;
    v26 = v21;
    goto LABEL_31;
  }

  v202 = v16;
  v233 = a3;
  OUTLINED_FUNCTION_18_30();
  v31 = v30 & 1;
  v234 = v30 & 1;
  v231 = v32;
  v232 = v30 & 1;
  sub_2379DBCF4(v32, v30 & 1);
  MLDataTable.subscript.getter();
  v227 = v229;
  v228 = v230;
  MLUntypedColumn.dropDuplicates()(&v225);
  sub_2379DBC9C(v227, v228);
  v231 = v225;
  v232 = BYTE8(v225);
  Array<A>.init(_:)(&v231);
  v34 = v33;
  v35 = *(v33 + 16);
  v197 = v33;
  if (!v35)
  {
    v215 = MEMORY[0x277D84F90];
    v39 = a3;
    goto LABEL_33;
  }

  v207 = v31;
  v227 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v36 = v227;
  v37 = (v34 + 48);
  v204 = v35;
  v38 = v35;
  v39 = a3;
  do
  {
    v214 = v36;
    v40 = *(v37 - 2);
    v41 = *(v37 - 1);
    v42 = *v37;
    OUTLINED_FUNCTION_18_30();
    v222 = v42;
    if (v43)
    {
      swift_willThrow();
      v44 = OUTLINED_FUNCTION_12_35();
      sub_2379E9288(v44, v45, v42);
    }

    else
    {
      v46 = v39[2];
      swift_retain_n();
      v47 = OUTLINED_FUNCTION_12_35();
      sub_2379E9288(v47, v48, v42);
      OUTLINED_FUNCTION_12_36();
      v49 = sub_237B6ACC0();
      if (!v209)
      {
        v79 = v49;

        type metadata accessor for _UntypedColumn();
        v80 = swift_allocObject();
        v81 = v42;
        v82 = v80;
        *(v80 + 16) = v79;
        *&v225 = v40;
        *(&v225 + 1) = v41;
        v226 = v81;
        v57 = sub_237A60280(4, v80, &v225);
        sub_2379DBC9C(v82, 0);
        v61 = 0;
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_25_20();

    OUTLINED_FUNCTION_6_50();
    v50 = OUTLINED_FUNCTION_12_36();
    MEMORY[0x2383DC360](v50);
    MEMORY[0x2383DC360](34, 0xE100000000000000);
    v51 = v225;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v52 = swift_allocError();
    *v53 = v51;
    OUTLINED_FUNCTION_19_26(v52, v53);
    *&v225 = v54;
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v56 = sub_237C0925C();
    if (v56)
    {
      v57 = v56;
      v58 = OUTLINED_FUNCTION_35_6();
      sub_2379DBC9C(v58, v59);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v57 = swift_allocError();
      *v60 = v52;
    }

    v61 = 1;
    v62 = OUTLINED_FUNCTION_35_6();
    sub_2379DBC9C(v62, v63);
LABEL_22:
    v231 = a3;
    OUTLINED_FUNCTION_18_30();
    v232 = v64 & 1;
    *&v225 = v57;
    BYTE8(v225) = v61;
    MLDataTable.subscript.getter(&v225, &v229);
    sub_2379DBC9C(v225, SBYTE8(v225));
    v65 = v229;
    v66 = v230;
    if (v230)
    {
      swift_willThrow();
      v209 = 0;
      OUTLINED_FUNCTION_25_20();

      OUTLINED_FUNCTION_6_50();
      MEMORY[0x2383DC360](v202, v235);
      MEMORY[0x2383DC360](34, 0xE100000000000000);
      v68 = v225;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v69 = swift_allocError();
      *v70 = v68;
      OUTLINED_FUNCTION_19_26(v69, v70);
      sub_2379DBC9C(v65, v66);
      v71 = OUTLINED_FUNCTION_12_35();
      sub_2379E8CE8(v71, v72, v222);
      v73 = OUTLINED_FUNCTION_117_0();
      sub_2379DBC9C(v73, v74);
      v75 = 0uLL;
      v76 = 6;
    }

    else
    {
      v67 = v229[2];
      swift_retain_n();
      v83 = sub_237B6ACC0();
      v209 = 0;
      sub_2379DBC9C(v65, 0);

      type metadata accessor for _UntypedColumn();
      v84 = swift_allocObject();
      v84[2] = v83;
      sub_2379DBCF4(v84, 0);
      sub_237A607E0(0, &v225);
      v85 = OUTLINED_FUNCTION_12_35();
      sub_2379E8CE8(v85, v86, v222);
      v87 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v87, v88);
      v89 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v89, v90);
      v75 = v225;
      v76 = v226;
    }

    v36 = v214;
    v227 = v214;
    v77 = v214[2];
    v39 = a3;
    if (v77 >= v214[3] >> 1)
    {
      v221 = v75;
      sub_237AC8A94();
      v75 = v221;
      v39 = a3;
      v36 = v227;
    }

    v37 += 24;
    v36[2] = v77 + 1;
    v78 = &v36[3 * v77];
    *(v78 + 2) = v75;
    v78[48] = v76;
    --v38;
  }

  while (v38);
  v215 = v36;
  v21 = v235;
  v31 = v207;
  v35 = v204;
LABEL_33:

  v94 = sub_237B6AA54(v93, 0, v35);
  v95 = sub_237AC7AC4(MEMORY[0x277D84F90], v35);
  *&v225 = v39;
  BYTE8(v225) = v31;
  OUTLINED_FUNCTION_11_39();
  v229 = v231;
  v230 = v232;
  Array<A>.init(_:)(&v229);
  v11 = 0;
  v205 = *(v96 + 16);
  v203 = v96;
  v97 = (v96 + 48);
  v208 = v94;
  while (v205 != v11)
  {
    if (v11 >= *(v203 + 16))
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
      v194 = OUTLINED_FUNCTION_117_0();
      sub_2379DBC9C(v194, v195);
      goto LABEL_90;
    }

    if (!*(v94 + 16))
    {
      goto LABEL_83;
    }

    v98 = *(v97 - 2);
    v99 = *(v97 - 1);
    v100 = *v97;
    v101 = OUTLINED_FUNCTION_6_41();
    sub_2379E9288(v101, v102, v103);
    v104 = OUTLINED_FUNCTION_6_41();
    v107 = sub_237ACB180(v104, v105, v106);
    if ((v108 & 1) == 0)
    {
      goto LABEL_84;
    }

    v109 = *(*(v94 + 56) + 8 * v107);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v109 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      sub_237B05F1C(v95);
      v95 = v119;
      if ((v109 & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }
    }

    if (v109 >= *(v95 + 16))
    {
      goto LABEL_86;
    }

    v218 = v11;
    v110 = v95 + 32;
    v111 = *(v95 + 32 + 8 * v109);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v95 + 32 + 8 * v109) = v111;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237BC0EB4(0, *(v111 + 16) + 1, 1, v111);
      v111 = v120;
      *(v110 + 8 * v109) = v120;
    }

    v114 = *(v111 + 16);
    v113 = *(v111 + 24);
    if (v114 >= v113 >> 1)
    {
      sub_237BC0EB4(v113 > 1, v114 + 1, 1, v111);
      *(v110 + 8 * v109) = v121;
    }

    v115 = OUTLINED_FUNCTION_6_41();
    sub_2379E8CE8(v115, v116, v117);
    v118 = *(v110 + 8 * v109);
    *(v118 + 16) = v114 + 1;
    *(v118 + 8 * v114 + 32) = v218;
    v97 += 24;
    v11 = v218 + 1;
    v21 = v235;
    v94 = v208;
  }

  OUTLINED_FUNCTION_24_22();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  *(inited + 32) = v97;
  *(inited + 40) = 0xE700000000000000;
  *&v225 = v95;
  MEMORY[0x28223BE20](inited);
  OUTLINED_FUNCTION_11_33();
  *(v123 - 16) = &v225;

  v124 = sub_237BBDC94(sub_237B339A8);
  v126 = v125;

  *(inited + 48) = v124;
  *(inited + 56) = v126 & 1;
  *(inited + 64) = v202;
  *(inited + 72) = v21;
  v128 = v21;
  *&v225 = v215;
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_11_33();
  *(v129 - 16) = &v225;

  v130 = sub_237BBDC94(sub_237A7B748);
  v132 = v131;

  *(inited + 80) = v130;
  *(inited + 88) = v132 & 1;
  *(inited + 96) = a5;
  *(inited + 104) = a6;
  *&v225 = v197;
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_11_33();
  *(v134 - 16) = &v225;

  v135 = sub_237BBDC94(sub_237A7B8A0);
  v137 = v136;

  *(inited + 112) = v135;
  *(inited + 120) = v137 & 1;
  v138 = sub_237C085AC();
  sub_237B6CB9C(v138, &v225);
  if (v209)
  {
    sub_2379DBC9C(v233, v234);

    return;
  }

  v139 = v225;
  v140 = BYTE8(v225);
  sub_237B064E0(a1, a2, v225, BYTE8(v225), v202, v128, &v225);
  LODWORD(v205) = v140;
  v219 = v225;
  LODWORD(v235) = BYTE8(v225);
  *&v225 = a3;
  OUTLINED_FUNCTION_18_30();
  BYTE8(v225) = v141 & 1;
  OUTLINED_FUNCTION_11_39();
  v142 = v231;
  v143 = v232;
  v210 = v139;
  if (v232)
  {
    v144 = -1;
  }

  else
  {
    v145 = v231[2];

    v144 = sub_237A2F128();
    v146 = OUTLINED_FUNCTION_4_26();
    sub_2379DBC9C(v146, v147);
  }

  sub_2379DBC9C(v142, v143);
  v148 = sub_237AC7A20(0, v144);
  *&v225 = v219;
  BYTE8(v225) = v235;
  OUTLINED_FUNCTION_24_22();
  MLDataTable.subscript.getter();
  v11 = v231;
  if (v232 == 1)
  {
    goto LABEL_92;
  }

  v149 = v231[2];

  v150 = sub_237A2F128();
  v151 = OUTLINED_FUNCTION_4_26();
  sub_2379DBC9C(v151, v152);
  v153 = OUTLINED_FUNCTION_4_26();
  sub_2379DBC9C(v153, v154);
  if (v150 < 0)
  {
LABEL_93:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if (!v150)
  {
    goto LABEL_75;
  }

  v155 = 0;
  while (2)
  {
    v231 = v219;
    v232 = v235;
    MLDataTable.subscript.getter();
    if (v230)
    {
      goto LABEL_89;
    }

    v156 = v150;
    v157 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v157, v158);
    sub_237A607E0(v155, &v225);
    v159 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v159, v160);
    v161 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v161, v162);
    if (v226 != 3)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    a3 = (v155 + 1);
    v216 = *(&v225 + 1);
    v11 = v225;

    for (i = 0; i != sub_237A2E9F4(); ++i)
    {
      v164 = sub_237A2E9C8(i);
      sub_237AFC548(v164, &v225);
      v165 = v225;
      v166 = v226;
      if (i >= sub_237A2E9F4())
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v166)
      {
        goto LABEL_87;
      }

      sub_2379DF794(v219, v235, &v231);
      if (v232)
      {
        v167 = OUTLINED_FUNCTION_117_0();
        sub_2379DBC9C(v167, v168);
        goto LABEL_67;
      }

      v169 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v169, v170);
      sub_237A607E0(v155, &v225);
      v171 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v171, v172);
      v173 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v173, v174);
      v175 = v225;
      if (v226)
      {
        sub_2379E8CE8(v225, *(&v225 + 1), v226);
LABEL_67:
        v175 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_68;
        }

        goto LABEL_72;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_68:
        if ((v165 & 0x8000000000000000) != 0)
        {
          goto LABEL_80;
        }

        goto LABEL_69;
      }

LABEL_72:
      sub_237B05F04(v148);
      v148 = v176;
      if ((v165 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

LABEL_69:
      if (v165 >= *(v148 + 16))
      {
        goto LABEL_81;
      }

      *(v148 + 8 * v165 + 32) = v175;
    }

    sub_2379E8CE8(v11, v216, 3);

    ++v155;
    v150 = v156;
    if (a3 != v156)
    {
      continue;
    }

    break;
  }

LABEL_75:

  *&v225 = v148;
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_0_71();
  v178 = sub_237BBDC94(sub_2379F5698);
  v180 = v179;

  sub_237B6C670(v181, v182, v183, v184, v185, v186, v187, v188, v196, v197, a9, a1, a2, v202, v203, v205, v208, v210, a6, a5, v215, v216, a3, v219, v95, *(&v221 + 1), v223, v224);
  *&v225 = v178;
  BYTE8(v225) = v180 & 1;
  sub_237B6C9CC();
  sub_2379DBC9C(v225, SBYTE8(v225));
  v189 = v233;
  v190 = v234;
  if (v234)
  {
    v191 = v233;
  }

  else
  {
    v192 = OUTLINED_FUNCTION_85();
    sub_2379DBCF4(v192, v193);
    sub_237B6C588();
  }

  sub_2379DBC9C(v220, v235);
  sub_2379DBC9C(v211, v206);
  sub_2379DBC9C(v189, v190);
  *v199 = v189;
  *(v199 + 8) = v190;
}

void MLDataTable.stratifiedSplit<A>(proportions:on:generator:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *(v7 + 8);
  v9 = *v7;
  v10 = v8;
  sub_237B04410(a1, a4, &v9, a2, a3, a5, a6, a7);
}

uint64_t MLDataTable.stratifiedSplit(proportions:on:seed:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *v5;
  v11 = *(v5 + 8);
  sub_237B03618(a4, __src);
  sub_237B064E0(a1, __src, v10, v11, a2, a3, a5);
  memcpy(v13, __src, sizeof(v13));
  return sub_237B07C38(v13);
}

void *MLDataTable.randomSplit(by:seed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  if (*(v3 + 8))
  {
    v7 = v6;
    v10 = v6;
    sub_237B333C4(v6, 0, 1);
    *a1 = v6;
    *(a1 + 8) = 1;
    *a2 = v6;
    *(a2 + 8) = 1;

    return v6;
  }

  else
  {
    v9 = v6[2];

    v11 = sub_237A30660(a3);
    v13 = v12;
    v14 = OUTLINED_FUNCTION_4_26();
    sub_2379DBC9C(v14, v15);
    type metadata accessor for _DataTable();
    swift_allocObject();
    v16 = sub_237B6C578(v11);
    swift_allocObject();
    result = sub_237B6C578(v13);
    *a1 = v16;
    *(a1 + 8) = 0;
    *a2 = result;
    *(a2 + 8) = 0;
  }

  return result;
}

void sub_237B333C4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void MLDataTable.randomSplitBySequence(proportion:by:on:seed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, double a8)
{
  v16 = *v8;
  v17 = *(v8 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B670;
  *(inited + 32) = a8;
  *(inited + 40) = 1.0 - a8;
  sub_237B03618(a7, __src);
  sub_237B320AC(inited, __src, v16, v17, a3, a4, a5, a6, &v58);
  swift_setDeallocating();
  memcpy(__dst, __src, 0x78uLL);
  sub_237B07C38(__dst);
  v19 = v58;
  v20 = v59;
  OUTLINED_FUNCTION_5_53();
  v21 = v52;
  if (v53)
  {
    *&v50 = v52;
    v22 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      v23 = OUTLINED_FUNCTION_35_6();
      sub_2379DBC9C(v23, v24);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v25 = v52;
    }

    v26 = OUTLINED_FUNCTION_35_6();
    sub_2379DBC9C(v26, v27);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v50 = 0uLL;
    v51 = 0;
    sub_237A60280(4, v52, &v50);
    sub_2379E8CE8(v50, *(&v50 + 1), v51);
    sub_2379DBC9C(v21, 0);
  }

  OUTLINED_FUNCTION_4_58(v28, v29, v30, v31, v32, v33);
  sub_2379DBC9C(v52, v53);
  v34 = v54;
  v35 = v55;
  OUTLINED_FUNCTION_5_53();
  v36 = v52;
  if (v53)
  {
    *&v50 = v52;
    v37 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      sub_2379DBC9C(v36, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v38 = v36;
    }

    sub_2379DBC9C(v36, 1);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v50 = xmmword_237C138C0;
    v51 = 0;
    sub_237A60280(4, v36, &v50);
    sub_2379E8CE8(v50, *(&v50 + 1), v51);
    sub_2379DBC9C(v36, 0);
  }

  OUTLINED_FUNCTION_4_58(v39, v40, v41, v42, v43, v44);
  sub_2379DBC9C(v52, v53);
  v45 = v54;
  v46 = v55;
  *&v50 = v34;
  BYTE8(v50) = v35;
  sub_2379DBCF4(v34, v35);
  MLDataTable.size.getter();
  v47 = sub_237A018D0();
  sub_2379DBC9C(v34, v35);
  *&v50 = v45;
  BYTE8(v50) = v46;
  sub_2379DBCF4(v45, v46);
  MLDataTable.size.getter();
  v48 = sub_237A018D0();
  sub_2379DBC9C(v19, v20);
  sub_2379DBC9C(v45, v46);
  if (v47 >= v48)
  {
    *a1 = v45;
    *(a1 + 8) = v46;
    *a2 = v34;
    *(a2 + 8) = v35;
  }

  else
  {
    *a1 = v34;
    *(a1 + 8) = v35;
    *a2 = v45;
    *(a2 + 8) = v46;
  }
}

uint64_t MLDataTable.stratifiedSplitBySequence(proportions:by:on:seed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *v7;
  v15 = *(v7 + 8);
  sub_237B03618(a6, __src);
  sub_237B320AC(a1, __src, v14, v15, a2, a3, a4, a5, a7);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_237B07C38(__dst);
}

void MLDataTable.stratifiedSplitBySequence<A>(proportions:by:on:generator:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v10 = *(v9 + 8);
  v11 = *v9;
  v12 = v10;
  sub_237B04B7C(a1, a6, &v11, a2, a3, a4, a5, a7, a9, a8);
}

uint64_t OUTLINED_FUNCTION_4_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  va_arg(va1, void);
  v12 = va_arg(va1, void);
  v10 = v7;
  LOBYTE(v12) = v6;

  return MLDataTable.subscript.getter(va, va1);
}

void OUTLINED_FUNCTION_5_53()
{

  MLDataTable.subscript.getter();
}

void OUTLINED_FUNCTION_11_39()
{
  v2 = *(v0 - 360);

  MLDataTable.subscript.getter();
}

uint64_t OUTLINED_FUNCTION_12_36()
{
  result = *(v0 - 360);
  v2 = *(v0 - 368);
  return result;
}

uint64_t sub_237B33A98(uint64_t a1, const void *a2)
{
  v85 = a1;
  v4 = sub_237C07F1C();
  v5 = OUTLINED_FUNCTION_0_26(v4, &__dst[40]);
  v70 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v10 - v9);
  v11 = sub_237C05ADC();
  v12 = OUTLINED_FUNCTION_0_26(v11, &v89);
  v77 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v69 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v73 = &v68 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21_3(&v68 - v20);
  v21 = sub_237C07FEC();
  v22 = OUTLINED_FUNCTION_0_26(v21, &v90);
  v72 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v27 - v26);
  v28 = sub_237C0625C();
  v29 = OUTLINED_FUNCTION_0_26(v28, &v92);
  v83 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v34 - v33);
  v35 = sub_237C060DC();
  v36 = OUTLINED_FUNCTION_0_26(v35, &v91);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_0();
  v43 = v42 - v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = &v68 - v46;
  v48 = sub_237C0610C();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  OUTLINED_FUNCTION_2_0();
  memcpy(__dst, a2, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D328, &qword_237C138D8);
  v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D330, &qword_237C138E0) - 8);
  v51 = *(*v50 + 72);
  v52 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_237C0B660;
  v54 = (v53 + v52);
  v80 = v50[14];
  *v54 = 0x7365736F70;
  v54[1] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_237C0B680;
  v56 = v2 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  *(v55 + 32) = *(v56 + *(_s13GraphCNNModelVMa(0) + 40));
  *(v55 + 40) = vextq_s8(*(v2 + 24), *(v2 + 24), 8uLL);
  sub_237C0611C();
  v57 = sub_237C0616C();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v57);
  (*(v38 + 104))(v43, *MEMORY[0x277D2CCC8], v81);
  v58 = v82;
  sub_237C067BC();
  sub_237C0683C();
  sub_237C085AC();
  v86[0] = v2;

  sub_237C0624C();
  sub_237B3506C();
  v59 = v85;
  v60 = v88;
  sub_237C0646C();
  if (v60)
  {

    (*(v83 + 8))(v58, v84);
  }

  else
  {
    v62 = v72;
    v63 = v76;

    (*(v83 + 8))(v58, v84);

    (*(v77 + 16))(v75, v59, v78);
    v64 = v74;
    sub_237C07FDC();
    sub_237C07F2C();
    sub_237C07D8C();
    sub_237B34948(v63);
    v65 = v69;
    sub_237C07F3C();
    v66 = v71;
    v67 = v70;
    (*(v77 + 8))(v65, v78);
    memcpy(v86, __dst, sizeof(v86));
    sub_237B34E3C(v64, v86);
    (*(v67 + 8))(v63, v66);
    return (*(v62 + 8))(v64, v79);
  }
}

uint64_t sub_237B3421C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C0610C();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D358, &qword_237C13A00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v53 - v12);
  v14 = sub_237C0683C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v61 = &v53 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v53 - v24;
  if (*(a1 + 16) == 1)
  {
    v57 = v23;
    sub_237B3BA90(a1, v13);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D360, &unk_237C13A08);
    if (__swift_getEnumTagSinglePayload(v13, 1, v26) == 1)
    {
      sub_237B351D8(v13);
    }

    else
    {
      v27 = v13[1];

      v28 = *(v15 + 32);
      v28(v22, v13 + *(v26 + 48), v14);
      v28(v25, v22, v14);
      v29 = v9;
      sub_237C0679C();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
      v30 = swift_allocObject();
      v55 = xmmword_237C0B680;
      *(v30 + 16) = xmmword_237C0B680;
      v31 = a2 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
      swift_beginAccess();
      v53 = _s13GraphCNNModelVMa(0);
      v54 = v31;
      *(v30 + 32) = *(v31 + *(v53 + 40));
      *(v30 + 40) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
      v32 = v58;
      sub_237C0611C();
      v33 = sub_237C060EC();
      v34 = sub_237C060EC();
      v35 = sub_237AC6FE0(v33, v34);

      v36 = v60;
      v37 = *(v59 + 8);
      v37(v32, v60);
      v37(v29, v36);
      if (v35)
      {
        v38 = v57;
        sub_237C0664C();
        v39 = v61;
        sub_237AEEE60();
        v40 = *(v15 + 8);
        v40(v38, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D328, &qword_237C138D8);
        v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D330, &qword_237C138E0) - 8);
        v42 = *(*v41 + 72);
        v43 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_237C0B660;
        v45 = (v44 + v43);
        v46 = v41[14];
        *v45 = 0xD000000000000010;
        v45[1] = 0x8000000237C1CC10;
        (*(v15 + 16))(v44 + v43 + v46, v39, v14);
        v47 = sub_237C085AC();
        v40(v39, v14);
        v40(v25, v14);
        return v47;
      }

      v62 = 0;
      v63 = 0xE000000000000000;
      sub_237C08EDC();

      v62 = 0xD00000000000001ALL;
      v63 = 0x8000000237C1CC50;
      v49 = swift_allocObject();
      *(v49 + 16) = v55;
      *(v49 + 32) = *(v54 + *(v53 + 40));
      *(v49 + 40) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
      v50 = MEMORY[0x2383DC4F0]();
      v52 = v51;

      MEMORY[0x2383DC360](v50, v52);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
    }
  }

  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237B34878@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237B3421C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_237B348A8()
{
  sub_237B3506C();

  return sub_237C0642C();
}

uint64_t sub_237B348F4()
{
  sub_237B3506C();

  return sub_237C0643C();
}

uint64_t sub_237B34948(uint64_t a1)
{
  v32 = sub_237C0818C();
  v29 = *(v32 - 8);
  v2 = *(v29 + 64);
  v3 = MEMORY[0x28223BE20](v32);
  v35 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v34 = sub_237C0817C();
  v30 = *(v34 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_237C075DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_237C07DEC();
  sub_237C07E2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v15 = *(sub_237C07B9C() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_237C0B670;
  sub_237C0756C();
  (*(v11 + 104))(v14, *MEMORY[0x277D25130], v10);
  v18 = v29;
  sub_237C07B3C();
  sub_237C075CC();
  v19 = v32;
  v31 = "shape does not match.";
  sub_237C07B3C();
  sub_237C07ECC();
  sub_237C07E3C();
  v20 = (*(v18 + 88))(v6, v19);
  if (v20 == *MEMORY[0x277D253D8])
  {
    v21 = v20;
    (*(v18 + 96))(v6, v19);
    v22 = v30;
    v23 = v34;
    (*(v30 + 32))(v9, v6, v34);
    v24 = *(v33 + 16);

    sub_237B66D5C(v25, 0xD000000000000010, 0x8000000237C1CC10, 0xD000000000000012, v31 | 0x8000000000000000, 0x6C6562616CLL, 0xE500000000000000);

    v26 = v35;
    (*(v22 + 16))(v35, v9, v23);
    (*(v18 + 104))(v26, v21, v19);
    sub_237C07E4C();
    return (*(v22 + 8))(v9, v23);
  }

  else
  {
    (*(v18 + 8))(v6, v19);
    result = sub_237C090DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B34E3C(uint64_t a1, uint64_t *a2)
{
  v21[2] = a1;
  v3 = sub_237C07FBC();
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[5];
  v21[1] = a2[4];
  v13 = a2[6];
  v12 = a2[7];
  v14 = a2[8];
  sub_237C07FAC();
  if (v8)
  {

    sub_237C07F7C();

    sub_237C07F4C();

    sub_237C07F9C();
    if (v11)
    {

      sub_237C07F8C();
    }

    if (v14)
    {

      sub_237C07F6C();
    }
  }

  else
  {
    v15 = NSFullUserName();
    sub_237C086EC();

    sub_237C07F7C();
  }

  sub_237BAC418();
  v16 = sub_237C07F5C();
  v18 = v17;
  v19 = *v17;
  swift_isUniquelyReferenced_nonNull_native();
  v25 = *v18;
  sub_237B40C78();
  *v18 = v25;
  v16(v24, 0);
  sub_237C07FCC();
  return (*(v22 + 8))(v6, v23);
}

unint64_t sub_237B3506C()
{
  result = qword_27DE9D338;
  if (!qword_27DE9D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D338);
  }

  return result;
}

unint64_t sub_237B350D4()
{
  result = qword_27DE9D340;
  if (!qword_27DE9D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D340);
  }

  return result;
}

unint64_t sub_237B3512C()
{
  result = qword_27DE9D348;
  if (!qword_27DE9D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D348);
  }

  return result;
}

unint64_t sub_237B35184()
{
  result = qword_27DE9D350;
  if (!qword_27DE9D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D350);
  }

  return result;
}

uint64_t sub_237B351D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D358, &qword_237C13A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MLDecisionTreeClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLDecisionTreeClassifier() + 20));

  return v1;
}

uint64_t type metadata accessor for MLDecisionTreeClassifier()
{
  result = qword_27DE9D390;
  if (!qword_27DE9D390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLDecisionTreeClassifier.model.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLDecisionTreeClassifier() + 20);

  *(v1 + v2) = v0;
}

void (*MLDecisionTreeClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLDecisionTreeClassifier() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLDecisionTreeClassifier.targetColumn.getter()
{
  v1 = (v0 + *(type metadata accessor for MLDecisionTreeClassifier() + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLDecisionTreeClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLDecisionTreeClassifier() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*MLDecisionTreeClassifier.targetColumn.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLDecisionTreeClassifier() + 24);
  return nullsub_1;
}

uint64_t MLDecisionTreeClassifier.featureColumns.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLDecisionTreeClassifier() + 28));
}

uint64_t MLDecisionTreeClassifier.featureColumns.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLDecisionTreeClassifier() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*MLDecisionTreeClassifier.featureColumns.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLDecisionTreeClassifier() + 28);
  return nullsub_1;
}

uint64_t MLDecisionTreeClassifier.modelParameters.getter()
{
  OUTLINED_FUNCTION_146();
  v2 = v1 + *(type metadata accessor for MLDecisionTreeClassifier() + 32);

  return sub_237B35548(v2, v0);
}

uint64_t MLDecisionTreeClassifier.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLDecisionTreeClassifier();
  return OUTLINED_FUNCTION_22_23(*(v0 + 36));
}

uint64_t MLDecisionTreeClassifier.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLDecisionTreeClassifier();
  return OUTLINED_FUNCTION_22_23(*(v0 + 40));
}

uint64_t sub_237B355FC()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9D368);
  v1 = __swift_project_value_buffer(v0, qword_27DE9D368);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLDecisionTreeClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A6B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v2, qword_27DE9D368);
  OUTLINED_FUNCTION_3_67();
  return sub_237B39F4C(v3, a1);
}

void MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v236 = v20;
  v243 = v23;
  v237 = v24;
  v244 = v25;
  v234 = v26;
  v246 = v27;
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
  v220 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_134();
  v222 = v48;
  v221 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_58();
  v223 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55);
  v227 = &v212 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_21_3(&v212 - v61);
  v228 = sub_237C0602C();
  v62 = OUTLINED_FUNCTION_4(v228);
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
  v242 = sub_237C05DBC();
  v74 = OUTLINED_FUNCTION_0(v242);
  v239 = v75;
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
  v235 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v82 = OUTLINED_FUNCTION_4(v235);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_2_0();
  v256 = v86 - v85;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v87 = OUTLINED_FUNCTION_4(v245);
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
  v96 = &v212 - v95;
  v241 = sub_237C071DC();
  v97 = OUTLINED_FUNCTION_0(v241);
  v240 = v98;
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v101);
  v103 = &v212 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v104);
  v106 = v105;
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v109);
  v111 = &v212 - v110;
  v112 = type metadata accessor for MLDecisionTreeClassifier();
  v113 = (v29 + *(v112 + 36));
  sub_237C06FAC();
  v114 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v115 = v113 + *(v114 + 20);
  sub_2379E51D0();
  v116 = v113 + *(v114 + 24);
  sub_2379E5C70();
  (*(v106 + 8))(v111, v104);
  v117 = v29;
  v118 = v243;
  *v113 = 0;
  v119 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v238 = v113;
  swift_storeEnumTagMultiPayload();
  v219 = v112;
  v120 = *(v112 + 40);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v121 = swift_allocError();
  *v122 = 0xD0000000000000C0;
  v122[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v121, v122);
  *(v117 + v120) = v123;
  v217 = v119;
  swift_storeEnumTagMultiPayload();
  sub_237B35548(v118, &v251);
  sub_237C071CC();
  sub_237C0715C();
  sub_237C070DC();
  sub_237C070FC();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237B36C58(&v251);
  sub_2379E9068(v118 + 8, &v249, &qword_27DE9A998, &unk_237C0C100);
  if (v250)
  {
    v124 = *(v245 + 48);
    sub_2379DAD24(&v249, &v251);
    v125 = v256;
    swift_dynamicCast();
    v126 = v246;
    v127 = v236;
    sub_237A07530(v96, &v96[v124], v246);
    if (v127)
    {

      sub_237B36C58(v118);
      (*(v239 + 8))(v126, v242);
      OUTLINED_FUNCTION_15_34();
      v128(v103, v241);
      OUTLINED_FUNCTION_5_54();
      sub_237B3A36C();
      sub_237B3A36C();
      sub_237B3A36C();
    }

    else
    {
      v236 = v120;
      OUTLINED_FUNCTION_5_54();
      sub_237B3A36C();
      v129 = v244;
      sub_237B19700(v96, v234, v244, v237);
      v235 = v130;

      v212 = v96;
      OUTLINED_FUNCTION_48_9(&v254);
      sub_2379E9068(v131, v132, v133, v134);
      v135 = *(v245 + 48);
      v136 = v242;
      if (__swift_getEnumTagSinglePayload(v256 + v135, 1, v242) == 1)
      {
        sub_2379D9054(v256 + v135, &qword_27DE9A9A0, &qword_237C0BF60);
        v137 = *(v239 + 8);
        v138 = (v239 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v139 = OUTLINED_FUNCTION_140_0();
        v137(v139);
      }

      else
      {
        OUTLINED_FUNCTION_38_12(&a14);
        v125 = v224;
        (*(v153 + 32))(v224, v256 + v135, v136);
        v237 = *(v96 + 1);
        v237(v256, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_237C0B660;
        *(inited + 32) = v234;
        *(inited + 40) = v129;

        sub_2379F2DA4();
        v231 = (v96 + 8);
        swift_setDeallocating();
        sub_237B9082C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
        v167 = swift_allocObject();
        *(v167 + 16) = xmmword_237C0B670;
        v168 = MEMORY[0x277D83B88];
        *(v167 + 32) = MEMORY[0x277D837D0];
        *(v167 + 40) = v168;
        sub_2379F30EC();
        v138 = v231 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v136 = v242;
        v137 = v237;
        v237(v125, v242);
      }

      v140 = v212;
      OUTLINED_FUNCTION_48_9(&v255);
      sub_2379E9068(v141, v142, v143, v144);
      sub_237C05DFC();
      v145 = OUTLINED_FUNCTION_140_0();
      v137(v145);
      v146 = v225;
      sub_2379E9068(v140, v225, &qword_27DE9ADC0, &unk_237C0BF40);
      v147 = v146 + *(v245 + 48);
      OUTLINED_FUNCTION_48_9(&v252);
      sub_237AE7128(v148, v149, v150, v151);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v125, 1, v136);
      v237 = v137;
      v231 = v138;
      if (EnumTagSinglePayload == 1)
      {
        (v137)(v146, v136);
        sub_2379D9054(v125, &qword_27DE9A9A0, &qword_237C0BF60);
        v140 = v229;
        __swift_storeEnumTagSinglePayload(v229, 1, 1, v228);
      }

      else
      {
        OUTLINED_FUNCTION_38_12(&v253);
        sub_237C05DFC();
        v155 = OUTLINED_FUNCTION_140_0();
        v137(v155);
        __swift_storeEnumTagSinglePayload(v140, 0, 1, v228);
        (v137)(v146, v136);
      }

      v156 = v236;
      v236 = *(v245 + 48);
      v157 = v226;
      (*(v240 + 16))(v226, v103, v241);
      v158 = v244;

      v159 = v235;

      v160 = sub_237AB7E28(v232, v140, v234, v158, v159, v157, v230);
      OUTLINED_FUNCTION_46_10(v160, &qword_27DE9A9A0, &qword_237C0BF60);
      OUTLINED_FUNCTION_71();
      v161 = v230;
      sub_237AB87DC(v162, v163, v164, v165, v166);
      if ((sub_237A37A64() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_17();
        OUTLINED_FUNCTION_48_9(&v248);
        sub_2379E9068(v169, v170, v171, v172);
        v173 = *(v245 + 48);
        sub_237C05D3C();
        OUTLINED_FUNCTION_14_29();
        v174();
        sub_237A37AEC(3);
        sub_2379D9054(v161 + v173, &qword_27DE9A9A0, &qword_237C0BF60);
        v175 = *(v230[3] + 16);
        sub_237A37AEC(3);
      }

      v176 = v219;
      v177 = (v117 + v219[6]);
      v178 = v244;
      *v177 = v234;
      v177[1] = v178;
      v236 = v176[8];
      sub_237B35548(v243, v117 + v236);
      *(v117 + v176[7]) = v235;
      OUTLINED_FUNCTION_2_67();
      v179 = v223;
      v180 = v222;
      sub_237B39F4C(v223, v222);
      v181 = (*(v220 + 80) + 16) & ~*(v220 + 80);
      swift_allocObject();
      OUTLINED_FUNCTION_21_26();
      sub_237B3A3C0(v180, v182 + v181);
      sub_2379DD56C();
      v184 = v183;

      *(v117 + v176[5]) = v184;
      OUTLINED_FUNCTION_2_67();
      sub_237B39F4C(v179, v117);
      v185 = v218;
      OUTLINED_FUNCTION_11();
      sub_237A5DEEC(v186);
      v234 = v184;
      v188 = *v117;
      v187 = v117[1];
      OUTLINED_FUNCTION_38_12(&v247);
      OUTLINED_FUNCTION_13_11();
      sub_237C05DFC();
      v233 = v188;
      v189 = v212;
      v232 = v187;
      sub_237C05DFC();
      v190 = v216;
      sub_237B0CBBC();
      v191 = v242;
      v237(v185, v242);
      OUTLINED_FUNCTION_6_51();
      OUTLINED_FUNCTION_48_9(&v244);
      sub_237B3A3C0(v192, v193);
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v190, v238);
      v194 = v215;
      sub_2379E9068(v189, v215, &qword_27DE9ADC0, &unk_237C0BF40);
      v195 = *(v245 + 48);
      if (__swift_getEnumTagSinglePayload(v194 + v195, 1, v191) == 1)
      {
        sub_237B36C58(v243);
        OUTLINED_FUNCTION_52_11();
        v197 = *(v196 - 256);
        v197();
        OUTLINED_FUNCTION_1_69();
        sub_237B3A36C();
        sub_2379D9054(v189, &qword_27DE9ADC0, &unk_237C0BF40);
        v198 = OUTLINED_FUNCTION_8_38();
        v199(v198);
        OUTLINED_FUNCTION_0_72();
        OUTLINED_FUNCTION_60_8();
        sub_2379D9054(v194 + v195, &qword_27DE9A9A0, &qword_237C0BF60);
        (v197)(v194, v191);
      }

      else
      {
        (*(v239 + 32))(v214, v194 + v195, v191);
        OUTLINED_FUNCTION_52_11();
        (*(v200 - 256))();
        OUTLINED_FUNCTION_38_12(&v242);
        OUTLINED_FUNCTION_11();
        sub_237A5DEEC(v201);
        v202 = v232;
        sub_237C05DFC();
        sub_237C05DFC();
        OUTLINED_FUNCTION_38_12(&v240);
        sub_237B0CBBC();
        OUTLINED_FUNCTION_52_11();
        v204 = *(v203 - 256);
        v204();
        OUTLINED_FUNCTION_49_7();
        (v204)(v246, v191);
        v205 = OUTLINED_FUNCTION_140_0();
        (v204)(v205);
        OUTLINED_FUNCTION_1_69();
        sub_237B3A36C();
        v206 = OUTLINED_FUNCTION_31_17();
        sub_2379D9054(v206, v207, v208);
        v209 = OUTLINED_FUNCTION_8_38();
        v210(v209);
        OUTLINED_FUNCTION_6_51();
        v211 = v213;
        sub_237B3A3C0(v202, v213);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_72();
        OUTLINED_FUNCTION_60_8();
        sub_2379DC1F8(v211, v117 + v156);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237B36CB0()
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

uint64_t MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  sub_237B35548(a5, &v21);
  MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v16, a2, a3, a4, &v21, v17, v18, v19, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  return sub_237B36C58(a5);
}

void MLDecisionTreeClassifier.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v99 = v0;
  v108 = v1;
  v3 = v2;
  v89 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_4(v89);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v8);
  v9 = sub_237C071DC();
  v105 = OUTLINED_FUNCTION_0(v9);
  v106 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_14_0();
  v96 = v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_138();
  v104 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v97 = v17;
  v103 = type metadata accessor for AnyTreeClassifier();
  v18 = OUTLINED_FUNCTION_4(v103);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v86 - v24;
  v26 = type metadata accessor for AnyTreeClassifierModel();
  v27 = OUTLINED_FUNCTION_1(v26);
  v93 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_134();
  v95 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_58();
  v92 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  v98 = v35;
  v91 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  v94 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  v46 = &v86 - v45;
  v47 = type metadata accessor for MLDecisionTreeClassifier();
  v48 = (v3 + *(v47 + 36));
  sub_237C06FAC();
  v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v50 = v48 + *(v49 + 20);
  sub_2379E51D0();
  v51 = *(v49 + 24);
  sub_2379E5C70();
  (*(v41 + 8))(v46, v39);
  *v48 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v102 = v48;
  swift_storeEnumTagMultiPayload();
  v86 = v47;
  v52 = *(v47 + 40);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v53 = swift_allocError();
  *v54 = 0xD0000000000000C0;
  v54[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v53, v54);
  *(v3 + v52) = v55;
  swift_storeEnumTagMultiPayload();
  v56 = *(v108 + *(type metadata accessor for MLCheckpoint() + 20));
  v101 = v52;
  switch(v56)
  {
    case 2:

      goto LABEL_4;
    default:
      v57 = sub_237C0929C();

      if (v57)
      {
LABEL_4:
        v100 = v23;
        v90 = v3;
        sub_237AE1948(MEMORY[0x277D84FA0]);
        v59 = v58;
        v60 = v97;
        sub_237C071CC();
        *v25 = 0;
        *(v25 + 1) = 0xE000000000000000;
        v61 = MEMORY[0x277D84F90];
        *(v25 + 2) = MEMORY[0x277D84F90];
        v62 = v99;
        sub_237AE1458(v59);
        v64 = v63;

        v107[0] = v64;

        sub_237AE69B4();
        if (v62)
        {

          __break(1u);
          JUMPOUT(0x237B37830);
        }

        v65 = v106;
        *(v25 + 3) = v107[0];
        v25[32] = 0;
        *(v25 + 5) = v61;
        *(v25 + 6) = 0xD000000000000013;
        *(v25 + 7) = 0x8000000237C17BE0;
        v66 = v105;
        v99 = *(v65 + 16);
        v99(v104, v60, v105);
        v67 = &v25[*(v103 + 32)];
        sub_237C06D7C();
        v68 = *(v65 + 8);
        v106 = v65 + 8;
        v68(v60, v66);
        sub_237AE6A00();
        v69 = v98;
        sub_237C0743C();
        OUTLINED_FUNCTION_0_72();
        sub_237B3A36C();
        v72 = v90;
        v73 = v94;
        sub_237B3A3C0(v69, v94);
        OUTLINED_FUNCTION_2_67();
        v74 = v92;
        sub_237B39F4C(v73, v92);
        v75 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v76 = swift_allocObject();
        sub_237B3A3C0(v74, v76 + v75);
        sub_2379DD56C();
        v78 = v77;

        v79 = v86;
        *(v72 + v86[5]) = v78;
        OUTLINED_FUNCTION_2_67();
        sub_237B39F4C(v73, v72);
        v80 = v88;
        *v88 = 0;
        *(v80 + 8) = 0;
        *(v80 + 16) = 256;
        v81 = v89;
        swift_storeEnumTagMultiPayload();
        v82 = v72 + v79[8];
        *(v82 + 24) = 0u;
        *v82 = 6;
        *(v82 + 40) = xmmword_237C0BF30;
        *(v82 + 56) = 42;
        *(v82 + 8) = 0u;
        v83 = v87;
        sub_237B39F4C(v80, v87);
        v107[3] = v81;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v107);
        sub_237B3A3C0(v83, boxed_opaque_existential_0);
        OUTLINED_FUNCTION_5_54();
        sub_237B3A36C();
        sub_2379DAE54(v107, v82 + 8);
        v85 = (v72 + v79[6]);
        *v85 = 0;
        v85[1] = 0xE000000000000000;
        OUTLINED_FUNCTION_12_37();
        sub_237B3A36C();
        OUTLINED_FUNCTION_1_69();
        sub_237B3A36C();
        *(v72 + v79[7]) = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v70 = swift_allocError();
        *v71 = 0xD00000000000004ELL;
        v71[1] = 0x8000000237C1CC70;
        OUTLINED_FUNCTION_23_3(v70, v71);
        swift_willThrow();
        OUTLINED_FUNCTION_12_37();
        sub_237B3A36C();
        sub_237B3A36C();
        sub_237B3A36C();
      }

      OUTLINED_FUNCTION_73();
      return;
  }
}

void static MLDecisionTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
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
  static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (v0)
  {
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    v13 = v12;
    (*(v5 + 8))(v10, v2);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D380, &qword_237C13A38);
    v15 = OUTLINED_FUNCTION_91(v14);
    sub_237BEC88C(v15, v13);
  }

  OUTLINED_FUNCTION_73();
}

{
  static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v0)
  {
    v2 = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D380, &qword_237C13A38);
    v4 = OUTLINED_FUNCTION_91(v3);
    sub_237BEC88C(v4, v2);
  }
}

void static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
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
  static MLDecisionTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v4 + 8))(v9, v1);
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v49 = v1;
  v50 = v2;
  v4 = v3;
  v47 = v5;
  v48 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters();
  v10 = OUTLINED_FUNCTION_20(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  v45 = v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v46 = v15;
  v16 = sub_237C071DC();
  v17 = OUTLINED_FUNCTION_20(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v20 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_0();
  v51 = v28;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_138();
  v31 = v30;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v43 - v33;
  v35 = v4;
  sub_2379E9068(v4 + 8, &v55, &qword_27DE9A998, &unk_237C0C100);
  if (v56)
  {
    v36 = *(v24 + 48);
    sub_2379DAD24(&v55, &v52);
    swift_dynamicCast();
    sub_237A07530(v34, &v34[v36], v8);
    OUTLINED_FUNCTION_5_54();
    sub_237B3A36C();
    if (!v0)
    {
      v44 = v31;
      sub_2379E9068(v34, v31, &qword_27DE9ADC0, &unk_237C0BF40);
      v57 = *(v24 + 48);
      sub_2379E9068(v34, v51, &qword_27DE9ADC0, &unk_237C0BF40);
      v43 = *(v24 + 48);
      sub_237B35548(v35, &v52);

      v37 = v48;

      sub_237C071CC();
      sub_237C0715C();
      sub_237C070DC();
      sub_237C070FC();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237B36C58(&v52);
      OUTLINED_FUNCTION_3_67();
      sub_237B39F4C(v50, v46);
      v38 = type metadata accessor for TreeClassifierTrainingSessionDelegate();
      OUTLINED_FUNCTION_91(v38);
      sub_237A6A6F8();
      OUTLINED_FUNCTION_46();
      v39 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v39);
      (*(v40 + 8))(v51);
      sub_2379D9054(v44 + v57, &qword_27DE9A9A0, &qword_237C0BF60);
      v53 = v38;
      v54 = &off_284AC2A08;
      *&v52 = v37;
      OUTLINED_FUNCTION_3_67();
      v41 = v45;
      sub_237B39F4C(v50, v45);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D388, &qword_237C13A40);
      OUTLINED_FUNCTION_91(v42);

      sub_2379E42F0(&v52, v41, 3);
      sub_2379D9054(v34, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static MLDecisionTreeClassifier.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D380, &qword_237C13A38);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BEC88C(v3, a1);
}

void static MLDecisionTreeClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-1] - v10;
  OUTLINED_FUNCTION_3_67();
  sub_237B39F4C(a1, v11);
  v12 = type metadata accessor for TreeClassifierTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v12);
  v13 = sub_237A6A5D0();
  if (!v1)
  {
    v16[3] = v12;
    v16[4] = &off_284AC2A08;
    v16[0] = v13;
    OUTLINED_FUNCTION_3_67();
    sub_237B39F4C(a1, v9);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D388, &qword_237C13A40);
    OUTLINED_FUNCTION_91(v14);
    sub_2379E42F0(v16, v9, 3);
  }
}

uint64_t sub_237B380D4(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3A0, &qword_237C13B10);
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
    return sub_2379D9054(v15, &qword_27DE9D3A0, &qword_237C13B10);
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

    sub_237BBAEC8(0, 0, v21, &unk_237C13B20, v26);
  }
}

uint64_t sub_237B382C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3A0, &qword_237C13B10);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B3837C, 0, 0);
}

uint64_t sub_237B3837C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_237B3841C;
  v3 = v0[6];
  v4 = v0[2];

  return sub_237B386F0();
}

uint64_t sub_237B3841C()
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

uint64_t sub_237B38518()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  swift_storeEnumTagMultiPayload();
  v4 = OUTLINED_FUNCTION_37_0();
  sub_237AE7128(v4, v5, &qword_27DE9D3A0, &qword_237C13B10);
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  v11 = OUTLINED_FUNCTION_13_11();
  sub_237AE7128(v11, v12, &qword_27DE9D3A0, &qword_237C13B10);
  v10(v6);
  sub_2379D9054(v6, &qword_27DE9D3A0, &qword_237C13B10);

  OUTLINED_FUNCTION_8();

  return v13();
}

uint64_t sub_237B38608()
{
  v1 = v0[5];
  *v0[7] = v0[10];
  swift_storeEnumTagMultiPayload();
  v2 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  sub_237AE7128(v0[7], v2, &qword_27DE9D3A0, &qword_237C13B10);
  v5(v2);
  sub_2379D9054(v2, &qword_27DE9D3A0, &qword_237C13B10);

  OUTLINED_FUNCTION_8();

  return v6();
}

uint64_t sub_237B386F0()
{
  OUTLINED_FUNCTION_9();
  v0[30] = v1;
  v0[31] = v2;
  v3 = type metadata accessor for AnyClassificationMetrics();
  v0[32] = v3;
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64) + 15;
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC88, &unk_237C11AF0);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64) + 15;
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v9 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  v0[37] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[38] = v12;
  OUTLINED_FUNCTION_1(v12);
  v0[39] = v13;
  v15 = *(v14 + 64);
  v0[40] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  v0[41] = OUTLINED_FUNCTION_19();
  v19 = type metadata accessor for MLDecisionTreeClassifier();
  v0[42] = v19;
  OUTLINED_FUNCTION_20(v19);
  v21 = *(v20 + 64) + 15;
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v22);
  v24 = *(v23 + 64);
  v0[45] = OUTLINED_FUNCTION_19();
  v25 = sub_237C071DC();
  v0[46] = v25;
  OUTLINED_FUNCTION_1(v25);
  v0[47] = v26;
  v28 = *(v27 + 64);
  v0[48] = OUTLINED_FUNCTION_19();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v29);
  v31 = *(v30 + 64);
  v0[49] = OUTLINED_FUNCTION_19();
  v32 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v0[50] = v32;
  OUTLINED_FUNCTION_20(v32);
  v34 = *(v33 + 64);
  v0[51] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_237B38968()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 248);
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

  v7 = *(v0 + 400);
  v6 = *(v0 + 408);
  v8 = *(v0 + 384);
  v9 = *(v0 + 368);
  v10 = *(v0 + 376);
  v11 = *(v0 + 360);
  v12 = *(v0 + 328);
  v13 = *(v0 + 248);
  sub_237B3A3C0(*(v0 + 392), v6);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379E9068(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237BA48F8(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v15 = v14[1];
  v36 = *v14;
  *(v0 + 416) = v15;
  v16 = *(v6 + v7[7]);
  *(v0 + 424) = v16;
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

  v20 = *(v0 + 336);
  v19 = *(v0 + 344);
  v22 = *(v0 + 312);
  v21 = *(v0 + 320);
  v23 = *(v0 + 304);
  sub_237B35548(v0 + 16, v0 + 80);
  v24 = v20[9];
  *(v0 + 464) = v24;
  v25 = (v19 + v24);

  sub_237C06FAC();
  v26 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v27 = v25 + *(v26 + 20);
  sub_2379E51D0();
  v28 = v25 + *(v26 + 24);
  sub_2379E5C70();
  (*(v22 + 8))(v21, v23);
  *v25 = 0;
  *(v0 + 432) = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v29 = v20[10];
  *(v0 + 468) = v29;
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
  *(v0 + 440) = v34;
  *v34 = v0;
  v34[1] = sub_237B38CA8;
  v35 = *(v0 + 328);

  return sub_237B919A4();
}

uint64_t sub_237B38CA8()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v8 = *(v7 + 440);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;
  *(v5 + 448) = v0;

  if (!v0)
  {
    *(v5 + 456) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237B38DB8()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v5 = *(v0 + 288);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 240);
  *(v2 + *(v4 + 20)) = *(v0 + 456);
  OUTLINED_FUNCTION_21_26();
  sub_237B3A3C0(v9, v2);
  v10 = (v2 + *(v4 + 32));
  v12 = *(v0 + 112);
  v11 = *(v0 + 128);
  v13 = *(v0 + 96);
  *v10 = *(v0 + 80);
  v10[1] = v13;
  v10[2] = v12;
  v10[3] = v11;
  sub_237B3A3C0(v2, v1);
  sub_237B3A3C0(v1, v8);
  v14 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v7 + v14, v5, &qword_27DE9BC88, &unk_237C11AF0);
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = *(v0 + 432);
    v17 = *(v0 + 336);
    v19 = *(v0 + 288);
    v18 = *(v0 + 296);
    v20 = *(v0 + 280);
    v22 = *(v0 + 248);
    v21 = *(v0 + 256);
    v23 = *(v0 + 240);
    sub_237B36C58(v0 + 16);
    OUTLINED_FUNCTION_6_51();
    sub_237B3A3C0(v19, v18);
    OUTLINED_FUNCTION_37_0();
    swift_storeEnumTagMultiPayload();
    sub_2379DC1F8(v18, v23 + *(v17 + 36));
    v24 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v22 + v24, v20, &qword_27DE9BC88, &unk_237C11AF0);

    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      v25 = *(v0 + 408);
      v26 = *(v0 + 280);
      OUTLINED_FUNCTION_13_30();
      sub_237B3A36C();
      sub_2379D9054(v26, &qword_27DE9BC88, &unk_237C11AF0);
    }

    else
    {
      v27 = *(v0 + 432);
      v28 = *(v0 + 408);
      v29 = *(v0 + 336);
      v30 = *(v0 + 272);
      v31 = *(v0 + 264);
      v32 = *(v0 + 240);
      sub_237B3A3C0(*(v0 + 280), v30);
      sub_237B3A3C0(v30, v31);
      v33 = *(v29 + 40);
      sub_237B3A36C();
      sub_237B3A3C0(v31, v32 + v33);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_30();
      sub_237B3A36C();
    }

    v34 = *(v0 + 408);
    v35 = *(v0 + 384);
    v36 = *(v0 + 392);
    v38 = *(v0 + 352);
    v37 = *(v0 + 360);
    v39 = *(v0 + 344);
    v41 = *(v0 + 320);
    v40 = *(v0 + 328);
    v43 = *(v0 + 288);
    v42 = *(v0 + 296);
    v45 = *(v0 + 280);
    v46 = *(v0 + 272);
    v47 = *(v0 + 264);

    OUTLINED_FUNCTION_8();

    return v44();
  }

  return result;
}

uint64_t sub_237B390EC()
{
  v1 = *(v0 + 468);
  v2 = *(v0 + 464);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 408);
  v6 = *(v0 + 392);
  v13 = *(v0 + 384);
  v14 = *(v0 + 360);
  v7 = *(v0 + 344);
  v8 = *(v0 + 328);
  v15 = *(v0 + 352);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 288);
  v19 = *(v0 + 280);
  v20 = *(v0 + 272);
  v21 = *(v0 + 264);
  v9 = *(v0 + 248);
  sub_237B36C58(v0 + 80);
  OUTLINED_FUNCTION_1_69();
  sub_237B3A36C();

  sub_237B3A36C();
  sub_237B3A36C();

  sub_237B36C58(v0 + 16);
  OUTLINED_FUNCTION_13_30();
  sub_237B3A36C();

  OUTLINED_FUNCTION_8();
  v11 = *(v0 + 448);

  return v10();
}

void MLDecisionTreeClassifier.predictions(from:)()
{
  v2 = sub_237C05DBC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v8 = *(v0 + *(type metadata accessor for MLDecisionTreeClassifier() + 28));
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

uint64_t MLDecisionTreeClassifier.predictions(from:)(uint64_t a1)
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
  MLDecisionTreeClassifier.predictions(from:)();
  if (v2)
  {
    return (*(v9 + 8))(v3, v6);
  }

  (*(v9 + 8))(v3, v6);
  return sub_237A72900(v4, 1, v1);
}

uint64_t MLDecisionTreeClassifier.evaluation(on:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = type metadata accessor for AnyClassificationMetrics();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v8 = type metadata accessor for MLDecisionTreeClassifier();
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
  OUTLINED_FUNCTION_6_51();
  v14 = OUTLINED_FUNCTION_13_11();
  sub_237B3A3C0(v14, v15);
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
  MLDecisionTreeClassifier.evaluation(on:)(v10);
  return (*(v5 + 8))(v10, v2);
}

void MLDecisionTreeClassifier.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v50 = v0;
  v3 = v2;
  v4 = type metadata accessor for AnyTreeClassifierModel();
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
  memcpy(v49, v26, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v41 = v14;
    v42 = v23;
    OUTLINED_FUNCTION_2_67();
    sub_237B39F4C(v50, v10);
    v30 = *(&v49[0] + 1);
    if (*(&v49[0] + 1))
    {
      v31 = *&v49[0];
      v32 = *(&v49[1] + 1);
      v33 = *&v49[1];
      v34 = v49[2];
      v35 = *(&v49[3] + 1);
      v36 = *&v49[3];
      v37 = *&v49[4];
    }

    else
    {
      v38 = v29;
      v39 = NSFullUserName();
      v31 = sub_237C086EC();
      v30 = v40;

      v29 = v38;
      v37 = 0;
      v32 = 0x8000000237C17C90;
      v33 = 0xD000000000000033;
      v34 = 0uLL;
      v35 = 0xE100000000000000;
      v36 = 49;
    }

    v44[0] = v31;
    v44[1] = v30;
    v44[2] = v33;
    v44[3] = v32;
    v45 = v34;
    v46 = v36;
    v47 = v35;
    v48 = v37;
    sub_2379E9068(v49, &v43, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB398(v44);
    OUTLINED_FUNCTION_1_69();
    sub_237B3A36C();
    sub_2379FC064(v44);
    sub_237C07E5C();
    (*(v41 + 8))(v19, v11);
    (*(v42 + 8))(v29, v20);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLDecisionTreeClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v28[1] = v4;
  v29 = v2;
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
  v18 = v28 - v17;
  v19 = sub_237C05ADC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  memcpy(v30, v6, sizeof(v30));
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v10 + 104))(v3, *MEMORY[0x277CC91D8], v7);

  sub_237C05ABC();
  MLDecisionTreeClassifier.write(to:metadata:)();
  (*(v22 + 8))(v27, v19);
  OUTLINED_FUNCTION_73();
}

unint64_t MLDecisionTreeClassifier.debugDescription.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v7 = type metadata accessor for MLDecisionTreeClassifier();
  v8 = v0 + v7[8];
  v9 = MLDecisionTreeClassifier.ModelParameters.description.getter();
  v11 = v10;
  v12 = v2 + v7[9];
  v13 = MLClassifierMetrics.description.getter();
  v15 = v14;
  sub_237B39F4C(v2 + v7[10], v1);
  LODWORD(v7) = swift_getEnumCaseMultiPayload();
  sub_237B3A36C();
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

id MLDecisionTreeClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLDecisionTreeClassifier.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237B39E90()
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

uint64_t sub_237B39F4C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

id sub_237B39FA4@<X0>(void *a1@<X8>)
{
  result = MLDecisionTreeClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B39FE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_237B3A0C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_237B3A190()
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

uint64_t sub_237B3A264()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_237B3A2AC(uint64_t a1)
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

  return sub_237B382C0(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_237B3A36C()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_237B3A3C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_38()
{
  v1 = *(*(v0 - 288) + 8);
  result = *(v0 - 72);
  v3 = *(v0 - 280);
  return result;
}

void OUTLINED_FUNCTION_14_29()
{
  v1 = *(v0 - 272);
  v2 = *(v0 - 312);
  v3 = *(v0 - 360);
}

uint64_t OUTLINED_FUNCTION_22_23@<X0>(uint64_t a1@<X8>)
{

  return sub_237B39F4C(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_46_10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 344) + *(v3 - 320);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_49_7()
{
  v2 = *(v0 - 264);

  return sub_237B36C58(v2);
}

uint64_t OUTLINED_FUNCTION_50_8()
{
  v2 = *(v0 - 328);
}

uint64_t OUTLINED_FUNCTION_60_8()
{
  v2 = *(v0 - 368);

  return sub_237B3A36C();
}

uint64_t sub_237B3A5FC(uint64_t a1)
{
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v114 = *(v112 - 8);
  v2 = *(v114 + 64);
  v3 = MEMORY[0x28223BE20](v112);
  v106 = &v93[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v99 = &v93[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v108 = &v93[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v109 = &v93[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v98 = &v93[-v13];
  MEMORY[0x28223BE20](v12);
  v101 = &v93[-v14];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D420, &qword_237C13B80);
  v15 = *(*(v113 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v113);
  v107 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v97 = &v93[-v19];
  MEMORY[0x28223BE20](v18);
  v94 = &v93[-v20];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v115 = *(v102 - 8);
  v21 = *(v115 + 64);
  MEMORY[0x28223BE20](v102);
  v111 = &v93[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  v105 = *(v23 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v23);
  v104 = &v93[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D418, &qword_237C13B78);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v93[-v29];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D428, &qword_237C13B88);
  v31 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v33 = &v93[-v32];
  v95 = sub_237B42128(&qword_27DE9D430, &qword_27DE9B0A0);
  v34 = sub_237C0887C();
  v35 = *(v27 + 60);
  v103 = sub_237B42128(&qword_27DE9D438, &qword_27DE9ACA0);
  v36 = v102;
  v37 = sub_237C0887C();
  if (v37 >= v34)
  {
    v38 = v34;
  }

  else
  {
    v38 = v37;
  }

  v119 = MEMORY[0x277D84F90];
  sub_237AC8DF4();
  v116 = v119;
  sub_2379E9068(a1, v30, &qword_27DE9D418, &qword_237C13B78);
  (*(v105 + 32))(v104, v30, v23);
  v39 = v36;
  sub_237C0885C();
  v40 = &v30[*(v27 + 60)];
  v41 = v33;
  (*(v115 + 32))(v111, v40, v36);
  v42 = &v33[*(v96 + 52)];
  sub_237C0885C();
  if (v38 < 0)
  {
    __break(1u);
LABEL_33:
    result = sub_237B42220(v36, &qword_27DE9B118);
  }

  else
  {
    v110 = v23;
    v111 = v42;
    if (!v38)
    {
LABEL_18:
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D440, &qword_237C13B90) + 36);
      v66 = sub_237B42128(&qword_27DE9BD08, &qword_27DE9B0A0);
      v108 = (v114 + 32);
      v67 = &qword_27DE9B118;
      v68 = v101;
      v69 = v94;
      v100 = v41;
      v115 = v65;
      v109 = v66;
      while (1)
      {
        sub_237C08B5C();
        if (*(v41 + v65) == v117)
        {
          break;
        }

        v70 = sub_237C08B9C();
        sub_2379E9068(v71, v68, v67, &qword_237C0CA18);
        v70(&v117, 0);
        sub_237C08B6C();
        v72 = v67;
        v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80) + 36);
        sub_237B42128(&qword_27DE9BD68, &qword_27DE9ACA0);
        sub_237C08B5C();
        if (*&v42[v73] == v117)
        {
          sub_237B42220(v68, &qword_27DE9B118);
          v41 = v100;
          break;
        }

        v74 = sub_237C08B9C();
        v75 = v68;
        v78 = *v76;
        v77 = v76[1];

        v74(&v117, 0);
        sub_237C08B6C();
        v79 = v113;
        v80 = v97;
        v81 = &v97[*(v113 + 48)];
        sub_237AE7128(v75, v97, v72, &qword_237C0CA18);
        *v81 = v78;
        v81[1] = v77;
        v82 = v98;
        sub_237AE7128(v80, v69, &qword_27DE9D420, &qword_237C13B80);
        v83 = (v69 + *(v79 + 48));
        v85 = *v83;
        v84 = v83[1];
        sub_2379E9068(v69, v82, v72, &qword_237C0CA18);
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
        result = __swift_getEnumTagSinglePayload(v82, 1, v86);
        if (result == 1)
        {
          goto LABEL_36;
        }

        v67 = v72;
        if (v84)
        {
          v87 = v85;
        }

        else
        {
          v87 = 0;
        }

        v88 = 0xE000000000000000;
        if (v84)
        {
          v88 = v84;
        }

        v117 = v87;
        v118 = v88;

        v89 = v99;
        sub_237C06C6C();
        sub_237B42220(v69, &qword_27DE9D420);
        v65 = v115;
        v90 = v116;
        v119 = v116;
        v91 = *(v116 + 16);
        if (v91 >= *(v116 + 24) >> 1)
        {
          sub_237AC8DF4();
          v89 = v99;
          v90 = v119;
        }

        *(v90 + 16) = v91 + 1;
        v92 = (*(v114 + 80) + 32) & ~*(v114 + 80);
        v116 = v90;
        (*(v114 + 32))(v90 + v92 + *(v114 + 72) * v91, v89, v112);
        v41 = v100;
        v68 = v101;
        v42 = v111;
      }

      *(v41 + *(v96 + 56)) = 1;
      sub_237B42220(v41, &qword_27DE9D428);
      return v116;
    }

    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D440, &qword_237C13B90) + 36);
    v104 = (v114 + 32);
    v44 = sub_237B42128(&qword_27DE9BD08, &qword_27DE9B0A0);
    v36 = v109;
    v105 = v43;
    v103 = v44;
    while (1)
    {
      v115 = v38;
      result = sub_237C08B5C();
      if (*(v41 + v43) == v117)
      {
        break;
      }

      v46 = sub_237C08B9C();
      sub_2379E9068(v47, v36, &qword_27DE9B118, &qword_237C0CA18);
      v46(&v117, 0);
      sub_237C08B6C();
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80) + 36);
      sub_237B42128(&qword_27DE9BD68, &qword_27DE9ACA0);
      sub_237C08B5C();
      if (*&v42[v48] == v117)
      {
        goto LABEL_33;
      }

      v49 = sub_237C08B9C();
      v50 = v39;
      v52 = *v51;
      v53 = v51[1];

      v49(&v117, 0);
      sub_237C08B6C();
      v54 = &v107[*(v113 + 48)];
      v55 = v36;
      v56 = v107;
      sub_237AE7128(v55, v107, &qword_27DE9B118, &qword_237C0CA18);
      *v54 = v52;
      v54[1] = v53;
      v57 = v108;
      sub_2379E9068(v56, v108, &qword_27DE9B118, &qword_237C0CA18);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
      result = __swift_getEnumTagSinglePayload(v57, 1, v58);
      if (result == 1)
      {
        goto LABEL_35;
      }

      if (v53)
      {
        v59 = v52;
      }

      else
      {
        v59 = 0;
      }

      v60 = 0xE000000000000000;
      if (v53)
      {
        v60 = v53;
      }

      v117 = v59;
      v118 = v60;

      v61 = v106;
      sub_237C06C6C();
      sub_237B42220(v56, &qword_27DE9D420);
      v62 = v116;
      v119 = v116;
      v63 = *(v116 + 16);
      if (v63 >= *(v116 + 24) >> 1)
      {
        sub_237AC8DF4();
        v62 = v119;
      }

      *(v62 + 16) = v63 + 1;
      v64 = (*(v114 + 80) + 32) & ~*(v114 + 80);
      v116 = v62;
      (*(v114 + 32))(v62 + v64 + *(v114 + 72) * v63, v61, v112);
      v38 = v115 - 1;
      v36 = v109;
      v39 = v50;
      v42 = v111;
      v43 = v105;
      if (v115 == 1)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_237B3B28C(uint64_t a1)
{
  result = sub_237AFFB08();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_237B42614(result, v3, 0, a1);
  }
}

uint64_t sub_237B3B2F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D470, &unk_237C13BB0);
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_23();
  result = sub_237B024B4(a1);
  if (v12)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v11)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_33_17();
  if (v13)
  {
    OUTLINED_FUNCTION_32_13();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_21_27();
    *a2 = sub_237AFFC40(v18, v19, v20, v21, v22);
    a2[1] = v23;
    v24 = *(v6 + 48);
    v25 = sub_237C0806C();
    OUTLINED_FUNCTION_4(v25);
    (*(v26 + 32))(a2 + v24, v2 + v3);
    OUTLINED_FUNCTION_32_13();
    return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

uint64_t sub_237B3B424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_237C07B9C();
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
  }

  OUTLINED_FUNCTION_32_13();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

double sub_237B3B4C8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2379FED88(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_237B3B520(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0_73();
  sub_237B42128(a3, a1);
  OUTLINED_FUNCTION_62_2();
  sub_237C08B2C();
  OUTLINED_FUNCTION_62_2();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (v5)
  {
    return 1;
  }

  OUTLINED_FUNCTION_47_13();
  v6 = sub_237C08B9C();
  v8 = *v7;

  v17 = OUTLINED_FUNCTION_24_26(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
  v6(v17);
  return v8;
}

uint64_t sub_237B3B5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_73();
  OUTLINED_FUNCTION_52_12(v5);
  OUTLINED_FUNCTION_147();
  sub_237C08B2C();
  OUTLINED_FUNCTION_147();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (!v6)
  {
    v7 = OUTLINED_FUNCTION_16_25();
    v9 = OUTLINED_FUNCTION_85_1(v7, v8);
    v10 = sub_2379E9068(v9, a1, &qword_27DE9B0F8, &qword_237C0CA08);
    v18 = OUTLINED_FUNCTION_24_26(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22);
    v1(v18);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F8, &qword_237C0CA08);
  return OUTLINED_FUNCTION_15_35(v19);
}

uint64_t sub_237B3B6F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_73();
  OUTLINED_FUNCTION_52_12(v5);
  OUTLINED_FUNCTION_147();
  sub_237C08B2C();
  OUTLINED_FUNCTION_147();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (!v6)
  {
    v7 = OUTLINED_FUNCTION_16_25();
    v9 = OUTLINED_FUNCTION_85_1(v7, v8);
    v10 = sub_2379E9068(v9, a1, &qword_27DE9B108, &qword_237C0CA10);
    v18 = OUTLINED_FUNCTION_24_26(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22);
    v1(v18);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B108, &qword_237C0CA10);
  return OUTLINED_FUNCTION_15_35(v19);
}

uint64_t sub_237B3B7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_73();
  OUTLINED_FUNCTION_52_12(v5);
  OUTLINED_FUNCTION_147();
  sub_237C08B2C();
  OUTLINED_FUNCTION_147();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (!v6)
  {
    v7 = OUTLINED_FUNCTION_16_25();
    v9 = OUTLINED_FUNCTION_85_1(v7, v8);
    v10 = sub_2379E9068(v9, a1, &qword_27DE9B118, &qword_237C0CA18);
    v18 = OUTLINED_FUNCTION_24_26(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22);
    v1(v18);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  return OUTLINED_FUNCTION_15_35(v19);
}

uint64_t sub_237B3B8F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_32_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_73();
  OUTLINED_FUNCTION_52_12(v5);
  OUTLINED_FUNCTION_147();
  sub_237C08B2C();
  OUTLINED_FUNCTION_147();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (!v6)
  {
    v7 = OUTLINED_FUNCTION_16_25();
    v9 = OUTLINED_FUNCTION_85_1(v7, v8);
    v10 = sub_2379E9068(v9, a1, &qword_27DE9B120, &qword_237C0CA20);
    v18 = OUTLINED_FUNCTION_24_26(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22);
    v1(v18);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B120, &qword_237C0CA20);
  return OUTLINED_FUNCTION_15_35(v19);
}

uint64_t sub_237B3B9D0()
{
  v0 = OUTLINED_FUNCTION_147();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_0_73();
  sub_237B42128(v2, &qword_27DE9B090);
  OUTLINED_FUNCTION_62_2();
  sub_237C08B2C();
  OUTLINED_FUNCTION_62_2();
  sub_237C08B5C();
  OUTLINED_FUNCTION_9_41();
  if (v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_47_13();
  v4 = sub_237C08B9C();
  v6 = *v5;
  v7 = *v5;
  v15 = OUTLINED_FUNCTION_24_26(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  v4(v15);
  return v6;
}

uint64_t sub_237B3BA90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D360, &unk_237C13A08);
  OUTLINED_FUNCTION_4(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_23();
  result = sub_237B024B4(a1);
  if (v12)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v11)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_33_17();
  if (v13)
  {
    OUTLINED_FUNCTION_32_13();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_21_27();
    *a2 = sub_237AFFC58(v18, v19, v20, v21, v22);
    a2[1] = v23;
    v24 = *(v6 + 48);
    v25 = sub_237C0683C();
    OUTLINED_FUNCTION_4(v25);
    (*(v26 + 32))(a2 + v24, v2 + v3);
    OUTLINED_FUNCTION_32_13();
    return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

uint64_t sub_237B3BBC0()
{
  v0 = sub_237C0602C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_237C05C9C();
  if (v6)
  {
    return 0;
  }

  v8 = v5;
  result = sub_237C05D8C();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 >= *(result + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v1 + 16))(v4, result + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v8, v0);

  v9 = sub_237C05FFC();
  (*(v1 + 8))(v4, v0);
  return v9 == MEMORY[0x277D837D0];
}

void sub_237B3BD1C()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D418, &qword_237C13B78);
  OUTLINED_FUNCTION_4(v69);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v9 = OUTLINED_FUNCTION_0(v8);
  v70 = v10;
  v71 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v68 = &v65 - v14;
  v15 = sub_237C0602C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v73 = v17;
  v74 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  OUTLINED_FUNCTION_0(v72);
  v67 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = &v65 - v27;
  v29 = type metadata accessor for MLSoundClassifier.DataSource();
  v30 = OUTLINED_FUNCTION_4(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v35 = v34 - v33;
  v77 = sub_237C05DBC();
  v36 = OUTLINED_FUNCTION_0(v77);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_0();
  v43 = v42 - v41;
  OUTLINED_FUNCTION_2_68();
  sub_237B4216C(v2, v35, v44);
  OUTLINED_FUNCTION_107();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v66 = v7;
    v46 = v1;
    v53 = *v35;
    v54 = *(v35 + 8);
    v56 = *(v35 + 16);
    v55 = *(v35 + 24);
    v57 = *(v35 + 40);
    v65 = *(v35 + 32);
    v75 = v53;
    v76 = v54;
    sub_237A70ED4(&v75, v43);
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      OUTLINED_FUNCTION_6_52();
      sub_237B421C8(v35, v59);
      goto LABEL_10;
    }

    v66 = v7;
    v46 = v1;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
    v48 = (v35 + *(v47 + 48));
    v50 = *v48;
    v49 = v48[1];
    v51 = (v35 + *(v47 + 64));
    v52 = v51[1];
    v65 = *v51;
    (*(v38 + 32))(v43, v35, v77);
  }

  sub_237C05DFC();

  v58 = v28;
  sub_237B4B1D8();
  if (v46)
  {

    (*(v73 + 8))(v22, v74);
  }

  else
  {
    (*(v73 + 8))(v22, v74);
    v60 = v68;
    sub_237C05DEC();

    v61 = v66;
    v62 = v67;
    (*(v67 + 16))(v66, v58, v72);
    v63 = v70;
    v64 = v71;
    (*(v70 + 16))(v61 + *(v69 + 52), v60, v71);
    sub_237B3A5FC(v61);
    v74 = v58;
    sub_237B42220(v61, &qword_27DE9D418);
    (*(v63 + 8))(v60, v64);
    (*(v62 + 8))(v74, v72);
  }

  (*(v38 + 8))(v43, v77);
LABEL_10:
  OUTLINED_FUNCTION_73();
}

void sub_237B3C1CC()
{
  OUTLINED_FUNCTION_74();
  v1 = sub_237C05ADC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = v56 - v19;
  MLSoundClassifier.DataSource.labeledSounds()();
  if (!v0)
  {
    v22 = v21;
    v56[1] = 0;
    v23 = *(v21 + 64);
    v58 = v21 + 64;
    v24 = *(v21 + 32);
    OUTLINED_FUNCTION_5_33();
    v27 = v26 & v25;
    v57 = (v28 + 63) >> 6;
    v67 = (v4 + 8);
    v68 = v4 + 16;
    v66 = v15 + 32;

    v65 = 0;
    v73 = v15;
    v74 = v13;
    v30 = v27;
    v59 = v20;
    v60 = v4;
    v31 = MEMORY[0x277D84F90];
    v61 = v29;
    v69 = v12;
    v70 = v9;
    do
    {
      while (1)
      {
        if (!v30)
        {
          v33 = v65;
          while (1)
          {
            v34 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v34 >= v57)
            {
              goto LABEL_28;
            }

            v30 = *(v58 + 8 * v34);
            ++v33;
            if (v30)
            {
              v64 = v31;
              v32 = v34;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v64 = v31;
        v32 = v65;
LABEL_10:
        v63 = v30;
        v65 = v32;
        v35 = __clz(__rbit64(v30)) | (v32 << 6);
        v36 = *(*(v22 + 56) + 8 * v35);
        v37 = *(v36 + 16);
        if (v37)
        {
          v38 = (*(v22 + 48) + 16 * v35);
          v39 = v38[1];
          v72 = *v38;
          v78 = MEMORY[0x277D84F90];
          v75 = v39;

          sub_237AC8E34();
          v40 = v78;
          v41 = *(v4 + 80);
          v62 = v36;
          v42 = v36 + ((v41 + 32) & ~v41);
          v71 = *(v4 + 72);
          v43 = *(v4 + 16);
          v44 = v59;
          do
          {
            v45 = v69;
            v43(v69, v42, v1);
            v43(v70, v45, v1);
            v76 = v72;
            v77 = v75;

            sub_237C06C6C();
            (*v67)(v45, v1);
            v47 = *(v78 + 16);
            v46 = *(v78 + 24);
            if (v47 >= v46 >> 1)
            {
              OUTLINED_FUNCTION_106(v46);
              sub_237AC8E34();
            }

            *(v78 + 16) = v47 + 1;
            (*(v73 + 32))(v78 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v47, v44, v74);
            v42 += v71;
            --v37;
          }

          while (v37);

          v4 = v60;
        }

        else
        {
          v40 = MEMORY[0x277D84F90];
        }

        v48 = *(v40 + 16);
        v31 = v64;
        v49 = *(v64 + 16);
        if (__OFADD__(v49, v48))
        {
          goto LABEL_31;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v49 + v48 > *(v31 + 24) >> 1)
        {
          OUTLINED_FUNCTION_40_13();
          sub_237BC122C();
          v31 = v50;
        }

        v30 = (v63 - 1) & v63;
        if (!*(v40 + 16))
        {
          break;
        }

        v51 = *(v31 + 16);
        if ((*(v31 + 24) >> 1) - v51 < v48)
        {
          goto LABEL_32;
        }

        v52 = v31 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v51;
        swift_arrayInitWithCopy();

        v22 = v61;
        if (v48)
        {
          v53 = *(v31 + 16);
          v54 = __OFADD__(v53, v48);
          v55 = v53 + v48;
          if (v54)
          {
            goto LABEL_33;
          }

          *(v31 + 16) = v55;
        }
      }

      v22 = v61;
    }

    while (!v48);
    __break(1u);
LABEL_28:
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B3C658()
{
  OUTLINED_FUNCTION_74();
  v50 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  v6 = OUTLINED_FUNCTION_0(v5);
  v54 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v52 = v10 - v11;
  v13 = MEMORY[0x28223BE20](v12);
  v53 = v48 - v14;
  MEMORY[0x28223BE20](v13);
  v58 = v48 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B578, &qword_237C14020);
  OUTLINED_FUNCTION_0(v57);
  v51 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v21 = v48 - v20;
  v22 = sub_237C0602C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_0();
  v55 = (v28 - v29);
  MEMORY[0x28223BE20](v30);
  v32 = v48 - v31;
  v33 = v4;
  v56 = v2;
  sub_237C05DFC();
  sub_237C05FFC();
  v34 = *(v25 + 8);
  v34(v32, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B590, &qword_237C14080);
  if (swift_dynamicCastMetatype())
  {
    v48[1] = v33;
    v49 = v21;
    sub_237C05DEC();
    sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
    v35 = v58;
    v36 = v50;
    sub_237C05ECC();
    v50 = v36;
    v37 = v54;
    (*(v54 + 16))(v52, v35, v5);
    sub_237B42128(&qword_27DE9D3F8, &qword_27DE9B090);
    v38 = v5;
    v39 = v51;
    swift_bridgeObjectRetain_n();
    v40 = v53;
    sub_237C05EFC();
    sub_237C05EBC();
    v41 = *(v37 + 8);
    v41(v40, v38);
    sub_237C05E0C();
    v41(v58, v38);
    (*(v39 + 8))(v49, v57);
  }

  else
  {
    OUTLINED_FUNCTION_4_5();
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000062, 0x8000000237C1CE60);
    v42 = v55;
    sub_237C05DFC();
    sub_237C05FFC();
    v34(v42, v22);
    v43 = sub_237C094DC();
    MEMORY[0x2383DC360](v43);

    OUTLINED_FUNCTION_51_7();
    v44 = v59;
    v45 = v60;
    sub_2379E8AF0();
    v46 = OUTLINED_FUNCTION_6_2();
    *v47 = v44;
    v47[1] = v45;
    OUTLINED_FUNCTION_52(v46, v47);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237B3CAEC()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v61 = sub_237C05ADC();
  v6 = OUTLINED_FUNCTION_0(v61);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v66 = v3;
  v14 = sub_237BA2F3C(v3);
  v15 = 0;
  v67 = *(v14 + 16);
  v68 = v14;
  v76 = v8;
  v73 = (v8 + 32);
  v16 = v14 + 40;
  v17 = MEMORY[0x277D84F90];
  v60 = v14 + 40;
LABEL_2:
  for (i = (v16 + 16 * v15); ; i += 2)
  {
    if (v67 == v15)
    {
      goto LABEL_40;
    }

    if (v15 >= *(v68 + 16))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v19 = *(i - 1);
    v20 = *i;

    v71 = v19;
    v21 = sub_237ACDA88(v19, v20, v66);
    if (!v21)
    {
      goto LABEL_48;
    }

    v22 = v21;
    v23 = sub_2379DFF68(0, *(v21 + 16));
    v24 = v1;
    sub_237B3D088(v23, v5);
    v72 = v25;
    if (v1)
    {

LABEL_40:

      OUTLINED_FUNCTION_73();
      return;
    }

    if (*(v5 + 16))
    {
      break;
    }

    ++v15;
  }

  v62 = *(v5 + 16);
  v26 = 0;
  v77 = v22;
  v69 = v20;
  v63 = v15 + 1;
  v64 = v5;
  while (1)
  {
    v70 = v26;
    if (*(v17 + 16) <= v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
      v27 = sub_237C085AC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = *(v17 + 16);
        OUTLINED_FUNCTION_40_13();
        sub_237BC1E44();
        v17 = v58;
      }

      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_106(v28);
        OUTLINED_FUNCTION_40_13();
        sub_237BC1E44();
        v17 = v59;
      }

      *(v17 + 16) = v29 + 1;
      *(v17 + 8 * v29 + 32) = v27;
      v22 = v77;
    }

    if (v26 >= *(v72 + 16))
    {
      break;
    }

    v30 = *(v72 + 32 + 8 * v26);
    v31 = *(v30 + 16);
    if (v31)
    {
      v65 = v17;
      v78 = MEMORY[0x277D84F90];

      sub_237AC8AF4(0, v31, 0);
      v32 = v78;
      v75 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v74 = v22 + v75;
      v33 = 32;
      v34 = v61;
      while (1)
      {
        v35 = *(v30 + v33);
        if ((v35 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v35 >= *(v22 + 16))
        {
          goto LABEL_42;
        }

        v36 = v30;
        v37 = *(v76 + 72);
        (*(v76 + 16))(v13, v74 + v37 * v35, v34);
        v39 = *(v78 + 16);
        v38 = *(v78 + 24);
        if (v39 >= v38 >> 1)
        {
          v40 = OUTLINED_FUNCTION_106(v38);
          sub_237AC8AF4(v40, v39 + 1, 1);
          v34 = v61;
        }

        *(v78 + 16) = v39 + 1;
        (*v73)(v78 + v75 + v39 * v37, v13, v34);
        v33 += 8;
        --v31;
        v22 = v77;
        v30 = v36;
        if (!v31)
        {

          v17 = v65;
          v20 = v69;
          v26 = v70;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v32 = MEMORY[0x277D84F90];
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237B05FE4(v17);
      v17 = v56;
    }

    if (v26 >= *(v17 + 16))
    {
      goto LABEL_45;
    }

    v41 = *(v17 + 32 + 8 * v26);
    swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v17 + 32 + 8 * v26);
    v42 = v17 + 32;
    *(v17 + 32 + 8 * v26) = 0x8000000000000000;
    v43 = sub_237ACAC78(v71, v20);
    if (__OFADD__(v79[2], (v44 & 1) == 0))
    {
      goto LABEL_46;
    }

    v45 = v43;
    v46 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
    if (sub_237C090AC())
    {
      v47 = sub_237ACAC78(v71, v69);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_49;
      }

      v45 = v47;
    }

    v22 = v77;
    v20 = v69;
    if (v46)
    {
      v49 = v79[7];
      v50 = *(v49 + 8 * v45);
      *(v49 + 8 * v45) = v32;
    }

    else
    {
      OUTLINED_FUNCTION_27_14(&v79[v45 >> 6]);
      v51 = (v79[6] + 16 * v45);
      *v51 = v71;
      v51[1] = v69;
      *(v79[7] + 8 * v45) = v32;
      v52 = v79[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_47;
      }

      v79[2] = v54;
    }

    v55 = *(v42 + 8 * v70);
    *(v42 + 8 * v70) = v79;

    v26 = v70 + 1;
    v15 = v63;
    v5 = v64;
    v1 = v24;
    if (v70 + 1 == v62)
    {

      v16 = v60;
      goto LABEL_2;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_237C0932C();
  __break(1u);
}

void sub_237B3D088(uint64_t a1, uint64_t a2)
{
  v2 = 0xD000000000000024;
  if (!*(a2 + 16))
  {
    v7 = "-zero proportion is required.";
    goto LABEL_16;
  }

  v72 = *(a2 + 16);
  v5 = COERCE_DOUBLE(sub_237B0251C(a2));
  if (v6)
  {
    goto LABEL_61;
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

    v70 = a1;
    v68 = *(a1 + 16);
    v74 = sub_2379DFF68(0, v68);
    sub_237B4A36C();
    v10 = 0;
    v73 = v74;
    v11 = a2 + 32;
    v12 = 0.0;
    do
    {
      v13 = *(v11 + 8 * v10++);
      v12 = v12 + v13;
    }

    while (v72 != v10);
    v75 = MEMORY[0x277D84F90];
    sub_237AC8B54();
    v14 = v72;
    v15 = 0;
    v16 = *(v75 + 16);
    do
    {
      v17 = *(v11 + 8 * v15);
      v18 = *(v75 + 24);
      v19 = v16 + 1;
      if (v16 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_106(v18);
        sub_237AC8B54();
        v14 = v72;
      }

      ++v15;
      *(v75 + 16) = v19;
      *(v75 + 8 * v16++ + 32) = v17 / v12;
    }

    while (v14 != v15);
    v23 = MEMORY[0x277D84F90];
    sub_237BC0EDC(0, 1, 1, MEMORY[0x277D84F90]);
    v25 = v24;
    v26 = 0;
    v27 = *(v24 + 16);
    v28 = 8 * v27;
    do
    {
      if (v27 + v26)
      {
        v29 = *(v25 + v28 + 8 * v26 + 24);
      }

      else
      {
        v29 = 0.0;
      }

      v30 = *(v75 + 32 + 8 * v26);
      if ((v27 + v26) >= *(v25 + 24) >> 1)
      {
        OUTLINED_FUNCTION_40_13();
        sub_237BC0EDC(v31, v32, v33, v34);
        v25 = v35;
      }

      *(v25 + 16) = v27 + v26 + 1;
      *(v25 + v28 + 8 * v26++ + 32) = v30 + v29;
    }

    while (v19 != v26);

    v36 = *(v25 + 16);
    if (v36)
    {
      sub_237AC8A34();
      v37 = 32;
      v38 = v23;
      while (1)
      {
        v39 = round(*(v25 + v37) * v68);
        if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v39 <= -9.22337204e18)
        {
          goto LABEL_57;
        }

        if (v39 >= 9.22337204e18)
        {
          goto LABEL_58;
        }

        v76 = v38;
        v41 = *(v38 + 16);
        v40 = *(v38 + 24);
        if (v41 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_106(v40);
          sub_237AC8A34();
          v38 = v76;
        }

        *(v38 + 16) = v41 + 1;
        *(v38 + 8 * v41 + 32) = v39;
        v37 += 8;
        if (!--v36)
        {
          v42 = v38;

          v43 = v42;
          goto LABEL_33;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    else
    {

      v43 = MEMORY[0x277D84F90];
LABEL_33:
      v44 = 0;
      v45 = 0;
      v46 = v43 + 32;
      v47 = v72;
      v48 = v70 + 32;
      v49 = MEMORY[0x277D84F90];
      v71 = v43;
      while (v45 != v47)
      {
        if (v45 >= *(v43 + 16))
        {
          goto LABEL_60;
        }

        if (v44 < *(v46 + 8 * v45))
        {
          v69 = v49;
          sub_237BC0EB4(0, 1, 1, MEMORY[0x277D84F90]);
          v50 = v68;
          v49 = v69;
          v52 = v51;
          v53 = v73;
          v54 = v44;
          v55 = v73 + 4;
          while ((v44 & 0x8000000000000000) == 0)
          {
            if (v54 >= v53[2])
            {
              goto LABEL_54;
            }

            v56 = v55[v54];
            if (v56 >= v50)
            {
              goto LABEL_55;
            }

            v57 = *(v48 + 8 * v56);
            v59 = *(v52 + 16);
            v58 = *(v52 + 24);
            if (v59 >= v58 >> 1)
            {
              v60 = OUTLINED_FUNCTION_106(v58);
              sub_237BC0EB4(v60, v59 + 1, 1, v52);
              v50 = v68;
              v49 = v69;
              v52 = v61;
              v55 = v73 + 4;
              v53 = v73;
            }

            *(v52 + 16) = v59 + 1;
            *(v52 + 8 * v59 + 32) = v57;
            if (++v54 >= *(v46 + 8 * v45))
            {
              goto LABEL_46;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v54 = v44;
        v52 = MEMORY[0x277D84F90];
LABEL_46:
        v62 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v49 = v62;
        }

        else
        {
          v65 = *(v62 + 16);
          sub_237BC0DEC();
          v49 = v66;
        }

        v64 = *(v49 + 16);
        v63 = *(v49 + 24);
        v47 = v72;
        v43 = v71;
        if (v64 >= v63 >> 1)
        {
          OUTLINED_FUNCTION_106(v63);
          sub_237BC0DEC();
          v49 = v67;
          v43 = v71;
          v47 = v72;
        }

        ++v45;
        *(v49 + 16) = v64 + 1;
        *(v49 + 8 * v64 + 32) = v52;
        v44 = v54;
        if (v45 == v47)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  __break(1u);
}

void MLSoundClassifier.DataSource.labeledSounds()()
{
  OUTLINED_FUNCTION_74();
  v106 = v1;
  v2 = v0;
  *&v107 = sub_237C0825C();
  v3 = OUTLINED_FUNCTION_0(v107);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v103 - v10;
  v12 = sub_237C05ADC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v103 - v22;
  v24 = type metadata accessor for MLSoundClassifier.DataSource();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v30 = (v29 - v28);
  OUTLINED_FUNCTION_2_68();
  sub_237B4216C(v2, v30, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v15 + 32))(v20, v30, v12);
      sub_237C0820C();
      v41 = v106;
      sub_237A5D608();
      if (v41)
      {
        OUTLINED_FUNCTION_46_11();
        v43(v8, v107);
        (*(v15 + 8))(v20, v12);
        goto LABEL_41;
      }

      v40 = v42;
      v106 = 0;
      OUTLINED_FUNCTION_46_11();
      v45(v8, v107);
      (*(v15 + 8))(v20, v12);
      goto LABEL_12;
    case 2u:
      v40 = *v30;
      goto LABEL_12;
    case 3u:
      sub_237B421C8(v30, type metadata accessor for MLSoundClassifier.DataSource);
      goto LABEL_7;
    case 4u:
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
      v36 = *(v30 + *(v35 + 48) + 8);

      v37 = *(v30 + *(v35 + 64) + 8);

      v38 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v38);
      (*(v39 + 8))(v30);
LABEL_7:
      sub_237C08C1C();
      sub_237BABE74(0xD000000000000044, 0x8000000237C1CD10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
      sub_237C085AC();
      goto LABEL_41;
    default:
      (*(v15 + 32))(v23, v30, v12);
      sub_237C0820C();
      v32 = v106;
      sub_237A5C58C();
      if (v32)
      {
        OUTLINED_FUNCTION_46_11();
        v34(v11, v107);
        (*(v15 + 8))(v23, v12);
        goto LABEL_41;
      }

      v40 = v33;
      v106 = 0;
      OUTLINED_FUNCTION_46_11();
      v44(v11, v107);
      (*(v15 + 8))(v23, v12);
LABEL_12:
      v46 = 0;
      v47 = *(v40 + 64);
      v48 = *(v40 + 32);
      OUTLINED_FUNCTION_5_33();
      v52 = v51 & v50;
      v54 = (v53 + 63) >> 6;
      v55 = MEMORY[0x277D84F98];
      v104 = v54;
      v105 = v49;
      v110 = v40;
      if ((v51 & v50) != 0)
      {
        goto LABEL_17;
      }

      break;
  }

  while (1)
  {
LABEL_13:
    v56 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      sub_237C0932C();
      __break(1u);
      JUMPOUT(0x237B3DEC8);
    }

    if (v56 >= v54)
    {
      break;
    }

    v52 = v49[v56];
    ++v46;
    if (v52)
    {
      v46 = v56;
      while (1)
      {
LABEL_17:
        v57 = __clz(__rbit64(v52)) | (v46 << 6);
        v58 = (*(v40 + 48) + 16 * v57);
        v60 = *v58;
        v59 = v58[1];
        v61 = *(*(v40 + 56) + 8 * v57);

        *&v107 = sub_237BF3078(v62);

        swift_isUniquelyReferenced_nonNull_native();
        v108 = v55;
        v63 = sub_237ACAC78(v60, v59);
        if (__OFADD__(v55[2], (v64 & 1) == 0))
        {
          goto LABEL_44;
        }

        v65 = v63;
        v66 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
        if (sub_237C090AC())
        {
          v67 = sub_237ACAC78(v60, v59);
          v40 = v110;
          if ((v66 & 1) != (v68 & 1))
          {
            goto LABEL_46;
          }

          v65 = v67;
          if ((v66 & 1) == 0)
          {
LABEL_21:
            v55 = v108;
            OUTLINED_FUNCTION_27_14(v108 + 8 * (v65 >> 6));
            v69 = (v55[6] + 16 * v65);
            *v69 = v60;
            v69[1] = v59;
            *(v55[7] + 8 * v65) = v107;
            v70 = v55[2];
            v71 = __OFADD__(v70, 1);
            v72 = v70 + 1;
            if (v71)
            {
              goto LABEL_45;
            }

            v55[2] = v72;
            goto LABEL_25;
          }
        }

        else
        {
          v40 = v110;
          if ((v66 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v55 = v108;
        v73 = *(v108 + 56);
        v74 = *(v73 + 8 * v65);
        *(v73 + 8 * v65) = v107;

LABEL_25:
        v52 &= v52 - 1;
        v54 = v104;
        v49 = v105;
        if (!v52)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v75 = v106;
  v105 = sub_237B41D1C(v55);
  v106 = v75;
  v77 = v105 + 8;
  v76 = v105[8];
  v78 = *(v105 + 32);
  OUTLINED_FUNCTION_5_33();
  v81 = v80 & v79;
  v83 = (v82 + 63) >> 6;
  v104 = 0x8000000237C1A100;

  v84 = 0;
  v107 = xmmword_237C0B660;
  if (!v81)
  {
    goto LABEL_29;
  }

  do
  {
    v85 = v84;
LABEL_33:
    v86 = (v105[6] + ((v85 << 10) | (16 * __clz(__rbit64(v81)))));
    v87 = *v86;
    v88 = v86[1];
    v81 &= v81 - 1;
    v108 = 0;
    v109 = 0xE000000000000000;

    sub_237C08EDC();

    v108 = 0xD000000000000019;
    v109 = v104;
    MEMORY[0x2383DC360](v87, v88);

    MEMORY[0x2383DC360](11815, 0xE200000000000000);
    v89 = v108;
    v90 = v109;
    sub_237C08C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v91 = swift_allocObject();
    *(v91 + 16) = v107;
    *(v91 + 56) = MEMORY[0x277D837D0];
    *(v91 + 32) = v89;
    *(v91 + 40) = v90;

    sub_237C0939C();

    sub_2379E8EE0(0, &qword_27DE9AD70, 0x277D86200);
    v92 = sub_237C08CFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v93 = swift_allocObject();
    *(v93 + 16) = v107;
    *(v93 + 56) = MEMORY[0x277D837D0];
    *(v93 + 64) = sub_237A8E8E4();
    *(v93 + 32) = v89;
    *(v93 + 40) = v90;
    sub_237C0826C();
  }

  while (v81);
  while (1)
  {
LABEL_29:
    v85 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_43;
    }

    if (v85 >= v83)
    {
      break;
    }

    v81 = v77[v85];
    ++v84;
    if (v81)
    {
      v84 = v85;
      goto LABEL_33;
    }
  }

  v94 = v105;

  if (*(v94 + 16))
  {

    v95 = 0xE000000000000000;
    v108 = 0;
    v109 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C1CD60);
    v96 = sub_237B3B28C(v94);
    if (v97)
    {
      v95 = v97;
    }

    else
    {
      v96 = 0;
    }

    MEMORY[0x2383DC360](v96, v95);

    MEMORY[0x2383DC360](0xD000000000000029, 0x8000000237C1CD80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
    v98 = sub_237C085CC();
    MEMORY[0x2383DC360](v98);

    OUTLINED_FUNCTION_51_7();
    v99 = v108;
    v100 = v109;
    sub_2379E8AF0();
    v101 = OUTLINED_FUNCTION_6_2();
    *v102 = v99;
    v102[1] = v100;
    OUTLINED_FUNCTION_52(v101, v102);
  }

  else
  {
  }

LABEL_41:
  OUTLINED_FUNCTION_73();
}

void sub_237B3DEDC(uint64_t a1)
{
  v3 = v1;
  v52 = sub_237C05DBC();
  v5 = OUTLINED_FUNCTION_0(v52);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for MLSoundClassifier.DataSource();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_2_68();
  sub_237B4216C(v3, v22, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v51 = a1;
    v37 = *v22;
    v38 = *(v22 + 8);
    v40 = *(v22 + 16);
    v39 = *(v22 + 24);
    v41 = *(v22 + 32);
    v42 = *(v22 + 40);
    v43 = *(v22 + 48);
    v50 = *(v22 + 56);
    LODWORD(v49) = *(v22 + 64);
    v48 = *(v22 + 72);
    v47 = *(v22 + 80);
    v53 = v37;
    LOBYTE(v54) = v38;
    v44 = v37;
    sub_2379DBCF4(v37, v38);
    sub_237A70ED4(&v53, v12);
    sub_237B3E278();
    if (v2)
    {
      (*(v7 + 8))(v12, v52);
      sub_2379DBC9C(v44, v38);

      goto LABEL_7;
    }

    (*(v7 + 8))(v12, v52);

    v53 = v43;
    v54 = v50;
    v55 = v49;
    v56 = v48;
    v57 = v47;
    sub_237B4AFF4(&v53, v51);
    sub_2379DBC9C(v44, v38);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v51 = a1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
    v26 = (v22 + v25[12]);
    v28 = *v26;
    v27 = v26[1];
    v29 = (v22 + v25[16]);
    v31 = *v29;
    v30 = v29[1];
    v32 = v22 + v25[20];
    v33 = *v32;
    v34 = *(v32 + 8);
    LODWORD(v50) = *(v32 + 16);
    v49 = *(v32 + 24);
    LODWORD(v48) = *(v32 + 32);
    v35 = v22;
    v36 = v52;
    (*(v7 + 32))(v15, v35, v52);
    sub_237B3E278();
    if (v2)
    {
      (*(v7 + 8))(v15, v36);

LABEL_7:

      return;
    }

    v53 = v33;
    v54 = v34;
    v55 = v50;
    v56 = v49;
    v57 = v48;
    sub_237B4AFF4(&v53, v51);
    (*(v7 + 8))(v15, v36);
  }

  else
  {
    OUTLINED_FUNCTION_6_52();
    sub_237B421C8(v22, v45);
  }
}

void sub_237B3E278()
{
  OUTLINED_FUNCTION_74();
  v33 = v1;
  v34 = v2;
  v4 = v3;
  v6 = v5;
  v38 = sub_237C0602C();
  v7 = OUTLINED_FUNCTION_0(v38);
  v35 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  v11 = sub_237C05CFC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  sub_237C05D0C();
  v17 = sub_237AC1A4C();
  v18 = *(v14 + 8);
  v19 = OUTLINED_FUNCTION_29_11();
  v20(v19);
  if (!v17)
  {
    sub_237C05C9C();
    if (v24)
    {
      OUTLINED_FUNCTION_4_5();
      sub_237C08EDC();

      OUTLINED_FUNCTION_36_13("Provided feature table does not contain column ");
      MEMORY[0x2383DC360](v6, v4);
      OUTLINED_FUNCTION_51_7();
      sub_2379E8AF0();
      v21 = OUTLINED_FUNCTION_6_2();
      *v22 = v36;
      v22[1] = v37;
      goto LABEL_5;
    }

    sub_237C05D5C();
    v25 = sub_237C05FFC();
    if (sub_237B3E574(v25))
    {
      sub_237C05C9C();
      if (v26)
      {
        OUTLINED_FUNCTION_4_5();
        sub_237C08EDC();

        OUTLINED_FUNCTION_36_13("Provided feature table does not contain column ");
        MEMORY[0x2383DC360](v33, v34);
        OUTLINED_FUNCTION_51_7();
        sub_2379E8AF0();
        v27 = OUTLINED_FUNCTION_6_2();
        *v28 = v36;
        v28[1] = v37;
LABEL_11:
        OUTLINED_FUNCTION_52(v27, v28);
LABEL_12:
        (*(v35 + 8))(v0, v38);
        goto LABEL_13;
      }

      if (sub_237B3BBC0())
      {
        goto LABEL_12;
      }

      v29 = 0x8000000237C1CF80;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_25_24();
      v31 = v32 + 11;
    }

    else
    {
      v29 = 0x8000000237C1CF30;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_25_24();
      v31 = v30 + 17;
    }

    *v28 = v31;
    v28[1] = v29;
    goto LABEL_11;
  }

  sub_2379E8AF0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_24();
  *v22 = v23 - 15;
  v22[1] = 0x8000000237C1CFC0;
LABEL_5:
  OUTLINED_FUNCTION_52(v21, v22);
LABEL_13:
  OUTLINED_FUNCTION_73();
}

uint64_t MLSoundClassifier.DataSource.stratifiedSplit(proportions:seed:)(uint64_t a1, uint64_t a2)
{
  MLSoundClassifier.DataSource.labeledSounds()();
  if (!v2)
  {
    sub_237B03618(a2, __src);
    sub_237B3CAEC();
    a1 = v6;
    memcpy(v7, __src, sizeof(v7));
    sub_237B07C38(v7);
  }

  return a1;
}

uint64_t MLSoundClassifier.DataSource.stratifiedSplit<A>(proportions:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MLSoundClassifier.DataSource.labeledSounds()();
  if (!v4)
  {
    v8 = v7;
    v9 = OUTLINED_FUNCTION_29_11();
    a4 = sub_237B038C8(v9, v10, v8, a3, a4);
  }

  return a4;
}

void *sub_237B3E7C4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  if (!*result)
  {
    v9 = 0;
LABEL_13:
    *a2 = v9;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_237C10D30;
  v6 = *(v4 + 16);
  *(v5 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v8 = sub_237AC8938(v5, 65600);
  if (!v2)
  {
    v9 = v8;
    result = sub_237C08D4C();
    if (v6)
    {
      v10 = result;
      v11 = v4 + 32;
      while (1)
      {
        sub_2379E9068(v11, v13, &qword_27DE9A998, &unk_237C0C100);
        if (!v14)
        {
          break;
        }

        result = swift_dynamicCast();
        if (!result)
        {
          goto LABEL_9;
        }

        v12 = v15;
LABEL_10:
        *v10++ = v12;
        v11 += 32;
        if (!--v6)
        {
          goto LABEL_13;
        }
      }

      result = sub_237B42220(v13, &qword_27DE9A998);
LABEL_9:
      v12 = 0;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t MLSoundClassifier.DataSource.diagnose()()
{
  v2 = sub_237C05ADC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for MLSoundClassifier.DataSource();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_2_68();
  sub_237B4216C(v0, v1, v15);
  OUTLINED_FUNCTION_32_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = *(v5 + 32);
      v28 = OUTLINED_FUNCTION_147();
      v29(v28);
      v19 = sub_237B3F6C8();
      goto LABEL_8;
    case 2u:
      v25 = sub_237B40080(*v1);

      return v25;
    case 3u:
      OUTLINED_FUNCTION_6_52();
      sub_237B421C8(v1, v26);
      goto LABEL_6;
    case 4u:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
      v21 = *(v1 + *(v20 + 48) + 8);

      v22 = *(v1 + *(v20 + 64) + 8);

      v23 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v23);
      (*(v24 + 8))(v1);
LABEL_6:
      sub_237C08C1C();
      sub_237BABE74(0xD000000000000047, 0x8000000237C1CDB0);
      v25 = MEMORY[0x277D84F90];
      break;
    default:
      v16 = *(v5 + 32);
      v17 = OUTLINED_FUNCTION_147();
      v18(v17);
      sub_237B3EBEC(v10);
LABEL_8:
      v25 = v19;
      (*(v5 + 8))(v10, v2);
      break;
  }

  return v25;
}

void sub_237B3EBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D458, &qword_237C13B98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v67 - v4;
  v6 = type metadata accessor for DataSourceIssue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v81 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v95 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v88 = &v67 - v13;
  v76 = sub_237C0825C();
  v14 = *(v76 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v76);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_237C05ADC();
  v78 = *(v97 - 8);
  v18 = *(v78 + 64);
  v19 = MEMORY[0x28223BE20](v97);
  v98 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v67 - v21;
  v23 = 0;
  sub_237A5CD94();
  v25 = *(v24 + 16);
  v80 = v22;
  v77 = v25;
  if (!v25)
  {
    v96 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B288, &qword_237C137F0);
    v26 = v78;
    v27 = *(v78 + 72);
    v28 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_237C0B660;
    (*(v26 + 16))(v29 + v28, a1, v97);
    v24 = v29;
    v77 = *(v29 + 16);
    if (!v77)
    {

      v96 = MEMORY[0x277D84F90];
      return;
    }

    v22 = v80;
    v14 = v96;
  }

  v30 = 0;
  v68 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v73 = v24 + v68;
  v72 = (v14 + 8);
  v85 = 0x8000000237C1CFF0;
  v84 = "unreadableAudioFile";
  v93 = (v78 + 8);
  v71 = 0x8000000237C1BC60;
  v70 = "noExamplesForLabel";
  v69 = xmmword_237C0B660;
  v96 = MEMORY[0x277D84F90];
  v31 = v88;
  v87 = v78 + 16;
  v86 = v7;
  v75 = v17;
  v74 = v24;
LABEL_5:
  if (v30 < *(v24 + 16))
  {
    v32 = *(v78 + 72);
    v82 = v30;
    v92 = v32;
    v94 = *(v78 + 16);
    v94(v22, v73 + v32 * v30, v97);
    sub_237C0820C();
    sub_237A5D3A4();
    if (v23)
    {

      v34 = MEMORY[0x277D84F90];
    }

    else
    {
      v34 = v33;
    }

    v83 = 0;
    (*v72)(v17, v76);
    v35 = *(v34 + 16);
    if (!v35)
    {

      goto LABEL_27;
    }

    v89 = 0;
    v79 = v34;
    v36 = v34 + v68;
    while (1)
    {
      v37 = v98;
      v94(v98, v36, v97);
      sub_237BF3444(v37);
      if (!v38)
      {
        sub_237BF0A78(v5);
        goto LABEL_17;
      }

      if (v38 == 1)
      {
        break;
      }

      if (v38 == 2)
      {
        v99 = 0;
        v100 = 0xE000000000000000;
        sub_237C08EDC();

        v99 = sub_237C05A8C();
        v100 = v39;
        MEMORY[0x2383DC360](0xD000000000000024, v84 | 0x8000000000000000);
        v90 = v100;
        v91 = v99;
        sub_237B0778C();
        v40 = sub_237C085AC();
        v41 = *(v6 + 24);
        v42 = v97;
        __swift_storeEnumTagSinglePayload(&v5[v41], 1, 1, v97);
        v43 = *(v6 + 28);
        sub_237C085AC();

        v44 = v85;
        *v5 = 0xD000000000000013;
        *(v5 + 1) = v44;
        v45 = v90;
        *(v5 + 2) = v91;
        *(v5 + 3) = v45;
        *&v5[v43] = v40;
        v31 = v88;
        sub_237B42220(&v5[v41], &qword_27DE9AA18);
        v94(&v5[v41], v98, v42);
        v46 = &v5[v41];
        v7 = v86;
        __swift_storeEnumTagSinglePayload(v46, 0, 1, v42);
LABEL_17:
        __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
        sub_237B07BD4(v5, v31);
        sub_237B4216C(v31, v95, type metadata accessor for DataSourceIssue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = *(v96 + 16);
          sub_237BC1F0C();
          v96 = v52;
        }

        v47 = *(v96 + 16);
        if (v47 >= *(v96 + 24) >> 1)
        {
          sub_237BC1F0C();
          v96 = v53;
        }

        sub_237B421C8(v31, type metadata accessor for DataSourceIssue);
        v48 = *v93;
        (*v93)(v98, v97);
        v49 = v95;
        v50 = v96;
        *(v96 + 16) = v47 + 1;
        sub_237B07BD4(v49, v50 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v47);
        goto LABEL_23;
      }

      v48 = *v93;
      (*v93)(v98, v97);
      v89 = 1;
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
      sub_237B42220(v5, &qword_27DE9D458);
LABEL_23:
      v36 += v92;
      if (!--v35)
      {

        if (v89)
        {
          v22 = v80;
          v48(v80, v97);
          v17 = v75;
          v23 = v83;
          goto LABEL_32;
        }

LABEL_27:
        v54 = sub_237C059DC();
        v56 = v55;
        v99 = 0;
        v100 = 0xE000000000000000;
        sub_237C08EDC();

        v99 = 0x22206C6562614CLL;
        v100 = 0xE700000000000000;
        MEMORY[0x2383DC360](v54, v56);
        MEMORY[0x2383DC360](0xD000000000000012, v70 | 0x8000000000000000);
        v94 = v99;
        v92 = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDA8, &qword_237C16720);
        inited = swift_initStackObject();
        *(inited + 16) = v69;
        *(inited + 32) = 0x6C6562616CLL;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = v54;
        *(inited + 56) = v56;
        sub_237B0778C();

        v58 = sub_237C085AC();
        v59 = v81;
        __swift_storeEnumTagSinglePayload(v81 + *(v6 + 24), 1, 1, v97);
        v60 = *(v6 + 28);
        sub_237C085AC();

        *v59 = 0xD000000000000012;
        v61 = v94;
        v59[1] = v71;
        v59[2] = v61;
        v59[3] = v92;
        *(v59 + v60) = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = *(v96 + 16);
          sub_237BC1F0C();
          v96 = v65;
        }

        v62 = *(v96 + 16);
        v31 = v88;
        v17 = v75;
        v22 = v80;
        v23 = v83;
        if (v62 >= *(v96 + 24) >> 1)
        {
          sub_237BC1F0C();
          v96 = v66;
        }

        (*v93)(v22, v97);
        v63 = v96;
        *(v96 + 16) = v62 + 1;
        sub_237B07BD4(v81, v63 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v62);
LABEL_32:
        v30 = v82 + 1;
        v24 = v74;
        if (v82 + 1 == v77)
        {

          return;
        }

        goto LABEL_5;
      }
    }

    sub_237BF0C98(v5);
    goto LABEL_17;
  }

  __break(1u);
}