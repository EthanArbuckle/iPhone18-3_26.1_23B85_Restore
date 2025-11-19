uint64_t sub_237A52854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v35 = v14[40];
  v19 = v14[18];
  v20 = v14[16];
  OUTLINED_FUNCTION_114_0(v14[17]);
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

uint64_t sub_237A529A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v9 - v6, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B238, &qword_237C0E110);
  return sub_237C06E1C();
}

uint64_t sub_237A52A7C(_BYTE *a1, _BYTE *a2)
{
  if (*a1 == 1 && *a2 == 2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void sub_237A52AB0()
{
  OUTLINED_FUNCTION_74();
  v98 = v1;
  v96 = v0;
  v6 = v5;
  v99[3] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B898, &qword_237C0E0D8);
  OUTLINED_FUNCTION_20(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12();
  v95 = sub_237C05E7C();
  v17 = OUTLINED_FUNCTION_0(v95);
  v91 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_0();
  v90 = v21;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_124_0();
  v23 = sub_237C05DBC();
  v24 = OUTLINED_FUNCTION_0(v23);
  v92 = v25;
  v93 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_0();
  v89 = v28;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_58();
  v94 = v30;
  OUTLINED_FUNCTION_41_0();
  v97 = sub_237C05ADC();
  v31 = OUTLINED_FUNCTION_0(v97);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_0();
  v38 = v36 - v37;
  v40 = MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_85_0();
  MEMORY[0x28223BE20](v41);
  v44 = &v86 - v43;
  v45 = *v6;
  if (v45 != 2)
  {
    if (v45 != 1)
    {
      goto LABEL_14;
    }

    v46 = v42;
    OUTLINED_FUNCTION_51_4();
    sub_237C05A2C();
    OUTLINED_FUNCTION_74_1();
    v47 = *(v33 + 8);
    v48 = v97;
    v47(v2, v97);
    OUTLINED_FUNCTION_49_0();
    sub_237C05A2C();
    v88 = v46;
    OUTLINED_FUNCTION_74_1();
    v49 = OUTLINED_FUNCTION_166();
    (v47)(v49);
    v50 = [objc_opt_self() defaultManager];
    v51 = sub_237C059EC();
    v99[0] = 0;
    v52 = [v50 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:v99];

    v53 = v99[0];
    if (v52)
    {
      v87 = v47;
      v54 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
      v55 = v96;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      v56 = *(v55 + v54);
      v57 = v53;

      v59 = v94;
      sub_237A532D8(v58, v94);

      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_172();
      sub_237C05E6C();
      OUTLINED_FUNCTION_175();
      v60 = v93;
      v61 = v98;
      sub_237C05C6C();
      if (v61)
      {
        (*(v91 + 8))(v3, v95);
        (*(v92 + 8))(v59, v60);
      }

      else
      {
        v91 = *(v91 + 8);
        (v91)(v3, v95);
        v98 = 0;
        v75 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
        OUTLINED_FUNCTION_71();
        swift_beginAccess();
        v76 = *(v55 + v75);

        sub_237A532D8(v77, v89);

        v78 = v90;
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_172();
        sub_237C05E6C();
        v79 = v98;
        sub_237C05C6C();
        if (!v79)
        {
          (v91)(v78, v95);
          v83 = *(v92 + 8);
          v84 = OUTLINED_FUNCTION_34_1();
          v83(v84);
          (v83)(v94, v60);
          OUTLINED_FUNCTION_169();
          v85 = v87;
          v87();
          (v85)(v44, v83);
          goto LABEL_14;
        }

        (v91)(v78, v95);
        v55 = *(v92 + 8);
        v80 = OUTLINED_FUNCTION_34_1();
        v55(v80);
        (v55)(v94, v60);
      }

      OUTLINED_FUNCTION_169();
      v81 = v87;
      v87();
      (v81)(v44, v55);
    }

    else
    {
      v74 = v99[0];
      OUTLINED_FUNCTION_143_0();
      sub_237C0593C();

      swift_willThrow();
      v47(v88, v48);
      v47(v44, v48);
    }

LABEL_14:
    v82 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_73();
    return;
  }

  sub_237C05A2C();
  sub_237C05A3C();
  v62 = *(v33 + 8);
  v63 = v97;
  v62(v2, v97);
  v64 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
  v65 = v96;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v65 + v64, v4, &qword_27DE9B898, &qword_237C0E0D8);
  _s10ClassifierVMa_0();
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_73_1(v66, v67, v68);
  if (v69)
  {
    __break(1u);
  }

  else
  {
    v70 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v65 + v70, v12, &qword_27DE9B890, &qword_237C0E0D0);
    v71 = _s5ModelVMa_0();
    OUTLINED_FUNCTION_73_1(v12, 1, v71);
    if (!v69)
    {
      OUTLINED_FUNCTION_67_1();
      sub_237A595B8(v72, v73);
      sub_237C0735C();
      v62(v38, v63);
      OUTLINED_FUNCTION_4_21();
      sub_237A59650();
      OUTLINED_FUNCTION_1_24();
      sub_237A59650();
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_237A532D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61[1] = a2;
  v4 = sub_237C0873C();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_22();
  v67 = v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0(v66);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23();
  v65 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v21 = OUTLINED_FUNCTION_0(v73);
  v61[0] = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v61 - v29;
  v31 = sub_237C057FC();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v70 = sub_237C057EC();
  v68 = a1;
  v34 = *(a1 + 16);
  OUTLINED_FUNCTION_90_0();
  v71 = v30;
  sub_237C05EDC();
  OUTLINED_FUNCTION_89();
  v72 = v27;
  v69 = v34;
  sub_237C05EDC();
  v35 = 0;
  v63 = (v10 + 8);
  v64 = v17 + 16;
  v62 = (v17 + 8);
  while (v69 != v35)
  {
    v36 = *(v17 + 80);
    OUTLINED_FUNCTION_119_0();
    (*(v17 + 16))(v2, v68 + v37 + *(v17 + 72) * v35, v15);
    v38 = v65;
    sub_237C06C7C();
    sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
    v39 = v66;
    v40 = sub_237C0834C();
    (*v63)(v38, v39);
    v76 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    sub_237A5954C(&qword_27DE9B8A8);
    v41 = sub_237C057DC();
    v43 = v42;
    ++v35;

    sub_237C0872C();
    v76 = sub_237C0870C();
    v77 = v44;
    sub_237C05F4C();

    sub_237C06C4C();
    v74 = v76;
    v75 = v77;
    sub_237C05F3C();
    sub_2379E86D4(v41, v43);

    v45 = *v62;
    v46 = OUTLINED_FUNCTION_138_0();
    v47(v46);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  OUTLINED_FUNCTION_46();
  v48 = sub_237C0602C();
  OUTLINED_FUNCTION_1(v48);
  v50 = *(v49 + 72);
  v51 = OUTLINED_FUNCTION_133_0();
  *(v51 + 16) = xmmword_237C0B670;
  v52 = v73;
  v53 = v71;
  sub_237C05EBC();
  sub_237C05EBC();
  v76 = v51;
  v54 = OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
  OUTLINED_FUNCTION_7_17();
  sub_2379D9224(v56, v57, &unk_237C0B910);
  sub_237C05D7C();

  v58 = *(v61[0] + 8);
  v59 = OUTLINED_FUNCTION_32_3();
  v58(v59);
  return (v58)(v53, v52);
}

uint64_t sub_237A5384C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v39);
  v37 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_127_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  OUTLINED_FUNCTION_0(v38);
  v36 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23();
  v18 = *(a1 + 16);
  OUTLINED_FUNCTION_90_0();
  sub_237C05EDC();
  OUTLINED_FUNCTION_89();
  sub_237C05EDC();
  if (v18)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
    OUTLINED_FUNCTION_88_0(v19);
    v21 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v23 = *(v22 + 72);
    v24 = (v6 + 8);
    do
    {
      sub_237C06C7C();
      sub_237C05F3C();
      (*v24)(v2, v4);
      sub_237C06C4C();
      sub_237C05F3C();

      v21 += v23;
      --v18;
    }

    while (v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  OUTLINED_FUNCTION_46();
  v25 = sub_237C0602C();
  OUTLINED_FUNCTION_1(v25);
  v27 = *(v26 + 72);
  *(OUTLINED_FUNCTION_133_0() + 16) = xmmword_237C0B670;
  sub_237C05EBC();
  sub_237C05EBC();
  v28 = OUTLINED_FUNCTION_37_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_7_17();
  sub_2379D9224(v30, v31, &unk_237C0B910);
  sub_237C05D7C();
  (*(v37 + 8))(v1, v39);
  v32 = *(v36 + 8);
  v33 = OUTLINED_FUNCTION_138_0();
  return v34(v33);
}

void sub_237A53BFC()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = _s20PersistentParametersVMa_2();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v0 + v13, v8, &qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_73_1(v8, 1, v9);
  if (v14)
  {
    sub_2379D9054(v8, &qword_27DE9B8B0, &qword_237C13FC0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v15 = 0xD000000000000030;
    *(v15 + 8) = 0x8000000237C191C0;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    OUTLINED_FUNCTION_151_0(v15, 2);
  }

  else
  {
    OUTLINED_FUNCTION_3_24();
    v16 = OUTLINED_FUNCTION_32_3();
    sub_237A596A4(v16, v17);
    sub_237AD564C(v2);
    OUTLINED_FUNCTION_0_25();
    sub_237A59650();
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A53D90()
{
  OUTLINED_FUNCTION_74();
  v43 = v0;
  v44 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  v7 = OUTLINED_FUNCTION_20(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_124_0();
  v14 = sub_237C05ADC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v20 = OUTLINED_FUNCTION_149_0();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v43 - v28;
  v30 = *v5;
  (*(v17 + 16))(v0, v44, v14);
  sub_237AD5F50(v0, v29);
  if (!v1)
  {
    v31 = v12;
    v32 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
    v33 = v43;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v33 + v32, v2, &qword_27DE9B8B0, &qword_237C13FC0);
    OUTLINED_FUNCTION_73_1(v2, 1, v20);
    if (v34)
    {
      v35 = OUTLINED_FUNCTION_128();
      sub_2379D9054(v35, v36, &qword_237C13FC0);
      OUTLINED_FUNCTION_3_24();
      v37 = OUTLINED_FUNCTION_173();
      sub_237A596A4(v37, v38);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v20);
      v42 = v43;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_2379E8FDC(v31, v42 + v32, &qword_27DE9B8B0, &qword_237C13FC0);
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_3_24();
      sub_237A596A4(v2, v26);
      v45 = v30;
      sub_237A54030(v29, v26, &v45);
      sub_237A59650();
      sub_237A59650();
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A54030(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v127 = a2;
  OUTLINED_FUNCTION_87();
  v7 = type metadata accessor for MLSoundClassifier.DataSource();
  v8 = OUTLINED_FUNCTION_20(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_0();
  v126 = v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v125 = v13;
  OUTLINED_FUNCTION_41_0();
  v14 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v118 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B960, &qword_237C0E2C0);
  OUTLINED_FUNCTION_4(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_30_0();
  v28 = *a3;
  sub_237B3C1CC();
  if (v4)
  {
    return;
  }

  v30 = v29;
  v123 = v23;
  v124 = v5;
  v121 = v24;
  v122 = v20;
  v120 = v28;
  v31 = _s20PersistentParametersVMa_2();
  v32 = *(v3 + v31[7]);
  v33 = sub_237A4C2B8(v30, v32);
  v34 = v3;
  v35 = v127;
  v36 = v33;

  sub_237B3C1CC();
  v119 = v34;
  v38 = *(v35 + v31[7]);
  v39 = sub_237A4C2B8(v37, v38);

  v40 = sub_237AC743C(v36, v39);

  if ((v40 & 1) == 0)
  {
    sub_2379E8AF0();
    v66 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_23_11(v66, v67);
LABEL_26:
    OUTLINED_FUNCTION_151_0(v65, v68);
    return;
  }

  v41 = v31[5];
  v42 = *(v121 + 48);
  v43 = v124;
  sub_237A596FC(v119 + v41, v124);
  sub_237A596FC(v35 + v41, v43 + v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = v35;
  v46 = v122;
  v47 = v123;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v69 = OUTLINED_FUNCTION_64_3();
      sub_237A596FC(v69, v47);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        OUTLINED_FUNCTION_29_5();
        sub_237A59650();
LABEL_30:
        sub_2379E8AF0();
        v88 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_23_11(v88, v89);
        OUTLINED_FUNCTION_151_0(v90, v91);
        sub_2379D9054(v43, &qword_27DE9B960, &qword_237C0E2C0);
        return;
      }

      sub_237A596A4(v47, v125);
      sub_237A596A4(v43 + v42, v126);
      sub_237B3C1CC();
      sub_237A4C2B8(v70, v32);

      sub_237B3C1CC();
      sub_237A4C2B8(v71, v38);

      v104 = OUTLINED_FUNCTION_32_3();
      v106 = sub_237AC743C(v104, v105);

      if ((v106 & 1) == 0)
      {
        sub_2379E8AF0();
        v114 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_23_11(v114, v115);
        OUTLINED_FUNCTION_151_0(v116, v117);
        sub_237A59650();
        OUTLINED_FUNCTION_173();
        sub_237A59650();
        goto LABEL_21;
      }

      sub_237A59650();
      OUTLINED_FUNCTION_173();
LABEL_7:
      sub_237A59650();
LABEL_8:
      OUTLINED_FUNCTION_8_17();
      sub_237A59650();
      if (*(v119 + v31[6]) != *(v45 + v31[6]))
      {
        v80 = sub_237C08A6C();
        v82 = v81;
        v83 = sub_237C08A6C();
        v85 = v84;
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2();
        *v65 = xmmword_237C0DFF0;
LABEL_24:
        *(v65 + 16) = v80;
        *(v65 + 24) = v82;
        *(v65 + 32) = v83;
        *(v65 + 40) = v85;
        goto LABEL_25;
      }

      if (v32 != v38)
      {
        v80 = sub_237C08A6C();
        v82 = v86;
        v83 = sub_237C08A6C();
        v85 = v87;
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2();
        *v65 = 0xD000000000000023;
        *(v65 + 8) = 0x8000000237C19170;
        goto LABEL_24;
      }

      v48 = v31[9];
      v49 = (v119 + v48);
      v50 = *(v119 + v48);
      v51 = *(v119 + v48 + 8);
      v52 = v45 + v48;
      v53 = *(v45 + v48);
      v54 = *(v45 + v48 + 8);
      v55 = __OFSUB__(*v49, v53);
      if (v51)
      {
        if (*v49 != v53)
        {
          v54 = 0;
        }

        if ((v54 & 1) == 0)
        {
LABEL_14:
          v56 = OUTLINED_FUNCTION_120_0(v50);
          OUTLINED_FUNCTION_180(v56, v57);
          OUTLINED_FUNCTION_121_0();

          v58 = v128;
          v59 = v129;
          v60 = *(v52 + 8);
          v61 = OUTLINED_FUNCTION_120_0(*v52);
          OUTLINED_FUNCTION_180(v61, v62);
          OUTLINED_FUNCTION_121_0();

          v63 = v128;
          v64 = v129;
          sub_2379E8AF0();
          OUTLINED_FUNCTION_6_2();
          *v65 = 0xD000000000000011;
          *(v65 + 8) = 0x8000000237C191A0;
          *(v65 + 16) = v58;
          *(v65 + 24) = v59;
          *(v65 + 32) = v63;
          *(v65 + 40) = v64;
LABEL_25:
          v68 = 3;
          goto LABEL_26;
        }
      }

      else
      {
        if (*v49 != v53)
        {
          v54 = 1;
        }

        if (v54)
        {
          goto LABEL_14;
        }
      }

      v92 = v119;
      switch(v120)
      {
        case 1:

          return;
        case 2:
          OUTLINED_FUNCTION_51_4();
          goto LABEL_38;
        case 3:
          OUTLINED_FUNCTION_158();
          goto LABEL_38;
        case 4:
          OUTLINED_FUNCTION_60_0();
          goto LABEL_38;
        default:
LABEL_38:
          OUTLINED_FUNCTION_156();
          v93 = sub_237C0929C();

          if (v93)
          {
            return;
          }

          v94 = v31[8];
          v95 = *(v45 + v94);
          if (*(v92 + v94) != v95)
          {
            v128 = *(v92 + v94);
            sub_237A20C10();
            OUTLINED_FUNCTION_58_0();
            v98 = sub_237C08DEC();
            v100 = v99;
            v130 = v95;
            OUTLINED_FUNCTION_58_0();
            v101 = sub_237C08DEC();
            v103 = v102;
            sub_2379E8AF0();
            OUTLINED_FUNCTION_6_2();
            *v65 = xmmword_237C0E000;
            *(v65 + 16) = v98;
            *(v65 + 24) = v100;
LABEL_52:
            *(v65 + 32) = v101;
            *(v65 + 40) = v103;
            goto LABEL_25;
          }

          v96 = *v52;
          v97 = *(v52 + 8);
          if (v49[1])
          {
            if (*v49 != *v52)
            {
              v97 = 0;
            }

            if ((v97 & 1) == 0)
            {
LABEL_51:
              v107 = OUTLINED_FUNCTION_120_0(*v49);
              OUTLINED_FUNCTION_180(v107, v108);
              OUTLINED_FUNCTION_121_0();

              v109 = v128;
              v110 = v129;
              v111 = *(v52 + 8);
              v112 = OUTLINED_FUNCTION_120_0(*v52);
              OUTLINED_FUNCTION_180(v112, v113);
              OUTLINED_FUNCTION_121_0();

              v101 = v128;
              v103 = v129;
              sub_2379E8AF0();
              OUTLINED_FUNCTION_6_2();
              *v65 = xmmword_237C0E010;
              *(v65 + 16) = v109;
              *(v65 + 24) = v110;
              goto LABEL_52;
            }
          }

          else
          {
            if (*v49 != *v52)
            {
              v97 = 1;
            }

            if (v97)
            {
              goto LABEL_51;
            }
          }

          break;
      }

      return;
    case 2:
      v72 = OUTLINED_FUNCTION_64_3();
      sub_237A596FC(v72, v46);
      v73 = *v46;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_237AFE1A4(v73, *(v43 + v42));
        v75 = v74;

        if (v75)
        {
          goto LABEL_8;
        }

        sub_2379E8AF0();
        v76 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_23_11(v76, v77);
        OUTLINED_FUNCTION_151_0(v78, v79);
LABEL_21:
        OUTLINED_FUNCTION_8_17();
        sub_237A59650();
        return;
      }

      goto LABEL_30;
    default:
      OUTLINED_FUNCTION_8_17();
      goto LABEL_7;
  }
}

uint64_t sub_237A548C0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_68_0();
  sub_237A59650();
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9B8B0, &qword_237C13FC0);
  v2 = *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);

  v3 = *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);

  v4 = *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);

  v5 = *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);

  v6 = *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);

  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &qword_27DE9B898, &qword_237C0E0D8);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model, &qword_27DE9B890, &qword_237C0E0D0);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters, &qword_27DE9B968, &qword_237C0E2C8);
  v7 = OUTLINED_FUNCTION_168(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics);
  sub_2379D9054(v7, v8, &qword_237C0DD00);
  v9 = OUTLINED_FUNCTION_168(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics);
  sub_2379D9054(v9, v10, &qword_237C0DD00);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter, &qword_27DE9B8D0, &qword_237C0E1E8);
  return v0;
}

uint64_t sub_237A54A2C()
{
  sub_237A548C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SoundClassifierTrainingSessionDelegate()
{
  result = qword_27DE9B850;
  if (!qword_27DE9B850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A54AD8()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_237A54DA0(319, &qword_27DE9B860, _s20PersistentParametersVMa_2);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_237A54DA0(319, &qword_27DE9B868, _s10ClassifierVMa_0);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_237A54DA0(319, &qword_27DE9B870, _s5ModelVMa_0);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_237A54DA0(319, &qword_27DE9B878, type metadata accessor for MLSoundClassifier.ModelParameters);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_237A54DA0(319, &qword_27DE9B880, type metadata accessor for MLClassifierMetrics);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_237A54DA0(319, &qword_27DE9B888, type metadata accessor for TrainingTablePrinter);
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

void sub_237A54DA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_237A54E64(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_237A4C87C(a1);
  v5 = *(v2 + 8);
  v7 = v6 & 1;

  return v5(v4, v7);
}

uint64_t sub_237A54F18()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237A54FB0;

  return sub_237A4CD30();
}

uint64_t sub_237A54FB0()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_18();
  v9 = *(v8 + 16);
  v10 = *v1;
  OUTLINED_FUNCTION_3();
  *v11 = v10;

  v14 = *(v10 + 8);
  if (v0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v3 & 1;
    v12 = v7;
    v13 = v5;
  }

  return v14(v12, v13, v15);
}

uint64_t sub_237A550C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237A55150;

  return sub_237A4F350();
}

uint64_t sub_237A55150()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_18();
  v7 = *(v6 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_3();
  *v9 = v8;

  v11 = *(v8 + 8);
  if (v0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v3 & 1;
    v10 = v5;
  }

  return v11(v10, v12);
}

uint64_t sub_237A55258()
{
  v1 = *v0;
  sub_237A52AB0();
  return v2 & 1;
}

uint64_t sub_237A55308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a5[1];
  v22 = *a5;
  v11 = *(a5 + 4);
  v12 = *(a5 + 40);
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v23 = *(a5 + 4);
  sub_237C092CC();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v16 != (a4 >> 1) - a3)
  {
LABEL_17:
    swift_unknownObjectRelease();
    v11 = v23;
LABEL_2:
    sub_237A55F7C(a1, a2, a3, a4);
    v14 = v13;
    goto LABEL_9;
  }

  v14 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease();
  v11 = v23;
  if (v14)
  {
    goto LABEL_10;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_9:
  result = swift_unknownObjectRelease();
LABEL_10:
  if (*&v22 >= 0.0 && *&v22 < 1.0)
  {
    *a6 = v22;
    *(a6 + 16) = v21;
    *(a6 + 32) = v11;
    *(a6 + 40) = v12;
    *(a6 + 48) = v14;
  }

  else
  {

    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003ALL, 0x8000000237C19090);
    sub_237C08A8C();
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_237C0B660;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;

    sub_237C0939C();

    sub_2379E8AF0();
    swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0xE000000000000000;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237A5556C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (*a2 >= 0.0 && v3 < 1.0)
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 32);
    v10 = *(a2 + 8);
    *a3 = v3;
    *(a3 + 8) = v10;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 32) = v9;
    *(a3 + 40) = v8;
    *(a3 + 48) = result;
  }

  else
  {

    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003ALL, 0x8000000237C19090);
    sub_237C08A8C();
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_237C0B660;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;

    sub_237C0939C();

    sub_2379E8AF0();
    v6 = OUTLINED_FUNCTION_6_2();
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    return OUTLINED_FUNCTION_52(v6, v7);
  }

  return result;
}

uint64_t sub_237A556DC()
{

  while (1)
  {
    while (1)
    {
      v0 = sub_237C087EC();
      if (!v1)
      {

        sub_237C087EC();
        v9 = v8;

        if (v9)
        {
          goto LABEL_18;
        }

        return 0;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_237C087EC();
      if (!v5)
      {

LABEL_15:

        return 0;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_105_0();
    if (sub_237C0929C())
    {
      break;
    }

    v7 = sub_237C0929C();

    if (v7)
    {
      goto LABEL_15;
    }
  }

LABEL_18:

  return 1;
}

id sub_237A5584C(uint64_t a1)
{
  v2 = v1;
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237C059EC();
  v17[0] = 0;
  v5 = [v2 initForReading:v4 error:v17];

  v6 = v17[0];
  if (v5)
  {
    v7 = sub_237C05ADC();
    OUTLINED_FUNCTION_4(v7);
    v9 = *(v8 + 8);
    v10 = v6;
    v11 = OUTLINED_FUNCTION_87_0();
    v9(v11);
  }

  else
  {
    v12 = v17[0];
    sub_237C0593C();

    swift_willThrow();
    v13 = sub_237C05ADC();
    OUTLINED_FUNCTION_4(v13);
    (*(v14 + 8))(a1);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_237A55984()
{
  sub_237A2EAA4();
  v1 = OUTLINED_FUNCTION_6_6();
  v3 = sub_237A01800(v1, v2);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  sub_237BC24E4();
  OUTLINED_FUNCTION_143_0();

  v13 = OUTLINED_FUNCTION_130_0(v5, v6, v7, v8, v9, v10, v11, v12, v18);
  v16 = sub_237BA2040(v13, v14, v15);

  if (v16 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v0;
}

const void *sub_237A55A8C(void *a1, char a2)
{
  v9 = a1;
  v3 = a2 & 1;
  v10 = a2 & 1;
  MLDataTable.size.getter();
  OUTLINED_FUNCTION_6_6();
  v4 = sub_237A018D0();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = sub_237BC25C8();
  sub_2379DBCF4(a1, v3);
  v7 = sub_237BA19E4(&v9, v6 + 32, v5, a1, v3);
  sub_2379DBC9C(v9, v10);
  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

const void *sub_237A55B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237A2E9F4();
  v6 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v6, v7);
  v8 = OUTLINED_FUNCTION_6_6();
  v10 = sub_237A0290C(v8, v9, a3);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = v10;
  v12 = sub_237BC2630();

  v13 = sub_237BA1788(&v15, v12 + 32, v11, a1, a2, a3);

  if (v13 != v11)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t sub_237A55C98(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, void), uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  sub_237A2E9F4();
  v8 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v8, v9);
  v10 = OUTLINED_FUNCTION_6_6();
  v11 = a2(v10);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = v11;
  v13 = a3(v11, 0);

  v14 = a4(&v16, v13 + 32, v12, a1);

  if (v14 != v12)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_237A55D4C()
{
  sub_237A2E9F4();
  v1 = OUTLINED_FUNCTION_6_6();
  v3 = sub_237A017E8(v1, v2);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  sub_237BC2698();
  OUTLINED_FUNCTION_143_0();

  v13 = OUTLINED_FUNCTION_130_0(v5, v6, v7, v8, v9, v10, v11, v12, v18);
  v16 = sub_237BA1438(v13, v14, v15);

  if (v16 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v0;
}

void sub_237A55DCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_237A36634();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_237A55EA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_237BC2708();
    if (v4 != a3)
    {
      v6 = sub_237C07A8C();
      OUTLINED_FUNCTION_88_0(v6);
      v8 = v7;
      v10 = v9;
      v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v12 = *(v10 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_237A55F7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_237BC2730((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220) - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_237A560B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for TrainingTablePrinter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_237C05BFC();
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 8))(v0 + v3);

  v8 = *(v0 + v3 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_237A561D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for TrainingTablePrinter(v4);
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a2(v2, v7, v8);
}

uint64_t sub_237A56258(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237A1FC94(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_237A563BC(v7);
  *a1 = v3;
  return result;
}

void sub_237A5630C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_20(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237A1FC94(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_237A56504(v8);
  *a1 = v5;
}

uint64_t sub_237A563BC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_237C0923C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
        v6 = sub_237C0898C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_237A56DA0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_237A56644(0, v2, 1, a1);
  }

  return result;
}

void sub_237A56504(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_237C0923C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
        v6 = sub_237C0898C();
        *(v6 + 16) = v5;
      }

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
      OUTLINED_FUNCTION_20(v7);
      v9 = *(v8 + 80);
      OUTLINED_FUNCTION_119_0();
      sub_237A579CC(&v15, v16, a1, v4, v11, v12, v13, v14, v6 + v10, v5);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_237A569FC();
  }
}

uint64_t sub_237A56644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v55 = sub_237C05ADC();
  v8 = *(v55 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v49 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v39 - v16;
  result = MEMORY[0x28223BE20](v15);
  v59 = &v39 - v19;
  v41 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v51 = (v8 + 8);
    v52 = v22;
    v50 = (v21 - 8);
    v53 = v21;
    v24 = v20 + v23 * (a3 - 1);
    v46 = -v23;
    v47 = (v21 + 16);
    v25 = a1 - a3;
    v48 = v20;
    v40 = v23;
    v26 = v20 + v23 * a3;
    while (2)
    {
      v44 = v24;
      v45 = a3;
      v42 = v26;
      v43 = v25;
      v56 = v25;
      do
      {
        v27 = v52;
        v52();
        (v27)(v60, v24, v11);
        v28 = v54;
        sub_237C06C7C();
        v29 = sub_237C05A8C();
        v57 = v30;
        v58 = v29;
        v31 = v11;
        v32 = *v51;
        v33 = v55;
        (*v51)(v28, v55);
        sub_237C06C7C();
        sub_237C05A8C();
        v32(v28, v33);
        v11 = v31;
        v34 = sub_237A556DC();

        v35 = *v50;
        (*v50)(v60, v31);
        result = v35(v59, v31);
        if ((v34 & 1) == 0)
        {
          break;
        }

        if (!v48)
        {
          __break(1u);
          return result;
        }

        v36 = *v47;
        v37 = v49;
        (*v47)(v49, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v36)(v24, v37, v11);
        v24 += v46;
        v26 += v46;
      }

      while (!__CFADD__(v56++, 1));
      a3 = v45 + 1;
      v24 = v44 + v40;
      v25 = v43 - 1;
      v26 = v42 + v40;
      if (v45 + 1 != v41)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_237A569FC()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_87();
  v76 = sub_237C05ADC();
  v7 = OUTLINED_FUNCTION_0(v76);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_22();
  v75 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  v68 = v17;
  OUTLINED_FUNCTION_39_0();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v58 - v23;
  v60 = v6;
  if (v4 != v6)
  {
    v25 = *v2;
    v27 = *(v22 + 16);
    v26 = v22 + 16;
    v28 = *(v26 + 56);
    v72 = (v9 + 8);
    v73 = v27;
    v70 = v21;
    v71 = (v26 - 8);
    v74 = v26;
    v66 = (v26 + 16);
    v67 = v25;
    v29 = v25 + v28 * (v4 - 1);
    v65 = -v28;
    v30 = v0 - v4;
    v59 = v28;
    v31 = v25 + v28 * v4;
    v69 = v24;
    while (2)
    {
      v63 = v29;
      v64 = v4;
      v61 = v31;
      v62 = v30;
      v32 = v30;
      v79 = v29;
      while (1)
      {
        v77 = v32;
        v78 = v31;
        v33 = OUTLINED_FUNCTION_175();
        v34 = v73;
        (v73)(v33);
        v34(v21, v79, v13);
        v35 = v75;
        OUTLINED_FUNCTION_155_0();
        sub_237C06C7C();
        v36 = OUTLINED_FUNCTION_182();
        v38 = v37;
        v39 = *v72;
        v40 = v76;
        (*v72)(v35, v76);
        OUTLINED_FUNCTION_155_0();
        sub_237C06C7C();
        v41 = v13;
        v42 = OUTLINED_FUNCTION_182();
        v44 = v43;
        v39(v35, v40);
        if (v36 == v42 && v38 == v44)
        {
          break;
        }

        OUTLINED_FUNCTION_105_0();
        v46 = sub_237C0929C();

        v21 = v70;
        v47 = *v71;
        v48 = OUTLINED_FUNCTION_138_0();
        v47(v48);
        v49 = OUTLINED_FUNCTION_175();
        v47(v49);
        v13 = v41;
        v51 = v77;
        v50 = v78;
        if (v46)
        {
          if (!v67)
          {
            __break(1u);
            return;
          }

          v52 = *v66;
          v53 = v68;
          (*v66)(v68, v78, v13);
          OUTLINED_FUNCTION_153_0();
          swift_arrayInitWithTakeFrontToBack();
          v52(v79, v53, v13);
          v79 += v65;
          v31 = v50 + v65;
          v54 = __CFADD__(v51, 1);
          v32 = v51 + 1;
          if (!v54)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v21 = v70;
      v55 = *v71;
      v56 = OUTLINED_FUNCTION_138_0();
      v55(v56);
      v57 = OUTLINED_FUNCTION_175();
      v55(v57);
      v13 = v41;
LABEL_14:
      v4 = v64 + 1;
      v29 = v63 + v59;
      v30 = v62 - 1;
      v31 = v61 + v59;
      if (v64 + 1 != v60)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A56DA0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v143 = a1;
  v162 = sub_237C05ADC();
  v6 = *(v162 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v162);
  v161 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v146 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v157 = &v138 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v168 = &v138 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v169 = &v138 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v23 = &v138 - v22;
  v151 = v20;
  v152 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_101:
    v169 = *v143;
    if (!v169)
    {
      goto LABEL_143;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v153;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_103;
    }

    goto LABEL_137;
  }

  v139 = a4;
  v25 = 0;
  v163 = v20 + 16;
  v164 = (v20 + 8);
  v159 = (v20 + 32);
  v160 = (v6 + 8);
  v26 = MEMORY[0x277D84F90];
  v140 = v21;
  v142 = v23;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v147 = v25;
    if (v25 + 1 < v24)
    {
      v155 = v24;
      v29 = v25;
      v30 = *v152;
      v31 = *(v20 + 72);
      v32 = *(v20 + 16);
      v33 = *v152 + v31 * v28;
      (v32)(v23);
      v34 = v30 + v31 * v29;
      v35 = v140;
      v149 = v32;
      (v32)(v140, v34, v9);
      v36 = v142;
      v37 = v153;
      sub_237B54EF0();
      LODWORD(v150) = v38;
      v153 = v37;
      if (v37)
      {
        v137 = *v164;
        (*v164)(v35, v9);
        (v137)(v36, v9);
LABEL_111:

        return;
      }

      v141 = v26;
      v26 = v164;
      v39 = *v164;
      (*v164)(v35, v9);
      v148 = v39;
      (v39)(v36, v9);
      v40 = v147 + 2;
      v41 = v30 + v31 * (v147 + 2);
      v156 = v31;
      v42 = v155;
      while (1)
      {
        v43 = v40;
        v44 = v28 + 1;
        if (v44 >= v42)
        {
          break;
        }

        v45 = v149;
        v167 = v40;
        v149();
        v46 = v168;
        v166 = v33;
        (v45)(v168, v33, v9);
        v154 = v44;
        v47 = v161;
        sub_237C06C7C();
        v165 = sub_237C05A8C();
        v158 = v48;
        v49 = *v160;
        v50 = v162;
        (*v160)(v47, v162);
        sub_237C06C7C();
        sub_237C05A8C();
        v51 = v47;
        v28 = v154;
        v49(v51, v50);
        v52 = sub_237A556DC() & 1;
        v31 = v156;

        v26 = v164;
        v53 = v148;
        (v148)(v46, v9);
        v53(v169, v9);
        v43 = v167;
        v42 = v155;
        v41 += v31;
        v33 = v166 + v31;
        v40 = v167 + 1;
        if ((v150 & 1) != v52)
        {
          goto LABEL_10;
        }
      }

      v28 = v42;
LABEL_10:
      if (v150)
      {
        v27 = v147;
        if (v28 < v147)
        {
          goto LABEL_136;
        }

        if (v147 >= v28)
        {
          v26 = v141;
        }

        else
        {
          if (v42 >= v43)
          {
            v54 = v43;
          }

          else
          {
            v54 = v42;
          }

          v55 = v31 * (v54 - 1);
          v56 = v31 * v54;
          v57 = v147 * v31;
          v154 = v28;
          v58 = v147;
          do
          {
            if (v58 != --v28)
            {
              v59 = *v152;
              if (!*v152)
              {
                goto LABEL_141;
              }

              v60 = *v159;
              (*v159)(v146, v59 + v57, v9);
              v61 = v57 < v55 || v59 + v57 >= (v59 + v56);
              if (v61)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != v55)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v60((v59 + v55), v146, v9);
              v27 = v147;
              v31 = v156;
            }

            ++v58;
            v55 -= v31;
            v56 -= v31;
            v57 += v31;
          }

          while (v58 < v28);
          v26 = v141;
          v28 = v154;
        }
      }

      else
      {
        v26 = v141;
        v27 = v147;
      }
    }

    v62 = v152[1];
    if (v28 < v62)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_133;
      }

      if (v28 - v27 < v139)
      {
        break;
      }
    }

LABEL_48:
    if (v28 < v27)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v125 = *(v26 + 2);
      sub_237BC0B38();
      v26 = v126;
    }

    v83 = *(v26 + 2);
    v84 = v83 + 1;
    if (v83 >= *(v26 + 3) >> 1)
    {
      sub_237BC0B38();
      v26 = v127;
    }

    *(v26 + 2) = v84;
    v85 = v26 + 32;
    v86 = &v26[16 * v83 + 32];
    *v86 = v147;
    *(v86 + 1) = v28;
    v167 = *v143;
    if (!v167)
    {
      goto LABEL_142;
    }

    v154 = v28;
    if (v83)
    {
      while (1)
      {
        v87 = v84 - 1;
        v88 = &v85[16 * v84 - 16];
        v89 = &v26[16 * v84];
        if (v84 >= 4)
        {
          break;
        }

        if (v84 == 3)
        {
          v90 = *(v26 + 4);
          v91 = *(v26 + 5);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_68:
          if (v93)
          {
            goto LABEL_119;
          }

          v105 = *v89;
          v104 = *(v89 + 1);
          v106 = __OFSUB__(v104, v105);
          v107 = v104 - v105;
          v108 = v106;
          if (v106)
          {
            goto LABEL_122;
          }

          v109 = *(v88 + 1);
          v110 = v109 - *v88;
          if (__OFSUB__(v109, *v88))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v107, v110))
          {
            goto LABEL_127;
          }

          if (v107 + v110 >= v92)
          {
            if (v92 < v110)
            {
              v87 = v84 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v84 < 2)
        {
          goto LABEL_121;
        }

        v112 = *v89;
        v111 = *(v89 + 1);
        v100 = __OFSUB__(v111, v112);
        v107 = v111 - v112;
        v108 = v100;
LABEL_83:
        if (v108)
        {
          goto LABEL_124;
        }

        v114 = *v88;
        v113 = *(v88 + 1);
        v100 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v100)
        {
          goto LABEL_126;
        }

        if (v115 < v107)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v87 - 1 >= v84)
        {
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
LABEL_129:
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
          goto LABEL_135;
        }

        if (!*v152)
        {
          goto LABEL_139;
        }

        v119 = v26;
        v26 = &v85[16 * v87 - 16];
        v120 = *v26;
        v121 = &v85[16 * v87];
        v122 = *(v121 + 1);
        v123 = v153;
        sub_237A58644(*v152 + *(v151 + 72) * *v26, *v152 + *(v151 + 72) * *v121, *v152 + *(v151 + 72) * v122, v167);
        v153 = v123;
        if (v123)
        {
          goto LABEL_111;
        }

        if (v122 < v120)
        {
          goto LABEL_114;
        }

        v124 = *(v119 + 2);
        if (v87 > v124)
        {
          goto LABEL_115;
        }

        *v26 = v120;
        *(v26 + 1) = v122;
        if (v87 >= v124)
        {
          goto LABEL_116;
        }

        v84 = v124 - 1;
        sub_237BA130C(v121 + 16, v124 - 1 - v87, &v85[16 * v87]);
        v26 = v119;
        *(v119 + 2) = v124 - 1;
        if (v124 <= 2)
        {
          goto LABEL_97;
        }
      }

      v94 = &v85[16 * v84];
      v95 = *(v94 - 8);
      v96 = *(v94 - 7);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_117;
      }

      v99 = *(v94 - 6);
      v98 = *(v94 - 5);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_118;
      }

      v101 = *(v89 + 1);
      v102 = v101 - *v89;
      if (__OFSUB__(v101, *v89))
      {
        goto LABEL_120;
      }

      v100 = __OFADD__(v92, v102);
      v103 = v92 + v102;
      if (v100)
      {
        goto LABEL_123;
      }

      if (v103 >= v97)
      {
        v117 = *v88;
        v116 = *(v88 + 1);
        v100 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v100)
        {
          goto LABEL_131;
        }

        if (v92 < v118)
        {
          v87 = v84 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v20 = v151;
    v24 = v152[1];
    v25 = v154;
    v23 = v142;
    if (v154 >= v24)
    {
      goto LABEL_101;
    }
  }

  v63 = v27 + v139;
  if (__OFADD__(v27, v139))
  {
    goto LABEL_134;
  }

  if (v63 >= v62)
  {
    v63 = v152[1];
  }

  if (v63 < v27)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    v26 = sub_237BA12F8(v26);
LABEL_103:
    v129 = v26;
    v131 = *(v26 + 2);
    v26 += 16;
    for (i = v131; i >= 2; *v26 = i)
    {
      if (!*v152)
      {
        goto LABEL_140;
      }

      v132 = &v129[16 * i];
      v133 = *v132;
      v134 = &v26[16 * i];
      v135 = *(v134 + 1);
      sub_237A58644(*v152 + *(v151 + 72) * *v132, *v152 + *(v151 + 72) * *v134, *v152 + *(v151 + 72) * v135, v169);
      if (v9)
      {
        break;
      }

      if (v135 < v133)
      {
        goto LABEL_128;
      }

      if (i - 2 >= *v26)
      {
        goto LABEL_129;
      }

      *v132 = v133;
      *(v132 + 1) = v135;
      v136 = *v26 - i;
      if (*v26 < i)
      {
        goto LABEL_130;
      }

      i = *v26 - 1;
      sub_237BA130C(v134 + 16, v136, v134);
    }

    goto LABEL_111;
  }

  if (v28 == v63)
  {
    goto LABEL_48;
  }

  v141 = v26;
  v64 = *v152;
  v65 = *(v151 + 72);
  v158 = *(v151 + 16);
  v66 = (v64 + v65 * (v28 - 1));
  v155 = -v65;
  v156 = v64;
  v67 = (v27 - v28);
  v144 = v65;
  v68 = (v64 + v28 * v65);
  v145 = v63;
LABEL_41:
  v154 = v28;
  v148 = v68;
  v149 = v67;
  v69 = v67;
  v150 = v66;
  while (1)
  {
    v165 = v69;
    v70 = v158;
    v158();
    (v70)(v168, v66, v9);
    v71 = v161;
    sub_237C06C7C();
    v72 = sub_237C05A8C();
    v166 = v73;
    v167 = v72;
    v74 = *v160;
    v75 = v9;
    v76 = v162;
    (*v160)(v71, v162);
    sub_237C06C7C();
    sub_237C05A8C();
    v77 = v76;
    v9 = v75;
    v74(v71, v77);
    v78 = sub_237A556DC();

    v79 = *v164;
    (*v164)(v168, v75);
    (v79)(v169, v75);
    if ((v78 & 1) == 0)
    {
LABEL_46:
      v28 = v154 + 1;
      v66 = &v150[v144];
      v67 = (v149 - 1);
      v68 = &v148[v144];
      if (v154 + 1 == v145)
      {
        v28 = v145;
        v26 = v141;
        v27 = v147;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    v80 = v165;
    if (!v156)
    {
      break;
    }

    v81 = *v159;
    v82 = v157;
    (*v159)(v157, v68, v75);
    swift_arrayInitWithTakeFrontToBack();
    v81(v66, v82, v75);
    v66 += v155;
    v68 += v155;
    v61 = __CFADD__(v80, 1);
    v69 = v80 + 1;
    if (v61)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_237A579CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  v195 = v10;
  v184 = v12;
  v14 = v13;
  v181 = v15;
  v204 = sub_237C05ADC();
  v16 = OUTLINED_FUNCTION_0(v204);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_22();
  v203 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  v199 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_85_0();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v178 - v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_138();
  v194 = v33;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_138();
  v193 = v35;
  OUTLINED_FUNCTION_39_0();
  v37 = MEMORY[0x28223BE20](v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  v191 = v39;
  v192 = v14;
  v41 = v14[1];
  if (v41 < 1)
  {
LABEL_112:
    OUTLINED_FUNCTION_160();
    if (!v162)
    {
      goto LABEL_155;
    }

    v18 = v161;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v195;
    if (isUniquelyReferenced_nonNull_native)
    {
      v168 = v18;
      goto LABEL_115;
    }

LABEL_149:
    v168 = sub_237BA12F8(v18);
LABEL_115:
    v169 = v168 + 16;
    v170 = *(v168 + 2);
    while (v170 >= 2)
    {
      if (!*v192)
      {
        goto LABEL_152;
      }

      v18 = v168;
      v171 = &v168[16 * v170];
      v172 = *v171;
      v173 = &v169[2 * v170];
      v174 = *(v173 + 1);
      sub_237A58CEC(*v192 + *(v191 + 72) * *v171, *v192 + *(v191 + 72) * *v173, *v192 + *(v191 + 72) * v174, a10, v164, v165, v166, v167, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
      if (v22)
      {
        break;
      }

      if (v174 < v172)
      {
        goto LABEL_140;
      }

      if (v170 - 2 >= *v169)
      {
        goto LABEL_141;
      }

      *v171 = v172;
      *(v171 + 1) = v174;
      v175 = *v169 - v170;
      if (*v169 < v170)
      {
        goto LABEL_142;
      }

      v170 = *v169 - 1;
      sub_237BA130C(v173 + 16, v175, v173);
      *v169 = v170;
      v168 = v18;
    }

    goto LABEL_123;
  }

  v178 = v38;
  v179 = v40;
  v42 = 0;
  v205 = (v39 + 8);
  v206 = v39 + 16;
  v201 = (v39 + 32);
  v202 = (v18 + 8);
  v43 = MEMORY[0x277D84F90];
  v207 = v11;
  v208 = v32;
  v180 = v22;
  while (1)
  {
    v182 = v43;
    v44 = v42 + 1;
    v183 = v42;
    if (v42 + 1 >= v41)
    {
      goto LABEL_36;
    }

    v45 = v42;
    v198 = v41;
    v46 = *v192;
    v47 = *(v39 + 72);
    v196 = v42 + 1;
    v48 = v46 + v47 * v44;
    v49 = *(v39 + 16);
    v50 = v178;
    a10 = v48;
    v49(v178);
    v210 = v46;
    v190 = v49;
    (v49)(v179, v46 + v47 * v45, v22);
    v51 = v195;
    sub_237A4C690();
    LODWORD(v197) = v52;
    v195 = v51;
    if (v51)
    {
      v176 = *v205;
      v177 = OUTLINED_FUNCTION_141_0();
      v176(v177);
      (v176)(v50, v22);
LABEL_123:

      OUTLINED_FUNCTION_73();
      return;
    }

    v53 = *v205;
    v54 = OUTLINED_FUNCTION_141_0();
    (v53)(v54);
    v189 = v53;
    (v53)(v50, v22);
    v55 = v45 + 2;
    v18 = v210 + v47 * (v45 + 2);
    v44 = v196;
    v56 = v47;
    v200 = v47;
    v57 = v198;
    v58 = a10;
    while (1)
    {
      v59 = v55;
      if (v44 + 1 >= v57)
      {
        break;
      }

      v210 = v55;
      v196 = v44;
      v60 = OUTLINED_FUNCTION_30();
      v61 = v190;
      v190(v60);
      a10 = v58;
      v61(v194, v58, v22);
      v62 = v203;
      sub_237C06C7C();
      v209 = sub_237C05A8C();
      v64 = v63;
      v65 = *v202;
      v66 = v204;
      (*v202)(v62, v204);
      sub_237C06C7C();
      v67 = sub_237C05A8C();
      v69 = v68;
      v65(v62, v66);
      if (v209 == v67 && v64 == v69)
      {
        v71 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_105_0();
        v71 = sub_237C0929C();
      }

      v11 = v207;

      v72 = v189;
      (v189)(v194, v22);
      v72(v193, v22);
      v56 = v200;
      v18 += v200;
      v58 = &v200[a10];
      v44 = v196 + 1;
      v59 = v210;
      v55 = v210 + 1;
      v32 = v208;
      v57 = v198;
      if ((v197 ^ v71))
      {
        goto LABEL_16;
      }
    }

    v44 = v57;
LABEL_16:
    if (v197)
    {
      v73 = v183;
      v74 = v184;
      if (v44 < v183)
      {
        goto LABEL_148;
      }

      if (v183 < v44)
      {
        if (v57 >= v59)
        {
          v75 = v59;
        }

        else
        {
          v75 = v57;
        }

        v76 = v56 * (v75 - 1);
        v77 = v56 * v75;
        v78 = v44;
        v79 = v183 * v56;
        v196 = v78;
        do
        {
          if (v73 != --v78)
          {
            v80 = *v192;
            if (!*v192)
            {
              goto LABEL_153;
            }

            v18 = v80 + v79;
            v81 = *v201;
            (*v201)(v187, v80 + v79, v22);
            if (v79 < v76 || v18 >= v80 + v77)
            {
              OUTLINED_FUNCTION_153_0();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v79 != v76)
            {
              OUTLINED_FUNCTION_153_0();
              swift_arrayInitWithTakeBackToFront();
            }

            v81(v80 + v76, v187, v22);
            v74 = v184;
            v56 = v200;
          }

          ++v73;
          v76 -= v56;
          v77 -= v56;
          v79 += v56;
        }

        while (v73 < v78);
        v11 = v207;
        v32 = v208;
        v44 = v196;
      }
    }

    else
    {
LABEL_36:
      v74 = v184;
    }

    v83 = v192[1];
    if (v44 < v83)
    {
      if (__OFSUB__(v44, v183))
      {
        goto LABEL_145;
      }

      if (v44 - v183 < v74)
      {
        break;
      }
    }

LABEL_58:
    v109 = v183;
    if (v44 < v183)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v110 = v182;
    }

    else
    {
      v158 = *(v182 + 16);
      sub_237BC0B38();
      v110 = v159;
    }

    v18 = *(v110 + 16);
    v111 = *(v110 + 24);
    v112 = v18 + 1;
    v196 = v44;
    if (v18 >= v111 >> 1)
    {
      sub_237BC0B38();
      v110 = v160;
    }

    *(v110 + 16) = v112;
    v113 = v110 + 32;
    v114 = (v110 + 32 + 16 * v18);
    v115 = v196;
    *v114 = v109;
    v114[1] = v115;
    OUTLINED_FUNCTION_160();
    if (!v120)
    {
      goto LABEL_154;
    }

    if (v18)
    {
      v22 = v43;
      while (1)
      {
        v121 = v112 - 1;
        v122 = (v113 + 16 * (v112 - 1));
        v123 = (v43 + 16 * v112);
        if (v112 >= 4)
        {
          break;
        }

        if (v112 == 3)
        {
          v124 = *(v43 + 32);
          v125 = *(v43 + 40);
          v134 = __OFSUB__(v125, v124);
          v126 = v125 - v124;
          v127 = v134;
LABEL_79:
          if (v127)
          {
            goto LABEL_131;
          }

          v139 = *v123;
          v138 = v123[1];
          v140 = __OFSUB__(v138, v139);
          v141 = v138 - v139;
          v142 = v140;
          if (v140)
          {
            goto LABEL_134;
          }

          v143 = v122[1];
          v144 = v143 - *v122;
          if (__OFSUB__(v143, *v122))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v141, v144))
          {
            goto LABEL_139;
          }

          if (v141 + v144 >= v126)
          {
            if (v126 < v144)
            {
              v121 = v112 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v112 < 2)
        {
          goto LABEL_133;
        }

        v146 = *v123;
        v145 = v123[1];
        v134 = __OFSUB__(v145, v146);
        v141 = v145 - v146;
        v142 = v134;
LABEL_94:
        if (v142)
        {
          goto LABEL_136;
        }

        v148 = *v122;
        v147 = v122[1];
        v134 = __OFSUB__(v147, v148);
        v149 = v147 - v148;
        if (v134)
        {
          goto LABEL_138;
        }

        if (v149 < v141)
        {
          v43 = v22;
          goto LABEL_108;
        }

LABEL_101:
        if (v121 - 1 >= v112)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v192)
        {
          goto LABEL_151;
        }

        v153 = (v113 + 16 * (v121 - 1));
        v154 = *v153;
        v18 = v113 + 16 * v121;
        v155 = *(v18 + 8);
        v156 = v195;
        sub_237A58CEC(*v192 + *(v191 + 72) * *v153, *v192 + *(v191 + 72) * *v18, *v192 + *(v191 + 72) * v155, a10, v116, v117, v118, v119, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
        v195 = v156;
        if (v156)
        {
          goto LABEL_123;
        }

        if (v155 < v154)
        {
          goto LABEL_126;
        }

        v157 = *(v22 + 16);
        if (v121 > v157)
        {
          goto LABEL_127;
        }

        *v153 = v154;
        v153[1] = v155;
        if (v121 >= v157)
        {
          goto LABEL_128;
        }

        v112 = v157 - 1;
        sub_237BA130C((v18 + 16), v157 - 1 - v121, (v113 + 16 * v121));
        v43 = v22;
        *(v22 + 16) = v157 - 1;
        v32 = v208;
        if (v157 <= 2)
        {
          goto LABEL_108;
        }
      }

      v128 = v113 + 16 * v112;
      v129 = *(v128 - 64);
      v130 = *(v128 - 56);
      v134 = __OFSUB__(v130, v129);
      v131 = v130 - v129;
      if (v134)
      {
        goto LABEL_129;
      }

      v133 = *(v128 - 48);
      v132 = *(v128 - 40);
      v134 = __OFSUB__(v132, v133);
      v126 = v132 - v133;
      v127 = v134;
      if (v134)
      {
        goto LABEL_130;
      }

      v135 = v123[1];
      v136 = v135 - *v123;
      if (__OFSUB__(v135, *v123))
      {
        goto LABEL_132;
      }

      v134 = __OFADD__(v126, v136);
      v137 = v126 + v136;
      if (v134)
      {
        goto LABEL_135;
      }

      if (v137 >= v131)
      {
        v151 = *v122;
        v150 = v122[1];
        v134 = __OFSUB__(v150, v151);
        v152 = v150 - v151;
        if (v134)
        {
          goto LABEL_143;
        }

        if (v126 < v152)
        {
          v121 = v112 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v39 = v191;
    v41 = v192[1];
    v42 = v196;
    v22 = v180;
    v11 = v207;
    if (v196 >= v41)
    {
      goto LABEL_112;
    }
  }

  v84 = v183 + v74;
  if (__OFADD__(v183, v74))
  {
    goto LABEL_146;
  }

  if (v84 >= v83)
  {
    v84 = v192[1];
  }

  if (v84 < v183)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v44 == v84)
  {
    goto LABEL_58;
  }

  v85 = *v192;
  v86 = *(v191 + 72);
  v200 = *(v191 + 16);
  v87 = (v85 + v86 * (v44 - 1));
  v197 = -v86;
  v88 = (v183 - v44);
  v198 = v85;
  v185 = v86;
  v89 = v85 + v44 * v86;
  v186 = v84;
LABEL_46:
  v196 = v44;
  v188 = v89;
  v189 = v88;
  v90 = v88;
  v190 = v87;
  while (1)
  {
    a10 = v90;
    v210 = v89;
    v91 = v200;
    (v200)(v32, v89, v22);
    v209 = v87;
    v91(v11, v87, v22);
    v92 = v203;
    OUTLINED_FUNCTION_155_0();
    sub_237C06C7C();
    v93 = OUTLINED_FUNCTION_182();
    v95 = v94;
    v96 = *v202;
    v97 = v204;
    (*v202)(v92, v204);
    OUTLINED_FUNCTION_155_0();
    sub_237C06C7C();
    v98 = OUTLINED_FUNCTION_182();
    v100 = v99;
    v96(v92, v97);
    if (v93 == v98 && v95 == v100)
    {

      v18 = *v205;
      v11 = v207;
      v108 = OUTLINED_FUNCTION_166();
      (v18)(v108);
      v32 = v208;
      (v18)(v208, v22);
LABEL_56:
      v44 = v196 + 1;
      v87 = (v190 + v185);
      v88 = v189 - 1;
      v89 = v188 + v185;
      if (v196 + 1 == v186)
      {
        v44 = v186;
        goto LABEL_58;
      }

      goto LABEL_46;
    }

    OUTLINED_FUNCTION_105_0();
    v102 = sub_237C0929C();

    v18 = v205;
    v103 = *v205;
    v11 = v207;
    v104 = OUTLINED_FUNCTION_166();
    v103(v104);
    v32 = v208;
    (v103)(v208, v22);
    if ((v102 & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!v198)
    {
      break;
    }

    v105 = *v201;
    v18 = v199;
    v106 = v210;
    (*v201)(v199, v210, v22);
    v107 = v209;
    OUTLINED_FUNCTION_153_0();
    swift_arrayInitWithTakeFrontToBack();
    v105(v107, v18, v22);
    v87 = (v107 + v197);
    v89 = v106 + v197;
    v90 = (a10 + 1);
    if (a10 == -1)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_237A58644(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v67 = sub_237C05ADC();
  v8 = *(v67 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v11 = *(*(v74 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v74);
  v70 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v12);
  v75 = &v56[-v16];
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v19 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v19)
  {
    goto LABEL_60;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v22 = (a2 - a1) / v18;
  v78 = a1;
  v77 = a4;
  v64 = (v8 + 8);
  v65 = (v15 + 16);
  v63 = (v15 + 8);
  v23 = v20 / v18;
  if (v22 >= v20 / v18)
  {
    sub_237A1DD78();
    v37 = a4 + v23 * v18;
    v38 = -v18;
    v39 = v37;
    v71 = a1;
    v72 = a4;
    v59 = -v18;
LABEL_36:
    v40 = a2 + v38;
    v41 = a3;
    v42 = v39;
    v73 = a2;
    v60 = a2 + v38;
    v58 = v39;
    while (1)
    {
      if (v37 <= a4)
      {
        v78 = a2;
        v76 = v42;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v57 = v42;
      v68 = v41;
      v69 = v41 + v38;
      v43 = *v65;
      v44 = v74;
      v61 = v37 + v38;
      v43();
      (v43)(v70, v40, v44);
      v45 = v66;
      sub_237C06C7C();
      v62 = sub_237C05A8C();
      v46 = *v64;
      v47 = v67;
      (*v64)(v45, v67);
      sub_237C06C7C();
      sub_237C05A8C();
      v46(v45, v47);
      LOBYTE(v43) = sub_237A556DC();

      v48 = *v63;
      (*v63)(v70, v44);
      v48(v75, v44);
      if (v43)
      {
        a4 = v72;
        a3 = v69;
        if (v68 < v73 || v69 >= v73)
        {
          a2 = v60;
          swift_arrayInitWithTakeFrontToBack();
          v39 = v57;
          a1 = v71;
          v38 = v59;
        }

        else
        {
          v54 = v57;
          v39 = v57;
          v38 = v59;
          v55 = v60;
          a2 = v60;
          a1 = v71;
          if (v68 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v55;
            v39 = v54;
          }
        }

        goto LABEL_36;
      }

      v49 = v69;
      v50 = v68 < v37 || v69 >= v37;
      a4 = v72;
      if (v50)
      {
        v51 = v61;
        swift_arrayInitWithTakeFrontToBack();
        v41 = v49;
        v37 = v51;
        v42 = v51;
        a1 = v71;
        a2 = v73;
        v38 = v59;
        v40 = v60;
        v39 = v58;
      }

      else
      {
        v40 = v60;
        v52 = v61;
        v42 = v61;
        v19 = v37 == v68;
        v41 = v69;
        v37 = v61;
        a1 = v71;
        a2 = v73;
        v39 = v58;
        v38 = v59;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          v41 = v49;
          v37 = v52;
          v42 = v52;
        }
      }
    }

    v78 = a2;
    v76 = v39;
  }

  else
  {
    sub_237A1DD78();
    v61 = v18;
    v62 = a4 + v22 * v18;
    v76 = v62;
    v69 = a3;
    v24 = v74;
    while (a4 < v62 && a2 < a3)
    {
      v71 = a1;
      v26 = *v65;
      (*v65)();
      v27 = v70;
      (v26)(v70, a4, v24);
      v28 = v66;
      sub_237C06C7C();
      v68 = sub_237C05A8C();
      v29 = *v64;
      v72 = a4;
      v30 = v67;
      v29(v28, v67);
      sub_237C06C7C();
      sub_237C05A8C();
      v73 = a2;
      v29(v28, v30);
      v31 = sub_237A556DC();

      v32 = *v63;
      (*v63)(v27, v24);
      v32(v75, v24);
      if (v31)
      {
        v33 = v61;
        a4 = v72;
        a2 = v73 + v61;
        v34 = v71;
        if (v71 < v73 || v71 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v71 != v73)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      else
      {
        a2 = v73;
        v33 = v61;
        a4 = v72 + v61;
        v34 = v71;
        if (v71 < v72 || v71 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v71 != v72)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v77 = a4;
      }

      a1 = v34 + v33;
      v78 = a1;
      a3 = v69;
    }
  }

LABEL_58:
  sub_237A593D0(&v78, &v77, &v76);
  return 1;
}

void sub_237A58CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v117 = sub_237C05ADC();
  v30 = OUTLINED_FUNCTION_0(v117);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_22();
  v116 = v35;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v36 = *(*(v119 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v119);
  v112 = v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = v105 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = (v105 - v43);
  MEMORY[0x28223BE20](v42);
  v48 = *(v47 + 72);
  if (!v48)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v49 = v27 - v29 == 0x8000000000000000 && v48 == -1;
  if (v49)
  {
    goto LABEL_71;
  }

  v50 = v25 - v27;
  if (v25 - v27 == 0x8000000000000000 && v48 == -1)
  {
    goto LABEL_72;
  }

  v118 = v105 - v46;
  v52 = (v27 - v29) / v48;
  a10 = v29;
  v124 = v23;
  v114 = (v32 + 8);
  v115 = (v45 + 16);
  v113 = (v45 + 8);
  v53 = v50 / v48;
  if (v52 < v50 / v48)
  {
    sub_237A1DD78();
    v111 = v25;
    v112 = (v23 + v52 * v48);
    v123 = v112;
    v54 = v44;
    v55 = v119;
    v109 = v44;
    v110 = v48;
    while (1)
    {
      if (v23 >= v112 || v27 >= v25)
      {
        goto LABEL_69;
      }

      v121 = v29;
      v122 = v27;
      v57 = *v115;
      (*v115)(v118, v27, v55);
      v120 = v23;
      v57(v54, v23, v55);
      v58 = v116;
      sub_237C06C7C();
      v59 = sub_237C05A8C();
      v60 = v55;
      v62 = v61;
      v54 = v114;
      v63 = *v114;
      (*v114)(v58, v117);
      sub_237C06C7C();
      v64 = sub_237C05A8C();
      v66 = v65;
      v67 = OUTLINED_FUNCTION_32_3();
      (v63)(v67);
      if (v59 == v64 && v62 == v66)
      {

        v74 = OUTLINED_FUNCTION_139();
        (v63)(v74);
        (v63)(v118, v60);
        v71 = v121;
      }

      else
      {
        OUTLINED_FUNCTION_105_0();
        v69 = sub_237C0929C();

        v70 = OUTLINED_FUNCTION_139();
        (v63)(v70);
        (v63)(v118, v60);
        v71 = v121;
        if (v69)
        {
          v72 = v110;
          v25 = v111;
          v27 = v122 + v110;
          v73 = v121 < v122 || v121 >= v27;
          v23 = v120;
          if (v73)
          {
            OUTLINED_FUNCTION_165();
            v55 = v119;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v55 = v119;
            if (v121 != v122)
            {
              OUTLINED_FUNCTION_165();
              swift_arrayInitWithTakeBackToFront();
            }
          }

          goto LABEL_37;
        }
      }

      v72 = v110;
      v25 = v111;
      v23 = v120 + v110;
      if (v71 < v120 || v71 >= v23)
      {
        OUTLINED_FUNCTION_165();
        v55 = v119;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v55 = v119;
        if (v71 != v120)
        {
          OUTLINED_FUNCTION_165();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v124 = v23;
      v27 = v122;
LABEL_37:
      v29 = v71 + v72;
      a10 = v29;
    }
  }

  OUTLINED_FUNCTION_173();
  sub_237A1DD78();
  v76 = (v23 + v53 * v48);
  v77 = -v48;
  v78 = v76;
  v120 = v23;
  v121 = v29;
  v107 = v77;
  v108 = v41;
LABEL_41:
  v79 = (v27 + v77);
  v80 = v25;
  v105[0] = v78;
  v81 = v78;
  v122 = v27;
  v109 = (v27 + v77);
  while (1)
  {
    if (v76 <= v23)
    {
      a10 = v27;
      v123 = v81;
      goto LABEL_69;
    }

    if (v27 <= v29)
    {
      break;
    }

    v106 = v81;
    v118 = v76;
    v82 = &v76[v77];
    v83 = *v115;
    v110 = v82;
    v111 = v80;
    v84 = v119;
    (v83)(v41);
    v83(v112, v79, v84);
    sub_237C06C7C();
    v85 = sub_237C05A8C();
    v87 = v86;
    v88 = *v114;
    OUTLINED_FUNCTION_169();
    v88();
    sub_237C06C7C();
    v89 = sub_237C05A8C();
    v91 = v90;
    v92 = OUTLINED_FUNCTION_128();
    (v88)(v92);
    if (v85 == v89 && v87 == v91)
    {
      v94 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_105_0();
      v94 = sub_237C0929C();
    }

    v77 = v107;
    v95 = v111;
    v25 = &v111[v107];
    v96 = *v113;
    v97 = v119;
    (*v113)(v112, v119);
    v41 = v108;
    v96(v108, v97);
    v23 = v120;
    v29 = v121;
    v27 = v122;
    if (v94)
    {
      if (v95 < v122 || v25 >= v122)
      {
        v27 = v109;
        OUTLINED_FUNCTION_152_0();
        swift_arrayInitWithTakeFrontToBack();
        v78 = v106;
        v76 = v118;
      }

      else
      {
        v78 = v106;
        v102 = v109;
        v27 = v109;
        v76 = v118;
        if (v95 != v122)
        {
          OUTLINED_FUNCTION_152_0();
          v104 = v103;
          swift_arrayInitWithTakeBackToFront();
          v27 = v102;
          v78 = v104;
        }
      }

      goto LABEL_41;
    }

    if (v95 < v118 || v25 >= v118)
    {
      v99 = v110;
      OUTLINED_FUNCTION_152_0();
      swift_arrayInitWithTakeFrontToBack();
      v80 = &v95[v77];
      v76 = v99;
      v81 = v99;
      v79 = v109;
    }

    else
    {
      v79 = v109;
      v81 = v110;
      v49 = v118 == v95;
      v100 = v110;
      v80 = v25;
      v76 = v110;
      if (!v49)
      {
        OUTLINED_FUNCTION_152_0();
        swift_arrayInitWithTakeBackToFront();
        v80 = v25;
        v76 = v100;
        v81 = v100;
      }
    }
  }

  a10 = v27;
  v123 = v105[0];
LABEL_69:
  sub_237A593D0(&a10, &v124, &v123);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A593D0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_237A594DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A5954C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AEA8, &unk_237C0C200);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237A595B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237A59650()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_237A596A4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

uint64_t sub_237A596FC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

void OUTLINED_FUNCTION_2_27()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[9];
}

void OUTLINED_FUNCTION_6_19()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
}

uint64_t OUTLINED_FUNCTION_11_14(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[30];
  v4 = v2[26];
  v5 = v2[18];
  v6 = v2[16];
  v7 = v2[5];
  v8 = v2[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_13(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[30];
  v4 = v2[26];
  v5 = v2[21];
  v6 = v2[19];
  v7 = v2[5];
  v8 = v2[6];
  return result;
}

unint64_t OUTLINED_FUNCTION_15_10()
{
  v5 = v2[14];
  v4 = v2[15];
  v6 = v2[13];
  v7 = v2[5];
  *(v0 + 16) = v1;
  v8 = *(v5 + 32);
  return v0 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3;
}

void OUTLINED_FUNCTION_18_13(uint64_t a1@<X8>)
{
  v2 = v1[31];
  v3 = v1[32];
  v4 = *(v3 + 16);
  v5 = v1[4] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * a1;
}

uint64_t OUTLINED_FUNCTION_22_7()
{
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  result = v0[26];
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[15];
  v11 = *(v0[25] + 8);
  return result;
}

double OUTLINED_FUNCTION_23_11(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_8()
{
  v1 = v0[34];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v9 = v0[10];
  result = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_31_5()
{
  result = v0[68];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v7 = v0[61];
  v6 = v0[62];
  v8 = v0[58];
  v9 = v0[55];
  v10 = v0[51];
  v11 = v0[52];
  v12 = v0[49];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_5()
{
  v2 = v1[34];
  ++v1[35];
  v1[36] = v0;
  return v1[33];
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return sub_237C0748C();
}

uint64_t OUTLINED_FUNCTION_35_4()
{
  result = v0[18];
  v2 = v0[16];
  v3 = *(v0[17] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_3()
{
  result = v0[21];
  v2 = v0[19];
  v3 = *(v0[20] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_5()
{
  result = v0[31];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  return result;
}

uint64_t OUTLINED_FUNCTION_43_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_5()
{
  v2 = v0[32];
  v1 = v0[33];
  result = v0[30];
  v4 = v0[31];
  v5 = v0[27];
  v6 = *(v0[28] + 8);
  return result;
}

void OUTLINED_FUNCTION_49_1()
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
  v4 = *(v0 + 288);
}

uint64_t OUTLINED_FUNCTION_55_3()
{
  v3 = *(v0 + 16);

  return sub_237C06A4C();
}

uint64_t OUTLINED_FUNCTION_56_3()
{
  sub_237A560B8(v2);
  v3 = *(v1 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1)
{
  *(a1 + 8) = sub_237A4DA5C;
  v2 = *(v1 + 320);
  return *(v1 + 464);
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_237C05A3C();
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return MEMORY[0x282115070](v1, v0 + 16, v2);
}

uint64_t OUTLINED_FUNCTION_76_1(uint64_t a1)
{

  return sub_237A596FC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{

  return sub_237A596FC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return sub_237A59650();
}

void OUTLINED_FUNCTION_80_1()
{
  v2 = v0[63];
  v1 = v0[64];
  v4 = v0[61];
  v3 = v0[62];
  v5 = v0[58];
  v6 = v0[55];
}

uint64_t OUTLINED_FUNCTION_82_1()
{
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[50];
  v5 = v0[45];
  if (v0[56] < v2)
  {
    v2 = v0[56];
  }

  v0[68] = v2;
  v0[69] = v3;
  v6 = *(v4 + *(v5 + 20));

  return sub_237C08C1C();
}

uint64_t OUTLINED_FUNCTION_86_0()
{
  v2 = *(v1 + 248);
  v3 = *(*(v1 + 256) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_92_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v3 + 16) = a1;
  *(v3 + 24) = a1;
  return a2;
}

void OUTLINED_FUNCTION_103_0()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = *(v2 + 16);
  v4 = v0[4] + ((*(v2 + 80) + 32) & ~*(v2 + 80));
}

void OUTLINED_FUNCTION_113_0()
{

  sub_237BC194C();
}

void OUTLINED_FUNCTION_114_0(uint64_t a1@<X8>)
{
  v2 = v1[36];
  v3 = v1[32];
  v4 = v1[33];
  v5 = v1[31];
  v7 = v1[25];
  v6 = v1[26];
  v8 = v1[24];
  v9 = *(a1 + 8);
}

unint64_t OUTLINED_FUNCTION_120_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = v1;

  return MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
}

void OUTLINED_FUNCTION_121_0()
{

  JUMPOUT(0x2383DC360);
}

void OUTLINED_FUNCTION_123_0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
}

uint64_t OUTLINED_FUNCTION_131_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_133_0()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_134_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return sub_237C0826C();
}

uint64_t OUTLINED_FUNCTION_149_0()
{

  return _s20PersistentParametersVMa_2();
}

uint64_t OUTLINED_FUNCTION_150_0()
{
}

uint64_t OUTLINED_FUNCTION_151_0@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  *(a1 + 48) = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_179()
{
  v2 = v0[52];
  v4 = v0[51];
  v5 = v0[49];
}

uint64_t OUTLINED_FUNCTION_180(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;
}

uint64_t OUTLINED_FUNCTION_181()
{

  return sub_237C06C4C();
}

uint64_t OUTLINED_FUNCTION_182()
{

  return sub_237C05A8C();
}

uint64_t OUTLINED_FUNCTION_183()
{

  return sub_237C085AC();
}

uint64_t sub_237A5A36C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B970, &qword_237C0E2D8);
  v2 = sub_237C085AC();
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {
      return v2;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = v2[2];
    swift_bridgeObjectRetain_n();
    if (v8)
    {

      sub_237ACAC78(v7, v6);
      v10 = v9;

      if (v10)
      {
        break;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_237ACAC78(v7, v6);
    if (__OFADD__(v2[2], (v12 & 1) == 0))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      break;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B978, &unk_237C0E2E0);
    if (sub_237C090AC())
    {
      v15 = sub_237ACAC78(v7, v6);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v13 = v15;
    }

    if (v14)
    {

      v17 = (v2[7] + 24 * v13);
      v18 = v17[2];
      *v17 = v3;
      v17[1] = v7;
      v17[2] = v6;
    }

    else
    {
      v2[(v13 >> 6) + 8] |= 1 << v13;
      v19 = (v2[6] + 16 * v13);
      *v19 = v7;
      v19[1] = v6;
      v20 = (v2[7] + 24 * v13);
      *v20 = v3;
      v20[1] = v7;
      v20[2] = v6;

      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_16;
      }

      v2[2] = v23;
    }

    ++v3;
  }

  sub_237C090DC();
  __break(1u);
LABEL_18:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

unint64_t sub_237A5A624()
{
  result = qword_27DE9B980;
  if (!qword_27DE9B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B980);
  }

  return result;
}

unint64_t sub_237A5A67C()
{
  result = qword_27DE9B988;
  if (!qword_27DE9B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B988);
  }

  return result;
}

unint64_t sub_237A5A6DC()
{
  result = qword_27DE9B990;
  if (!qword_27DE9B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B990);
  }

  return result;
}

unint64_t sub_237A5A734()
{
  result = qword_27DE9B998;
  if (!qword_27DE9B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B998);
  }

  return result;
}

void sub_237A5A798(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_237A5A7A4(a1);
}

uint64_t sub_237A5A85C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MLImageClassifier.ImageAugmentationOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_237A5A89C@<X0>(uint64_t *a1@<X8>)
{
  result = MLImageClassifier.ImageAugmentationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s24VideoAugmentationOptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s24VideoAugmentationOptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_237A5A92C@<X0>(uint64_t a1@<X8>)
{
  v134 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9A0, &unk_237C0E4C0);
  OUTLINED_FUNCTION_0_26(v1, v162);
  v133 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9A8, &unk_237C169E0);
  OUTLINED_FUNCTION_0_26(v7, v158);
  v131 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9B0, &unk_237C0E4D0);
  OUTLINED_FUNCTION_0_26(v13, &v174);
  v130 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9B8, &unk_237C169F0);
  OUTLINED_FUNCTION_0_26(v19, &v173);
  v128 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9C0, &unk_237C0E4E0);
  OUTLINED_FUNCTION_0_26(v25, &v172);
  v126 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9C8, &unk_237C16A00);
  OUTLINED_FUNCTION_0_26(v31, &v170);
  v125 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9D0, &qword_237C0E4F0);
  OUTLINED_FUNCTION_0_26(v37, &v152);
  v123 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9D8, &qword_237C0E4F8);
  OUTLINED_FUNCTION_0_26(v43, &v148);
  v122 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9E0, &qword_237C0E500);
  OUTLINED_FUNCTION_0_26(v49, &v171);
  v121 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v53);
  v136 = v118 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9E8, &qword_237C0E508);
  OUTLINED_FUNCTION_0_26(v55, &v169);
  v120 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v59);
  v138 = v118 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9F0, &qword_237C0E510);
  v62 = OUTLINED_FUNCTION_0_26(v61, &v165);
  v119 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v139 = v118 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v142 = v118 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9F8, &qword_237C0E518);
  OUTLINED_FUNCTION_0_26(v69, v164);
  v118[2] = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v73);
  v75 = v118 - v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA00, &qword_237C0E520);
  v76 = sub_237A5B784();
  v77 = sub_237C074FC();
  v165 = v76;
  v166 = v77;
  v167 = MEMORY[0x277CC5198];
  swift_getOpaqueTypeConformance2();
  v118[0] = v75;
  sub_237C06BAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA10, &qword_237C0E528);
  v78 = sub_237C06B7C();
  v165 = v76;
  v166 = v78;
  OUTLINED_FUNCTION_5_19(MEMORY[0x277CC4FD0]);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_11_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA18, &qword_237C0E530);
  OUTLINED_FUNCTION_13_10();
  v79 = sub_237C06FEC();
  v165 = v76;
  v166 = v79;
  OUTLINED_FUNCTION_5_19(MEMORY[0x277CC5068]);
  OUTLINED_FUNCTION_12_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA20, &qword_237C0E538);
  OUTLINED_FUNCTION_13_10();
  v80 = sub_237C071FC();
  v165 = v76;
  v166 = v80;
  OUTLINED_FUNCTION_5_19(MEMORY[0x277CC50B8]);
  OUTLINED_FUNCTION_12_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA28, &qword_237C0E540);
  OUTLINED_FUNCTION_13_10();
  v81 = sub_237C06B9C();
  v165 = v76;
  v166 = v81;
  OUTLINED_FUNCTION_5_19(MEMORY[0x277CC4FD8]);
  OUTLINED_FUNCTION_12_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA30, &qword_237C0E548);
  OUTLINED_FUNCTION_13_10();
  v82 = sub_237C06DEC();
  v165 = v76;
  v166 = v82;
  v167 = MEMORY[0x277CC5028];
  swift_getOpaqueTypeConformance2();
  sub_237C06BAC();
  v83 = sub_237A5BD8C(&qword_27DE9BA38, &qword_27DE9B9F8, &qword_237C0E518);
  v84 = v135;
  sub_237C06E4C();
  v165 = v76;
  v166 = v84;
  v167 = v83;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = sub_237A5BD8C(&qword_27DE9BA40, &qword_27DE9B9F0, &qword_237C0E510);
  OUTLINED_FUNCTION_14_11();
  v87 = v143;
  v88 = v137;
  OUTLINED_FUNCTION_10_12();
  v165 = v76;
  v166 = v87;
  v167 = v88;
  v168 = OpaqueTypeConformance2;
  v169 = v86;
  v89 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_14_11();
  v90 = v146;
  OUTLINED_FUNCTION_10_12();
  v165 = v76;
  v166 = v90;
  v167 = v88;
  v168 = v89;
  v91 = OUTLINED_FUNCTION_6_20();
  sub_237A5BD8C(&qword_27DE9BA48, &qword_27DE9B9E8, &qword_237C0E508);
  OUTLINED_FUNCTION_14_11();
  v92 = v150;
  OUTLINED_FUNCTION_9_14();
  sub_237C06E2C();
  v165 = v76;
  v166 = v92;
  v167 = v90;
  v168 = v91;
  v93 = OUTLINED_FUNCTION_6_20();
  sub_237A5BD8C(&qword_27DE9BA50, &qword_27DE9B9E0, &qword_237C0E500);
  v94 = v124;
  OUTLINED_FUNCTION_14_11();
  v95 = v152;
  OUTLINED_FUNCTION_9_14();
  sub_237C06E2C();
  v165 = v76;
  v166 = v95;
  v167 = v90;
  v168 = v93;
  v96 = OUTLINED_FUNCTION_6_20();
  sub_237A5BD8C(&qword_27DE9BA58, &qword_27DE9B9D8, &qword_237C0E4F8);
  v97 = v129;
  v98 = v94;
  v99 = v147;
  v100 = v127;
  v101 = v118[1];
  OUTLINED_FUNCTION_10_12();
  v165 = v76;
  v166 = v100;
  v167 = v101;
  v168 = v96;
  OUTLINED_FUNCTION_6_20();
  sub_237A5BD8C(&qword_27DE9BA60, &qword_27DE9B9D0, &qword_237C0E4F0);
  v102 = v149;
  v103 = v132;
  OUTLINED_FUNCTION_9_14();
  sub_237C06E2C();
  OUTLINED_FUNCTION_36_3(v163);
  v104(v97, v103);
  OUTLINED_FUNCTION_36_3(v161);
  v105(v98, v100);
  OUTLINED_FUNCTION_36_3(v160);
  v106(v151, v152);
  OUTLINED_FUNCTION_36_3(v159);
  v107(v148, v150);
  OUTLINED_FUNCTION_36_3(v157);
  v108(v144, v146);
  OUTLINED_FUNCTION_36_3(v156);
  v109(v140, v143);
  OUTLINED_FUNCTION_36_3(v155);
  v110(v102, v97);
  OUTLINED_FUNCTION_36_3(v154);
  v111(v99, v101);
  OUTLINED_FUNCTION_36_3(v153);
  v112(v136, v145);
  OUTLINED_FUNCTION_36_3(&v151);
  v113(v138, v141);
  v114 = *(v119 + 8);
  v115 = v137;
  v114(v139, v137);
  v114(v142, v115);
  OUTLINED_FUNCTION_36_3(&v149);
  return v116(v118[0], v135);
}

uint64_t sub_237A5B678()
{
  v0 = sub_237C074FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379EED84(0x20uLL);
  sub_237C074EC();
  sub_237A5B784();
  sub_237C06E3C();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_237A5B784()
{
  result = qword_27DE9BA08;
  if (!qword_27DE9BA08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9BA08);
  }

  return result;
}

uint64_t sub_237A5B7E0(unsigned int *a1)
{
  v2 = sub_237C06B5C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_237C06B7C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *a1, v2);
  sub_237C06B6C();
  sub_237A5B784();
  sub_237C06E3C();
  return (*(v13 + 8))(v17, v10);
}

uint64_t sub_237A5B95C()
{
  v0 = sub_237C06FEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379EED84(0xBuLL);
  sub_237C06FDC();
  sub_237A5B784();
  sub_237C06E3C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_237A5BA70()
{
  v0 = sub_237C071FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379EED84(0xBuLL);
  sub_237C071EC();
  sub_237A5B784();
  sub_237C06E3C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_237A5BB80()
{
  v0 = sub_237C06B9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379EED84(0xBuLL);
  sub_237C06B8C();
  sub_237A5B784();
  sub_237C06E3C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_237A5BC90()
{
  v0 = sub_237C06DEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C06DDC();
  sub_237A5B784();
  sub_237C06E4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_237A5BD8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_0_26@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_19@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_6_20()
{
  *(v1 - 128) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_237C06E2C();
}

uint64_t OUTLINED_FUNCTION_11_15()
{

  return sub_237C06BAC();
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return sub_237C06BAC();
}

uint64_t sub_237A5BED8(uint64_t a1, char a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237C05ADC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v7 + 16))(v11, a1, v4);
  }

  else
  {
    sub_237C05A5C();
  }

  v12 = [objc_opt_self() defaultManager];
  v13 = sub_237C059EC();
  v20[0] = 0;
  v14 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v20];

  if (v14)
  {
    v15 = *(v7 + 8);
    v16 = v20[0];
    result = v15(v11, v4);
  }

  else
  {
    v18 = v20[0];
    sub_237C0593C();

    swift_willThrow();
    result = (*(v7 + 8))(v11, v4);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_237A5C0AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4E0, &qword_237C0D200);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_237C0825C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_237C0597C();
  sub_237C081DC();
  sub_237C081AC();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2379F6DD8(v3, &qword_27DE9B4E0, &qword_237C0D200);
    return 0;
  }

  (*(v7 + 32))(v12, v3, v4);
  if ((sub_237C0823C() & 1) == 0)
  {
    (*(v7 + 8))(v12, v4);
    return 0;
  }

  v13 = [objc_opt_self() defaultManager];
  sub_237C05A9C();
  v14 = sub_237C086BC();

  v15 = [v13 isReadableFileAtPath_];

  (*(v7 + 8))(v12, v4);
  return v15;
}

void sub_237A5C2F0()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v32 = v3;
  v33 = v4;
  v35 = sub_237C05ADC();
  v5 = OUTLINED_FUNCTION_0(v35);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v29 = (v10 - v11);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = 0;
  v34 = *(v2 + 16);
  v31 = v7 + 16;
  v16 = (v7 + 8);
  v28 = (v7 + 32);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v34 == v15)
    {

LABEL_15:
      OUTLINED_FUNCTION_73();
      return;
    }

    if (v15 >= *(v2 + 16))
    {
      break;
    }

    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = *(v7 + 72);
    v19 = v2;
    (*(v7 + 16))(v14, v2 + v17 + v18 * v15, v35);
    v20 = v32(v14);
    if (v0)
    {
      (*v16)(v14, v35);

      goto LABEL_15;
    }

    if (v20)
    {
      v27 = *v28;
      v27(v29, v14, v35);
      v21 = v30;
      v36 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v21;
      }

      else
      {
        sub_237AC8AF4(0, *(v21 + 16) + 1, 1);
        v22 = v36;
      }

      v2 = v19;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v30 = v24 + 1;
        v26 = v24;
        sub_237AC8AF4(v23 > 1, v24 + 1, 1);
        v25 = v30;
        v24 = v26;
        v2 = v19;
        v22 = v36;
      }

      ++v15;
      *(v22 + 16) = v25;
      v30 = v22;
      v27(v22 + v17 + v24 * v18, v29, v35);
    }

    else
    {
      (*v16)(v14, v35);
      ++v15;
    }
  }

  __break(1u);
}

void sub_237A5C58C()
{
  OUTLINED_FUNCTION_74();
  v100 = v1;
  v3 = v2;
  v4 = sub_237C05ADC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v90 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v90 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v90 - v20;
  sub_237A5CD94();
  v23 = v0;
  if (v0)
  {
LABEL_49:
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v101 = v21;
    v91 = v19;
    v94 = v12;
    v97 = v7;
    v99 = *(v22 + 16);
    if (v99)
    {
      v24 = v97;
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B288, &qword_237C137F0);
      v24 = v97;
      v25 = *(v97 + 72);
      v26 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_237C0B660;
      (*(v24 + 16))(v27 + v26, v3, v4);
      v22 = v27;
      v99 = *(v27 + 16);
    }

    v28 = v101;
    v29 = 0;
    v30 = 0;
    v111 = v24 + 16;
    v109 = v24 + 8;
    v31 = MEMORY[0x277D84F98];
    v107 = (v24 + 32);
    v108 = v16;
    v32 = v24;
    v95 = v22;
LABEL_6:
    v96 = v29;
LABEL_7:
    v98 = v31;
    while (1)
    {
      if (v30 == v99)
      {

        sub_237A560B8(v29);
        goto LABEL_49;
      }

      if (v30 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v33 = *(v32 + 80);
      OUTLINED_FUNCTION_119_0();
      v112 = v34;
      v37 = *(v36 + 72);
      v110 = *(v36 + 16);
      v110(v28, v35 + v34 + v37 * v30, v4);
      v105 = sub_237C059DC();
      v106 = v38;
      v39 = sub_237A5DA10();
      if (v23)
      {
        OUTLINED_FUNCTION_3_25();
        v89(v28, v4);

        sub_237A560B8(v96);
        goto LABEL_49;
      }

      v104 = v30;
      v40 = v39[2];
      if (v40)
      {
        v103 = 0;
        v113 = MEMORY[0x277D84F90];
        v41 = v39;
        sub_237AC8AF4(0, v40, 0);
        v102 = v41;
        v42 = v41 + v112;
        v43 = v91;
        do
        {
          v110(v16, v42, v4);
          sub_237C05A4C();
          OUTLINED_FUNCTION_3_25();
          v44(v16, v4);
          v46 = *(v113 + 16);
          v45 = *(v113 + 24);
          if (v46 >= v45 >> 1)
          {
            OUTLINED_FUNCTION_5_20(v45);
          }

          *(v113 + 16) = v46 + 1;
          (*v107)(v113 + v112 + v46 * v37, v43, v4);
          v42 += v37;
          --v40;
          v16 = v108;
        }

        while (v40);

        v28 = v101;
        v23 = v103;
      }

      else
      {
      }

      ++v104;
      MEMORY[0x28223BE20](v47);
      *(&v90 - 2) = v48;
      sub_237A5C2F0();
      v50 = v49;
      OUTLINED_FUNCTION_3_25();
      v51(v28, v4);
      if (*(v50 + 16))
      {
        break;
      }

      v52 = v98;
      v53 = v106;
      if (!v98[2] || (sub_237ACAC78(v105, v106), (v54 & 1) == 0))
      {
        swift_isUniquelyReferenced_nonNull_native();
        v114 = v52;
        v55 = sub_237ACAC78(v105, v53);
        if (__OFADD__(v52[2], (v56 & 1) == 0))
        {
          goto LABEL_54;
        }

        v30 = v55;
        v57 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
        if (sub_237C090AC())
        {
          v58 = sub_237ACAC78(v105, v106);
          if ((v57 & 1) != (v59 & 1))
          {
            goto LABEL_56;
          }

          v30 = v58;
        }

        if (v57)
        {
          v60 = v114[7];
          v61 = *(v60 + 8 * v30);
          *(v60 + 8 * v30) = MEMORY[0x277D84F90];

          v22 = OUTLINED_FUNCTION_4_23();
          v31 = v114;
        }

        else
        {
          v114[(v30 >> 6) + 8] |= 1 << v30;
          v62 = (v114[6] + 16 * v30);
          v63 = v106;
          *v62 = v105;
          v62[1] = v63;
          *(v114[7] + 8 * v30) = MEMORY[0x277D84F90];
          v64 = v114[2];
          v65 = __OFADD__(v64, 1);
          v66 = v64 + 1;
          if (v65)
          {
            goto LABEL_55;
          }

          v31 = v114;
          v114[2] = v66;
          v22 = OUTLINED_FUNCTION_4_23();
        }

        v29 = v96;
        goto LABEL_7;
      }

      v29 = v96;
      v32 = v97;
      v22 = v95;
      v30 = v104;
    }

    v67 = 0;
    v68 = (v50 + v112);
    v30 = v94;
    v31 = v98;
    v29 = v96;
    v92 = *(v50 + 16);
    v93 = v50;
    v103 = v23;
    while (v67 < *(v50 + 16))
    {
      v69 = v67;
      v102 = v68;
      (v110)(v30);
      sub_237A560B8(v29);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = v31;
      v70 = sub_237ACAC78(v105, v106);
      if (__OFADD__(v31[2], (v71 & 1) == 0))
      {
        goto LABEL_52;
      }

      v72 = v70;
      v73 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
      if (sub_237C090AC())
      {
        v74 = sub_237ACAC78(v105, v106);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_56;
        }

        v72 = v74;
      }

      if ((v73 & 1) == 0)
      {
        v31[(v72 >> 6) + 8] |= 1 << v72;
        v76 = (v31[6] + 16 * v72);
        v77 = v106;
        *v76 = v105;
        v76[1] = v77;
        *(v31[7] + 8 * v72) = MEMORY[0x277D84F90];
        v78 = v31[2];
        v65 = __OFADD__(v78, 1);
        v79 = v78 + 1;
        if (v65)
        {
          goto LABEL_53;
        }

        v31[2] = v79;
      }

      v80 = v31[7];
      v81 = *(v80 + 8 * v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v80 + 8 * v72) = v81;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = *(v81 + 16);
        sub_237BC0BF0();
        v81 = v87;
        *(v80 + 8 * v72) = v87;
      }

      v83 = *(v81 + 16);
      if (v83 >= *(v81 + 24) >> 1)
      {
        sub_237BC0BF0();
        v84 = v69;
        v81 = v88;
        *(v80 + 8 * v72) = v88;
      }

      else
      {
        v84 = v69;
      }

      v23 = v103;
      *(v81 + 16) = v83 + 1;
      v85 = v81 + v112 + v83 * v37;
      v50 = v93;
      v30 = v94;
      v29 = v84 + 1;
      (*v107)(v85, v94, v4);
      OUTLINED_FUNCTION_2_28();
      v16 = v108;
      v31 = v115;
      v28 = v101;
      if (v92 == v67)
      {

        OUTLINED_FUNCTION_2_28();
        v22 = OUTLINED_FUNCTION_4_23();
        goto LABEL_6;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_237C0932C();
    __break(1u);
  }
}

void sub_237A5CD94()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v74[7] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA68, &qword_237C0E550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_18_0();
  v59 = v4 - v5;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v6);
  v72 = &v55 - v7;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - v9;
  v11 = sub_237C05ADC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v56 = (v17 - v18);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  v73 = &v55 - v20;
  v21 = [objc_opt_self() defaultManager];
  v22 = sub_237C059EC();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA70, &qword_237C0E558);
  v23 = swift_allocObject();
  v69 = xmmword_237C0B670;
  *(v23 + 16) = xmmword_237C0B670;
  v24 = *MEMORY[0x277CBE868];
  v25 = *MEMORY[0x277CBE8A0];
  *(v23 + 32) = *MEMORY[0x277CBE868];
  *(v23 + 40) = v25;
  v74[0] = 0;
  v68 = v24;
  v67 = v25;
  v26 = sub_237A5DB58(v22, v23, 0, v74, v21);

  v27 = v74[0];
  if (!v26)
  {
    v53 = v74[0];
    sub_237C0593C();

    swift_willThrow();
    goto LABEL_24;
  }

  v28 = sub_237C0893C();
  v29 = v27;

  v30 = 0;
  v71 = *(v28 + 16);
  v63 = v14 + 16;
  v55 = (v14 + 32);
  v62 = (v14 + 8);
  v57 = MEMORY[0x277D84F90];
  v65 = v14;
  v66 = v11;
  v64 = v28;
  while (v71 != v30)
  {
    if (v30 >= *(v28 + 16))
    {
      __break(1u);
    }

    v31 = *(v14 + 80);
    OUTLINED_FUNCTION_119_0();
    v32 = *(v14 + 72);
    v61 = v33;
    v60 = v32;
    (*(v14 + 16))(v73, v28 + v33 + v32 * v30, v11);
    inited = swift_initStackObject();
    *(inited + 16) = v69;
    v36 = v67;
    v35 = v68;
    *(inited + 32) = v68;
    *(inited + 40) = v36;
    v37 = v35;
    v38 = v36;
    sub_237B4368C(inited);
    sub_237C0599C();
    if (v1)
    {

      v39 = 1;
    }

    else
    {
      v39 = 0;
    }

    v40 = sub_237C058AC();
    __swift_storeEnumTagSinglePayload(v10, v39, 1, v40);
    v41 = v72;
    sub_237A5DBEC(v10, v72);
    if (__swift_getEnumTagSinglePayload(v41, 1, v40) == 1)
    {
      goto LABEL_9;
    }

    v42 = v72;
    v43 = sub_237C0589C();
    v44 = *(*(v40 - 8) + 8);
    v44(v42, v40);
    v41 = v10;
    if (v43 == 2)
    {
      goto LABEL_11;
    }

    v41 = v59;
    sub_237A5DBEC(v10, v59);
    if (__swift_getEnumTagSinglePayload(v41, 1, v40) == 1)
    {
LABEL_9:
      sub_2379F6DD8(v10, &qword_27DE9BA68, &qword_237C0E550);
LABEL_11:
      sub_2379F6DD8(v41, &qword_27DE9BA68, &qword_237C0E550);
      goto LABEL_12;
    }

    v45 = v59;
    v58 = sub_237C0588C();
    v46 = v58;
    sub_2379F6DD8(v10, &qword_27DE9BA68, &qword_237C0E550);
    v44(v45, v40);
    if (v46 != 2 && (v43 & 1) != 0 && (v58 & 1) != 0)
    {
      v47 = *v55;
      v11 = v66;
      (*v55)(v56, v73, v66);
      v48 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v48;
      v74[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237AC8AF4(0, v48[2] + 1, 1);
        v50 = v74[0];
      }

      v1 = 0;
      v52 = v50[2];
      v51 = v50[3];
      v14 = v65;
      if (v52 >= v51 >> 1)
      {
        sub_237AC8AF4(v51 > 1, v52 + 1, 1);
        v50 = v74[0];
      }

      ++v30;
      v50[2] = v52 + 1;
      v57 = v50;
      v47(v50 + v61 + v52 * v60, v56, v11);
      v28 = v64;
    }

    else
    {
LABEL_12:
      v11 = v66;
      (*v62)(v73, v66);
      ++v30;
      v1 = 0;
      v28 = v64;
      v14 = v65;
    }
  }

LABEL_24:
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73();
}

void sub_237A5D3A4()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = sub_237C05ADC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  v15 = sub_237A5DA10();
  if (!v0)
  {
    v16 = v15;
    v17 = v15[2];
    if (v17)
    {
      v38 = v11;
      v31[2] = 0;
      v32 = v2;
      v39 = MEMORY[0x277D84F90];
      sub_237AC8AF4(0, v17, 0);
      v19 = *(v6 + 16);
      v18 = v6 + 16;
      v20 = *(v18 + 64);
      OUTLINED_FUNCTION_119_0();
      v31[1] = v16;
      v36 = v21;
      v37 = v22;
      v23 = v16 + v21;
      v24 = *(v18 + 56);
      v34 = v18 - 8;
      v35 = v24;
      v33 = (v18 + 16);
      do
      {
        v25 = v38;
        v37(v38, v23, v3);
        sub_237C05A4C();
        OUTLINED_FUNCTION_3_25();
        v26(v25, v3);
        v28 = *(v39 + 16);
        v27 = *(v39 + 24);
        if (v28 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_5_20(v27);
        }

        *(v39 + 16) = v28 + 1;
        v29 = v35;
        (*v33)(v39 + v36 + v28 * v35, v14, v3);
        v23 += v29;
        --v17;
      }

      while (v17);

      v2 = v32;
    }

    else
    {
    }

    MEMORY[0x28223BE20](v30);
    v31[-2] = v2;
    sub_237A5C2F0();
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A5D608()
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
  v12 = &v47 - v11;
  sub_237A5D3A4();
  if (v0)
  {
LABEL_21:
    OUTLINED_FUNCTION_73();
    return;
  }

  v14 = v13;
  v60 = *(v13 + 16);
  if (!v60)
  {

    v46 = 0;
LABEL_20:
    sub_237A560B8(v46);
    goto LABEL_21;
  }

  v56 = 0;
  v15 = 0;
  v16 = *(v4 + 80);
  OUTLINED_FUNCTION_119_0();
  v49 = v17;
  v59 = v14 + v17;
  v62 = v4 + 16;
  v58 = v4 + 8;
  v47 = 0;
  v48 = (v4 + 32);
  v57 = MEMORY[0x277D84F98];
  v53 = v4;
  v54 = v1;
  v51 = v12;
  v52 = v9;
  v50 = v14;
  while (v15 < *(v14 + 16))
  {
    v61 = *(v4 + 72);
    v18 = *(v4 + 16);
    v18(v12, v59 + v61 * v15, v1);
    v19 = sub_237C059DC();
    v21 = sub_2379EB318(46, 0xE100000000000000, v19, v20);
    if ((v22 & 1) != 0 || v21 < 0x4000)
    {
      OUTLINED_FUNCTION_3_25();
      v23(v12, v1);
    }

    else
    {
      v24 = sub_237C0884C();
      v26 = v25;
      v55 = v27;
      v29 = v28;

      v30 = MEMORY[0x2383DC310](v24, v26, v55, v29);
      v32 = v31;

      v33 = v1;
      v34 = v30;
      v18(v9, v12, v33);
      sub_237A560B8(v56);
      v35 = v57;
      swift_isUniquelyReferenced_nonNull_native();
      v36 = sub_237ACAC78(v34, v32);
      if (__OFADD__(*(v35 + 16), (v37 & 1) == 0))
      {
        goto LABEL_23;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
      if (sub_237C090AC())
      {
        v40 = sub_237ACAC78(v34, v32);
        v9 = v52;
        v14 = v50;
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_24;
        }

        v38 = v40;
        v12 = v51;
      }

      else
      {
        v12 = v51;
        v9 = v52;
        v14 = v50;
      }

      if (v39)
      {
      }

      else
      {
        sub_237B42690(v38, v34, v32, MEMORY[0x277D84F90], v35);
      }

      v57 = v35;
      v42 = *(v35 + 56) + 8 * v38;
      sub_237A9D0EC();
      v43 = *(*v42 + 16);
      sub_237A9D208(v43);
      OUTLINED_FUNCTION_3_25();
      v1 = v54;
      v44(v12, v54);
      v45 = *v42;
      *(v45 + 16) = v43 + 1;
      (*v48)(v45 + v49 + v43 * v61, v9, v1);
      v56 = sub_237A5DC5C;
      v4 = v53;
    }

    if (v60 == ++v15)
    {

      v46 = v56;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_237C0932C();
  __break(1u);
}

void *sub_237A5DA10()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_237C059EC();
  v8[0] = 0;
  v2 = [v0 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:0 options:4 error:v8];

  v3 = v8[0];
  if (v2)
  {
    sub_237C05ADC();
    v1 = sub_237C0893C();
    v4 = v3;
  }

  else
  {
    v5 = v8[0];
    sub_237C0593C();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v1;
}

id sub_237A5DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  v9 = sub_237C0892C();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

uint64_t sub_237A5DBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA68, &qword_237C0E550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_23()
{
  v1 = *(v0 - 216);
  result = *(v0 - 232);
  v3 = *(v0 - 160);
  return result;
}

void OUTLINED_FUNCTION_5_20(unint64_t a1@<X8>)
{

  sub_237AC8AF4(a1 > 1, v1, 1);
}

uint64_t sub_237A5DCE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C0704C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237A5DD84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C0704C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AnyTreeClassifierModel()
{
  result = qword_27DE9BA80;
  if (!qword_27DE9BA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A5DE50()
{
  sub_237A47848();
  if (v0 <= 0x3F)
  {
    sub_237C0704C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237A5DEEC(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v26 - v11;
  if (v1[2])
  {
    v13 = v1[3];
    v14 = v1[4];
    sub_237A0D2E0();
    if (!v2)
    {
      v26[1] = a1;
      v15 = type metadata accessor for AnyTreeClassifierModel();
      v16 = v1 + *(v15 + 24);
      v17 = sub_237C0703C();
      v18 = v3 + *(v15 + 28);
      v19 = *v18;
      v20 = v18[8];
      MEMORY[0x28223BE20](v17);
      if (v21)
      {
        sub_2379E2800();

        v22 = OUTLINED_FUNCTION_1_25();
        sub_237A5E730(v22, v23);
      }

      else
      {
        sub_2379E2664();

        v24 = OUTLINED_FUNCTION_1_25();
        sub_237A5E1C8(v24, v25);
      }

      (*(v8 + 8))(v12, v5);
    }
  }

  else
  {
    sub_237C090DC();
    __break(1u);
  }
}

uint64_t sub_237A5E1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB70, &unk_237C0E600);
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v40 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA98, &qword_237C0E610);
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = *v2;
  v42 = v2[1];
  v43 = v14;
  v57 = v14;
  v58 = v42;
  swift_bridgeObjectRetain_n();
  MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
  v57 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAA0, &qword_237C0E618);
  sub_237A5F288(&qword_27DE9BAA8, &qword_27DE9BAA0, &qword_237C0E618);
  v44 = v13;
  v53 = v4;
  sub_237C05EEC();
  v54 = MEMORY[0x277D83B88];
  v55 = MEMORY[0x277D83B98];
  KeyPath = swift_getKeyPath();
  v16 = *(a1 + 16);
  if (v16)
  {
    v41 = v7;
    v56 = MEMORY[0x277D84F90];
    sub_237AC8C34();
    v17 = v56;
    v18 = v51 + 16;
    v19 = *(v51 + 16);
    v20 = a1 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v50 = *(v51 + 72);
    v51 = v19;
    v21 = (v18 - 8);
    v22 = v18;
    do
    {
      v24 = v52;
      v23 = v53;
      v25 = v22;
      (v51)(v52, v20, v53);
      v26 = KeyPath;
      swift_getAtKeyPath();
      v27 = v57;
      v28 = v58;
      (*v21)(v24, v23);
      v56 = v17;
      v29 = *(v17 + 16);
      if (v29 >= *(v17 + 24) >> 1)
      {
        sub_237AC8C34();
        v17 = v56;
      }

      *(v17 + 16) = v29 + 1;
      v30 = v17 + 16 * v29;
      *(v30 + 32) = v27;
      *(v30 + 40) = v28;
      v20 += v50;
      --v16;
      v22 = v25;
      KeyPath = v26;
    }

    while (v16);

    v31 = v48;
    v7 = v41;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    v31 = v48;
  }

  v57 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAB0, &qword_237C0E660);
  sub_237A5F288(&qword_27DE9BAB8, &qword_27DE9BAB0, &qword_237C0E660);
  v32 = v47;
  sub_237C05EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  v33 = *(sub_237C0602C() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_237C0B670;
  sub_237C05EBC();
  v37 = v46;
  v38 = v44;
  sub_237C05EBC();
  v57 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
  sub_237A5F288(&qword_27DE9ABB0, &qword_27DE9ABA8, &unk_237C0B910);
  sub_237C05D7C();
  (*(v7 + 8))(v32, v31);
  return (*(v45 + 8))(v38, v37);
}

uint64_t sub_237A5E730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  *&v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC8, &unk_237C0E670);
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v15 = *v2;
  v36 = v2[1];
  v37 = v15;
  *&v50 = v15;
  *(&v50 + 1) = v36;
  swift_bridgeObjectRetain_n();
  MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
  *&v50 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAC8, &qword_237C0B848);
  sub_237A5F288(&qword_27DE9BAD0, &qword_27DE9AAC8, &qword_237C0B848);
  v38 = v14;
  v45 = v4;
  sub_237C05EEC();
  v47 = MEMORY[0x277D837D0];
  v48 = MEMORY[0x277D837E0];
  swift_getKeyPath();
  v16 = *(a1 + 16);
  if (v16)
  {
    v35 = v8;
    v49 = MEMORY[0x277D84F90];
    sub_237AC8A54();
    v17 = v49;
    v44 = *(v46 + 16);
    v18 = a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v19 = *(v46 + 72);
    v20 = (v46 + 8);
    v21 = v46 + 16;
    do
    {
      v22 = v45;
      v23 = v21;
      v44(v7, v18, v45);
      swift_getAtKeyPath();
      v46 = v50;
      (*v20)(v7, v22);
      v49 = v17;
      v24 = *(v17 + 16);
      if (v24 >= *(v17 + 24) >> 1)
      {
        sub_237AC8A54();
        v17 = v49;
      }

      *(v17 + 16) = v24 + 1;
      *(v17 + 16 * v24 + 32) = v46;
      v18 += v19;
      --v16;
      v21 = v23;
    }

    while (v16);

    v25 = v42;
    v8 = v35;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    v25 = v42;
  }

  *&v50 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAD8, &qword_237C0E680);
  sub_237A5F288(&qword_27DE9BAE0, &qword_27DE9BAD8, &qword_237C0E680);
  v26 = v41;
  sub_237C05EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  v27 = *(sub_237C0602C() - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_237C0B670;
  sub_237C05EBC();
  v31 = v40;
  v32 = v38;
  sub_237C05EBC();
  *&v50 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
  sub_237A5F288(&qword_27DE9ABB0, &qword_27DE9ABA8, &unk_237C0B910);
  sub_237C05D7C();
  (*(v8 + 8))(v26, v25);
  return (*(v39 + 8))(v32, v31);
}

uint64_t sub_237A5ED14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC0, &qword_237C0E668);
  sub_237C06BDC();
  if ((v5 & 0x8000000000000000) == 0 && v5 < v3)
  {
    sub_237C06BDC();
    if ((v5 & 0x8000000000000000) == 0 && v5 < v3)
    {
      v6 = *(a2 + 8 * v5 + 32);
      sub_237C06BBC();
      return sub_237C06BCC();
    }

    __break(1u);
  }

  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237A5EE2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC0, &qword_237C0E668);
  sub_237C06BDC();
  if ((v6 & 0x8000000000000000) == 0 && v6 < v3)
  {
    sub_237C06BDC();
    if ((v6 & 0x8000000000000000) == 0 && v6 < v3)
    {
      v4 = a2 + 16 * v6;
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);

      sub_237C06BBC();
      return sub_237C06BCC();
    }

    __break(1u);
  }

  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237A5EF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 16);
  v5 = *(v3 - 8);
  sub_237C0722C();
  return sub_237C0720C();
}

void sub_237A5EF84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_237C0602C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  v9 = sub_237C05DBC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A5DEEC(v16);
  if (!v3)
  {
    v19[1] = a1;
    v19[3] = a2;
    v18 = *v2;
    v17 = v2[1];
    sub_237C05DFC();
    sub_237C05DFC();
    sub_237B0CBBC();
    (*(v12 + 8))(v16, v9);
  }
}

uint64_t sub_237A5F124(uint64_t a1)
{
  sub_237A5DEEC(a1);
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_237A5F1B0()
{
  result = qword_27DE9BA90;
  if (!qword_27DE9BA90)
  {
    type metadata accessor for AnyTreeClassifierModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BA90);
  }

  return result;
}

uint64_t sub_237A5F208()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_237A5EC8C();
}

uint64_t sub_237A5F228()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_237A5E140();
}

__n128 sub_237A5F260(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_237A5F288(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_237A5F30C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_103();
  v4 = swift_allocObject();
  sub_237A5F370(a1, a2);
  return v4;
}

uint64_t sub_237A5F370(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_15();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_16();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_14();
  if (!v14)
  {
    goto LABEL_40;
  }

  v15 = v14;
  type metadata accessor for CMLSequence();
  inited = swift_initStackObject();
  *(inited + 16) = v15;
  v46 = inited;
  *(inited + 24) = 1;
  v42 = a1;
  v43 = v7;
  (*(v7 + 16))(v2, a1, a2);
  OUTLINED_FUNCTION_13_11();
  sub_237C0885C();
  swift_getAssociatedConformanceWitness();
  v17 = 6;
  while (2)
  {
    sub_237C08D7C();
    if (v17 == 6)
    {
      switch(v45)
      {
        case 0:
          goto LABEL_7;
        case 1:
          goto LABEL_21;
        case 2:
          goto LABEL_16;
        case 3:
          goto LABEL_19;
        case 4:
          goto LABEL_14;
        case 5:
          goto LABEL_26;
        default:
          goto LABEL_10;
      }
    }

    switch(v45)
    {
      case 0:
        if (v17)
        {
          goto LABEL_30;
        }

LABEL_7:
        v18 = sub_237B0F164();
        if (v3)
        {
          goto LABEL_42;
        }

        v19 = v18;
        if (!v18)
        {
          goto LABEL_39;
        }

        type metadata accessor for CMLFeatureValue();
        OUTLINED_FUNCTION_11_9();
        swift_allocObject();
        v20 = sub_237A2E764(v19, 1);
        v17 = 0;
        goto LABEL_27;
      case 1:
        if (v17 != 1)
        {
          goto LABEL_30;
        }

LABEL_21:
        v25 = sub_237B0F594();
        if (v3)
        {
          goto LABEL_42;
        }

        v26 = v25;
        if (!v25)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          OUTLINED_FUNCTION_10_13();
          swift_unexpectedError();
          __break(1u);
          JUMPOUT(0x237A5F8ECLL);
        }

        type metadata accessor for CMLFeatureValue();
        OUTLINED_FUNCTION_11_9();
        swift_allocObject();
        v17 = 1;
        v21 = sub_237A2E764(v26, 1);
        goto LABEL_24;
      case 2:
        if (v17 != 2)
        {
          goto LABEL_30;
        }

LABEL_16:
        type metadata accessor for CMLFeatureValue();
        v22 = OUTLINED_FUNCTION_13_11();
        sub_2379E9288(v22, v23, v45);
        OUTLINED_FUNCTION_13_11();
        v24 = sub_237A2E7CC();
        if (v3)
        {
          goto LABEL_42;
        }

        v20 = v24;
        v17 = 2;
        goto LABEL_27;
      case 3:
        if (v17 != 3)
        {
          goto LABEL_30;
        }

LABEL_19:
        v20 = sub_237A91FA8();
        v17 = 3;
        goto LABEL_27;
      case 4:
        if (v17 != 4)
        {
          goto LABEL_30;
        }

LABEL_14:
        v20 = sub_237AFF290();
        v17 = 4;
        goto LABEL_27;
      case 5:
        if (v17 != 5)
        {
LABEL_30:
          sub_2379E8AF0();
          v29 = OUTLINED_FUNCTION_6_2();
          *v30 = 0xD000000000000027;
          v30[1] = 0x8000000237C19320;
          OUTLINED_FUNCTION_2_5(v29, v30);
          swift_setDeallocating();
          sub_237A2E6E8();
          OUTLINED_FUNCTION_11_9();
          swift_deallocClassInstance();
          goto LABEL_31;
        }

LABEL_26:
        v20 = sub_237AC85C4();
        v17 = 5;
        goto LABEL_27;
      default:
LABEL_10:
        if (v17 == 6)
        {
          type metadata accessor for CMLFeatureValue();
          v21 = sub_237A2E78C();
LABEL_24:
          v20 = v21;
LABEL_27:
          sub_237A2DE9C(v20);
          if (v3)
          {
            swift_setDeallocating();
            sub_237A2E6E8();
            OUTLINED_FUNCTION_11_9();
            swift_deallocClassInstance();

LABEL_31:
            v31 = OUTLINED_FUNCTION_13_11();
            sub_237A60DCC(v31, v32, v45);
            (*(v43 + 8))(v42, a2);
            v33 = OUTLINED_FUNCTION_15_11();
            v34(v33);
            goto LABEL_32;
          }

          v27 = OUTLINED_FUNCTION_13_11();
          sub_237A60DCC(v27, v28, v45);

          continue;
        }

        v37 = OUTLINED_FUNCTION_15_11();
        v38(v37);
        v39 = sub_237B0E008(*(v46 + 16));
        if (v3)
        {
          swift_setDeallocating();
          sub_237A2E6E8();
          OUTLINED_FUNCTION_11_9();
          swift_deallocClassInstance();
          (*(v43 + 8))(v42, a2);
LABEL_32:
          type metadata accessor for _UntypedColumn();
          v35 = v44;
          OUTLINED_FUNCTION_9_15();
          swift_deallocPartialClassInstance();
        }

        else
        {
          v40 = v39;
          if (!v39)
          {
            goto LABEL_41;
          }

          swift_setDeallocating();
          sub_237A2E6E8();
          OUTLINED_FUNCTION_11_9();
          swift_deallocClassInstance();
          type metadata accessor for CMLColumn();
          OUTLINED_FUNCTION_103();
          v41 = swift_allocObject();
          *(v41 + 16) = v40;
          (*(v43 + 8))(v42, a2);
          v35 = v44;
          *(v44 + 16) = v41;
        }

        return v35;
    }
  }
}

uint64_t sub_237A5F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_103();
  v8 = swift_allocObject();
  sub_237A5F988(a1, a2, a3, a4);
  return v8;
}

void sub_237A5F988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v51 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v52 = &v45 - v12;
  v47 = v13;
  v14 = *(*(sub_237C08D2C() - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  OUTLINED_FUNCTION_3_15();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v48 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_14();
  if (v28)
  {
    v29 = v28;
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    *(inited + 16) = v29;
    v55 = inited;
    *(inited + 24) = 1;
    (*(v19 + 16))(v4, a1, a2);
    sub_237C0885C();
    v46 = a2;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v50 = (v51 + 32);
    v51 += 8;
    v31 = v19;
    v32 = v47;
    while (1)
    {
      sub_237C08D7C();
      if (__swift_getEnumTagSinglePayload(v17, 1, v32) == 1)
      {
        break;
      }

      (*v50)(v52, v17, v32);
      v33 = sub_237B70DD4(v32, v54);
      v34 = v56;
      sub_237A2DE9C(v33);
      v56 = v34;
      if (v34)
      {

        swift_setDeallocating();
        sub_237A2E6E8();
        OUTLINED_FUNCTION_11_9();
        swift_deallocClassInstance();
        (*(v31 + 8))(a1, v46);
        v42 = OUTLINED_FUNCTION_14_12();
        v43(v42);
        (*(v48 + 8))(v5, AssociatedTypeWitness);
        goto LABEL_9;
      }

      v35 = OUTLINED_FUNCTION_14_12();
      v36(v35);
    }

    (*(v48 + 8))(v5, AssociatedTypeWitness);
    (*(v54 + 8))(&v57, v32);
    OUTLINED_FUNCTION_12_15();
    v39 = v38 >> v37;
    type metadata accessor for CMLColumn();
    v40 = v56;
    v41 = sub_237A2ED1C(v55, v39);
    if (v40)
    {
      (*(v31 + 8))(a1, v46);
LABEL_9:
      type metadata accessor for _UntypedColumn();
      OUTLINED_FUNCTION_6_21();
      swift_deallocPartialClassInstance();
      return;
    }

    v44 = v41;
    (*(v31 + 8))(a1, v46);
    *(v49 + 16) = v44;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237A5FDF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = sub_237AFC858();
  sub_2379E8CE8(v5, v6, v7);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_237B10560(*(v8 + 16), a2);
    if (v9)
    {

      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v3 + 16) = v10;
      return v3;
    }
  }

  __break(1u);

  OUTLINED_FUNCTION_2_29();
  swift_unexpectedError();
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_9_15();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_237A5FED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_103();
  v8 = swift_allocObject();
  sub_237A5FF38(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_237A5FF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_237B70DD4(a3, a4);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_237B10560(*(v9 + 16), a2);
    if (v10)
    {

      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      (*(*(a3 - 8) + 8))(a1, a3);
      *(v5 + 16) = v11;
      return v5;
    }
  }

  __break(1u);

  OUTLINED_FUNCTION_2_29();
  swift_unexpectedError();
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_9_15();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_237A6003C(uint64_t a1, uint64_t a2)
{
  if ((a2 | a1) < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_237B10B10();
    if (v3)
    {
      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v2 + 16) = v4;
      return v2;
    }
  }

  __break(1u);
  OUTLINED_FUNCTION_2_29();
  swift_unexpectedError();
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_6_21();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_237A600CC(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a2, 1);
  v4 = a2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v4 | a1) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_237B10B10();
  if (v5)
  {
    type metadata accessor for CMLColumn();
    OUTLINED_FUNCTION_103();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v2 + 16) = v6;
    return v2;
  }

LABEL_7:
  __break(1u);
  OUTLINED_FUNCTION_2_29();
  swift_unexpectedError();
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_6_21();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_237A60168(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = sub_237A2F168();
  v6 = *(a1 + 16);
  if (v5 == sub_237A2F168())
  {
    type metadata accessor for CMLColumn();

    result = sub_237A2F0FC(v4, v6);
    if (!v2)
    {
      v8 = result;
      type metadata accessor for _UntypedColumn();
      OUTLINED_FUNCTION_103();
      result = swift_allocObject();
      *(result + 16) = v8;
    }
  }

  else
  {
    sub_2379E8AF0();
    v9 = OUTLINED_FUNCTION_6_2();
    *v10 = 0xD000000000000034;
    v10[1] = 0x8000000237C19370;
    return OUTLINED_FUNCTION_2_5(v9, v10);
  }

  return result;
}

void sub_237A60248(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_237A2F168();
  OUTLINED_FUNCTION_12_15();
  *a1 = v5 >> v4;
}

uint64_t sub_237A60280(char a1, uint64_t a2, __int128 *a3)
{
  v5 = v3;
  v7 = *(a3 + 16);
  v8 = *a3;
  OUTLINED_FUNCTION_19_12();
  if (v4 > 9)
  {
LABEL_30:
    sub_2379E8AF0();
    v36 = OUTLINED_FUNCTION_6_2();
    *v37 = 0xD000000000000017;
    v37[1] = 0x8000000237C193B0;
    OUTLINED_FUNCTION_2_5(v36, v37);
  }

  else
  {
    switch(a1)
    {
      case 1:
        goto LABEL_21;
      case 2:
        goto LABEL_12;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_6;
      case 5:
        goto LABEL_24;
      case 6:
        goto LABEL_27;
      case 7:
        goto LABEL_18;
      case 8:
        v38 = OUTLINED_FUNCTION_1_26();
        v40 = sub_237B130A4(v38, "<=", v39);
        if (v3)
        {
        }

        v5 = v40;
        if (!v40)
        {
          __break(1u);
          JUMPOUT(0x237A60508);
        }

        goto LABEL_34;
      case 9:
        goto LABEL_9;
      default:
        v9 = OUTLINED_FUNCTION_1_26();
        v11 = sub_237B130A4(v9, "+", v10);
        if (v3)
        {
        }

        v5 = v11;
        if (v11)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_6:
        v12 = OUTLINED_FUNCTION_1_26();
        v14 = sub_237B130A4(v12, "==", v13);
        if (v5)
        {
        }

        v5 = v14;
        if (v14)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_9:
        v15 = OUTLINED_FUNCTION_1_26();
        v17 = sub_237B130A4(v15, ">=", v16);
        if (v5)
        {
        }

        v5 = v17;
        if (v17)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_12:
        v18 = OUTLINED_FUNCTION_1_26();
        v20 = sub_237B130A4(v18, "/", v19);
        if (v5)
        {
        }

        v5 = v20;
        if (v20)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_15:
        v21 = OUTLINED_FUNCTION_1_26();
        v23 = sub_237B130A4(v21, "*", v22);
        if (v5)
        {
        }

        v5 = v23;
        if (v23)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_18:
        v24 = OUTLINED_FUNCTION_1_26();
        v26 = sub_237B130A4(v24, ">", v25);
        if (v5)
        {
        }

        v5 = v26;
        if (v26)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_21:
        v27 = OUTLINED_FUNCTION_1_26();
        v29 = sub_237B130A4(v27, "-", v28);
        if (v5)
        {
        }

        v5 = v29;
        if (v29)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_24:
        v30 = OUTLINED_FUNCTION_1_26();
        v32 = sub_237B130A4(v30, "!=", v31);
        if (v5)
        {
        }

        v5 = v32;
        if (v32)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_27:
        v33 = OUTLINED_FUNCTION_1_26();
        v35 = sub_237B130A4(v33, "<", v34);
        if (v5)
        {
        }

        v5 = v35;
        if (!v35)
        {
          __break(1u);
          goto LABEL_30;
        }

LABEL_34:

        type metadata accessor for CMLColumn();
        OUTLINED_FUNCTION_103();
        v42 = swift_allocObject();
        *(v42 + 16) = v5;
        type metadata accessor for _UntypedColumn();
        OUTLINED_FUNCTION_103();
        result = swift_allocObject();
        *(result + 16) = v42;
        break;
    }
  }

  return result;
}

uint64_t sub_237A60530(char a1, __int128 *a2)
{
  v4 = v2;
  v6 = *(a2 + 16);
  v7 = *a2;
  OUTLINED_FUNCTION_19_12();
  if (v3 > 9)
  {
LABEL_30:
    sub_2379E8AF0();
    v35 = OUTLINED_FUNCTION_6_2();
    *v36 = 0xD000000000000017;
    v36[1] = 0x8000000237C193B0;
    OUTLINED_FUNCTION_2_5(v35, v36);
  }

  else
  {
    switch(a1)
    {
      case 1:
        goto LABEL_21;
      case 2:
        goto LABEL_12;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_6;
      case 5:
        goto LABEL_24;
      case 6:
        goto LABEL_27;
      case 7:
        goto LABEL_18;
      case 8:
        v37 = OUTLINED_FUNCTION_0_27();
        v39 = sub_237B13104(v37, "<=", v38);
        if (v2)
        {
        }

        v4 = v39;
        if (!v39)
        {
          __break(1u);
          JUMPOUT(0x237A607B8);
        }

        goto LABEL_34;
      case 9:
        goto LABEL_9;
      default:
        v8 = OUTLINED_FUNCTION_0_27();
        v10 = sub_237B13104(v8, "+", v9);
        if (v2)
        {
        }

        v4 = v10;
        if (v10)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_6:
        v11 = OUTLINED_FUNCTION_0_27();
        v13 = sub_237B13104(v11, "==", v12);
        if (v4)
        {
        }

        v4 = v13;
        if (v13)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_9:
        v14 = OUTLINED_FUNCTION_0_27();
        v16 = sub_237B13104(v14, ">=", v15);
        if (v4)
        {
        }

        v4 = v16;
        if (v16)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_12:
        v17 = OUTLINED_FUNCTION_0_27();
        v19 = sub_237B13104(v17, "/", v18);
        if (v4)
        {
        }

        v4 = v19;
        if (v19)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_15:
        v20 = OUTLINED_FUNCTION_0_27();
        v22 = sub_237B13104(v20, "*", v21);
        if (v4)
        {
        }

        v4 = v22;
        if (v22)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_18:
        v23 = OUTLINED_FUNCTION_0_27();
        v25 = sub_237B13104(v23, ">", v24);
        if (v4)
        {
        }

        v4 = v25;
        if (v25)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_21:
        v26 = OUTLINED_FUNCTION_0_27();
        v28 = sub_237B13104(v26, "-", v27);
        if (v4)
        {
        }

        v4 = v28;
        if (v28)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_24:
        v29 = OUTLINED_FUNCTION_0_27();
        v31 = sub_237B13104(v29, "!=", v30);
        if (v4)
        {
        }

        v4 = v31;
        if (v31)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_27:
        v32 = OUTLINED_FUNCTION_0_27();
        v34 = sub_237B13104(v32, "<", v33);
        if (v4)
        {
        }

        v4 = v34;
        if (!v34)
        {
          __break(1u);
          goto LABEL_30;
        }

LABEL_34:

        type metadata accessor for CMLColumn();
        OUTLINED_FUNCTION_103();
        v41 = swift_allocObject();
        *(v41 + 16) = v4;
        type metadata accessor for _UntypedColumn();
        OUTLINED_FUNCTION_103();
        result = swift_allocObject();
        *(result + 16) = v41;
        break;
    }
  }

  return result;
}

uint64_t sub_237A607E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0 || (v4 = result, v5 = *(v2 + 16), result = sub_237A2F128(), result <= v4))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 6;
  }

  else
  {
    v6 = sub_237A2F1A8(v4);

    return sub_237AFC548(v6, a2);
  }

  return result;
}

uint64_t sub_237A60884()
{
  sub_237A60248(v34);
  v1 = 0xE300000000000000;
  v2 = 7630409;
  switch(LOBYTE(v34[0]))
  {
    case 1:
      v1 = 0xE600000000000000;
      v2 = 0x656C62756F44;
      break;
    case 2:
      v1 = 0xE600000000000000;
      v2 = 0x676E69727453;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v2 = 0x65636E6575716553;
      break;
    case 4:
      v1 = 0xEA00000000007972;
      v2 = 0x616E6F6974636944;
      break;
    case 5:
      v2 = 0x72724169746C754DLL;
      v1 = 0xEA00000000007961;
      break;
    case 6:
      v1 = 0xE700000000000000;
      v2 = OUTLINED_FUNCTION_16_10();
      break;
    default:
      break;
  }

  v31 = 0x70795465756C6156;
  v32 = 0xEB00000000203A65;
  MEMORY[0x2383DC360](v2, v1);

  MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C19350);

  v34[0] = 0x70795465756C6156;
  v34[1] = 0xEB00000000203A65;
  v3 = *(v0 + 16);
  v4 = sub_237A2F128();
  if (v4 >= 10)
  {
    v5 = 10;
  }

  else
  {
    v5 = v4;
  }

  if (v4 < 0)
  {
    __break(1u);
    JUMPOUT(0x237A60CB0);
  }

  v6 = v4;
  if (v4)
  {
    v7 = 0;
    while (2)
    {
      v8 = v7;
      if (v7)
      {
        MEMORY[0x2383DC360](8236, 0xE200000000000000);
      }

      ++v7;
      sub_237A607E0(v8, &v31);
      switch(v33)
      {
        case 1:
          v22 = sub_237C08A6C();
          MEMORY[0x2383DC360](v22);
          goto LABEL_25;
        case 2:

          v14 = OUTLINED_FUNCTION_93_0();
          MEMORY[0x2383DC360](v14);
          v15 = OUTLINED_FUNCTION_93_0();
          sub_2379E8CE8(v15, v16, 2);
          v17 = OUTLINED_FUNCTION_93_0();
          sub_2379E8CE8(v17, v18, 2);
          goto LABEL_26;
        case 3:
          v32 = sub_237A918E8;
          v33 = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAF0, &qword_237C0E6A0);
          sub_237A60E34();
          v19 = sub_237C0864C();
          v21 = v20;

          v31 = 91;
          v32 = 0xE100000000000000;
          MEMORY[0x2383DC360](v19, v21);

          MEMORY[0x2383DC360](93, 0xE100000000000000);

          MEMORY[0x2383DC360](v31, v32);
          v11 = OUTLINED_FUNCTION_93_0();
          v13 = 3;
          goto LABEL_21;
        case 4:
          sub_237A60DE0();
          v10 = sub_237C0858C();
          MEMORY[0x2383DC360](v10);
          v11 = OUTLINED_FUNCTION_93_0();
          v13 = 4;
LABEL_21:
          sub_2379E8CE8(v11, v12, v13);
          goto LABEL_25;
        case 5:
          v23 = [v31 description];
          v24 = sub_237C086EC();
          v26 = v25;

          MEMORY[0x2383DC360](v24, v26);
          v27 = OUTLINED_FUNCTION_93_0();
          sub_2379E8CE8(v27, v28, 5);
          goto LABEL_25;
        case 6:
          v29 = OUTLINED_FUNCTION_16_10();
          MEMORY[0x2383DC360](v29, 0xE700000000000000);
          goto LABEL_26;
        default:
          sub_237A20C10();
          v9 = sub_237C08DEC();
          MEMORY[0x2383DC360](v9);
LABEL_25:

LABEL_26:
          if (v5 != v7)
          {
            continue;
          }

          if (v6 >= 11)
          {
            MEMORY[0x2383DC360](0x2E2E2E202CLL, 0xE500000000000000);
          }

          break;
      }

      break;
    }
  }

  MEMORY[0x2383DC360](93, 0xE100000000000000);
  return v34[0];
}

uint64_t sub_237A60CE8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(v4 + 16);
  v6 = sub_237A2F37C(a1, a2, 0x5060403020100uLL >> (8 * *a4), a3);
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_103();
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t sub_237A60D74()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_103();

  return swift_deallocClassInstance();
}

void sub_237A60DCC(void *a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_2379E8CE8(a1, a2, a3);
  }
}

unint64_t sub_237A60DE0()
{
  result = qword_27DE9BAE8;
  if (!qword_27DE9BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BAE8);
  }

  return result;
}

unint64_t sub_237A60E34()
{
  result = qword_27DE9BAF8;
  if (!qword_27DE9BAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BAF0, &qword_237C0E6A0);
    sub_237A60EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BAF8);
  }

  return result;
}

unint64_t sub_237A60EB8()
{
  result = qword_27DE9BB00;
  if (!qword_27DE9BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BB00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_27()
{
  result = *(v0 + 16);
  v3 = *(*(v1 + 16) + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_26()
{
  result = *(*(v1 + 16) + 16);
  v3 = *(v0 + 16);
  return result;
}

void OUTLINED_FUNCTION_18_14()
{

  JUMPOUT(0x2383DDAC0);
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return sub_237AFC858();
}

uint64_t type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData()
{
  result = qword_27DE9BB08;
  if (!qword_27DE9BB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A61074@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_237C05DBC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_3();
  v15 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  sub_237A0BA6C(v3, v18 - v17);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v21 = *v19;
      v22 = *(v19 + 8);
      goto LABEL_7;
    case 2:
      (*(v8 + 32))(v2, v19, v5);
      (*(v8 + 16))(v13, v2, v5);
      sub_237A70684(v13, 1, &v26);
      result = (*(v8 + 8))(v2, v5);
      v21 = v26;
      v22 = v27;
LABEL_7:
      *a1 = v21;
      *(a1 + 8) = v22;
      break;
    case 3:
      v23 = MEMORY[0x2383DDC00](0);
      if (!v23)
      {
        __break(1u);
        JUMPOUT(0x237A612C8);
      }

      v24 = v23;
      type metadata accessor for CMLTable();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v25);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237A612D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v61 = a2;
  v59 = a1;
  v60 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_0(v60);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  v12 = sub_237C05D1C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v56 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v55 = (v17 - v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_18_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_3();
  v31 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v35 = (v34 - v33);
  sub_237A0BA6C(v57, v34 - v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = *v35;
      v47 = *(v35 + 8);
      v48 = OUTLINED_FUNCTION_4_2();
      v42 = v60;
      v49(v48);
      *&v62 = v46;
      BYTE8(v62) = v47;
      v41 = v61;
      sub_237A70ED4(&v62, v61);
      goto LABEL_10;
    case 2u:
      v43 = *(v6 + 32);
      v42 = v60;
      v43(v11, v35, v60);
      if (sub_237C05C5C())
      {
        (*(v6 + 8))(v11, v42);
        v44 = OUTLINED_FUNCTION_4_2();
LABEL_7:
        v45(v44);
        v40 = 1;
        v41 = v61;
      }

      else
      {
        v50 = OUTLINED_FUNCTION_4_2();
        v51(v50);
        v41 = v61;
        v43(v61, v11, v42);
LABEL_10:
        v40 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
    case 3u:
      v44 = OUTLINED_FUNCTION_4_2();
      v42 = v60;
      goto LABEL_7;
    default:
      v36 = *(v35 + 16);
      v37 = *(v35 + 17);
      v62 = *v35;
      v63 = v36;
      v64 = v37;
      sub_237A70BAC(v3, v24, &v62);
      v38 = v56;
      v39 = *(v56 + 16);
      v39(v22, v24, v12);
      sub_237C05DCC();
      sub_2379EA894(v3, v29);
      if (__swift_getEnumTagSinglePayload(v29, 1, v12) == 1)
      {
        (*(v38 + 8))(v24, v12);
        sub_2379EA904(v3);
        v40 = 1;
        v42 = v60;
        v41 = v61;
      }

      else
      {
        (*(v38 + 32))(v22, v29, v12);
        v39(v55, v22, v12);
        v41 = v61;
        sub_237C05DCC();
        v52 = *(v38 + 8);
        v52(v22, v12);
        v52(v24, v12);
        sub_2379EA904(v3);
        v40 = 0;
        v42 = v60;
      }

      return __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
  }
}

uint64_t sub_237A61760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB18, &qword_237C0E6C8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237A617B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB18, &qword_237C0E6C8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t type metadata accessor for MLFewShotSoundClassifier.DataSource()
{
  result = qword_27DE9BB20;
  if (!qword_27DE9BB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A61864(uint64_t a1)
{
  sub_237A6191C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_237C05ADC();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_237A6191C()
{
  if (!qword_27DE9BB30)
  {
    v0 = sub_237C05ADC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9BB30);
    }
  }
}

unint64_t sub_237A61964(void *a1)
{
  v3 = sub_237C0825C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_237C05ADC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for MLFewShotSoundClassifier.DataSource();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  sub_237A61C14(v1, v24 - v23);
  (*(v15 + 32))(v20, v25, v12);
  sub_237C0820C();
  sub_237A5D3A4();
  if (v2)
  {
    (*(v6 + 8))(v11, v3);
  }

  else
  {
    v30 = v26;
    (*(v6 + 8))(v11, v3);
    if (*(v30 + 16))
    {
      v1 = sub_237A61C78(a1, v30);
      v32 = OUTLINED_FUNCTION_0_28();
      v33(v32);

      return v1;
    }

    v1 = 0x8000000237C193E0;
    sub_2379E8AF0();
    swift_allocError();
    *v31 = 0xD00000000000002ELL;
    *(v31 + 8) = 0x8000000237C193E0;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 2;
    swift_willThrow();
  }

  v27 = OUTLINED_FUNCTION_0_28();
  v28(v27);
  return v1;
}

uint64_t sub_237A61C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLFewShotSoundClassifier.DataSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A61C78(void *a1, uint64_t a2)
{
  v64 = a2;
  v73 = a1;
  v71 = sub_237C0846C();
  v69 = *(v71 - 8);
  v2 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v67 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_237C084BC();
  v68 = *(v70 - 8);
  v4 = *(v68 + 64);
  v5 = MEMORY[0x28223BE20](v70);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = &v60 - v7;
  v62 = sub_237C08C6C();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v62);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_237C08C5C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_237C0848C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v63 = dispatch_semaphore_create(0);
  sub_2379E8EE0(0, &qword_27DE9BB38, 0x277D85C78);
  sub_237C0847C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_237A625E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB48, &qword_237C0E6E0);
  sub_237A6263C();
  sub_237C08E1C();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v62);
  v16 = sub_237C08C7C();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v62 = v17 + 16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v61 = (v18 + 16);
  v19 = objc_opt_self();
  sub_237C05ADC();
  v20 = sub_237C0892C();
  v21 = sub_237C059EC();
  v22 = swift_allocObject();
  v22[2] = v17;
  v22[3] = v18;
  v23 = v63;
  v22[4] = v63;
  aBlock[4] = sub_237A627F4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237A62800;
  aBlock[3] = &block_descriptor_3;
  v24 = _Block_copy(aBlock);

  v25 = v23;

  v73 = v16;
  v26 = [v19 featurizeFiles:v20 hallucinatorModelURL:v21 queue:v16 completionHandler:v24];
  _Block_release(v24);
  v27 = v25;
  swift_unknownObjectRelease();

  v28 = v65;
  sub_237C0849C();
  v29 = v67;
  *v67 = 600;
  v30 = v69;
  v31 = v71;
  (*(v69 + 104))(v29, *MEMORY[0x277D85188], v71);
  v32 = v66;
  sub_237C084AC();
  (*(v30 + 8))(v29, v31);
  v33 = *(v68 + 8);
  v34 = v70;
  v33(v28, v70);
  v35 = sub_237C08C8C();
  v33(v32, v34);
  if (v35)
  {
    sub_2379E8AF0();
    swift_allocError();
    *v36 = 0xD00000000000001ELL;
    *(v36 + 8) = 0x8000000237C19490;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 0u;
    *(v36 + 48) = 2;
    swift_willThrow();

LABEL_15:

LABEL_19:

    return v35;
  }

  v37 = v62;
  swift_beginAccess();
  if (!*v37)
  {
    v51 = v61;
    swift_beginAccess();
    v52 = *v51;
    if (*v51)
    {
      v53 = *v51;
      swift_willThrow();
      v54 = v52;
    }

    else
    {
      sub_2379E8AF0();
      swift_allocError();
      *v58 = 0xD000000000000029;
      *(v58 + 8) = 0x8000000237C194B0;
      *(v58 + 16) = 0u;
      *(v58 + 32) = 0u;
      *(v58 + 48) = 2;
      swift_willThrow();
    }

    goto LABEL_15;
  }

  v38 = v27;
  v35 = *v37;
  v39 = [v35 trainingDataEmbeddings];
  sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  v40 = sub_237C0893C();

  v41 = sub_237A254D8(v40);

  if (!v41)
  {
    v55 = 0x8000000237C195A0;
    sub_2379E8AF0();
    swift_allocError();
    v57 = 0xD000000000000036;
LABEL_18:
    *v56 = v57;
    *(v56 + 8) = v55;
    *(v56 + 16) = 0u;
    *(v56 + 32) = 0u;
    *(v56 + 48) = 2;
    swift_willThrow();

    v27 = v38;
    goto LABEL_19;
  }

  v42 = [v35 trainingDataLabels];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v43 = sub_237C0893C();

  v44 = sub_237A254D8(v43);

  if (!v44)
  {
    v55 = 0x8000000237C19560;
    sub_2379E8AF0();
    swift_allocError();
    v57 = 0xD000000000000031;
    goto LABEL_18;
  }

  v45 = [v35 validationDataEmbeddings];
  v46 = sub_237C0893C();

  v47 = sub_237A254D8(v46);

  if (!v47)
  {
    v55 = 0x8000000237C19520;
    sub_2379E8AF0();
    swift_allocError();
    v57 = 0xD000000000000038;
    goto LABEL_18;
  }

  v48 = [v35 validationDataLabels];
  v49 = sub_237C0893C();

  v50 = sub_237A254D8(v49);

  if (!v50)
  {
    v55 = 0x8000000237C194E0;
    sub_2379E8AF0();
    swift_allocError();
    v57 = 0xD000000000000033;
    goto LABEL_18;
  }

  return v35;
}

unint64_t sub_237A625E4()
{
  result = qword_27DE9BB40;
  if (!qword_27DE9BB40)
  {
    sub_237C08C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BB40);
  }

  return result;
}

unint64_t sub_237A6263C()
{
  result = qword_27DE9BB50;
  if (!qword_27DE9BB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BB48, &qword_237C0E6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BB50);
  }

  return result;
}

uint64_t sub_237A626A0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237A626D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_237A62710(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = a1;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  return sub_237C08CAC();
}

uint64_t sub_237A627AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_237A62800(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237A628C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237A62930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t _s5ModelVMa_1()
{
  result = qword_27DE9BB58;
  if (!qword_27DE9BB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A629D4()
{
  sub_237A62A40();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_237A62A40()
{
  if (!qword_27DE9BB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9A788, &unk_237C13D50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9A780, &unk_237C0A700);
    v0 = type metadata accessor for Either();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9BB68);
    }
  }
}

void sub_237A62AC0()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = sub_237C07F1C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v27 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v31 = v2[1];
  v32 = *v2;
  v11 = v2[3];
  v12 = v2[5];
  v30 = v2[6];
  v28 = v2[2];
  v29 = v2[7];
  v33 = v2[4];
  v35 = v2[8];
  sub_237A63B30();
  if (!v0)
  {
    v37 = v10;
    v38 = v3;

    sub_237C07DCC();
    sub_237C07DBC();
    sub_237C07E6C();
    sub_237C07EAC();
    if (!v35)
    {
      sub_237C085AC();
    }

    sub_237C07EFC();
    sub_237BAC418();
    v13 = sub_237C07EDC();
    v15 = v14;
    v16 = *v14;
    swift_isUniquelyReferenced_nonNull_native();
    v40 = *v15;
    sub_237B40C78();
    *v15 = v40;
    v13(&v39, 0);
    v17 = sub_237C07DAC();
    v18 = *(v17 + 16);
    if (v18)
    {
      v39 = MEMORY[0x277D84F90];
      sub_237AC8A34();
      v19 = v3;
      v20 = v39;
      v21 = v27 + 16;
      v22 = v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v34 = *(v27 + 72);
      v36 = *(v27 + 16);
      v23 = v10;
      do
      {
        v24 = v21;
        v36(v23, v22, v19);
        v19 = v38;
        v25 = sub_237C07DFC();
        (*(v27 + 8))(v23, v38);
        v39 = v20;
        v26 = v20[2];
        if (v26 >= v20[3] >> 1)
        {
          sub_237AC8A34();
          v19 = v38;
          v20 = v39;
        }

        v20[2] = v26 + 1;
        v20[v26 + 4] = v25;
        v22 += v34;
        --v18;
        v21 = v24;
        v23 = v37;
      }

      while (v18);
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    sub_2379FBD74(v20);

    sub_237C07E0C();
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A62E30()
{
  OUTLINED_FUNCTION_9();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[7] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[10] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v1[13] = v14;
  v15 = *(*(v14 - 8) + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237A62F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_9();
  v17 = v16[13];
  sub_237A6366C(v16[6], v16[14]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = v16[14];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v16[8] + 32))(v16[9], v19, v16[7]);
    v20 = *(MEMORY[0x277CC5160] + 4);
    v24 = swift_task_alloc();
    v16[17] = v24;
    *v24 = v16;
    v24[1] = sub_237A63280;
    v25 = v16[9];
    v26 = v16[7];
    v27 = v16[4];
    v28 = v16[5];
    v29 = v16[2];
    v30 = v16[3];

    return MEMORY[0x2821153B0](v29, v30, v27, v28, v26, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    (*(v16[11] + 32))(v16[12], v19, v16[10]);
    v31 = *(MEMORY[0x277CC5150] + 4);
    v35 = swift_task_alloc();
    v16[15] = v35;
    *v35 = v16;
    v35[1] = sub_237A630EC;
    v36 = v16[12];
    v37 = v16[10];
    v38 = v16[4];
    v39 = v16[5];
    v40 = v16[2];
    v41 = v16[3];

    return MEMORY[0x2821153A0](v40, v41, v38, v39, v37, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_237A630EC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = *(v2 + 120);
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237A631EC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[14];
  v2 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237A63280()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = *(v2 + 136);
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237A63380()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[14];
  v2 = v0[12];
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237A63418()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_237A634AC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[12];
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_237A63544()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D6854;

  return sub_237A62E30();
}

unint64_t sub_237A63608()
{
  result = qword_27DE9A760;
  if (!qword_27DE9A760)
  {
    _s5ModelVMa_1();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A760);
  }

  return result;
}

uint64_t sub_237A6366C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A636DC()
{
  OUTLINED_FUNCTION_9();
  v1[29] = v2;
  v1[30] = v0;
  v3 = sub_237C07F1C();
  v1[31] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[32] = v4;
  v6 = *(v5 + 64);
  v1[33] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237A63784()
{
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v4 = NSFullUserName();
  v5 = sub_237C086EC();
  v7 = v6;

  v0[2] = v5;
  v0[3] = v7;
  v0[4] = 0xD000000000000033;
  v0[5] = 0x8000000237C17C90;
  v0[6] = 0;
  v0[7] = 0;
  v0[8] = 49;
  v0[9] = 0xE100000000000000;
  v0[10] = 0;
  sub_237A62AC0();
  memcpy(v0 + 20, v0 + 2, 0x48uLL);
  sub_2379FC064((v0 + 20));
  sub_2379F1FC0();
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_237A63928;
  v9 = v0[33];

  return sub_237A4288C(v9);
}

uint64_t sub_237A63928()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  v6 = *(v4 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 280) = v0;

  if (!v0)
  {
    *(v5 + 288) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237A63A3C()
{
  OUTLINED_FUNCTION_9();
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];
  v2 = v0[36];

  return v1(v2);
}

uint64_t sub_237A63ABC()
{
  OUTLINED_FUNCTION_9();
  (*(v0[32] + 8))(v0[33], v0[31]);
  v1 = v0[35];
  v2 = v0[33];

  OUTLINED_FUNCTION_8();

  return v3();
}

void sub_237A63B30()
{
  OUTLINED_FUNCTION_74();
  v90 = v1;
  v86 = v2;
  v3 = sub_237C0818C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v82 = v5;
  v83 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v81 = v9 - v8;
  OUTLINED_FUNCTION_41_0();
  v88 = sub_237C07B9C();
  v10 = OUTLINED_FUNCTION_0(v88);
  v84 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v87 = (v15 - v14);
  OUTLINED_FUNCTION_41_0();
  v89 = sub_237C075DC();
  v16 = OUTLINED_FUNCTION_0(v89);
  v85 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD38, &qword_237C0BBC0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_18_0();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = v73 - v32;
  v34 = sub_237C07F1C();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18_0();
  v42 = (v40 - v41);
  MEMORY[0x28223BE20](v43);
  v45 = v73 - v44;
  sub_237A6411C(v90, v73 - v44);
  if (v0)
  {
    goto LABEL_5;
  }

  v76 = v22;
  v77 = v30;
  v80 = v45;
  v90 = v37;
  v91 = v34;
  v78 = v25;
  v46 = v87;
  v47 = v88;
  v48 = v89;
  sub_237A64684();
  v79 = 0;
  v49 = v42;
  v50 = sub_237C07EBC();
  sub_237B3B424(v50, v33);

  if (__swift_getEnumTagSinglePayload(v33, 1, v47) == 1)
  {
    __break(1u);
  }

  else
  {
    v51 = sub_237C07B4C();
    v73[1] = v52;
    v73[2] = v51;
    v53 = v84;
    v74 = *(v84 + 8);
    v75 = v84 + 8;
    v74(v33, v47);
    v54 = sub_237C07E8C();
    v55 = v77;
    sub_237B3B424(v54, v77);
    v56 = v55;

    if (__swift_getEnumTagSinglePayload(v55, 1, v47) != 1)
    {
      v57 = v46;
      v58 = v49;
      v59 = v78;
      sub_237C07B6C();
      v74(v56, v47);
      (*(v85 + 16))(v76, v59, v48);
      sub_237C07B3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
      v60 = *(v53 + 72);
      v61 = v57;
      v62 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_237C0B660;
      (*(v53 + 16))(v63 + v62, v61, v47);
      v64 = v80;
      sub_237C07ECC();
      sub_237C07EBC();
      sub_237C07E9C();
      sub_237C07F0C();
      sub_237C07E0C();
      sub_237C07E8C();
      sub_237C07E9C();
      sub_237C07EBC();
      sub_237C07ECC();
      sub_237C07DDC();
      sub_237C07DEC();
      sub_237C07E1C();
      sub_237C07E2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
      v65 = v90;
      v66 = *(v90 + 72);
      v67 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_237C0B670;
      v69 = v68 + v67;
      v70 = *(v65 + 16);
      v70(v69, v64, v91);
      v70(v69 + v66, v58, v91);
      v71 = v81;
      sub_237C07D3C();
      (*(v82 + 104))(v71, *MEMORY[0x277D25368], v83);
      sub_237C07E4C();
      v74(v87, v88);
      (*(v85 + 8))(v78, v89);
      v72 = *(v65 + 8);
      v72(v58, v91);
      v72(v80, v91);
LABEL_5:
      OUTLINED_FUNCTION_73();
      return;
    }
  }

  __break(1u);
}

void sub_237A6411C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  sub_2379F1A00(a1, v12 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379F1A64(v13, v8);
    sub_2379F0310(a2);
    sub_2379F1AC8(v8);
  }

  else
  {
    if (!*(v13 + 8))
    {
      v14 = *v13;
    }

    sub_237A6424C();
  }
}

void sub_237A6424C()
{
  OUTLINED_FUNCTION_74();
  v62 = v2;
  v54[1] = v3;
  v67 = sub_237C06D5C();
  v4 = OUTLINED_FUNCTION_0(v67);
  v64 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v63 = v9 - v8;
  OUTLINED_FUNCTION_41_0();
  v10 = sub_237C0596C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v58 = v12;
  v59 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v57 = v16 - v15;
  OUTLINED_FUNCTION_41_0();
  v17 = sub_237C05C2C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v55 = v19;
  v56 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = sub_237C05ADC();
  v60 = OUTLINED_FUNCTION_0(v25);
  v61 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_14();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = v54 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = v54 - v37;
  v39 = objc_opt_self();
  v40 = [v39 defaultManager];
  sub_2379F364C();

  if (!v0)
  {
    v54[0] = v31;
    v41 = [v39 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v42 = sub_237C05C0C();
    v44 = v43;
    (*(v55 + 8))(v24, v56);
    v65 = v42;
    v66 = v44;
    v46 = v57;
    v45 = v58;
    v47 = v59;
    (*(v58 + 104))(v57, *MEMORY[0x277CC91D8], v59);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v45 + 8))(v46, v47);

    v48 = v61;
    v49 = *(v61 + 8);
    v50 = v1;
    v51 = v60;
    v49(v50, v60);
    OUTLINED_FUNCTION_13_12();
    sub_237C05A3C();
    v49(v36, v51);
    [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    sub_237C06D4C();
    sub_237C06B2C();
    v52 = OUTLINED_FUNCTION_12_16();
    v53(v52);
    (*(v48 + 16))(v54[0], v38, v51);
    sub_237C07D8C();
    sub_237A64C34();
    v49(v38, v51);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A64684()
{
  OUTLINED_FUNCTION_74();
  v86 = v0;
  v87 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v5 = OUTLINED_FUNCTION_0(v4);
  v76 = v6;
  v77 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v75 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v11 = OUTLINED_FUNCTION_0(v10);
  v73 = v12;
  v74 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = &v69 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v16 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v69 - v17;
  OUTLINED_FUNCTION_41_0();
  v18 = sub_237C0596C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v82 = v20;
  v83 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v80 = v24 - v23;
  OUTLINED_FUNCTION_41_0();
  v25 = sub_237C05C2C();
  v26 = OUTLINED_FUNCTION_0(v25);
  v78 = v27;
  v79 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  v81 = sub_237C05ADC();
  v33 = OUTLINED_FUNCTION_0(v81);
  v90 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_0();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_14();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v69 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v69 - v45;
  v47 = objc_opt_self();
  v48 = [v47 defaultManager];
  sub_2379F364C();

  if (!v1)
  {
    v70 = v39;
    v71 = 0;
    v49 = [v47 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v50 = sub_237C05C0C();
    v52 = v51;
    (*(v78 + 8))(v32, v79);
    v88 = v50;
    v89 = v52;
    v54 = v82;
    v53 = v83;
    v55 = v80;
    (*(v82 + 104))(v80, *MEMORY[0x277CC91D8], v83);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v54 + 8))(v55, v53);

    v56 = *(v90 + 8);
    v57 = v81;
    v56(v2, v81);
    OUTLINED_FUNCTION_13_12();
    sub_237C05A3C();
    v56(v44, v57);
    sub_237A6366C(v86, v85);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v75;
      v58 = v76;
      v60 = OUTLINED_FUNCTION_14_13();
      v61 = v77;
      v62(v60);
      v63 = &unk_27DE9BB78;
      v64 = &qword_27DE9A780;
      v65 = &unk_237C0A700;
    }

    else
    {
      v59 = v72;
      v58 = v73;
      v66 = OUTLINED_FUNCTION_14_13();
      v61 = v74;
      v67(v66);
      v63 = &unk_27DE9BB80;
      v64 = &qword_27DE9A788;
      v65 = &unk_237C13D50;
    }

    sub_2379D9224(v63, v64, v65);
    v68 = v71;
    sub_237C06B2C();
    (*(v58 + 8))(v59, v61);
    if (!v68)
    {
      (*(v90 + 16))(v70, v46, v57);
      sub_237C07D8C();
      sub_237A64C34();
    }

    v56(v46, v57);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A64C34()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_237C059EC();
  v9[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_237C0593C();

    swift_willThrow();
    v8 = *MEMORY[0x277D85DE8];
  }
}

uint64_t type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData()
{
  result = qword_27DE9BB88;
  if (!qword_27DE9BB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A64DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_237C05DBC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_3();
  v15 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  sub_237A654DC(v3, v18 - v17);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v21 = *v19;
      v22 = *(v19 + 8);
      goto LABEL_7;
    case 2:
      (*(v8 + 32))(v2, v19, v5);
      (*(v8 + 16))(v13, v2, v5);
      sub_237A70684(v13, 1, &v26);
      result = (*(v8 + 8))(v2, v5);
      v21 = v26;
      v22 = v27;
LABEL_7:
      *a1 = v21;
      *(a1 + 8) = v22;
      break;
    case 3:
      v23 = MEMORY[0x2383DDC00](0);
      if (!v23)
      {
        __break(1u);
        JUMPOUT(0x237A65044);
      }

      v24 = v23;
      type metadata accessor for CMLTable();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v25);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237A65054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v61 = a2;
  v59 = a1;
  v60 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_0(v60);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  v12 = sub_237C05D1C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v56 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v55 = (v17 - v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_18_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_3();
  v31 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v35 = (v34 - v33);
  sub_237A654DC(v57, v34 - v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = *v35;
      v47 = *(v35 + 8);
      v48 = OUTLINED_FUNCTION_4_2();
      v42 = v60;
      v49(v48);
      *&v62 = v46;
      BYTE8(v62) = v47;
      v41 = v61;
      sub_237A70ED4(&v62, v61);
      goto LABEL_10;
    case 2u:
      v43 = *(v6 + 32);
      v42 = v60;
      v43(v11, v35, v60);
      if (sub_237C05C5C())
      {
        (*(v6 + 8))(v11, v42);
        v44 = OUTLINED_FUNCTION_4_2();
LABEL_7:
        v45(v44);
        v40 = 1;
        v41 = v61;
      }

      else
      {
        v50 = OUTLINED_FUNCTION_4_2();
        v51(v50);
        v41 = v61;
        v43(v61, v11, v42);
LABEL_10:
        v40 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
    case 3u:
      v44 = OUTLINED_FUNCTION_4_2();
      v42 = v60;
      goto LABEL_7;
    default:
      v36 = *(v35 + 16);
      v37 = *(v35 + 17);
      v62 = *v35;
      v63 = v36;
      v64 = v37;
      sub_237A70BAC(v3, v24, &v62);
      v38 = v56;
      v39 = *(v56 + 16);
      v39(v22, v24, v12);
      sub_237C05DCC();
      sub_2379EA894(v3, v29);
      if (__swift_getEnumTagSinglePayload(v29, 1, v12) == 1)
      {
        (*(v38 + 8))(v24, v12);
        sub_2379EA904(v3);
        v40 = 1;
        v42 = v60;
        v41 = v61;
      }

      else
      {
        (*(v38 + 32))(v22, v29, v12);
        v39(v55, v22, v12);
        v41 = v61;
        sub_237C05DCC();
        v52 = *(v38 + 8);
        v52(v22, v12);
        v52(v24, v12);
        sub_2379EA904(v3);
        v40 = 0;
        v42 = v60;
      }

      return __swift_storeEnumTagSinglePayload(v41, v40, 1, v42);
  }
}

uint64_t sub_237A654DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLLinearRegressor.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  result = sub_2379F6D68(v1, &v11);
  if (v12)
  {
    sub_2379DAD24(&v11, &v13);
    swift_dynamicCast();
    sub_237B65378(a1);
    return sub_237A65818(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A65608@<X0>(uint64_t a1@<X8>)
{
  result = MLLinearRegressor.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237A6564C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLLinearRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLLinearRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *a1;
  v12 = *(a1 + 8);
  v16[3] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  if (v12 == 255)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v10 = v11;
    *(v10 + 8) = v12 & 1;
  }

  else
  {
    sub_2379DBC84(v11, v12);
  }

  swift_storeEnumTagMultiPayload();
  sub_237A65874(v10, boxed_opaque_existential_0);
  return sub_2379DAE54(v16, v2);
}

uint64_t MLLinearRegressor.ModelParameters.validation.getter()
{
  result = sub_2379F6D68(v0, &v2);
  if (v3)
  {
    sub_2379DAD24(&v2, &v4);
    type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A65818(uint64_t a1)
{
  v2 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A65874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*MLLinearRegressor.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLLinearRegressor.ModelParameters.validationData.getter(a1);
  return sub_237A65920;
}

void sub_237A65920(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_2379DBCDC(v2, v3);
    MLLinearRegressor.ModelParameters.validationData.setter(&v5);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    MLLinearRegressor.ModelParameters.validationData.setter(&v5);
  }
}

uint64_t sub_237A659B4(uint64_t a1)
{
  v2 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A65C40(a1, v5);
  return MLLinearRegressor.ModelParameters.validation.setter(v5);
}

uint64_t MLLinearRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237A65874(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

void (*MLLinearRegressor.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v5 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v4[17] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  v4[18] = __swift_coroFrameAllocStub(v7);
  v4[19] = __swift_coroFrameAllocStub(v7);
  result = sub_2379F6D68(v2, (v4 + 4));
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_237A65B80;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A65B80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A65C40((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237A65874(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_237A65818(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237A65874(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_237A65C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLLinearRegressor.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  *(a4 + 72) = a3;
  sub_237A65C40(a1, v21 - v20);
  v25[3] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  sub_237A65874(v22, boxed_opaque_existential_0);
  sub_237A65818(a1);
  return sub_2379DAE54(v25, a4);
}

uint64_t MLLinearRegressor.ModelParameters.init(validationData:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  *(a4 + 72) = a3;
  v11 = v8;
  v12 = v9;
  return MLLinearRegressor.ModelParameters.validationData.setter(&v11);
}

unint64_t MLLinearRegressor.ModelParameters.description.getter()
{
  sub_237C08EDC();

  v9 = *(v0 + 32);
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  MEMORY[0x2383DC360](0x6C616E655020314CLL, 0xEC000000203A7974);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  MEMORY[0x2383DC360](0x6C616E655020324CLL, 0xEC000000203A7974);
  v3 = *(v0 + 48);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  MEMORY[0x2383DC360](0x7A69532070657453, 0xEB00000000203A65);
  v4 = *(v0 + 56);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18860);
  v5 = *(v0 + 64);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();

  if (*(v0 + 72))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 72))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2383DC360](v6, v7);

  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C18880);

  return 0xD000000000000010;
}

unint64_t MLLinearRegressor.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLLinearRegressor.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A6621C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A66270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_237A662E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_237C0818C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v61 = v4;
  v62 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v60 = v8 - v7;
  v64 = sub_237C0757C();
  v9 = OUTLINED_FUNCTION_0(v64);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = sub_237C075DC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v59 = sub_237C07B9C();
  v63 = *(v59 - 8);
  v22 = v63;
  v23 = *(v63 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_18_0();
  v58 = (v24 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v45 - v27;
  sub_237C07F0C();
  v55 = a1;
  sub_237C07E0C();
  v56 = "Feature embedding for VGGish";
  OUTLINED_FUNCTION_3_26();
  sub_237C07DEC();
  sub_237C07DCC();
  sub_237C07B8C();
  sub_237C07B5C();
  v29 = v28;
  sub_237C07B2C();
  v54 = *MEMORY[0x277D25100];
  v53 = *(v11 + 104);
  v30 = v64;
  v53(v16);
  v50 = v21;
  OUTLINED_FUNCTION_6_22();
  v31 = *(v11 + 8);
  v51 = v11 + 8;
  v52 = v31;
  v31(v16, v30);
  v57 = v28;
  sub_237C07B7C();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v48 = *(v22 + 72);
  v32 = v63;
  v33 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v34 = swift_allocObject();
  v47 = xmmword_237C0B660;
  *(v34 + 16) = xmmword_237C0B660;
  v46 = *(v32 + 16);
  v35 = v59;
  v46(v34 + v33, v29, v59);
  sub_237C07E9C();
  v36 = v58;
  sub_237C07B8C();
  OUTLINED_FUNCTION_3_26();
  sub_237C07B5C();
  v37 = v64;
  (v53)(v16, v54, v64);
  OUTLINED_FUNCTION_6_22();
  v52(v16, v37);
  sub_237C07B7C();
  v38 = swift_allocObject();
  *(v38 + 16) = v47;
  v46(v38 + v33, v36, v35);
  v39 = sub_237C07ECC();
  v40 = v60;
  MEMORY[0x2383DB870](v39);
  v41 = *MEMORY[0x277D25230];
  v42 = sub_237C07CEC();
  (*(*(v42 - 8) + 104))(v40, v41, v42);
  (*(v61 + 104))(v40, *MEMORY[0x277D25358], v62);
  sub_237C07E4C();
  v43 = *(v63 + 8);
  v43(v36, v35);
  return (v43)(v57, v35);
}

void sub_237A667D4(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v146 = a1;
  v147 = a2;
  v149 = a3;
  v3 = sub_237C0818C();
  v143 = OUTLINED_FUNCTION_0(v3);
  v144 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_18_0();
  v140 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v142 = &v121 - v10;
  v11 = sub_237C07B1C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v138 = v13;
  v139 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v137 = v17 - v16;
  v148 = sub_237C0757C();
  v18 = OUTLINED_FUNCTION_0(v148);
  v141 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = sub_237C075DC();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  v30 = sub_237C07B9C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v145 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_0();
  v37 = (v35 - v36);
  MEMORY[0x28223BE20](v38);
  v40 = &v121 - v39;
  v41 = sub_237C05ADC();
  v42 = OUTLINED_FUNCTION_0(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18_0();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v121 - v51;
  OUTLINED_FUNCTION_4_24();
  v55 = v153;
  sub_237B66A98(v53 + 7, v54 | 0x8000000000000000);
  if (!v55)
  {
    v135 = v29;
    v132 = v24;
    v56 = v148;
    v133 = v37;
    v134 = v40;
    v136 = v30;
    (*(v44 + 16))(v49, v52, v41);
    sub_237C07D8C();
    v153 = 0;
    v123 = v52;
    v124 = v44;
    v125 = v41;
    sub_237C07E0C();

    sub_237C07DEC();
    OUTLINED_FUNCTION_4_24();
    sub_237C07DCC();
    v57 = v134;
    sub_237C07B8C();
    OUTLINED_FUNCTION_3_26();
    v122 = v58;
    sub_237C07B5C();
    v131 = *MEMORY[0x277D25100];
    v59 = v141;
    v130 = *(v141 + 104);
    v60 = v132;
    v130(v132);
    OUTLINED_FUNCTION_6_22();
    v141 = *(v59 + 8);
    (v141)(v60, v56);
    sub_237C07B7C();
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
    v61 = v145;
    v128 = *(v145 + 72);
    v62 = ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v63 = swift_allocObject();
    v127 = xmmword_237C0B660;
    *(v63 + 16) = xmmword_237C0B660;
    v126 = *(v61 + 16);
    v126(&v62[v63], v57, v136);
    sub_237C07E9C();
    v64 = v133;
    sub_237C07B8C();

    sub_237C07B5C();
    v65 = v148;
    (v130)(v60, v131, v148);
    v66 = v144;
    OUTLINED_FUNCTION_6_22();
    (v141)(v60, v65);
    sub_237C07B7C();
    v67 = v136;
    v68 = v64;
    v69 = v143;
    v70 = v149;
    v71 = swift_allocObject();
    *(v71 + 16) = v127;
    v126(&v62[v71], v64, v67);
    sub_237C07ECC();
    v72 = v142;
    sub_237C07E3C();
    v73 = v66[11];
    v74 = OUTLINED_FUNCTION_5_21();
    v76 = v75(v74);
    if (v76 != *MEMORY[0x277D25318])
    {
      v106 = v66[1];
      v107 = OUTLINED_FUNCTION_5_21();
      v106(v107);
      v151 = 0;
      v152 = 0xE000000000000000;
      sub_237C08EDC();
      OUTLINED_FUNCTION_4_24();
      MEMORY[0x2383DC360](v108 + 24, v109 | 0x8000000000000000);
      sub_237C07E3C();
      sub_237C0907C();
      v110 = OUTLINED_FUNCTION_5_21();
      v106(v110);
      MEMORY[0x2383DC360](0x64616574736E6920, 0xE90000000000002ELL);
      v111 = v151;
      v112 = v152;
      sub_2379E8AF0();
      v113 = swift_allocError();
      *v114 = v111;
      *(v114 + 8) = v112;
      *(v114 + 16) = 0u;
      *(v114 + 32) = 0u;
      *(v114 + 48) = 2;
      v153 = v113;
      swift_willThrow();
      v115 = *(v145 + 8);
      v115(v68, v67);
      v115(v134, v67);
      v116 = sub_237C07F1C();
      (*(*(v116 - 8) + 8))(v70, v116);
      (*(v124 + 8))(v123, v125);
      return;
    }

    v77 = v76;
    v78 = v66[12];
    v79 = OUTLINED_FUNCTION_5_21();
    v80(v79);
    (*(v138 + 32))(v137, v72, v139);
    v81 = sub_237C07AFC();
    v83 = v82;
    v84 = *v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v83 = v84;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237B05F34(v84);
      v84 = v117;
      *v83 = v117;
    }

    if (*(v84 + 16))
    {
      v83 = *(sub_237C07A8C() - 8);
      v70 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v84 = sub_237C0763C();
      v62 = v86;
      v69 = *v86;
      v87 = swift_isUniquelyReferenced_nonNull_native();
      *v62 = v69;
      if (v87)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    sub_237B05F64(v69);
    v69 = v118;
    *v62 = v118;
LABEL_7:
    if (v69[2])
    {
      v88 = v69[5];
      v89 = v122;
      v69[4] = 0xD000000000000011;
      v69[5] = v89;

      (v84)(v150, 0);
      v81(&v151, 0);
      v67 = *(sub_237C07B0C() + 16);

      v81 = sub_237C07AFC();
      v69 = v90;
      v84 = *v90;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *v69 = v84;
      if (v91)
      {
        if (v67)
        {
          goto LABEL_10;
        }

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    sub_237B05F34(v84);
    v84 = v119;
    *v69 = v119;
    if (v67)
    {
LABEL_10:
      if (v67 <= *(v84 + 16))
      {
        v92 = v84 + v70 + *(v83 + 72) * (v67 - 1);
        v67 = sub_237C0766C();
        v69 = v93;
        v83 = *v93;
        v94 = swift_isUniquelyReferenced_nonNull_native();
        *v69 = v83;
        if (v94)
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      sub_237B05F64(v83);
      v83 = v120;
      *v69 = v120;
LABEL_12:
      v96 = v144;
      v95 = v145;
      v97 = v140;
      v98 = v134;
      v99 = v147;
      if (*(v83 + 16))
      {
        v100 = *(v83 + 40);
        *(v83 + 32) = v146;
        *(v83 + 40) = v99;

        v67(v150, 0);
        v81(&v151, 0);
        v102 = v137;
        v101 = v138;
        v103 = v139;
        (*(v138 + 16))(v97, v137, v139);
        (v96[13])(v97, v77, v143);
        sub_237C07E4C();
        (*(v101 + 8))(v102, v103);
        v104 = *(v95 + 8);
        v105 = v136;
        v104(v133, v136);
        v104(v98, v105);
        (*(v124 + 8))(v123, v125);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }
}