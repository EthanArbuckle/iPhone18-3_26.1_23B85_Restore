void destroy for DictationTranscriber.ContentHint.HintCase(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

void **assignWithCopy for DictationTranscriber.ContentHint.HintCase(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = v4;
      v6 = v4;
      return a1;
    }

LABEL_7:
    *a1 = v4;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    v4 = *a2;
    goto LABEL_7;
  }

  *a1 = v4;
  v5 = v4;

  return a1;
}

void **assignWithTake for DictationTranscriber.ContentHint.HintCase(void **a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    goto LABEL_6;
  }

  if (v4 < 0xFFFFFFFF)
  {

LABEL_6:
    *a1 = v4;
    return a1;
  }

  *a1 = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for DictationTranscriber.ContentHint.HintCase(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DictationTranscriber.ContentHint.HintCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1AC63765C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1AC637674(void *result, int a2)
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

unint64_t sub_1AC6376A8()
{
  result = qword_1EB56C420;
  if (!qword_1EB56C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C420);
  }

  return result;
}

unint64_t sub_1AC637700()
{
  result = qword_1EB56C428;
  if (!qword_1EB56C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C428);
  }

  return result;
}

uint64_t sub_1AC637754(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return OUTLINED_FUNCTION_39();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AC6377CC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1AC79FB18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_1AC63788C(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v7 = OUTLINED_FUNCTION_74_0();
      MEMORY[0x1B26E94C0](v7);
      sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    OUTLINED_FUNCTION_74_0();
    if (sub_1AC7A08C8() == *(a4 + 36))
    {
      OUTLINED_FUNCTION_74_0();
      sub_1AC7A08D8();
      swift_dynamicCast();
      v4 = v15;
      v8 = *(a4 + 40);
      v9 = sub_1AC7A0748();
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1AC7A0758();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1AC637A8C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1AC7A0868();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1AC637ACC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1AC637B1C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AC637C7C()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v0;
}

uint64_t sub_1AC637E08()
{
  OUTLINED_FUNCTION_50_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_39();
  v7(v6);
  return v0;
}

uint64_t sub_1AC637E98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_3(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

void OUTLINED_FUNCTION_86_2()
{
  v2 = *(v0 + 504);

  static TranscriptionToken.allTokensString(from:ipa:attributes:)();
}

uint64_t OUTLINED_FUNCTION_115_1(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_1AC638088()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1AC79FC78();
  v1[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_126();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[11] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_126();
  v12 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC638188()
{
  v1 = v0[7];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[13];
    v3 = v0[6];
    v4 = v0[5];
    v5 = OUTLINED_FUNCTION_140(v0[7]);
    OUTLINED_FUNCTION_83_2(v5);
    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v6 = OUTLINED_FUNCTION_63();
    v7 = sub_1AC5C6DD8(v6);
    if (!v2)
    {
      v9 = nullsub_1(v7, v8);
      v11 = nullsub_1(v9, v10);
      nullsub_1(v11, v12);
      v25 = v0[10];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7D38);
      v26 = swift_task_alloc();
      v0[14] = v26;
      *v26 = v0;
      v26[1] = sub_1AC638360;
      v27 = v0[10];
      OUTLINED_FUNCTION_31_0(v0[7]);
      OUTLINED_FUNCTION_174();

      __asm { BR              X3 }
    }

    v13 = OUTLINED_FUNCTION_59_1();
    v14(v13);
    v15 = v0[4];

    v16 = v0[13];
    v17 = v0[10];

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_174();

    __asm { BRAA            X1, X16 }
  }

  v20 = v0[7];
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_174();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1AC638360()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  v4[15] = v0;

  if (!v0)
  {
    v4[16] = v1;
  }

  v10 = v4[4];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC638474()
{
  OUTLINED_FUNCTION_72();
  v1 = OUTLINED_FUNCTION_59_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_11_5();
  v4(v3);

  OUTLINED_FUNCTION_82();
  v6 = *(v0 + 128);

  return v5(v6);
}

uint64_t sub_1AC638538(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v9 = *v7;
    v10 = v7[1];
    v11 = swift_task_alloc();
    v3[6] = v11;
    *v11 = v3;
    v11[1] = sub_1AC6386B0;

    return sub_1AC638088();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6386B0()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v0[2];
  OUTLINED_FUNCTION_141();
  *v6 = v7;
  OUTLINED_FUNCTION_66_2(v8, v9);
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_44();

  return v10();
}

uint64_t sub_1AC638828()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 259) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  *(v1 + 258) = v6;
  *(v1 + 48) = v7;
  v8 = sub_1AC79FC78();
  *(v1 + 88) = v8;
  OUTLINED_FUNCTION_22(v8);
  *(v1 + 96) = v9;
  v11 = *(v10 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  *(v1 + 112) = v12;
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_126();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB70, &qword_1AC7A7CB0);
  *(v1 + 128) = v15;
  OUTLINED_FUNCTION_22(v15);
  *(v1 + 136) = v16;
  v18 = *(v17 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_126();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  *(v1 + 152) = v19;
  OUTLINED_FUNCTION_22(v19);
  *(v1 + 160) = v20;
  v22 = *(v21 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_126();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB80, &qword_1AC7A7CC0);
  *(v1 + 176) = v23;
  OUTLINED_FUNCTION_22(v23);
  *(v1 + 184) = v24;
  v26 = *(v25 + 64) + 15;
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB90, &qword_1AC7A7CD0);
  *(v1 + 208) = v27;
  OUTLINED_FUNCTION_22(v27);
  *(v1 + 216) = v28;
  v30 = *(v29 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_126();
  v31 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1AC638AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v17 = v16[27];
  v49 = v16[26];
  v50 = v16[28];
  v18 = v16[23];
  v19 = v16[24];
  v20 = v16[22];
  v47 = v16[21];
  v48 = v16[25];
  v21 = v16[20];
  v46 = v16[19];
  v22 = v16[17];
  v23 = v16[18];
  v24 = v16[16];
  v25 = OUTLINED_FUNCTION_59_1();
  v26(v25);
  v27 = *(v18 + 8);
  v28 = OUTLINED_FUNCTION_77();
  v27(v28);
  v29 = *(v22 + 8);
  v30 = OUTLINED_FUNCTION_60_2();
  v31(v30);
  (*(v21 + 8))(v47, v46);
  (v27)(v48, v20);
  (*(v17 + 8))(v50, v49);
  v32 = v16[30];
  v33 = v16[28];
  v35 = v16[24];
  v34 = v16[25];
  OUTLINED_FUNCTION_37_3();
  v36 = v16[13];

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_54();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, v46, v47, v48, v49, v50, a14, a15, a16);
}

uint64_t sub_1AC638BF4()
{
  result = sub_1AC638C14();
  qword_1ED938618 = result;
  return result;
}

uint64_t sub_1AC638C14()
{
  type metadata accessor for LocalSpeechRecognitionService();
  v0 = sub_1AC79FF68();
  v2 = v1;
  if (qword_1ED9377D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1AC638DB0(v0, v2, 0, qword_1ED938610);

  return v3;
}

uint64_t sub_1AC638DB0(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EF974(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for LocalSpeechRecognitionService();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC638E38()
{
  OUTLINED_FUNCTION_85();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v7 = sub_1AC79FC78();
  v1[14] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[15] = v8;
  v10 = *(v9 + 64);
  v1[16] = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B910, &unk_1AC7A6E00);
  v1[17] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[18] = v12;
  v14 = *(v13 + 64);
  v1[19] = OUTLINED_FUNCTION_126();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B950, &qword_1AC7A7590);
  v1[20] = v15;
  OUTLINED_FUNCTION_22(v15);
  v1[21] = v16;
  v18 = *(v17 + 64);
  v1[22] = OUTLINED_FUNCTION_126();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B958, &qword_1AC7A7598);
  v1[23] = v19;
  OUTLINED_FUNCTION_22(v19);
  v1[24] = v20;
  v22 = *(v21 + 64);
  v1[25] = OUTLINED_FUNCTION_126();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B960, &qword_1AC7A75A0);
  v1[26] = v23;
  OUTLINED_FUNCTION_22(v23);
  v1[27] = v24;
  v26 = *(v25 + 64);
  v1[28] = OUTLINED_FUNCTION_126();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B968, &qword_1AC7A75A8);
  v1[29] = v27;
  OUTLINED_FUNCTION_22(v27);
  v1[30] = v28;
  v30 = *(v29 + 64);
  v1[31] = OUTLINED_FUNCTION_126();
  v31 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1AC63909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v17 = v16[13];
  if (swift_distributed_actor_is_remote())
  {
    v18 = v16[31];
    v19 = v16[8];
    v20 = OUTLINED_FUNCTION_140(v16[13]);
    v16[3] = v19;
    v16[2] = v20;
    sub_1AC5CF764(0, &qword_1EB56AAD0, &off_1E797AE30);
    v21 = v19;
    OUTLINED_FUNCTION_86_3();
    sub_1AC5DE324(v18);
    v27 = v16[28];
    v28 = v16[9];
    v16[4] = v28;
    sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
    v29 = v28;
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_42_2();
    v30 = OUTLINED_FUNCTION_69_3();
    sub_1AC5DE3C0(v30);
    v31 = v16[25];
    v32 = v16[10];
    v16[5] = v32;
    sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
    v33 = v32;
    OUTLINED_FUNCTION_192();
    sub_1AC79FC98();
    sub_1AC5DE45C(v31);
    v34 = v16[22];
    v35 = v16[11];
    v16[6] = v35;
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B970, &unk_1AC7A75B0);
    OUTLINED_FUNCTION_76_1();
    OUTLINED_FUNCTION_192();
    sub_1AC79FC98();
    sub_1AC5DE4F8(v34);
    v37 = v16[19];
    v16[7] = v16[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    OUTLINED_FUNCTION_62_2();
    sub_1AC79FC98();
    v38 = OUTLINED_FUNCTION_69_3();
    v39 = sub_1AC5DDFEC(v38);
    v41 = nullsub_1(v39, v40);
    v43 = nullsub_1(v41, v42);
    nullsub_1(v43, v44);
    v45 = v16[16];
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7C70);
    v58 = v46;
    v47 = swift_task_alloc();
    v16[32] = v47;
    *v47 = v16;
    v47[1] = sub_1AC639598;
    v48 = v16[16];
    OUTLINED_FUNCTION_31_0(v16[13]);
    OUTLINED_FUNCTION_54();

    return v52(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, v58, a13, a14, a15, a16);
  }

  else
  {
    v22 = v16[13];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_54();

    return MEMORY[0x1EEE6DFA0](v23, v24, v25);
  }
}

uint64_t sub_1AC639598()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 256);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  v4[33] = v0;

  if (!v0)
  {
    v4[34] = v1;
  }

  v10 = v4[2];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC6396AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = v18[30];
  v20 = v18[29];
  v44 = v20;
  v45 = v18[31];
  v21 = v18[27];
  v42 = v18[26];
  v43 = v18[28];
  v22 = v18[24];
  v23 = v18[22];
  v40 = v18[23];
  v41 = v18[25];
  v25 = v18[20];
  v24 = v18[21];
  v26 = v18[18];
  v27 = v18[19];
  v28 = v18[17];
  v46 = v18[16];
  v29 = v18[14];
  (*(v18[15] + 8))();
  (*(v26 + 8))(v27, v28);
  (*(v24 + 8))(v23, v25);
  (*(v22 + 8))(v41, v40);
  (*(v21 + 8))(v43, v42);
  (*(v19 + 8))(v45, v44);

  OUTLINED_FUNCTION_82();
  v30 = v18[34];
  OUTLINED_FUNCTION_26();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, a16, a17, a18);
}

uint64_t sub_1AC639830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = v18[30];
  v20 = v18[29];
  v49 = v20;
  v50 = v18[31];
  v21 = v18[27];
  v47 = v18[26];
  v48 = v18[28];
  v22 = v18[24];
  v23 = v18[22];
  v45 = v18[23];
  v46 = v18[25];
  v25 = v18[20];
  v24 = v18[21];
  v26 = v18[18];
  v27 = v18[19];
  v28 = v18[17];
  (*(v18[15] + 8))(v18[16], v18[14]);
  (*(v26 + 8))(v27, v28);
  (*(v24 + 8))(v23, v25);
  (*(v22 + 8))(v46, v45);
  (*(v21 + 8))(v48, v47);
  (*(v19 + 8))(v50, v49);
  v29 = v18[33];
  v30 = v18[31];
  v31 = v18[28];
  v32 = v18[25];
  v33 = v18[22];
  v34 = v18[19];
  v35 = v18[16];

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, v47, v48, v49, v50, a16, a17, a18);
}

void sub_1AC6399B0()
{
  OUTLINED_FUNCTION_25_3();
  sub_1AC7A0B78();
  __break(1u);
}

uint64_t sub_1AC6399F0()
{
  OUTLINED_FUNCTION_85();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v1[10] = v7;
  v1[11] = v8;
  v9 = sub_1AC79FC78();
  v1[18] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[19] = v10;
  v12 = *(v11 + 64);
  v1[20] = OUTLINED_FUNCTION_126();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v1[21] = v13;
  OUTLINED_FUNCTION_167(v13);
  v15 = *(v14 + 64);
  v1[22] = OUTLINED_FUNCTION_126();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB30, &qword_1AC7A7C50);
  v1[23] = v16;
  OUTLINED_FUNCTION_22(v16);
  v1[24] = v17;
  v19 = *(v18 + 64);
  v1[25] = OUTLINED_FUNCTION_126();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[26] = v20;
  OUTLINED_FUNCTION_22(v20);
  v1[27] = v21;
  v23 = *(v22 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v24 = sub_1AC79F7F8();
  v1[30] = v24;
  OUTLINED_FUNCTION_22(v24);
  v1[31] = v25;
  v27 = *(v26 + 64);
  v1[32] = OUTLINED_FUNCTION_126();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB40, &qword_1AC7A7C60);
  v1[33] = v28;
  OUTLINED_FUNCTION_22(v28);
  v1[34] = v29;
  v31 = *(v30 + 64);
  v1[35] = OUTLINED_FUNCTION_126();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B958, &qword_1AC7A7598);
  v1[36] = v32;
  OUTLINED_FUNCTION_22(v32);
  v1[37] = v33;
  v35 = *(v34 + 64);
  v1[38] = OUTLINED_FUNCTION_126();
  v36 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v36, v37, v38);
}

uint64_t sub_1AC639C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = v18[17];
  if (swift_distributed_actor_is_remote())
  {
    v20 = v18[38];
    v21 = v18[10];
    v22 = OUTLINED_FUNCTION_140(v18[17]);
    v18[9] = v21;
    v18[8] = v22;
    sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
    v23 = v21;
    OUTLINED_FUNCTION_86_3();
    sub_1AC5DE45C(v20);
    v29 = v18[35];
    (*(v18[31] + 16))(v18[32], v18[11], v18[30]);
    sub_1AC79FC98();
    OUTLINED_FUNCTION_200();
    sub_1AC5DE7C4();
    v30 = v18[29];
    v31 = v18[13];
    v18[2] = v18[12];
    v18[3] = v31;

    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v32 = OUTLINED_FUNCTION_200();
    sub_1AC5C6DD8(v32);
    v33 = v18[25];
    v34 = v18[21];
    sub_1AC5C6EC4(v18[14], v18[22], &qword_1EB56B8F0, &unk_1AC7A9520);
    sub_1AC79FC98();
    OUTLINED_FUNCTION_200();
    sub_1AC5DE8D0();
    v35 = v18[28];
    v36 = v18[16];
    v18[4] = v18[15];
    v18[5] = v36;

    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v37 = OUTLINED_FUNCTION_200();
    v38 = sub_1AC5C6DD8(v37);
    v40 = nullsub_1(v38, v39);
    v42 = nullsub_1(v40, v41);
    nullsub_1(v42, v43);
    v44 = v18[20];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7C38);
    v58 = v45;
    v46 = swift_task_alloc();
    v18[39] = v46;
    *v46 = v18;
    v46[1] = sub_1AC63A198;
    v47 = v18[20];
    v48 = v18[17];
    OUTLINED_FUNCTION_26();

    return v53(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, v58, a15, a16, a17, a18);
  }

  else
  {
    v24 = v18[17];
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DFA0](v25, v26, v27);
  }
}

uint64_t sub_1AC63A198()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 312);
  *v4 = *v1;
  *(v3 + 320) = v0;

  v6 = *(v2 + 64);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC63A2B8()
{
  v1 = v0[37];
  v2 = v0[36];
  v19 = v2;
  v20 = v0[38];
  v3 = v0[34];
  v17 = v0[33];
  v18 = v0[35];
  v4 = v0[28];
  v16 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
  v9 = v0[23];
  v23 = v0[22];
  v21 = v0[32];
  v22 = v0[20];
  v10 = v0[18];
  (*(v0[19] + 8))();
  v11 = *(v5 + 8);
  v11(v4, v6);
  (*(v7 + 8))(v8, v9);
  v11(v16, v6);
  (*(v3 + 8))(v18, v17);
  (*(v1 + 8))(v20, v19);
  v12 = v0[6];
  v13 = v0[7];

  v14 = v0[1];

  return v14(v12, v13);
}

uint64_t sub_1AC63A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v17 = v16[37];
  v18 = v16[36];
  v46 = v18;
  v47 = v16[38];
  v19 = v16[34];
  v44 = v16[33];
  v45 = v16[35];
  v20 = v16[28];
  v43 = v16[29];
  v22 = v16[26];
  v21 = v16[27];
  v23 = v16[24];
  v24 = v16[25];
  v25 = v16[23];
  (*(v16[19] + 8))(v16[20], v16[18]);
  v26 = *(v21 + 8);
  v26(v20, v22);
  v27 = *(v23 + 8);
  v28 = OUTLINED_FUNCTION_60_2();
  v29(v28);
  v26(v43, v22);
  (*(v19 + 8))(v45, v44);
  (*(v17 + 8))(v47, v46);
  v30 = v16[40];
  v31 = v16[38];
  v32 = v16[35];
  v33 = v16[32];
  OUTLINED_FUNCTION_81_0();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_54();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, v46, v47, a14, a15, a16);
}

uint64_t sub_1AC63A5F8()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC63A69C()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    v5 = OUTLINED_FUNCTION_64(v4);
    if (!v0)
    {
      v7 = nullsub_1(v5, v6);
      nullsub_1(v7, v8);
      v16 = v1[6];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7C20);
      v17 = swift_task_alloc();
      v1[8] = v17;
      *v17 = v1;
      v17[1] = sub_1AC63A818;
      v18 = v1[6];
      OUTLINED_FUNCTION_31_0(v1[3]);
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    v9 = v1[6];

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC63A818()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v9 = *(v6 + 64);
  *v8 = *v1;
  *(v7 + 72) = v0;

  v10 = *(v6 + 56);

  if (v0)
  {
    v11 = sub_1AC63AA10;
  }

  else
  {
    *(v7 + 88) = v3;
    *(v7 + 80) = v5;
    v11 = sub_1AC63A958;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1AC63A958()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_74_2(*(v0 + 40));
  v3(v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 80);

  return v4(v5, v1 & 1);
}

uint64_t sub_1AC63AA10()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[6];
  OUTLINED_FUNCTION_74_2(v0[5]);
  v2();
  v3 = v0[9];
  v4 = v0[6];

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC63AAB4()
{
  OUTLINED_FUNCTION_85();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_1AC79FC78();
  v1[13] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAF8, &qword_1AC7A7C00);
  v1[16] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = OUTLINED_FUNCTION_126();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB08, &qword_1AC7A7C10);
  v1[19] = v15;
  OUTLINED_FUNCTION_22(v15);
  v1[20] = v16;
  v18 = *(v17 + 64);
  v1[21] = OUTLINED_FUNCTION_126();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[22] = v19;
  OUTLINED_FUNCTION_22(v19);
  v1[23] = v20;
  v22 = *(v21 + 64);
  v1[24] = OUTLINED_FUNCTION_126();
  v23 = sub_1AC79FB18();
  v1[25] = v23;
  OUTLINED_FUNCTION_22(v23);
  v1[26] = v24;
  v26 = *(v25 + 64);
  v1[27] = OUTLINED_FUNCTION_126();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE8, &unk_1AC7A9660);
  v1[28] = v27;
  OUTLINED_FUNCTION_22(v27);
  v1[29] = v28;
  v30 = *(v29 + 64);
  v1[30] = OUTLINED_FUNCTION_126();
  v31 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1AC63AD0C()
{
  v1 = v0[12];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[30];
    v4 = v0[26];
    v3 = v0[27];
    v5 = v0[25];
    v6 = v0[7];
    v7 = OUTLINED_FUNCTION_140(v0[12]);
    v8 = OUTLINED_FUNCTION_61_1(v7);
    v9(v8);
    OUTLINED_FUNCTION_32_1();
    OUTLINED_FUNCTION_63();
    sub_1AC5DE590();
    if (v2)
    {
      (*(v0[29] + 8))(v0[30], v0[28]);
      v26 = v0[4];

      v27 = v0[30];
      v28 = v0[27];
      v29 = v0[24];
      OUTLINED_FUNCTION_37_3();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_115();

      __asm { BRAA            X1, X16 }
    }

    v15 = v0[24];
    v16 = v0[9];
    v0[2] = v0[8];
    v0[3] = v16;

    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v17 = OUTLINED_FUNCTION_39_3();
    sub_1AC5C6DD8(v17);
    v18 = v0[21];
    v0[5] = v0[10];
    type metadata accessor for EAREuclidEncoderType(0);
    OUTLINED_FUNCTION_65_3();
    v19 = OUTLINED_FUNCTION_39_3();
    sub_1AC5DE9E8(v19);
    v20 = v0[18];
    v0[6] = v0[11];
    type metadata accessor for EAREuclidInitFlag(0);
    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v21 = OUTLINED_FUNCTION_39_3();
    v22 = sub_1AC5DEA6C(v21);
    v24 = nullsub_1(v22, v23);
    nullsub_1(v24, v25);
    v32 = v0[15];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BF0);
    v33 = swift_task_alloc();
    v0[31] = v33;
    *v33 = v0;
    v33[1] = sub_1AC63B0B8;
    v34 = v0[15];
    OUTLINED_FUNCTION_31_0(v0[12]);
    OUTLINED_FUNCTION_115();

    __asm { BR              X3 }
  }

  v10 = v0[12];
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC63B0B8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 248);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  v4[32] = v0;

  if (!v0)
  {
    v4[33] = v1;
  }

  v10 = v4[4];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC63B1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v18 = v16[29];
  v17 = v16[30];
  v19 = v16[23];
  v39 = v16[24];
  v40 = v16[28];
  v20 = v16[21];
  v38 = v16[22];
  v22 = v16[19];
  v21 = v16[20];
  v24 = v16[17];
  v23 = v16[18];
  v25 = v16[15];
  v26 = v16[16];
  v41 = v25;
  v42 = v16[27];
  v27 = v16[13];
  (*(v16[14] + 8))();
  (*(v24 + 8))(v23, v26);
  (*(v21 + 8))(v20, v22);
  (*(v19 + 8))(v39, v38);
  (*(v18 + 8))(v17, v40);

  OUTLINED_FUNCTION_82();
  v28 = v16[33];
  OUTLINED_FUNCTION_54();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, a14, a15, a16);
}

void sub_1AC63B328()
{
  v1 = v0[29];
  v17 = v0[28];
  v18 = v0[30];
  v2 = v0[23];
  v16 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v16, v3);
  (*(v1 + 8))(v18, v17);
  v10 = v0[32];
  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[24];
  OUTLINED_FUNCTION_37_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_115();

  __asm { BRAA            X1, X16 }
}

void sub_1AC63B464()
{
  OUTLINED_FUNCTION_25_3();
  sub_1AC7A0B78();
  __break(1u);
}

uint64_t sub_1AC63B4A4()
{
  OUTLINED_FUNCTION_85();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = sub_1AC79FC78();
  v1[10] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[11] = v6;
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B950, &qword_1AC7A7590);
  v1[13] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[14] = v10;
  v12 = *(v11 + 64);
  v1[15] = OUTLINED_FUNCTION_126();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B960, &qword_1AC7A75A0);
  v1[16] = v13;
  OUTLINED_FUNCTION_22(v13);
  v1[17] = v14;
  v16 = *(v15 + 64);
  v1[18] = OUTLINED_FUNCTION_126();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAE0, &qword_1AC7A7BE0);
  v1[19] = v17;
  OUTLINED_FUNCTION_22(v17);
  v1[20] = v18;
  v20 = *(v19 + 64);
  v1[21] = OUTLINED_FUNCTION_126();
  v21 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1AC63B654()
{
  OUTLINED_FUNCTION_57();
  v1 = v0[9];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[21];
    v3 = v0[6];
    v4 = OUTLINED_FUNCTION_140(v0[9]);
    v0[3] = v3;
    v0[2] = v4;
    sub_1AC5CF764(0, &qword_1EB56BAD8, off_1E797ADF0);
    v5 = v3;
    OUTLINED_FUNCTION_86_3();
    sub_1AC5DEAF0(v2);
    v11 = v0[18];
    v12 = v0[7];
    v0[4] = v12;
    sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
    v13 = v12;
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_42_2();
    v14 = OUTLINED_FUNCTION_69_3();
    sub_1AC5DE3C0(v14);
    v15 = v0[15];
    v16 = v0[8];
    v0[5] = v16;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B970, &unk_1AC7A75B0);
    OUTLINED_FUNCTION_76_1();
    OUTLINED_FUNCTION_65_3();
    v18 = OUTLINED_FUNCTION_69_3();
    v19 = sub_1AC5DE4F8(v18);
    v21 = nullsub_1(v19, v20);
    v23 = nullsub_1(v21, v22);
    nullsub_1(v23, v24);
    v25 = v0[12];
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BD0);
    v26 = swift_task_alloc();
    v0[22] = v26;
    *v26 = v0;
    v26[1] = sub_1AC63B994;
    v27 = v0[12];
    OUTLINED_FUNCTION_31_0(v0[9]);
    OUTLINED_FUNCTION_56_0();

    __asm { BR              X3 }
  }

  v6 = v0[9];
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_56_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC63B994()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 176);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  v4[23] = v0;

  if (!v0)
  {
    v4[24] = v1;
  }

  v10 = v4[2];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC63BAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v14 = v12[20];
  v13 = v12[21];
  v15 = v12[18];
  v34 = v12[19];
  v16 = v12[16];
  v17 = v12[17];
  v18 = v12[14];
  v19 = v12[15];
  v20 = v12[13];
  (*(v12[11] + 8))(v12[12], v12[10]);
  (*(v18 + 8))(v19, v20);
  v21 = *(v17 + 8);
  v22 = OUTLINED_FUNCTION_73_1();
  v23(v22);
  (*(v14 + 8))(v13, v34);

  OUTLINED_FUNCTION_82();
  v24 = v12[24];
  OUTLINED_FUNCTION_77_2();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, a11, a12);
}

uint64_t sub_1AC63BBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v14 = v12[20];
  v13 = v12[21];
  v16 = v12[18];
  v15 = v12[19];
  v17 = v12[16];
  v18 = v12[17];
  v20 = v12[14];
  v19 = v12[15];
  v21 = v12[13];
  (*(v12[11] + 8))(v12[12], v12[10]);
  (*(v20 + 8))(v19, v21);
  v22 = *(v18 + 8);
  v23 = OUTLINED_FUNCTION_73_1();
  v24(v23);
  v25 = *(v14 + 8);
  v26 = OUTLINED_FUNCTION_89();
  v27(v26);
  v28 = v12[23];
  v29 = v12[21];
  v30 = v12[18];
  v31 = v12[15];
  v32 = v12[12];

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1AC63BCF4()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1AC79FC78();
  v1[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_126();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[11] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_126();
  v12 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC63BDF4()
{
  v1 = v0[7];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[13];
    v3 = v0[6];
    v4 = v0[5];
    v5 = OUTLINED_FUNCTION_140(v0[7]);
    OUTLINED_FUNCTION_83_2(v5);
    sub_1AC79FC98();
    v6 = OUTLINED_FUNCTION_63();
    v7 = sub_1AC5C6DD8(v6);
    if (!v2)
    {
      v9 = nullsub_1(v7, v8);
      v11 = nullsub_1(v9, v10);
      nullsub_1(v11, v12);
      v25 = v0[10];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7BC8);
      v26 = swift_task_alloc();
      v0[14] = v26;
      *v26 = v0;
      v26[1] = sub_1AC63BFE8;
      v27 = v0[10];
      OUTLINED_FUNCTION_31_0(v0[7]);
      OUTLINED_FUNCTION_174();

      __asm { BR              X3 }
    }

    v13 = OUTLINED_FUNCTION_59_1();
    v14(v13);
    v15 = v0[4];

    v16 = v0[13];
    v17 = v0[10];

    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_174();

    __asm { BRAA            X2, X16 }
  }

  v20 = v0[7];
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_174();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1AC63BFE8()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3 & 1;
  }

  v11 = *(v5 + 32);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC63C104()
{
  OUTLINED_FUNCTION_72();
  v1 = OUTLINED_FUNCTION_59_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_11_5();
  v4(v3);

  OUTLINED_FUNCTION_82();
  v6 = *(v0 + 128);

  return v5(v6);
}

uint64_t sub_1AC63C1C8()
{
  OUTLINED_FUNCTION_72();
  v2 = OUTLINED_FUNCTION_190();
  v3(v2);
  v4 = *(v0 + 8);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);
  v7 = v1[15];
  v8 = v1[13];
  v9 = v1[10];

  OUTLINED_FUNCTION_82();

  return v10(0);
}

uint64_t sub_1AC63C294()
{
  OUTLINED_FUNCTION_85();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1AC79FC78();
  v1[9] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[12] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_126();
  v13 = sub_1AC79FB18();
  v1[15] = v13;
  OUTLINED_FUNCTION_22(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_126();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE8, &unk_1AC7A9660);
  v1[18] = v17;
  OUTLINED_FUNCTION_22(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_126();
  v21 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1AC63C438()
{
  OUTLINED_FUNCTION_57();
  v1 = v0[8];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[20];
    v4 = v0[16];
    v3 = v0[17];
    v5 = v0[15];
    v6 = v0[5];
    v7 = OUTLINED_FUNCTION_140(v0[8]);
    v8 = OUTLINED_FUNCTION_61_1(v7);
    v9(v8);
    OUTLINED_FUNCTION_32_1();
    OUTLINED_FUNCTION_63();
    sub_1AC5DE590();
    if (v2)
    {
      (*(v0[19] + 8))(v0[20], v0[18]);
      v22 = v0[4];

      v23 = v0[20];
      v24 = v0[17];
      v25 = v0[14];
      v26 = v0[11];

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_56_0();

      __asm { BRAA            X1, X16 }
    }

    v15 = v0[14];
    v16 = v0[7];
    v0[2] = v0[6];
    v0[3] = v16;

    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v17 = OUTLINED_FUNCTION_39_3();
    v18 = sub_1AC5C6DD8(v17);
    v20 = nullsub_1(v18, v19);
    nullsub_1(v20, v21);
    v29 = v0[11];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BB8);
    v30 = swift_task_alloc();
    v0[21] = v30;
    *v30 = v0;
    v30[1] = sub_1AC63C684;
    v31 = v0[11];
    OUTLINED_FUNCTION_31_0(v0[8]);
    OUTLINED_FUNCTION_56_0();

    __asm { BR              X3 }
  }

  v10 = v0[8];
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_56_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC63C684()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 168);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  v4[22] = v0;

  if (!v0)
  {
    v4[23] = v1;
  }

  v10 = v4[4];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC63C798()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_77();
  v10(v9);
  v11 = *(v2 + 8);
  v12 = OUTLINED_FUNCTION_89();
  v13(v12);

  OUTLINED_FUNCTION_82();
  v15 = v0[23];

  return v14(v15);
}

uint64_t sub_1AC63C8AC()
{
  OUTLINED_FUNCTION_45();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_73_1();
  v9(v8);
  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_89();
  v12(v11);
  v13 = v0[22];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[11];

  OUTLINED_FUNCTION_44();

  return v18();
}

void sub_1AC63C988()
{
  OUTLINED_FUNCTION_25_3();
  sub_1AC7A0B78();
  __break(1u);
}

uint64_t sub_1AC63C9C8()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC63CA6C()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    v5 = OUTLINED_FUNCTION_64(v4);
    if (!v0)
    {
      v7 = nullsub_1(v5, v6);
      nullsub_1(v7, v8);
      v16 = v1[6];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7BA8);
      v17 = swift_task_alloc();
      v1[8] = v17;
      *v17 = v1;
      v17[1] = sub_1AC63CBE8;
      v18 = v1[6];
      OUTLINED_FUNCTION_31_0(v1[3]);
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    v9 = v1[6];

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC63CBE8()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v7 = *(v4 + 64);
  *v6 = *v1;
  *(v5 + 72) = v0;

  v8 = *(v4 + 56);

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC63CD18()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[6];
  OUTLINED_FUNCTION_74_2(v0[5]);
  v2(v1);

  OUTLINED_FUNCTION_82();
  v4 = v0[10];

  return v3(v4);
}

uint64_t sub_1AC63CE2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v30 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v29 = *v13;
  v14 = a2[2];
  v3[9] = v14;
  v15 = *(v14 - 8);
  v3[10] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v3[11] = v17;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC6E6540();
  v27 = v17[1];
  v28 = *v17;
  v18 = a2[3];
  v3[12] = v18;
  v19 = *(v18 - 8);
  v3[13] = v19;
  v20 = *(v19 + 64) + 15;
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v21 = a2[4];
  v3[15] = v21;
  v22 = *(v21 - 8);
  v3[16] = v22;
  v23 = *(v22 + 64) + 15;
  v24 = swift_task_alloc();
  v3[17] = v24;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v25 = *v24;
  v26 = swift_task_alloc();
  v3[18] = v26;
  *v26 = v3;
  v26[1] = sub_1AC63D3E8;

  return sub_1AC638828();
}

uint64_t sub_1AC63D720(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v10 = *v8;
  v11 = a2[1];
  v3[6] = v11;
  v12 = *(v11 - 8);
  v3[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[8] = v14;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v31 = *v14;
  v15 = a2[2];
  v3[9] = v15;
  v16 = *(v15 - 8);
  v3[10] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v3[11] = v18;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC6E6540();
  v19 = *v18;
  v20 = a2[3];
  v3[12] = v20;
  v21 = *(v20 - 8);
  v3[13] = v21;
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  v3[14] = v23;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v30 = *v23;
  v24 = a2[4];
  v3[15] = v24;
  v25 = *(v24 - 8);
  v3[16] = v25;
  v26 = *(v25 + 64) + 15;
  v27 = swift_task_alloc();
  v3[17] = v27;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v28 = *v27;
  v29 = swift_task_alloc();
  v3[18] = v29;
  *v29 = v3;
  v29[1] = sub_1AC63D3E8;

  return sub_1AC638E38();
}

uint64_t sub_1AC63DCD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v10 = *v8;
  v11 = a2[1];
  v3[6] = v11;
  v12 = *(v11 - 8);
  v3[7] = v12;
  v13 = *(v12 + 64) + 15;
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v14 = a2[2];
  v3[9] = v14;
  v15 = *(v14 - 8);
  v3[10] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v3[11] = v17;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC6E6540();
  v28 = v17[1];
  v29 = *v17;
  v18 = a2[3];
  v3[12] = v18;
  v19 = *(v18 - 8);
  v3[13] = v19;
  v20 = *(v19 + 64) + 15;
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v21 = a2[4];
  v3[15] = v21;
  v22 = *(v21 - 8);
  v3[16] = v22;
  v23 = *(v22 + 64) + 15;
  v24 = swift_task_alloc();
  v3[17] = v24;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v26 = *v24;
  v25 = v24[1];
  v27 = swift_task_alloc();
  v3[18] = v27;
  *v27 = v3;
  v27[1] = sub_1AC63E268;

  return sub_1AC6399F0();
}

uint64_t sub_1AC63E5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC63E650;

  return sub_1AC63A5F8();
}

uint64_t sub_1AC63E650()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v8 = *v0;
  *v3 = v4;
  *(v3 + 8) = v5 & 1;

  OUTLINED_FUNCTION_44();

  return v6();
}

uint64_t sub_1AC63E758(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AC6E6540();
  v9 = a2[1];
  v3[6] = v9;
  v10 = *(v9 - 8);
  v3[7] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v3[8] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v24 = *v12;
  v23 = v12[1];
  v13 = a2[2];
  v3[9] = v13;
  v14 = *(v13 - 8);
  v3[10] = v14;
  v15 = *(v14 + 64) + 15;
  v25 = swift_task_alloc();
  v3[11] = v25;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v22 = *v25;
  v16 = a2[3];
  v3[12] = v16;
  v17 = *(v16 - 8);
  v3[13] = v17;
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  v3[14] = v19;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v20 = *v19;
  v21 = swift_task_alloc();
  v3[15] = v21;
  *v21 = v3;
  v21[1] = sub_1AC63EBA4;

  return sub_1AC63AAB4();
}

uint64_t sub_1AC63EBA4()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 120);
  v30 = *(v0 + 112);
  OUTLINED_FUNCTION_64_1();
  v29 = *(v2 + 104);
  OUTLINED_FUNCTION_64_1();
  v26 = *(v3 + 96);
  OUTLINED_FUNCTION_64_1();
  v28 = *(v4 + 88);
  OUTLINED_FUNCTION_64_1();
  v27 = *(v5 + 80);
  OUTLINED_FUNCTION_64_1();
  v7 = *(v6 + 72);
  v25 = *(v8 + 64);
  OUTLINED_FUNCTION_64_1();
  v24 = *(v9 + 56);
  OUTLINED_FUNCTION_64_1();
  v11 = *(v10 + 48);
  v13 = v12[5];
  v14 = v12[4];
  v15 = v12[3];
  v16 = v12[2];
  OUTLINED_FUNCTION_141();
  v18 = v17;
  OUTLINED_FUNCTION_18_2();
  *v19 = v18;
  OUTLINED_FUNCTION_66_2(v20, v21);
  (*(v14 + 8))(v13, v15);
  (*(v24 + 8))(v25, v11);
  (*(v27 + 8))(v28, v7);
  (*(v29 + 8))(v30, v26);

  v22 = *(v18 + 8);

  return v22();
}

uint64_t sub_1AC63EEA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1AC6E6540();
  v10 = *v8;
  v11 = a2[1];
  v3[6] = v11;
  v12 = *(v11 - 8);
  v3[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[8] = v14;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1AC6E6540();
  v21 = *v14;
  v15 = a2[2];
  v3[9] = v15;
  v16 = *(v15 - 8);
  v3[10] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v3[11] = v18;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v19 = *v18;
  v20 = swift_task_alloc();
  v3[12] = v20;
  *v20 = v3;
  v20[1] = sub_1AC63F1D8;

  return sub_1AC63B4A4();
}

uint64_t sub_1AC63F1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v49 = v16;
  OUTLINED_FUNCTION_50();
  v18 = *(v17 + 96);
  v48 = *(v17 + 88);
  OUTLINED_FUNCTION_64_1();
  v47 = *(v19 + 80);
  OUTLINED_FUNCTION_64_1();
  v21 = *(v20 + 72);
  v23 = *(v22 + 64);
  v46 = *(v22 + 56);
  OUTLINED_FUNCTION_64_1();
  v25 = *(v24 + 48);
  v27 = v26[5];
  v28 = v26[4];
  v29 = v26[3];
  v30 = v26[2];
  OUTLINED_FUNCTION_141();
  v32 = v31;
  OUTLINED_FUNCTION_18_2();
  *v33 = v32;
  OUTLINED_FUNCTION_66_2(v34, v35);
  (*(v28 + 8))(v27, v29);
  (*(v46 + 8))(v23, v25);
  (*(v47 + 8))(v48, v21);

  v36 = *(v32 + 8);
  OUTLINED_FUNCTION_54();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, v21 - 8, v46, v47, v48, v49, a14, a15, a16);
}

uint64_t sub_1AC63F448(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v9 = *v7;
    v10 = v7[1];
    v11 = swift_task_alloc();
    v3[6] = v11;
    *v11 = v3;
    v11[1] = sub_1AC63F5C0;

    return sub_1AC63BCF4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC63F5C0()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v0[2];
  OUTLINED_FUNCTION_141();
  *v6 = v7;
  *v9 = v8;

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_44();

  return v10();
}

uint64_t sub_1AC63F740(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v9 = a2[1];
  v3[6] = v9;
  v10 = *(v9 - 8);
  v3[7] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v3[8] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  v3[9] = v15;
  *v15 = v3;
  v15[1] = sub_1AC63F994;

  return sub_1AC63C294();
}

uint64_t sub_1AC63F994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_50();
  v13 = v12[9];
  v14 = v12[8];
  v15 = v12[7];
  v16 = v12[6];
  v17 = v12[5];
  v18 = v12[4];
  v19 = v12[3];
  v20 = v12[2];
  OUTLINED_FUNCTION_141();
  *v21 = v22;
  OUTLINED_FUNCTION_66_2(v23, v24);
  (*(v18 + 8))(v17, v19);
  v25 = *(v15 + 8);
  v26 = OUTLINED_FUNCTION_73_1();
  v27(v26);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1AC63FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC63FC0C;

  return sub_1AC63C9C8();
}

uint64_t sub_1AC63FC0C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 24);
  v6 = *v0;
  OUTLINED_FUNCTION_66_2(v3, *(v1 + 16));
  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC63FD28()
{
  sub_1AC7A0E78();
  type metadata accessor for LocalSpeechRecognitionService();
  OUTLINED_FUNCTION_27_2();
  sub_1AC641AD4(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC63FDA4()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for LocalSpeechRecognitionService();
    OUTLINED_FUNCTION_27_2();
    sub_1AC641AD4(v1, v2, v3);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC63FE68()
{
  v1 = *v0;
  type metadata accessor for LocalSpeechRecognitionService();
  sub_1AC641AD4(&unk_1ED937D48, v2, type metadata accessor for LocalSpeechRecognitionService);
  return sub_1AC79FC28();
}

uint64_t sub_1AC63FEE0()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for LocalSpeechRecognitionService();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC63FF38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for LocalSpeechRecognitionService();
  v6 = sub_1AC641AD4(&unk_1ED937D48, v5, type metadata accessor for LocalSpeechRecognitionService);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC63FFC0()
{
  v1 = *v0;
  type metadata accessor for LocalSpeechRecognitionService();
  sub_1AC641AD4(&unk_1ED937D48, v2, type metadata accessor for LocalSpeechRecognitionService);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC640054@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocalSpeechRecognitionService();
  sub_1AC641AD4(&unk_1ED937D48, v3, type metadata accessor for LocalSpeechRecognitionService);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_1AC640214()
{
  v0 = objc_opt_self();
  v1 = &unk_1F2157428;
  v2 = [v0 interfaceWithProtocol_];

  qword_1ED9386F0 = v2;
}

void sub_1AC64027C(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v145 = a5;
  v146 = a6;
  v147 = a3;
  v148 = a4;
  v8 = sub_1AC79FB18();
  v9 = OUTLINED_FUNCTION_40(v8);
  v143[1] = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v16 = OUTLINED_FUNCTION_167(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v143 - v19;
  v21 = sub_1AC79F7F8();
  v22 = OUTLINED_FUNCTION_40(v21);
  v144 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v29 = OUTLINED_FUNCTION_167(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v143 - v32;
  v34 = 0x80000001AC7B5B70;
  v35 = 0xD000000000000091;
  v36 = a1 == 0xD000000000000091 && 0x80000001AC7B5B70 == a2;
  if (v36 || (v35 = OUTLINED_FUNCTION_21_3(), (v35 & 1) != 0))
  {
    v37 = v148;
    v38 = *(v148 + 16);
    if (!v38)
    {
      __break(1u);
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_88_1(v35, v34, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v164)
    {
      OUTLINED_FUNCTION_67_4();
      sub_1AC5CF764(0, &qword_1EB56AAD0, &off_1E797AE30);
      OUTLINED_FUNCTION_87_2();
      if (v38 != 1)
      {
        v27 = v153;
        sub_1AC5C6EC4(v37 + 64, v158, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v159)
        {
          OUTLINED_FUNCTION_85_2();
          sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
          OUTLINED_FUNCTION_87_2();
          if (v38 >= 3)
          {
            a1 = v152;
            sub_1AC5C6EC4(v37 + 96, &v154, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v155)
            {
              sub_1AC5C3968(&v154, &v156);
              sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
              OUTLINED_FUNCTION_87_2();
              if (v38 != 3)
              {
                v39 = v151;
                sub_1AC5C6EC4(v37 + 128, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
                if (v167)
                {
                  sub_1AC5CF764(0, &qword_1EB56AB68, off_1E797ADC0);
                  if (swift_dynamicCast())
                  {
                    v40 = v149;
                  }

                  else
                  {
                    v40 = 0;
                  }
                }

                else
                {
                  sub_1AC641B24(&aBlock);
                  v40 = 0;
                }

                if (v38 >= 5)
                {
                  sub_1AC5C6EC4(v37 + 160, &v149, &unk_1EB56C620, &unk_1AC7A7A00);
                  if (v150)
                  {
                    sub_1AC5C3968(&v149, &aBlock);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
                    OUTLINED_FUNCTION_87_2();
                    v41 = sub_1AC7A0148();

                    OUTLINED_FUNCTION_99();
                    v42 = swift_allocObject();
                    v44 = v145;
                    v43 = v146;
                    *(v42 + 16) = v145;
                    *(v42 + 24) = v43;
                    v168 = sub_1AC641C28;
                    v169 = v42;
                    *&aBlock = MEMORY[0x1E69E9820];
                    *(&aBlock + 1) = 1107296256;
                    v166 = sub_1AC5C0904;
                    v167 = &block_descriptor_112;
                    v45 = _Block_copy(&aBlock);
                    sub_1AC5D9374(v44);

                    v46 = OUTLINED_FUNCTION_16_3();
                    [v46 v47];

                    _Block_release(v45);
                    return;
                  }

                  goto LABEL_155;
                }

                goto LABEL_102;
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }

LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  OUTLINED_FUNCTION_3_4();
  v50 = v49 + 12;
  if (a1 != (v49 + 12) || v48 != a2)
  {
    v50 = OUTLINED_FUNCTION_21_3();
    if ((v50 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_4();
      v66 = a1 == v65 && v64 == a2;
      v67 = v148;
      if (v66 || (v63 = OUTLINED_FUNCTION_21_3(), (v63 & 1) != 0))
      {
        a2 = *(v67 + 16);
        if (a2)
        {
          OUTLINED_FUNCTION_88_1(v63, v64, &unk_1EB56C620, &unk_1AC7A7A00);
          if (!v164)
          {
LABEL_164:
            __break(1u);
            goto LABEL_165;
          }

          OUTLINED_FUNCTION_67_4();
          sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
          a1 = MEMORY[0x1E69E7CA0];
          swift_dynamicCast();
          if (a2 != 1)
          {
            v68 = v156;
            sub_1AC5C6EC4(v67 + 64, &v160, &unk_1EB56C620, &unk_1AC7A7A00);
            if (!v161)
            {
LABEL_165:
              __break(1u);
              goto LABEL_166;
            }

            sub_1AC5C3968(&v160, &aBlock);
            OUTLINED_FUNCTION_48_4();
            swift_dynamicCast();
            v69 = sub_1AC79F788();
            v144[1](v27, v21);
            if (a2 >= 3)
            {
              sub_1AC5C6EC4(v67 + 96, &v160, &unk_1EB56C620, &unk_1AC7A7A00);
              if (!v161)
              {
LABEL_166:
                __break(1u);
LABEL_167:
                __break(1u);
                goto LABEL_168;
              }

              sub_1AC5C3968(&v160, &aBlock);
              OUTLINED_FUNCTION_48_4();
              swift_dynamicCast();
              v27 = v158[1];
              v70 = sub_1AC79FF58();

              if (a2 != 3)
              {
                v144 = v68;
                sub_1AC5C6EC4(v67 + 128, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
                if (v167)
                {
                  v71 = sub_1AC79F958();
                  OUTLINED_FUNCTION_48_4();
                  v72 = swift_dynamicCast();
                  __swift_storeEnumTagSinglePayload(v20, v72 ^ 1u, 1, v71);
                  v27 = 0;
                  if (__swift_getEnumTagSinglePayload(v20, 1, v71) != 1)
                  {
                    v27 = sub_1AC79F918();
                    (*(*(v71 - 8) + 8))(v20, v71);
                  }
                }

                else
                {
                  sub_1AC641B24(&aBlock);
                  v73 = sub_1AC79F958();
                  __swift_storeEnumTagSinglePayload(v20, 1, 1, v73);
                  v27 = 0;
                }

                if (a2 >= 5)
                {
                  sub_1AC5C6EC4(v67 + 160, &v160, &unk_1EB56C620, &unk_1AC7A7A00);
                  if (v161)
                  {
                    sub_1AC5C3968(&v160, &aBlock);
                    OUTLINED_FUNCTION_48_4();
                    swift_dynamicCast();
                    v74 = sub_1AC79FF58();

                    OUTLINED_FUNCTION_99();
                    v75 = swift_allocObject();
                    v77 = v145;
                    v76 = v146;
                    *(v75 + 16) = v145;
                    *(v75 + 24) = v76;
                    v168 = sub_1AC641B94;
                    v169 = v75;
                    *&aBlock = MEMORY[0x1E69E9820];
                    *(&aBlock + 1) = 1107296256;
                    v166 = sub_1AC6418A0;
                    v167 = &block_descriptor_100;
                    v78 = _Block_copy(&aBlock);
                    sub_1AC5D9374(v77);

                    v79 = v144;
                    [v147 getJitProfileData:v144 modelRoot:v69 language:v70 asrID:v27 taskName:v74 reply:v78];
                    _Block_release(v78);

                    return;
                  }

                  goto LABEL_167;
                }

                goto LABEL_133;
              }

LABEL_132:
              __break(1u);
LABEL_133:
              __break(1u);
              goto LABEL_134;
            }

LABEL_131:
            __break(1u);
            goto LABEL_132;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_3_4();
      v82 = a1 == (v81 - 39) && v80 == a2;
      if (v82 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
      {
        OUTLINED_FUNCTION_99();
        v83 = swift_allocObject();
        v84 = v146;
        *(v83 + 16) = v145;
        *(v83 + 24) = v84;
        OUTLINED_FUNCTION_0_4(v83);
        *(&aBlock + 1) = 1107296256;
        v166 = sub_1AC5C0904;
        v167 = &block_descriptor_94;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_89_3();
        [v147 processStartTimeOnceWithReply_];
LABEL_69:
        v62 = v27;
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_3_4();
      v87 = a1 == v86 && v85 == a2;
      if (!v87 && (OUTLINED_FUNCTION_21_3() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_4();
        v100 = v99 + 11;
        v101 = a1 == (v99 + 11) && v98 == a2;
        if (v101 || (v100 = OUTLINED_FUNCTION_21_3(), (v100 & 1) != 0))
        {
          v102 = *(v67 + 16);
          if (!v102)
          {
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

          OUTLINED_FUNCTION_88_1(v100, v98, &unk_1EB56C620, &unk_1AC7A7A00);
          if (!v164)
          {
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }

          OUTLINED_FUNCTION_67_4();
          sub_1AC5CF764(0, &qword_1EB56BAD8, off_1E797ADF0);
          swift_dynamicCast();
          if (v102 == 1)
          {
            goto LABEL_157;
          }

          v27 = v156;
          sub_1AC5C6EC4(v67 + 64, v158, &unk_1EB56C620, &unk_1AC7A7A00);
          if (!v159)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          OUTLINED_FUNCTION_85_2();
          sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
          swift_dynamicCast();
          if (v102 < 3)
          {
            goto LABEL_158;
          }

          a1 = v154;
          sub_1AC5C6EC4(v67 + 96, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
          if (v167)
          {
            sub_1AC5CF764(0, &qword_1EB56AB68, off_1E797ADC0);
            if (swift_dynamicCast())
            {
              v103 = v149;
            }

            else
            {
              v103 = 0;
            }

            goto LABEL_104;
          }

LABEL_103:
          sub_1AC641B24(&aBlock);
          v103 = 0;
LABEL_104:
          OUTLINED_FUNCTION_99();
          v104 = swift_allocObject();
          v106 = v145;
          v105 = v146;
          *(v104 + 16) = v145;
          *(v104 + 24) = v105;
          OUTLINED_FUNCTION_0_4(v104);
          OUTLINED_FUNCTION_1_5(COERCE_DOUBLE(1107296256));
          v166 = v107;
          v167 = &block_descriptor_82;
          v108 = _Block_copy(&aBlock);
          sub_1AC5D9374(v106);

          v109 = OUTLINED_FUNCTION_16_3();
          [v109 v110];

          _Block_release(v108);
          return;
        }

        OUTLINED_FUNCTION_3_4();
        v113 = a1 == (v112 - 28) && v111 == a2;
        if (v113 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
        {
          if (!*(v67 + 16))
          {
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          sub_1AC5C6EC4(v67 + 32, v170, &unk_1EB56C620, &unk_1AC7A7A00);
          if (!v171)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_63_2();
          OUTLINED_FUNCTION_82_1();
          v114 = v163;
          v115 = sub_1AC79FF58();

          OUTLINED_FUNCTION_99();
          v116 = swift_allocObject();
          v117 = v146;
          *(v116 + 16) = v145;
          *(v116 + 24) = v117;
          v168 = sub_1AC641B1C;
          v169 = v116;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v166 = sub_1AC641A5C;
          v167 = &block_descriptor_76;
          _Block_copy(&aBlock);
          OUTLINED_FUNCTION_90_2();
          [v147 isEuclidAvailableForConfigPath:v115 reply:v114];
LABEL_113:
          _Block_release(v114);

          return;
        }

        goto LABEL_119;
      }

      v88 = *(v67 + 16);
      if (v88)
      {
        sub_1AC5C6EC4(v67 + 32, v170, &unk_1EB56C620, &unk_1AC7A7A00);
        if (!v171)
        {
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        OUTLINED_FUNCTION_63_2();
        swift_dynamicCast();
        sub_1AC79F9F8();
        v89 = OUTLINED_FUNCTION_54_2();
        v90(v89);
        if (v88 != 1)
        {
          sub_1AC5C6EC4(v67 + 64, v170, &unk_1EB56C620, &unk_1AC7A7A00);
          if (!v171)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          OUTLINED_FUNCTION_63_2();
          swift_dynamicCast();
          v91 = sub_1AC79FF58();

          if (v88 >= 3)
          {
            sub_1AC5C6EC4(v67 + 96, &v162, &unk_1EB56C620, &unk_1AC7A7A00);
            if (!v164)
            {
LABEL_172:
              __break(1u);
              goto LABEL_173;
            }

            OUTLINED_FUNCTION_67_4();
            type metadata accessor for EAREuclidEncoderType(0);
            swift_dynamicCast();
            if (v88 != 3)
            {
              sub_1AC5C6EC4(v67 + 128, v158, &unk_1EB56C620, &unk_1AC7A7A00);
              if (!v159)
              {
LABEL_173:
                __break(1u);
                goto LABEL_174;
              }

              OUTLINED_FUNCTION_85_2();
              type metadata accessor for EAREuclidInitFlag(0);
              swift_dynamicCast();
              OUTLINED_FUNCTION_99();
              v92 = swift_allocObject();
              v94 = v145;
              v93 = v146;
              *(v92 + 16) = v145;
              *(v92 + 24) = v93;
              OUTLINED_FUNCTION_0_4(v92);
              OUTLINED_FUNCTION_1_5(COERCE_DOUBLE(1107296256));
              v166 = v95;
              v167 = &block_descriptor_88;
              v61 = _Block_copy(&aBlock);
              sub_1AC5D9374(v94);

              v96 = OUTLINED_FUNCTION_16_3();
              [v96 v97];

LABEL_41:
              v62 = v61;
LABEL_42:
              _Block_release(v62);
              return;
            }

LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

LABEL_150:
          __break(1u);
          goto LABEL_151;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_150;
    }
  }

  v52 = v148;
  v53 = *(v148 + 16);
  if (!v53)
  {
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_88_1(v50, v48, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v164)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  OUTLINED_FUNCTION_67_4();
  sub_1AC5CF764(0, &qword_1EB56AB20, off_1E797ACC0);
  a2 = MEMORY[0x1E69E7CA0];
  OUTLINED_FUNCTION_84_0();
  if (v53 == 1)
  {
    goto LABEL_115;
  }

  a1 = v149;
  sub_1AC5C6EC4(v52 + 64, v158, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v159)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_84_0();
  if (v53 < 3)
  {
    goto LABEL_116;
  }

  v14 = v153;
  sub_1AC5C6EC4(v52 + 96, &v156, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v157)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  sub_1AC5C3968(&v156, &aBlock);
  OUTLINED_FUNCTION_84_0();
  v27 = *(&v154 + 1);
  v54 = sub_1AC79FF58();

  if (v53 != 3)
  {
    sub_1AC5C6EC4(v52 + 128, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v167)
    {
      v55 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v33, v55 ^ 1u, 1, v21);
      if (__swift_getEnumTagSinglePayload(v33, 1, v21) != 1)
      {
        v27 = sub_1AC79F788();
        v144[1](v33, v21);
        goto LABEL_38;
      }
    }

    else
    {
      sub_1AC641B24(&aBlock);
      __swift_storeEnumTagSinglePayload(v33, 1, 1, v21);
    }

    v27 = 0;
LABEL_38:
    if (v53 >= 5)
    {
      sub_1AC5C6EC4(v52 + 160, &v154, &unk_1EB56C620, &unk_1AC7A7A00);
      if (!v155)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      sub_1AC5C3968(&v154, &v156);
      OUTLINED_FUNCTION_84_0();
      v56 = v152;
      OUTLINED_FUNCTION_99();
      v57 = swift_allocObject();
      v59 = v145;
      v58 = v146;
      *(v57 + 16) = v145;
      *(v57 + 24) = v58;
      OUTLINED_FUNCTION_0_4(v57);
      OUTLINED_FUNCTION_1_5(COERCE_DOUBLE(1107296256));
      v166 = v60;
      v167 = &block_descriptor_106;
      v61 = _Block_copy(&aBlock);
      sub_1AC5D9374(v59);

      [v147 makeLSRAssetsForAssetConfig:a1 shouldSubscribe:v14 clientID:v54 modelOverridePath:v27 isSpelling:v56 reply:v61];

      goto LABEL_41;
    }

    goto LABEL_118;
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  OUTLINED_FUNCTION_3_4();
  v120 = a1 == (v119 - 7) && v118 == a2;
  if (v120 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {
    v121 = *(v148 + 16);
    if (v121)
    {
      sub_1AC5C6EC4(v148 + 32, v170, &unk_1EB56C620, &unk_1AC7A7A00);
      if (!v171)
      {
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_48_4();
      swift_dynamicCast();
      v122 = v14;
      sub_1AC79F9F8();
      v123 = OUTLINED_FUNCTION_54_2();
      v124(v123);
      if (v121 != 1)
      {
        sub_1AC5C6EC4(v148 + 64, v170, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v171)
        {
          OUTLINED_FUNCTION_63_2();
          OUTLINED_FUNCTION_48_4();
          swift_dynamicCast();
          v125 = sub_1AC79FF58();

          OUTLINED_FUNCTION_99();
          v126 = swift_allocObject();
          v128 = v145;
          v127 = v146;
          *(v126 + 16) = v145;
          *(v126 + 24) = v127;
          v168 = sub_1AC641C28;
          v169 = v126;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v166 = sub_1AC5C0904;
          v167 = &block_descriptor_70;
          v129 = _Block_copy(&aBlock);
          sub_1AC5D9374(v128);

          v130 = OUTLINED_FUNCTION_16_3();
          [v130 v131];
          _Block_release(v129);

          return;
        }

        goto LABEL_179;
      }

      goto LABEL_169;
    }

LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

LABEL_134:
  OUTLINED_FUNCTION_3_4();
  v134 = a1 == (v133 - 33) && v132 == a2;
  if (v134 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {
    OUTLINED_FUNCTION_99();
    v135 = swift_allocObject();
    v136 = v146;
    *(v135 + 16) = v145;
    *(v135 + 24) = v136;
    OUTLINED_FUNCTION_0_4(v135);
    OUTLINED_FUNCTION_1_5(COERCE_DOUBLE(1107296256));
    v166 = v137;
    v167 = &block_descriptor_64;
    _Block_copy(&aBlock);
    OUTLINED_FUNCTION_89_3();
    [v147 makeTranscriptionEvaluatorWithReply_];
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_4();
  v140 = a1 == (v139 - 29) && v138 == a2;
  if (v140 || (OUTLINED_FUNCTION_21_3() & 1) != 0)
  {
    if (!*(v148 + 16))
    {
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    sub_1AC5C6EC4(v148 + 32, v170, &unk_1EB56C620, &unk_1AC7A7A00);
    if (!v171)
    {
LABEL_180:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_63_2();
    OUTLINED_FUNCTION_82_1();
    v114 = v163;
    v115 = sub_1AC79FF58();

    OUTLINED_FUNCTION_99();
    v141 = swift_allocObject();
    v142 = v146;
    *(v141 + 16) = v145;
    *(v141 + 24) = v142;
    v168 = sub_1AC641C28;
    v169 = v141;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v166 = sub_1AC5C0904;
    v167 = &block_descriptor_1;
    _Block_copy(&aBlock);
    OUTLINED_FUNCTION_90_2();
    [v147 makeLSRAssetInventoryForBundleId:v115 reply:v114];
    goto LABEL_113;
  }
}

id sub_1AC6417B4(id result, unint64_t a2, id a3, void (*a4)(void *))
{
  v6 = result;
  v7 = a2 >> 60;
  v8 = result;
  v9 = a2;
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    result = a3;
    v9 = 0;
    v8 = a3;
  }

  if (a4)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C588, &qword_1AC7A9B00);
    v11[0] = v8;
    v11[1] = v9;
    v12 = v7 > 0xE;
    sub_1AC641BD8(v6, a2);
    sub_1AC641BEC(v8, v9, v7 > 0xE);
    a4(v11);
    sub_1AC641BF8(v8, v9, v7 > 0xE);
    return sub_1AC641B24(v11);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AC6418A0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1AC79F868();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1AC604184(v4, v9);
}

id sub_1AC64194C(id result, uint64_t a2, void (*a3)(id *))
{
  if (result)
  {
    result = [result unsignedLongLongValue];
    if (a3)
    {
      v4 = result;
      v5 = 0;
LABEL_6:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C590, &qword_1AC7A9B08);
      v6 = v4;
      v7 = v5;
      v8 = 0;
      a3(&v6);
      return sub_1AC641B24(&v6);
    }
  }

  else if (a3)
  {
    v4 = 0;
    v5 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6419E8(uint64_t result, uint64_t a2, void (*a3)(uint64_t *))
{
  if (a3)
  {
    v4 = result & 1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C598, &qword_1AC7A9B10);
    v5 = v4;
    v6 = 0;
    a3(&v5);
    return sub_1AC641B24(&v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AC641A5C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1AC641AD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC641B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1AC641BD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AC5CFBB8(a1, a2);
  }

  return a1;
}

id sub_1AC641BEC(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1AC5CFBB8(a1, a2);
  }
}

void sub_1AC641BF8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1AC5C28A8(a1, a2);
  }
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_1AC7A0B78();
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_1AC79FC98();
}

uint64_t OUTLINED_FUNCTION_59_2()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = *(v0[9] + 8);
  return v0[10];
}

_OWORD *OUTLINED_FUNCTION_63_2()
{

  return sub_1AC5C3968((v0 - 120), (v0 - 168));
}

uint64_t OUTLINED_FUNCTION_66_2@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_86_3()
{

  return sub_1AC79FC98();
}

uint64_t OUTLINED_FUNCTION_89_3()
{
  v2 = *(v1 - 128);
  sub_1AC5D9374(v0);
}

id sub_1AC641E94(uint64_t a1, uint64_t *a2, SEL *a3, void *a4)
{
  v5 = *a2;
  result = [objc_opt_self() *a3];
  *a4 = result;
  return result;
}

uint64_t sub_1AC641ED4(uint64_t a1, uint64_t a2)
{
  if (qword_1EB56AF70 != -1)
  {
LABEL_41:
    swift_once();
  }

  v4 = 0;
  v5 = qword_1EB56E6C0;
  v6 = 1 << *(qword_1EB56E6C0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = qword_1EB56E6C0 + 56;
  v9 = v7 & *(qword_1EB56E6C0 + 56);
  v10 = (v6 + 63) >> 6;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          v14 = 0;
          goto LABEL_17;
        }

        v9 = *(v8 + 8 * v11);
        ++v4;
        if (v9)
        {
          v4 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_10:
    v12 = (*(v5 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v9)))));
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v9 &= v9 - 1;
  }

  while ((sub_1AC7A0D38() & 1) == 0);
  v14 = 1;
LABEL_17:
  if (qword_1EB56AF68 != -1)
  {
    swift_once();
  }

  v15 = 0;
  v16 = qword_1EB56E6B8;
  v17 = 1 << *(qword_1EB56E6B8 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = qword_1EB56E6B8 + 56;
  v20 = v18 & *(qword_1EB56E6B8 + 56);
  v21 = (v17 + 63) >> 6;
  do
  {
    if (!v20)
    {
      while (1)
      {
        v22 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_40;
        }

        if (v22 >= v21)
        {
          v25 = 0;
          goto LABEL_34;
        }

        v20 = *(v19 + 8 * v22);
        ++v15;
        if (v20)
        {
          v15 = v22;
          break;
        }
      }
    }

    v23 = (*(v16 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v20)))));
    if (*v23 == a1 && v23[1] == a2)
    {
      break;
    }

    v20 &= v20 - 1;
  }

  while ((sub_1AC7A0D38() & 1) == 0);
  v25 = 1;
LABEL_34:
  v26 = objc_opt_self();
  v27 = [v26 sharedPreferences];
  v28 = [v27 isDictationHIPAACompliant];

  v29 = [v26 sharedPreferences];
  v30 = [v29 siriDataSharingOptInStatus];

  if (v14)
  {
    return 1;
  }

  if (v30 == 1)
  {
    return v25 & ~v28;
  }

  return 0;
}

unint64_t sub_1AC642158(double a1)
{
  v1 = a1 * 1000000000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1AC6421A8(double a1)
{
  v1 = a1 * 1000000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL sub_1AC6421F8()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

uint64_t sub_1AC6424A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    type metadata accessor for SelfLoggingHelper();
    v5 = sub_1AC6421F8();
    v6 = (v5 | sub_1AC641ED4(a2, a3)) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void sub_1AC642510(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = a4;
  v55 = a1;
  v60 = a3;
  v61 = MEMORY[0x1E69E7CC0];
  v57 = a2 & 0xC000000000000001;
  v58 = sub_1AC61C24C(a2);
  v56 = a2 & 0xFFFFFFFFFFFFFF8;
  v54 = a3;

  v7 = 0;
  v53 = 0;
  v8 = &selRef_initWithText_confidence_startTime_duration_;
  while (v58 != v7)
  {
    if (v57)
    {
      v9 = MEMORY[0x1B26E95B0](v7, a2);
    }

    else
    {
      if (v7 >= *(v56 + 16))
      {
        goto LABEL_43;
      }

      v9 = *(a2 + 8 * v7 + 32);
    }

    v4 = v9;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
LABEL_39:
      v47 = sub_1AC79FDE8();
      __swift_project_value_buffer(v47, qword_1ED9386C8);
      v48 = sub_1AC79FDC8();
      v49 = sub_1AC7A05F8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1AC5BC000, v48, v49, "SELF: Failed to initialize ASRSchemaASRToken", v50, 2u);
        MEMORY[0x1B26EAB10](v50, -1, -1);
      }

      return;
    }

    v11 = [objc_allocWithZone(MEMORY[0x1E69CE8B0]) v8[316]];
    if (!v11)
    {

      if (off_1ED937D60 != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    v12 = v11;
    [v4 start];
    [v12 setStartTimeInNs_];
    [v4 end];
    [v12 setEndTimeInNs_];
    [v12 setAppendSpaceAfter_];
    [v4 silenceStart];
    [v12 setSilenceStartTimeInNs_];
    [v4 confidence];
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_44;
    }

    if (v16 <= -2147483650.0)
    {
      goto LABEL_45;
    }

    if (v16 >= 2147483650.0)
    {
      goto LABEL_46;
    }

    [v12 setConfidence_];
    if ([v4 appendedAutoPunctuation])
    {
      v17 = 1;
    }

    else
    {
      v17 = [v4 prependedAutoPunctuation];
    }

    [v12 setIsAutoPunctuation_];
    [v12 setIsModifiedByAutoPunctuation_];
    if ((v55 & 1) == 0)
    {
      v18 = v8;
      goto LABEL_33;
    }

    v18 = v8;
    v19 = [objc_allocWithZone(MEMORY[0x1E69CE8B8]) v8[316]];
    if (v19)
    {
      v20 = v19;
      if (v52)
      {
        v21 = v52;
        v22 = [v4 tokenName];
        if (!v22)
        {
          sub_1AC79FF68();
          v22 = sub_1AC79FF58();
        }

        v23 = [v21 baseStringForEmojiString_];

        v24 = sub_1AC79FF68();
        v26 = v25;

        sub_1AC649A3C(v24, v26, v20, &selRef_setText_);
      }

      else
      {
        v27 = [v4 tokenName];
        v28 = sub_1AC79FF68();
        v30 = v29;

        sub_1AC649A3C(v28, v30, v20, &selRef_setText_);
      }

      v31 = [v4 phoneSequence];
      v32 = sub_1AC79FF68();
      v34 = v33;

      sub_1AC649A3C(v32, v34, v20, &selRef_setPhoneSequence_);
      v35 = [v4 ipaPhoneSequence];
      v36 = sub_1AC79FF68();
      v38 = v37;

      sub_1AC649A3C(v36, v38, v20, &selRef_setIpaPhoneSequence_);
      v59 = v20;
      MEMORY[0x1EEE9AC00](v39);
      v51[2] = &v59;
      v40 = v53;
      v41 = v54;
      sub_1AC6F493C(sub_1AC649D2C, v51, v54);
      v53 = v40;
      if (v42)
      {
        sub_1AC642B94(v20, v41);
        if (v44)
        {
          goto LABEL_52;
        }

        if ((v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (HIDWORD(v43))
        {
          goto LABEL_51;
        }

        [v12 setLinkIndex_];
      }

      else
      {
        v45 = sub_1AC61C24C(v41);
        if ((v45 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          return;
        }

        if (HIDWORD(v45))
        {
          goto LABEL_50;
        }

        MEMORY[0x1B26E8CF0]([v12 setLinkIndex_]);
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AC7A0178();
        }

        sub_1AC7A0198();
        v54 = v60;
      }

LABEL_33:
      v46 = v12;
      MEMORY[0x1B26E8CF0]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      sub_1AC7A0198();

      v7 = v10;
      v8 = v18;
    }

    else
    {

      ++v7;
    }
  }
}

void sub_1AC642B94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AC61C24C(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B26E95B0](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1AC5CF764(0, &qword_1EB56AB10, 0x1E69CE8B8);
    v7 = sub_1AC7A0758();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1AC642C90(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v99 = a4;
  v98 = a2;
  v100 = a1;
  v5 = sub_1AC79F958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v105 = MEMORY[0x1E69E7CC0];
  v9 = sub_1AC5CF764(0, &unk_1EB56ABB0, 0x1E695DFB8);
  sub_1AC608694(a3);
  v89 = v9;
  v92 = sub_1AC643A70();
  v10 = [v92 array];
  v11 = sub_1AC7A0158();

  v12 = *(v11 + 16);
  if (v12)
  {
    v104 = v8;
    sub_1AC6314D8(0, v12, 0);
    v13 = v104;
    v14 = v11 + 32;
    do
    {
      sub_1AC5CFF64(v14, v102);
      sub_1AC5C3968(v102, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
      swift_dynamicCast();
      v15 = v103;
      v104 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AC6314D8(v16 > 1, v17 + 1, 1);
        v13 = v104;
      }

      *(v13 + 16) = v17 + 1;
      *(v13 + 8 * v17 + 32) = v15;
      v14 += 32;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = *(v13 + 16);
  for (i = &selRef_initWithText_confidence_startTime_duration_; ; i = &selRef_initWithText_confidence_startTime_duration_)
  {
    if (v20 == v18)
    {
      v25 = 0;
      v26 = 0;
      v104 = MEMORY[0x1E69E7CC0];
      v27 = v98 + 32;
      v96 = v19 & 0xC000000000000001;
      v28 = *(v98 + 16);
      v98 = -v20;
      v29 = 0x1E69CE000uLL;
      v30 = MEMORY[0x1E69E7CC0];
      v87 = MEMORY[0x1E69E7CC0];
      v94 = v19;
      v86 = v27;
      v85 = v28;
      while (1)
      {
        v31 = v26;
        v95 = v25;
        while (2)
        {
          if (v31 == v28)
          {

            if (sub_1AC61C24C(v19) < 1)
            {
              goto LABEL_80;
            }

            v20 = v30;
            sub_1AC608794(v19);
            v74 = sub_1AC643A70();
            v75 = [v74 array];

            v76 = sub_1AC7A0158();
            v77 = *(v76 + 16);
            if (v77)
            {
              v103 = MEMORY[0x1E69E7CC0];
              sub_1AC7A0A88();
              v78 = v76 + 32;
              do
              {
                sub_1AC5CFF64(v78, v102);
                sub_1AC5C3968(v102, v101);
                sub_1AC5CF764(0, &qword_1EB56AB30, 0x1E69CE8C0);
                swift_dynamicCast();
                sub_1AC7A0A68();
                v79 = *(v103 + 16);
                sub_1AC7A0A98();
                sub_1AC7A0AA8();
                sub_1AC7A0A78();
                v78 += 32;
                --v77;
              }

              while (v77);
            }

            goto LABEL_79;
          }

          if (v31 >= v28)
          {
            __break(1u);
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          if (__OFADD__(v31, 1))
          {
            goto LABEL_89;
          }

          v90 = v31 + 1;
          v32 = *(v27 + 8 * v31);
          v33 = objc_allocWithZone(*(v29 + 2128));

          v34 = [v33 i[316]];
          if (!v34)
          {

            if (off_1ED937D60 != -1)
            {
              swift_once();
            }

            v80 = sub_1AC79FDE8();
            __swift_project_value_buffer(v80, qword_1ED9386C8);
            v70 = sub_1AC79FDC8();
            v71 = sub_1AC7A05F8();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 0;
              v73 = "SELF: Failed to initialize ASRSchemaASRPhrase";
              goto LABEL_65;
            }

            goto LABEL_66;
          }

          v91 = v34;
          v93 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) i[316]];
          v97 = v32 + 32;
          for (j = 4; v98 + j != 4; ++j)
          {
            if ((j - 4) >= *(v13 + 16))
            {
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

            v36 = v96;
            v37 = *(v13 + 8 * j);
            sub_1AC61C25C(j - 4, v96 == 0, v19);
            if (v36)
            {

              v39 = MEMORY[0x1B26E95B0](j - 4, v19);
            }

            else
            {
              v38 = *(v19 + 8 * j);

              v39 = v38;
            }

            v40 = v39;
            sub_1AC61C25C(v25, (v37 & 0xC000000000000001) == 0, v37);
            if ((v37 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x1B26E95B0](v25, v37);
            }

            else
            {
              v41 = *(v37 + 8 * v25 + 32);
            }

            v42 = v41;
            v43 = [v41 integerValue];

            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_85;
            }

            if (v43 >= *(v32 + 16))
            {
              goto LABEL_86;
            }

            v44 = *(v97 + 8 * v43);

            sub_1AC642510(v100 & 1, v44, v30, v99);
            v46 = v45;
            v48 = v47;

            if (!v46)
            {

              return;
            }

            v30 = v48;
            if (sub_1AC61C24C(v46) < 1)
            {

LABEL_41:

              goto LABEL_47;
            }

            v49 = objc_allocWithZone(MEMORY[0x1E69CE800]);

            v50 = [v49 init];
            if (!v50)
            {

              if (off_1ED937D60 != -1)
              {
                swift_once();
              }

              v55 = sub_1AC79FDE8();
              __swift_project_value_buffer(v55, qword_1ED9386C8);
              v56 = sub_1AC79FDC8();
              v57 = sub_1AC7A05F8();
              v58 = os_log_type_enabled(v56, v57);
              v19 = v94;
              if (v58)
              {
                v59 = swift_slowAlloc();
                *v59 = 0;
                _os_log_impl(&dword_1AC5BC000, v56, v57, "SELF: Failed to initalize ASRSchemaASRInterpretation", v59, 2u);
                MEMORY[0x1B26EAB10](v59, -1, -1);
              }

              goto LABEL_41;
            }

            v51 = v50;

            sub_1AC649870(v52, v51, &qword_1EB56AB98, 0x1E69CE8B0, &selRef_setTokens_);
            v53 = v93;
            if ([v53 containsObject_])
            {

              v54 = [v53 indexOfObject_];
            }

            else
            {
              v54 = [v53 count];

              [v53 addObject_];
            }

            v60 = sub_1AC6498F0(v40, &selRef_interpretationIndices);
            if (!v60)
            {
              goto LABEL_91;
            }

            v61 = v60;

            *&v102[0] = v61;
            [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            MEMORY[0x1B26E8CF0]();
            if (*((*&v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v102[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AC7A0178();
            }

            sub_1AC7A0198();
            sub_1AC649870(*&v102[0], v40, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setInterpretationIndices_);

            v19 = v94;
LABEL_47:
            v25 = v95;
          }

          v97 = v30;

          v62 = v93;
          if ([v62 count] < 1)
          {

            v31 = v90;
            i = &selRef_initWithText_confidence_startTime_duration_;
            v27 = v86;
            v28 = v85;
            v29 = 0x1E69CE000;
            v30 = v97;
            continue;
          }

          break;
        }

        v63 = [v62 array];

        v64 = sub_1AC7A0158();
        v65 = *(v64 + 16);
        if (v65)
        {
          v103 = MEMORY[0x1E69E7CC0];
          sub_1AC7A0A88();
          v66 = v64 + 32;
          do
          {
            sub_1AC5CFF64(v66, v102);
            sub_1AC5C3968(v102, v101);
            sub_1AC5CF764(0, &unk_1EB56AAE8, 0x1E69CE800);
            swift_dynamicCast();
            sub_1AC7A0A68();
            v67 = *(v103 + 16);
            sub_1AC7A0A98();
            sub_1AC7A0AA8();
            sub_1AC7A0A78();
            v66 += 32;
            --v65;
          }

          while (v65);

          v68 = v103;
          v19 = v94;
        }

        else
        {

          v68 = MEMORY[0x1E69E7CC0];
        }

        sub_1AC649870(v68, v91, &unk_1EB56AAE8, 0x1E69CE800, &selRef_setInterpretations_);
        MEMORY[0x1B26E8CF0]();
        i = &selRef_initWithText_confidence_startTime_duration_;
        if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AC7A0178();
        }

        sub_1AC7A0198();
        v87 = v104;

        v25 = v95 + 1;
        v27 = v86;
        v28 = v85;
        v29 = 0x1E69CE000;
        v26 = v90;
        v30 = v97;
        if (__OFADD__(v95, 1))
        {
          __break(1u);
LABEL_91:
          __break(1u);
          return;
        }
      }
    }

    if (v18 >= *(v13 + 16))
    {
      __break(1u);
LABEL_79:

      i = &selRef_initWithText_confidence_startTime_duration_;
      v30 = v20;
LABEL_80:
      if ((v100 & 1) != 0 && (v81 = [objc_allocWithZone(MEMORY[0x1E69CE880]) i[316]]) != 0)
      {
        sub_1AC649870(v30, v81, &qword_1EB56AB10, 0x1E69CE8B8, &selRef_setTokens_);
        sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
        v82 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) i[316]];
        v83 = v88;
        sub_1AC79F938();

        v84 = sub_1AC6BB39C(v83);
        [v81 setLinkId_];
      }

      else
      {
LABEL_87:
      }

      return;
    }

    v22 = [objc_allocWithZone(MEMORY[0x1E69CE8C0]) i[316]];
    if (!v22)
    {
      break;
    }

    v23 = v22;
    sub_1AC649870(MEMORY[0x1E69E7CC0], v22, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setInterpretationIndices_);
    v24 = v23;
    MEMORY[0x1B26E8CF0]();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AC7A0178();
    }

    sub_1AC7A0198();

    v19 = v105;
    ++v18;
  }

  if (off_1ED937D60 != -1)
  {
LABEL_90:
    swift_once();
  }

  v69 = sub_1AC79FDE8();
  __swift_project_value_buffer(v69, qword_1ED9386C8);
  v70 = sub_1AC79FDC8();
  v71 = sub_1AC7A05F8();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = "SELF: Failed to initialize ASRSchemaASRUtterance";
LABEL_65:
    _os_log_impl(&dword_1AC5BC000, v70, v71, v73, v72, 2u);
    MEMORY[0x1B26EAB10](v72, -1, -1);
  }

LABEL_66:
}

id sub_1AC643A70()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1AC7A0148();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t sub_1AC643AE8(int a1, id a2, void *a3)
{
  v6 = [a2 tokenSausage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C450, &qword_1AC7A90C0);
  v7 = sub_1AC7A0158();

  v8 = [a2 interpretationIndices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
  v9 = sub_1AC7A0158();

  sub_1AC642C90(a1, v7, v9, a3);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (!v11)
  {
    return 1;
  }

  v16 = objc_allocWithZone(MEMORY[0x1E69CE878]);
  v17 = v15;

  v18 = [v16 init];
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_1AC649870(v19, v18, &unk_1EB56AB88, 0x1E69CE850, &selRef_setPhrases_);
  if (v13)
  {
    sub_1AC5CF764(0, &qword_1EB56AB30, 0x1E69CE8C0);
    v20 = v18;

    v21 = sub_1AC7A0148();
  }

  else
  {
    v22 = v18;
    v21 = 0;
  }

  [v18 setUtterances_];

  if (a1)
  {
    v23 = v18;
    v24 = [v17 linkId];
    [v23 setLinkId_];
    sub_1AC649CD8(v11, v13, v15);
  }

  else
  {
LABEL_9:
    sub_1AC649CD8(v11, v13, v15);
  }

  return v18;
}

uint64_t sub_1AC643D54(void *a1, int a2, void *a3)
{
  v6 = [a1 preITNRecognition];
  v7 = sub_1AC643AE8(a2, v6, a3);
  v9 = v8;

  if (v7 == 1)
  {
    return 1;
  }

  v11 = [a1 recognition];
  v12 = sub_1AC643AE8(a2 & 1, v11, a3);

  if (v12 == 1)
  {

    v10 = 1;
    v7 = v9;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69CE830]) init];
    v10 = v13;
    if (v13)
    {
      [v13 setRawRecognition_];
      [v10 setPostItn_];
    }

    else
    {

      v7 = v12;
    }
  }

  return v10;
}

void *sub_1AC643EA0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69CE868]) init];
  v1 = v0;
  if (v0)
  {
    [v0 setExists_];
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E69CE858]) init];
  [v2 setStartedOrChanged_];
  if (v2)
  {
    v3 = v2;
    mach_continuous_time();
    sub_1AC643FB8();
  }

  if (qword_1EB56AF50 != -1)
  {
    OUTLINED_FUNCTION_1_6();
  }

  v4 = [qword_1EB56E6A8 captureSnapshot];
  v5 = [objc_opt_self() context];

  type metadata accessor for SelfLoggingPreheatWithPowerContainer();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = v4;
  result[4] = v5;
  return result;
}

void sub_1AC643FB8()
{
  v0 = sub_1AC7A0EE8();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_42_3();
  swift_endAccess();
}

void *sub_1AC644008(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69CE860]) init];
  v3 = v2;
  if (v2)
  {
    if (a1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    [v2 setStatus_];
  }

  v5 = 0x1E69D2728;
  if ((a1 & 1) == 0)
  {
    v5 = 0x1E69D2730;
  }

  v6 = *v5;
  v7 = [objc_opt_self() context];
  v8 = objc_allocWithZone(MEMORY[0x1E69CE858]);
  v9 = v7;
  v10 = [v8 init];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    mach_continuous_time();
    sub_1AC643FB8();
  }

  [v11 setEnded_];
  if (qword_1EB56AF50 != -1)
  {
    OUTLINED_FUNCTION_1_6();
  }

  v13 = [qword_1EB56E6A8 captureSnapshot];

  type metadata accessor for SelfLoggingPreheatWithPowerContainer();
  result = swift_allocObject();
  result[2] = v11;
  result[3] = v13;
  result[4] = v9;
  return result;
}

void sub_1AC644160()
{
  OUTLINED_FUNCTION_21_4();
  v18 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  if (!(v0 >> 62))
  {
    v7 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_15:
    OUTLINED_FUNCTION_14();
    return;
  }

  v7 = sub_1AC7A08E8();
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B26E95B0](i, v2);
      }

      else
      {
        v9 = *(v2 + 8 * i + 32);
      }

      v10 = v9[2];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1AC6442A4();
      }

      else
      {
        v12 = 0;
      }

      sub_1AC6482E4(v6, v4, v18, v10, v12);

      v13 = v9[3];
      if (v13)
      {
        v14 = v9[4];
        if (v14)
        {
          v15 = v13;
          v16 = v14;
          v17 = sub_1AC79F918();
          [v15 logWithEventContext:v16 asrIdentifier:v17];
        }
      }
    }

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_1AC6442A4()
{
  OUTLINED_FUNCTION_44_2();
  v0 = OUTLINED_FUNCTION_89();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    sub_1AC7A0828();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (OUTLINED_FUNCTION_41_3())
    {
      return v4;
    }
  }

  else
  {
    sub_1AC5C7264(v7, &unk_1EB56C620, &unk_1AC7A7A00);
  }

  return 0;
}

void sub_1AC644360(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79F958();
  v5 = OUTLINED_FUNCTION_40(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
  if (v13)
  {
    v14 = v13;
    sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
    v15 = *(v7 + 16);
    v15(v12, a1, v4);
    v16 = sub_1AC6BB39C(v12);
    [v14 setUuid_];

    [v14 setComponent_];
    v17 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
    if (v17)
    {
      v18 = v17;
      v15(v12, a2, v4);
      v19 = sub_1AC6BB39C(v12);
      v20 = OUTLINED_FUNCTION_33_3();
      [v20 v21];

      [v18 setComponent_];
      v22 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
      if (v22)
      {
        v23 = v22;
        [v22 setSource_];
        [v23 setTarget_];
        if (qword_1EB56AF58 != -1)
        {
          swift_once();
        }

        [qword_1EB56E6B0 emitMessage_];

        v14 = v18;
      }

      else
      {
        v23 = v18;
      }

      v14 = v23;
    }
  }
}

void sub_1AC6445DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  v26 = v25;
  OUTLINED_FUNCTION_32_2();
  v27 = OUTLINED_FUNCTION_49_3(objc_allocWithZone(MEMORY[0x1E69CE7E0]));
  v37 = v27;
  if (v27)
  {
    [v27 setExists_];
    v27 = v37;
  }

  [v27 setIsSpeechRecognizerCreated_];
  v28 = [objc_allocWithZone(MEMORY[0x1E69CE7D8]) (v24 + 2936)];
  [v28 setEnded_];
  v29 = v28;
  sub_1AC6482E4(v20, v23, v22, v28, v21);

  if (qword_1EB56AF50 != -1)
  {
    OUTLINED_FUNCTION_1_6();
  }

  v30 = [qword_1EB56E6A8 captureSnapshot];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_opt_self() context];
    if (!v32)
    {
      __break(1u);
      return;
    }

    v33 = v32;
    v34 = sub_1AC79F918();
    [v31 logWithEventContext:v33 asrIdentifier:v34];
  }

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC644768(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  v21 = v20;
  OUTLINED_FUNCTION_2_3();
  v23 = [objc_allocWithZone(*v22) init];
  v24 = v23;
  if (v23)
  {
    OUTLINED_FUNCTION_47_2(v23, sel_setExists_);
  }

  v25 = [objc_allocWithZone(*v21) init];
  [v25 setStartedOrChanged_];
  v26 = v25;
  v27 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_31_3(v27, v28, v29);

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC644814(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_2_3();
  v21 = OUTLINED_FUNCTION_49_3(objc_allocWithZone(MEMORY[0x1E69CE810]));
  v22 = [objc_allocWithZone(MEMORY[0x1E69CE808]) (v20 + 2936)];
  [v22 setEnded_];
  v23 = v22;
  v24 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_31_3(v24, v25, v26);

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC6448F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v47 = [objc_allocWithZone(*v36) init];
  if (v47)
  {
    [v47 setExists_];
  }

  v37 = [objc_allocWithZone(*v27) init];
  [v37 *v25];
  v38 = v37;
  sub_1AC6482E4(v35, v33, v31, v37, v29);

  if (qword_1EB56AF50 != -1)
  {
    OUTLINED_FUNCTION_1_6();
  }

  v39 = [qword_1EB56E6A8 captureSnapshot];
  if (v39)
  {
    v40 = v39;
    v41 = *v23;
    v42 = [objc_opt_self() context];
    if (!v42)
    {
      __break(1u);
      return;
    }

    v43 = v42;
    v44 = sub_1AC79F918();
    [v40 logWithEventContext:v43 asrIdentifier:v44];
  }

  OUTLINED_FUNCTION_14();
}

void sub_1AC644A9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_2_3();
  v21 = OUTLINED_FUNCTION_49_3(objc_allocWithZone(MEMORY[0x1E69CE738]));
  v22 = v21;
  if (v21)
  {
    OUTLINED_FUNCTION_47_2(v21, sel_setExists_);
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69CE730]) (v20 + 2936)];
  [v23 setStartedOrChanged_];
  v24 = v23;
  v25 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_31_3(v25, v26, v27);

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC644B44(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_2_3();
  v20 = [objc_allocWithZone(MEMORY[0x1E69CE740]) init];
  v21 = v20;
  if (v20)
  {
    OUTLINED_FUNCTION_47_2(v20, sel_setExists_);
  }

  v22 = v21;
  v23 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_31_3(v23, v24, v25);

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC644BD4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_2_3();
  v24 = [objc_allocWithZone(MEMORY[0x1E69CE798]) init];
  v25 = v24;
  if (v24)
  {
    OUTLINED_FUNCTION_46_4(v24);

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25;
  v28 = OUTLINED_FUNCTION_3_5();
  sub_1AC6482E4(v28, v29, v30, v26, v22);

  OUTLINED_FUNCTION_14();
}

void sub_1AC644C74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_2_3();
  v24 = [objc_allocWithZone(MEMORY[0x1E69CE7A0]) init];
  v25 = v24;
  if (v24)
  {
    [v24 setExists_];
    OUTLINED_FUNCTION_46_4(v25);

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25;
  v28 = OUTLINED_FUNCTION_3_5();
  sub_1AC6482E4(v28, v29, v30, v26, v22);

  OUTLINED_FUNCTION_14();
}

void sub_1AC644D48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  v25 = v24;
  OUTLINED_FUNCTION_32_2();
  v27 = [objc_allocWithZone(*v26) init];
  v28 = v27;
  if (v27)
  {
    [v27 setExists_];
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v38 = v28;
  sub_1AC6482E4(v20, v23, v22, v29, v21);

  if (qword_1EB56AF50 != -1)
  {
    OUTLINED_FUNCTION_1_6();
  }

  v30 = [qword_1EB56E6A8 captureSnapshot];
  if (v30)
  {
    v31 = v30;
    v32 = *v25;
    v33 = [objc_opt_self() context];
    if (!v33)
    {
      __break(1u);
      return;
    }

    v34 = v33;
    v35 = sub_1AC79F918();
    [v31 logWithEventContext:v34 asrIdentifier:v35];
  }

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC644E90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_21_4();
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_2_3();
  type metadata accessor for SelfLoggingHelper();
  if (sub_1AC641ED4(v24, v23))
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E69CE7F0]) init];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
      if (v28)
      {
        v32 = sub_1AC79FF58();
      }

      else
      {
        v32 = 0;
      }

      v34 = OUTLINED_FUNCTION_25_4();
      [v34 v35];

      v36 = v30;
      if (v26)
      {
        v37 = sub_1AC79FF58();
      }

      else
      {
        v37 = 0;
      }

      v38 = OUTLINED_FUNCTION_25_4();
      [v38 v39];

      v40 = v30;
      if (a23)
      {
        v41 = sub_1AC79FF58();
      }

      else
      {
        v41 = 0;
      }

      v42 = OUTLINED_FUNCTION_25_4();
      [v42 v43];

      v33 = v30;
    }

    else
    {
      v33 = 0;
    }

    v49 = v30;
    OUTLINED_FUNCTION_7_4();
    sub_1AC6482E4(v44, v45, v46, v33, 0);

    OUTLINED_FUNCTION_14();
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }
}

void sub_1AC645020(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unsigned int *a8, uint64_t a9)
{
  if (!a4)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v33 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v33, qword_1ED9386C8);
    v63 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v63, v34))
    {
      v35 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_37_4(v35);
      _os_log_impl(&dword_1AC5BC000, v63, v9, "SELF: EAR result package is nil", v10, 2u);
      OUTLINED_FUNCTION_16_4();
    }

    goto LABEL_20;
  }

  v15 = *(a8 + 4);
  v16 = *a8;
  v63 = a4;
  v17 = [v63 recognition];
  v18 = [v17 interpretationIndices];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
  v19 = sub_1AC7A0158();

  v20 = *(v19 + 16);

  if (!v20)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v36 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v36, qword_1ED9386C8);
    v37 = sub_1AC79FDC8();
    v38 = sub_1AC7A05D8();
    if (OUTLINED_FUNCTION_28_2(v38))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_19_2(&dword_1AC5BC000, v39, v40, "SELF: EAR result package is empty");
      OUTLINED_FUNCTION_70();
    }

    goto LABEL_20;
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69CE838]) init];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
    [v23 setIsFinal_];
  }

  type metadata accessor for SelfLoggingHelper();
  v24 = sub_1AC641ED4(a2, a3);
  v25 = sub_1AC643D54(v63, v24 & 1, a7);
  if (v25 == 1)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v28 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v28, qword_1ED9386C8);
    v29 = sub_1AC79FDC8();
    v30 = sub_1AC7A05F8();
    if (OUTLINED_FUNCTION_28_2(v30))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_19_2(&dword_1AC5BC000, v31, v32, "SELF: failed to create result Package in SELF, not logging ASRSchemaASRPackageGenerated");
      OUTLINED_FUNCTION_70();
    }

LABEL_20:
    v41 = v63;
    goto LABEL_21;
  }

  v42 = v25;
  v61 = v26;
  v62 = v27;
  if (v22)
  {
    v43 = v16 | (v15 << 32);
    [v22 setPackage_];
    type metadata accessor for Instrumentation();
    v44 = v63;
    v45 = v22;
    v46 = sub_1AC727600(a4);
    v48 = v47;

    sub_1AC649A3C(v46, v48, v45, &selRef_setResultCandidateId_);
    if (v43 != 2)
    {
      [v45 setHasVoiceCommandInExhaustiveParses_];
      [v45 setHasVoiceCommandParses_];
      [v45 setHasVoiceCommandEditIntent_];
      [v45 setHasVoiceCommandAfterReranking_];
      [v45 setHasNoVoiceCommandAfterRespeakCheck_];
    }
  }

  else
  {
    v45 = 0;
  }

  v49 = v22;
  OUTLINED_FUNCTION_7_4();
  sub_1AC6482E4(v50, v51, v52, v45, a9);

  if (sub_1AC641ED4(a2, a3))
  {
    v53 = v61;
    OUTLINED_FUNCTION_7_4();
    sub_1AC6482E4(v54, v55, v56, v61, a9);

    v57 = v62;
    OUTLINED_FUNCTION_7_4();
    sub_1AC6482E4(v58, v59, v60, v62, a9);

    v41 = v42;
  }

  else
  {

    v41 = v62;
  }

LABEL_21:
}

void sub_1AC645504(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_2_3();
  v21 = [objc_allocWithZone(*v20) init];
  v22 = v21;
  if (v21)
  {
    OUTLINED_FUNCTION_47_2(v21, sel_setExists_);
  }

  v23 = v22;
  v24 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_31_3(v24, v25, v26);

  OUTLINED_FUNCTION_23_2();
}

void sub_1AC645590(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v11 = objc_allocWithZone(MEMORY[0x1E69CE7A8]);
    v137 = a4;
    v12 = [v11 init];
    if (v12)
    {
      v13 = v12;
      v126 = a1;
      v14 = [v137 correctPartialResultIndexList];
      sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
      v15 = sub_1AC7A0158();

      sub_1AC649870(v15, v13, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setCorrectPartialResultIndexLists_);
      v16 = [v137 preITNRecognition];
      v17 = [v16 oneBest];

      v124 = sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
      v18 = sub_1AC7A0158();

      v19 = sub_1AC61C24C(v18);
      v132 = v13;
      if (v19)
      {
        v20 = v19;
        v139 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_34_4();
        sub_1AC6312E0();
        if (v20 < 0)
        {
          __break(1u);
          goto LABEL_92;
        }

        v21 = 0;
        v22 = v139;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1B26E95B0](v21, v18);
          }

          else
          {
            v23 = *(v18 + 8 * v21 + 32);
          }

          v24 = v23;
          [v23 silenceStart];
          v26 = v25;
          [v137 utteranceStart];
          v28 = v27;

          v139 = v22;
          v30 = *(v22 + 16);
          v29 = *(v22 + 24);
          v31 = v22;
          if (v30 >= v29 >> 1)
          {
            OUTLINED_FUNCTION_9(v29);
            sub_1AC6312E0();
            v31 = v139;
          }

          ++v21;
          *(v31 + 16) = v30 + 1;
          *(v31 + 8 * v30 + 32) = v26 + v28;
          v22 = v31;
        }

        while (v20 != v21);
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      v35 = *(v22 + 16);
      v36 = MEMORY[0x1E69E7CC0];
      v131 = v22;
      if (v35)
      {
        v139 = MEMORY[0x1E69E7CC0];
        sub_1AC7A0A88();
        type metadata accessor for SelfLoggingHelper();
        v37 = (v22 + 32);
        v38 = v35;
        do
        {
          v39 = *v37++;
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
          sub_1AC7A0A68();
          v40 = *(v139 + 16);
          sub_1AC7A0A98();
          sub_1AC7A0AA8();
          sub_1AC7A0A78();
          --v38;
        }

        while (v38);
        v41 = v139;
        v13 = v132;
        v36 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }

      sub_1AC64995C(v41, v13, &selRef_setTokenSilenceStartTimeInNsLists_);
      [v13 setIsAfterResume_];
      v42 = sub_1AC6498F0(v13, &selRef_correctPartialResultIndexLists);
      if (v42)
      {
        v43 = v42;
        v44 = sub_1AC61C24C(v42);
        if (v44)
        {
          v45 = v44;
          v139 = v36;
          v46 = OUTLINED_FUNCTION_34_4();
          sub_1AC6310CC(v46, v47, v48);
          if (v45 < 0)
          {
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            return;
          }

          v49 = 0;
          v50 = v139;
          v135 = v43 & 0xC000000000000001;
          v51 = v43;
          do
          {
            if (v135)
            {
              v52 = MEMORY[0x1B26E95B0](v49, v43);
            }

            else
            {
              v52 = *(v43 + 8 * v49 + 32);
            }

            v53 = v52;
            v138 = [v52 integerValue];
            v54 = sub_1AC7A0CC8();
            v56 = v55;

            v139 = v50;
            v58 = *(v50 + 16);
            v57 = *(v50 + 24);
            if (v58 >= v57 >> 1)
            {
              v60 = OUTLINED_FUNCTION_9(v57);
              sub_1AC6310CC(v60, v58 + 1, 1);
              v50 = v139;
            }

            ++v49;
            *(v50 + 16) = v58 + 1;
            v59 = v50 + 16 * v58;
            *(v59 + 32) = v54;
            *(v59 + 40) = v56;
            v43 = v51;
          }

          while (v45 != v49);

          v13 = v132;
          v36 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v50 = MEMORY[0x1E69E7CC0];
        }

        v139 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
        sub_1AC649C74();
        v125 = sub_1AC79FEA8();
        v61 = v62;
      }

      else
      {
        v125 = 0;
        v61 = 0xE000000000000000;
      }

      v139 = v36;
      v63 = [v137 preITNRecognition];
      v64 = [v63 oneBest];

      if (!v64)
      {
        sub_1AC7A0158();
        v64 = sub_1AC7A0148();
      }

      objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B998, &unk_1AC7A7A10);
      v65 = sub_1AC7A0148();
      v66 = OUTLINED_FUNCTION_25_4();
      v68 = [v66 v67];

      v69 = sub_1AC7A0158();
      v70 = sub_1AC61C24C(v69);
      v130 = v61;
      if (!v70)
      {
        v80 = MEMORY[0x1E69E7CC0];
LABEL_59:

        sub_1AC64995C(v80, v13, &selRef_setCorrectAlignedPartialResultIndexLists_);
        v81 = [v137 performanceMarkers];
        if (v81)
        {
          v82 = v81;
          v83 = [v81 correctAlignedPartialResultIndexList];
          v84 = sub_1AC7A0158();

          sub_1AC649870(v84, v13, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setCorrectAlignedPartialResultIndexLists_);
          if (sub_1AC6498F0(v82, &selRef_tokenDelayInMilliSeconds))
          {
            v85 = sub_1AC7A0148();
          }

          else
          {
            v85 = 0;
          }

          v86 = OUTLINED_FUNCTION_33_3();
          [v86 v87];
        }

        v88 = sub_1AC61C24C(v80);
        v89 = MEMORY[0x1E69E7CC0];
        v136 = v80;
        if (v88)
        {
          v90 = v88;
          v138 = MEMORY[0x1E69E7CC0];
          sub_1AC6310CC(0, v88 & ~(v88 >> 63), 0);
          if (v90 < 0)
          {
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          v91 = 0;
          v89 = v138;
          v92 = v80 & 0xC000000000000001;
          do
          {
            if (v92)
            {
              v93 = MEMORY[0x1B26E95B0](v91, v80);
            }

            else
            {
              v93 = *(v80 + 8 * v91 + 32);
            }

            v94 = v93;
            [v93 integerValue];
            v95 = sub_1AC7A0CC8();
            v97 = v96;

            v138 = v89;
            v99 = *(v89 + 16);
            v98 = *(v89 + 24);
            if (v99 >= v98 >> 1)
            {
              v101 = OUTLINED_FUNCTION_9(v98);
              sub_1AC6310CC(v101, v99 + 1, 1);
              v89 = v138;
            }

            ++v91;
            *(v89 + 16) = v99 + 1;
            v100 = v89 + 16 * v99;
            *(v100 + 32) = v95;
            *(v100 + 40) = v97;
            v80 = v136;
          }

          while (v90 != v91);
          v13 = v132;
          v61 = v130;
        }

        v138 = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
        sub_1AC649C74();
        v124 = OUTLINED_FUNCTION_29_3();
        v69 = v102;

        v103 = MEMORY[0x1E69E7CC0];
        v134 = v69;
        if (v35)
        {
          v138 = MEMORY[0x1E69E7CC0];
          sub_1AC6310CC(0, v35, 0);
          v103 = v138;
          v104 = (v131 + 32);
          do
          {
            v105 = *v104;
            v106 = sub_1AC7A03E8();
            v108 = v107;
            v138 = v103;
            v110 = *(v103 + 16);
            v109 = *(v103 + 24);
            if (v110 >= v109 >> 1)
            {
              v112 = OUTLINED_FUNCTION_9(v109);
              sub_1AC6310CC(v112, v110 + 1, 1);
              v103 = v138;
            }

            *(v103 + 16) = v110 + 1;
            v111 = v103 + 16 * v110;
            *(v111 + 32) = v106;
            *(v111 + 40) = v108;
            ++v104;
            --v35;
          }

          while (v35);
          v13 = v132;
          v69 = v134;
          v61 = v130;
        }

        v138 = v103;
        v72 = OUTLINED_FUNCTION_29_3();
        v35 = v113;

        if (off_1ED937D60 != -1)
        {
LABEL_90:
          OUTLINED_FUNCTION_3_0();
          swift_once();
        }

        v114 = sub_1AC79FDE8();
        OUTLINED_FUNCTION_10_3(v114, qword_1ED9386C8);

        v115 = sub_1AC79FDC8();
        v116 = sub_1AC7A05E8();

        if (os_log_type_enabled(v115, v116))
        {
          v117 = OUTLINED_FUNCTION_48();
          v138 = swift_slowAlloc();
          *v117 = 136315650;
          *(v117 + 4) = sub_1AC5CFE74(v125, v61, &v138);
          *(v117 + 12) = 2080;
          *(v117 + 14) = sub_1AC5CFE74(v124, v69, &v138);
          *(v117 + 22) = 2080;
          *(v117 + 24) = sub_1AC5CFE74(v72, v35, &v138);
          _os_log_impl(&dword_1AC5BC000, v115, v116, "SELF: Correct Partial Result Index List is %s, Correct Aligned Partial Result Index List is %s, Silence Start Time List is %s", v117, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_70();
          OUTLINED_FUNCTION_70();
        }

        v118 = v13;
        sub_1AC6482E4(v126, a2, a3, v13, a7);

        if (qword_1EB56AF50 != -1)
        {
          OUTLINED_FUNCTION_1_6();
        }

        v119 = [qword_1EB56E6A8 captureSnapshot];
        if (!v119)
        {

          return;
        }

        v120 = v119;
        v121 = [objc_opt_self() context];
        if (v121)
        {
          v122 = v121;

          v123 = sub_1AC79F918();
          [v120 logWithEventContext:v122 asrIdentifier:v123];

          return;
        }

        goto LABEL_95;
      }

      v71 = v70;
      if (v70 >= 1)
      {
        v72 = 0;
        v61 = v69 & 0xC000000000000001;
        while (1)
        {
          if (v61)
          {
            v73 = MEMORY[0x1B26E95B0](v72, v69);
          }

          else
          {
            v73 = *(v69 + 8 * v72 + 32);
          }

          v13 = v73;
          v74 = sub_1AC7A0738();
          v75 = OUTLINED_FUNCTION_33_3();
          v77 = [v75 v76];

          if (v77)
          {
            v78 = v13;
            MEMORY[0x1B26E8CF0]();
            OUTLINED_FUNCTION_12_3(v139);
            if (v79)
            {
              OUTLINED_FUNCTION_8_3();
            }

            sub_1AC7A0198();
          }

          else
          {
            if (__CFADD__([v13 unsignedLongLongValue], a6))
            {
              __break(1u);
              goto LABEL_90;
            }

            v78 = sub_1AC7A0EE8();
            MEMORY[0x1B26E8CF0]();
            OUTLINED_FUNCTION_12_3(v139);
            if (v79)
            {
              OUTLINED_FUNCTION_8_3();
            }

            sub_1AC7A0198();
          }

          ++v72;

          if (v71 == v72)
          {
            v80 = v139;
            v13 = v132;
            v61 = v130;
            goto LABEL_59;
          }
        }
      }

LABEL_92:
      __break(1u);
      goto LABEL_93;
    }
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v32 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v32, qword_1ED9386C8);
    v137 = sub_1AC79FDC8();
    sub_1AC7A05D8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v137, v33))
    {
      v34 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_37_4(v34);
      _os_log_impl(&dword_1AC5BC000, v137, v7, "SELF: EAR result package is nil", v8, 2u);
      OUTLINED_FUNCTION_16_4();
    }
  }
}

void sub_1AC646270()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v189 = v10;
  v12 = v11;
  v13 = sub_1AC79F958();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  v18 = [objc_allocWithZone(MEMORY[0x1E69CE870]) init];
  v20 = *(v5 + 36);
  v201 = v18;
  if ((v20 & 1) == 0)
  {
    LODWORD(v19) = *(v5 + 32);
    [v201 setAverageActiveTokensPerFrame_];
    v18 = v201;
  }

  if ((*(v5 + 60) & 1) == 0)
  {
    LODWORD(v19) = *(v5 + 56);
    [v201 setSignalToNoiseRatioInDecibels_];
    v18 = v201;
  }

  if (v18)
  {
    type metadata accessor for SelfLoggingHelper();
    [v18 setRecognitionDurationInNs_];
    [v18 setAudioDurationInNs_];
  }

  v21 = *(v5 + 80);
  if (v21 != 2)
  {
    [v201 setEagerEnabled_];
  }

  v22 = v201;
  if (v201)
  {
    LODWORD(v19) = *(v5 + 84);
    [v201 setCpuRealTimeFactor_];
    [v201 setCpuInstructionsInMillionsPerSecond_];
    v22 = v201;
  }

  if ((*(v5 + 92) & 1) == 0)
  {
    [v201 setNumLanguageModelEnrollmentDataStreams_];
    v22 = v201;
  }

  v23 = v5;
  v24 = *(v5 + 232);
  v191 = v23;
  if (v24)
  {
    v25 = *(v23 + 224);
    sub_1AC5CF764(0, &qword_1EB56AA90, 0x1E696AEC0);

    OUTLINED_FUNCTION_89();
    v26 = sub_1AC6478D0();
    LODWORD(v25) = [v26 BOOLValue];

    v22 = v201;
    if (v25)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    if (!v201)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (!v22)
    {
      goto LABEL_24;
    }

    v27 = 0;
  }

  [v201 setRecognitionHardware_];
  v23 = v191;
  [v201 setUtteranceDetectionEnabled_];
  [v201 setUtteranceConcatenationEnabled_];
  [v201 setContinuousListeningEnabled_];
  v22 = v201;
  if (v201 && *(v191 + 104))
  {
    v28 = *(v191 + 96);
    v29 = *(v191 + 104);

    v30 = OUTLINED_FUNCTION_89();
    sub_1AC649A3C(v30, v31, v201, v32);
    v22 = v201;
  }

LABEL_24:
  v33 = v23;
  if ((*(v23 + 136) & 1) == 0)
  {
    [v201 setInverseTextNormalizationDurationForFinalResultInNs_];
    v22 = v201;
  }

  if ((*(v23 + 152) & 1) == 0)
  {
    [v201 setInverseTextNormalizationDurationInNs_];
    v22 = v201;
  }

  if ((*(v23 + 160) & 1) == 0)
  {
    [v201 setNumberOfInverseTextNormalizationRuns_];
    v22 = v201;
  }

  if (v22 && (*(v23 + 248) & 1) == 0)
  {
    [v201 setNumIngestedNeuralContextualBiasingEmbeddings_];
  }

  v34 = [objc_allocWithZone(MEMORY[0x1E69CE8A0]) init];
  v36 = v34;
  if ((*(v33 + 356) & 1) == 0)
  {
    LODWORD(v35) = *(v33 + 352);
    [v34 setRescoringResultDuration_];
  }

  if ((*(v33 + 364) & 1) == 0)
  {
    LODWORD(v35) = *(v33 + 360);
    [v36 setRescoringFinalizeDuration_];
  }

  if (*(v33 + 312) && v36)
  {
    v37 = *(v191 + 304);

    v38 = v36;
    OUTLINED_FUNCTION_89();
    sub_1AC647944();
    v40 = v39;

    sub_1AC649870(v40, v38, &unk_1EB56AAB8, 0x1E69CE898, &selRef_setRescoringEvents_);
  }

  v190 = type metadata accessor for SelfLoggingHelper();
  v186 = v9;
  if (sub_1AC641ED4(v189, v9))
  {
    v41 = [objc_allocWithZone(MEMORY[0x1E69CE8A8]) init];
    sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
    v42 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
    sub_1AC79F938();

    v43 = sub_1AC6BB39C(v17);
    v44 = v43;
    if (v36)
    {
      v43 = [v36 setRescoringLinkId_];
    }

    if (v41)
    {
      OUTLINED_FUNCTION_30_1(v43, sel_setLinkId_);
      v45 = *(v191 + 328);
      if (v45)
      {
        v46 = *(v191 + 320);
        v47 = *(v191 + 328);

        sub_1AC649A3C(v46, v45, v41, &selRef_setOriginalTranscript_);
      }

      v48 = *(v191 + 344);
      if (v48)
      {
        v49 = *(v191 + 336);
        v50 = *(v191 + 344);

        sub_1AC649A3C(v49, v48, v41, &selRef_setModifiedTranscript_);
      }

      v51 = v41;
      v9 = v186;
    }

    else
    {
      v51 = 0;
    }

    v52 = v41;
    sub_1AC6482E4(v12, v189, v9, v51, v3);
  }

  v53 = v201;
  [v53 setRescoringDeliberationResult_];
  v54 = [objc_allocWithZone(MEMORY[0x1E69CE780]) init];
  v55 = v54;
  v196 = v53;
  if (v54)
  {
    [v54 setIsEmojiPersonalizationUsed_];
    [v55 setIsEmojiDisambiguationUsed_];
    [v55 setIsEmojiExpectedButNotRecognized_];
    if (*(v191 + 168))
    {
      v56 = v55;

      v57 = sub_1AC7A0148();
    }

    else
    {
      v58 = v55;
      v57 = 0;
    }

    [v55 setRecognizedEmojis_];

    v53 = v196;
  }

  v183 = v36;
  v184 = v3;
  v185 = v1;
  v182 = v55;
  [v53 setEmojiMetrics_];
  v59 = v191;
  v60 = *(v191 + 24);
  if (v60)
  {
    v61 = *(v191 + 16);
    v207 = v61;
    v208 = v60;
    v205 = 14906;
    v206 = 0xE200000000000000;
    sub_1AC649BF0();

    v62 = sub_1AC7A07F8();
    if (v62[2] == 3)
    {

      v53 = [objc_allocWithZone(MEMORY[0x1E69CE888]) init];
      if (v53)
      {
        sub_1AC61C258(0, 1);
        v63 = v62[4];
        v64 = v62[5];

        sub_1AC649A3C(v63, v64, v53, &selRef_setFrontend_);
        sub_1AC61C258(1, 1);
        v65 = v62[6];
        v66 = v62[7];

        sub_1AC649A3C(v65, v66, v53, &selRef_setDecoder_);
        sub_1AC61C258(2, 1);
        v67 = v62[8];
        v68 = v62[9];
        v69 = v53;
        OUTLINED_FUNCTION_36_2();

        sub_1AC649A3C(v67, v68, v1, &selRef_setDecodable_);
      }

      else
      {
      }

      v80 = OUTLINED_FUNCTION_25_4();
      [v80 v81];
    }

    else
    {
      v70 = v12;

      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v71 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v71, qword_1ED9386C8);

      v72 = sub_1AC79FDC8();
      v73 = sub_1AC7A05F8();

      if (os_log_type_enabled(v72, v73))
      {
        v1 = swift_slowAlloc();
        v74 = v7;
        v75 = OUTLINED_FUNCTION_48();
        v207 = v75;
        *v1 = 136315138;
        v76 = sub_1AC5CFE74(v61, v60, &v207);

        *(v1 + 4) = v76;
        _os_log_impl(&dword_1AC5BC000, v72, v73, "SELF: Encountered malformed string during SELF logging for recognizer components in speech results from recognizer. String: %s", v1, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        v7 = v74;
        v12 = v70;
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      else
      {

        v12 = v70;
      }

      v53 = sub_1AC79FDC8();
      v77 = sub_1AC7A05F8();
      if (OUTLINED_FUNCTION_28_2(v77))
      {
        *OUTLINED_FUNCTION_20() = 0;
        OUTLINED_FUNCTION_19_2(&dword_1AC5BC000, v78, v79, "SELF: Expected three recognizer components separated by delimiter '::'. Ex: 'dnn-rfdnn-aa-cache::dnn-lazy-16k-rfdnn-dictation::msg'");
        OUTLINED_FUNCTION_70();
      }
    }

    v59 = v191;
  }

  v82 = *(v59 + 48);
  v83 = MEMORY[0x1E69E7CC0];
  v84 = v59;
  if (v82)
  {
    v85 = *(v59 + 40);
    v208 = *(v59 + 48);
    v209 = MEMORY[0x1E69E7CC0];
    v188 = v85;
    v205 = 59;
    v206 = 0xE100000000000000;
    v207 = v85;
    sub_1AC649BF0();
    OUTLINED_FUNCTION_36_2();

    v200 = v1;
    v86 = sub_1AC7A07F8();
    v88 = v86;
    v199 = *(v86 + 16);
    if (!v199)
    {

      goto LABEL_124;
    }

    v192 = v82;
    v181 = v7;
    v180 = v12;
    v89 = 0;
    v90 = v83;
    v91 = 0;
    v198 = v86 + 32;
    *&v87 = 136315138;
    v187 = v87;
    v92 = v90;
    v195 = v90;
    v197 = v86;
    while (1)
    {
      if (v89 >= *(v88 + 16))
      {
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v93 = (v198 + 16 * v89);
      v95 = *v93;
      v94 = v93[1];
      v96 = objc_allocWithZone(MEMORY[0x1E69CE7F8]);

      v202 = [v96 init];
      v207 = v95;
      v208 = v94;
      OUTLINED_FUNCTION_24_4(58);
      v97 = sub_1AC7A07F8();
      v98 = v97;
      if (v97[2] != 3)
      {

        if (off_1ED937D60 != -1)
        {
          OUTLINED_FUNCTION_3_0();
          swift_once();
        }

        v112 = sub_1AC79FDE8();
        OUTLINED_FUNCTION_10_3(v112, qword_1ED9386C8);
        v113 = v192;

        v114 = sub_1AC79FDC8();
        LOBYTE(v1) = sub_1AC7A05F8();

        if (os_log_type_enabled(v114, v1))
        {
          v115 = swift_slowAlloc();
          v116 = OUTLINED_FUNCTION_48();
          v207 = v116;
          *v115 = v187;
          *(v115 + 4) = sub_1AC5CFE74(v188, v113, &v207);
          _os_log_impl(&dword_1AC5BC000, v114, v1, "SELF: Encountered malformed string during SELF logging for interpolation weights in speech results from recognizer. String: %s", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v116);
          OUTLINED_FUNCTION_70();
          OUTLINED_FUNCTION_70();
        }

        v117 = sub_1AC79FDC8();
        v118 = sub_1AC7A05F8();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = OUTLINED_FUNCTION_20();
          LOBYTE(v1) = v119;
          *v119 = 0;
          _os_log_impl(&dword_1AC5BC000, v117, v118, "SELF: Expected interpolation weight sets separated by delimiter ';' - starting with a set of weights delimited by ',' and ending the with start/end times delimited by ':'. Ex: '0.999646,0.000354:0:4280;0.947514,0.000158:0:3859'", v119, 2u);
          OUTLINED_FUNCTION_70();
        }

        v120 = v92;
LABEL_119:

        v92 = v120;
        goto LABEL_120;
      }

      v99 = v97[6];
      v100 = v97[7];
      v207 = 0;

      OUTLINED_FUNCTION_6_4();
      v102 = sub_1AC649ACC(v99, v100, &v207, v101);

      if (v98[2] < 3uLL)
      {
        goto LABEL_167;
      }

      v103 = *&v207;
      v104 = v98[8];
      v105 = v98[9];
      v207 = 0;

      OUTLINED_FUNCTION_6_4();
      v107 = sub_1AC649ACC(v104, v105, &v207, v106);

      if (v202)
      {
        if (!v102)
        {
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          return;
        }

        v108 = *&v207;
        v109 = sub_1AC6421A8(v103);
        v110 = v202;
        [v202 setStartTimeInNs_];
        if (!v107)
        {
          goto LABEL_171;
        }

        v111 = v110;
        OUTLINED_FUNCTION_36_2();

        [v107 setEndTimeInNs_];
      }

      else
      {
      }

      if (!v98[2])
      {
        goto LABEL_168;
      }

      v121 = v98[4];
      v1 = v98[5];

      v207 = v121;
      v208 = v1;
      OUTLINED_FUNCTION_24_4(44);
      v122 = sub_1AC7A07F8();

      if (!v202)
      {

        v120 = v195;
        goto LABEL_117;
      }

      v193 = v89;
      v123 = MEMORY[0x1E69E7CC0];
      v205 = MEMORY[0x1E69E7CC0];
      v124 = *(v122 + 16);
      v125 = v202;
      v194 = v125;
      v195 = v123;
      v126 = 0;
LABEL_91:
      v127 = (v122 + 40 + 16 * v126);
      while (v124 != v126)
      {
        if (v126 >= *(v122 + 16))
        {
          __break(1u);
          goto LABEL_166;
        }

        v1 = *(v127 - 1);
        v128 = *v127;
        v204 = 0;
        MEMORY[0x1EEE9AC00](v125);
        *(&v179 - 2) = &v204;
        if ((v128 & 0x1000000000000000) != 0)
        {
LABEL_109:

          sub_1AC7A09A8();
          if (v203)
          {
            goto LABEL_110;
          }

          goto LABEL_105;
        }

        if ((v128 & 0x2000000000000000) != 0)
        {
          v207 = v1;
          v208 = v128 & 0xFFFFFFFFFFFFFFLL;

          if (v1 <= 0x20u && ((1 << v1) & 0x100003E01) != 0)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if ((v1 & 0x1000000000000000) == 0)
          {
            goto LABEL_109;
          }

          v1 = (v128 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v129 = *((v128 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v129 <= 0x20 && ((1 << v129) & 0x100003E01) != 0)
          {
            goto LABEL_105;
          }
        }

        v131 = _swift_stdlib_strtof_clocale();
        if (v131 && !*v131)
        {
LABEL_110:
          v1 = sub_1AC7A0408();

          MEMORY[0x1B26E8CF0](v132);
          v133 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v133 >> 1)
          {
            OUTLINED_FUNCTION_9(v133);
            sub_1AC7A0178();
          }

          ++v126;
          v125 = sub_1AC7A0198();
          v195 = v205;
          goto LABEL_91;
        }

LABEL_105:

        v127 += 2;
        ++v126;
      }

      v134 = v194;
      sub_1AC649870(v195, v194, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setWeights_);

      v135 = v134;
      MEMORY[0x1B26E8CF0]();
      OUTLINED_FUNCTION_12_3(v209);
      if (v136)
      {
        OUTLINED_FUNCTION_8_3();
      }

      sub_1AC7A0198();
      v92 = v209;
      v120 = v209;
      v89 = v193;
LABEL_117:
      if (v201)
      {
        sub_1AC5CF764(0, &qword_1EB56AAC8, 0x1E69CE7F8);
        v137 = v196;
        OUTLINED_FUNCTION_36_2();
        v117 = sub_1AC7A0148();
        v138 = OUTLINED_FUNCTION_33_3();
        [v138 v139];

        v195 = v120;
        goto LABEL_119;
      }

      v195 = v120;
LABEL_120:
      ++v89;

      v88 = v197;
      if (v89 == v199)
      {

        v12 = v180;
        v84 = v191;
        v7 = v181;
        break;
      }
    }
  }

LABEL_124:
  v140 = *(v84 + 120);
  v141 = v184;
  v142 = v186;
  if (v140 && v201)
  {
    v143 = *(v140 + 16);
    if (v143)
    {
      v181 = v7;
      v144 = v184;
      v145 = v12;
      v207 = MEMORY[0x1E69E7CC0];
      v146 = v196;

      sub_1AC7A0A88();
      v147 = 32;
      do
      {
        sub_1AC642158(*(v140 + v147));
        sub_1AC7A0EE8();
        sub_1AC7A0A68();
        v1 = *(v207 + 16);
        sub_1AC7A0A98();
        sub_1AC7A0AA8();
        sub_1AC7A0A78();
        v147 += 8;
        --v143;
      }

      while (v143);

      v148 = v207;
      v149 = v196;
      v12 = v145;
      v141 = v144;
      v7 = v181;
      v142 = v186;
    }

    else
    {
      v149 = v196;
      v150 = v196;
      v148 = MEMORY[0x1E69E7CC0];
    }

    sub_1AC649870(v148, v149, &qword_1EB56AAA0, 0x1E696AD98, &selRef_setPausedAudioDurationsInNs_);
  }

  v151 = [objc_allocWithZone(MEMORY[0x1E69CE890]) init];
  type metadata accessor for Instrumentation();
  switch(sub_1AC727560(v7, v191))
  {
    case 1u:
      v169 = [objc_allocWithZone(MEMORY[0x1E69CE748]) init];
      v152 = v169;
      if (v169)
      {
        [v169 setReason_];
      }

      OUTLINED_FUNCTION_30_1([v152 setMetrics_], sel_setCancelled_);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v170 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v170, qword_1ED9386C8);
      v154 = sub_1AC79FDC8();
      v171 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_17_3(v171))
      {
        v172 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_27_3(v172);
        v157 = "SELF: Logging ASRRequestContext->cancelled with reason RECOGNITION_CANCELLED in SELF based on error result from recognizer.";
        goto LABEL_159;
      }

      break;
    case 2u:
      v161 = [objc_allocWithZone(MEMORY[0x1E69CE748]) init];
      v152 = v161;
      if (v161)
      {
        [v161 setReason_];
      }

      OUTLINED_FUNCTION_30_1([v152 setMetrics_], sel_setCancelled_);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v162 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v162, qword_1ED9386C8);
      v154 = sub_1AC79FDC8();
      v163 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_17_3(v163))
      {
        v164 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_27_3(v164);
        v157 = "SELF: Logging ASRRequestContext->cancelled with reason RECOGNITION_REJECTED in SELF based on error result from recognizer.";
        goto LABEL_159;
      }

      break;
    case 3u:
      v165 = [objc_allocWithZone(MEMORY[0x1E69CE748]) init];
      v152 = v165;
      if (v165)
      {
        [v165 setReason_];
      }

      OUTLINED_FUNCTION_30_1([v152 setMetrics_], sel_setCancelled_);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v166 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v166, qword_1ED9386C8);
      v154 = sub_1AC79FDC8();
      v167 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_17_3(v167))
      {
        v168 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_27_3(v168);
        v157 = "SELF: Logging ASRRequestContext->cancelled with reason RECOGNITION_REJECTED in SELF because nothing was recognized (SpeechNoMatch).";
        goto LABEL_159;
      }

      break;
    case 4u:
      v152 = [objc_allocWithZone(MEMORY[0x1E69CE790]) init];
      OUTLINED_FUNCTION_30_1([v152 setMetrics_], sel_setFailed_);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v158 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v158, qword_1ED9386C8);
      v154 = sub_1AC79FDC8();
      v159 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_17_3(v159))
      {
        v160 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_27_3(v160);
        v157 = "SELF: Logging ASRRequestContext->failed in SELF based on error result from recognizer.";
        goto LABEL_159;
      }

      break;
    default:
      v152 = [objc_allocWithZone(MEMORY[0x1E69CE788]) init];
      OUTLINED_FUNCTION_30_1([v152 setMetrics_], sel_setEnded_);
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v153 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v153, qword_1ED9386C8);
      v154 = sub_1AC79FDC8();
      v155 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_17_3(v155))
      {
        v156 = OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_27_3(v156);
        v157 = "SELF: Logging ASRRequestContext->ended in SELF based on success status from recognizer.";
LABEL_159:
        _os_log_impl(&dword_1AC5BC000, v154, v1, v157, v142, 2u);
        OUTLINED_FUNCTION_70();
        v142 = v7;
      }

      break;
  }

  v91 = v151;
  sub_1AC6482E4(v12, v189, v142, v151, v141);

  if (qword_1EB56AF50 != -1)
  {
LABEL_169:
    OUTLINED_FUNCTION_1_6();
  }

  v173 = [qword_1EB56E6A8 captureSnapshot];
  v174 = v183;
  if (v173)
  {
    v175 = v173;
    v176 = [objc_opt_self() context];
    if (!v176)
    {
      goto LABEL_172;
    }

    v177 = v176;
    v178 = sub_1AC79F918();
    [v175 logWithEventContext:v177 asrIdentifier:v178];
  }

  OUTLINED_FUNCTION_130();
}

id sub_1AC6478D0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1AC79FF58();

  v2 = [v0 initWithString_];

  return v2;
}

void sub_1AC647944()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0;
  v3 = v2;
  v37 = 44;
  v38 = 0xE100000000000000;
  v35[2] = &v37;

  v4 = sub_1AC6490B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1AC637CD4, v35, v3, v1);
  v5 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v6 = v4 + 56;
  v33 = *(v4 + 16);
  v34 = v4;
  v31 = v4 + 56;
LABEL_2:
  for (i = (v6 + 32 * v5); ; i += 4)
  {
    if (v33 == v5)
    {

      OUTLINED_FUNCTION_130();
      return;
    }

    if (v5 >= *(v34 + 16))
    {
      break;
    }

    v9 = *(i - 1);
    v8 = *i;
    v11 = *(i - 3);
    v10 = *(i - 2);
    v37 = 58;
    v38 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v4);
    v30[2] = &v37;
    swift_bridgeObjectRetain_n();
    v12 = sub_1AC64944C(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1AC637EC4, v30, v11, v10, v9, v8);
    v13 = v12;
    if (v12[2] != 3)
    {
      goto LABEL_11;
    }

    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[6];
    v17 = v12[7];

    MEMORY[0x1B26E8BE0](v14, v15, v16, v17);

    v18 = sub_1AC647C64();

    if ((v18 & 0x100000000) != 0)
    {
LABEL_11:
    }

    else
    {
      if (v13[2] < 3uLL)
      {
        goto LABEL_19;
      }

      v19 = v13[12];
      v20 = v13[13];
      v21 = v13[14];
      v22 = v13[15];

      v23 = MEMORY[0x1B26E8BE0](v19, v20, v21, v22);
      v25 = v24;

      LODWORD(v37) = 0;
      LOBYTE(v23) = sub_1AC649ACC(v23, v25, &v37, MEMORY[0x1E69E7CE0]);

      if (v23)
      {
        v26 = v37;
        v27 = [objc_allocWithZone(MEMORY[0x1E69CE898]) init];
        [v27 setEventType_];
        LODWORD(v28) = v26;
        [v27 setEventDuration_];

        if (v27)
        {
          MEMORY[0x1B26E8CF0]();
          OUTLINED_FUNCTION_12_3(v36);
          if (v29)
          {
            OUTLINED_FUNCTION_8_3();
          }

          ++v5;
          v4 = sub_1AC7A0198();
          v32 = v36;
          v6 = v31;
          goto LABEL_2;
        }
      }

      else
      {
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1AC647C64()
{
  sub_1AC7A0008();
  v1 = v0;
  OUTLINED_FUNCTION_65();
  v4 = v2 == 0xD000000000000010 && v3 == v1;
  if (v4 || (v5 = v2, (OUTLINED_FUNCTION_5_0() & 1) != 0))
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_65();
    v9 = v5 == 0xD000000000000015 && v8 == v1;
    if (v9 || (OUTLINED_FUNCTION_5_0() & 1) != 0)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_65();
      v11 = v5 == 0xD000000000000024 && v10 == v1;
      if (v11 || (OUTLINED_FUNCTION_5_0() & 1) != 0)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_65();
        v13 = v5 == 0xD00000000000001FLL && v12 == v1;
        if (v13 || (OUTLINED_FUNCTION_5_0() & 1) != 0)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_65();
          v15 = v5 == 0xD000000000000013 && v14 == v1;
          if (v15 || (OUTLINED_FUNCTION_5_0() & 1) != 0)
          {

            return 5;
          }

          else
          {
            OUTLINED_FUNCTION_65();
            v17 = v5 == 0xD000000000000010 && v16 == v1;
            if (v17 || (OUTLINED_FUNCTION_5_0() & 1) != 0)
            {

              return 6;
            }

            else
            {
              OUTLINED_FUNCTION_65();
              v19 = v5 == 0xD000000000000022 && v18 == v1;
              if (v19 || (OUTLINED_FUNCTION_5_0() & 1) != 0)
              {

                return 7;
              }

              else
              {
                OUTLINED_FUNCTION_65();
                if (v5 == 0xD000000000000022 && v20 == v1)
                {

                  return 8;
                }

                else
                {
                  v22 = OUTLINED_FUNCTION_5_0();

                  v6 = 8;
                  if ((v22 & 1) == 0)
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

void sub_1AC647E74()
{
  OUTLINED_FUNCTION_129_0();
  v47 = v1;
  v3 = v2;
  v5 = v4;
  v49 = v6;
  v50 = v7;
  v45 = v8;
  v51 = v9;
  v10 = sub_1AC79F958();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
  v15 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  sub_1AC79F938();

  v16 = sub_1AC6BB39C(v14);
  v17 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  sub_1AC79F938();

  v18 = sub_1AC6BB39C(v14);
  v19 = [objc_allocWithZone(MEMORY[0x1E69CE768]) init];
  v20 = v19;
  if (v19)
  {
    [v19 setVoiceCommandId_];
    [v20 setDictationVoiceCommandLinkId_];
  }

  if (v5)
  {
    v21 = v5;
    v22 = [v21 voiceCommandDebugInfo];
    if (v22)
    {
      v23 = v22;
      if (v20)
      {
        v24 = v20;
        [v24 setCommandParserStartTimeInNs_];

        v25 = v24;
        [v25 setCommandParserEndTimeInNs_];
      }

      v26 = [v21 recognition];
      v27 = [v26 oneBest];

      sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
      v28 = sub_1AC7A0158();

      v29 = sub_1AC68D3EC(v28);

      if (v29)
      {
        [v29 silenceStart];
        v31 = v30;

        if (v20)
        {
          type metadata accessor for SelfLoggingHelper();
          [v20 setCommandEndTimeInNs_];
        }
      }

      type metadata accessor for SelfLoggingHelper();
      if (sub_1AC641ED4(v49, v50) & 1) == 0 || (v3)
      {
        goto LABEL_35;
      }

      v32 = [objc_allocWithZone(MEMORY[0x1E69CE760]) init];
      v33 = sub_1AC6499DC(v23, &selRef_precedingUtterance);
      if (v34)
      {
        if (v32)
        {
          sub_1AC649A3C(v33, v34, v32, &selRef_setPreviousUtterance_);
LABEL_18:
          v35 = v32;
          sub_1AC6499DC(v23, &selRef_commandUtterance);
          if (v36)
          {
            v37 = sub_1AC79FF58();
          }

          else
          {
            v37 = 0;
          }

          [v35 setCommandUtterance_];

          goto LABEL_23;
        }
      }

      else if (v32)
      {
        goto LABEL_18;
      }

LABEL_23:
      v38 = sub_1AC6499DC(v23, &selRef_target);
      if (v39)
      {
        if (v32)
        {
          sub_1AC649A3C(v38, v39, v32, &selRef_setTarget_);
        }

        else
        {
        }
      }

      v40 = sub_1AC6499DC(v23, &selRef_payload);
      if (v41)
      {
        if (v32)
        {
          sub_1AC649A3C(v40, v41, v32, &selRef_setPayload_);
LABEL_31:
          [v32 setDictationVoiceCommandLinkId_];
          v42 = v32;
LABEL_34:
          v43 = v32;
          sub_1AC6482E4(v46, v49, v50, v42, v48);

LABEL_35:
          v44 = v20;
          sub_1AC6482E4(v46, v49, v50, v20, v48);

          sub_1AC7A05C8();
          goto LABEL_36;
        }
      }

      else if (v32)
      {
        goto LABEL_31;
      }

      v42 = 0;
      goto LABEL_34;
    }
  }

  __swift_storeEnumTagSinglePayload(v51, 1, 1, v10);
LABEL_36:
  OUTLINED_FUNCTION_130();
}

void sub_1AC6482E4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v11 = sub_1AC79F958();
  v12 = OUTLINED_FUNCTION_40(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v19 = v18 - v17;
  if (!a4)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v28 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v28, qword_1ED9386C8);
    v89 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v89, v29))
    {
      v30 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_37_4(v30);
      OUTLINED_FUNCTION_45_4(&dword_1AC5BC000, v31, v32, "topLevelEvent is nil");
      OUTLINED_FUNCTION_16_4();
    }

    goto LABEL_21;
  }

  v88 = v5;
  type metadata accessor for SelfLoggingHelper();
  v20 = a4;
  if (sub_1AC6424A8(v20, a2, a3))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v21 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v21, qword_1ED9386C8);
    v22 = v20;

    v89 = sub_1AC79FDC8();
    v23 = sub_1AC7A05F8();

    if (os_log_type_enabled(v89, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = OUTLINED_FUNCTION_48();
      v90 = v26;
      *v24 = 138412546;
      *(v24 + 4) = v22;
      *v25 = a4;
      *(v24 + 12) = 2080;
      v27 = v22;
      *(v24 + 14) = sub_1AC5CFE74(a2, a3, &v90);
      _os_log_impl(&dword_1AC5BC000, v89, v23, "Logging prohibited for event:%@ task:%s", v24, 0x16u);
      sub_1AC5C7264(v25, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_70();
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_16_4();

      return;
    }

    goto LABEL_21;
  }

  v33 = OUTLINED_FUNCTION_49_3(objc_allocWithZone(MEMORY[0x1E69CE758]));
  if (!v33)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v39 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v39, qword_1ED9386C8);
    v89 = sub_1AC79FDC8();
    sub_1AC7A05F8();
    OUTLINED_FUNCTION_38_2();
    if (os_log_type_enabled(v89, v40))
    {
      v41 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_37_4(v41);
      OUTLINED_FUNCTION_45_4(&dword_1AC5BC000, v42, v43, "Failed to create SELF event metadata");
      OUTLINED_FUNCTION_16_4();
    }

LABEL_21:

    return;
  }

  v34 = v33;
  sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
  (*(v14 + 16))(v19, a1, v11);
  v35 = sub_1AC6BB39C(v19);
  [v34 setAsrId_];

  v36 = [objc_allocWithZone(MEMORY[0x1E69CE750]) (a2 + 2936)];
  if (v36)
  {
    v37 = v36;
    [v36 setEventMetadata_];
    objc_opt_self();
    OUTLINED_FUNCTION_4_4();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      [v37 setPreheatContext_];
    }

    else
    {
      objc_opt_self();
      OUTLINED_FUNCTION_4_4();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
        [v37 setRequestContext_];
      }

      else
      {
        objc_opt_self();
        OUTLINED_FUNCTION_4_4();
        v49 = swift_dynamicCastObjCClass();
        if (v49)
        {
          [v37 setPartialResultGenerated_];
        }

        else
        {
          objc_opt_self();
          OUTLINED_FUNCTION_4_4();
          v50 = swift_dynamicCastObjCClass();
          if (v50)
          {
            [v37 setPackageGenerated_];
          }

          else
          {
            objc_opt_self();
            OUTLINED_FUNCTION_4_4();
            v51 = swift_dynamicCastObjCClass();
            if (v51)
            {
              [v37 setRecognitionResultTier1_];
            }

            else
            {
              objc_opt_self();
              OUTLINED_FUNCTION_4_4();
              v52 = swift_dynamicCastObjCClass();
              if (v52)
              {
                [v37 setRescoringDeliberationResultTier1_];
              }

              else
              {
                objc_opt_self();
                OUTLINED_FUNCTION_4_4();
                v53 = swift_dynamicCastObjCClass();
                if (v53)
                {
                  [v37 setFinalResultGenerated_];
                }

                else
                {
                  objc_opt_self();
                  OUTLINED_FUNCTION_4_4();
                  v54 = swift_dynamicCastObjCClass();
                  if (v54)
                  {
                    [v37 setIntermediateUtteranceInfoTier1_];
                  }

                  else
                  {
                    objc_opt_self();
                    OUTLINED_FUNCTION_4_4();
                    v55 = swift_dynamicCastObjCClass();
                    if (v55)
                    {
                      [v37 setInitializationContext_];
                    }

                    else
                    {
                      objc_opt_self();
                      OUTLINED_FUNCTION_4_4();
                      v56 = swift_dynamicCastObjCClass();
                      if (v56)
                      {
                        [v37 setActiveConfigUpdateContext_];
                      }

                      else
                      {
                        objc_opt_self();
                        OUTLINED_FUNCTION_4_4();
                        v57 = swift_dynamicCastObjCClass();
                        if (v57)
                        {
                          [v37 setLanguageModelEnrollmentContext_];
                        }

                        else
                        {
                          objc_opt_self();
                          OUTLINED_FUNCTION_4_4();
                          v58 = swift_dynamicCastObjCClass();
                          if (v58)
                          {
                            [v37 setJitLanguageModelEnrollmentEndedTier1_];
                          }

                          else
                          {
                            objc_opt_self();
                            OUTLINED_FUNCTION_4_4();
                            v59 = swift_dynamicCastObjCClass();
                            if (v59)
                            {
                              [v37 setAudioPacketArrivalContext_];
                            }

                            else
                            {
                              objc_opt_self();
                              OUTLINED_FUNCTION_4_4();
                              v60 = swift_dynamicCastObjCClass();
                              if (v60)
                              {
                                [v37 setFirstAudioPacketProcessed_];
                              }

                              else
                              {
                                objc_opt_self();
                                OUTLINED_FUNCTION_4_4();
                                v61 = swift_dynamicCastObjCClass();
                                if (v61)
                                {
                                  [v37 setFinalAudioPacketContainingSpeechReceived_];
                                }

                                else
                                {
                                  objc_opt_self();
                                  OUTLINED_FUNCTION_4_4();
                                  v62 = swift_dynamicCastObjCClass();
                                  if (v62)
                                  {
                                    [v37 setEmbeddedSpeechProcessContext_];
                                  }

                                  else
                                  {
                                    objc_opt_self();
                                    OUTLINED_FUNCTION_4_4();
                                    v63 = swift_dynamicCastObjCClass();
                                    if (v63)
                                    {
                                      [v37 setAppleNeuralEngineModelInitializationContext_];
                                    }

                                    else
                                    {
                                      objc_opt_self();
                                      OUTLINED_FUNCTION_4_4();
                                      v64 = swift_dynamicCastObjCClass();
                                      if (v64)
                                      {
                                        [v37 setFrameProcessingReady_];
                                      }

                                      else
                                      {
                                        objc_opt_self();
                                        OUTLINED_FUNCTION_4_4();
                                        v65 = swift_dynamicCastObjCClass();
                                        if (v65)
                                        {
                                          [v37 setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived_];
                                        }

                                        else
                                        {
                                          objc_opt_self();
                                          OUTLINED_FUNCTION_4_4();
                                          v66 = swift_dynamicCastObjCClass();
                                          if (v66)
                                          {
                                            [v37 setAudioSpeechPacketArrivalContext_];
                                          }

                                          else
                                          {
                                            objc_opt_self();
                                            OUTLINED_FUNCTION_4_4();
                                            v67 = swift_dynamicCastObjCClass();
                                            if (v67)
                                            {
                                              [v37 setLeadingSilenceProcessed_];
                                            }

                                            else
                                            {
                                              objc_opt_self();
                                              OUTLINED_FUNCTION_4_4();
                                              v68 = swift_dynamicCastObjCClass();
                                              if (v68)
                                              {
                                                [v37 setFirstSecondAfterLeadingSilenceProcessed_];
                                              }

                                              else
                                              {
                                                objc_opt_self();
                                                OUTLINED_FUNCTION_4_4();
                                                v69 = swift_dynamicCastObjCClass();
                                                if (v69)
                                                {
                                                  [v37 setFirstAudioPacketRecorded_];
                                                }

                                                else
                                                {
                                                  objc_opt_self();
                                                  OUTLINED_FUNCTION_4_4();
                                                  v70 = swift_dynamicCastObjCClass();
                                                  if (v70)
                                                  {
                                                    [v37 setAudioPacketContainingEndOfFirstWordReadyUpstream_];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_self();
                                                    OUTLINED_FUNCTION_4_4();
                                                    v71 = swift_dynamicCastObjCClass();
                                                    if (v71)
                                                    {
                                                      [v37 setFirstAudioPacketReadyUpstream_];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_self();
                                                      OUTLINED_FUNCTION_4_4();
                                                      v72 = swift_dynamicCastObjCClass();
                                                      if (v72)
                                                      {
                                                        [v37 setFinalAudioPacketContainingSpeechReadyUpstream_];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_self();
                                                        OUTLINED_FUNCTION_4_4();
                                                        v73 = swift_dynamicCastObjCClass();
                                                        if (v73)
                                                        {
                                                          [v37 setDictationVoiceCommandMetricsReported_];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_self();
                                                          OUTLINED_FUNCTION_4_4();
                                                          v74 = swift_dynamicCastObjCClass();
                                                          if (v74)
                                                          {
                                                            [v37 setDictationVoiceCommandInfoTier1_];
                                                          }

                                                          else
                                                          {
                                                            objc_opt_self();
                                                            OUTLINED_FUNCTION_4_4();
                                                            v75 = swift_dynamicCastObjCClass();
                                                            if (v75)
                                                            {
                                                              [v37 setPersonalizationUserEditNamedEntityMetrics_];
                                                            }

                                                            else
                                                            {
                                                              if (off_1ED937D60 != -1)
                                                              {
                                                                OUTLINED_FUNCTION_3_0();
                                                                swift_once();
                                                              }

                                                              v84 = sub_1AC79FDE8();
                                                              OUTLINED_FUNCTION_10_3(v84, qword_1ED9386C8);
                                                              v85 = sub_1AC79FDC8();
                                                              v86 = sub_1AC7A05F8();
                                                              if (os_log_type_enabled(v85, v86))
                                                              {
                                                                v87 = OUTLINED_FUNCTION_20();
                                                                *v87 = 0;
                                                                _os_log_impl(&dword_1AC5BC000, v85, v86, "SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the ASR SELF schema.", v87, 2u);
                                                                OUTLINED_FUNCTION_70();
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
                  }
                }
              }
            }
          }
        }
      }
    }

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v76 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v76, qword_1ED9386C8);
    v77 = v20;
    v78 = sub_1AC79FDC8();
    v79 = sub_1AC7A05E8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138412290;
      *(v80 + 4) = v77;
      *v81 = a4;
      v82 = v77;
      _os_log_impl(&dword_1AC5BC000, v78, v79, "SELF: Wrapping and logging an event of type %@", v80, 0xCu);
      sub_1AC5C7264(v81, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    v83 = *(v88 + 16);
    if (a5)
    {
      [v83 emitMessage:v37 timestamp:sub_1AC648DD8(a5)];
    }

    else
    {
      [v83 emitMessage_];
    }
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v44 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v44, qword_1ED9386C8);
    v45 = sub_1AC79FDC8();
    v46 = sub_1AC7A05F8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_20();
      *v47 = 0;
      _os_log_impl(&dword_1AC5BC000, v45, v46, "Failed to create SELF event", v47, 2u);
      OUTLINED_FUNCTION_70();
    }
  }
}

uint64_t sub_1AC648DD8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  mach_get_times();
  result = a1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SelfLoggingHelper.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SelfLoggingHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t SelfLoggingPreheatWithPowerContainer.__deallocating_deinit()
{
  SelfLoggingPreheatWithPowerContainer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1AC648F8C()
{
  OUTLINED_FUNCTION_44_2();
  v0 = OUTLINED_FUNCTION_89();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    sub_1AC7A0828();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (OUTLINED_FUNCTION_41_3())
    {
      return v4;
    }
  }

  else
  {
    sub_1AC5C7264(v7, &unk_1EB56C620, &unk_1AC7A7A00);
  }

  return 0;
}

uint64_t sub_1AC649050(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_1AC7A07E8();
  }

  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_42_3();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC6490B0(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1AC7A00F8();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_1AC60E11C();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1AC60E11C();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = sub_1AC7A00C8();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_1AC7A0068();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = sub_1AC7A00F8();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v49 + 16);
      sub_1AC60E11C();
      v49 = v28;
    }

    v12 = *(v49 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v49 + 24) >> 1)
    {
      sub_1AC60E11C();
      v49 = v29;
    }

    *(v49 + 16) = v11;
    v26 = (v49 + 32 * v12);
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = sub_1AC7A0068();
    if ((v22 & 1) == 0 && *(v49 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1AC7A00F8();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_1AC60E11C();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC64944C(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v53[3] = a7;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v16 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v16 != v13)
  {
    v8 = a4;
    v51 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v49 = v10;
      while (1)
      {
        v17 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v10 = v49;
          goto LABEL_24;
        }

        v12 = a8;
        v18 = sub_1AC7A07B8();
        a8 = v19;
        v53[0] = v18;
        v53[1] = v19;
        v20 = a3(v53);
        if (v9)
        {

          return a8;
        }

        v21 = v20;

        if (v21)
        {
          break;
        }

        a8 = v12;
        v10 = sub_1AC7A07A8();
      }

      v23 = (v49 >> 14 == v17) & a2;
      a8 = v12;
      if (!v23)
      {
        if (v17 < v49 >> 14)
        {
          __break(1u);
          return result;
        }

        v50 = sub_1AC7A07C8();
        v45 = v25;
        v46 = v24;
        v44 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v51 + 16);
          sub_1AC60E11C();
          v51 = v30;
        }

        v27 = *(v51 + 16);
        if (v27 >= *(v51 + 24) >> 1)
        {
          sub_1AC60E11C();
          v51 = v31;
        }

        *(v51 + 16) = v27 + 1;
        v28 = (v51 + 32 * v27);
        v28[4] = v50;
        v28[5] = v46;
        v28[6] = v45;
        v28[7] = v44;
        a8 = v12;
      }

      v10 = sub_1AC7A07A8();
    }

    while (v23 || *(v51 + 16) != a1);
LABEL_24:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v51;
    }

    a8 = v51;
    if (v13 >= v10 >> 14)
    {
      v8 = sub_1AC7A07C8();
      v10 = v37;
      v12 = v38;
      v13 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_32:
      v14 = *(a8 + 16);
      v36 = *(a8 + 24);
LABEL_33:
      v11 = v14 + 1;
      if (v14 < v36 >> 1)
      {
LABEL_34:
        *(a8 + 16) = v11;
        v40 = (a8 + 32 * v14);
        v40[4] = v8;
        v40[5] = v10;
        v40[6] = v12;
        v40[7] = v13;
        return a8;
      }

LABEL_37:
      sub_1AC60E11C();
      a8 = v41;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    v42 = *(a8 + 16);
    sub_1AC60E11C();
    a8 = v43;
    goto LABEL_32;
  }

  if (v16 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v16)
    {
      v8 = sub_1AC7A07C8();
      v10 = v32;
      v12 = v33;
      v13 = v34;

      sub_1AC60E11C();
      a8 = v35;
      v14 = *(v35 + 16);
      v36 = *(v35 + 24);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_39;
  }

  return MEMORY[0x1E69E7CC0];
}

_BYTE *sub_1AC649800@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X2>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = a2()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

void sub_1AC649870(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_1AC5CF764(0, a3, a4);
  OUTLINED_FUNCTION_4_4();
  v7 = sub_1AC7A0148();

  [a2 *a5];
}

uint64_t sub_1AC6498F0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v4 = sub_1AC7A0158();

  return v4;
}

void sub_1AC64995C(uint64_t a1, void *a2, SEL *a3)
{
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  OUTLINED_FUNCTION_4_4();
  v5 = sub_1AC7A0148();
  [a2 *a3];
}

uint64_t sub_1AC6499DC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1AC79FF68();

  return v4;
}

void sub_1AC649A3C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1AC79FF58();

  [a3 *a4];
}

uint64_t sub_1AC649AA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1AC70FDD4() & 1;
}

BOOL sub_1AC649ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 < 0x21 && ((0x100003E01uLL >> v6) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

LABEL_14:
    sub_1AC7A09A8();
    if (!v4)
    {
      return v11;
    }

    return v8;
  }

  v10[0] = a1;
  v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

  v5 = v10;
LABEL_10:
  v7 = a4(v5, a3);
  if (!v7)
  {
    return 0;
  }

  return *v7 == 0;
}

unint64_t sub_1AC649BF0()
{
  result = qword_1EB56ACC0;
  if (!qword_1EB56ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56ACC0);
  }

  return result;
}

unint64_t sub_1AC649C74()
{
  result = qword_1EB56AC88;
  if (!qword_1EB56AC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AC88);
  }

  return result;
}

void sub_1AC649CD8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_1AC7A0178();
}

id OUTLINED_FUNCTION_30_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_46_4(void *a1)
{

  sub_1AC5D4180(v2, v1, a1);
}

id OUTLINED_FUNCTION_47_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_1AC649E14(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v12 = sub_1AC79FDE8();
  __swift_project_value_buffer(v12, qword_1ED9386C8);
  if (*(a5 + 16))
  {
    v13 = a1[1];
    *a6 = *a1;
    *(a6 + 16) = v13;
    *(a6 + 32) = a1[2];
    *(a6 + 48) = a2;
    *(a6 + 56) = a3;
    *(a6 + 64) = a4;
    *(a6 + 72) = a5;
  }

  else
  {
    v14 = sub_1AC79FDC8();
    v15 = sub_1AC7A05F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1AC5CFE74(0xD00000000000001BLL, 0x80000001AC7B62B0, &v18);
      _os_log_impl(&dword_1AC5BC000, v14, v15, "Failed precondition: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }
}

void sub_1AC649F78()
{
  OUTLINED_FUNCTION_50_0();
  v15 = *v2;
  v16 = v2[1];
  v17 = v2[2];
  v12 = *v3;
  v13 = v3[1];
  v14 = v3[2];
  if (sub_1AC7A0548())
  {
    v4 = v1[6];
    v5 = v1[7];
    v6 = v1[8];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[8];
    if (sub_1AC7A06A8())
    {
      v10 = v1[9];
      v11 = v0[9];

      sub_1AC6285F8();
    }
  }
}

void sub_1AC64A014()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  sub_1AC7A0568();
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  sub_1AC7A06E8();
  v4 = *(v0 + 9);

  sub_1AC6336F0();
}

uint64_t sub_1AC64A088()
{
  v16 = *v0;
  v17 = v0[1];
  v18 = v0[2];
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  OUTLINED_FUNCTION_85_1();
  v5 = sub_1AC7A0568();
  OUTLINED_FUNCTION_38_3(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  sub_1AC7A06E8();
  sub_1AC6336F0();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64A11C()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  sub_1AC7A0E78();
  sub_1AC7A0568();
  sub_1AC7A06E8();
  sub_1AC6336F0();
  return sub_1AC7A0EC8();
}

void sub_1AC64A1A4()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0[1];
  v77 = *v0;
  v78 = v1;
  v79 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v5 = *(v0 + 8);
  v4 = *(v0 + 9);
  v65 = *(v0 + 11);
  v66 = *(v0 + 10);
  v64 = *(v0 + 12);
  v62 = *(v0 + 104);
  v6 = *(v0 + 124);
  v71 = *(v0 + 108);
  v72 = v6;
  v73 = *(v0 + 140);
  v58 = *(v0 + 20);
  v59 = *(v0 + 21);
  v60 = *(v0 + 22);
  v7 = *(v0 + 23);
  v53 = *(v0 + 192);
  v50 = *(v0 + 216);
  v51 = *(v0 + 200);
  v49 = *(v0 + 232);
  v48 = *(v0 + 30);
  v40 = *(v0 + 31);
  v42 = *(v0 + 256);
  v9 = v8[1];
  v80 = *v8;
  v81 = v9;
  v82 = v8[2];
  v10 = *(v8 + 6);
  v11 = *(v8 + 7);
  v12 = *(v8 + 8);
  v13 = *(v8 + 9);
  v15 = *(v8 + 10);
  v14 = *(v8 + 11);
  v63 = *(v8 + 12);
  v61 = *(v8 + 104);
  v16 = *(v8 + 140);
  v17 = *(v8 + 108);
  v75 = *(v8 + 124);
  v76 = v16;
  v74 = v17;
  v55 = *(v8 + 20);
  v56 = *(v8 + 21);
  v57 = *(v8 + 22);
  v18 = *(v8 + 23);
  v52 = *(v8 + 192);
  v54 = *(v8 + 26);
  v43 = *(v8 + 25);
  v44 = *(v8 + 27);
  v45 = *(v8 + 28);
  v46 = *(v8 + 232);
  v47 = *(v8 + 30);
  v39 = *(v8 + 31);
  v41 = *(v8 + 256);
  if ((sub_1AC7A0548() & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((sub_1AC7A06A8() & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC6285F8();
  if ((v19 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC628640();
  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC628938();
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC628F50();
  OUTLINED_FUNCTION_46_5();
  if ((v22 & 1) == 0 || v62 != v61 || (sub_1AC7A0548() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v58)
  {
    if (v55)
    {
      v23 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v23);
      v24 = OUTLINED_FUNCTION_16_2();
      sub_1AC63482C(v24);
      v25 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v25);
      sub_1AC6305D8();
      if (v26)
      {
        sub_1AC6306C8(v59, v56);
        v28 = v27;
        v29 = OUTLINED_FUNCTION_16_2();
        sub_1AC63486C(v29);

        v30 = OUTLINED_FUNCTION_15();
        sub_1AC63486C(v30);
        if ((v28 & 1) == 0 || v60 != v57)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      v36 = OUTLINED_FUNCTION_16_2();
      sub_1AC63486C(v36);

      v35 = OUTLINED_FUNCTION_15();
LABEL_20:
      sub_1AC63486C(v35);
      goto LABEL_21;
    }

    v32 = OUTLINED_FUNCTION_15();
    sub_1AC63482C(v32);
    sub_1AC63482C(0);
    v33 = OUTLINED_FUNCTION_15();
    sub_1AC63482C(v33);

LABEL_18:
    v34 = OUTLINED_FUNCTION_15();
    sub_1AC63486C(v34);
    v35 = OUTLINED_FUNCTION_16_2();
    goto LABEL_20;
  }

  sub_1AC63482C(0);
  if (v55)
  {
    v31 = OUTLINED_FUNCTION_16_2();
    sub_1AC63482C(v31);
    goto LABEL_18;
  }

  sub_1AC63482C(0);
  sub_1AC63486C(0);
LABEL_23:
  if (v53)
  {
    v37 = v54;
    if (!v52)
    {
      goto LABEL_21;
    }

LABEL_29:
    if (*(&v51 + 1))
    {
      v69[0] = v51;
      v69[1] = v50;
      v70 = v49;
      if (v37)
      {
        v67[0] = v43;
        v67[1] = v37;
        v67[2] = v44;
        v67[3] = v45;
        v68 = v46 & 1;
        static TranscriptionLatticeMitigatorResult.== infix(_:_:)(v69, v67);

        goto LABEL_21;
      }
    }

    else if (!v37)
    {

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v38 = v52;
  if (v7 != v18)
  {
    v38 = 1;
  }

  v37 = v54;
  if ((v38 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  OUTLINED_FUNCTION_130();
}

uint64_t sub_1AC64A5D4(const void *a1)
{
  v30 = *v1;
  v31 = v1[1];
  v32 = v1[2];
  v3 = *(v1 + 6);
  v4 = *(v1 + 7);
  v6 = *(v1 + 8);
  v5 = *(v1 + 9);
  v7 = *(v1 + 10);
  v8 = *(v1 + 11);
  v9 = *(v1 + 12);
  v22 = *(v1 + 104);
  v28 = *(v1 + 124);
  v29 = *(v1 + 140);
  v27 = *(v1 + 108);
  v10 = *(v1 + 20);
  v16 = *(v1 + 21);
  v17 = *(v1 + 22);
  v23 = *(v1 + 192);
  v18 = *(v1 + 25);
  v19 = *(v1 + 27);
  v20 = *(v1 + 28);
  v21 = *(v1 + 232);
  v24 = *(v1 + 26);
  v25 = *(v1 + 30);
  v14 = *(v1 + 23);
  v15 = *(v1 + 31);
  v26 = *(v1 + 256);
  sub_1AC7A0568();
  sub_1AC7A06E8();
  sub_1AC6336F0();
  sub_1AC633C28();
  sub_1AC6337D8();
  sub_1AC633790();
  MEMORY[0x1B26E9A40](v22);
  sub_1AC7A0568();
  if (v10)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC63459C(a1, v10);
    sub_1AC634414(a1, v16);
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1B26E9A70](v11);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (v23)
  {
    OUTLINED_FUNCTION_80_1();
    if (v24)
    {
LABEL_9:
      OUTLINED_FUNCTION_83();

      TranscriptionLatticeMitigatorResult.hash(into:)();

      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1B26E9A70](v12);
    if (v24)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_80_1();
LABEL_15:
  MEMORY[0x1B26E9A40](v25);
  if (v26)
  {
    return OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_83();
  return MEMORY[0x1B26E9A40](v15);
}

uint64_t sub_1AC64A7DC()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC64A5D4(v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC64A820()
{
  sub_1AC7A0E78();
  sub_1AC64A5D4(v1);
  return sub_1AC7A0EC8();
}

int *TranscriptionSegment.init(with:alternatives:tokens:alternativeTokens:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_80(v10);
  (*(v11 + 32))(a5, a1);
  result = type metadata accessor for TranscriptionSegment();
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t type metadata accessor for TranscriptionSegment()
{
  result = qword_1EB56AE48;
  if (!qword_1EB56AE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static TranscriptionToken.allTokensString(from:ipa:attributes:)()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1AC79F618();
  v9 = OUTLINED_FUNCTION_167(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v76 = v13 - v12;
  v14 = sub_1AC79F5C8();
  v15 = OUTLINED_FUNCTION_40(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_4();
  v87 = v20;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_0();
  v75 = v22;
  OUTLINED_FUNCTION_34();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v65 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v65 - v27;
  v29 = *(v5 + 16);
  if (v29)
  {
    v30 = v5;
    v31 = v1;
    v86 = v30;
    v32 = (v30 + 32);
    memcpy(v92, (v30 + 32), sizeof(v92));
    v74 = v32;
    memcpy(v91, v32, 0xA0uLL);
    sub_1AC64F5EC(v93);
    memcpy(v88, v93, 0xA0uLL);
    sub_1AC637BCC(v92, v94);
    v33 = 168;
    if (v3)
    {
      v33 = 288;
    }

    v67 = v33;
    static TranscriptionToken.tokenString(from:ipa:after:attributes:)();
    memcpy(v94, v91, 0xA0uLL);
    sub_1AC637C28(v94);
    v35 = *(v17 + 16);
    v34 = v17 + 16;
    v66 = v28;
    v35(v26, v28, v14);
    v36 = v29 - 1;
    v37 = v29 == 1;
    v81 = *(MEMORY[0x1E6960C70] + 16);
    v77 = (v34 - 8);
    v78 = (v34 + 16);
    v38 = *MEMORY[0x1E6960C70];
    v79 = *(MEMORY[0x1E6960C70] + 8);
    v80 = v38;
    v39 = (v86 + 192);
    v40 = 1;
    v72 = v31;
    v73 = v7;
    v69 = v26;
    v70 = v14;
    v68 = v29;
    v71 = v3;
    while (1)
    {
      if (v37 == v29)
      {
        (*v77)(v66, v14);
        v61 = *v78;
        v62 = OUTLINED_FUNCTION_25_5();
        v63(v62);
        OUTLINED_FUNCTION_130();
        return;
      }

      if (v37 >= v29)
      {
        break;
      }

      v41 = &v74[160 * v37];
      memcpy(v89, v41, sizeof(v89));
      if (!v36)
      {
        goto LABEL_33;
      }

      memcpy(v90, v39, sizeof(v90));
      memcpy(v88, v41, 0xA0uLL);
      memcpy(&v88[20], v39, 0xA0uLL);
      memcpy(v91, v88, sizeof(v91));
      v83 = v40 + 1;
      if (v40 + 1 == v29)
      {
        v42 = v29;
      }

      else
      {
        v42 = v40;
      }

      v84 = v42;
      sub_1AC637BCC(v89, v88);
      sub_1AC637BCC(v90, v88);
      sub_1AC5C6E6C();
      sub_1AC637C28(&v91[20]);
      v43 = 35;
      if ((v3 & 1) == 0)
      {
        v43 = 20;
      }

      v44 = *&v91[v43];
      v45 = *(v91 + v67);

      if (BYTE1(v91[32]) == 1 && LOBYTE(v91[12]) != 1)
      {
        *&v88[0] = 32;
        v88[1] = -1.7573882e159;
        MEMORY[0x1B26E8C40](*&v44, *&v45);

        v44 = v88[0];
        v45 = v88[1];
      }

      v85 = v39;
      v86 = v36;
      if (LOBYTE(v91[32]) == 1)
      {
        v88[0] = v44;
        v88[1] = v45;

        OUTLINED_FUNCTION_49_4();
      }

      v46 = *&v91[24];
      v82 = v91[25];
      v47 = *&v91[22];
      v48 = *&v91[23];
      sub_1AC79F608();
      sub_1AC79F5D8();
      v49 = sub_1AC7A06A8();
      v50 = v72;
      if ((v49 & 1) == 0 || (sub_1AC7A06A8() & 1) == 0) && (sub_1AC637EF8(0, v50))
      {
        v51 = sub_1AC7A0698();
        v53 = v52;
        v55 = v54;
        v88[0] = v47;
        v88[1] = v48;
        v88[2] = v46;
        *&v88[3] = v51;
        v88[4] = v52;
        v88[5] = v54;
        LOBYTE(v88[6]) = 0;
        sub_1AC64F69C();
        OUTLINED_FUNCTION_39_4();
        sub_1AC79F5E8();
        v88[0] = v47;
        v88[1] = v48;
        v88[2] = v46;
        *&v88[3] = v51;
        v88[4] = v53;
        v88[5] = v55;
        LOBYTE(v88[6]) = 0;
        sub_1AC64F6F0();
        OUTLINED_FUNCTION_39_4();
        sub_1AC79F5E8();
      }

      if (sub_1AC637EF8(1, v50))
      {
        LOBYTE(v3) = v71;
        v14 = v70;
        v29 = v68;
        v57 = v85;
        v56 = v86;
        if (*&v91[31] != 0.0)
        {
          v58 = *&v91[31] / 1000.0;
          v88[0] = *&v91[31] / 1000.0;
          LOBYTE(v88[1]) = 0;
          sub_1AC64F5F4();
          OUTLINED_FUNCTION_39_4();
          sub_1AC79F5E8();
          v88[0] = v58;
          LOBYTE(v88[1]) = 0;
          sub_1AC64F648();
          OUTLINED_FUNCTION_39_4();
          sub_1AC79F5E8();
        }

        sub_1AC637C28(v91);
      }

      else
      {
        sub_1AC637C28(v91);
        LOBYTE(v3) = v71;
        v14 = v70;
        v29 = v68;
        v57 = v85;
        v56 = v86;
      }

      v59 = v75;
      (*v78)(v75, v87, v14);
      OUTLINED_FUNCTION_0_5();
      sub_1AC65106C(&qword_1EB56B478, v60);
      sub_1AC79F5A8();
      sub_1AC5C720C(v91, &qword_1EB56C658, &qword_1AC7A9BF0);
      (*v77)(v59, v14);
      v36 = v56 - 1;
      v39 = v57 + 160;
      v40 = v83;
      v37 = v84;
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_130();

    sub_1AC79F508();
  }
}

uint64_t sub_1AC64AFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v5 = sub_1AC79F5C8();
  v6 = OUTLINED_FUNCTION_40(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_4();
  v62 = v11;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C750, &qword_1AC7AA668);
  OUTLINED_FUNCTION_167(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v55 = a3;
  sub_1AC79F5B8();
  v21 = sub_1AC79FBC8();
  OUTLINED_FUNCTION_80(v21);
  (*(v22 + 16))(v20, a1, v21);
  v23 = sub_1AC65106C(&qword_1EB56C4F8, MEMORY[0x1E6969C28]);
  v24 = sub_1AC7A04C8();
  if (v24)
  {
    v25 = v24;
    v67 = MEMORY[0x1E69E7CC0];
    sub_1AC631324();
    v64 = v67;
    OUTLINED_FUNCTION_10_4();
    result = sub_1AC7A0498();
    if ((v25 & 0x8000000000000000) == 0)
    {
      v63 = v25;
      v54 = v14;
      v27 = v65[0];
      v28 = v57 + 32;
      v29 = *(v57 + 16);
      v56 = (v8 + 32);
      v57 = v8 + 16;
      v60 = v20;
      v61 = v8;
      v58 = v23;
      v59 = v21;
      while (1)
      {
        v66 = v27;
        OUTLINED_FUNCTION_10_4();
        result = sub_1AC7A0498();
        if (v27 < v65[0])
        {
          break;
        }

        OUTLINED_FUNCTION_10_4();
        result = sub_1AC7A04E8();
        if (v27 >= v65[0])
        {
          goto LABEL_19;
        }

        v30 = sub_1AC7A0518();
        v32 = *v31;
        result = v30(v65, 0);
        if (!v29)
        {
          goto LABEL_20;
        }

        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v32 >= *(*v28 + 16))
        {
          goto LABEL_22;
        }

        v33 = v5;
        v34 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v35 = *(v8 + 72);
        v36 = *v28 + v34 + v35 * v32;
        v37 = v62;
        (*(v8 + 16))(v62, v36, v33);
        v38 = v64;
        v67 = v64;
        v39 = *(v64 + 16);
        if (v39 >= *(v64 + 24) >> 1)
        {
          sub_1AC631324();
          v37 = v62;
          v38 = v67;
        }

        *(v38 + 16) = v39 + 1;
        v64 = v38;
        (*v56)(v38 + v34 + v39 * v35, v37, v33);
        v66 = v27;
        v40 = v60;
        sub_1AC7A04D8();
        v27 = v65[0];
        --v29;
        v28 += 8;
        --v63;
        v5 = v33;
        v8 = v61;
        if (!v63)
        {
          sub_1AC5C720C(v40, &qword_1EB56C750, &qword_1AC7AA668);
          v14 = v54;
          v41 = v64;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1AC5C720C(v20, &qword_1EB56C750, &qword_1AC7AA668);
    v41 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v42 = *(v41 + 16);
    if (v42)
    {
      v45 = *(v8 + 16);
      v43 = v8 + 16;
      v44 = v45;
      v46 = (*(v43 + 64) + 32) & ~*(v43 + 64);
      v64 = v41;
      v47 = v41 + v46;
      v48 = *(v43 + 56);
      do
      {
        v44(v14, v47, v5);
        OUTLINED_FUNCTION_0_5();
        sub_1AC65106C(&qword_1EB56B478, v49);
        OUTLINED_FUNCTION_41_4();
        sub_1AC79F5A8();
        v50 = *(v43 - 8);
        v51 = OUTLINED_FUNCTION_41_4();
        v52(v51);
        v47 += v48;
        --v42;
      }

      while (v42);
    }
  }

  return result;
}

uint64_t TranscriptionSegment.text.getter()
{
  v0 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_39();

  return v4(v3);
}

uint64_t TranscriptionSegment.alternatives.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptionSegment() + 20));
}

uint64_t TranscriptionSegment.tokens.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptionSegment() + 24));
}

uint64_t TranscriptionSegment.alternativeTokens.getter()
{
  v1 = *(v0 + *(type metadata accessor for TranscriptionSegment() + 28));
}

void sub_1AC64B514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t *a25, char *a26, unsigned __int8 a27)
{
  OUTLINED_FUNCTION_129_0();
  v199 = v27;
  v200 = v28;
  v213 = v29;
  v206 = v30;
  v207 = v31;
  v205 = v32;
  LODWORD(v34) = v33;
  v36 = v35;
  v186 = v37;
  v38 = sub_1AC79F618();
  v39 = OUTLINED_FUNCTION_167(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6();
  v44 = v43 - v42;
  v45 = sub_1AC79F5C8();
  v46 = OUTLINED_FUNCTION_40(v45);
  v194 = v47;
  v49 = *(v48 + 64);
  v50 = MEMORY[0x1EEE9AC00](v46);
  v52 = &v184 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_26_0();
  v214 = v53;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_26_0();
  v219 = v55;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_26_0();
  v197 = v57;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v184 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C740, &qword_1AC7AA660);
  OUTLINED_FUNCTION_167(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v64);
  v185 = &v184 - v65;
  if (off_1ED937D60 != -1)
  {
    goto LABEL_146;
  }

LABEL_2:
  v66 = sub_1AC79FDE8();
  __swift_project_value_buffer(v66, qword_1ED9386C8);
  v67 = *(v36 + 16);
  if (!v67)
  {
    v180 = sub_1AC79FDC8();
    v181 = sub_1AC7A05F8();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *v227 = v183;
      *v182 = 136315138;
      *(v182 + 4) = sub_1AC5CFE74(0xD000000000000015, 0x80000001AC7B6290, v227);
      _os_log_impl(&dword_1AC5BC000, v180, v181, "Failed precondition: %s", v182, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v183);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
    goto LABEL_156;
  }

  v223 = a26;
  v187 = a25;
  v198 = a23;
  v190 = a27;
  v204 = a24;
  v228 = MEMORY[0x1E69E7CC0];
  v193 = v67;
  sub_1AC631324();
  v68 = 0;
  v192 = (v36 + 32);
  v196 = v228;
  v189 = (v194 + 16);
  v220 = (v194 + 32);
  v216 = (v194 + 8);
  v191 = v36;
  v203 = v34;
  v208 = v44;
  v209 = v45;
  v210 = v52;
  v188 = v60;
  do
  {
    if (v68 >= *(v36 + 16))
    {
      goto LABEL_141;
    }

    v69 = v192[v68];
    v70 = v69 >> 62;
    v195 = v68;
    if (v69 >> 62)
    {
      if (sub_1AC7A08E8())
      {
LABEL_7:
        sub_1AC61C25C(0, (v69 & 0xC000000000000001) == 0, v69);
        v212 = v69;
        v215 = v69 & 0xC000000000000001;
        if ((v69 & 0xC000000000000001) != 0)
        {

          v72 = MEMORY[0x1B26E95B0](0, v69);
        }

        else
        {
          v71 = *(v69 + 32);

          v72 = v71;
        }

        v73 = v72;
        v74 = &selRef_ipaPhoneSequence;
        if ((v34 & 1) == 0)
        {
          v74 = &selRef_tokenName;
        }

        v75 = [v72 *v74];
        v76 = sub_1AC79FF68();
        v52 = v77;

        if ((v190 & 1) != 0 || [v73 hasSpaceBefore])
        {
          OUTLINED_FUNCTION_28_3();
          MEMORY[0x1B26E8C40](v76, v52);

          v76 = *v227;
          v52 = *&v227[8];
        }

        if ([v73 hasSpaceAfter])
        {
          *v227 = v76;
          *&v227[8] = v52;

          OUTLINED_FUNCTION_49_4();

          v52 = *&v227[8];
        }

        v78 = v212;
        sub_1AC79F608();
        sub_1AC79F5D8();
        [v73 start];
        v217 = v70;
        if (v79 != 0.0 || ([v73 end], v80 != 0.0))
        {
          if (sub_1AC637EF8(0, v223))
          {
            [v73 start];
            v81 = v213;
            CMTimeMakeWithSeconds(v227, v82, v213);
            OUTLINED_FUNCTION_37_5();
            sub_1AC7A0688();
            v84 = v83;
            [v73 silenceStart];
            CMTimeMakeWithSeconds(v227, v85, v81);
            OUTLINED_FUNCTION_37_5();
            sub_1AC7A0688();
            if ((v204 & 1) == 0)
            {
              v225 = v84;
              sub_1AC7A0678();
              LODWORD(v34) = v203;
            }

            sub_1AC7A0578();
            v52 = v229;
            OUTLINED_FUNCTION_11_6();
            sub_1AC64F69C();
            OUTLINED_FUNCTION_12_4();
            sub_1AC79F5E8();
            OUTLINED_FUNCTION_11_6();
            sub_1AC64F6F0();
            OUTLINED_FUNCTION_12_4();
            sub_1AC79F5E8();
            v44 = v208;
            v45 = v209;
            v78 = v212;
            v70 = v217;
          }
        }

        if (sub_1AC637EF8(1, v223))
        {
          [v73 confidence];
          v60 = v210;
          if (v86 != 0.0)
          {
            [v73 confidence];
            OUTLINED_FUNCTION_33_4();
            sub_1AC64F5F4();
            OUTLINED_FUNCTION_12_4();
            sub_1AC79F5E8();
            OUTLINED_FUNCTION_33_4();
            sub_1AC64F648();
            OUTLINED_FUNCTION_12_4();
            sub_1AC79F5E8();
          }

          v78 = v212;
        }

        else
        {

          v60 = v210;
        }

        (*v189)(v219, v197, v45);
        v87 = sub_1AC753228(v78, 1);
        v36 = v78;
        v89 = v88;
        v218 = sub_1AC61C24C(v36);
        sub_1AC61C24C(v36);
        v90 = v36 & 0xFFFFFFFFFFFFFF8;
        v211 = v36 + 32;
        v222 = v36 & 0xFFFFFFFFFFFFFF8;
        if (v36 < 0)
        {
          v90 = v36;
        }

        v221 = v90;

        while (1)
        {
          if (v87 == v218)
          {

            v124 = v197;
            (*v216)(v197, v45);
            v125 = *v220;
            (*v220)(v124, v219, v45);
            if (v187[6])
            {
            }

            else
            {
              v126 = v187[1];
              v127 = v187[2];
              v128 = v187[3];
              v129 = v187[4];
              v130 = v187[5];
              v236 = *v187;
              v237 = v126;
              v238 = v127;
              v239 = v128;
              v240 = v129;
              v241 = v130;
              if (sub_1AC637EF8(0, v223))
              {
                if (sub_1AC7A05A8())
                {
                  OUTLINED_FUNCTION_11_6();
                }

                else
                {
                  memset(v227, 0, 48);
                  v227[48] = 1;
                }

                sub_1AC64F69C();
                OUTLINED_FUNCTION_12_4();
                sub_1AC79F5E8();
              }

              v44 = v208;
              v45 = v209;
            }

            v60 = v188;
            v125(v188, v197, v45);
            goto LABEL_76;
          }

          if (v215)
          {
            v91 = v212;
            v225 = MEMORY[0x1B26E95B0](v87, v212);
            v92 = MEMORY[0x1B26E95B0](v89, v91);
          }

          else
          {
            if ((v87 & 0x8000000000000000) != 0)
            {
              goto LABEL_138;
            }

            v93 = *(v222 + 16);
            if (v87 >= v93)
            {
              goto LABEL_139;
            }

            if (v89 >= v93)
            {
              goto LABEL_140;
            }

            v94 = *(v211 + 8 * v89);
            v225 = *(v211 + 8 * v87);
            v92 = v94;
          }

          v52 = v92;
          if (v70)
          {
            v224 = v92;
            v36 = sub_1AC7A08E8();
            v52 = v224;
            sub_1AC7A08E8();
          }

          else
          {
            v36 = *(v222 + 16);
          }

          if (v87 == v36)
          {
            break;
          }

          v36 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            goto LABEL_137;
          }

          if (v70)
          {
            v95 = v89;
            if (v36 == sub_1AC7A08E8())
            {
              v95 = sub_1AC7A08E8();
              v36 = sub_1AC7A08E8();
            }
          }

          else if (v36 == *(v222 + 16))
          {
            v95 = v89 + 1;
          }

          else
          {
            v95 = v89;
          }

          v224 = v95;
          v96 = &selRef_ipaPhoneSequence;
          if ((v34 & 1) == 0)
          {
            v96 = &selRef_tokenName;
          }

          v97 = [v52 *v96];
          v98 = sub_1AC79FF68();
          v100 = v99;

          v101 = [v225 hasSpaceAfter];
          if ([v52 hasSpaceBefore] && !v101)
          {
            OUTLINED_FUNCTION_28_3();
            v102 = OUTLINED_FUNCTION_23_3();
            MEMORY[0x1B26E8C40](v102);

            v98 = *v227;
            v100 = *&v227[8];
          }

          if ([v52 hasSpaceAfter])
          {
            *v227 = v98;
            *&v227[8] = v100;

            OUTLINED_FUNCTION_49_4();
          }

          sub_1AC79F608();
          OUTLINED_FUNCTION_23_3();
          sub_1AC79F5D8();
          [v52 start];
          if (v103 != 0.0 || ([v52 end], v104 != 0.0))
          {
            if (sub_1AC637EF8(0, v223))
            {
              [v52 start];
              v105 = v213;
              CMTimeMakeWithSeconds(v227, v106, v213);
              OUTLINED_FUNCTION_37_5();
              sub_1AC7A0688();
              v108 = v107;
              v110 = v109;
              [v52 silenceStart];
              CMTimeMakeWithSeconds(v227, v111, v105);
              OUTLINED_FUNCTION_37_5();
              sub_1AC7A0688();
              if ((v204 & 1) == 0)
              {
                v201 = v110;
                v202 = v108;
                sub_1AC7A0678();
              }

              sub_1AC7A0578();
              v112 = v230;
              v113 = v231;
              v114 = v232;
              v115 = v233;
              v116 = v234;
              v34 = v235;
              *v227 = v230;
              *&v227[8] = v231;
              *&v227[16] = v232;
              *&v227[24] = v233;
              *&v227[32] = v234;
              *&v227[40] = v235;
              v227[48] = 0;
              sub_1AC64F69C();
              OUTLINED_FUNCTION_12_4();
              v117 = v210;
              sub_1AC79F5E8();
              *v227 = v112;
              *&v227[8] = v113;
              v60 = v117;
              *&v227[16] = v114;
              *&v227[24] = v115;
              *&v227[32] = v116;
              *&v227[40] = v34;
              v227[48] = 0;
              sub_1AC64F6F0();
              OUTLINED_FUNCTION_12_4();
              sub_1AC79F5E8();
              LODWORD(v34) = v203;
              v44 = v208;
              v45 = v209;
            }
          }

          if (sub_1AC637EF8(1, v223))
          {
            [v52 confidence];
            if (v118 != 0.0)
            {
              [v52 confidence];
              OUTLINED_FUNCTION_33_4();
              sub_1AC64F5F4();
              OUTLINED_FUNCTION_12_4();
              sub_1AC79F5E8();
              OUTLINED_FUNCTION_33_4();
              sub_1AC64F648();
              OUTLINED_FUNCTION_12_4();
              sub_1AC79F5E8();
            }
          }

          v119 = *v220;
          v120 = v214;
          v121 = OUTLINED_FUNCTION_16_2();
          v122(v121);
          OUTLINED_FUNCTION_0_5();
          sub_1AC65106C(&qword_1EB56B478, v123);
          sub_1AC79F5A8();

          (*v216)(v120, v45);
          v89 = v36;
          v70 = v217;
          v87 = v224;
        }

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
        OUTLINED_FUNCTION_3();
        goto LABEL_2;
      }
    }

    else if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    sub_1AC79F508();
LABEL_76:
    v131 = v196;
    v228 = v196;
    v52 = *(v196 + 16);
    v132 = *(v196 + 24);
    if (v52 >= v132 >> 1)
    {
      OUTLINED_FUNCTION_24_5(v132);
      sub_1AC631324();
      v131 = v228;
    }

    v133 = v194;
    v134 = v195 + 1;
    *(v131 + 16) = v52 + 1;
    v135 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v196 = v131;
    v136 = *(v133 + 32);
    v136(v131 + v135 + *(v133 + 72) * v52, v60, v45);
    v68 = v134;
    v36 = v191;
  }

  while (v134 != v193);
  v137 = v185;
  v138 = v196;
  sub_1AC625BA4(v196, v185);
  if (__swift_getEnumTagSinglePayload(v137, 1, v45) == 1)
  {
LABEL_156:
    __break(1u);
    return;
  }

  v136(v186, v137, v45);
  sub_1AC5C9010(1, v138, sub_1AC5C9008, sub_1AC747F44);
  OUTLINED_FUNCTION_43_3();
  if (v45)
  {
    sub_1AC7A0D68();
    swift_unknownObjectRetain_n();
    v145 = swift_dynamicCastClass();
    if (!v145)
    {
      swift_unknownObjectRelease();
      v145 = MEMORY[0x1E69E7CC0];
    }

    v146 = *(v145 + 16);

    if (__OFSUB__(v45 >> 1, v138))
    {
      goto LABEL_151;
    }

    if (v146 != (v45 >> 1) - v138)
    {
      goto LABEL_152;
    }

    v144 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v36 = v191;
    if (v144)
    {
      goto LABEL_91;
    }

    v144 = MEMORY[0x1E69E7CC0];
    goto LABEL_90;
  }

  while (2)
  {
    v139 = OUTLINED_FUNCTION_34_5();
    sub_1AC751BB8(v139, v140, v141, v142);
    v144 = v143;
    v36 = v191;
LABEL_90:
    swift_unknownObjectRelease();
LABEL_91:
    v147 = type metadata accessor for TranscriptionSegment();
    *(v186 + *(v147 + 20)) = v144;
    if (!*(v36 + 16))
    {
      __break(1u);
      goto LABEL_148;
    }

    v148 = v147;
    v52 = *v192;
    v149 = sub_1AC61C24C(*v192);
    v150 = MEMORY[0x1E69E7CC0];
    if (!v149)
    {
      v155 = MEMORY[0x1E69E7CC0];
      goto LABEL_104;
    }

    v151 = v149;
    v152 = v148;
    v228 = MEMORY[0x1E69E7CC0];
    v153 = v149 & ~(v149 >> 63);

    sub_1AC6313DC(0, v153, 0);
    if (v151 < 0)
    {
      goto LABEL_149;
    }

    v154 = 0;
    v155 = v228;
    if ((v52 & 0xC000000000000001) != 0)
    {
LABEL_95:
      v156 = MEMORY[0x1B26E95B0](v154, v52);
      goto LABEL_97;
    }

    while (1)
    {
      v156 = *(v52 + 8 * v154 + 32);
LABEL_97:
      sub_1AC64C7A0(v156, v213, v227);
      v228 = v155;
      v44 = *(v155 + 16);
      v157 = *(v155 + 24);
      if (v44 >= v157 >> 1)
      {
        v158 = OUTLINED_FUNCTION_24_5(v157);
        sub_1AC6313DC(v158, v44 + 1, 1);
        v155 = v228;
      }

      *(v155 + 16) = v44 + 1;
      memcpy((v155 + 160 * v44 + 32), v227, 0xA0uLL);
      if (v151 - 1 == v154)
      {
        break;
      }

      ++v154;
      if ((v52 & 0xC000000000000001) != 0)
      {
        goto LABEL_95;
      }
    }

    v36 = v191;
    v148 = v152;
    v150 = MEMORY[0x1E69E7CC0];
LABEL_104:
    *(v186 + *(v148 + 24)) = v155;
    v159 = sub_1AC5C9010(1, v36, sub_1AC5C9008, sub_1AC5C90A0);
    v221 = v161;
    v222 = v162 >> 1;
    v34 = (v162 >> 1) - v160;
    if (__OFSUB__(v162 >> 1, v160))
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v34)
    {
      v60 = v160;
      v219 = v159;
      v228 = v150;
      sub_1AC6313BC(0, v34 & ~(v34 >> 63), 0);
      if ((v34 & 0x8000000000000000) == 0)
      {
        v218 = v148;
        v163 = 0;
        v164 = v228;
        v45 = 160;
        v220 = v34;
        while (1)
        {
          v165 = v163 + 1;
          if (__OFADD__(v163, 1))
          {
            goto LABEL_142;
          }

          if (v60 >= v222 || v163 >= v34)
          {
            goto LABEL_143;
          }

          v167 = *(v221 + 8 * v60);
          if (v167 >> 62)
          {
            if (v167 < 0)
            {
              v174 = *(v221 + 8 * v60);
            }

            v36 = v163 + 1;
            v175 = sub_1AC7A08E8();
            v165 = v36;
            v44 = v175;
            if (v175)
            {
LABEL_115:
              v224 = v165;
              v225 = v164;
              v226 = v150;

              sub_1AC6313DC(0, v44 & ~(v44 >> 63), 0);
              if (v44 < 0)
              {
                goto LABEL_145;
              }

              v223 = v60;
              v168 = 0;
              v164 = v225;
              v36 = v226;
              v169 = v44 - 1;
              if ((v167 & 0xC000000000000001) != 0)
              {
LABEL_117:
                v170 = OUTLINED_FUNCTION_23_3();
                v171 = MEMORY[0x1B26E95B0](v170);
                goto LABEL_119;
              }

              while (1)
              {
                v171 = *(v167 + 8 * v168 + 32);
LABEL_119:
                sub_1AC64C7A0(v171, v213, v227);
                v226 = v36;
                v173 = *(v36 + 16);
                v172 = *(v36 + 24);
                v44 = v173 + 1;
                if (v173 >= v172 >> 1)
                {
                  sub_1AC6313DC(v172 > 1, v173 + 1, 1);
                  v164 = v225;
                  v36 = v226;
                }

                *(v36 + 16) = v44;
                memcpy((v36 + 160 * v173 + 32), v227, 0xA0uLL);
                if (v169 == v168)
                {
                  break;
                }

                ++v168;
                if ((v167 & 0xC000000000000001) != 0)
                {
                  goto LABEL_117;
                }
              }

              v150 = MEMORY[0x1E69E7CC0];
              v60 = v223;
              v165 = v224;
              v34 = v220;
              goto LABEL_129;
            }
          }

          else
          {
            v44 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v44)
            {
              goto LABEL_115;
            }
          }

          v36 = v150;
LABEL_129:
          v228 = v164;
          v52 = v164[2];
          v176 = v164[3];
          if (v52 >= v176 >> 1)
          {
            v178 = OUTLINED_FUNCTION_24_5(v176);
            v44 = v179;
            sub_1AC6313BC(v178, v52 + 1, 1);
            v165 = v44;
            v164 = v228;
          }

          v164[2] = v52 + 1;
          v164[v52 + 4] = v36;
          if (__OFADD__(v60++, 1))
          {
            goto LABEL_144;
          }

          v163 = v165;
          if (v165 == v34)
          {
            swift_unknownObjectRelease();
            v148 = v218;
            goto LABEL_135;
          }
        }
      }

LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      swift_unknownObjectRelease();
      continue;
    }

    break;
  }

  swift_unknownObjectRelease();
  v164 = MEMORY[0x1E69E7CC0];
LABEL_135:
  *(v186 + *(v148 + 28)) = v164;
  OUTLINED_FUNCTION_130();
}