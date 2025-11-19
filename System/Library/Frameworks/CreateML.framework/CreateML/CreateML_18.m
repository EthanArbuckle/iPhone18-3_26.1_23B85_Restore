void sub_237B50FB8()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D590, &unk_237C13F80);
  OUTLINED_FUNCTION_4(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = (&v29 - v16);
  if (v9)
  {
    *v17 = v11;
    swift_storeEnumTagMultiPayload();
    v18 = v11;
    v3(v17);
  }

  else
  {
    sub_2379E8624(v7 + qword_27DEACD88, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for SoundClassifierTrainingSessionDelegate();
    swift_dynamicCast();
    v19 = v31;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
    v21 = (v17 + v20[12]);
    v22 = v20[16];
    v29 = v1;
    v30 = v3;
    v23 = (v17 + v22);
    v24 = v17 + v20[20];
    v25 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    OUTLINED_FUNCTION_31_11();
    v26 = *(v19 + v25);

    sub_237A5384C(v27);

    *v21 = 0x7365727574616566;
    v21[1] = 0xE800000000000000;
    *v23 = 0x62614C7373616C63;
    v23[1] = 0xEA00000000006C65;
    v28 = *(v5 + 16);
    *v24 = *v5;
    *(v24 + 1) = v28;
    v24[32] = *(v5 + 32);
    type metadata accessor for MLSoundClassifier.DataSource();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v30(v17);
  }

  sub_237A7B808(v17, &qword_27DE9D590, &unk_237C13F80);
  OUTLINED_FUNCTION_150();
}

void static MLSoundClassifier.restoreTrainingSession(sessionParameters:)()
{
  v1 = type metadata accessor for MLTrainingSessionParameters();
  v2 = OUTLINED_FUNCTION_20(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-1] - v9;
  OUTLINED_FUNCTION_12_40();
  sub_237B57D10();
  v11 = type metadata accessor for SoundClassifierTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v11);
  v12 = sub_237A48E68(v10);
  if (!v0)
  {
    v15[3] = v11;
    v15[4] = &off_284AC2598;
    v15[0] = v12;
    OUTLINED_FUNCTION_12_40();
    sub_237B57D10();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D560, &qword_237C13D70);
    OUTLINED_FUNCTION_91(v13);
    sub_2379E4328(v15, v7, 19);
  }
}

uint64_t sub_237B51308(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D5A0, &unk_237C13F98);
  OUTLINED_FUNCTION_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52_8();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v30[-v19 - 8];
  if (a2)
  {
    *v5 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    a4(v5);
    return sub_237A7B808(v5, &qword_27DE9D5A0, &unk_237C13F98);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for SoundClassifierTrainingSessionDelegate();
    swift_dynamicCast();
    v23 = v29;
    sub_237C08A3C();
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v23;
    v28[5] = a4;
    v28[6] = a5;

    sub_237BBAEC8(0, 0, v20, &unk_237C13FB0, v28);
  }
}

uint64_t sub_237B514EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D5A0, &unk_237C13F98);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B515A8, 0, 0);
}

uint64_t sub_237B515A8()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[9] = v2;
  *v2 = v3;
  v2[1] = sub_237B51644;
  v4 = v0[6];
  v5 = v0[2];

  return sub_237B518A4();
}

uint64_t sub_237B51644()
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

uint64_t sub_237B51740()
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_37_0();
  sub_237B57C50(v5, v6);
  OUTLINED_FUNCTION_94_0();
  v1(v2);
  sub_237A7B808(v2, &qword_27DE9D5A0, &unk_237C13F98);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_121_1();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_237B517F4()
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  v3 = *(v1 + 40);
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_94_0();
  v2(v0);
  sub_237A7B808(v0, &qword_27DE9D5A0, &unk_237C13F98);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_121_1();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_237B518A4()
{
  OUTLINED_FUNCTION_9();
  v0[18] = v1;
  v0[19] = v2;
  v3 = type metadata accessor for MLClassifierMetrics(0);
  v0[20] = v3;
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  v0[21] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  OUTLINED_FUNCTION_20(v6);
  v8 = *(v7 + 64) + 15;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v9);
  v11 = *(v10 + 64);
  v0[24] = OUTLINED_FUNCTION_19();
  v12 = type metadata accessor for MLSoundClassifier();
  v0[25] = v12;
  OUTLINED_FUNCTION_20(v12);
  v14 = *(v13 + 64);
  v0[26] = OUTLINED_FUNCTION_19();
  v15 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64);
  v0[27] = OUTLINED_FUNCTION_19();
  v18 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v0[28] = v18;
  OUTLINED_FUNCTION_20(v18);
  v20 = *(v19 + 64) + 15;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v21);
  v23 = *(v22 + 64);
  v0[31] = OUTLINED_FUNCTION_19();
  v24 = _s20PersistentParametersVMa_2();
  v0[32] = v24;
  OUTLINED_FUNCTION_20(v24);
  v26 = *(v25 + 64);
  v0[33] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_237B51A5C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 152);
  OUTLINED_FUNCTION_31_11();
  sub_237A40628();
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 216);
  v10 = *(v0 + 224);
  v29 = *(v0 + 192);
  v11 = *(v0 + 152);
  sub_237B5805C();
  v12 = v6[5];
  sub_237B57D10();
  v13 = v6[9];
  v14 = *(v5 + v6[8]);
  v15 = *(v5 + v6[6]);
  v16 = *(v5 + v13);
  v17 = *(v5 + v13 + 8);
  v18 = (v8 + v10[7]);
  *v18 = 0u;
  v18[1] = 0u;
  OUTLINED_FUNCTION_86_3(v8 + v10[8]);
  *(v8 + v19) = v20;
  sub_237B57D10();
  *(v8 + v10[5]) = v14;
  *(v8 + v10[6]) = v15;
  *(v0 + 16) = v16;
  *(v0 + 40) = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *(v0 + 24) = v17;
  OUTLINED_FUNCTION_11_42();
  sub_237B57CC0();
  OUTLINED_FUNCTION_85_3();
  sub_237A6F014();
  OUTLINED_FUNCTION_31_11();
  sub_237A40628();
  v21 = _s5ModelVMa_0();
  result = __swift_getEnumTagSinglePayload(v29, 1, v21);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v23 = *(v0 + 232);
  v22 = *(v0 + 240);
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 272) = v24;
  *v24 = v25;
  v24[1] = sub_237B51CD0;
  v26 = *(v0 + 232);
  v27 = *(v0 + 208);
  v28 = *(v0 + 192);

  return sub_237B4BC0C();
}

uint64_t sub_237B51CD0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 280) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237B51DCC()
{
  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  OUTLINED_FUNCTION_22_25();
  sub_237B5805C();
  OUTLINED_FUNCTION_31_11();
  sub_237A40628();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[33];
    v8 = v0[30];
    v9 = v0[25];
    v11 = v0[22];
    v10 = v0[23];
    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[18];
    OUTLINED_FUNCTION_9_43();
    sub_237B57CC0();
    OUTLINED_FUNCTION_0_75();
    sub_237B57CC0();
    sub_2379DC1F8(v10, v14 + *(v9 + 32));
    OUTLINED_FUNCTION_31_11();
    sub_237A40628();

    v15 = OUTLINED_FUNCTION_71_5();
    if (__swift_getEnumTagSinglePayload(v15, v16, v12) == 1)
    {
      sub_237A7B808(v0[22], &qword_27DE9B660, &qword_237C0DD00);
    }

    else
    {
      v17 = v0[25];
      v19 = v0[21];
      v18 = v0[22];
      v20 = v0[18];
      sub_237B5805C();
      sub_2379DC1F8(v19, v20 + *(v17 + 36));
    }

    v21 = v0[33];
    v22 = v0[30];
    v23 = v0[31];
    v24 = v0[29];
    v26 = v0[26];
    v25 = v0[27];
    v28 = v0[23];
    v27 = v0[24];
    v30 = v0[21];
    v29 = v0[22];

    OUTLINED_FUNCTION_8();

    return v31();
  }

  return result;
}

uint64_t sub_237B51FF0()
{
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v14 = v0[21];
  v10 = v0[19];

  OUTLINED_FUNCTION_9_43();
  sub_237B57CC0();
  OUTLINED_FUNCTION_0_75();
  sub_237B57CC0();

  OUTLINED_FUNCTION_8();
  v12 = v0[35];

  return v11();
}

uint64_t MLSoundClassifier.evaluation(on:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52_8();
  MLSoundClassifier.DataSource.labeledSounds()();
  sub_237B5223C(v9, v1);

  (*(v5 + 32))(a1, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_126();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_126();
  return swift_storeEnumTagMultiPayload();
}

void sub_237B5223C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for MLSoundClassifier() + 28);
  v37 = v2;
  v38 = v7;
  sub_237B57D10();
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v46 = a1;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v12)
      {
        while (1)
        {
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v16 >= v13)
          {
            goto LABEL_20;
          }

          v12 = *(v9 + 8 * v16);
          ++v14;
          if (v12)
          {
            v14 = v16;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

LABEL_9:
      v17 = (v14 << 9) | (8 * __clz(__rbit64(v12)));
      v18 = *(*(v46 + 56) + v17);
      v19 = *(v18 + 16);
      v20 = *(v15 + 16);
      if (__OFADD__(v20, v19))
      {
        goto LABEL_24;
      }

      v21 = *(*(v46 + 56) + v17);

      if (!swift_isUniquelyReferenced_nonNull_native() || v20 + v19 > *(v15 + 24) >> 1)
      {
        sub_237BC0BF0();
        v15 = v22;
      }

      v12 &= v12 - 1;
      if (!*(v18 + 16))
      {
        break;
      }

      v23 = (*(v15 + 24) >> 1) - *(v15 + 16);
      v24 = *(sub_237C05ADC() - 8);
      if (v23 < v19)
      {
        goto LABEL_25;
      }

      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = *(v24 + 72);
      swift_arrayInitWithCopy();

      if (v19)
      {
        v27 = *(v15 + 16);
        v28 = __OFADD__(v27, v19);
        v29 = v27 + v19;
        if (v28)
        {
          goto LABEL_26;
        }

        *(v15 + 16) = v29;
      }
    }
  }

  while (!v19);
  __break(1u);
LABEL_20:

  sub_237B43384();
  v31 = *(v30 + 16);

  sub_237A96C5C(v38, v31, v43);
  v40[0] = v43[0];
  v40[1] = v43[1];
  v41 = v44;
  v42 = v45;

  v33 = v39;
  sub_237A96D40(v32, v40, v43);
  if (!v33)
  {
    sub_237A9726C();
    v35 = v34;

    sub_237B4EEE4(v35, v36);
  }
}

uint64_t MLSoundClassifier.evaluation(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v13[-v10];
  sub_237B5223C(a1, &v13[-v10]);
  (*(v6 + 32))(a2, v11, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_126();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_126();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237B52674()
{
  v1 = *(type metadata accessor for MLSoundClassifier() + 20);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_237B52740;

  return sub_237A5088C();
}

uint64_t sub_237B52740()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  OUTLINED_FUNCTION_110_0();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

void MLSoundClassifier.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = _s5ModelVMa_0();
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = sub_237C07F1C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_237C05ADC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v22 = v2;
  v25 = v24 - v23;
  memcpy(v66, v22, 0x48uLL);
  sub_2379F25FC();
  if (!v0)
  {
    v49 = v10;
    v51 = v19;
    v26 = *(type metadata accessor for MLSoundClassifier() + 20);
    OUTLINED_FUNCTION_8_39();
    sub_237B57D10();
    v27 = *(&v66[0] + 1);
    if (*(&v66[0] + 1))
    {
      v28 = *&v66[0];
      v29 = *(&v66[1] + 1);
      v30 = *&v66[1];
      v31 = v66[2];
      v32 = *(&v66[3] + 1);
      v33 = *&v66[3];
      v34 = *&v66[4];
    }

    else
    {
      v35 = v25;
      v36 = NSFullUserName();
      v28 = sub_237C086EC();
      v27 = v37;

      v25 = v35;
      v34 = 0;
      v29 = 0x8000000237C17C90;
      v31 = 0uLL;
      v32 = 0xE100000000000000;
      v30 = 0xD000000000000033;
      v33 = 49;
    }

    v61[0] = v28;
    v61[1] = v27;
    v61[2] = v30;
    v61[3] = v29;
    v62 = v31;
    v63 = v33;
    v64 = v32;
    v65 = v34;
    sub_237A40628();
    sub_2379FB3C4(v61, v38, v39, v40, v41, v42, v43, v44, v48, v15, v49, v51, v53, v54, v55, v56, v57, v58, v59, v60);
    OUTLINED_FUNCTION_2_70();
    sub_237B57CC0();
    sub_2379FC064(v61);
    sub_237C07E5C();
    v45 = *(v50 + 8);
    v46 = OUTLINED_FUNCTION_55();
    v47(v46);
    (*(v52 + 8))(v25, v16);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLSoundClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v4 = v3;
  v5 = sub_237C0596C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v15 = sub_237C05ADC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  memcpy(v27, v4, sizeof(v27));
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v15);
  (*(v8 + 104))(v2, *MEMORY[0x277CC91D8], v5);

  sub_237C05ABC();
  MLSoundClassifier.write(to:metadata:)();
  (*(v18 + 8))(v23, v15);
  OUTLINED_FUNCTION_73();
}

uint64_t MLSoundClassifier.predictions(from:)(uint64_t a1)
{
  v2 = *(type metadata accessor for MLSoundClassifier() + 28);
  type metadata accessor for MLSoundClassifier.ModelParameters();
  v3 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  return MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(a1, v3, v3);
}

uint64_t MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(uint64_t a1, double a2, double a3)
{
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  OUTLINED_FUNCTION_0(v120);
  v122 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23();
  v143 = v10;
  OUTLINED_FUNCTION_41_0();
  v130 = sub_237C05ADC();
  v11 = OUTLINED_FUNCTION_0(v130);
  v125 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v123 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_41_0();
  v15 = type metadata accessor for MLSoundClassifier();
  v16 = v15 - 8;
  v124 = *(v15 - 8);
  v17 = *(v124 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v20 = OUTLINED_FUNCTION_4(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v26 = *(v16 + 36);
  v126 = v3;
  v27 = a1;
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  v28 = *(a1 + 16);
  sub_237A96C5C(v25, v28, &v139);
  v136[0] = v139;
  v136[1] = v140;
  v137 = v141;
  v138 = v142;
  v29 = v135;
  v30 = sub_237A988C8(v27, v136);
  if (v29)
  {
    return v19;
  }

  v118 = v27;
  v121 = v30;
  v119 = v28;
  v116 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = 0;
  v117 = v14;
  v31 = *(v19 + 28);
  sub_237A40628();
  if (*(&v140 + 1))
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_56_8();
    if ((v35 & 1) != 0 && (BYTE8(v136[0]) & 1) == 0 && a3 != 0.975)
    {
      OUTLINED_FUNCTION_50_8();
      *&v139 = 0;
      *(&v139 + 1) = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000004BLL, 0x8000000237C1D2E0);
      sub_237C08A8C();
      MEMORY[0x2383DC360](0x73646E6F63657320, 0xE90000000000002ELL);
      v36 = v139;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v37 = v36;
      *(v37 + 16) = 0u;
      *(v37 + 32) = 0u;
      *(v37 + 48) = 1;
LABEL_13:
      swift_willThrow();
      return v19;
    }
  }

  else
  {
    sub_237A7B808(&v139, &qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_56_8();
  }

  if (a3 < 0.5 || a3 > 15.0)
  {
    OUTLINED_FUNCTION_50_8();
    *&v139 = 0;
    *(&v139 + 1) = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003DLL, 0x8000000237C1D2A0);
    OUTLINED_FUNCTION_92_3();
    MEMORY[0x2383DC360](544175136, 0xE400000000000000);
    OUTLINED_FUNCTION_90_3();
    v39 = v139;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v40 = swift_allocError();
    *v41 = v39;
    OUTLINED_FUNCTION_23_3(v40, v41);
    goto LABEL_13;
  }

  v128 = 0;
  v43 = 0;
  v114 = v34 + 16;
  v113 = v17 + 7;
  v112 = v34 + 32;
  v133 = v32 + 16;
  v19 = MEMORY[0x277D84F90];
  v132 = (v32 + 8);
  v44 = v118;
  while (1)
  {
    if (v43 == v119)
    {
      OUTLINED_FUNCTION_50_8();
      sub_237A560B8(v128);
      return v19;
    }

    v127 = v19;
    v45 = *(v34 + 80);
    v46 = *(v34 + 72);
    v131 = v43;
    v47 = v44 + ((v45 + 32) & ~v45) + v46 * v43;
    v48 = v33;
    v49 = v34;
    sub_237B57D10();
    v19 = v123;
    (*(v49 + 16))(v123, v47, v48);
    v50 = (v113 + ((*(v18 + 80) + 16) & ~*(v18 + 80))) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    OUTLINED_FUNCTION_22_25();
    sub_237B5805C();
    *(v51 + v50) = v121;
    (*(v49 + 32))(v51 + ((v45 + v50 + 8) & ~v45), v19, v130);

    v52 = v129;
    sub_2379DDFA4();
    if (v52)
    {

      OUTLINED_FUNCTION_50_8();

      sub_237A560B8(v128);
      return v19;
    }

    v54 = v53;
    v129 = 0;

    KeyPath = swift_getKeyPath();
    v56 = *(v54 + 16);
    if (v56)
    {
      *&v136[0] = MEMORY[0x277D84F90];
      sub_237AC8A74();
      v57 = *&v136[0];
      v58 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v115 = v54;
      v59 = v54 + v58;
      v60 = *(v122 + 72);
      v134 = *(v122 + 16);
      v135 = v60;
      v61 = v120;
      v62 = v143;
      do
      {
        v134(v62, v59, v61);
        v63 = KeyPath;
        swift_getAtKeyPath();
        (*v132)(v62, v61);
        v64 = v139;
        *&v136[0] = v57;
        v65 = *(v57 + 2);
        if (v65 >= *(v57 + 3) >> 1)
        {
          sub_237AC8A74();
          v61 = v120;
          v57 = *&v136[0];
        }

        *(v57 + 2) = v65 + 1;
        *&v57[16 * v65 + 32] = v64;
        v59 += v135;
        --v56;
        v62 = v143;
        KeyPath = v63;
      }

      while (v56);

      v66 = v57;
    }

    else
    {

      v66 = MEMORY[0x277D84F90];
    }

    v18 = v128;
    v135 = *(v66 + 2);
    if (v135)
    {
      break;
    }

    v69 = MEMORY[0x277D84F98];
LABEL_40:
    v86 = 1 << *(v69 + 32);
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    else
    {
      v87 = -1;
    }

    v88 = v87 & *(v69 + 64);
    if (!v88)
    {
      v93 = 0;
      v92 = (v86 + 63) >> 6;
      while (1)
      {
        v89 = v88 + 1;
        if (v88 + 1 >= v92)
        {
          goto LABEL_69;
        }

        v94 = *(v69 + 72 + 8 * v88);
        v93 += 64;
        ++v88;
        if (v94)
        {
          v91 = (v94 - 1) & v94;
          v90 = __clz(__rbit64(v94)) + v93;
          goto LABEL_49;
        }
      }
    }

    v89 = 0;
    v90 = __clz(__rbit64(v88));
    v91 = (v88 - 1) & v88;
    v92 = (v86 + 63) >> 6;
LABEL_49:
    ++v131;
    v95 = (*(v69 + 48) + 16 * v90);
    v96 = *v95;
    v97 = v95[1];
    v98 = *(*(v69 + 56) + 8 * v90);

LABEL_50:

    while (v91)
    {
LABEL_56:
      v100 = __clz(__rbit64(v91));
      v91 &= v91 - 1;
      v101 = v100 | (v89 << 6);
      v102 = *(*(v69 + 56) + 8 * v101);
      if (v98 < v102)
      {
        v103 = (*(v69 + 48) + 16 * v101);
        v96 = *v103;
        v104 = v103[1];

        v98 = v102;
        goto LABEL_50;
      }
    }

    while (1)
    {
      v99 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        __break(1u);
        goto LABEL_66;
      }

      if (v99 >= v92)
      {
        break;
      }

      v91 = *(v69 + 64 + 8 * v99);
      ++v89;
      if (v91)
      {
        v89 = v99;
        goto LABEL_56;
      }
    }

    v128 = v18;

    v19 = v127;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = *(v19 + 16);
      sub_237BC0CB8();
      v19 = v108;
    }

    v44 = v118;
    v43 = v131;
    OUTLINED_FUNCTION_56_8();
    v105 = *(v19 + 16);
    if (v105 >= *(v19 + 24) >> 1)
    {
      v109 = v33;
      v110 = v34;
      sub_237BC0CB8();
      v34 = v110;
      v33 = v109;
      v19 = v111;
    }

    *(v19 + 16) = v105 + 1;
    v106 = v19 + 16 * v105;
    *(v106 + 32) = v96;
    *(v106 + 40) = v97;
  }

  v67 = 0;
  v68 = (v66 + 40);
  v69 = MEMORY[0x277D84F98];
  v134 = v66;
  while (v67 < *(v66 + 2))
  {
    v71 = *(v68 - 1);
    v70 = *v68;

    sub_237A560B8(v18);
    swift_isUniquelyReferenced_nonNull_native();
    *&v139 = v69;
    v72 = sub_237ACAC78(v71, v70);
    if (__OFADD__(*(v69 + 16), (v73 & 1) == 0))
    {
      goto LABEL_67;
    }

    v74 = v72;
    v75 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
    v76 = sub_237C090AC();
    v69 = v139;
    if (v76)
    {
      v77 = sub_237ACAC78(v71, v70);
      if ((v75 & 1) != (v78 & 1))
      {
        goto LABEL_71;
      }

      v74 = v77;
    }

    if (v75)
    {
    }

    else
    {
      *(v69 + 8 * (v74 >> 6) + 64) |= 1 << v74;
      v79 = (*(v69 + 48) + 16 * v74);
      *v79 = v71;
      v79[1] = v70;
      *(*(v69 + 56) + 8 * v74) = 0;
      v80 = *(v69 + 16);
      v81 = __OFADD__(v80, 1);
      v82 = v80 + 1;
      if (v81)
      {
        goto LABEL_70;
      }

      *(v69 + 16) = v82;
    }

    v83 = *(v69 + 56);
    v84 = *(v83 + 8 * v74);
    v81 = __OFADD__(v84, 1);
    v85 = v84 + 1;
    v66 = v134;
    if (v81)
    {
      goto LABEL_68;
    }

    ++v67;
    *(v83 + 8 * v74) = v85;
    v68 += 2;
    v18 = sub_2379E3E94;
    if (v135 == v67)
    {
      goto LABEL_40;
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237B53910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(_s5ModelVMa_0() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B539A4, 0, 0);
}

uint64_t sub_237B539A4()
{
  OUTLINED_FUNCTION_123_1();
  v12 = v1;
  OUTLINED_FUNCTION_33();
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(type metadata accessor for MLSoundClassifier() + 20);
  OUTLINED_FUNCTION_8_39();
  sub_237B57D10();
  result = sub_237AC9C4C(v2, v4);
  v0[7] = result;
  if (result)
  {
    OUTLINED_FUNCTION_13_19(dword_237C13EB0);
    v11 = v8;
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_237B53A8C;
    v10 = v0[6];
    OUTLINED_FUNCTION_11();

    return v11();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B53A8C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v7 = v4[8];
  v8 = v4[7];
  *v6 = *v1;
  v5[9] = v0;

  v9 = v4[6];
  if (!v0)
  {
    v5[10] = v3;
    OUTLINED_FUNCTION_2_70();
  }

  sub_237B57CC0();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237B53BF8()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);
  **(v0 + 16) = *(v0 + 80);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_237B53C60()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_8();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_237B53CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = _s5ModelVMa_0();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_237C074BC();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v4[14] = v13;
  v14 = *(v13 - 8);
  v4[15] = v14;
  v15 = *(v14 + 64) + 15;
  v4[16] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v4[17] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  v4[19] = v18;
  v19 = *(v18 - 8);
  v4[20] = v19;
  v20 = *(v19 + 64) + 15;
  v4[21] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v4[22] = v21;
  v22 = *(v21 - 8);
  v4[23] = v22;
  v23 = *(v22 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B53F8C, 0, 0);
}

uint64_t sub_237B53F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  v15[25] = *(v15[2] + 16);
  sub_237BC23A0();
  v15[26] = 0;
  v15[27] = v16;
  if (v15[25])
  {
    (*(v15[23] + 16))(v15[24], v15[2] + ((*(v15[23] + 80) + 32) & ~*(v15[23] + 80)), v15[22]);
    sub_237C08A4C();
    OUTLINED_FUNCTION_79_4();
    sub_237A40628();
    OUTLINED_FUNCTION_30();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = v15[18];
    if (EnumCaseMultiPayload == 1)
    {
      v30 = OUTLINED_FUNCTION_78_3();
      v31(v30);
      v32 = *(MEMORY[0x277CC5160] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_35();
      v15[30] = v33;
      *v33 = v34;
      OUTLINED_FUNCTION_18_32(v33);
      OUTLINED_FUNCTION_68();

      return MEMORY[0x2821153B0](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, v15);
    }

    else
    {
      v43 = OUTLINED_FUNCTION_77_3();
      v44(v43);
      v45 = *(MEMORY[0x277CC5150] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_35();
      v15[28] = v46;
      *v46 = v47;
      OUTLINED_FUNCTION_17_26(v46);
      OUTLINED_FUNCTION_68();

      return MEMORY[0x2821153A0](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, v15);
    }
  }

  else
  {
    v17 = v15[21];
    v18 = v15[18];
    OUTLINED_FUNCTION_29_14();

    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_68();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }
}

uint64_t sub_237B5420C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237B54308()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237B54404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  (*(v16[15] + 8))(v16[16], v16[14]);
  v18 = v16[29];
  OUTLINED_FUNCTION_104_0();
  if (v19)
  {
    sub_237BC23A0();
  }

  v20 = OUTLINED_FUNCTION_46_12();
  v21(v20);
  if (v17)
  {
    v23 = v16[9];
    v22 = v16[10];
    v24 = v16[7];
    v76 = v16[25];
    v77 = v16[8];
    v25 = v16[5];
    v26 = v16[6];
    v28 = v16[3];
    v27 = v16[4];
    OUTLINED_FUNCTION_8_39();
    sub_237B57D10();

    sub_237C0874C();
    OUTLINED_FUNCTION_55_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    OUTLINED_FUNCTION_45_11();
    sub_237B56FD4(v29, v30);
    sub_237C085AC();
    OUTLINED_FUNCTION_82_4();
    v28(v22);
    sub_237A560B8(v28);
    (*(v23 + 8))(v22, v77);
  }

  v31 = OUTLINED_FUNCTION_41_11();
  v32(v31);
  OUTLINED_FUNCTION_83_4();
  if (v34)
  {
    v35 = v16[21];
    v36 = v16[18];
    OUTLINED_FUNCTION_29_14();

    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_53_3();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_52_13(v33);
  v39();
  sub_237C08A4C();
  if (v18)
  {
    v40 = OUTLINED_FUNCTION_41_11();
    v41(v40);

    v42 = v16[24];
    v43 = v16[21];
    v44 = v16[18];
    OUTLINED_FUNCTION_29_14();

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_53_3();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_79_4();
  sub_237A40628();
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = v16[18];
  if (EnumCaseMultiPayload == 1)
  {
    v49 = OUTLINED_FUNCTION_78_3();
    v50(v49);
    v51 = *(MEMORY[0x277CC5160] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v16[30] = v52;
    *v52 = v53;
    OUTLINED_FUNCTION_18_32(v52);
    OUTLINED_FUNCTION_53_3();

    return MEMORY[0x2821153B0](v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v62 = OUTLINED_FUNCTION_77_3();
    v63(v62);
    v64 = *(MEMORY[0x277CC5150] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v16[28] = v65;
    *v65 = v66;
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_53_3();

    return MEMORY[0x2821153A0](v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_237B54788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  v12 = v10[29];
  v13 = v10[16];
  v14 = v10[14];
  OUTLINED_FUNCTION_105_1(v10[15]);
  v15();

  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_85_3();
  v18(v17);
  v19 = v10[24];
  v20 = v10[21];
  v21 = v10[18];
  OUTLINED_FUNCTION_29_14();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_68();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_237B54858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  (*(v16[12] + 8))(v16[13], v16[11]);
  v18 = v16[31];
  OUTLINED_FUNCTION_104_0();
  if (v19)
  {
    sub_237BC23A0();
  }

  v20 = OUTLINED_FUNCTION_46_12();
  v21(v20);
  if (v17)
  {
    v23 = v16[9];
    v22 = v16[10];
    v24 = v16[7];
    v76 = v16[25];
    v77 = v16[8];
    v25 = v16[5];
    v26 = v16[6];
    v28 = v16[3];
    v27 = v16[4];
    OUTLINED_FUNCTION_8_39();
    sub_237B57D10();

    sub_237C0874C();
    OUTLINED_FUNCTION_55_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    OUTLINED_FUNCTION_45_11();
    sub_237B56FD4(v29, v30);
    sub_237C085AC();
    OUTLINED_FUNCTION_82_4();
    v28(v22);
    sub_237A560B8(v28);
    (*(v23 + 8))(v22, v77);
  }

  v31 = OUTLINED_FUNCTION_41_11();
  v32(v31);
  OUTLINED_FUNCTION_83_4();
  if (v34)
  {
    v35 = v16[21];
    v36 = v16[18];
    OUTLINED_FUNCTION_29_14();

    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_53_3();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_52_13(v33);
  v39();
  sub_237C08A4C();
  if (v18)
  {
    v40 = OUTLINED_FUNCTION_41_11();
    v41(v40);

    v42 = v16[24];
    v43 = v16[21];
    v44 = v16[18];
    OUTLINED_FUNCTION_29_14();

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_53_3();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_79_4();
  sub_237A40628();
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = v16[18];
  if (EnumCaseMultiPayload == 1)
  {
    v49 = OUTLINED_FUNCTION_78_3();
    v50(v49);
    v51 = *(MEMORY[0x277CC5160] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v16[30] = v52;
    *v52 = v53;
    OUTLINED_FUNCTION_18_32();
    OUTLINED_FUNCTION_53_3();

    return MEMORY[0x2821153B0](v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v62 = OUTLINED_FUNCTION_77_3();
    v63(v62);
    v64 = *(MEMORY[0x277CC5150] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v16[28] = v65;
    *v65 = v66;
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_53_3();

    return MEMORY[0x2821153A0](v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_237B54BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  v12 = v10[31];
  v13 = v10[13];
  v14 = v10[11];
  OUTLINED_FUNCTION_105_1(v10[12]);
  v15();

  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_85_3();
  v18(v17);
  v19 = v10[24];
  v20 = v10[21];
  v21 = v10[18];
  OUTLINED_FUNCTION_29_14();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_68();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

void MLSoundClassifier.debugDescription.getter()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v6 = type metadata accessor for MLSoundClassifier();
  v7 = v0 + v6[7];
  v8 = MLSoundClassifier.ModelParameters.description.getter();
  v10 = v9;
  v11 = v1 + v6[8];
  v12 = MLClassifierMetrics.description.getter();
  v14 = v13;
  v15 = v6[9];
  sub_237B57D10();
  LODWORD(v6) = swift_getEnumCaseMultiPayload();
  sub_237B57CC0();
  v16 = MLClassifierMetrics.description.getter();
  v18 = v17;
  MEMORY[0x2383DC360](v8, v10);

  MEMORY[0x2383DC360](v12, v14);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (v6 <= 1)
  {
    MEMORY[0x2383DC360](v16, v18);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  OUTLINED_FUNCTION_150();
}

id MLSoundClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLSoundClassifier.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

void sub_237B54EF0()
{
  OUTLINED_FUNCTION_74();
  v0 = sub_237C05ADC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  sub_237C06C7C();
  sub_237C05A8C();
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_114_1();
  v6(v7);
  sub_237C06C7C();
  sub_237C05A8C();
  v8 = OUTLINED_FUNCTION_114_1();
  v6(v8);
  sub_237A556DC();

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B55038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  (*(v5 + 16))(v8, a1, v4);
  sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
  sub_2379D9224(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30);
  sub_237C0831C();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
}

uint64_t sub_237B551C4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
  v5 = v3;
  sub_237C0830C();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_237B55278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_237C0B660;
  *(v4 + 32) = *(v3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);
  sub_237C082BC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v5);
}

uint64_t sub_237B55398@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v5 = v14;
    v6 = (v3 + 32);
    v7 = *(v14 + 16);
    v8 = v4;
    do
    {
      v9 = *v6;
      v15 = v5;
      if (v7 >= *(v5 + 24) >> 1)
      {
        sub_237AC8CD4();
        v5 = v15;
      }

      v10 = v9;
      *(v5 + 16) = v7 + 1;
      *(v5 + 4 * v7 + 32) = v10;
      ++v6;
      ++v7;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_237C0B660;
  *(v11 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);
  sub_237C082BC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v12);
}

void sub_237B55548(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v6 = 0;
    v5 = v14;
    v7 = v3 + 32;
    while (v6 < *(v3 + 16))
    {
      sub_2379FED88(v7, v13);
      v8 = sub_237B5574C();
      sub_237A7B808(v13, &qword_27DE9A998, &unk_237C0C100);
      v14 = v5;
      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        sub_237AC8CD4();
        v5 = v14;
      }

      ++v6;
      *(v5 + 16) = v9 + 1;
      *(v5 + 4 * v9 + 32) = v8;
      v7 += 32;
      if (v4 == v6)
      {
        v2 = a2;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v13[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_237C0B660;
    *(v10 + 32) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);
    sub_237C082BC();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
  }
}

float sub_237B5574C()
{
  sub_237A40628();
  if (!v8)
  {
    goto LABEL_16;
  }

  sub_237A40628();
  if (!OUTLINED_FUNCTION_42_13())
  {
    if (OUTLINED_FUNCTION_42_13())
    {
      v0 = *&v4;
      goto LABEL_14;
    }

    if (OUTLINED_FUNCTION_42_13())
    {
      v0 = v4;
      goto LABEL_14;
    }

    sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    if (OUTLINED_FUNCTION_42_13())
    {
      [v4 floatValue];
      v0 = v1;

      goto LABEL_14;
    }

    if (OUTLINED_FUNCTION_42_13())
    {
      v2 = sub_237B55FF4(v4, v5);
      if ((v2 & 0x100000000) != 0)
      {
        v0 = NAN;
      }

      else
      {
        v0 = *&v2;
      }

      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
LABEL_16:
    v0 = NAN;
    goto LABEL_17;
  }

  v0 = *&v4;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v6);
LABEL_17:
  sub_237A7B808(v7, &qword_27DE9A998, &unk_237C0C100);
  return v0;
}

uint64_t sub_237B558B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v5 = v14;
    v6 = *(v14 + 16);
    v7 = (v3 + 36);
    v8 = v4;
    do
    {
      v9 = *(v7 - 1);
      if (*v7)
      {
        v10 = NAN;
      }

      else
      {
        v10 = *(v7 - 1);
      }

      v15 = v5;
      if (v6 >= *(v5 + 24) >> 1)
      {
        sub_237AC8CD4();
        v5 = v15;
      }

      *(v5 + 16) = v6 + 1;
      *(v5 + 4 * v6 + 32) = v10;
      v7 += 8;
      ++v6;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_237C0B660;
  *(v11 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);
  sub_237C082BC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v12);
}

uint64_t sub_237B55A7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v15 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v5 = v15;
    v6 = *(v15 + 16);
    v7 = (v3 + 40);
    v8 = v4;
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v16 = v5;
      if (v6 >= *(v5 + 24) >> 1)
      {
        sub_237AC8CD4();
        v5 = v16;
      }

      v11 = v9;
      if (v10)
      {
        v11 = NAN;
      }

      *(v5 + 16) = v6 + 1;
      *(v5 + 4 * v6 + 32) = v11;
      v7 += 2;
      ++v6;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_237C0B660;
  *(v12 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);
  sub_237C082BC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
}

void sub_237B55C48(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_24:
    v22[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_237C0B660;
    *(v13 + 32) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);
    sub_237C082BC();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v14);
    return;
  }

  v23 = MEMORY[0x277D84F90];
  v16 = v4;
  sub_237AC8CD4();
  v6 = 0;
  v5 = v23;
  v7 = v3 + 32;
  while (v6 < *(v3 + 16))
  {
    sub_237A40628();
    sub_237A40628();
    if (!v21)
    {
      goto LABEL_19;
    }

    sub_237A40628();
    if (swift_dynamicCast())
    {
      v8 = *&v17;
    }

    else if (swift_dynamicCast())
    {
      v8 = *&v17;
    }

    else if (swift_dynamicCast())
    {
      v8 = v17;
    }

    else
    {
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        [v17 floatValue];
        v8 = v9;
      }

      else
      {
        if (!swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v19);
LABEL_19:
          v8 = NAN;
          goto LABEL_20;
        }

        v10 = sub_237B4AC34(v17, v18);

        v11 = !v10;
        v4 = v16;
        if (v11)
        {
          v8 = NAN;
        }

        else
        {
          v8 = 0.0;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
LABEL_20:
    sub_237A7B808(v20, &qword_27DE9A998, &unk_237C0C100);
    sub_237A7B808(v22, &qword_27DE9A998, &unk_237C0C100);
    v23 = v5;
    v12 = *(v5 + 16);
    if (v12 >= *(v5 + 24) >> 1)
    {
      sub_237AC8CD4();
      v4 = v16;
      v5 = v23;
    }

    ++v6;
    *(v5 + 16) = v12 + 1;
    *(v5 + 4 * v12 + 32) = v8;
    v7 += 32;
    if (v4 == v6)
    {
      v2 = a2;
      goto LABEL_24;
    }
  }

  __break(1u);
}

unint64_t sub_237B55FF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_237B4AC34(a1, a2);

  return !v2 << 32;
}

uint64_t sub_237B56060()
{
  v1 = _s5ModelVMa_0();
  OUTLINED_FUNCTION_88_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v0 + v4;
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v11 = *v7;
LABEL_6:
  }

  else if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource();
    OUTLINED_FUNCTION_126();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        v9 = sub_237C05ADC();
        OUTLINED_FUNCTION_12_0(v9);
        (*(v10 + 8))(v0 + v4);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        sub_2379DBC9C(*v7, *(v7 + 8));
        v23 = *(v7 + 24);

        v24 = *(v7 + 40);
        goto LABEL_6;
      case 4u:
        v18 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v18);
        (*(v19 + 8))(v0 + v4);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        v21 = *(v7 + *(v20 + 48) + 8);

        v22 = *(v7 + *(v20 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v12 = (v7 + *(type metadata accessor for MLSoundClassifier.ModelParameters() + 28));
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v13 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = &qword_27DE9A780;
    v15 = &unk_237C0A700;
  }

  else
  {
    v14 = &qword_27DE9A788;
    v15 = &unk_237C13D50;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_12_0(v16);
  (*(v17 + 8))(v7 + v13);

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_237B562C0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v2 = _s5ModelVMa_0();
  OUTLINED_FUNCTION_20(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_2379D6854;

  return sub_237B5006C(v0);
}

uint64_t sub_237B5638C()
{
  v1 = v0;
  v2 = type metadata accessor for MLSoundClassifier();
  OUTLINED_FUNCTION_88_0(v2);
  v4 = *(v3 + 80);
  v72 = *(v5 + 64);
  v76 = sub_237C05ADC();
  OUTLINED_FUNCTION_0(v76);
  v7 = v6;
  v71 = *(v6 + 80);
  v73 = (v4 + 16) & ~v4;
  v74 = *(v8 + 64);
  v9 = v1 + v73;
  v10 = type metadata accessor for TrainingTablePrinter(0);
  if (!__swift_getEnumTagSinglePayload(v1 + v73, 1, v10))
  {
    v11 = sub_237C05BFC();
    OUTLINED_FUNCTION_12_0(v11);
    (*(v12 + 8))(v1 + v73);

    v13 = *(v9 + *(v10 + 24));
  }

  v14 = v9 + v2[5];
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_7:
    v18 = *v14;
LABEL_8:
  }

  else if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        v16 = OUTLINED_FUNCTION_111_0();
        v17(v16);
        break;
      case 2u:
        goto LABEL_7;
      case 3u:
        sub_2379DBC9C(*v14, *(v14 + 8));
        v65 = *(v14 + 24);

        v66 = *(v14 + 40);
        goto LABEL_8;
      case 4u:
        v59 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v59);
        (*(v60 + 8))(v14);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_108_0(*(v61 + 48));

        OUTLINED_FUNCTION_108_0(*(v61 + 64));
        goto LABEL_8;
      default:
        break;
    }
  }

  v19 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v20 = (v14 + *(v19 + 28));
  if (v20[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v21 = *(_s5ModelVMa_0() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = &qword_27DE9A780;
    v23 = &unk_237C0A700;
  }

  else
  {
    v22 = &qword_27DE9A788;
    v23 = &unk_237C13D50;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_12_0(v24);
  (*(v25 + 8))(v14 + v21);

  v26 = v9 + v2[7];
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 2)
  {
LABEL_18:
    v30 = *v26;
LABEL_19:
  }

  else if (v27 == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        v28 = OUTLINED_FUNCTION_111_0();
        v29(v28);
        break;
      case 2u:
        goto LABEL_18;
      case 3u:
        sub_2379DBC9C(*v26, *(v26 + 8));
        v67 = *(v26 + 24);

        v68 = *(v26 + 40);
        goto LABEL_19;
      case 4u:
        v62 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v62);
        (*(v63 + 8))(v26);
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_108_0(*(v64 + 48));

        OUTLINED_FUNCTION_108_0(*(v64 + 64));
        goto LABEL_19;
      default:
        break;
    }
  }

  v31 = (v26 + *(v19 + 28));
  if (v31[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v32 = (v9 + v2[8]);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v33 = swift_getEnumCaseMultiPayload();
  v75 = v7;
  switch(v33)
  {
    case 2:

      break;
    case 1:
      v36 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v70 = v1;
      v37 = *(v36 + 20);
      v38 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v38);
      v40 = *(v39 + 8);
      v41 = v32 + v37;
      v1 = v70;
      v40(v41, v38);
      v40(v32 + *(v36 + 24), v38);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = &qword_27DE9AA00;
        v35 = &qword_237C0B6F0;
      }

      else
      {
        v34 = &qword_27DE9A9C8;
        v35 = &qword_237C0B6A0;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
      OUTLINED_FUNCTION_12_0(v42);
      (*(v43 + 8))(v32);
      break;
  }

  v44 = (v9 + v2[9]);
  OUTLINED_FUNCTION_85_3();
  v45 = swift_getEnumCaseMultiPayload();
  switch(v45)
  {
    case 2:

      break;
    case 1:
      v48 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v49 = *(v48 + 20);
      v50 = sub_237C05DBC();
      v51 = v4;
      v52 = *(*(v50 - 8) + 8);
      v52(v44 + v49, v50);
      v52(v44 + *(v48 + 24), v50);
      v4 = v51;
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (OUTLINED_FUNCTION_87_3() == 1)
      {
        v46 = &qword_27DE9AA00;
        v47 = &qword_237C0B6F0;
      }

      else
      {
        v46 = &qword_27DE9A9C8;
        v47 = &qword_237C0B6A0;
      }

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
      OUTLINED_FUNCTION_12_0(v53);
      (*(v54 + 8))(v44);
      break;
  }

  v55 = v4 | v71;
  v56 = (v72 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + v71 + 8) & ~v71;
  v58 = *(v1 + v56);

  (*(v75 + 8))(v1 + v57, v76);

  return MEMORY[0x2821FE8E8](v1, v57 + v74, v55 | 7);
}

uint64_t sub_237B56A5C()
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_80_4();
  v1 = type metadata accessor for MLSoundClassifier();
  OUTLINED_FUNCTION_1(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_20(v5);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v0 + v4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_81_3(v9);
  *v10 = v11;
  v10[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_121_1();

  return sub_237B53910(v12, v13, v14, v15);
}

id sub_237B56B9C@<X0>(void *a1@<X8>)
{
  result = MLSoundClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B56BE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8D0, &qword_237C0E1E8);
  v7 = OUTLINED_FUNCTION_135(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = _s5ModelVMa_0();
  v12 = OUTLINED_FUNCTION_135(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_5:
    v10 = a1 + v14;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v17 = type metadata accessor for MLSoundClassifier.ModelParameters();
    v18 = OUTLINED_FUNCTION_135(v17);
    if (*(v19 + 84) == a2)
    {
      v9 = v18;
      v14 = a3[7];
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v14 = a3[8];
    }

    goto LABEL_5;
  }

  v16 = *(a1 + a3[6]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_237B56D4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8D0, &qword_237C0E1E8);
  v9 = OUTLINED_FUNCTION_135(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = _s5ModelVMa_0();
    result = OUTLINED_FUNCTION_135(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6]) = (a2 - 1);
        return result;
      }

      v17 = type metadata accessor for MLSoundClassifier.ModelParameters();
      v18 = OUTLINED_FUNCTION_135(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v11 = type metadata accessor for MLClassifierMetrics(0);
        v16 = a4[8];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_237B56EA0()
{
  sub_237B56F7C();
  if (v0 <= 0x3F)
  {
    _s5ModelVMa_0();
    if (v1 <= 0x3F)
    {
      sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MLSoundClassifier.ModelParameters();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MLClassifierMetrics(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_237B56F7C()
{
  if (!qword_27DE9B888)
  {
    type metadata accessor for TrainingTablePrinter(255);
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9B888);
    }
  }
}

uint64_t sub_237B56FD4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_237B5701C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_237B57088(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2379D9D48;

  return sub_237B4EB5C(a1, a2, v10, a4, a5);
}

uint64_t sub_237B57150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  v12 = *a4;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2379D6854;

  return sub_237B4E7D4(a1, a2, v11, v12, a5, a6);
}

uint64_t sub_237B57220(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + 16) = a1;
  v4 = *a3;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_237B572C0;

  return sub_237B52674();
}

uint64_t sub_237B572C0()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_237B573B8()
{
  v1 = v0;
  v2 = type metadata accessor for MLSoundClassifier();
  OUTLINED_FUNCTION_88_0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v70 = (v4 + 16) & ~v4;
  v7 = v1 + v70;
  v8 = type metadata accessor for TrainingTablePrinter(0);
  v9 = OUTLINED_FUNCTION_71_5();
  if (!__swift_getEnumTagSinglePayload(v9, v10, v8))
  {
    v11 = sub_237C05BFC();
    OUTLINED_FUNCTION_12_0(v11);
    (*(v12 + 8))(v7);

    v13 = *(v7 + *(v8 + 24));
  }

  v14 = v7 + v2[5];
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  OUTLINED_FUNCTION_55();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_7:
    v18 = *v14;
LABEL_8:
  }

  else if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        v16 = sub_237C05ADC();
        OUTLINED_FUNCTION_12_0(v16);
        (*(v17 + 8))(v14);
        break;
      case 2u:
        goto LABEL_7;
      case 3u:
        sub_2379DBC9C(*v14, *(v14 + 8));
        v63 = *(v14 + 24);

        v64 = *(v14 + 40);
        goto LABEL_8;
      case 4u:
        v57 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v57);
        (*(v58 + 8))(v14);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_103_1(*(v59 + 48));

        OUTLINED_FUNCTION_103_1(*(v59 + 64));
        goto LABEL_8;
      default:
        break;
    }
  }

  v19 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v20 = (v14 + *(v19 + 28));
  if (v20[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v21 = *(_s5ModelVMa_0() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = &qword_27DE9A780;
    v23 = &unk_237C0A700;
  }

  else
  {
    v22 = &qword_27DE9A788;
    v23 = &unk_237C13D50;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_12_0(v24);
  (*(v25 + 8))(v14 + v21);

  v26 = v7 + v2[7];
  OUTLINED_FUNCTION_55();
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 2)
  {
LABEL_18:
    v30 = *v26;
LABEL_19:
  }

  else if (v27 == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        v28 = sub_237C05ADC();
        OUTLINED_FUNCTION_12_0(v28);
        (*(v29 + 8))(v26);
        break;
      case 2u:
        goto LABEL_18;
      case 3u:
        sub_2379DBC9C(*v26, *(v26 + 8));
        v65 = *(v26 + 24);

        v66 = *(v26 + 40);
        goto LABEL_19;
      case 4u:
        v60 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v60);
        (*(v61 + 8))(v26);
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_103_1(*(v62 + 48));

        OUTLINED_FUNCTION_103_1(*(v62 + 64));
        goto LABEL_19;
      default:
        break;
    }
  }

  v31 = (v26 + *(v19 + 28));
  if (v31[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v32 = (v7 + v2[8]);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_55();
  v33 = swift_getEnumCaseMultiPayload();
  switch(v33)
  {
    case 2:

      break;
    case 1:
      v36 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v68 = *(v36 + 20);
      v37 = sub_237C05DBC();
      v69 = v4;
      v38 = v1;
      v39 = *(*(v37 - 8) + 8);
      v39(v32 + v68, v37);
      v39(v32 + *(v36 + 24), v37);
      v1 = v38;
      v4 = v69;
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = &qword_27DE9AA00;
        v35 = &qword_237C0B6F0;
      }

      else
      {
        v34 = &qword_27DE9A9C8;
        v35 = &qword_237C0B6A0;
      }

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
      OUTLINED_FUNCTION_12_0(v40);
      (*(v41 + 8))(v32);
      break;
  }

  v42 = (v7 + v2[9]);
  v43 = swift_getEnumCaseMultiPayload();
  switch(v43)
  {
    case 2:

      break;
    case 1:
      v46 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v47 = v6;
      v48 = *(v46 + 20);
      v49 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v49);
      v51 = *(v50 + 8);
      v52 = v42 + v48;
      v6 = v47;
      v51(v52, v49);
      v51(v42 + *(v46 + 24), v49);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      OUTLINED_FUNCTION_126();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = &qword_27DE9AA00;
        v45 = &qword_237C0B6F0;
      }

      else
      {
        v44 = &qword_27DE9A9C8;
        v45 = &qword_237C0B6A0;
      }

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
      OUTLINED_FUNCTION_12_0(v53);
      (*(v54 + 8))(v42);
      break;
  }

  v55 = (v6 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = *(v1 + v55);

  return MEMORY[0x2821FE8E8](v1, v55 + 8, v4 | 7);
}

uint64_t sub_237B57A44()
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for MLSoundClassifier();
  OUTLINED_FUNCTION_1(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_121_1();

  return v10(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_237B57B54()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_237B57B9C()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2379D6854;
  v9 = OUTLINED_FUNCTION_57_7();

  return sub_237B514EC(v9, v10, v11, v4, v5, v6);
}

uint64_t sub_237B57C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D5A0, &unk_237C13F98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B57CC0()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_237B57D10()
{
  OUTLINED_FUNCTION_63_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v0;
}

uint64_t sub_237B57D68()
{
  OUTLINED_FUNCTION_153();
  v1 = _s10ClassifierVMa_0();
  OUTLINED_FUNCTION_88_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_0(v6);
  v8 = *(v7 + 80);
  v10 = *(v9 + 64);
  v11 = (v0 + v3);
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v12 = OUTLINED_FUNCTION_87_3();
  if (v12 == 2)
  {
LABEL_5:
    v15 = *v11;
LABEL_6:
  }

  else if (v12 == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource();
    switch(OUTLINED_FUNCTION_87_3())
    {
      case 0u:
      case 1u:
        v13 = sub_237C05ADC();
        OUTLINED_FUNCTION_12_0(v13);
        (*(v14 + 8))(v0 + v3);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        OUTLINED_FUNCTION_101_0();
        v38 = *(v11 + 5);
        goto LABEL_6;
      case 4u:
        v35 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v35);
        (*(v36 + 8))(v0 + v3);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_56(*(v37 + 48));

        OUTLINED_FUNCTION_56(*(v37 + 64));
        goto LABEL_6;
      default:
        break;
    }
  }

  v16 = &v11[*(type metadata accessor for MLSoundClassifier.ModelParameters() + 28)];
  if (v16[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v17 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = &qword_27DE9A700;
    v19 = &qword_237C0A160;
  }

  else
  {
    v18 = &qword_27DE9A6F8;
    v19 = &unk_237C10180;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_12_0(v20);
  (*(v21 + 8))(&v11[v17]);
  OUTLINED_FUNCTION_74_5();
  v22 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v0 + v23);

  v25 = *&v11[v0];

  v26 = *(v0 + v22);

  v27 = v0 + ((v8 + v22 + 8) & ~v8);
  v28 = sub_237C05BFC();
  OUTLINED_FUNCTION_12_0(v28);
  (*(v29 + 8))(v27);

  v30 = *(v27 + *(v6 + 24));

  OUTLINED_FUNCTION_150();

  return MEMORY[0x2821FE8E8](v31, v32, v33);
}

uint64_t sub_237B5805C()
{
  OUTLINED_FUNCTION_63_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v0;
}

uint64_t sub_237B580B4()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_80_4();
  v3 = _s10ClassifierVMa_0();
  OUTLINED_FUNCTION_1(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_107_1();
  v9 = v8 & 0xFFFFFFFFFFFFFFF8;
  v10 = ((v8 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_20(v11);
  v13 = (*(v12 + 80) + v10 + 8) & ~*(v12 + 80);
  v14 = *(v0 + v10);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_81_3(v15);
  *v16 = v17;
  v16[1] = sub_2379D9D48;

  return sub_237B57150(v1, v0 + v5, (v0 + v2), (v0 + v9), v14, v0 + v13);
}

uint64_t sub_237B5820C()
{
  OUTLINED_FUNCTION_153();
  v1 = _s10ClassifierVMa_0();
  OUTLINED_FUNCTION_88_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_0(v6);
  v8 = *(v7 + 80);
  v10 = *(v9 + 64);
  v11 = (v0 + v3);
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  v12 = OUTLINED_FUNCTION_87_3();
  if (v12 == 2)
  {
LABEL_5:
    v15 = *v11;
LABEL_6:
  }

  else if (v12 == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource();
    switch(OUTLINED_FUNCTION_87_3())
    {
      case 0u:
      case 1u:
        v13 = sub_237C05ADC();
        OUTLINED_FUNCTION_12_0(v13);
        (*(v14 + 8))(v0 + v3);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        OUTLINED_FUNCTION_101_0();
        v36 = *(v11 + 5);
        goto LABEL_6;
      case 4u:
        v33 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v33);
        (*(v34 + 8))(v0 + v3);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_56(*(v35 + 48));

        OUTLINED_FUNCTION_56(*(v35 + 64));
        goto LABEL_6;
      default:
        break;
    }
  }

  v16 = &v11[*(type metadata accessor for MLSoundClassifier.ModelParameters() + 28)];
  if (v16[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v17 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = &qword_27DE9A700;
    v19 = &qword_237C0A160;
  }

  else
  {
    v18 = &qword_27DE9A6F8;
    v19 = &unk_237C10180;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_12_0(v20);
  (*(v21 + 8))(&v11[v17]);
  OUTLINED_FUNCTION_74_5();
  v23 = *(v0 + v22);

  v24 = *&v11[v0];

  v25 = v0 + (&v11[v8 + 8] & ~v8);
  v26 = sub_237C05BFC();
  OUTLINED_FUNCTION_12_0(v26);
  (*(v27 + 8))(v25);

  v28 = *(v25 + *(v6 + 24));

  OUTLINED_FUNCTION_150();

  return MEMORY[0x2821FE8E8](v29, v30, v31);
}

uint64_t sub_237B584F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_80_4();
  v11 = _s10ClassifierVMa_0();
  OUTLINED_FUNCTION_1(v11);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_107_1();
  v17 = v16 & 0xFFFFFFFFFFFFFFF8;
  v18 = type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_20(v18);
  v20 = (v17 + *(v19 + 80) + 8) & ~*(v19 + 80);
  v21 = *(v10 + v17);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_81_3(v22);
  *v23 = v24;
  v23[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_68();

  return v30(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t objectdestroy_64Tm()
{
  v1 = (type metadata accessor for TrainingTablePrinter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_237C05BFC();
  OUTLINED_FUNCTION_12_0(v6);
  (*(v7 + 8))(v0 + v3);

  v8 = *(v0 + v3 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_237B58738(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for TrainingTablePrinter(v4);
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a2(v2, v7, v8);
}

uint64_t OUTLINED_FUNCTION_17_26(uint64_t a1)
{
  *(a1 + 8) = sub_237B5420C;
  v2 = v1[24];
  result = v1[21];
  v4 = v1[16];
  v5 = v1[14];
  v6 = v1[3];
  v7 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_32(uint64_t a1)
{
  *(a1 + 8) = sub_237B54308;
  v2 = v1[24];
  result = v1[21];
  v4 = v1[13];
  v5 = v1[11];
  v6 = v1[3];
  v7 = v1[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_14()
{
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];
}

uint64_t OUTLINED_FUNCTION_41_11()
{
  result = v0[24];
  v2 = v0[22];
  v3 = *(v0[23] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_13()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_43_10()
{

  return sub_237C05F6C();
}

uint64_t OUTLINED_FUNCTION_44_13()
{
  v2 = *(v0 - 96);

  return sub_237B5805C();
}

unint64_t OUTLINED_FUNCTION_46_12()
{
  v5 = v2[20];
  v4 = v2[21];
  v6 = v2[19];
  v7 = v2[3];
  *(v0 + 16) = v1;
  v8 = *(v5 + 32);
  return v0 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3;
}

uint64_t OUTLINED_FUNCTION_50_9()
{

  return sub_237B57D10();
}

void OUTLINED_FUNCTION_52_13(uint64_t a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[23];
  v4 = *(v3 + 16);
  v5 = v1[2] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * a1;
}

uint64_t OUTLINED_FUNCTION_59_7()
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_60_9()
{

  return sub_237C05FEC();
}

void OUTLINED_FUNCTION_62_6()
{
  v1 = *(v0 + 356);
  v2 = *(v0 + 352);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
}

uint64_t OUTLINED_FUNCTION_66_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[6];
  result = v2[2];
  v5 = v2[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_76_5()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_3()
{
  result = v0[16];
  v2 = v0[14];
  v3 = *(v0[15] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_78_3()
{
  result = v0[13];
  v2 = v0[11];
  v3 = *(v0[12] + 32);
  return result;
}

void OUTLINED_FUNCTION_79_4()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[5];
  v4 = *(v0[6] + 20);
}

uint64_t OUTLINED_FUNCTION_82_4()
{

  return sub_237C0748C();
}

uint64_t OUTLINED_FUNCTION_83_4()
{
  v2 = v1[25];
  ++v1[26];
  v1[27] = v0;
  return v1[24];
}

void OUTLINED_FUNCTION_86_3(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = *(v1 + 36);
}

uint64_t OUTLINED_FUNCTION_87_3()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_90_3()
{

  return sub_237C08A8C();
}

uint64_t OUTLINED_FUNCTION_92_3()
{

  return sub_237C08A8C();
}

void OUTLINED_FUNCTION_93_1()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_94_0()
{
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[7];
  v6 = v0[8];

  return sub_237B57C50(v5, v6);
}

uint64_t OUTLINED_FUNCTION_101_0()
{
  sub_2379DBC9C(*v0, *(v0 + 8));
  v1 = *(v0 + 24);
}

void OUTLINED_FUNCTION_104_0()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

void OUTLINED_FUNCTION_105_1(uint64_t a1@<X8>)
{
  v2 = v1[27];
  v4 = v1[23];
  v3 = v1[24];
  v5 = v1[22];
  v6 = *(a1 + 8);
}

void OUTLINED_FUNCTION_117_1()
{

  sub_2379DDF5C();
}

uint64_t OUTLINED_FUNCTION_118_0()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_237C08EDC();
}

void OUTLINED_FUNCTION_119_1()
{

  JUMPOUT(0x2383DC360);
}

uint64_t sub_237B58F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237B5903C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MLSoundClassifier.ModelParameters();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t _s10ClassifierVMa_0()
{
  result = qword_27DE9D5B8;
  if (!qword_27DE9D5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B59138()
{
  type metadata accessor for MLSoundClassifier.ModelParameters();
  if (v0 <= 0x3F)
  {
    sub_2379D4F64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_237B59204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v6 = OUTLINED_FUNCTION_0(v5);
  v31 = v7;
  v32 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  v30 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C460, &unk_237C16A10);
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v29 - v22;
  v33 = a3;
  sub_237B5C4AC(a2, a3);
  v24 = type metadata accessor for MLSoundClassifier.ModelParameters();
  sub_2379D8FF4(a2 + *(v24 + 28), v34, &qword_27DE9A998, &unk_237C0C100);
  if (v35)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_2379D9054(v34, &qword_27DE9A998, &unk_237C0C100);
  }

  sub_237A0C928();
  sub_237C072AC();
  v25 = *(a2 + *(v24 + 20));
  sub_237C0725C();
  (*(v15 + 16))(v20, v23, v12);
  v26 = v30;
  sub_237C0730C();
  sub_237B5C510(a2);
  (*(v15 + 8))(v23, v12);
  v27 = _s10ClassifierVMa_0();
  (*(v31 + 32))(v33 + *(v27 + 20), v26, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237B5950C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0(v3);
  v29 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = OUTLINED_FUNCTION_83();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_4(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_31();
  v24 = _s10ClassifierVMa_0();
  sub_2379D8FF4(v1 + *(v24 + 20), v2, &qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v29;
    (*(v29 + 32))(v9, v2, v3);
    sub_237B5C4AC(v1, v30);
    v26 = *(_s5ModelVMa_0() + 20);
    sub_237C0737C();
    (*(v25 + 8))(v9, v3);
  }

  else
  {
    (*(v12 + 32))(v17, v2, v10);
    sub_237B5C4AC(v1, v30);
    v27 = *(_s5ModelVMa_0() + 20);
    sub_237C072BC();
    (*(v12 + 8))(v17, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237B597BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_34(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v0[9] = v7;
  OUTLINED_FUNCTION_1(v7);
  v0[10] = v8;
  v10 = *(v9 + 64);
  v0[11] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v0[12] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v0[15] = v15;
  OUTLINED_FUNCTION_1(v15);
  v0[16] = v16;
  v18 = *(v17 + 64);
  v0[17] = OUTLINED_FUNCTION_19();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v0[18] = v19;
  OUTLINED_FUNCTION_1(v19);
  v0[19] = v20;
  v22 = *(v21 + 64);
  v0[20] = OUTLINED_FUNCTION_19();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v0[21] = v23;
  OUTLINED_FUNCTION_20(v23);
  v25 = *(v24 + 64);
  v0[22] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_237B599A8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[8];
  v4 = _s10ClassifierVMa_0();
  sub_2379D8FF4(v3 + *(v4 + 20), v2, &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[13] + 32))(v0[14], v6, v0[12]);
    v7 = *(MEMORY[0x277CC5138] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[25] = v8;
    *v8 = v9;
    v8[1] = sub_237B59D2C;
    v10 = v0[14];
    v11 = v0[11];
    v12 = v0[12];
    OUTLINED_FUNCTION_10();

    return MEMORY[0x282115360]();
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v6, v0[18]);
    v13 = *(MEMORY[0x277CC5100] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[23] = v14;
    *v14 = v15;
    v14[1] = sub_237B59B38;
    v16 = v0[20];
    v17 = v0[17];
    v18 = v0[18];
    OUTLINED_FUNCTION_10();

    return MEMORY[0x282115308]();
  }
}

uint64_t sub_237B59B38()
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

uint64_t sub_237B59C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[17];
  v14 = v12[15];
  v15 = v12[16];
  v16 = v12[22];
  v17 = v12[14];
  v18 = v12[11];
  v19 = v12[8];
  v20 = v12[2];
  (*(v12[19] + 8))(v12[20], v12[18]);
  v21 = OUTLINED_FUNCTION_83();
  sub_237B5C4AC(v21, v22);
  v23 = _s5ModelVMa_0();
  v24 = OUTLINED_FUNCTION_84_1(v23);
  v25(v24, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_99_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_237B59D2C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237B59E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[14];
  v15 = v12[11];
  v14 = v12[12];
  v16 = v12[9];
  v17 = v12[10];
  v18 = v12[22];
  v19 = v12[20];
  v20 = v12[17];
  v21 = v12[8];
  v22 = v12[2];
  v23 = OUTLINED_FUNCTION_38(v12[13]);
  v24(v23);
  v25 = OUTLINED_FUNCTION_83();
  sub_237B5C4AC(v25, v26);
  v27 = _s5ModelVMa_0();
  v28 = OUTLINED_FUNCTION_84_1(v27);
  v29(v28, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_99_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_237B59F1C()
{
  OUTLINED_FUNCTION_9();
  v1[10] = v34;
  v1[11] = v0;
  v1[8] = v2;
  v1[9] = v3;
  v1[6] = v4;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[12] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[13] = v11;
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v1[15] = v14;
  OUTLINED_FUNCTION_1(v14);
  v1[16] = v15;
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_19();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[18] = v18;
  OUTLINED_FUNCTION_1(v18);
  v1[19] = v19;
  v21 = *(v20 + 64);
  v1[20] = OUTLINED_FUNCTION_19();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v1[21] = v22;
  OUTLINED_FUNCTION_1(v22);
  v1[22] = v23;
  v25 = *(v24 + 64);
  v1[23] = OUTLINED_FUNCTION_19();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v1[24] = v26;
  OUTLINED_FUNCTION_20(v26);
  v28 = *(v27 + 64);
  v1[25] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_237B5A120()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[11];
  v4 = _s10ClassifierVMa_0();
  sub_2379D8FF4(v3 + *(v4 + 20), v2, &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[25];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[16] + 32))(v0[17], v6, v0[15]);
    v7 = *(MEMORY[0x277CC5130] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[28] = v8;
    *v8 = v9;
    v8[1] = sub_237B5A4A4;
    v10 = v0[17];
    v11 = v0[14];
    v12 = v0[15];
    OUTLINED_FUNCTION_22();

    return MEMORY[0x282115358](v13);
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v6, v0[21]);
    v14 = *(MEMORY[0x277CC50F8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[26] = v15;
    *v15 = v16;
    v15[1] = sub_237B5A2B0;
    v17 = v0[23];
    v18 = v0[20];
    v19 = v0[21];
    OUTLINED_FUNCTION_22();

    return MEMORY[0x282115300](v20);
  }
}

uint64_t sub_237B5A2B0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237B5A3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[20];
  v14 = v12[18];
  v15 = v12[19];
  v16 = v12[25];
  v17 = v12[17];
  v18 = v12[14];
  v19 = v12[11];
  v20 = v12[2];
  (*(v12[22] + 8))(v12[23], v12[21]);
  v21 = OUTLINED_FUNCTION_83();
  sub_237B5C4AC(v21, v22);
  v23 = _s5ModelVMa_0();
  v24 = OUTLINED_FUNCTION_84_1(v23);
  v25(v24, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_99_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_237B5A4A4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237B5A59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[17];
  v15 = v12[14];
  v14 = v12[15];
  v16 = v12[12];
  v17 = v12[13];
  v18 = v12[25];
  v19 = v12[23];
  v20 = v12[20];
  v21 = v12[11];
  v22 = v12[2];
  v23 = OUTLINED_FUNCTION_38(v12[16]);
  v24(v23);
  v25 = OUTLINED_FUNCTION_83();
  sub_237B5C4AC(v25, v26);
  v27 = _s5ModelVMa_0();
  v28 = OUTLINED_FUNCTION_84_1(v27);
  v29(v28, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_99_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_237B5A694(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v4 = OUTLINED_FUNCTION_0(v3);
  v69 = v5;
  v70 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v67 = v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0(v68);
  v66 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23();
  v65 = v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0(v64);
  v62 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0(v63);
  v61 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  v26 = &v60 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v60 - v35;
  v37 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718) - 8);
  v38 = *(*v37 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_31();
  v40 = *(_s10ClassifierVMa_0() + 20);
  v41 = *(_s5ModelVMa_0() + 20);
  v42 = v37[14];
  sub_2379D8FF4(v71 + v40, v2, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v72 + v41, v2 + v42, &qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379D8FF4(v2, v33, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() == 1)
    {
      v43 = v65;
      v44 = v66;
      v45 = OUTLINED_FUNCTION_21(v66);
      v46 = v68;
      v47(v45, v33, v68);
      v48 = v69;
      OUTLINED_FUNCTION_28_18(v69);
      v49 = v67;
      v50 = v70;
      v51(v67);
      sub_2379D9224(&qword_27DE9A7A0, &qword_27DE9A700, &qword_237C0A160);
      sub_2379D9224(&qword_27DE9A7A8, &qword_27DE9A780, &unk_237C0A700);
      sub_237C06EBC();
      (*(v48 + 8))(v49, v50);
      (*(v44 + 8))(v43, v46);
      return sub_2379D9054(v2, &qword_27DE9A6D8, &qword_237C0A140);
    }

    v61 = v66;
    v63 = v68;
    v36 = v33;
  }

  else
  {
    sub_2379D8FF4(v2, v36, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() != 1)
    {
      v52 = v61;
      v53 = OUTLINED_FUNCTION_21(v61);
      v54 = v63;
      v55(v53, v36, v63);
      v56 = v62;
      OUTLINED_FUNCTION_28_18(v62);
      v57 = v64;
      v58(v20);
      OUTLINED_FUNCTION_25();
      sub_237C072DC();
      (*(v56 + 8))(v20, v57);
      (*(v52 + 8))(v26, v54);
      return sub_2379D9054(v2, &qword_27DE9A6D8, &qword_237C0A140);
    }
  }

  (*(v61 + 8))(v36, v63);
  OUTLINED_FUNCTION_2();
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237B5AC34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D9D48;

  return sub_237B597BC();
}

uint64_t sub_237B5AD0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D6854;

  return sub_237B59F1C();
}

uint64_t sub_237B5AEB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237B5AEF8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_34(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v0[9] = v7;
  OUTLINED_FUNCTION_1(v7);
  v0[10] = v8;
  v10 = *(v9 + 64) + 15;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v0[13] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[14] = v12;
  v14 = *(v13 + 64);
  v0[15] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v0[16] = v15;
  OUTLINED_FUNCTION_1(v15);
  v0[17] = v16;
  v18 = *(v17 + 64) + 15;
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v0[20] = v19;
  OUTLINED_FUNCTION_1(v19);
  v0[21] = v20;
  v22 = *(v21 + 64);
  v0[22] = OUTLINED_FUNCTION_19();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v0[23] = v23;
  OUTLINED_FUNCTION_20(v23);
  v25 = *(v24 + 64) + 15;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718);
  v0[26] = v26;
  OUTLINED_FUNCTION_20(v26);
  v28 = *(v27 + 64);
  v0[27] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

void sub_237B5B150()
{
  OUTLINED_FUNCTION_116_0();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 64);
  v5 = *(v0 + 16);
  v6 = *(_s10ClassifierVMa_0() + 20);
  v7 = *(_s5ModelVMa_0() + 20);
  *(v0 + 304) = v7;
  v8 = *(v2 + 48);
  sub_2379D8FF4(v4 + v6, v1, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v5 + v7, v1 + v8, &qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 216);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = (v0 + 192);
    sub_2379D8FF4(v10, *(v0 + 192), &qword_27DE9A6D8, &qword_237C0A140);
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = *(v0 + 96);
      v13 = *(v0 + 72);
      v14 = *(v0 + 80);
      (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 192), *(v0 + 104));
      v15 = *(v14 + 32);
      *(v0 + 272) = v15;
      *(v0 + 280) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v15(v12, v1 + v8, v13);
      v16 = *(MEMORY[0x277CC5140] + 4);
      v17 = swift_task_alloc();
      *(v0 + 288) = v17;
      *v17 = v0;
      v17[1] = sub_237B5B6E4;
      v18 = *(v0 + 120);
      v20 = *(v0 + 96);
      v19 = *(v0 + 104);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_33_19();

      MEMORY[0x282115368](v21);
      return;
    }

    v23 = 104;
    v24 = 112;
LABEL_9:
    (*(*(v0 + v24) + 8))(*v11, *(v0 + v23));
    OUTLINED_FUNCTION_2();
    sub_237C090DC();
    OUTLINED_FUNCTION_33_19();
    return;
  }

  v11 = (v0 + 200);
  sub_2379D8FF4(v10, *(v0 + 200), &qword_27DE9A6D8, &qword_237C0A140);
  *(v0 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = 160;
    v24 = 168;
    goto LABEL_9;
  }

  v25 = *(v0 + 152);
  v26 = *(v0 + 128);
  v27 = *(v0 + 136);
  (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 200), *(v0 + 160));
  v28 = *(v27 + 32);
  *(v0 + 232) = v28;
  *(v0 + 240) = (v27 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v28(v25, v1 + v8, v26);
  v29 = *(MEMORY[0x277CC5108] + 4);
  v30 = swift_task_alloc();
  *(v0 + 248) = v30;
  *v30 = v0;
  v30[1] = sub_237B5B48C;
  v31 = *(v0 + 176);
  v33 = *(v0 + 152);
  v32 = *(v0 + 160);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_33_19();

  MEMORY[0x282115318](v34);
}

uint64_t sub_237B5B48C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237B5B584()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 304);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v14 = *(v0 + 200);
  v10 = *(v0 + 128);
  v15 = *(v0 + 192);
  v16 = *(v0 + 120);
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);
  v11 = *(v0 + 16);
  (*(*(v0 + 168) + 8))();
  v1(v6, v5, v10);
  sub_2379D9054(v11 + v7, &qword_27DE9A790, &qword_237C0A710);
  v1(v11 + v7, v6, v10);
  swift_storeEnumTagMultiPayload();
  sub_2379D9054(v9, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_6();

  return v12();
}

uint64_t sub_237B5B6E4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v8 + 296) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237B5B7DC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 304);
  v9 = *(v0 + 216);
  v14 = *(v0 + 200);
  v15 = *(v0 + 192);
  v16 = *(v0 + 176);
  v10 = *(v0 + 152);
  v17 = *(v0 + 120);
  v11 = *(v0 + 16);
  (*(*(v0 + 112) + 8))();
  v1(v6, v5, v7);
  sub_2379D9054(v11 + v8, &qword_27DE9A790, &qword_237C0A710);
  v1(v11 + v8, v6, v7);
  swift_storeEnumTagMultiPayload();
  sub_2379D9054(v9, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_6();

  return v12();
}

uint64_t sub_237B5B948(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v4 = OUTLINED_FUNCTION_0(v3);
  v69 = v5;
  v70 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v67 = v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0(v68);
  v66 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23();
  v65 = v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0(v64);
  v62 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_23();
  v61 = v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0(v63);
  v60 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v60 - v34;
  v36 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718) - 8);
  v37 = *(*v36 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_14_31();
  v39 = *(_s10ClassifierVMa_0() + 20);
  v40 = *(_s5ModelVMa_0() + 20);
  v41 = v36[14];
  sub_2379D8FF4(v71 + v39, v2, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v72 + v40, v2 + v41, &qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379D8FF4(v2, v32, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() == 1)
    {
      v42 = v65;
      v43 = v66;
      v44 = OUTLINED_FUNCTION_21(v66);
      v45 = v68;
      v46(v44, v32, v68);
      v48 = v69;
      v47 = v70;
      OUTLINED_FUNCTION_28_18(v69);
      v49 = v67;
      v50(v67);
      OUTLINED_FUNCTION_25();
      sub_237C0738C();
      (*(v48 + 8))(v49, v47);
      (*(v43 + 8))(v42, v45);
      return sub_2379D9054(v2, &qword_27DE9A6D8, &qword_237C0A140);
    }

    v60 = v66;
    v63 = v68;
    v35 = v32;
  }

  else
  {
    sub_2379D8FF4(v2, v35, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() != 1)
    {
      v51 = v60;
      v52 = OUTLINED_FUNCTION_21(v60);
      v53 = v63;
      v54(v52, v35, v63);
      v56 = v61;
      v55 = v62;
      OUTLINED_FUNCTION_28_18(v62);
      v57 = v64;
      v58(v56);
      OUTLINED_FUNCTION_25();
      sub_237C072CC();
      (*(v55 + 8))(v56, v57);
      (*(v51 + 8))(v25, v53);
      return sub_2379D9054(v2, &qword_27DE9A6D8, &qword_237C0A140);
    }
  }

  (*(v60 + 8))(v35, v63);
  OUTLINED_FUNCTION_2();
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237B5BE70@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v90 = a2;
  v91 = a3;
  v92 = a1;
  v82 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v6 = OUTLINED_FUNCTION_0(v5);
  v79 = v7;
  v80 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  v89 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v13 = OUTLINED_FUNCTION_0(v12);
  v87 = v14;
  v88 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23();
  v86 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v20 = OUTLINED_FUNCTION_0(v19);
  v77 = v21;
  v78 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23();
  v85 = v25;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v26 = OUTLINED_FUNCTION_4(v81);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18_0();
  v75 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v76 = &v75 - v32;
  v33 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v34 = OUTLINED_FUNCTION_20(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_0();
  v84 = (v37 - v38);
  MEMORY[0x28223BE20](v39);
  v41 = &v75 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0(v42);
  v83 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v46);
  v48 = &v75 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_4(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v52);
  v54 = &v75 - v53;
  v55 = _s10ClassifierVMa_0();
  v56 = v4;
  sub_2379D8FF4(v4 + *(v55 + 20), v54, &qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = v86;
    v58 = v87;
    v59 = OUTLINED_FUNCTION_21(v87);
    v60 = v88;
    v61(v59, v54, v88);
    v41 = v84;
    sub_237B5C4AC(v56, v84);
    v62 = v93;
    v91(v92, v60);
    if (v62)
    {
      sub_237B5C510(v41);
      return (*(v58 + 8))(v57, v60);
    }

    (*(v58 + 8))(v57, v60);
    v66 = *(v79 + 32);
    v67 = v75;
    v68 = OUTLINED_FUNCTION_30();
    v69(v68);
  }

  else
  {
    v64 = v83;
    (*(v83 + 32))(v48, v54, v42);
    sub_237B5C4AC(v4, v41);
    v65 = v93;
    v90(v92, v42);
    if (v65)
    {
      sub_237B5C510(v41);
      return (*(v64 + 8))(v48, v42);
    }

    (*(v64 + 8))(v48, v42);
    v67 = v76;
    v70 = *(v77 + 32);
    v71 = OUTLINED_FUNCTION_30();
    v72(v71);
  }

  swift_storeEnumTagMultiPayload();
  v73 = v82;
  sub_237B5C56C(v41, v82);
  v74 = _s5ModelVMa_0();
  return sub_2379D8F84(v67, v73 + *(v74 + 20));
}

uint64_t sub_237B5C380()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D9D48;

  return sub_237B5AEF8();
}

uint64_t sub_237B5C4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B5C510(uint64_t a1)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237B5C56C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237B5C650()
{
  result = qword_27DE9D5D8;
  if (!qword_27DE9D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D5D8);
  }

  return result;
}

unint64_t sub_237B5C6A8()
{
  result = qword_27DE9D5E0;
  if (!qword_27DE9D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D5E0);
  }

  return result;
}

unint64_t sub_237B5C7B8()
{
  result = qword_27DE9D5E8;
  if (!qword_27DE9D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D5E8);
  }

  return result;
}

unint64_t sub_237B5C810()
{
  result = qword_27DE9D5F0;
  if (!qword_27DE9D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D5F0);
  }

  return result;
}

uint64_t sub_237B5C890@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MLHandActionClassifier.VideoAugmentationOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_237B5C8D0@<X0>(uint64_t *a1@<X8>)
{
  result = MLHandActionClassifier.VideoAugmentationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

void MLHandActionClassifier.DataSource.videosWithAnnotations()(uint64_t a1@<X8>)
{
  v316 = a1;
  v1 = sub_237C05DBC();
  v2 = OUTLINED_FUNCTION_0_26(v1, &v349);
  v315 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v10);
  v11 = sub_237C0825C();
  v12 = OUTLINED_FUNCTION_0_26(v11, v348);
  v312 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_82_5();
  v17 = sub_237C05ADC();
  v18 = OUTLINED_FUNCTION_0_26(v17, &v351);
  v317 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v304 - v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v304 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v304 - v31;
  v33 = type metadata accessor for MLHandActionClassifier.DataSource();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v39 = v38 - v37;
  v40 = OUTLINED_FUNCTION_36_4();
  sub_237AB6644(v40, v41);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_29_15();
      v103(v30, v39, v318);
      sub_237C0822C();
      OUTLINED_FUNCTION_83();
      v104 = v350;
      sub_237A5C58C();
      if (v104)
      {
        OUTLINED_FUNCTION_36_3(v347);
        OUTLINED_FUNCTION_34_7();
        v105();
        v96 = OUTLINED_FUNCTION_28_19();
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_36_3(v347);
      OUTLINED_FUNCTION_34_7();
      v177();
      sub_237AB2468();

      v203 = OUTLINED_FUNCTION_2_71();
      v205 = OUTLINED_FUNCTION_22_26(v203, v204);
      OUTLINED_FUNCTION_21_29(v205, v206, v207, v208, v209, v210, v211, v212, v304);
      OUTLINED_FUNCTION_69_6();
      v247 = OUTLINED_FUNCTION_3_70(&v352);
      sub_2379DBC9C(v247, v248);
      v245 = OUTLINED_FUNCTION_28_19();
      goto LABEL_54;
    case 2u:
      OUTLINED_FUNCTION_29_15();
      v93(v32, v39, v318);
      sub_237C0822C();
      v94 = v350;
      sub_237A5D608();
      if (v94)
      {
        OUTLINED_FUNCTION_36_3(v347);
        OUTLINED_FUNCTION_34_7();
        v95();
        v96 = OUTLINED_FUNCTION_27_16();
LABEL_12:
        v97(v96);
        return;
      }

      OUTLINED_FUNCTION_36_3(v347);
      OUTLINED_FUNCTION_34_7();
      v154();
      sub_237AB2468();

      v193 = OUTLINED_FUNCTION_2_71();
      v195 = OUTLINED_FUNCTION_22_26(v193, v194);
      OUTLINED_FUNCTION_21_29(v195, v196, v197, v198, v199, v200, v201, v202, v304);
      OUTLINED_FUNCTION_69_6();
      v243 = OUTLINED_FUNCTION_3_70(&v352);
      sub_2379DBC9C(v243, v244);
      v245 = OUTLINED_FUNCTION_27_16();
LABEL_54:
      v246(v245);
      OUTLINED_FUNCTION_86_4();
      goto LABEL_53;
    case 3u:
      sub_237A28130(v39);
      v98 = MEMORY[0x2383DDC00](0);
      if (!v98)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        JUMPOUT(0x237B5DD28);
      }

      v99 = v98;
      type metadata accessor for CMLTable();
      v100 = swift_allocObject();
      *(v100 + 16) = v99;
      type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_75_2();
      sub_237B6C578(v100);
      OUTLINED_FUNCTION_88_2();
      *v102 = v101;
      *(v102 + 8) = 0;
      return;
    case 4u:
      v68 = *v39;
      v69 = *(v39 + 8);
      v70 = *(v39 + 16);
      v317 = *(v39 + 24);
      v72 = *(v39 + 32);
      v71 = *(v39 + 40);
      v73 = *(v39 + 48);
      OUTLINED_FUNCTION_74_6(*(v39 + 56));
      v74 = *(v39 + 64);
      v75 = *(v39 + 72);
      v346 = v68;
      v347[0] = v69;
      v319 = v68;
      LOBYTE(v320) = v69;
      v76 = OUTLINED_FUNCTION_7_0();
      sub_2379DBCF4(v76, v77);
      v78 = OUTLINED_FUNCTION_7_0();
      sub_2379DBCF4(v78, v79);
      v315 = v70;
      v80 = v70;
      v81 = v317;
      v314 = v72;
      v82 = v71;
      v83 = v73;
      v84 = v73;
      v85 = v318;
      v86 = v350;
      sub_237AB28BC(&v319, v80, v317, v72, v82, v84, v318, v74, v75);
      v350 = v86;
      if (v86)
      {

        v87 = OUTLINED_FUNCTION_7_0();
        sub_2379DBC9C(v87, v88);
        v89 = OUTLINED_FUNCTION_2_71();
        sub_2379DBC9C(v89, v90);
        v91 = OUTLINED_FUNCTION_7_0();
        sub_2379DBC9C(v91, v92);
        return;
      }

      v309 = v83;
      v310 = v74;
      LODWORD(v312) = v69;
      v311 = v68;
      v313 = v75;
      v129 = OUTLINED_FUNCTION_2_71();
      sub_2379DBC9C(v129, v130);
      if (v85)
      {
        sub_237B6C670(v131, v132, v133, v134, v135, v136, v137, v138, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323);
        OUTLINED_FUNCTION_20_13();
        OUTLINED_FUNCTION_30_6();
        sub_237B6DAB4();
        if ((v347[0] & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v139 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v139, v140);
        }
      }

      v33 = v313;
      if (v313)
      {
        sub_237B6C670(v131, v132, v133, v134, v135, v136, v137, v138, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323);
        OUTLINED_FUNCTION_18_33();
        sub_237B6DAB4();
        if ((v347[0] & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v141 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v141, v142);
        }
      }

      sub_237B6C670(v131, v132, v133, v134, v135, v136, v137, v138, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323);
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_51_8();
      OUTLINED_FUNCTION_50_10();
      sub_237B6DAB4();

      if ((v347[0] & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v151 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v151, v152);
      }

      sub_237B6C670(v143, v144, v145, v146, v147, v148, v149, v150, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      OUTLINED_FUNCTION_32_8();
      if (v81)
      {
        v153 = &v346;
      }

      else
      {
        v189 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v189, v190);
        sub_237B6C588();
      }

      OUTLINED_FUNCTION_86_4();
      v191 = v311;
      v192 = v312;

      OUTLINED_FUNCTION_8_21();

      sub_2379DBC9C(v191, v192);
      goto LABEL_52;
    case 5u:
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v107 = *(v39 + v106[12] + 8);

      v108 = *(v39 + v106[16] + 8);

      v109 = *(v39 + v106[20] + 8);

      v110 = MEMORY[0x2383DDC00](0);
      if (!v110)
      {
        goto LABEL_72;
      }

      v111 = v110;
      type metadata accessor for CMLTable();
      v112 = swift_allocObject();
      *(v112 + 16) = v111;
      type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_75_2();
      sub_237B6C578(v112);
      OUTLINED_FUNCTION_88_2();
      *v114 = v113;
      *(v114 + 8) = 0;
      OUTLINED_FUNCTION_9_44();
      v115(v39, v314);
      return;
    case 6u:
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
      v117 = (v39 + v116[12]);
      v118 = v117[1];
      v318 = *v117;
      v119 = (v39 + v116[16]);
      v120 = v119[1];
      v317 = *v119;
      v121 = (v39 + v116[20]);
      v122 = v121[1];
      v312 = *v121;
      v123 = (v39 + v116[24]);
      v124 = v123[1];
      v313 = *v123;
      v125 = v315;
      v126 = v310;
      v127 = v314;
      (*(v315 + 32))(v310, v39, v314);
      (*(v125 + 16))(v8, v126, v127);
      v128 = v350;
      sub_237A70684(v8, 0, &v319);
      if (v128)
      {
        (*(v125 + 8))(v126, v127);

        return;
      }

      v178 = OUTLINED_FUNCTION_2_71();
      OUTLINED_FUNCTION_22_26(v178, v179);
      sub_237AB28BC(&v319, v318, v118, v317, v120, v312, v122, v313, v124);
      OUTLINED_FUNCTION_69_6();
      v180 = v122;
      v33 = v120;
      v213 = OUTLINED_FUNCTION_2_71();
      sub_2379DBC9C(v213, v214);
      if (v180)
      {
        sub_237B6C670(v215, v216, v217, v218, v219, v220, v221, v222, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321);
        OUTLINED_FUNCTION_20_13();
        OUTLINED_FUNCTION_13_11();
        sub_237B6DAB4();
        if ((v347[0] & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v223 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v223, v224);
        }
      }

      if (v124)
      {
        sub_237B6C670(v215, v216, v217, v218, v219, v220, v221, v222, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321);
        OUTLINED_FUNCTION_18_33();
        sub_237B6DAB4();
        if ((v347[0] & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v225 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v225, v226);
        }
      }

      sub_237B6C670(v215, v216, v217, v218, v219, v220, v221, v222, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321);
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_53_10(&v351);
      OUTLINED_FUNCTION_50_10();
      sub_237B6DAB4();

      if ((v347[0] & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v235 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v235, v236);
      }

      sub_237B6C670(v227, v228, v229, v230, v231, v232, v233, v234, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_86_4();
      v237 = v315;
      v238 = v310;
      if (v180)
      {
        v239 = &v346;
      }

      else
      {
        sub_2379DBCF4(&v346, 0);
        sub_237B6C588();
      }

      (*(v237 + 8))(v238, v314);
LABEL_52:
      v240 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v240, v241);
      goto LABEL_53;
    default:
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
      v43 = *(v42 + 48);
      OUTLINED_FUNCTION_47_14(*(v42 + 64));
      v312 = v44;
      v314 = v45;
      v47 = (v39 + *(v46 + 80));
      v48 = v47[1];
      v310 = *v47;
      OUTLINED_FUNCTION_47_14(*(v46 + 96));
      v307 = v49;
      v315 = v50;
      OUTLINED_FUNCTION_47_14(*(v51 + 112));
      v306 = v52;
      v313 = v53;
      v54 = v317;
      v55 = *(v317 + 32);
      v56 = v311;
      v57 = v318;
      v55(v311, v39, v318);
      v58 = v39 + v43;
      v59 = v309;
      v55(v309, v58, v57);
      v60 = v59;
      v61 = *(v54 + 16);
      v62 = OUTLINED_FUNCTION_13_11();
      v63(v62);
      LOBYTE(v319) = 1;
      *(&v319 + 1) = *v345;
      HIDWORD(v319) = *&v345[3];
      v320 = 44;
      v321 = 0xE100000000000000;
      v322 = 0;
      v323 = 0xE000000000000000;
      v324 = 92;
      v325 = 0xE100000000000000;
      v326 = 1;
      *v327 = *v344;
      *&v327[3] = *&v344[3];
      v328 = 34;
      v329 = 0xE100000000000000;
      v330 = 1;
      *v331 = *v343;
      *&v331[3] = *&v343[3];
      v332 = &unk_284ABEBF0;
      v333 = 10;
      v334 = 0xE100000000000000;
      v335 = 0;
      v336 = 0;
      v337 = 1;
      *v338 = *v342;
      *&v338[3] = *&v342[3];
      v339 = 0;
      v64 = v350;
      MLDataTable.init(contentsOf:options:)(v25, &v319, &v340);
      if (v64)
      {
        v65 = *(v54 + 8);
        v65(v60, v57);

        OUTLINED_FUNCTION_51_8();

        v66 = v56;
        v67 = v57;
LABEL_37:
        v65(v66, v67);
        return;
      }

      v155 = v310;
      v305 = v48;
      v156 = v313;
      v346 = v340;
      v347[0] = v341;
      v157 = v312;
      v158 = v314;
      MLDataTable.subscript.getter();
      v159 = v319;
      if ((v320 & 1) != 0 || (v160 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v160, v161), v350 = v159, sub_237A60248(&v340), v162 = OUTLINED_FUNCTION_85(), sub_2379DBC9C(v162, v163), v340 != 2))
      {
        OUTLINED_FUNCTION_73_4();

        OUTLINED_FUNCTION_51_8();

        v181 = OUTLINED_FUNCTION_30();
        sub_2379DBC9C(v181, v182);
        v319 = 0;
        v320 = 0xE000000000000000;
        sub_237C08EDC();

        v319 = 0x206E6D756C6F43;
        v320 = 0xE700000000000000;
        MEMORY[0x2383DC360](v157, v158);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1A760);
        v183 = v319;
        v184 = v320;
        sub_2379E8AF0();
        swift_allocError();
        *v185 = v183;
        *(v185 + 8) = v184;
        *(v185 + 16) = 0u;
        *(v185 + 32) = 0u;
        *(v185 + 48) = 0;
        swift_willThrow();
        v65 = *(v54 + 8);
        v186 = v318;
        v65(v60, v318);
        v187 = OUTLINED_FUNCTION_78_4();
        sub_2379DBC9C(v187, v188);
        v66 = v311;
        v67 = v186;
        goto LABEL_37;
      }

      v164 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v164, v165);
      sub_237A607E0(0, &v319);
      sub_2379DBC9C(v350, 0);
      v166 = v319;
      v167 = v320;
      v168 = v156;
      v33 = 0;
      if (v321 != 2)
      {
        sub_2379E8CE8(v319, v320, v321);
        v166 = 0;
        v167 = 0xE000000000000000;
      }

      v169 = v308;
      v170 = v155;
      v319 = v166;
      v320 = v167;
      sub_237C0883C();
      sub_237C059BC();

      v171 = [objc_opt_self() defaultManager];
      sub_237C05A9C();
      v172 = sub_237C086BC();

      v173 = [v171 fileExistsAtPath_];

      if (v173)
      {
        v174 = v346;
        v175 = v347[0];
        v176 = v315;
      }

      else
      {
        v249 = v350;
        sub_2379DBCF4(v350, 0);
        v250 = sub_2379DFC10(v249, 0);
        MEMORY[0x28223BE20](v250);
        v251 = sub_2379E1FAC(sub_237B61EA4, (&v304 - 4), v250);

        v319 = v251;
        MEMORY[0x28223BE20](v252);
        v302 = &v319;
        v253 = sub_237BBDC94(sub_2379F5678);
        v255 = v254;

        sub_237B6C670(v256, v257, v258, v259, v260, v261, v262, v263, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323);
        v319 = v253;
        LOBYTE(v320) = v255 & 1;
        sub_237B6CF70(&v319);
        v264 = OUTLINED_FUNCTION_2_71();
        sub_2379DBC9C(v264, v265);
        v174 = v346;
        if (v347[0])
        {
          v175 = 1;
        }

        else
        {
          v266 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v266, v267);
          sub_237B6C588();
          v268 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v268, v269);
          v175 = 0;
        }

        v176 = v315;
        v170 = v155;
      }

      v270 = v307;
      v319 = v174;
      LOBYTE(v320) = v175;
      sub_2379DBCF4(v174, v175);
      sub_237AB28BC(&v319, v312, v158, v170, v305, v270, v176, v306, v168);
      OUTLINED_FUNCTION_69_6();
      v271 = OUTLINED_FUNCTION_2_71();
      sub_2379DBC9C(v271, v272);
      if (v176)
      {
        sub_237B6C670(v273, v274, v275, v276, v277, v278, v279, v280, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321);
        OUTLINED_FUNCTION_20_13();
        sub_237B6DAB4();
        if ((v347[0] & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v281 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v281, v282);
        }
      }

      if (v168)
      {
        sub_237B6C670(v273, v274, v275, v276, v277, v278, v279, v280, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321);
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_18_33();
        sub_237B6DAB4();
        if ((v347[0] & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v283 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v283, v284);
        }
      }

      sub_237B6C670(v273, v274, v275, v276, v277, v278, v279, v280, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321);
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_50_10();
      sub_237B6DAB4();

      if ((v347[0] & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v293 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v293, v294);
      }

      sub_237B6C670(v285, v286, v287, v288, v289, v290, v291, v292, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_86_4();
      if (v176)
      {
        v295 = &v346;
      }

      else
      {
        sub_2379DBCF4(&v346, 0);
        sub_237B6C588();
      }

      OUTLINED_FUNCTION_51_8();

      sub_2379DBC9C(v350, 0);
      v296 = *(v317 + 8);
      v297 = v318;
      v296(v169, v318);
      v298 = OUTLINED_FUNCTION_30_6();
      v296(v298, v297);
      v299 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v299, v300);
      v301 = OUTLINED_FUNCTION_53_10(&v346);
      (v296)(v301);
LABEL_53:
      v242 = v347[0];
      *v33 = v346;
      *(v33 + 8) = v242;
      return;
  }
}

uint64_t sub_237B5DD44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v6 = OUTLINED_FUNCTION_0(v44);
  v39 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  v16 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  sub_2379D9224(&qword_27DE9B048, &qword_27DE9AE60, &qword_237C0D000);
  v42 = v15;
  sub_237C05EEC();
  v45 = v16;
  v43 = v12;
  sub_237C05EEC();

  v18 = sub_237BA2F3C(v17);

  v41 = *(v18 + 16);
  if (v41)
  {
    v38[1] = v18;
    v38[2] = a4;
    v19 = 0;
    v40 = v18 + 32;
    do
    {
      v20 = (v40 + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(a1 + 16);

      if (v23)
      {

        v24 = sub_237ACAC78(v22, v21);
        v25 = MEMORY[0x277D84F90];
        if (v26)
        {
          v25 = *(*(a1 + 56) + 8 * v24);
        }
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
      }

      v27 = *(v25 + 16);
      if (v27)
      {
        v28 = *(v25 + 16);
        v29 = sub_237C0898C();
        *(v29 + 16) = v27;
        v30 = v27 - 1;
        for (i = 32; ; i += 16)
        {
          v32 = (v29 + i);
          *v32 = v22;
          v32[1] = v21;
          if (!v30)
          {
            break;
          }

          --v30;
        }
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      ++v19;
      v45 = v29;
      sub_237C05F2C();

      v45 = v25;
      sub_237C05F2C();
    }

    while (v19 != v41);
  }

  sub_237C05DAC();
  v33 = v42;
  sub_237C05D4C();
  v34 = v43;
  sub_237C05D4C();
  v35 = *(v39 + 8);
  v36 = v44;
  v35(v34, v44);
  return (v35)(v33, v36);
}

void MLHandActionClassifier.DataSource.extractKeypoints(targetFrameRate:)(uint64_t a1@<X8>)
{
  v4 = v1;
  v180 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B908, &qword_237C0E258);
  OUTLINED_FUNCTION_0_26(v5, &v188);
  v174 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0_26(v11, &v191);
  v177 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23();
  v176 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_58();
  v21 = v20;
  v22 = sub_237C0602C();
  v23 = OUTLINED_FUNCTION_0_26(v22, &v192);
  v181 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_0();
  v29 = v27 - v28;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v162 - v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_82_5();
  v34 = sub_237C05DBC();
  v35 = OUTLINED_FUNCTION_0(v34);
  v182 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_0();
  v41 = v40 - v39;
  v42 = type metadata accessor for MLHandActionClassifier.DataSource();
  v43 = OUTLINED_FUNCTION_4(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_0();
  v48 = v47 - v46;
  sub_237AB6644(v4, v47 - v46);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v50 = *(v48 + 8);
      v51 = *(v48 + 16);
      v52 = *(v48 + 24);
      v53 = *(v48 + 32);
      v54 = *(v48 + 40);
      v56 = *(v48 + 48);
      v55 = *(v48 + 56);
      v188 = *v48;
      v189 = v50;
      v57 = v184;
      sub_237ACECE8(&v188, v56, v55);
      v58 = v188;
      v59 = v189;
      if (v57)
      {
        sub_2379DBC9C(v188, v189);

LABEL_27:

        return;
      }

      v186 = v188;
      v187[0] = v189;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0B680;
      v184 = v51;
      *(inited + 32) = v51;
      *(inited + 40) = v52;
      *(inited + 48) = v56;
      *(inited + 56) = v55;
      *(inited + 64) = v53;
      *(inited + 72) = v54;
      sub_2379DBCF4(v58, v59);

      OUTLINED_FUNCTION_19_15();
      sub_2379F2B84();
      swift_setDeallocating();
      sub_237B9082C();
      OUTLINED_FUNCTION_60_10();
      sub_237B6C670(v105, v106, v107, v108, v109, v110, v111, v112, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
      OUTLINED_FUNCTION_16_27();
      OUTLINED_FUNCTION_53_10(&v193);
      OUTLINED_FUNCTION_72_6();
      sub_237B6DAB4();

      if ((v189 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v121 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v121, v122);
      }

      sub_237B6C670(v113, v114, v115, v116, v117, v118, v119, v120, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
      OUTLINED_FUNCTION_15_37();
      OUTLINED_FUNCTION_71_6();
      sub_237B6DAB4();

      if ((v189 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v131 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v131, v132);
      }

      sub_237B6C670(v123, v124, v125, v126, v127, v128, v129, v130, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      v133 = v189;
      v134 = v188;
      if ((v189 & 1) == 0)
      {
        v135 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v135, v136);
        sub_237B6C588();
        v137 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v137, v138);
      }

      v186 = v134;
      v187[0] = v133;
      v139 = OUTLINED_FUNCTION_30();
      sub_2379DBCF4(v139, v140);
      OUTLINED_FUNCTION_88_2();
      sub_237A70ED4(v141, v142);
      sub_2379DBC9C(v134, v133);
    }

    else
    {
      _s16FeatureExtractorCMa();
      OUTLINED_FUNCTION_57_8();
      sub_2379F3924(v82, v83, v84, v85);
      if (!v2)
      {
        v186 = v188;
        v187[0] = v189;
        OUTLINED_FUNCTION_88_2();
        sub_237A70ED4(v86, v87);
      }

      sub_237A28130(v48);
    }

    return;
  }

  v166 = v33;
  v165 = v29;
  v167 = v21;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
  v61 = (v48 + v60[12]);
  v63 = *v61;
  v62 = v61[1];
  v168 = v63;
  v170 = v62;
  v64 = (v48 + v60[16]);
  v66 = *v64;
  v65 = v64[1];
  v169 = v66;
  v171 = v65;
  v67 = (v48 + v60[20]);
  v69 = *v67;
  v68 = v67[1];
  v71 = *(v182 + 32);
  v70 = v182 + 32;
  v72 = OUTLINED_FUNCTION_13_11();
  v172 = v34;
  v74 = v73;
  v164 = v70;
  v163 = v75;
  (v75)(v72);
  v76 = v69;
  sub_237C05DFC();
  v77 = sub_237C05FFC();
  v78 = v181;
  v79 = *(v181 + 8);
  v79(v3, v183);
  if (v77 == MEMORY[0x277D837D0])
  {
    v162 = v79;
    v179 = v3;
    v89 = v176;
    OUTLINED_FUNCTION_48_14();
    sub_237C05DEC();
    v90 = v167;
    OUTLINED_FUNCTION_57_8();
    sub_237B62FE0(v91);
    v81 = v2;
    if (v2)
    {

      OUTLINED_FUNCTION_36_3(v190);
      v92(v89, v178);
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v183);
      sub_237B61F04(v90);
      v81 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_36_3(v190);
      v143(v89, v178);
      OUTLINED_FUNCTION_80_0();
      v144 = v183;
      __swift_storeEnumTagSinglePayload(v145, v146, v147, v183);
      (*(v78 + 32))(v166, v90, v144);
      v148 = v166;
      (*(v78 + 16))(v179, v166, v144);

      OUTLINED_FUNCTION_36_4();
      sub_237C05E0C();
      v162(v148, v144);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_14();
    sub_237C05DFC();
    v80 = sub_237C05FFC();
    v79(v3, v183);
    if (v80 == MEMORY[0x277CC9318])
    {
      v162 = v79;
      v96 = v173;
      OUTLINED_FUNCTION_48_14();
      sub_237C05DEC();
      v97 = v96;
      OUTLINED_FUNCTION_57_8();
      sub_237B64134(v98);
      v81 = v2;
      v99 = v182;
      if (v2)
      {

        OUTLINED_FUNCTION_36_3(v187);
        v100(v96, v175);
        v101 = v179;
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v102, v103, v104, v183);
        sub_237B61F04(v101);
        v81 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_36_3(v187);
        v155(v96, v175);
        OUTLINED_FUNCTION_51_8();
        OUTLINED_FUNCTION_80_0();
        v156 = v183;
        __swift_storeEnumTagSinglePayload(v157, v158, v159, v183);
        OUTLINED_FUNCTION_29_15();
        v160(v165, v179, v156);
        (*(v97 + 16))(v3, v165, v156);

        sub_237C05E0C();
        v161 = OUTLINED_FUNCTION_53_10(v185);
        (v162)(v161);
      }

      goto LABEL_25;
    }

    v81 = v184;
  }

  v99 = v182;
LABEL_25:
  v149 = v171;
  v150 = OUTLINED_FUNCTION_48_14();
  sub_237A384C8(v150, v151, v152);
  v153 = v170;
  if (v81)
  {
    (*(v99 + 8))(v41, v172);

    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  v154 = swift_initStackObject();
  *(v154 + 16) = xmmword_237C0B680;
  *(v154 + 32) = v168;
  *(v154 + 40) = v153;
  *(v154 + 48) = v76;
  *(v154 + 56) = v74;
  *(v154 + 64) = v169;
  *(v154 + 72) = v149;

  OUTLINED_FUNCTION_19_15();
  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_72_6();
  sub_237C05C8C();

  OUTLINED_FUNCTION_15_37();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_71_6();
  sub_237C05C8C();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_73_4();
  sub_237C05C8C();

  v163(v180, v41, v172);
}

void MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(id **a1@<X8>)
{
  v177 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0_26(v2, &v190);
  v176 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  v178 = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v10);
  v11 = sub_237C0602C();
  v12 = OUTLINED_FUNCTION_0_26(v11, &v191);
  v180 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v165 - v20;
  v22 = sub_237C05DBC();
  v23 = OUTLINED_FUNCTION_0(v22);
  v182 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v165 - v31;
  v33 = type metadata accessor for MLHandActionClassifier.DataSource();
  v34 = OUTLINED_FUNCTION_4(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v39 = v38 - v37;
  v40 = OUTLINED_FUNCTION_36_4();
  sub_237AB6644(v40, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v43 = *v39;
      v44 = *(v39 + 8);
      v45 = *(v39 + 24);
      OUTLINED_FUNCTION_74_6(*(v39 + 16));
      v46 = *(v39 + 40);
      v182 = *(v39 + 32);
      v47 = *(v39 + 56);
      v48 = *(v39 + 48);
      v187 = v43;
      v188[0] = v44;
      sub_2379DBCF4(v43, v44);
      v49 = v183;
      sub_237ACECE8(&v187, v48, v47);
      v50 = v187;
      v51 = v188[0];
      if (v49)
      {
        sub_2379DBC9C(v187, v188[0]);

        sub_2379DBC9C(v43, v44);
        return;
      }

      LODWORD(v183) = v44;
      v185 = v187;
      v186 = v188[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0B680;
      *(inited + 32) = v181;
      *(inited + 40) = v45;
      *(inited + 48) = v48;
      *(inited + 56) = v47;
      *(inited + 64) = v182;
      *(inited + 72) = v46;
      sub_2379DBCF4(v50, v51);

      OUTLINED_FUNCTION_19_15();
      sub_2379F2B84();
      swift_setDeallocating();
      sub_237B9082C();
      OUTLINED_FUNCTION_60_10();
      sub_237B6C670(v85, v86, v87, v88, v89, v90, v91, v92, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
      OUTLINED_FUNCTION_16_27();
      OUTLINED_FUNCTION_8_21();
      OUTLINED_FUNCTION_72_6();
      sub_237B6DAB4();

      if ((v188[0] & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v101 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v101, v102);
      }

      sub_237B6C670(v93, v94, v95, v96, v97, v98, v99, v100, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
      OUTLINED_FUNCTION_15_37();
      OUTLINED_FUNCTION_71_6();
      sub_237B6DAB4();

      if ((v188[0] & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v111 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v111, v112);
      }

      sub_237B6C670(v103, v104, v105, v106, v107, v108, v109, v110, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4();

      v83 = v187;
      if (v188[0])
      {
        v113 = v187;
        OUTLINED_FUNCTION_58_8();
        LOBYTE(v53) = 1;
        sub_2379DBC9C(v83, 1);
      }

      else
      {
        v128 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v128, v129);
        sub_237B6C588();
        OUTLINED_FUNCTION_58_8();
        v130 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v130, v131);
        LOBYTE(v53) = 0;
      }
    }

    else
    {
      _s16FeatureExtractorCMa();
      OUTLINED_FUNCTION_57_8();
      sub_2379F3924(v70, v71, v72, v73);
      if (v1)
      {
        sub_237A28130(v39);
        return;
      }

      v83 = v185;
      LOBYTE(v53) = v186;
      sub_237A28130(v39);
    }

    goto LABEL_13;
  }

  v168 = v18;
  v52 = v178;
  v171 = v29;
  v53 = v179;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
  OUTLINED_FUNCTION_47_14(*(v54 + 48));
  v169 = v55;
  OUTLINED_FUNCTION_35_15(v56);
  OUTLINED_FUNCTION_47_14(*(v57 + 64));
  OUTLINED_FUNCTION_77_4(v58, v59);
  v61 = (v39 + v60);
  v63 = *v61;
  v62 = v61[1];
  v64 = *(v182 + 32);
  v174 = v22;
  v64(v32, v39, v22);
  sub_237C05DFC();
  v65 = sub_237C05FFC();
  v66 = *(v180 + 8);
  v66(v21, v181);
  if (v65 == MEMORY[0x277D837D0])
  {
    v166 = v21;
    v75 = v63;
    v76 = v52;
    v77 = v75;
    v167 = v32;
    sub_237C05DEC();
    OUTLINED_FUNCTION_41_12(v188);
    OUTLINED_FUNCTION_57_8();
    sub_237B62FE0(v78);
    if (v1)
    {
      v67 = v77;
      v68 = v62;

      OUTLINED_FUNCTION_36_3(v189);
      v79(v76, v53);
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v181);
      sub_237B61F04(v32);
      v69 = 0;
      OUTLINED_FUNCTION_81_4();
      v32 = v167;
    }

    else
    {
      OUTLINED_FUNCTION_36_3(v189);
      v114(v52, v53);
      OUTLINED_FUNCTION_80_0();
      v115 = v181;
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v181);
      v119 = v180;
      v53 = v168;
      (*(v180 + 32))(v168, v32, v115);
      (*(v119 + 16))(v166, v53, v115);

      v67 = v77;
      v68 = v62;
      v32 = v167;
      sub_237C05E0C();
      v69 = 0;
      v66(v53, v115);
      OUTLINED_FUNCTION_81_4();
    }
  }

  else
  {
    v67 = v63;
    v68 = v62;
    OUTLINED_FUNCTION_81_4();
    v69 = v183;
  }

  v120 = v182;
  v121 = v171;
  v122 = v174;
  (*(v182 + 16))(v171, v32, v174);
  sub_237A70684(v121, 0, &v185);
  if (!v69)
  {
    v187 = v185;
    v188[0] = v186;
    v123 = v67;
    sub_237ACECE8(&v187, v67, v68);
    v167 = v32;
    v124 = v187;
    v125 = v188[0];
    v185 = v187;
    v186 = v188[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    v126 = swift_initStackObject();
    *(v126 + 16) = xmmword_237C0B680;
    v127 = v172;
    *(v126 + 32) = v169;
    *(v126 + 40) = v127;
    *(v126 + 48) = v123;
    *(v126 + 56) = v68;
    v183 = v123;
    *(v126 + 64) = v170;
    *(v126 + 72) = v53;

    sub_2379DBCF4(v124, v125);

    OUTLINED_FUNCTION_19_15();
    sub_2379F2B84();
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_60_10();
    sub_237B6C670(v132, v133, v134, v135, v136, v137, v138, v139, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_72_6();
    sub_237B6DAB4();

    if ((v188[0] & 1) == 0)
    {
      OUTLINED_FUNCTION_7_43();
      v148 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v148, v149);
    }

    sub_237B6C670(v140, v141, v142, v143, v144, v145, v146, v147, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
    OUTLINED_FUNCTION_15_37();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_71_6();
    sub_237B6DAB4();

    if ((v188[0] & 1) == 0)
    {
      OUTLINED_FUNCTION_7_43();
      v158 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v158, v159);
    }

    v83 = &v187;
    sub_237B6C670(v150, v151, v152, v153, v154, v155, v156, v157, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_13_11();
    sub_237B6DAB4();

    OUTLINED_FUNCTION_32_8();
    if (v53)
    {
      v160 = &v187;
    }

    else
    {
      v161 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v161, v162);
      sub_237B6C588();
    }

    (*(v120 + 8))(v167, v122);
    v163 = OUTLINED_FUNCTION_30();
    sub_2379DBC9C(v163, v164);
    OUTLINED_FUNCTION_32_8();
LABEL_13:
    v84 = v177;
    *v177 = v83;
    *(v84 + 8) = v53;
    return;
  }

  (*(v120 + 8))(v32, v122);

  OUTLINED_FUNCTION_30_6();
}

void MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()(uint64_t a1@<X8>)
{
  v205 = a1;
  v3 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_0_26(v3, v220);
  v213 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v9);
  v10 = sub_237C0825C();
  v11 = OUTLINED_FUNCTION_0_26(v10, v221);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v196 - v15;
  v222 = sub_237C05ADC();
  v17 = OUTLINED_FUNCTION_0(v222);
  v206 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (&v196 - v26);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v31);
  v32 = type metadata accessor for MLHandActionClassifier.DataSource();
  v33 = OUTLINED_FUNCTION_4(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_0();
  v38 = v37 - v36;
  v39 = v1;
  sub_237AB6644(v1, v37 - v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_79_5();
      v83 = v204;
      v84 = v222;
      v27[4](v204, v38, v222);
      sub_237C0822C();
      OUTLINED_FUNCTION_36_4();
      OUTLINED_FUNCTION_67_6();
      sub_237A5C58C();
      v86 = v2;
      if (v2)
      {
        v87 = OUTLINED_FUNCTION_65_5();
        v88(v87);
        v79 = v27[1];
        v77 = v83;
        v78 = v84;
        goto LABEL_10;
      }

      v144 = v85;
      v145 = OUTLINED_FUNCTION_65_5();
      v146(v145);
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
      v148 = sub_237C0910C();
      v149 = OUTLINED_FUNCTION_12_41(v148, v219);
      v151 = *(v150 - 256);
      OUTLINED_FUNCTION_32_14(v149);
      if (v152)
      {
LABEL_35:
        OUTLINED_FUNCTION_15_26();
        goto LABEL_41;
      }

LABEL_36:
      v155 = v2;
      while (1)
      {
        v2 = v155 + 1;
        if (__OFADD__(v155, 1))
        {
          goto LABEL_79;
        }

        if (v2 >= v84)
        {
          break;
        }

        ++v155;
        if (*(v197 + 8 * v2))
        {
          OUTLINED_FUNCTION_75_4();
LABEL_41:
          v156 = v153 | (v2 << 6);
          v202 = v154;
          v157 = *(v144 + 56);
          v158 = (*(v144 + 48) + 16 * v156);
          v160 = *v158;
          v159 = v158[1];
          v203 = v156;
          if (*(*(v157 + 8 * v156) + 16))
          {
            v200 = v160;
            v201 = v2;
            v216 = MEMORY[0x277D84F90];
            v199 = v159;

            OUTLINED_FUNCTION_89_2();
            OUTLINED_FUNCTION_20_29();
            do
            {
              OUTLINED_FUNCTION_87_4();
              OUTLINED_FUNCTION_63_5();
              v161();
              OUTLINED_FUNCTION_41_12(&v223);
              sub_237C0595C();
              v147 = v86;
              sub_237C05A9C();
              v213 = v162;
              v163 = OUTLINED_FUNCTION_55_8();
              v86(v163);
              v164 = OUTLINED_FUNCTION_13_11();
              v86(v164);
              OUTLINED_FUNCTION_64_4();
              if (v138)
              {
                OUTLINED_FUNCTION_59_8();
              }

              OUTLINED_FUNCTION_30_19();
            }

            while (!v139);

            v86 = v208;
            OUTLINED_FUNCTION_46_13(v219);
            v2 = v201;
            v84 = v198;
            v160 = v200;
          }

          else
          {
          }

          OUTLINED_FUNCTION_23_29(v218);
          *v166 = v160;
          v166[1] = v165;
          OUTLINED_FUNCTION_76_6();
          if (!v143)
          {
            *(v39 + 16) = v167;
            v151 = v207;
            OUTLINED_FUNCTION_79_5();
            if (v202)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }

LABEL_81:
          __break(1u);
          JUMPOUT(0x237B60940);
        }
      }

      OUTLINED_FUNCTION_24_28();
      (*v210)(v147, v222);
      OUTLINED_FUNCTION_80_0();
      v179 = v151;
      goto LABEL_55;
    case 2u:
      OUTLINED_FUNCTION_79_5();
      v27[4](v203, v38, v222);
      sub_237C0822C();
      OUTLINED_FUNCTION_67_6();
      sub_237A5D608();
      v73 = v2;
      if (v2)
      {
        v74 = OUTLINED_FUNCTION_66_6();
        v75(v74);
        v76 = v27[1];
        v77 = OUTLINED_FUNCTION_36_4();
LABEL_10:
        (v79)(v77, v78);
      }

      else
      {
        v119 = v72;
        v120 = OUTLINED_FUNCTION_66_6();
        v121(v120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
        v122 = sub_237C0910C();
        v123 = OUTLINED_FUNCTION_12_41(v122, v218);
        v125 = *(v124 - 256);
        OUTLINED_FUNCTION_32_14(v123);
        if (v126)
        {
LABEL_17:
          OUTLINED_FUNCTION_15_26();
          goto LABEL_23;
        }

LABEL_18:
        v129 = v2;
        while (1)
        {
          v2 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          if (v2 >= v16)
          {
            break;
          }

          ++v129;
          if (*(v197 + 8 * v2))
          {
            OUTLINED_FUNCTION_75_4();
LABEL_23:
            v130 = v127 | (v2 << 6);
            v201 = v128;
            v131 = *(v119 + 56);
            v132 = (*(v119 + 48) + 16 * v130);
            v133 = v132[1];
            v202 = *v132;
            v204 = v130;
            if (*(*(v131 + 8 * v130) + 16))
            {
              v200 = v2;
              v216 = MEMORY[0x277D84F90];
              v199 = v133;

              OUTLINED_FUNCTION_89_2();
              OUTLINED_FUNCTION_20_29();
              do
              {
                OUTLINED_FUNCTION_87_4();
                OUTLINED_FUNCTION_63_5();
                v134();
                OUTLINED_FUNCTION_41_12(&v223);
                sub_237C0595C();
                sub_237C05A9C();
                v213 = v135;
                v136 = OUTLINED_FUNCTION_55_8();
                v73(v136);
                v137 = OUTLINED_FUNCTION_13_11();
                v73(v137);
                OUTLINED_FUNCTION_64_4();
                if (v138)
                {
                  OUTLINED_FUNCTION_59_8();
                }

                OUTLINED_FUNCTION_30_19();
              }

              while (!v139);

              v73 = v208;
              OUTLINED_FUNCTION_46_13(v218);
              v2 = v200;
              v16 = v198;
            }

            else
            {
            }

            OUTLINED_FUNCTION_23_29(v219);
            *v141 = v202;
            v141[1] = v140;
            OUTLINED_FUNCTION_76_6();
            if (!v143)
            {
              *(v1 + 16) = v142;
              v125 = v207;
              OUTLINED_FUNCTION_79_5();
              if (v201)
              {
                goto LABEL_17;
              }

              goto LABEL_18;
            }

LABEL_80:
            __break(1u);
            goto LABEL_81;
          }
        }

        OUTLINED_FUNCTION_24_28();
        v173 = *v210;
        v174 = OUTLINED_FUNCTION_36_4();
        v175(v174);
        OUTLINED_FUNCTION_80_0();
        v179 = v125;
LABEL_55:
        __swift_storeEnumTagSinglePayload(v176, v177, v178, v179);
      }

      return;
    case 3u:
      sub_237A28130(v38);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v207);
      return;
    case 4u:
      v58 = *v38;
      v59 = *(v38 + 8);
      v60 = *(v38 + 16);
      v61 = *(v38 + 24);
      v62 = *(v38 + 40);
      *&v212 = *(v38 + 32);
      v222 = v62;
      v63 = *(v38 + 56);
      v211 = *(v38 + 48);
      OUTLINED_FUNCTION_74_6(v63);
      v64 = *(v38 + 72);
      OUTLINED_FUNCTION_35_15(*(v38 + 64));
      v216 = v58;
      v217 = v59;
      v65 = OUTLINED_FUNCTION_38_15();
      sub_2379DBCF4(v65, v66);
      v67 = v210;
      sub_237A70ED4(&v216, v210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
      v68 = OUTLINED_FUNCTION_75_2();
      v214 = xmmword_237C0B660;
      *(v68 + 16) = xmmword_237C0B660;
      OUTLINED_FUNCTION_45_12(v68, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_48_14();
      OUTLINED_FUNCTION_67_6();
      sub_2379F30EC();
      if (v2)
      {
        OUTLINED_FUNCTION_9_44();
        OUTLINED_FUNCTION_70_4();
        v69();

        OUTLINED_FUNCTION_8_21();

        v70 = OUTLINED_FUNCTION_38_15();
        sub_2379DBC9C(v70, v71);
        return;
      }

      v206 = v60;
      v208 = v61;
      v115 = v215;
      OUTLINED_FUNCTION_91_2();
      v116 = OUTLINED_FUNCTION_75_2();
      OUTLINED_FUNCTION_25_26(v116);
      *(v117 + 32) = MEMORY[0x277D837D0];
      sub_2379F30EC();
      v118 = v67;

      if (v115)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_25_26(inited);
        *(v181 + 32) = v211;
        *(v181 + 40) = v115;

        OUTLINED_FUNCTION_33_20();
        sub_2379F2DA4();
        swift_setDeallocating();
        sub_237B9082C();
      }

      v185 = v209;
      if (v64)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        v186 = swift_initStackObject();
        OUTLINED_FUNCTION_25_26(v186);
        *(v187 + 32) = v185;
        *(v187 + 40) = v64;

        OUTLINED_FUNCTION_40_14();
        sub_2379F2DA4();
        swift_setDeallocating();
        sub_237B9082C();
      }

      if (v115)
      {
        OUTLINED_FUNCTION_20_13();
        sub_237C05C8C();
      }

      if (v64)
      {
        OUTLINED_FUNCTION_18_33();
        sub_237C05C8C();
      }

      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_50_10();
      sub_237C05C8C();

      OUTLINED_FUNCTION_19_17();
      sub_237C05C8C();
      v191 = OUTLINED_FUNCTION_38_15();
      sub_2379DBC9C(v191, v192);

      v193 = v207;
      (*(v213 + 32))(v205, v118, v207);
      goto LABEL_76;
    case 5u:
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v90 = *(v38 + v89[12] + 8);

      v91 = *(v38 + v89[16] + 8);

      v92 = *(v38 + v89[20] + 8);

      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_64();
      v93 = v207;
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v207);
      OUTLINED_FUNCTION_9_44();
      v97(v38, v93);
      return;
    case 6u:
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
      v99 = (v38 + *(v98 + 48));
      v100 = *v99;
      v101 = v99[1];
      OUTLINED_FUNCTION_36_14(*(v98 + 64));
      v210 = v102;
      v222 = v103;
      OUTLINED_FUNCTION_36_14(*(v104 + 80));
      v206 = v105;
      OUTLINED_FUNCTION_74_6(v106);
      OUTLINED_FUNCTION_36_14(*(v107 + 96));
      v204 = v108;
      *&v214 = v109;
      v110 = v213;
      v111 = v213 + 32;
      v112 = v211;
      OUTLINED_FUNCTION_35_15(*(v213 + 32));
      v113();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
      v114 = OUTLINED_FUNCTION_75_2();
      v212 = xmmword_237C0B660;
      *(v114 + 16) = xmmword_237C0B660;
      OUTLINED_FUNCTION_45_12(v114, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_67_6();
      sub_2379F30EC();
      if (v2)
      {
        (*(v110 + 8))(v112, v207);

        OUTLINED_FUNCTION_8_21();
      }

      else
      {
        v202 = v100;
        v203 = v111;
        v208 = v101;
        v168 = v214;
        v169 = v215;
        OUTLINED_FUNCTION_91_2();
        v170 = OUTLINED_FUNCTION_75_2();
        OUTLINED_FUNCTION_26_22(v170);
        *(v171 + 32) = MEMORY[0x277D837D0];
        sub_2379F30EC();
        v172 = v112;

        if (v169)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
          v182 = swift_initStackObject();
          OUTLINED_FUNCTION_26_22(v182);
          *(v183 + 32) = v206;
          *(v183 + 40) = v169;

          OUTLINED_FUNCTION_33_20();
          sub_2379F2DA4();
          v184 = v209;
          swift_setDeallocating();
          sub_237B9082C();
        }

        else
        {
          v184 = v209;
        }

        v188 = v204;
        if (v168)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
          v189 = swift_initStackObject();
          OUTLINED_FUNCTION_26_22(v189);
          *(v190 + 32) = v188;
          *(v190 + 40) = v168;

          OUTLINED_FUNCTION_40_14();
          sub_2379F2DA4();
          swift_setDeallocating();
          sub_237B9082C();
          v184 = v209;
        }

        if (v169)
        {
          OUTLINED_FUNCTION_20_13();
          sub_237C05C8C();
        }

        if (v168)
        {
          OUTLINED_FUNCTION_18_33();
          sub_237C05C8C();
        }

        OUTLINED_FUNCTION_9_26();
        OUTLINED_FUNCTION_50_10();
        sub_237C05C8C();

        OUTLINED_FUNCTION_19_17();
        sub_237C05C8C();

        v193 = v207;
        v184(v205, v172, v207);
LABEL_76:
        v194 = OUTLINED_FUNCTION_85();
        __swift_storeEnumTagSinglePayload(v194, v195, 1, v193);
      }

      return;
    default:
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
      v211 = *(v40 + 48);
      OUTLINED_FUNCTION_36_14(*(v40 + 64));
      OUTLINED_FUNCTION_77_4(v41, v42);
      OUTLINED_FUNCTION_36_14(v43);
      *&v214 = v44;
      v213 = v45;
      OUTLINED_FUNCTION_36_14(*(v46 + 96));
      *&v212 = v47;
      v207 = v48;
      v50 = (v38 + *(v49 + 112));
      v51 = v50[1];
      v209 = *v50;
      v52 = v206;
      v53 = *(v206 + 32);
      v54 = v222;
      v53(v27, v38, v222);
      v53(v23, v38 + v211, v54);
      v55 = v207;
      OUTLINED_FUNCTION_81_4();
      sub_237B6095C(v27, v23, v215, v51, v214, v213, v212, v55, v205, v209, v51);

      v56 = *(v52 + 8);
      v57 = v222;
      v56(v23, v222);
      v56(v27, v57);
      return;
  }
}

uint64_t sub_237B6095C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v153 = a2;
  v125 = a1;
  v129 = a9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v123 = *(v124 - 8);
  v17 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v122 = &v117 - v18;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  v126 = *(v127 - 8);
  v19 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v137 = &v117 - v20;
  v21 = sub_237C05E5C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v121 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_237C05FAC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v117 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v120 = &v117 - v29;
  v30 = sub_237C05E9C();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v135 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_237C05ADC();
  v142 = *(v33 - 8);
  v143 = v33;
  v34 = *(v142 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v119 = &v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v134 = &v117 - v37;
  v131 = sub_237C05FDC();
  v151 = *(v131 - 8);
  v38 = *(v151 + 8);
  v39 = MEMORY[0x28223BE20](v131);
  v132 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v140 = &v117 - v41;
  v136 = sub_237C05DBC();
  v145 = *(v136 - 8);
  v42 = *(v145 + 64);
  v43 = MEMORY[0x28223BE20](v136);
  v118 = &v117 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v133 = &v117 - v46;
  MEMORY[0x28223BE20](v45);
  v150 = &v117 - v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  v48 = swift_allocObject();
  v141 = xmmword_237C0B670;
  *(v48 + 16) = xmmword_237C0B670;
  *(v48 + 32) = a3;
  *(v48 + 40) = a4;
  *(v48 + 48) = a5;
  *(v48 + 56) = a6;
  v156 = a6;

  if (a8)
  {

    v49 = 3;
    sub_237BC0CB8();
    v48 = v50;
    v50[2] = 3;
    v50[8] = a7;
    v50[9] = a8;
  }

  else
  {
    v49 = 2;
  }

  v139 = a7;
  v149 = a10;
  v130 = v25;
  if (a11)
  {
    v51 = a3;
    v52 = v24;
    v53 = v48;
    v54 = *(v48 + 24);

    if (v49 >= v54 >> 1)
    {
      sub_237BC0CB8();
      v53 = v116;
    }

    *(v53 + 16) = v49 + 1;
    v152 = v53;
    v55 = v53 + 16 * v49;
    *(v55 + 32) = v149;
    *(v55 + 40) = a11;
    v24 = v52;
    a3 = v51;
  }

  else
  {
    v152 = v48;
  }

  v148 = a5;
  v57 = sub_237C0597C() == 1852797802 && v56 == 0xE400000000000000;
  v146 = a8;
  v147 = a11;
  v138 = a4;
  v128 = a3;
  if (v57)
  {
  }

  else
  {
    v58 = sub_237C0929C();

    if ((v58 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8F0, &unk_237C0E228);
      v59 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE68, &qword_237C0C110) - 8);
      v60 = a3;
      v61 = *(*v59 + 72);
      v62 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = v141;
      v64 = (v63 + v62);
      v65 = v59[14];
      *v64 = v60;
      *(v64 + 1) = a4;
      v66 = *MEMORY[0x277CE1920];
      v67 = *(v130 + 104);
      v67(&v64[v65], v66, v24);
      v68 = &v64[v61];
      v69 = v59[14];
      v70 = v156;
      *v68 = v148;
      *(v68 + 1) = v70;
      v67(&v64[v61 + v69], v66, v24);

      v71 = sub_237C085AC();
      v72 = *MEMORY[0x277CE1918];
      v73 = v146;
      v151 = v67;
      if (v146)
      {
        v74 = v120;
        v75 = v72;
        (v67)(v120);
        v76 = v117;
        (*(v130 + 32))(v117, v74, v24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v154 = v71;
        sub_237B4104C(v76, v139, v73, isUniquelyReferenced_nonNull_native);

        v71 = v154;
      }

      else
      {
        v75 = v72;
        v74 = v120;
        v76 = v117;
      }

      v105 = v147;
      if (v147)
      {
        v151(v74, v75, v24);
        (*(v130 + 32))(v76, v74, v24);

        v106 = swift_isUniquelyReferenced_nonNull_native();
        v154 = v71;
        sub_237B4104C(v76, v149, v105, v106);
      }

      (*(v142 + 16))(v119, v153, v143);

      v153 = sub_237B9068C(&unk_284ABFD58);
      sub_237B9068C(&unk_284ABFE18);
      sub_237B9068C(&unk_284ABFE78);
      v151(v74, v75, v24);
      sub_237C05E4C();
      v103 = v118;
      v107 = v144;
      sub_237C05CAC();
      if (v107)
      {
      }

      v102 = v150;
      goto LABEL_30;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D630, &qword_237C143C0);
  v78 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D638, &qword_237C143C8) - 8);
  v79 = *(*v78 + 72);
  v80 = (*(*v78 + 80) + 32) & ~*(*v78 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v141;
  v82 = (v81 + v80);
  v83 = v78[14];
  *v82 = a3;
  *(v82 + 1) = a4;
  v84 = *MEMORY[0x277CE1938];
  v85 = *(v151 + 13);
  v86 = v131;
  v85(&v82[v83], v84, v131);
  v87 = &v82[v79];
  v88 = v86;
  v89 = v156;
  v90 = v78[14];
  *v87 = v148;
  *(v87 + 1) = v89;
  v85(&v87[v90], v84, v86);

  v91 = sub_237C085AC();
  v92 = MEMORY[0x277CE1930];
  v93 = v146;
  if (v146)
  {
    v94 = v140;
    v95 = v85;
    v85(v140, *MEMORY[0x277CE1930], v86);
    v96 = v132;
    (*(v151 + 4))(v132, v94, v88);

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v91;
    sub_237B411FC(v96, v139, v93, v97);

    v98 = v153;
    v91 = v154;
    v99 = v147;
    if (!v147)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v95 = v85;
  v99 = v147;
  v98 = v153;
  v96 = v132;
  if (v147)
  {
LABEL_19:
    v100 = v140;
    v95(v140, *v92, v88);
    (*(v151 + 4))(v96, v100, v88);

    v101 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v91;
    sub_237B411FC(v96, v149, v99, v101);
  }

LABEL_20:
  v102 = v150;
  (*(v142 + 16))(v134, v98, v143);

  sub_237C05E8C();
  v103 = v133;
  v104 = v144;
  sub_237C05CCC();
  if (v104)
  {
  }

LABEL_30:
  v109 = *(v145 + 32);
  v145 += 32;
  v109(v102, v103, v136);
  v110 = v122;
  sub_237C05DEC();
  v154 = 0;
  v155 = 0xE000000000000000;
  sub_2379D9224(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
  v111 = v124;
  sub_237C05EAC();
  v112 = (*(v123 + 8))(v110, v111);
  MEMORY[0x28223BE20](v112);
  sub_2379E20D4(sub_237B62574);

  v113 = v150;
  sub_237C05E1C();
  if (v146)
  {
    sub_237C05C8C();
  }

  if (v147)
  {
    sub_237C05C8C();
  }

  sub_237C05C8C();
  sub_237C05C8C();
  (*(v126 + 8))(v137, v127);
  v114 = v129;
  v115 = v136;
  v109(v129, v113, v136);
  return __swift_storeEnumTagSinglePayload(v114, 0, 1, v115);
}

uint64_t sub_237B61868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v29 - v6;
  v8 = sub_237C0596C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_237C05ADC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - v19;
  v21 = *a1;
  v22 = a1[1];
  v29[1] = v21;
  (*(v9 + 104))(v12, *MEMORY[0x277CC91D0], v8);
  (*(v14 + 16))(v7, v30, v13);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);

  sub_237C05ABC();
  sub_237C0595C();
  v23 = *(v14 + 8);
  v23(v20, v13);
  v24 = sub_237C05A9C();
  v26 = v25;
  result = (v23)(v18, v13);
  v28 = v31;
  *v31 = v24;
  v28[1] = v26;
  return result;
}

uint64_t sub_237B61AE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_237C05ADC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  sub_237C05A2C();
  v11 = sub_237C05A9C();
  v13 = v12;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

void MLHandActionClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v46 = a2;
  v12 = type metadata accessor for MLHandActionClassifier.DataSource();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  sub_237AB6644(v5, v17 - v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v40 = a5;
    v41 = a1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
    v31 = (v18 + v30[12]);
    v24 = *v31;
    v25 = v31[1];
    v32 = *(v18 + v30[16] + 8);

    v33 = *(v18 + v30[20] + 8);

    v34 = sub_237C05DBC();
    OUTLINED_FUNCTION_4(v34);
    (*(v35 + 8))(v18);
LABEL_5:
    MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(&v44);
    if (v7)
    {
    }

    else
    {
      v38 = v44;
      v39 = v45;
      sub_237B03618(v46, v43);
      sub_237B320AC(v41, v43, v38, v39, v24, v25, a3, a4, v40);
      OUTLINED_FUNCTION_90_4();
      sub_237B07C38(v42);

      sub_2379DBC9C(v38, v39);
    }

    return;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v40 = a5;
    v41 = a1;
    v20 = *v18;
    v21 = a3;
    v22 = a4;
    v23 = *(v18 + 8);
    v24 = *(v18 + 16);
    v25 = *(v18 + 24);
    v26 = *(v18 + 40);
    v27 = *(v18 + 56);

    v28 = OUTLINED_FUNCTION_7_0();
    a4 = v22;
    a3 = v21;
    v7 = v6;
    sub_2379DBC9C(v28, v29);
    goto LABEL_5;
  }

  MLHandActionClassifier.DataSource.videosWithAnnotations()(&v44);
  if (!v6)
  {
    v36 = v44;
    v37 = v45;
    sub_237B03618(v46, v43);
    sub_237B064E0(a1, v43, v36, v37, a3, a4, a5);
    OUTLINED_FUNCTION_90_4();
    sub_237B07C38(v42);
    sub_2379DBC9C(v36, v37);
  }

  sub_237A28130(v18);
}

uint64_t type metadata accessor for MLHandActionClassifier.DataSource()
{
  result = qword_27DE9D5F8;
  if (!qword_27DE9D5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B61EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237B05D94(*a1);
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

uint64_t sub_237B61F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237B61F6C()
{
  sub_237B62030();
  if (v0 <= 0x3F)
  {
    sub_237A6191C();
    if (v1 <= 0x3F)
    {
      sub_237B6215C(319);
      if (v2 <= 0x3F)
      {
        sub_237B62250();
        if (v3 <= 0x3F)
        {
          sub_237B62370();
          if (v4 <= 0x3F)
          {
            sub_237B62460();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_237B62030()
{
  if (!qword_27DE9D608)
  {
    MEMORY[0x28223BE20](0);
    sub_237C05ADC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B210, &unk_237C11B00);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D608);
    }
  }
}

uint64_t sub_237B6215C(uint64_t a1)
{
  v1 = qword_27DE9D610;
  if (!qword_27DE9D610)
  {
    MEMORY[0x28223BE20](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v1 = TupleTypeMetadata;
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D610);
    }
  }

  return v1;
}

void sub_237B62250()
{
  if (!qword_27DE9D618)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B210, &unk_237C11B00);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D618);
    }
  }
}

void sub_237B62370()
{
  if (!qword_27DE9D620)
  {
    MEMORY[0x28223BE20](0);
    sub_237C05DBC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D620);
    }
  }
}

void sub_237B62460()
{
  if (!qword_27DE9D628)
  {
    MEMORY[0x28223BE20](0);
    sub_237C05DBC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B210, &unk_237C11B00);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D628);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_71()
{
  result = *(v0 - 296);
  v2 = *(v0 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_70@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_43()
{
  sub_2379DBCF4(*(v0 - 104), 0);

  return sub_237B6C588();
}

uint64_t OUTLINED_FUNCTION_12_41@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);
  v6 = *(v2 + 64);
  *(v4 - 504) = v2 + 64;
  *(v2 + 32);
  *(v4 - 376) = v3 + 16;
  *(v4 - 368) = v3 + 8;
  *(v4 - 472) = result + 64;
  return result;
}

void OUTLINED_FUNCTION_20_29()
{
  v3 = v0;
  v4 = *(v2 - 200);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(v2 - 464) = v3;
  *(v2 - 352) = *(v1 + 72);
  *(v2 - 360) = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_21_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237AB28BC(v9 - 296, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, a9);
}

id OUTLINED_FUNCTION_22_26(id a1, char a2)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;
  *(v2 - 296) = a1;
  *(v2 - 288) = a2;

  return sub_2379DBCF4(a1, a2);
}

void OUTLINED_FUNCTION_23_29(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(*(v2 - 472) + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
  v4 = *(v1 + 48) + 16 * v3;
}

uint64_t OUTLINED_FUNCTION_24_28()
{
  v3 = *(v1 - 408);

  return sub_237B5DD44(v0, 0x7461506F65646976, 0xE900000000000068, v3);
}

__n128 OUTLINED_FUNCTION_25_26(__n128 *a1)
{
  result = *(v1 - 320);
  a1[1] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_26_22(__n128 *a1)
{
  result = *(v1 - 352);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_30_19()
{
  *(v2 + 16) = v0;
  v6 = v2 + 16 * v3;
  v7 = *(v5 - 328);
  *(v6 + 32) = v4;
  *(v6 + 40) = v7;
  v8 = v1 + *(v5 - 352);
}

uint64_t OUTLINED_FUNCTION_32_14(uint64_t result)
{
  *(v4 - 384) = v3;
  *(v4 - 480) = v2;
  *(v4 - 488) = result;
  *(v4 - 496) = v1;
  return result;
}

void OUTLINED_FUNCTION_36_14(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v4 = *v2;
  v3 = v2[1];
}

void OUTLINED_FUNCTION_46_13(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 480);
  v4 = *(v1 - 488);
}

void OUTLINED_FUNCTION_47_14(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v4 = *v2;
  v3 = v2[1];
}

void OUTLINED_FUNCTION_58_8()
{
  v3 = *(v1 - 288);

  sub_2379DBC9C(v0, v3);
}

void OUTLINED_FUNCTION_59_8()
{

  sub_237AC8A74();
}

void OUTLINED_FUNCTION_60_10()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  sub_2379DBC9C(v2, v3);
}

void OUTLINED_FUNCTION_64_4()
{
  *(v1 - 200) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_65_5()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_6()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 256) = v2;
  *(v4 - 368) = a2;
  v5 = *(result + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  result = *(v0 - 104);
  v2 = *(v0 - 96);
  return result;
}

void OUTLINED_FUNCTION_89_2()
{

  sub_237AC8A74();
}

void *OUTLINED_FUNCTION_90_4()
{

  return memcpy((v0 + 24), (v0 + 144), 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_91_2()
{
}

uint64_t OUTLINED_FUNCTION_92_4()
{
  v2 = *(v0 - 384);
}

uint64_t MLPhase.rawValue.getter()
{
  result = 0x696C616974696E69;
  switch(*v0)
  {
    case 1:
      v2 = 0x636172747865;
      goto LABEL_6;
    case 2:
      result = 0x676E696E69617274;
      break;
    case 3:
      v2 = 0x61756C617665;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      break;
    case 4:
      result = 0x636E657265666E69;
      break;
    default:
      return result;
  }

  return result;
}

CreateML::MLPhase_optional __swiftcall MLPhase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_237C0916C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_237B62CB0()
{
  result = qword_27DE9D640;
  if (!qword_27DE9D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D640);
  }

  return result;
}

uint64_t sub_237B62D28@<X0>(uint64_t *a1@<X8>)
{
  result = MLPhase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MLPhase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x237B62F54);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237B62F8C()
{
  result = qword_27DE9D648;
  if (!qword_27DE9D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D648);
  }

  return result;
}

void sub_237B6301C()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v3 = OUTLINED_FUNCTION_0(v2);
  v75 = v4;
  v76 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v74 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  v10 = OUTLINED_FUNCTION_0(v9);
  v77 = v11;
  v78 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  v83 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v17 = OUTLINED_FUNCTION_0(v16);
  v79 = v18;
  v80 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_54();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B070, &qword_237C0C9E0);
  OUTLINED_FUNCTION_0(v22);
  v82 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = &v73 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  OUTLINED_FUNCTION_0(v29);
  v81 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  v35 = &v73 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  OUTLINED_FUNCTION_0(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_36_0();
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v42);
    OUTLINED_FUNCTION_1_72();
    *(v43 - 16) = v0;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v44, v45);
    OUTLINED_FUNCTION_5_56();
    v46 = *(v38 + 8);
    v47 = v0;
    v48 = v36;
LABEL_3:
    v46(v47, v48);
    goto LABEL_6;
  }

  v49 = v83;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v50 = sub_237C0601C();
    MEMORY[0x28223BE20](v50);
    OUTLINED_FUNCTION_1_72();
    *(v51 - 16) = v35;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v52, v53);
    v54 = OUTLINED_FUNCTION_9_45();
    v55(v54);
    goto LABEL_6;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x28223BE20](v56);
    OUTLINED_FUNCTION_1_72();
    *(v57 - 16) = v28;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v58, v59);
    v47 = OUTLINED_FUNCTION_10_41();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v60);
    OUTLINED_FUNCTION_1_72();
    *(v61 - 16) = v1;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v62, v63);
    OUTLINED_FUNCTION_5_56();
    (*(v79 + 8))(v1, v80);
  }

  else if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x28223BE20](v64);
    OUTLINED_FUNCTION_1_72();
    *(v65 - 16) = v49;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v66, v67);
    (*(v77 + 8))(v49, v78);
  }

  else if (swift_dynamicCastMetatype())
  {
    v68 = v74;
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v69);
    OUTLINED_FUNCTION_1_72();
    *(v70 - 16) = v68;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v71, v72);
    OUTLINED_FUNCTION_5_56();
    (*(v75 + 8))(v68, v76);
  }

LABEL_6:
  OUTLINED_FUNCTION_150();
}

void sub_237B635F0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v3 = OUTLINED_FUNCTION_0(v2);
  v75 = v4;
  v76 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v74 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  v10 = OUTLINED_FUNCTION_0(v9);
  v77 = v11;
  v78 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  v83 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v17 = OUTLINED_FUNCTION_0(v16);
  v79 = v18;
  v80 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_54();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B070, &qword_237C0C9E0);
  OUTLINED_FUNCTION_0(v22);
  v82 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = &v73 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  OUTLINED_FUNCTION_0(v29);
  v81 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  v35 = &v73 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  OUTLINED_FUNCTION_0(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_36_0();
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v42);
    OUTLINED_FUNCTION_1_72();
    *(v43 - 16) = v0;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v44, v45);
    OUTLINED_FUNCTION_5_56();
    v46 = *(v38 + 8);
    v47 = v0;
    v48 = v36;
LABEL_3:
    v46(v47, v48);
    goto LABEL_6;
  }

  v49 = v83;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v50 = sub_237C0601C();
    MEMORY[0x28223BE20](v50);
    OUTLINED_FUNCTION_1_72();
    *(v51 - 16) = v35;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v52, v53);
    v54 = OUTLINED_FUNCTION_9_45();
    v55(v54);
    goto LABEL_6;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x28223BE20](v56);
    OUTLINED_FUNCTION_1_72();
    *(v57 - 16) = v28;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v58, v59);
    v47 = OUTLINED_FUNCTION_10_41();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v60);
    OUTLINED_FUNCTION_1_72();
    *(v61 - 16) = v1;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v62, v63);
    OUTLINED_FUNCTION_5_56();
    (*(v79 + 8))(v1, v80);
  }

  else if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v64);
    OUTLINED_FUNCTION_1_72();
    *(v65 - 16) = v49;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v66, v67);
    OUTLINED_FUNCTION_5_56();
    (*(v77 + 8))(v49, v78);
  }

  else if (swift_dynamicCastMetatype())
  {
    v68 = v74;
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x28223BE20](v69);
    OUTLINED_FUNCTION_1_72();
    *(v70 - 16) = v68;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v71, v72);
    (*(v75 + 8))(v68, v76);
  }

LABEL_6:
  OUTLINED_FUNCTION_150();
}

void sub_237B63BC4(uint64_t a1@<X8>)
{
  v39 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0(v3);
  v37 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  OUTLINED_FUNCTION_0(v8);
  v38 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_54();
  sub_237C05FFC();
  if (!swift_dynamicCastMetatype())
  {
    v36 = v17;
    v22 = v38;
    if (swift_dynamicCastMetatype())
    {
      sub_237C05FEC();
      sub_237C05F6C();
      (*(v36 + 8))(v2, v15);
    }

    else if (swift_dynamicCastMetatype())
    {
      sub_237C05FEC();
      sub_237C05F6C();
      (*(v22 + 8))(v14, v8);
    }

    else if (swift_dynamicCastMetatype())
    {
      sub_237C05FEC();
      sub_237C05F6C();
      (*(v37 + 8))(v1, v3);
    }

    else
    {
      v23 = sub_237C0600C();
      v25 = v24;
      sub_237C0602C();
      sub_237ADFA70();
      v26 = sub_237C08B3C();
      v27 = MEMORY[0x277D84F90];
      if (v26)
      {
        v28 = v26;
        v37 = v25;
        v38 = v23;
        v45 = MEMORY[0x277D84F90];
        sub_237AC8A54();
        v27 = v45;
        sub_237C08B2C();
        if (v28 < 0)
        {
          __break(1u);
          return;
        }

        do
        {
          v29 = sub_237C08B9C();
          sub_2379F6D68(v30, v42);
          v29(&v43, 0);
          sub_2379F6D68(v42, &v43);
          if (v44)
          {
            sub_2379DAD24(&v43, v41);
            sub_2379FED88(v41, v40);
            v31 = sub_237C0874C();
            v33 = v32;
            __swift_destroy_boxed_opaque_existential_1(v41);
            sub_237A286E0(v42);
          }

          else
          {
            sub_237A286E0(v42);
            v31 = 0;
            v33 = 0;
          }

          v45 = v27;
          v34 = *(v27 + 16);
          if (v34 >= *(v27 + 24) >> 1)
          {
            sub_237AC8A54();
            v27 = v45;
          }

          *(v27 + 16) = v34 + 1;
          v35 = v27 + 16 * v34;
          *(v35 + 32) = v31;
          *(v35 + 40) = v33;
          sub_237C08B6C();
          --v28;
        }

        while (v28);
      }

      *&v43 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAD8, &qword_237C0E680);
      sub_2379D9224(&qword_27DE9BAE0, &qword_27DE9BAD8, &qword_237C0E680);
      sub_237C05EFC();
    }

    OUTLINED_FUNCTION_150();
    return;
  }

  OUTLINED_FUNCTION_150();

  sub_237C05FEC();
}

uint64_t sub_237B64170@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B580, &qword_237C0D770);
  v7 = OUTLINED_FUNCTION_0(v6);
  v23 = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
  result = sub_237C05ECC();
  if (!v3)
  {
    sub_237C05F0C();
    v20 = v23;
    (*(v23 + 16))(v13, v18, v6);
    sub_2379D9224(&qword_27DE9D650, &qword_27DE9B580, &qword_237C0D770);
    sub_237C05EFC();
    sub_237C05EBC();
    v21 = *(v20 + 8);
    v21(v16, v6);
    return (v21)(v18, v6);
  }

  return result;
}

uint64_t sub_237B643D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_237B64390();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_237B64404@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_237C08AAC();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_237B64438@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_237C08A6C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_237B6446C(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 8 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B6453C(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 8 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B6460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_8_40(a1, a2, a3, a4, a5);
  result = sub_237C05F1C();
  *v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (result)
    {
      v10 = 0;
      v11 = *v6;
      do
      {
        result = OUTLINED_FUNCTION_14_32();
        v12 = v13;
        if (v14)
        {
          v12 = NAN;
        }

        *(v11 + 8 * v10) = v12;
        v10 = v7;
      }

      while (v9 != v7);
    }
  }

  return result;
}

uint64_t sub_237B646AC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 8 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B6477C(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 8 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B64848(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 4 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B64918(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 4 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B649E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_8_40(a1, a2, a3, a4, a5);
  result = sub_237C05F1C();
  *v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (result)
    {
      v10 = 0;
      v11 = *v6;
      do
      {
        result = OUTLINED_FUNCTION_14_32();
        v12 = v13;
        if (v14)
        {
          v12 = NAN;
        }

        *(v11 + 4 * v10) = v12;
        v10 = v7;
      }

      while (v9 != v7);
    }
  }

  return result;
}

uint64_t sub_237B64A88(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 4 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B64B54(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 4 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B64C40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v4 = sub_237C0873C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[1])
  {
    goto LABEL_5;
  }

  v10 = *a1;
  sub_237C0872C();
  v11 = sub_237C086FC();
  v13 = v12;
  result = (*(v5 + 8))(v9, v4);
  if (v13 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v14 = objc_opt_self();
  v15 = sub_237C05B6C();
  v21[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v21];

  if (!v16)
  {
    v19 = v21[0];
    sub_237C0593C();

    swift_willThrow();
    result = sub_237A80F30(v11, v13);
    goto LABEL_6;
  }

  v17 = v21[0];
  sub_237C08DFC();
  sub_237A80F30(v11, v13);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
  }

LABEL_6:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_237B64E6C@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = result[1];
  if (v3 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v4 = *result;
  v5 = objc_opt_self();
  sub_237A2C2B0(v4, v3);
  v6 = sub_237C05B6C();
  v11[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v11];

  if (!v7)
  {
    v9 = v11[0];
    sub_237C0593C();

    swift_willThrow();
    result = sub_237A80F30(v4, v3);
    goto LABEL_6;
  }

  v8 = v11[0];
  sub_237C08DFC();
  sub_237A80F30(v4, v3);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_4:
    *a2 = 0;
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237B65000(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_237C0898C();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v7[1] = v4;
  v8 = 0;
  v7[0] = v5 + 32;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return sub_237C05F9C();
}

uint64_t type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData()
{
  result = qword_27DE9D658;
  if (!qword_27DE9D658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B65378@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  sub_237A65C40(v3, v18 - v17);
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
        JUMPOUT(0x237B655CCLL);
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

uint64_t sub_237B655DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v31 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v35 = (v34 - v33);
  sub_237A65C40(v57, v34 - v33);
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

float MLFewShotSoundClassifier.ModelParameters.lossParameters.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = result;
  return result;
}

void MLFewShotSoundClassifier.ModelParameters.LossParameters.init(gamma:epsilon:alpha:)(float *a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

float (*MLFewShotSoundClassifier.ModelParameters.learningRate.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_237B65BA8;
}

float sub_237B65BA8(float *a1)
{
  result = a1[2];
  *(*a1 + 8) = result;
  return result;
}

void *(*MLFewShotSoundClassifier.ModelParameters.batchSize.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_237B65BE8;
}

uint64_t (*MLFewShotSoundClassifier.ModelParameters.lossParamters.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 16) = *(v1 + 32);
  return sub_237B666A0;
}

float sub_237B65C28@<S0>(void (*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(&v4);
  result = v5;
  *a2 = v4;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_237B65C70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 2);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

float MLFewShotSoundClassifier.ModelParameters.lossParameters.setter(uint64_t a1)
{
  result = *(a1 + 8);
  *(v1 + 24) = *a1;
  *(v1 + 32) = result;
  return result;
}

float (*MLFewShotSoundClassifier.ModelParameters.lossParameters.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 16) = *(v1 + 32);
  return sub_237B65CFC;
}

float sub_237B65CFC(float *a1)
{
  v1 = *a1;
  result = a1[4];
  *(v1 + 24) = *(a1 + 1);
  *(v1 + 32) = result;
  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.hallucinator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLFewShotSoundClassifier.ModelParameters() + 32);
  v4 = sub_237C05ADC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MLFewShotSoundClassifier.ModelParameters()
{
  result = qword_27DE9D668;
  if (!qword_27DE9D668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.hallucinator.setter()
{
  v2 = *(OUTLINED_FUNCTION_0_76() + 32);
  v3 = sub_237C05ADC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1 + v2, v0, v3);
}

uint64_t MLFewShotSoundClassifier.ModelParameters.pretrainedModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLFewShotSoundClassifier.ModelParameters() + 36);

  return sub_237A6FAB8(v3, a1);
}

uint64_t MLFewShotSoundClassifier.ModelParameters.pretrainedModel.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_0_76() + 36);

  return sub_237A9DBF0(v0, v2);
}

uint64_t MLFewShotSoundClassifier.ModelParameters.init(maxIterations:batchSize:learningRate:lossParameters:hallucinator:pretrainedModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v14 = *(a3 + 2);
  *(a6 + 8) = 1008981770;
  *(a6 + 16) = 128;
  *(a6 + 24) = 0x33D6BF95461C4000;
  *(a6 + 32) = 0x40000000;
  v15 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters();
  v16 = *(v15 + 36);
  v17 = sub_237C05ADC();
  v18 = *a3;
  __swift_storeEnumTagSinglePayload(a6 + v16, 1, 1, v17);
  *a6 = a1;
  (*(*(v17 - 8) + 32))(a6 + *(v15 + 32), a4, v17);
  result = sub_237A9DBF0(a5, a6 + v16);
  *(a6 + 16) = a2;
  *(a6 + 8) = a7;
  *(a6 + 24) = v18;
  *(a6 + 32) = v14;
  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.init(maxIterations:hallucinator:pretrainedModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0x33D6BF95461C4000;
  *(a4 + 32) = 0x40000000;
  v8 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters();
  v9 = *(v8 + 36);
  v10 = sub_237C05ADC();
  __swift_storeEnumTagSinglePayload(a4 + v9, 1, 1, v10);
  *a4 = a1;
  (*(*(v10 - 8) + 32))(a4 + *(v8 + 32), a2, v10);
  result = sub_237A9DBF0(a3, a4 + v9);
  *(a4 + 8) = 1008981770;
  *(a4 + 16) = 128;
  *(a4 + 24) = 0x33D6BF95461C4000;
  *(a4 + 32) = 0x40000000;
  return result;
}

uint64_t sub_237B661D4@<X0>(uint64_t *a1@<X8>)
{
  result = MLFewShotSoundClassifier.ModelParameters.batchSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B662EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C05ADC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 32);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
    v8 = *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
}

uint64_t sub_237B663A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_237C05ADC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 32);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
    v10 = *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

void sub_237B66458()
{
  sub_237C05ADC();
  if (v0 <= 0x3F)
  {
    sub_237B66500();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237B66500()
{
  if (!qword_27DE9C270[0])
  {
    sub_237C05ADC();
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, qword_27DE9C270);
    }
  }
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s15ModelParametersV14LossParametersVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15ModelParametersV14LossParametersVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

_BYTE *_s10__DefaultsVwst_3(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x237B66664);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_76()
{

  return type metadata accessor for MLFewShotSoundClassifier.ModelParameters();
}

uint64_t sub_237B666C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v33 - v7;
  v9 = sub_237C060DC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v33 - v19;
  v21 = sub_237C0610C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v28 = v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237AF1A38(a1, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_237C0B660;
    *(v29 + 32) = *(a2 + 16);
    sub_237C0611C();
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
    {
      sub_237A7ECA4(v20);
    }
  }

  else
  {
    (*(v24 + 32))(v28, v20, v21);
  }

  (*(v12 + 104))(v16, *MEMORY[0x277D2CCC8], v9);
  v30 = sub_237C0616C();
  v31 = __swift_storeEnumTagSinglePayload(v8, 1, 1, v30);
  MEMORY[0x28223BE20](v31);
  v33[-2] = a2;
  return sub_237C066EC();
}

void sub_237B669B8(float *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4 >> 60)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_237B66A04((a3 + 32), a3 + 32 + 8 * v4, a1, a2);
  if (v3)
  {
LABEL_5:

    __break(1u);
  }
}

void sub_237B66A04(const double *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a4 - a3) / 4;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    if ((v4 & 0x8000000000000000) == 0)
    {
      __break(1u);
    }

    goto LABEL_12;
  }

  v4 = 0;
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= (a2 - a1) / 8)
  {
    v5 = (a2 - a1) / 8;
  }

  else
  {
    v5 = v4;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a3)
  {
    vDSP_vdpsp(a1, 1, a3, 1, v5);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_237B66A98(uint64_t a1, uint64_t a2)
{
  if (qword_27DE9A6C0 != -1)
  {
    swift_once();
  }

  v4 = sub_237B66C38(a1, a2, 0x6C65646F6D6C6DLL, 0xE700000000000000, qword_27DEACEA8);
  if (v4)
  {
    v5 = v4;
    sub_237C05A7C();
  }

  else
  {
    MEMORY[0x2383DC360](a1, a2);
    sub_2379E8AF0();
    swift_allocError();
    *v6 = 0xD000000000000015;
    *(v6 + 8) = 0x8000000237C1D6D0;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0;
    swift_willThrow();
  }
}

id sub_237B66BE0()
{
  type metadata accessor for BundleUtilities.BundleWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27DEACEA8 = result;
  return result;
}

id sub_237B66C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_237C086BC();
  v7 = sub_237C086BC();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_237B66CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (sub_237C0929C() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 2;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_237B66D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v202 = a7;
  v201 = a6;
  v197 = a5;
  v196 = a4;
  v211 = a3;
  v210 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D218, &qword_237C13300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_21_3(&v179 - v11);
  v193 = sub_237C080BC();
  v12 = OUTLINED_FUNCTION_0(v193);
  v191 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v16);
  v203 = sub_237C0813C();
  v17 = OUTLINED_FUNCTION_0(v203);
  v198 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v21);
  v219 = sub_237C0809C();
  v22 = OUTLINED_FUNCTION_0(v219);
  v215 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_22();
  v218 = v26;
  v207 = sub_237C0803C();
  v27 = OUTLINED_FUNCTION_0(v207);
  v206 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_3(v31);
  v226 = sub_237C080EC();
  v32 = OUTLINED_FUNCTION_0(v226);
  v228 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0_22();
  v225 = v36;
  v208 = sub_237C0816C();
  v37 = OUTLINED_FUNCTION_0(v208);
  v213 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21_3(&v179 - v44);
  v224 = sub_237C080AC();
  v45 = OUTLINED_FUNCTION_0(v224);
  v227 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_18_0();
  v51 = v49 - v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_21_3(&v179 - v53);
  v200 = sub_237C0806C();
  v54 = OUTLINED_FUNCTION_0(v200);
  v199 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18_0();
  v60 = (v58 - v59);
  MEMORY[0x28223BE20](v61);
  v209 = &v179 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D678, &qword_237C145A8);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63 - 8);
  OUTLINED_FUNCTION_18_0();
  v67 = (v65 - v66);
  MEMORY[0x28223BE20](v68);
  v70 = (&v179 - v69);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D680, &qword_237C145B0);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v73);
  v75 = &v179 - v74;
  v76 = sub_237C0811C();
  v77 = OUTLINED_FUNCTION_0(v76);
  v79 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v77);
  v83 = &v179 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = v7;
  sub_237C07FFC();
  if (__swift_getEnumTagSinglePayload(v75, 1, v76) != 1)
  {
    v185 = v79;
    v84 = *(v79 + 32);
    v186 = v76;
    v84(v83, v75, v76);
    v85 = *(sub_237C0810C() + 16);

    if (v85 == 1)
    {
      v179 = v51;
      *&v214 = a1;
      v86 = sub_237C0810C();
      sub_237B3B2F4(v86, v70);

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D470, &unk_237C13BB0);
      v88 = v83;
      if (__swift_getEnumTagSinglePayload(v70, 1, v87) == 1)
      {
        sub_2379F6DD8(v70, &qword_27DE9D678, &qword_237C145A8);
      }

      else
      {
        v90 = *v70;
        v89 = v70[1];
        v91 = v199;
        v92 = v199 + 8;
        v93 = *(v199 + 8);
        v94 = v70 + *(v87 + 48);
        v95 = v200;
        v93(v94, v200);
        v187 = v88;
        v96 = sub_237C0810C();
        sub_237B3B2F4(v96, v67);

        if (__swift_getEnumTagSinglePayload(v67, 1, v87) == 1)
        {

          sub_2379F6DD8(v67, &qword_27DE9D678, &qword_237C145A8);
        }

        else
        {
          v97 = v67[1];

          v98 = *(v91 + 32);
          v98(v60, v67 + *(v87 + 48), v95);
          v98(v209, v60, v95);
          v229 = v90;
          v230 = v89;
          v231 = 0x4C4D65726F43;
          v232 = 0xE600000000000000;
          sub_237B680F8();
          sub_237B6814C();
          if (sub_237C0862C())
          {
            v180 = v90;
            v181 = v89;
            v182 = v93;
            v183 = v92;
            v99 = v228;
            v100 = *(v228 + 104);
            v102 = v225;
            v101 = v226;
            v220 = *MEMORY[0x277D252D8];
            v222 = v100;
            v223 = v228 + 104;
            (v100)(v225);
            v103 = MEMORY[0x277D84F90];
            sub_237C0815C();
            v104 = *(v99 + 8);
            v228 = v99 + 8;
            v221 = v104;
            v104(v102, v101);
            v105 = v214;
            v106 = *(v214 + 16);
            *v205 = v106;
            v107 = *MEMORY[0x277D25278];
            (*(v206 + 104))();
            v108 = v227;
            if (v106)
            {
              v229 = v103;
              sub_237AC8CB4(0, v106, 0);
              v109 = v229;
              LODWORD(v217) = *MEMORY[0x277D252A0];
              v216 = (v215 + 104);
              v110 = (v215 + 8);
              v215 = v108 + 32;
              v111 = (v105 + 40);
              v214 = xmmword_237C0B660;
              v112 = v179;
              v113 = v225;
              do
              {
                v114 = *(v111 - 1);
                v115 = *v111;
                v116 = v226;
                v222(v113, v220, v226);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
                v117 = swift_allocObject();
                *(v117 + 16) = v214;
                *(v117 + 32) = v114;
                *(v117 + 40) = v115;
                v118 = v218;
                v119 = v219;
                *v218 = v117;
                (*v216)(v118, v217, v119);
                swift_bridgeObjectRetain_n();
                sub_237C0808C();

                (*v110)(v118, v119);
                v221(v113, v116);
                v229 = v109;
                v121 = *(v109 + 16);
                v120 = *(v109 + 24);
                if (v121 >= v120 >> 1)
                {
                  sub_237AC8CB4(v120 > 1, v121 + 1, 1);
                  v109 = v229;
                }

                *(v109 + 16) = v121 + 1;
                v122 = v224;
                (*(v227 + 32))(v109 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v121, v112, v224);
                v111 += 2;
                --v106;
              }

              while (v106);
            }

            else
            {
              v109 = v103;
              v122 = v224;
            }

            v229 = v109;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D698, &qword_237C145B8);
            sub_237B681A0();
            v123 = v204;
            v124 = v205;
            sub_237C0807C();

            (*(v206 + 8))(v124, v207);
            v125 = *(v213 + 8);
            v213 += 8;
            v219 = v125;
            v125(v123, v208);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D6A8, &qword_237C145C0);
            v126 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D6B0, &qword_237C145C8) - 8);
            v127 = *(*v126 + 72);
            v128 = (*(*v126 + 80) + 32) & ~*(*v126 + 80);
            v129 = swift_allocObject();
            v217 = xmmword_237C0B670;
            *(v129 + 16) = xmmword_237C0B670;
            v130 = v129 + v128;
            v218 = v126[14];
            strcpy(v130, "probabilities");
            *(v130 + 14) = -4864;
            v131 = v190;
            v132 = v211;
            *v190 = v210;
            v131[1] = v132;
            v133 = *(v191 + 104);
            v134 = v193;
            v133(v131, *MEMORY[0x277D252B0], v193);

            sub_237C080CC();
            v135 = (v130 + v127);
            v136 = v126[14];
            *v135 = 0x73657373616C63;
            v135[1] = 0xE700000000000000;
            (*(v227 + 16))(v131, v212, v122);
            v133(v131, *MEMORY[0x277D252B8], v134);
            sub_237C080CC();
            sub_237C080DC();
            v218 = sub_237C085AC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D6B8, &qword_237C145D0);
            v137 = *(sub_237C0802C() - 8);
            v216 = *(v137 + 72);
            v138 = (*(v137 + 80) + 32) & ~*(v137 + 80);
            v139 = swift_allocObject();
            v215 = v139;
            *(v139 + 16) = v217;
            *&v217 = v139 + v138;
            v140 = v225;
            v141 = v226;
            v142 = v220;
            v143 = v222;
            v222(v225, v220, v226);

            sub_237C0815C();
            v144 = v221;
            v221(v140, v141);
            sub_237C0801C();
            v143(v140, v142, v141);
            v145 = v197;

            v146 = v192;
            sub_237C0815C();
            v144(v140, v141);
            v143(v140, *MEMORY[0x277D252E8], v141);
            v75 = v194;
            sub_237C0815C();
            v144(v140, v141);
            sub_237C0814C();
            v147 = v208;
            v148 = v219;
            v219(v75, v208);
            v149 = v147;
            v150 = v145;
            v148(v146, v149);
            v151 = v196;
            sub_237C0801C();
            v152 = v195;
            sub_237C0812C();
            v153 = v209;
            sub_237C0804C();
            OUTLINED_FUNCTION_7_44();
            sub_237A9D134();
            v154 = OUTLINED_FUNCTION_6_55();
            sub_237A9D2C8(v154);
            OUTLINED_FUNCTION_5_57();
            v155 = v198;
            (*(v198 + 16))(v156 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v145, v152, v203);
            v157 = OUTLINED_FUNCTION_8_41();
            (v148)(v157);
            v158 = v211;

            sub_237C0805C();
            OUTLINED_FUNCTION_7_44();
            v160 = sub_237B68204(v159, v210, v158);
            v161 = *(*v153 + 16);
            if (v161 >= v160)
            {
              sub_237B68394(v160, v161);
              v162 = OUTLINED_FUNCTION_8_41();
              (v148)(v162);
              v163 = v202;

              sub_237C0805C();
              OUTLINED_FUNCTION_7_44();
              sub_237A9D104();
              v164 = OUTLINED_FUNCTION_6_55();
              sub_237A9D220(v164);
              OUTLINED_FUNCTION_5_57();
              *(v165 + 32) = v201;
              *(v165 + 40) = v163;
              v166 = OUTLINED_FUNCTION_8_41();
              (v148)(v166);

              sub_237C0805C();
              OUTLINED_FUNCTION_7_44();
              sub_237A9D104();
              v167 = OUTLINED_FUNCTION_6_55();
              sub_237A9D220(v167);
              OUTLINED_FUNCTION_5_57();
              *(v168 + 32) = v151;
              *(v168 + 40) = v150;
              v169 = OUTLINED_FUNCTION_8_41();
              (v148)(v169);
              v170 = v188;
              v171 = v200;
              (*(v199 + 16))(v188, v153, v200);
              __swift_storeEnumTagSinglePayload(v170, 0, 1, v171);
              v172 = v187;
              sub_237C080FC();
              OUTLINED_FUNCTION_7_44();
              sub_237B19E54(v170, v180, v181);
              v173 = OUTLINED_FUNCTION_8_41();
              (v148)(v173);
              v174 = v185;
              v175 = v184;
              v176 = v186;
              (*(v185 + 16))(v184, v172, v186);
              __swift_storeEnumTagSinglePayload(v175, 0, 1, v176);
              sub_237C0800C();
              (*(v155 + 8))(v152, v203);
              (*(v227 + 8))(v212, v224);
              v182(v153, v171);
              return (*(v174 + 8))(v172, v176);
            }

            __break(1u);
            goto LABEL_16;
          }
        }
      }
    }

    v229 = 0;
    v230 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003BLL, 0x8000000237C1D750);
    sub_237C0810C();
    v178 = sub_237C085CC();
    MEMORY[0x2383DC360](v178);

    goto LABEL_21;
  }

LABEL_16:
  sub_2379F6DD8(v75, &qword_27DE9D680, &qword_237C145B0);
LABEL_21:
  result = sub_237C090DC();
  __break(1u);
  return result;
}