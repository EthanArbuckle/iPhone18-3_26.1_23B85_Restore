void sub_18F351E28()
{
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_81_5(v4, v5, v6);
  OUTLINED_FUNCTION_19_36();
  OUTLINED_FUNCTION_45_14();
  OUTLINED_FUNCTION_42_15();
  if (!v7)
  {
LABEL_27:

    *v0 = v2;
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_1_76();
  OUTLINED_FUNCTION_23_32();
  if (!v3)
  {
LABEL_4:
    v9 = v8;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_56_11();
      if (v10)
      {
        OUTLINED_FUNCTION_21_24();
        v3 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v25)
    {
      OUTLINED_FUNCTION_9_44();
      if (v21 != v22)
      {
        OUTLINED_FUNCTION_20_31(v20);
      }

      else
      {
        v23 = OUTLINED_FUNCTION_15_39();
        sub_18F128DD4(v23, v24, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_32();
LABEL_9:
    OUTLINED_FUNCTION_21_31();
    v26 = *(v14 + 16 * v13);
    if ((v25 & 1) == 0)
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    sub_18F522EFC();
    OUTLINED_FUNCTION_58_10();
    sub_18F522F4C();
    OUTLINED_FUNCTION_5_56();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_19:
    OUTLINED_FUNCTION_3_60(v16);
    *(v19 + 16 * v18) = v26;
    OUTLINED_FUNCTION_24_35();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v15)
    {
      if (v17)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_32_32();
    if (!v15)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_18F351FA4()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v40 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v39 = v8 - v7;
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD70F0);
  v37 = v3;
  v10 = sub_18F522ACC();
  if (!*(v9 + 16))
  {
LABEL_28:

LABEL_29:
    *v1 = v10;
    OUTLINED_FUNCTION_16();
    return;
  }

  v11 = 0;
  v12 = (v9 + 64);
  OUTLINED_FUNCTION_2_78();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v36 = v9;
  v38 = (v5 + 32);
  if ((v14 & v13) == 0)
  {
LABEL_4:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v17)
      {
        break;
      }

      ++v19;
      if (v12[v11])
      {
        OUTLINED_FUNCTION_21_24();
        v15 = v21 & v20;
        goto LABEL_9;
      }
    }

    if ((v37 & 1) == 0)
    {

      v1 = v0;
      goto LABEL_29;
    }

    v33 = 1 << *(v9 + 32);
    v1 = v0;
    if (v33 >= 64)
    {
      v34 = OUTLINED_FUNCTION_15_39();
      sub_18F128DD4(v34, v35, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v9 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_9:
    v22 = v18 | (v11 << 6);
    v23 = *(v9 + 56);
    v24 = (*(v9 + 48) + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(v5 + 72);
    v28 = v23 + v27 * v22;
    if (v37)
    {
      (*v38)(v39, v28, v40);
    }

    else
    {
      (*(v5 + 16))(v39, v28, v40);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    sub_18F522EFC();
    sub_18F5219CC();
    sub_18F522F4C();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_34_24();
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_20:
    OUTLINED_FUNCTION_12_45();
    OUTLINED_FUNCTION_52_13();
    v32 = (v10[6] + 16 * v31);
    *v32 = v26;
    v32[1] = v25;
    (*v38)(v10[7] + v27 * v31, v39, v40);
    ++v10[2];
    v9 = v36;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v29)
    {
      if (v30)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_51_10();
    if (!v29)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_18F352288(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD70F8);
  OUTLINED_FUNCTION_19_36();
  sub_18F522ACC();
  OUTLINED_FUNCTION_42_15();
  if (!v7)
  {

LABEL_28:
    *v4 = v3;
    return;
  }

  v31 = v2;
  v8 = 0;
  OUTLINED_FUNCTION_1_76();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v15;
      if (v6[v8])
      {
        OUTLINED_FUNCTION_21_24();
        v11 = v17 & v16;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_9_44();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_20_31(v26);
      }

      else
      {
        v29 = OUTLINED_FUNCTION_15_39();
        sub_18F128DD4(v29, v30, v6);
      }

      v6[2] = 0;
    }

    v4 = v31;
    goto LABEL_28;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v14 | (v8 << 6);
    v19 = *(v6[6] + 8 * v18);
    v20 = *(v6[7] + 8 * v18);
    if ((a2 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    sub_18F52242C();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_34_24();
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_19:
    OUTLINED_FUNCTION_12_45();
    OUTLINED_FUNCTION_52_13();
    *(*(v3 + 48) + 8 * v25) = v19;
    *(*(v3 + 56) + 8 * v25) = v20;
    OUTLINED_FUNCTION_24_35();
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v23)
    {
      if (v24)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_51_10();
    if (!v23)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_18F352444()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_56();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD70D8);
  OUTLINED_FUNCTION_19_36();
  OUTLINED_FUNCTION_45_14();
  OUTLINED_FUNCTION_42_15();
  if (!v5)
  {
LABEL_30:

LABEL_31:
    *v0 = v2;
    OUTLINED_FUNCTION_16();
    return;
  }

  v34 = v0;
  v6 = 0;
  OUTLINED_FUNCTION_1_76();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v12 = v2 + 64;
  if ((v8 & v7) == 0)
  {
LABEL_4:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v13;
      if (*(v1 + 8 * v6))
      {
        OUTLINED_FUNCTION_21_24();
        v9 = v15 & v14;
        goto LABEL_9;
      }
    }

    if ((v35 & 1) == 0)
    {

      v0 = v34;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_9_44();
    v0 = v34;
    if (v30 != v31)
    {
      OUTLINED_FUNCTION_20_31(v29);
    }

    else
    {
      v32 = OUTLINED_FUNCTION_15_39();
      sub_18F128DD4(v32, v33, v1);
    }

    *(v1 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_71_9();
LABEL_9:
    OUTLINED_FUNCTION_21_31();
    if (v35)
    {
      v19 = (v17 + v16 * v18);
      v36 = *v19;
      v37 = v19[1];
      v38 = v19[2];
      v39 = v19[3];
      v40 = v19[4];
      v41 = v19[5];
      v42 = v19[6];
      v43 = *(v19 + 15);
      v47 = *(v19 + 16);
      v44 = *(v19 + 17);
      v45 = *(v19 + 14);
      v46 = *(v19 + 144);
    }

    else
    {
      memcpy(v49, (v17 + v16 * v18), 0x91uLL);
      v46 = v49[9];
      v44 = *(&v49[8] + 1);
      v47 = *&v49[8];
      v43 = *(&v49[7] + 1);
      v45 = *&v49[7];
      v41 = v49[5];
      v42 = v49[6];
      v39 = v49[3];
      v40 = v49[4];
      v37 = v49[1];
      v38 = v49[2];
      v36 = v49[0];
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F3545F4(v49, v48);
    }

    sub_18F522EFC();
    OUTLINED_FUNCTION_58_10();
    sub_18F522F4C();
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_34_24();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_22:
    OUTLINED_FUNCTION_12_45();
    *(v12 + v24) |= v25;
    v27 = (*(v2 + 48) + 16 * v26);
    *v27 = v3;
    v27[1] = v4;
    v28 = *(v2 + 56) + 152 * v26;
    *v28 = v36;
    *(v28 + 16) = v37;
    *(v28 + 32) = v38;
    *(v28 + 48) = v39;
    *(v28 + 64) = v40;
    *(v28 + 80) = v41;
    *(v28 + 96) = v42;
    *(v28 + 112) = v45;
    *(v28 + 120) = v43;
    *(v28 + 128) = v47;
    *(v28 + 136) = v44;
    *(v28 + 144) = v46;
    OUTLINED_FUNCTION_24_35();
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v12 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_18F352708(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  OUTLINED_FUNCTION_81_5(a1, a2, a3);
  v41 = v5;
  v7 = sub_18F522ACC();
  if (!*(v6 + 16))
  {
LABEL_27:

LABEL_28:
    *v4 = v7;
    return;
  }

  v38 = v4;
  v39 = v6;
  v8 = 0;
  v9 = v6;
  OUTLINED_FUNCTION_1_76();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = 56;
  v40 = v7;
  if (!v12)
  {
LABEL_4:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_21_24();
        v44 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v41 & 1) == 0)
    {

      v4 = v38;
      goto LABEL_28;
    }

    v35 = 1 << *(v6 + 32);
    v4 = v38;
    if (v35 >= 64)
    {
      v36 = OUTLINED_FUNCTION_15_39();
      sub_18F128DD4(v36, v37, v9);
    }

    else
    {
      OUTLINED_FUNCTION_20_31(v35);
    }

    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v44 = (v12 - 1) & v12;
LABEL_9:
    v20 = v16 | (v8 << 6);
    v21 = (*(v6 + 48) + 16 * v20);
    v22 = v21[1];
    v46 = *v21;
    v23 = *(v6 + 56) + v20 * v15;
    v24 = *v23;
    v25 = *(v23 + 8);
    v45 = *(v23 + 16);
    v43 = *(v23 + 32);
    v42 = *(v23 + 48);
    if ((v41 & 1) == 0)
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    }

    v26 = v25;
    v27 = v24;
    sub_18F522EFC();
    sub_18F5219CC();
    sub_18F522F4C();
    v7 = v40;
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_34_24();
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_19:
    OUTLINED_FUNCTION_12_45();
    OUTLINED_FUNCTION_52_13();
    v31 = (v40[6] + 16 * v30);
    *v31 = v46;
    v31[1] = v22;
    v15 = 56;
    v32 = v40[7] + 56 * v30;
    *v32 = v27;
    *(v32 + 8) = v26;
    v12 = v44;
    *(v32 + 16) = v45;
    *(v32 + 24) = v33;
    *(v32 + 32) = v43;
    *(v32 + 40) = v34;
    *(v32 + 48) = v42;
    ++v40[2];
    v6 = v39;
    if (!v44)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v28)
    {
      if (v29)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_51_10();
    if (!v28)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_18F35299C()
{
  OUTLINED_FUNCTION_6_56();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD70C8);
  OUTLINED_FUNCTION_19_36();
  OUTLINED_FUNCTION_45_14();
  OUTLINED_FUNCTION_42_15();
  if (!v4)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_1_76();
  OUTLINED_FUNCTION_23_32();
  if (!v3)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_56_11();
      if (v7)
      {
        OUTLINED_FUNCTION_21_24();
        v3 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v27)
    {
      OUTLINED_FUNCTION_9_44();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_20_31(v22);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_15_39();
        sub_18F128DD4(v25, v26, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_32();
LABEL_9:
    OUTLINED_FUNCTION_21_31();
    v12 = (v11 + (v10 << 6));
    if (v27)
    {
      v28 = *v12;
      v29 = *(v12 + 2);
      v30 = *(v12 + 4);
      v33 = *(v12 + 5);
      v31 = *(v12 + 3);
      v32 = *(v12 + 6);
      v34 = *(v12 + 56);
    }

    else
    {
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      *&v36[9] = *(v12 + 41);
      v35[1] = v14;
      *v36 = v15;
      v35[0] = v13;
      v34 = v36[24];
      v32 = *&v36[16];
      v33 = *(&v15 + 1);
      v30 = v15;
      v31 = *(&v14 + 1);
      v29 = v14;
      v28 = v13;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F354598(v35, v37);
    }

    sub_18F522EFC();
    OUTLINED_FUNCTION_58_10();
    sub_18F522F4C();
    OUTLINED_FUNCTION_5_56();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_36_0();
LABEL_20:
    OUTLINED_FUNCTION_3_60(v17);
    v21 = v20 + (v19 << 6);
    *v21 = v28;
    *(v21 + 16) = v29;
    *(v21 + 24) = v31;
    *(v21 + 32) = v30;
    *(v21 + 40) = v33;
    *(v21 + 48) = v32;
    *(v21 + 56) = v34;
    OUTLINED_FUNCTION_24_35();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_35();
  while (1)
  {
    OUTLINED_FUNCTION_36_26();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_32_32();
    if (!v16)
    {
      OUTLINED_FUNCTION_34_2();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_18F352BC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v40 = sub_18F520C8C();
  v9 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7060);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v37 - v13;
  sub_18F353C9C(a1, a2, a3, v45);
  v41 = v45[0];
  v42 = v45[1];
  v43 = v45[2];
  v44 = v46;
  v15 = (v9 + 32);
  v38 = (v9 + 8);
  v39 = v9;
  v37[1] = a1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v37[0] = a3;

  while (1)
  {
    sub_18F353D70(v14);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7058);
    if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
    {
      sub_18F125D0C();
    }

    v17 = *(v16 + 48);
    v18 = *v15;
    (*v15)(v11, v14, v40);
    v19 = *&v14[v17];
    v20 = *v47;
    sub_18F1817B4();
    v23 = v22;
    v24 = v20[2];
    v25 = (v21 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v21;
    if (v20[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD47F0);
        sub_18F5229EC();
      }
    }

    else
    {
      sub_18F351614(v26, a4 & 1);
      sub_18F1817B4();
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v23 = v28;
    }

    v30 = *v47;
    if (v27)
    {
      (*v38)(v11, v40);
      v31 = v30[7];
      v32 = *(v31 + 8 * v23);
      *(v31 + 8 * v23) = v19;

      a4 = 1;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v18((v30[6] + *(v39 + 72) * v23), v11, v40);
      *(v30[7] + 8 * v23) = v19;
      v33 = v30[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_15;
      }

      v30[2] = v35;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_18F522E2C();
  __break(1u);
  return result;
}

uint64_t sub_18F352F04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v53 = a5;
  sub_18F353C9C(a1, a2, a3, v52);
  v6 = v52[1];
  v7 = v52[3];
  v8 = v52[4];
  v39 = v52[5];
  v40 = v52[0];
  v9 = (v52[2] + 64) >> 6;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v38 = v6;
  if (v8)
  {
    while (1)
    {
      v43 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v40 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v40 + 56) + 24 * v12;
      v17 = *(v16 + 16);
      v49[0] = v14;
      v49[1] = v15;
      v50 = *v16;
      v51 = v17;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v39(&v44, v49);

      v18 = v44;
      v19 = v45;
      v20 = v46;
      v41 = v47;
      v42 = v48;
      v21 = *v53;
      v23 = sub_18F0F713C(v44, v45);
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((v43 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4860);
          sub_18F5229EC();
        }
      }

      else
      {
        sub_18F3519EC(v26, v43 & 1);
        v28 = sub_18F0F713C(v18, v19);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_24;
        }

        v23 = v28;
      }

      v8 &= v8 - 1;
      v30 = *v53;
      if (v27)
      {

        v31 = (v30[7] + 24 * v23);
        *v31 = v20;
        v31[1] = v41;
        v31[2] = v42;
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v32 = (v30[6] + 16 * v23);
        *v32 = v18;
        v32[1] = v19;
        v33 = (v30[7] + 24 * v23);
        *v33 = v20;
        v33[1] = v41;
        v33[2] = v42;
        v34 = v30[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_23;
        }

        v30[2] = v36;
      }

      a4 = 1;
      v7 = v10;
      v6 = v38;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_18F125D0C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v43 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_18F522E2C();
  __break(1u);
  return result;
}

uint64_t sub_18F3531D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_57_14(a1, a2, a3, a4, a5);
  sub_18F353C9C(v6, v7, v8, v47);
  v9 = v47[1];
  v10 = v47[3];
  v11 = v47[4];
  v41 = v47[5];
  v42 = v47[0];
  v43 = v47[6];
  v12 = (v47[2] + 64) >> 6;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  v40 = v9;
  if (v11)
  {
    while (1)
    {
      v44 = v5;
      v13 = v10;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v13 << 6);
      v16 = (*(v42 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(v42 + 56) + 8 * v15);
      v46[0] = *v16;
      v46[1] = v17;
      v46[2] = v18;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v19 = v18;
      v20 = v43;
      v41(v45, v46);

      v21 = v45[0];
      v22 = v45[1];
      v23 = v45[2];
      OUTLINED_FUNCTION_70_9();
      v24 = OUTLINED_FUNCTION_82_5();
      OUTLINED_FUNCTION_2_5();
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v28 = v25;
      if (v43[3] >= v26 + v27)
      {
        if ((v44 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v39);
          v20 = v48;
          sub_18F5229EC();
        }
      }

      else
      {
        v29 = v48;
        sub_18F351CA8();
        v20 = *v29;
        OUTLINED_FUNCTION_82_5();
        OUTLINED_FUNCTION_14_5();
        if (!v31)
        {
          goto LABEL_25;
        }

        v24 = v30;
      }

      v11 &= v11 - 1;
      OUTLINED_FUNCTION_70_9();
      if (v28)
      {

        v32 = v20[7];
        v33 = *(v32 + 8 * v24);
        *(v32 + 8 * v24) = v23;
      }

      else
      {
        OUTLINED_FUNCTION_0_96();
        *v34 = v21;
        v34[1] = v22;
        *(v20[7] + 8 * v24) = v23;
        v35 = v20[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_24;
        }

        v20[2] = v37;
      }

      v5 = 1;
      v10 = v13;
      v9 = v40;
      if (!v11)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v14 = v10;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        sub_18F125D0C();
      }

      v11 = *(v9 + 8 * v13);
      ++v14;
      if (v11)
      {
        v44 = v5;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_18F522E2C();
  __break(1u);
  return result;
}

uint64_t sub_18F353428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_57_14(a1, a2, a3, a4, a5);
  sub_18F353C9C(v6, v7, v8, v45);
  v9 = v45[1];
  v10 = v45[3];
  v11 = v45[4];
  v36 = v45[5];
  v37 = v45[0];
  v38 = v45[6];
  v12 = (v45[2] + 64) >> 6;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  if (v11)
  {
    while (1)
    {
      v40 = v5;
      v13 = v10;
LABEL_8:
      v15 = (v13 << 10) | (16 * __clz(__rbit64(v11)));
      v16 = *(v37 + 56);
      v17 = (*(v37 + 48) + v15);
      v18 = v17[1];
      v43[0] = *v17;
      v43[1] = v18;
      v44 = *(v16 + v15);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v19 = v38;
      v36(v41, v43);

      v20 = v41[0];
      v21 = v41[1];
      v39 = v42;
      OUTLINED_FUNCTION_70_9();
      v22 = OUTLINED_FUNCTION_82_5();
      OUTLINED_FUNCTION_2_5();
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v26 = v23;
      if (v38[3] >= v24 + v25)
      {
        if ((v40 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v35);
          v19 = v46;
          sub_18F5229EC();
        }
      }

      else
      {
        v27 = v46;
        sub_18F351E28();
        v19 = *v27;
        OUTLINED_FUNCTION_82_5();
        OUTLINED_FUNCTION_14_5();
        if (!v29)
        {
          goto LABEL_25;
        }

        v22 = v28;
      }

      v11 &= v11 - 1;
      OUTLINED_FUNCTION_70_9();
      if (v26)
      {

        *(v19[7] + 16 * v22) = v39;
      }

      else
      {
        OUTLINED_FUNCTION_0_96();
        *v30 = v20;
        v30[1] = v21;
        *(v19[7] + 16 * v22) = v39;
        v31 = v19[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_24;
        }

        v19[2] = v33;
      }

      v5 = 1;
      v10 = v13;
      if (!v11)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v14 = v10;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        sub_18F125D0C();
      }

      v11 = *(v9 + 8 * v13);
      ++v14;
      if (v11)
      {
        v40 = v5;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_18F522E2C();
  __break(1u);
  return result;
}

id sub_18F353674(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18F520C8C();
  (*(*(v5 - 8) + 16))(a1, a2, v5);

  return a3;
}

uint64_t sub_18F3536F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return a2;
}

id sub_18F353730(void *a1, void *a2, void *a3)
{
  *a1 = a3;
  v4 = a2;
  v5 = a3;
  return v4;
}

id sub_18F353764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7050) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7058) + 48);
  result = sub_18F353674(a2, a1, *(a1 + v4));
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_18F3537D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_18F3531D0(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_18F353870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a4;
  result = a5(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v12);
  *a4 = v12;
  return result;
}

uint64_t sub_18F3538F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_18F3531D0(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_18F353990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_18F353428(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_18F353A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_18F3531D0(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_18F353AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_18F353428(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_18F353B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_18F3531D0(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_18F353C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_18F353428(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_18F353C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_18F353CD8@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_18F522A0C();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_18F353D70@<X0>(uint64_t a1@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7050);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v33 - v3;
  v38 = sub_18F520C8C();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7070);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - v13;
  v16 = *v1;
  v15 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v34 = v4;
  v40 = v17;
  if (v19)
  {
    v36 = v11;
    v37 = a1;
    v20 = v18;
LABEL_7:
    v35 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v20 << 6);
    v22 = v38;
    (*(v5 + 16))(v7, *(v16 + 48) + *(v5 + 72) * v21, v38);
    v23 = *(*(v16 + 56) + 8 * v21);
    v24 = *(v39 + 48);
    v25 = v7;
    v26 = v39;
    (*(v5 + 32))(v14, v25, v22);
    *&v14[v24] = v23;
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v26);
    v27 = v23;
    v28 = v35;
    v11 = v36;
    a1 = v37;
LABEL_8:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v40;
    v1[3] = v18;
    v1[4] = v28;
    v29 = v1[5];
    sub_18F35432C(v14, v11, &qword_1EACD7070);
    v30 = 1;
    if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
    {
      v31 = v34;
      sub_18F35432C(v11, v34, &qword_1EACD7050);
      v29(v31);
      sub_18F35438C(v31);
      v30 = 0;
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7058);
    return __swift_storeEnumTagSinglePayload(a1, v30, 1, v32);
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= ((v17 + 64) >> 6))
      {
        v26 = v39;
        __swift_storeEnumTagSinglePayload(&v33 - v13, 1, 1, v39);
        v28 = 0;
        goto LABEL_8;
      }

      v19 = *(v15 + 8 * v20);
      ++v18;
      if (v19)
      {
        v36 = v11;
        v37 = a1;
        v18 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_18F3540B0()
{
  v1 = v0;
  v2 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_18F522A2C())
    {
      v7 = v6;
      sub_18F0F21A8(0, &qword_1EACCDD20);
      OUTLINED_FUNCTION_75_8();
      v8 = v16[0];
      v15 = v7;
      sub_18F0F21A8(0, &unk_1ED6FE390);
      OUTLINED_FUNCTION_75_8();
      v9 = v16[0];
      if (v16[0])
      {
LABEL_13:
        v14 = v1[5];
        v16[0] = v8;
        v16[1] = v9;
        v14(&v15, v16);
      }
    }
  }

  else
  {
    v4 = v0[3];
    v3 = v1[4];
    if (v3)
    {
      v5 = v1[3];
LABEL_11:
      v10 = (v3 - 1) & v3;
      v11 = (v5 << 9) | (8 * __clz(__rbit64(v3)));
      v8 = *(*(v2 + 48) + v11);
      v12 = *(*(v2 + 56) + v11);
      v13 = v8;
      v9 = v12;
LABEL_12:
      v1[3] = v4;
      v1[4] = v10;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v5 >= ((v1[2] + 64) >> 6))
        {
          v9 = 0;
          v8 = 0;
          v10 = 0;
          goto LABEL_12;
        }

        v3 = *(v1[1] + 8 * v5);
        ++v4;
        if (v3)
        {
          v4 = v5;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

__n128 sub_18F35422C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = sub_18F3536F4(&v7, *a1, a1[1], a1[2], a1[3], a1[4]);
  v4 = v8;
  result = v7;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v6;
  a2[1] = result;
  a2[2].n128_u64[0] = v4;
  return result;
}

uint64_t sub_18F354294@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t *, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(&v7, *a1, a1[1], a1[2]);
  v5 = v7;
  *a3 = result;
  a3[1] = v6;
  a3[2] = v5;
  return result;
}

__n128 sub_18F3542E0@<Q0>(void *a1@<X0>, uint64_t (*a2)(__n128 *, void, void, void, void)@<X1>, __n128 *a3@<X8>)
{
  v4 = a2(&v7, *a1, a1[1], a1[2], a1[3]);
  result = v7;
  a3->n128_u64[0] = v4;
  a3->n128_u64[1] = v6;
  a3[1] = result;
  return result;
}

uint64_t sub_18F35432C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = OUTLINED_FUNCTION_81_5(a1, a2, a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18F35438C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18F3543F4()
{
  result = qword_1ED6FED08;
  if (!qword_1ED6FED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FED08);
  }

  return result;
}

unint64_t sub_18F354448()
{
  result = qword_1ED6FED20;
  if (!qword_1ED6FED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FED20);
  }

  return result;
}

unint64_t sub_18F35449C()
{
  result = qword_1ED6FECF0;
  if (!qword_1ED6FECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FECF0);
  }

  return result;
}

unint64_t sub_18F3544F0()
{
  result = qword_1ED6FED38;
  if (!qword_1ED6FED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FED38);
  }

  return result;
}

unint64_t sub_18F354544()
{
  result = qword_1ED6FECB0;
  if (!qword_1ED6FECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FECB0);
  }

  return result;
}

uint64_t sub_18F354650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_75_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_82_5()
{

  return sub_18F0F713C(v0, v1);
}

uint64_t dispatch thunk of EntityStringQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_18F224D20;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_18F354850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = swift_task_alloc();
  v6[8] = v7;
  *v7 = v6;
  v7[1] = sub_18F354908;

  return sub_18F139E28();
}

uint64_t sub_18F354908()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_39();
  *v4 = v3;

  if (v0)
  {
    v5 = v3[1];

    return v5();
  }

  else
  {
    v13 = (*(v2[6] + 16) + **(v2[6] + 16));
    v7 = swift_task_alloc();
    v2[9] = v7;
    *v7 = v3;
    v7[1] = sub_18F354AEC;
    v8 = v2[6];
    v9 = v2[4];
    v10 = v2[5];
    v11 = v2[2];
    v12 = v2[3];

    return v13(v11, v12, v9, v10, v8);
  }
}

uint64_t sub_18F354AEC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t URL.urlRepresentationParameter.getter()
{
  sub_18F520C8C();
  sub_18F354C90();

  return sub_18F522C9C();
}

unint64_t sub_18F354C90()
{
  result = qword_1EACCED50;
  if (!qword_1EACCED50)
  {
    sub_18F520C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCED50);
  }

  return result;
}

uint64_t dispatch thunk of CustomURLRepresentationParameterConvertible.urlRepresentationParameter.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18F354E00;

  return v7(a1, a2);
}

uint64_t sub_18F354E00()
{
  OUTLINED_FUNCTION_69();
  v1 = v0;
  v3 = v2;

  OUTLINED_FUNCTION_2_10();

  return v4(v3, v1);
}

uint64_t sub_18F354F08(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_18F10FDAC(v3, v4);
  }

  else
  {

    return j__swift_continuation_throwingResume();
  }
}

uint64_t SiriVocabulary.Corpus.OperationError.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t SiriVocabulary.Corpus.__allocating_init(contents:capacity:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  SiriVocabulary.Corpus.init(contents:capacity:)(a1, a2, a3 & 1);
  return v6;
}

id sub_18F3550DC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18F0F21A8(0, &qword_1EACCDD38);
  v1 = sub_18F521C8C();

  v2 = [v0 initWithContents_];

  return v2;
}

uint64_t sub_18F355164(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F35517C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v1[19];
  v5 = v1[18];
  v6 = *(v1[20] + 16);
  v1[21] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v1[14] = sub_18F3556D0;
  v1[15] = v7;
  v8 = MEMORY[0x1E69E9820];
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_18F3556D8;
  v1[13] = &block_descriptor_8;
  v9 = _Block_copy(v3);
  v1[22] = v9;
  v10 = v6;

  v1[2] = v1;
  v1[3] = sub_18F355334;
  v11 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DB0);
  v1[10] = v8;
  v1[11] = 1107296256;
  v1[12] = sub_18F354F08;
  v1[13] = &block_descriptor_3;
  v1[14] = v11;
  [v10 changeWithBlock:v9 completionHandler:v3];

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_18F355334()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_18F355498;
  }

  else
  {
    v5 = sub_18F355434;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F355434()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 176);

  _Block_release(v1);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F355498()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  swift_willThrow();

  _Block_release(v1);
  OUTLINED_FUNCTION_71();

  return v3();
}

void sub_18F355510(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_18F111F70(a1);
  if (v4)
  {
    v5 = v4;
    v16 = MEMORY[0x1E69E7CC0];
    sub_18F3AAECC();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v15 = a2;
    for (i = 0; i != v5; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193ADBE10](i, a1);
      }

      else
      {
        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      v9 = *(v16 + 16);
      if (v9 >= *(v16 + 24) >> 1)
      {
        sub_18F3AAECC();
      }

      *(v16 + 16) = v9 + 1;
      *(v16 + 8 * v9 + 32) = v8;
    }

    v10 = v15(v16);
  }

  else
  {
    v10 = a2(MEMORY[0x1E69E7CC0]);
  }

  v11 = v10;

  v12 = *(v11 + 16);
  if (v12)
  {
    sub_18F5228CC();
    v13 = 32;
    do
    {
      v14 = *(v11 + v13);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v13 += 8;
      --v12;
    }

    while (v12);
  }
}

id sub_18F3556D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_18F0F21A8(0, &qword_1EACCDD38);
  v2 = sub_18F521CAC();

  v1(v2);

  v3 = sub_18F521C8C();

  return v3;
}

uint64_t SiriVocabulary.Corpus.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void SiriVocabulary.DynamicTerm.entityIdentifier.getter(uint64_t a1@<X8>)
{
  v3 = [*v1 entityIdentifier];
  v4 = [v3 typeIdentifier];
  sub_18F5218DC();

  v5 = [v3 instanceIdentifier];
  v6 = sub_18F5218DC();
  v8 = v7;

  sub_18F1AF5AC(v6, v8, &v11);
  if (v11)
  {
    v9 = v13;
    v10 = v12;
    *a1 = v11;
    *(a1 + 8) = v10;
    *(a1 + 24) = v9;
  }

  else
  {
    sub_18F522A3C();
    __break(1u);
  }
}

uint64_t SiriVocabulary.DynamicTerm.term.getter()
{
  v1 = [*v0 term];
  sub_18F5218DC();

  return OUTLINED_FUNCTION_45();
}

id SiriVocabulary.DynamicTerm.init(_:entityIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a3;
  v8 = OUTLINED_FUNCTION_45();
  static AppValue._identifier.getter(v8, v9);
  if (dynamic_cast_existential_1_conditional(v7))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v10 = OUTLINED_FUNCTION_45();
    v12 = static AppValue._identifier.getter(v10, v11);
    v13 = sub_18F164CE8(v12);

    v14 = v13;
    sub_18F1AF344();
  }

  v15 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  sub_18F166ED0();
  v17 = v16;
  v18 = objc_allocWithZone(MEMORY[0x1E69ACEF0]);
  result = sub_18F129440(a1, a2, v17);
  *a4 = result;
  return result;
}

uint64_t SiriVocabulary.DynamicTerm.hashValue.getter()
{
  sub_18F522EFC();
  sub_18F52244C();
  return sub_18F522F4C();
}

uint64_t sub_18F355BD8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_18F355D40;
  }

  else
  {
    v5 = sub_18F355CD8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F355CD8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F355D40()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F355DD8()
{
  if (![objc_opt_self() isVocabularyDonationEnabled])
  {
    goto LABEL_16;
  }

  v3 = [objc_opt_self() mainBundle];
  sub_18F10FBF8(v3);
  v0[19] = v4;
  if (!v4)
  {
    sub_18F356230();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_71();
    goto LABEL_17;
  }

  if (!OUTLINED_FUNCTION_13_39())
  {

LABEL_16:
    OUTLINED_FUNCTION_71();
LABEL_17:
    OUTLINED_FUNCTION_176();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[18];
  sub_18F0F21A8(0, &qword_1EACD7118);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v6 = sub_18F3561CC();
  v0[20] = v6;
  v7 = sub_18F111F70(v5);
  if (v7)
  {
    v8 = v7;
    v9 = sub_18F5228CC();
    if (v8 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v9);
    }

    OUTLINED_FUNCTION_10_42();
    do
    {
      if (v1)
      {
        v10 = MEMORY[0x193ADBE10](v5, v0[18]);
      }

      else
      {
        v10 = *(v2 + 8 * v5);
      }

      ++v5;
      v11 = *(v10 + 16);

      sub_18F52289C();
      OUTLINED_FUNCTION_11_39();
      sub_18F5228DC();
      OUTLINED_FUNCTION_11_39();
      sub_18F5228EC();
      sub_18F5228AC();
    }

    while (v8 != v5);
  }

  sub_18F0F21A8(0, &qword_1EACCDCE0);
  v12 = sub_18F521C8C();
  v0[21] = v12;

  v0[2] = v0;
  v0[3] = sub_18F3560A0;
  swift_continuation_init();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DB0);
  OUTLINED_FUNCTION_2_79(v13);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_77();
  [v6 setCorporaByPriority:v12 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_176();

  return MEMORY[0x1EEE6DEC8](v9);
}

uint64_t sub_18F3560A0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_18F35666C;
  }

  else
  {
    v5 = sub_18F356668;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

id sub_18F3561CC()
{
  v0 = sub_18F5218AC();

  v1 = [swift_getObjCClassFromMetadata() vocabularyForBundleIdentifier_];

  return v1;
}

unint64_t sub_18F356230()
{
  result = qword_1EACD7110;
  if (!qword_1EACD7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7110);
  }

  return result;
}

unint64_t sub_18F356288()
{
  result = qword_1EACD7120;
  if (!qword_1EACD7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7120);
  }

  return result;
}

unint64_t sub_18F3562E4()
{
  result = qword_1EACD7128;
  if (!qword_1EACD7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7128);
  }

  return result;
}

uint64_t dispatch thunk of SiriVocabulary.Corpus.change(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18F3564C4;

  return v8(a1, a2);
}

uint64_t sub_18F3564C4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_71();

  return v0();
}

_BYTE *sub_18F3565AC(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_18F356670(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 items];
  sub_18F0F21A8(0, &qword_1EACD7160);
  v5 = sub_18F521CAC();

  v6 = sub_18F111F70(v5);
  if (!v6)
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_12:
    *a2 = v9;
    return;
  }

  v7 = v6;
  v27 = MEMORY[0x1E69E7CC0];
  sub_18F3AAEAC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v23 = a1;
    v24 = a2;
    v8 = 0;
    v9 = v27;
    v25 = v5 & 0xC000000000000001;
    v26 = v5;
    v10 = v7;
    do
    {
      if (v25)
      {
        v11 = MEMORY[0x193ADBE10](v8, v5);
      }

      else
      {
        v11 = *(v5 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = [v11 identifier];
      v14 = sub_18F5218DC();
      v16 = v15;

      v17 = [v12 type];
      v18 = sub_18F5218DC();
      v20 = v19;

      v21 = *(v27 + 16);
      if (v21 >= *(v27 + 24) >> 1)
      {
        sub_18F3AAEAC();
      }

      ++v8;
      *(v27 + 16) = v21 + 1;
      v22 = (v27 + 32 * v21);
      v22[4] = v14;
      v22[5] = v16;
      v22[6] = v18;
      v22[7] = v20;
      v5 = v26;
    }

    while (v10 != v8);

    a2 = v24;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t _IntentPhotoItemCollection.items.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _IntentPhotoItem.identifier.getter()
{
  v1 = *v0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t _IntentPhotoItem.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _IntentPhotoItem.type.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t _IntentPhotoItem.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

AppIntents::_IntentPhotoItem __swiftcall _IntentPhotoItem.init(identifier:type:)(Swift::String identifier, AppIntents::_IntentPhotoItem::ItemType type)
{
  v3 = *type.rawValue._countAndFlagsBits;
  v4 = *(type.rawValue._countAndFlagsBits + 8);
  *v2 = identifier;
  v2[1]._countAndFlagsBits = v3;
  v2[1]._object = v4;
  result.type = type;
  result.identifier = identifier;
  return result;
}

uint64_t _IntentPhotoItem.ItemType.rawValue.getter()
{
  v1 = *v0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

AppIntents::_IntentPhotoItem::ItemType_optional __swiftcall _IntentPhotoItem.ItemType.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.rawValue = rawValue;
  return result;
}

uint64_t sub_18F356A08@<X0>(uint64_t *a1@<X8>)
{
  result = _IntentPhotoItem.ItemType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void _IntentPhotoItemCollection.displayRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v28);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  sub_18F520ACC();
  v32 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  v36 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  v40 = type metadata accessor for DisplayRepresentation();
  v41 = v40[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v32);
  v45 = v40[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v36);
  *(v23 + v40[7]) = xmmword_18F540410;
  *(v23 + v40[8]) = 0;
  *(v23 + v40[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v32);
  sub_18F0FF628(v31, v23 + v41, &qword_1EACCF7A8);
  sub_18F0FF628(v27, v23 + v45, &qword_1EACD0270);
  OUTLINED_FUNCTION_16();
}

AppIntents::_IntentPhotoItemCollection::PickerMode_optional __swiftcall _IntentPhotoItemCollection.PickerMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F522B3C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t _IntentPhotoItemCollection.PickerMode.rawValue.getter()
{
  v1 = 0x736D75626C61;
  if (*v0 != 1)
  {
    v1 = 0x697463656C6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737465737361;
  }
}

uint64_t sub_18F356D18@<X0>(uint64_t *a1@<X8>)
{
  result = _IntentPhotoItemCollection.PickerMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

AppIntents::_IntentPhotoItemCollection::PickerFilter_optional __swiftcall _IntentPhotoItemCollection.PickerFilter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F522B3C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t _IntentPhotoItemCollection.PickerFilter.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 0x6567616D69;
      break;
    case 2:
      result = 0x616D61726F6E6170;
      break;
    case 3:
      result = 0x506C616974617073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F356E48@<X0>(uint64_t *a1@<X8>)
{
  result = _IntentPhotoItemCollection.PickerFilter.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t IntentParameter<>.selectionLimit.getter()
{
  if (!*(*(v0 + *(*v0 + 112)) + 16))
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_8_46();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_8_3(v1);
  sub_18F0FECD4(v3, v15);
  v4 = OUTLINED_FUNCTION_8_4();
  return OUTLINED_FUNCTION_9_45(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

uint64_t sub_18F356F40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W3>, _BYTE *a4@<X8>)
{
  if (!*(*(v4 + *(*v4 + 112)) + 16) || (result = sub_18F0F713C(result, a2), (v7 & 1) == 0) || (v8 = OUTLINED_FUNCTION_8_3(result), sub_18F0FECD4(v8, &v9), result = OUTLINED_FUNCTION_13_40(), (result & 1) == 0))
  {
    *a4 = a3;
  }

  return result;
}

uint64_t IntentParameterContext<>.selectionLimit.getter()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_8_46();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_8_3(v1);
  sub_18F0FECD4(v3, v15);
  v4 = OUTLINED_FUNCTION_8_4();
  return OUTLINED_FUNCTION_9_45(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
}

void sub_18F35707C(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W4>, _BYTE *a4@<X8>)
{
  if (!*(*v4 + 16) || (v7 = sub_18F0F713C(a1, a2), (v8 & 1) == 0) || (v9 = OUTLINED_FUNCTION_8_3(v7), sub_18F0FECD4(v9, &v10), (OUTLINED_FUNCTION_13_40() & 1) == 0))
  {
    *a4 = a3;
  }
}

uint64_t sub_18F3570F0(char *a1, uint64_t a2, char *a3)
{
  v4 = *a1;
  v5 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F549D20;
  *(inited + 32) = 0x6F4D72656B636970;
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 48) = v4;
  *(inited + 72) = &type metadata for _IntentPhotoItemCollection.PickerMode;
  strcpy((inited + 80), "selectionLimit");
  v7 = MEMORY[0x1E69E6530];
  *(inited + 95) = -18;
  *(inited + 96) = a2;
  *(inited + 120) = v7;
  strcpy((inited + 128), "pickerFilter");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 168) = &type metadata for _IntentPhotoItemCollection.PickerFilter;
  *(inited + 144) = v5;
  sub_18F1168B4();
  return sub_18F5216CC();
}

id static _IntentPhotoItemCollection.valueType.getter()
{
  v0 = [objc_opt_self() photoItemCollectionValueType];

  return v0;
}

id _IntentPhotoItemCollection.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_18F0F21A8(0, &qword_1EACD30E8);
  v6 = v3;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  result = sub_18F3572B4(&v6);
  a1[3] = v4;
  *a1 = result;
  return result;
}

id sub_18F3572B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    sub_18F5228CC();
    sub_18F0F21A8(0, &qword_1EACD7160);
    v3 = v1 + 56;
    do
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F35742C();
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v3 += 32;
      --v2;
    }

    while (v2);
  }

  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18F0F21A8(0, &qword_1EACD7160);
  v5 = sub_18F521C8C();

  v6 = [v4 initWithItems_];

  return v6;
}

id sub_18F35742C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F5218AC();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v2 = sub_18F5218AC();

  swift_bridgeObjectRelease_n();
  v3 = [v0 initWithIdentifier:v1 type:v2];

  return v3;
}

void IntentParameter<>.init(title:description:pickerMode:selectionLimit:pickerFilter:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v36 = v0;
  v37 = v1;
  v3 = v2;
  v5 = v4;
  v38 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v35 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4();
  LOBYTE(v5) = *v5;
  LOBYTE(v3) = *v3;
  (*(v21 + 16))(v24 - v23, v8, v19);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, AssociatedTypeWitness);
  v40 = v5;
  v39 = v3;
  v28 = OUTLINED_FUNCTION_12_46();
  sub_18F3570F0(v28, v36, v29);
  OUTLINED_FUNCTION_2_0();
  v30 = v37;
  sub_18F15F1BC(v37, v15);
  v31 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v35, v32, v33, v31);
  sub_18F116B3C();
  sub_18F0EF148(v30, &qword_1EACCF7A0);
  sub_18F0EF148(v38, &qword_1EACCF7A8);
  (*(v21 + 8))(v8, v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:pickerMode:selectionLimit:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v34 = v0;
  v35 = v1;
  v3 = v2;
  v36 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  LOBYTE(v3) = *v3;
  (*(v20 + 16))(v23 - v22, v6, v18);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, AssociatedTypeWitness);
  v38 = v3;
  v37 = 0;
  v27 = OUTLINED_FUNCTION_12_46();
  sub_18F3570F0(v27, v34, v28);
  OUTLINED_FUNCTION_2_0();
  v29 = v35;
  sub_18F15F1BC(v35, v14);
  v30 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v11, v31, v32, v30);
  sub_18F116B3C();
  sub_18F0EF148(v29, &qword_1EACCF7A0);
  sub_18F0EF148(v36, &qword_1EACCF7A8);
  (*(v20 + 8))(v6, v18);
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:pickerMode:selectionLimit:pickerFilter:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  v65 = v23;
  v66 = v24;
  v26 = v25;
  v63 = v27;
  v29 = v28;
  v67 = v30;
  v32 = v31;
  v60 = v31;
  v62 = a23;
  v64 = a21;
  v61 = a22;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v59 - v39;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  v44 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  LOBYTE(v29) = *v29;
  LOBYTE(v26) = *v26;
  (*(v46 + 16))(v49 - v48, v32, v44);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, AssociatedTypeWitness);
  LOBYTE(v71[0]) = v29;
  LOBYTE(v68) = v26;
  v53 = OUTLINED_FUNCTION_12_46();
  sub_18F3570F0(v53, v63, v54);
  v71[3] = v61;
  v71[4] = v62;
  __swift_allocate_boxed_opaque_existential_1(v71);
  v65();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v55 = v66;
  sub_18F15F1BC(v66, v40);
  v56 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v37, v57, v58, v56);
  sub_18F116B3C();

  sub_18F0EF148(v55, &qword_1EACCF7A0);
  sub_18F0EF148(v67, &qword_1EACCF7A8);
  (*(v46 + 8))(v60, v44);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(description:pickerMode:selectionLimit:pickerFilter:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v31 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_18F520B3C();
  v21 = OUTLINED_FUNCTION_10(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  LOBYTE(v7) = *v7;
  LOBYTE(v3) = *v3;
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, AssociatedTypeWitness);
  v33 = v7;
  v32 = v3;
  v25 = OUTLINED_FUNCTION_12_46();
  sub_18F3570F0(v25, v5, v26);
  OUTLINED_FUNCTION_2_0();
  sub_18F15F1BC(v1, v16);
  v27 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v13, v28, v29, v27);
  sub_18F116B3C();
  sub_18F0EF148(v1, &qword_1EACCF7A0);
  sub_18F0EF148(v31, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:pickerMode:selectionLimit:pickerFilter:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  v56 = v23;
  v57 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v58 = v30;
  v55 = a22;
  v54 = a21;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v53 - v37;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  v42 = sub_18F520B3C();
  v43 = OUTLINED_FUNCTION_10(v42);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  LOBYTE(v29) = *v29;
  LOBYTE(v25) = *v25;
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, AssociatedTypeWitness);
  LOBYTE(v62[0]) = v29;
  LOBYTE(v59) = v25;
  v47 = OUTLINED_FUNCTION_12_46();
  sub_18F3570F0(v47, v27, v48);
  v62[3] = v54;
  v62[4] = v55;
  __swift_allocate_boxed_opaque_existential_1(v62);
  v56();
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v49 = v57;
  sub_18F15F1BC(v57, v38);
  v50 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v35, v51, v52, v50);
  sub_18F116B3C();

  sub_18F0EF148(v49, &qword_1EACCF7A0);
  sub_18F0EF148(v58, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

unint64_t sub_18F35816C(uint64_t a1)
{
  result = sub_18F358194();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F358194()
{
  result = qword_1EACD7130;
  if (!qword_1EACD7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7130);
  }

  return result;
}

unint64_t sub_18F3581E8(uint64_t a1)
{
  result = sub_18F358210();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F358210()
{
  result = qword_1EACD7138;
  if (!qword_1EACD7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7138);
  }

  return result;
}

unint64_t sub_18F358268()
{
  result = qword_1EACD7140;
  if (!qword_1EACD7140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD7148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7140);
  }

  return result;
}

unint64_t sub_18F3582D0()
{
  result = qword_1EACD7150;
  if (!qword_1EACD7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7150);
  }

  return result;
}

unint64_t sub_18F358328()
{
  result = qword_1EACD7158;
  if (!qword_1EACD7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7158);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for _IntentPhotoItemCollection.PickerMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for _IntentPhotoItemCollection.PickerFilter(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F358568(uint64_t a1, void *a2)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v40 - v4;
  v64 = sub_18F520C8C();
  v5 = MEMORY[0x1EEE9AC00](v64);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - v8;
  v9 = MEMORY[0x1E69E7CC8];
  v63 = MEMORY[0x1E69E7CC8];
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v41 = v7;
  v46 = (v7 + 32);
  v50 = a1;
  result = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v16 = 0;
  v42 = v14;
  v43 = a1 + 64;
  while (v13)
  {
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v16 << 6);
    v20 = (*(v50 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    sub_18F0FD724(*(v50 + 56) + 40 * v19, &v60);
    *&v59 = v22;
    *(&v59 + 1) = v21;
    v56 = v60;
    v57 = v61;
    v55 = v59;
    v58 = v62;
    v23 = *(&v61 + 1);
    v24 = __swift_project_boxed_opaque_existential_1Tm(&v56, *(&v61 + 1));
    v51[3] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v24, v23);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v26 = v48;
    sub_18F3597A8(v51, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v27 = v64;
    if (__swift_getEnumTagSinglePayload(v26, 1, v64) == 1)
    {
      sub_18F0EF148(&v55, &qword_1EACD27D8);
      result = sub_18F0EF148(v26, &qword_1EACD0360);
    }

    else
    {
      v28 = *v46;
      v29 = v44;
      (*v46)(v44, v26, v27);
      v52 = v55;
      v53[0] = v56;
      v53[1] = v57;
      v54 = v58;
      v45 = v28;
      v28(v47, v29, v27);
      if (*(v9 + 24) <= *(v9 + 16))
      {
        sub_18F351FA4();
      }

      v9 = v63;
      v30 = v52;
      sub_18F522EFC();
      sub_18F5219CC();
      result = sub_18F522F4C();
      v31 = v9 + 64;
      v32 = -1 << *(v9 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      v14 = v42;
      v10 = v43;
      if (((-1 << v33) & ~*(v9 + 64 + 8 * (v33 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v32) >> 6;
        while (++v34 != v37 || (v36 & 1) == 0)
        {
          v38 = v34 == v37;
          if (v34 == v37)
          {
            v34 = 0;
          }

          v36 |= v38;
          v39 = *(v31 + 8 * v34);
          if (v39 != -1)
          {
            v35 = __clz(__rbit64(~v39)) + (v34 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v35 = __clz(__rbit64((-1 << v33) & ~*(v9 + 64 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      *(*(v9 + 48) + 16 * v35) = v30;
      v45((*(v9 + 56) + *(v41 + 72) * v35), v47, v64);
      ++*(v9 + 16);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v53);
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v9;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t AppContext.fetchEnumURL(withIdentifier:caseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F358A28()
{
  OUTLINED_FUNCTION_21();
  sub_18F14365C();
  OUTLINED_FUNCTION_34_22();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v0[7] = sub_18F1435EC();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_18F358AF0;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];

  return sub_18F35961C(v4, v2, v3);
}

uint64_t sub_18F358AF0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_18F358C4C;
  }

  else
  {
    v7 = sub_18F358BF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F358BF0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F358C4C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F358D40(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v4[3] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[4] = v7;
  v4[5] = _Block_copy(a3);
  v8 = sub_18F5218DC();
  v10 = v9;
  v4[6] = v9;
  v11 = sub_18F5218DC();
  v13 = v12;
  v4[7] = v12;
  v14 = a4;
  v15 = swift_task_alloc();
  v4[8] = v15;
  *v15 = v4;
  v15[1] = sub_18F358E94;

  return AppContext.fetchEnumURL(withIdentifier:caseIdentifier:)(v7, v8, v10, v11, v13);
}

uint64_t sub_18F358E94()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *(v5 + 16);
  v8 = *v1;
  OUTLINED_FUNCTION_39();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[5];
    sub_18F520A7C();

    (v10)[2](v10, 0, v6);
    _Block_release(v10);
  }

  else
  {
    sub_18F178778(v3[4], v3[3]);
    sub_18F520C8C();
    v11 = OUTLINED_FUNCTION_34_22();
    v12 = 0;
    if (__swift_getEnumTagSinglePayload(v11, 1, v6) != 1)
    {
      v13 = v3[3];
      v12 = sub_18F520BEC();
      (*(*(v6 - 1) + 8))(v13, v6);
    }

    v14 = v3[5];
    (v14)[2](v14, v12, 0);
    _Block_release(v14);
  }

  v15 = *(v8 + 8);

  return v15();
}

uint64_t AppContext.fetchEnumURL(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F3590D4()
{
  OUTLINED_FUNCTION_21();
  sub_18F14365C();
  OUTLINED_FUNCTION_34_22();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  *(v0 + 32) = sub_18F1435EC();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_18F359190;

  return sub_18F359934();
}

uint64_t sub_18F359190()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    v9 = sub_18F273F00;
  }

  else
  {
    *(v5 + 56) = v3;
    v9 = sub_18F3592A4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_18F3592A4()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_18F359390(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_18F5218DC();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_18F359460;

  return AppContext.fetchEnumURL(withIdentifier:)(v5, v7);
}

uint64_t sub_18F359460()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_85();
  v6 = v5;
  OUTLINED_FUNCTION_8_0();
  *v7 = v6;
  v9 = *(v8 + 16);
  v10 = *v1;
  OUTLINED_FUNCTION_39();
  *v11 = v10;

  if (v2)
  {
    v4 = sub_18F520A7C();

    v12 = 0;
    v13 = v4;
  }

  else if (v4)
  {
    sub_18F520C8C();
    v12 = sub_18F5216AC();

    v4 = 0;
    v13 = v12;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(v6 + 24);
  v14[2](v14, v12, v4);

  _Block_release(v14);
  OUTLINED_FUNCTION_71();

  return v15();
}

uint64_t sub_18F35961C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F359640, 0, 0);
}

uint64_t sub_18F359640()
{
  OUTLINED_FUNCTION_31();
  v0[12] = v0[17];
  v1 = v0[18];
  v0[15] = MEMORY[0x1E69E6158];
  v0[13] = v1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F333604((v0 + 12), v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  if (v0[10])
  {
    v2 = v0[16];
    sub_18F0FD0B4((v0 + 7), (v0 + 2));
    v3 = v0[5];
    v4 = __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
    v0[10] = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
    sub_18F3597A8((v0 + 7), v2);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  }

  else
  {
    v6 = v0[16];
    sub_18F0EF148((v0 + 7), &qword_1EACD0620);
    v7 = sub_18F520C8C();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }

  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F3597A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18F0FECD4(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4598);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(&v8, v12);
    v4 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    URLRepresentableEnum.urlRepresentation.getter(v4, a2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  sub_18F0EF148(&v8, &qword_1EACD4590);
  sub_18F0FECD4(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4578);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(&v8, v12);
    v5 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    _URLRepresentableEnum.urlRepresentation.getter(v5, a2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  sub_18F0EF148(&v8, &qword_1EACD4570);
  v7 = sub_18F520C8C();
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
}

uint64_t sub_18F359954()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_18F3339D8();
  if (v1)
  {
    v2 = sub_18F358568(v1, *(v0 + 16));
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_18F3599F4()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18F0FC870;

  return sub_18F359390(v2, v3, v4);
}

uint64_t sub_18F359AA4()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18F0FC874;

  return sub_18F358D40(v2, v3, v5, v4);
}

uint64_t sub_18F359B64()
{
  v1 = OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  v12 = sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  return v12;
}

uint64_t sub_18F359C54()
{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

uint64_t _s10AppIntents14EntityPropertyCAA10Foundation11MeasurementVySo10NSUnitAreaCG9ValueTypeRtzrlE11indexingKeyACyxGs07PartialL4PathCySo28CSSearchableItemAttributeSetCG_tcfC_0()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, v0, 0);
}

uint64_t _s10AppIntents14EntityPropertyCAA10Foundation11MeasurementVySo10NSUnitAreaCG9ValueTypeRtzrlE5title11indexingKeyACyxGAD23LocalizedStringResourceV_s07PartialM4PathCySo28CSSearchableItemAttributeSetCGtcfC_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, a2, 0);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

uint64_t _s10AppIntents14EntityPropertyCAA10Foundation11MeasurementVySo10NSUnitAreaCG9ValueTypeRtzrlE17customIndexingKeyACyxGSo017CSCustomAttributeM0C_tcfC_0()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v9);
  v6 = OUTLINED_FUNCTION_17_0();
  return sub_18F1026E0(v6, v7, v5, 0, v0);
}

uint64_t _s10AppIntents14EntityPropertyCAA10Foundation11MeasurementVySo10NSUnitAreaCG9ValueTypeRtzrlE5title17customIndexingKeyACyxGAD23LocalizedStringResourceV_So017CSCustomAttributeN0CtcfC_0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_27_5();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_15_1(v6);
  v8(v7);
  OUTLINED_FUNCTION_25_6();
  v9 = OUTLINED_FUNCTION_17_0();
  sub_18F1026E0(v9, v10, v3, 0, a2);
  v11 = OUTLINED_FUNCTION_29_9();
  v12(v11);
  return v2;
}

uint64_t _s10AppIntents14EntityPropertyCAA10Foundation11MeasurementVySo10NSUnitAreaCG9ValueTypeRtzrlE10identifierACyxGSSYt_tcfC_0()
{
  v0 = sub_18F520B3C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  sub_18F1026CC(v8);
  OUTLINED_FUNCTION_11_1();
  return sub_18F1026E0(v2, v3, v4, v5, v6);
}

void _s10AppIntents14EntityPropertyCAA10Foundation11MeasurementVySo10NSUnitAreaCG9ValueTypeRtzrlE10identifier5titleACyxGSSYt_AD23LocalizedStringResourceVtcfC_0()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v6 - v5, v0, v1);
  sub_18F1026CC(&v12);
  OUTLINED_FUNCTION_11_1();
  sub_18F1026E0(v7, v8, v9, v10, v11);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_101_0();
}

uint64_t _s10AppIntents14EntityPropertyCAA10Foundation11MeasurementVySo10NSUnitAreaCG9ValueTypeRtzrlE10identifier11indexingKeyACyxGSSYt_s07PartialM4PathCySo28CSSearchableItemAttributeSetCGtcfC_0()
{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, v0, 0);
}

uint64_t _s10AppIntents14EntityPropertyCAA10Foundation11MeasurementVySo10NSUnitAreaCG9ValueTypeRtzrlE10identifier17customIndexingKeyACyxGSSYt_So017CSCustomAttributeN0CtcfC_0()
{
  v1 = OUTLINED_FUNCTION_16_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_25_6();
  v3 = OUTLINED_FUNCTION_31_7();
  return sub_18F1026E0(v3, v4, v5, 0, v0);
}

void sub_18F35A388()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F35A49C()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F35A514()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void _s10AppIntents14EntityPropertyCAA10Foundation11MeasurementVySo10NSUnitAreaCG9ValueTypeRtzrlE10identifier5title11indexingKeyACyxGSSYt_AD23LocalizedStringResourceVs07PartialN4PathCySo28CSSearchableItemAttributeSetCGtcfC_0()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, v0, 0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

void _s10AppIntents14EntityPropertyCAA10Foundation11MeasurementVySo10NSUnitAreaCG9ValueTypeRtzrlE10identifier5title17customIndexingKeyACyxGSSYt_AD23LocalizedStringResourceVSo017CSCustomAttributeO0CtcfC_0()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_14_9(v2);
  v4(v3);
  sub_18F1026CC(&v10);
  v5 = OUTLINED_FUNCTION_27_2();
  sub_18F1026E0(v5, v6, v7, 0, v0);
  v8 = OUTLINED_FUNCTION_30_1();
  v9(v8);
  OUTLINED_FUNCTION_101_0();
}

void sub_18F35A724()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F35A8E8()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F35A9C4()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F35B724(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_18F111F70(a1);
  sub_18F5228CC();
  result = sub_18F111F70(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x193ADBE10](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();

      return 0;
    }

    sub_18F52289C();
    sub_18F5228DC();
    sub_18F5228EC();
    result = sub_18F5228AC();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t AppContext.fetchDisplayRepresentation(for:)(uint64_t a1)
{
  v1[23] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v1[25] = swift_task_alloc();
  v1[26] = type metadata accessor for DisplayRepresentation();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F35B964, 0, 0);
}

uint64_t sub_18F35B964()
{
  if (qword_1ED6FEF38 != -1)
  {
    swift_once();
  }

  v1 = sub_18F52165C();
  v2 = __swift_project_value_buffer(v1, qword_1ED707778);
  v0[28] = v2;
  v3 = sub_18F52163C();
  v4 = sub_18F52220C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_18F0E9000, v3, v4, "Attempting to fetch display representations", v5, 2u);
    OUTLINED_FUNCTION_32();
  }

  v6 = v0[23];

  if (v6)
  {
    v7 = sub_18F35B724(v0[23]);
    v0[29] = v7;
    if (v7)
    {
      v8 = MEMORY[0x1E69E7CC0];
      v0[22] = MEMORY[0x1E69E7CC0];
      v9 = sub_18F111F70(v7);
      v0[30] = v9;
      if (v9)
      {
        if (v9 >= 1)
        {
          v0[31] = 0;
          v10 = v0[29];
          if ((v10 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x193ADBE10](0);
          }

          else
          {
            v11 = *(v10 + 32);
          }

          v0[32] = v11;
          v20 = swift_task_alloc();
          v21 = OUTLINED_FUNCTION_3_61(v20);
          *v21 = v22;
          OUTLINED_FUNCTION_0_97(v21);

          return sub_18F114AB0();
        }

        __break(1u);
      }

      else
      {

        if (!(v8 >> 62))
        {
          v18 = v8 & 0xFFFFFFFFFFFFFF8;
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          sub_18F522DAC();
          if (swift_dynamicCastMetatype() || (v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
          {
LABEL_18:
            v2 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v24 = (v18 + 32);
            while (*v24)
            {
              ++v24;
              if (!--v23)
              {
                goto LABEL_18;
              }
            }

            v2 = v18 | 1;
          }

          goto LABEL_19;
        }
      }

      OUTLINED_FUNCTION_1_78();
      sub_18F522A4C();
      OUTLINED_FUNCTION_6_57();
LABEL_19:

      v19 = v0[1];

      return v19(v2);
    }
  }

  v12 = sub_18F52163C();
  v13 = sub_18F52221C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_18F0E9000, v12, v13, "Wrong input type for fetchDisplayRepresentationForActions:completionHandler:", v14, 2u);
    OUTLINED_FUNCTION_32();
  }

  sub_18F35CB50();
  swift_allocError();
  *v15 = 1;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_18F35BCE0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 272) = v0;

  if (v0)
  {
    v5 = sub_18F35C21C;
  }

  else
  {
    v5 = sub_18F35BDEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F35BDEC()
{
  sub_18F0FD724(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7170);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 216);
  if (v1)
  {
    sub_18F0FD0B4((v0 + 136), v0 + 56);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), v3);
    (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  }

  else
  {
    v5 = *(v0 + 200);
    v6 = *(v0 + 208);
    v7 = *(v0 + 192);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    sub_18F35CC30(v0 + 136);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    swift_getDynamicType();
    (*(*(v0 + 48) + 56))();
    v8 = sub_18F520B3C();
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    v12 = type metadata accessor for DisplayRepresentation.Image(0);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    v16 = v6[5];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);
    v20 = v6[6];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v12);
    *(v2 + v6[7]) = xmmword_18F540410;
    *(v2 + v6[8]) = 0;
    *(v2 + v6[9]) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v8);
    sub_18F0FF628(v5, v2 + v16, &qword_1EACCF7A8);
    sub_18F0FF628(v7, v2 + v20, &qword_1EACD0270);
  }

  v27 = *(v0 + 256);
  sub_18F13FE10();
  v29 = v28;
  objc_allocWithZone(MEMORY[0x1E69ACEB8]);
  v30 = v27;
  v31 = v29;
  sub_18F35CBA4(v30, v29, 0);
  MEMORY[0x193ADB260]();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18F521D0C();
  }

  v32 = *(v0 + 256);
  v33 = *(v0 + 216);
  sub_18F521D6C();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v34 = *(v0 + 176);
  sub_18F14372C(v33);
  v35 = *(v0 + 248) + 1;
  if (v35 == *(v0 + 240))
  {

    if (v34 >> 62)
    {
      OUTLINED_FUNCTION_1_78();
      sub_18F522A4C();
      OUTLINED_FUNCTION_6_57();
    }

    else
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F522DAC();
      if (!swift_dynamicCastMetatype())
      {
        v44 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v44)
        {
          v45 = ((v34 & 0xFFFFFFFFFFFFFF8) + 32);
          do
          {
            if (!*v45)
            {
              break;
            }

            ++v45;
            --v44;
          }

          while (v44);
        }
      }
    }

    v36 = OUTLINED_FUNCTION_47();

    return v37(v36);
  }

  else
  {
    *(v0 + 248) = v35;
    v39 = *(v0 + 232);
    if ((v39 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x193ADBE10]();
    }

    else
    {
      v40 = *(v39 + 8 * v35 + 32);
    }

    *(v0 + 256) = v40;
    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_3_61(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_0_97();

    return sub_18F114AB0();
  }
}

uint64_t sub_18F35C21C()
{
  v30 = v0;
  v1 = *(v0 + 256);
  v2 = sub_18F52163C();
  v3 = sub_18F52221C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 256);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315138;
    v7 = [v4 identifier];
    v8 = sub_18F5218DC();
    v10 = v9;

    v11 = sub_18F11897C(v8, v10, &v29);

    *(v5 + 4) = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  v12 = *(v0 + 256);
  v13 = sub_18F520A7C();
  v14 = objc_allocWithZone(MEMORY[0x1E69ACEB8]);
  sub_18F35CBA4(v12, 0, v13);
  MEMORY[0x193ADB260]();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18F521D0C();
  }

  v15 = *(v0 + 272);
  v16 = *(v0 + 256);
  sub_18F521D6C();

  v17 = *(v0 + 248) + 1;
  if (v17 == *(v0 + 240))
  {
    v18 = *(v0 + 176);

    if (v18 >> 62)
    {
      OUTLINED_FUNCTION_1_78();
      sub_18F522A4C();
      OUTLINED_FUNCTION_6_57();
    }

    else
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F522DAC();
      if (!swift_dynamicCastMetatype())
      {
        v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
          v28 = ((v18 & 0xFFFFFFFFFFFFFF8) + 32);
          do
          {
            if (!*v28)
            {
              break;
            }

            ++v28;
            --v27;
          }

          while (v27);
        }
      }
    }

    v19 = OUTLINED_FUNCTION_47();

    return v20(v19);
  }

  else
  {
    *(v0 + 248) = v17;
    v22 = *(v0 + 232);
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x193ADBE10]();
    }

    else
    {
      v23 = *(v22 + 8 * v17 + 32);
    }

    *(v0 + 256) = v23;
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_3_61(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_0_97();

    return sub_18F114AB0();
  }
}

uint64_t sub_18F35C5E4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18F521CAC();
  }

  v3[4] = a1;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_18F35C6BC;

  return AppContext.fetchDisplayRepresentation(for:)(a1);
}

uint64_t sub_18F35C6BC(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_39();
  *v8 = v7;

  if (v3)
  {
    a1 = sub_18F520A7C();

    v9 = 0;
    v10 = a1;
  }

  else if (a1)
  {
    v9 = sub_18F521C8C();

    a1 = 0;
    v10 = v9;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = *(v5 + 24);
  v11[2](v11, v9, a1);

  _Block_release(v11);
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_18F35C894(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
  switch(a1)
  {
    case 1:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v12;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = 0x2064696C61766E49;
      v4 = 0x2E7475706E69;
      goto LABEL_8;
    case 2:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v9;
      OUTLINED_FUNCTION_2_80();
      goto LABEL_6;
    case 3:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v10;
      OUTLINED_FUNCTION_2_80();
      v8 = v11 + 47;
      goto LABEL_6;
    case 4:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v5;
      OUTLINED_FUNCTION_2_80();
      v8 = v7 + 17;
LABEL_6:
      *(inited + 48) = v8;
      break;
    default:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v3;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = 0x206E776F6E6B6E55;
      v4 = 0x2E726F727265;
LABEL_8:
      v6 = v4 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
  }

  *(inited + 56) = v6;
  return sub_18F5216CC();
}

uint64_t sub_18F35CAC4(uint64_t a1)
{
  v2 = sub_18F35CDD0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F35CB00(uint64_t a1)
{
  v2 = sub_18F35CDD0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18F35CB50()
{
  result = qword_1EACD7168;
  if (!qword_1EACD7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7168);
  }

  return result;
}

id sub_18F35CBA4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v8 = sub_18F520A7C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithAction:a1 displayRepresentation:a2 error:v8];

  return v9;
}

uint64_t sub_18F35CC30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DisplayRepresentationFetchError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F35CD7C()
{
  result = qword_1EACD7180;
  if (!qword_1EACD7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7180);
  }

  return result;
}

unint64_t sub_18F35CDD0()
{
  result = qword_1EACD7188;
  if (!qword_1EACD7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7188);
  }

  return result;
}

uint64_t sub_18F35CE24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18F224D20;

  return sub_18F35C5E4(v2, v3, v4);
}

uint64_t EditingMode.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t EnterMarkupError.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t static _SynthesizedEnterMarkupIntent.parameterSummary.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _SynthesizedEnterMarkupIntent();
  OUTLINED_FUNCTION_0_98();
  swift_getWitnessTable();

  return IntentParameterSummary.init()(a1);
}

uint64_t sub_18F35D134(uint64_t a1, void *a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v8 - v3;
  (*(v5 + 16))(v8 - v3);
  v8[1] = *a2;
  v6 = type metadata accessor for _SynthesizedEnterMarkupIntent();

  _SynthesizedEnterMarkupIntent.entity.setter(v4, v6);
}

uint64_t _SynthesizedEnterMarkupIntent.entity.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_11_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v8 - v7, a1, v3);
  IntentParameter.wrappedValue.setter();
  return (*(v5 + 8))(a1, v3);
}

void _SynthesizedEnterMarkupIntent.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  v12 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_18F52254C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v20 - v15;
  v17 = sub_18F520B3C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_4();
  type metadata accessor for IntentParameter();
  sub_18F520ACC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, AssociatedTypeWitness);
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_18F120FCC(a1, a1, a1, v12);
  v18 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v18);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_18F116B3C();
  *a3 = v19;
}

uint64_t sub_18F35D740()
{
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED7077A8);
  v2 = sub_18F52163C();
  v3 = sub_18F52221C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18F0E9000, v2, v3, "To enable EnterMarkupIntent support please import AppIntents with UIKit or SwiftUI", v4, 2u);
    MEMORY[0x193ADD350](v4, -1, -1);
  }

  sub_18F133EDC();
  swift_allocError();
  *v5 = 3;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 7;
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_18F35D8BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F10DF80;

  return _SynthesizedEnterMarkupIntent.perform()();
}

unint64_t sub_18F35D958()
{
  result = qword_1EACD7190;
  if (!qword_1EACD7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7190);
  }

  return result;
}

unint64_t sub_18F35D9B0()
{
  result = qword_1EACD7198[0];
  if (!qword_1EACD7198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD7198);
  }

  return result;
}

uint64_t sub_18F35DA04(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F35DA40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EditingMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for EnterMarkupError(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18F35DCAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F35DCE8()
{
  v1 = sub_18F5210CC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dynamic_cast_existential_1_conditional(v0))
  {
    (*(v5 + 32))();
    v6 = sub_18F52111C();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F5210BC();
    v7 = sub_18F19E26C(v4, v6);

    (*(v2 + 8))(v4, v1);
    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;

        return v9;
      }
    }
  }

  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t _CodableIntentValue.encodedData.getter()
{
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  v0 = sub_18F52068C();

  return v0;
}

uint64_t static _CodableIntentValue.decode(from:)()
{
  sub_18F52064C();
  swift_allocObject();
  sub_18F52063C();
  sub_18F52062C();
}

unint64_t sub_18F35E018()
{
  result = qword_1EACD7220;
  if (!qword_1EACD7220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EACD7228);
    sub_18F35E09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7220);
  }

  return result;
}

unint64_t sub_18F35E09C()
{
  result = qword_1EACCE9B8;
  if (!qword_1EACCE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE9B8);
  }

  return result;
}

uint64_t sub_18F35E138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a1;
  v5[4] = a3;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F35E150()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD7228);
  sub_18F35E658();
  v3 = sub_18F521B3C();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_18F35E23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_18F35E5CC(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7330);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_18F35E2C0(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  *(v4 + 16) = a1;
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  v9 = a4[2];
  v10 = a4[3];
  v11 = a4[4];
  *v7 = v4;
  v7[1] = sub_18F32F860;

  return sub_18F35E138(v6, v8, v9, v10, v11);
}

uint64_t sub_18F35E364(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F35E3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a2;
  v4[11] = a4;
  v4[9] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F35E3D4()
{
  v1 = v0[11];
  v2 = v0[9];
  sub_18F35E5CC(v0[10], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7330);
  v3 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v2, v3 ^ 1u, 1, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_18F35E480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 16);
  *v9 = v4;
  v9[1] = sub_18F10DF80;

  return sub_18F35E3BC(a1, a2, v8, v10);
}

uint64_t sub_18F35E530(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F35E5CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_18F35E658()
{
  result = qword_1EACD7338;
  if (!qword_1EACD7338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EACD7228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7338);
  }

  return result;
}

uint64_t sub_18F35E6BC()
{
  type metadata accessor for CodableFromBoxedCodableIntentValueResolver();
  OUTLINED_FUNCTION_4_62();
  type metadata accessor for ResolverSpecificationBuilder.Specification();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  return sub_18F122278(sub_18F35EB8C);
}

void sub_18F35E780(uint64_t a1)
{
  v2 = type metadata accessor for CodableFromBoxedCodableIntentValueResolver();
  WitnessTable = swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)(v4, WitnessTable, a1, v2, WitnessTable);

  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
}

uint64_t sub_18F35E810()
{
  sub_18F521DBC();
  type metadata accessor for CodablesFromBoxedCodableIntentValuesResolver();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_79();
  swift_getWitnessTable();
  type metadata accessor for ResolverSpecificationBuilder.Specification();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  return sub_18F122278(sub_18F35EB80);
}

void sub_18F35E910()
{
  v0 = sub_18F521DBC();
  v1 = type metadata accessor for CodablesFromBoxedCodableIntentValuesResolver();
  WitnessTable = swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)(v3, WitnessTable, v0, v1, WitnessTable);
  swift_getWitnessTable();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
}

uint64_t sub_18F35E9D8@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = dynamic_cast_existential_1_conditional(AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  if (v3)
  {
    sub_18F521DBC();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_6_58();
    type metadata accessor for CodablesFromBoxedCodableIntentValuesResolver();
    OUTLINED_FUNCTION_10_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_79();
    swift_getWitnessTable();
    *(a1 + 24) = OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_0_33();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_5_58(WitnessTable);
    return sub_18F35E810();
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_6_58();
    type metadata accessor for CodableFromBoxedCodableIntentValueResolver();
    OUTLINED_FUNCTION_4_62();
    *(a1 + 24) = OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_0_33();
    v6 = swift_getWitnessTable();
    OUTLINED_FUNCTION_5_58(v6);
    return sub_18F35E6BC();
  }
}

uint64_t sub_18F35EB98()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  v1[159] = v0;
  v1[158] = v2;
  v1[160] = sub_18F520E6C();
  OUTLINED_FUNCTION_14_6();
  v1[161] = v4;
  v1[162] = swift_task_alloc();
  v1[163] = *(v3 - 8);
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = sub_18F522F8C();
  OUTLINED_FUNCTION_14_6();
  v1[170] = v5;
  v1[171] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F35ED2C()
{
  v277 = v0;
  v1 = (v0 + 72);
  v264 = (v0 + 117);
  v2 = v0[163];
  v3 = v0[159];
  v4 = v0[158];
  v0[133] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 130);
  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v0[172] = v7;
  v0[173] = v6 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(boxed_opaque_existential_1, v3, v4);
  sub_18F522F6C();
  sub_18F522F7C();
  v0[174] = sub_18F52295C();

  *&v8 = 136315138;
  v266 = v8;
  *&v8 = 136316162;
  v254 = v8;
  *&v8 = 136315906;
  v255 = v8;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        OUTLINED_FUNCTION_203_0();
        if (!v0[20])
        {
          v128 = OUTLINED_FUNCTION_7_50();
          v129(v128);

          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_141_0();

          __asm { BRAA            X1, X16 }
        }

        v9 = OUTLINED_FUNCTION_20_32();
        sub_18F0F9FD4(v9, v10, &qword_1EACCFD88);

        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
        if (swift_dynamicCast())
        {
          break;
        }

        v32 = OUTLINED_FUNCTION_87_9();
        sub_18F0FA038(v32, v33);
        v34 = OUTLINED_FUNCTION_26_36();
        sub_18F0FA038(v34, &qword_1EACD0D08);
      }

      OUTLINED_FUNCTION_29_34();
      v12 = OUTLINED_FUNCTION_16_40();
      __swift_project_boxed_opaque_existential_1Tm(v12, v13);
      v14 = OUTLINED_FUNCTION_17_40();
      v16 = v15(v14);
      v0[175] = v17;
      if (v17)
      {
        break;
      }

      swift_endAccess();
      if (qword_1ED6FEFE8 != -1)
      {
        OUTLINED_FUNCTION_1_6();
        swift_once();
      }

      v35 = sub_18F52165C();
      v36 = OUTLINED_FUNCTION_186_2(v35, qword_1ED7077A8);
      v37 = sub_18F52221C();
      if (OUTLINED_FUNCTION_27(v37))
      {
        OUTLINED_FUNCTION_140_1();
        v38 = OUTLINED_FUNCTION_48_11();
        *v6 = OUTLINED_FUNCTION_88_10(v38, v39, v40, v41, v42, v43, v44, v45, v252, v253, v254, *(&v254 + 1), v255, *(&v255 + 1), v256, v257, v259, v261, log, v264, v266).n128_u32[0];
        v46 = OUTLINED_FUNCTION_202();
        v48 = OUTLINED_FUNCTION_218_0(v46, v47);

        *(v6 + 4) = v48;
        OUTLINED_FUNCTION_95_0(&dword_18F0E9000, v36, &dword_18F54C250, "Missing property identifier for %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        OUTLINED_FUNCTION_65();
        OUTLINED_FUNCTION_24_3();
      }

      v49 = OUTLINED_FUNCTION_87_9();
      sub_18F0FA038(v49, v50);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 47));
    }

    v271 = v16;
    v274 = v17;
    v0[176] = v16;
    swift_endAccess();
    OUTLINED_FUNCTION_73_6();
    v18 = OUTLINED_FUNCTION_6_59();
    v19(v18);
    v20 = sub_18F238034();
    v22 = v21;
    v6 = v0[50];
    v23 = v0[51];
    OUTLINED_FUNCTION_146_2();
    v24 = OUTLINED_FUNCTION_62_1();
    v25(v24, v23);
    swift_endAccess();
    v0[2] = v20;
    v0[3] = v22;
    OUTLINED_FUNCTION_27_34();
    if (v20)
    {
      if (dynamic_cast_existential_1_conditional(v20) && v0[7])
      {
        break;
      }
    }

LABEL_11:
    OUTLINED_FUNCTION_72_11();
    OUTLINED_FUNCTION_11_40();
    v26 = OUTLINED_FUNCTION_17_40();
    v27(v26);
    if (v0[65])
    {
      OUTLINED_FUNCTION_132_5();
      v28 = OUTLINED_FUNCTION_6_59();
      v30 = v29(v28);
      sub_18F238034();
      v31 = OUTLINED_FUNCTION_231();
      if (!v30 || v31 != v30)
      {
        if (qword_1ED6FEFE8 != -1)
        {
          OUTLINED_FUNCTION_1_6();
          swift_once();
        }

        v53 = v0[172];
        v269 = sub_18F52165C();
        v6 = __swift_project_value_buffer(v269, qword_1ED7077A8);
        v54 = OUTLINED_FUNCTION_22();
        v53(v54);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v55 = sub_18F52163C();
        v56 = sub_18F52223C();

        v57 = OUTLINED_FUNCTION_182_2();
        v58 = v0[166];
        v59 = v0[163];
        if (v57)
        {
          log = v55;
          v60 = v0[162];
          v257 = v0[160];
          v61 = v0[158];
          v6 = swift_slowAlloc();
          v261 = swift_slowAlloc();
          v276[0] = v261;
          *v6 = v255;
          v62 = sub_18F52307C();
          LODWORD(v259) = v56;
          OUTLINED_FUNCTION_198(v62, v63);
          OUTLINED_FUNCTION_246();
          *(v6 + 4) = v53;
          *(v6 + 12) = 2080;
          _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
          (*(v59 + 8))(v58, v61);
          sub_18F368258();
          v64 = sub_18F522C9C();
          v66 = v65;
          v67 = OUTLINED_FUNCTION_51_4();
          v68(v67);
          sub_18F11897C(v64, v66, v276);
          OUTLINED_FUNCTION_55();

          *(v6 + 14) = v60;
          *(v6 + 22) = 2080;
          *(v6 + 24) = sub_18F11897C(v271, v274, v276);
          *(v6 + 32) = 2080;
          v69 = OUTLINED_FUNCTION_6_59();
          v70(v69);
          v71 = sub_18F52307C();
          OUTLINED_FUNCTION_137_1(v71, v72);
          OUTLINED_FUNCTION_102_0();
          *(v6 + 34) = v64;
          _os_log_impl(&dword_18F0E9000, log, v259, "Resolving %s(%s)::%s to %s", v6, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_53_12();
          OUTLINED_FUNCTION_24_3();
        }

        else
        {
          (*(v59 + 8))(v0[166], v0[158]);
        }

        OUTLINED_FUNCTION_201();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7350);
        v1 = (v0 + 72);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_12_47();
          OUTLINED_FUNCTION_14_6();
          v160 = swift_task_alloc();
          v161 = OUTLINED_FUNCTION_159_1(v160);
          *v161 = v162;
          OUTLINED_FUNCTION_2_81(v161);
          OUTLINED_FUNCTION_141_0();

          __asm { BRAA            X2, X16 }
        }

        v109 = OUTLINED_FUNCTION_28_42();
        sub_18F0FA038(v109, &qword_1EACD7358);
        if (qword_1ED6FE088 != -1)
        {
          OUTLINED_FUNCTION_4_63();
          swift_once();
        }

        v110 = OUTLINED_FUNCTION_186_2(v269, qword_1ED707760);
        v111 = sub_18F52221C();
        if (OUTLINED_FUNCTION_84_2(v111))
        {
          v112 = OUTLINED_FUNCTION_126();
          v6 = OUTLINED_FUNCTION_75();
          *v112 = OUTLINED_FUNCTION_88_10(v6, v113, v114, v115, v116, v117, v118, v119, v252, v253, v254, *(&v254 + 1), v255, *(&v255 + 1), v256, v257, v259, v261, log, v264, v266).n128_u32[0];
          sub_18F0FD6C4((v0 + 47), (v0 + 27));
          v120 = sub_18F52194C();
          v122 = sub_18F11897C(v120, v121, v276);

          *(v112 + 4) = v122;
          _os_log_impl(&dword_18F0E9000, v110, v111, "Unexpected property type: %s", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v6);
          OUTLINED_FUNCTION_24_3();
          OUTLINED_FUNCTION_53_12();
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 52));
        v107 = OUTLINED_FUNCTION_87_9();
        goto LABEL_47;
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 52));
    }

    else
    {
      sub_18F0FA038((v0 + 62), &qword_1EACD0620);
      swift_endAccess();
    }

    OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_11_40();
    v51 = OUTLINED_FUNCTION_17_40();
    v52(v51);
    swift_endAccess();
    if (v0[80])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E28);
      OUTLINED_FUNCTION_134_2();
      if (swift_dynamicCast())
      {
        if (v0[75])
        {
          sub_18F0FD0B4(v1, (v0 + 67));
          if (qword_1ED6FEFE8 != -1)
          {
            OUTLINED_FUNCTION_1_6();
            swift_once();
          }

          OUTLINED_FUNCTION_32_33();
          v190 = v0[159];
          v191 = v0[158];
          v192 = sub_18F52165C();
          v193 = OUTLINED_FUNCTION_51_11(v192, qword_1ED7077A8);
          (v1)(v193, v190, v191);
          OUTLINED_FUNCTION_209_0();
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          v194 = sub_18F52163C();
          v195 = sub_18F52223C();

          if (OUTLINED_FUNCTION_182_2())
          {
            v270 = v0[176];
            OUTLINED_FUNCTION_190_0();
            v265 = v196;
            v268 = v197;
            v273 = v195;
            v198 = v0[163];
            v275 = v194;
            v199 = v0[162];
            OUTLINED_FUNCTION_104_8();
            v276[0] = OUTLINED_FUNCTION_118_5();
            *v23 = v254;
            v200 = OUTLINED_FUNCTION_166_1();
            OUTLINED_FUNCTION_208_0(v200, v201);
            OUTLINED_FUNCTION_196_0();
            OUTLINED_FUNCTION_76_12();
            (*(v198 + 8))(v265, v1);
            sub_18F368258();
            OUTLINED_FUNCTION_212_0();
            v202 = OUTLINED_FUNCTION_18_38();
            v203(v202);
            v204 = OUTLINED_FUNCTION_92_7();
            sub_18F11897C(v204, v11, v205);
            OUTLINED_FUNCTION_173_0();

            OUTLINED_FUNCTION_31_35();
            v207 = sub_18F11897C(v270, v268, v206);
            OUTLINED_FUNCTION_164_0(v207);
            v208 = OUTLINED_FUNCTION_15_40();
            v209(v208);
            v210 = sub_18F52307C();
            OUTLINED_FUNCTION_137_1(v210, v211);
            OUTLINED_FUNCTION_144_2();

            OUTLINED_FUNCTION_235_0();
            sub_18F52194C();
            OUTLINED_FUNCTION_83_1();
            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 97));
            v212 = OUTLINED_FUNCTION_45();
            sub_18F11897C(v212, v213, v214);
            OUTLINED_FUNCTION_55();

            *(v23 + 44) = v199;
            _os_log_impl(&dword_18F0E9000, v275, v273, "Resolving %s(%s)::%s to %s from %s", v23, 0x34u);
            OUTLINED_FUNCTION_167_0();
            OUTLINED_FUNCTION_53_12();
            OUTLINED_FUNCTION_65();
          }

          else
          {
            OUTLINED_FUNCTION_24_36();
            v229();

            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 97));
          }

          OUTLINED_FUNCTION_40_21();
          v230 = swift_task_alloc();
          v231 = OUTLINED_FUNCTION_160_1(v230);
          *v231 = v232;
          OUTLINED_FUNCTION_8_47();
          goto LABEL_81;
        }
      }

      else
      {
        *(v1 + 32) = 0;
        *v1 = 0u;
        *(v1 + 16) = 0u;
      }
    }

    else
    {
      sub_18F0FA038((v0 + 77), &qword_1EACD0620);
      *v1 = 0u;
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0;
    }

    sub_18F0FA038(v1, &qword_1EACD1E40);
    OUTLINED_FUNCTION_71_10();
    OUTLINED_FUNCTION_11_40();
    v73 = OUTLINED_FUNCTION_17_40();
    v74(v73);
    swift_endAccess();
    if (!v0[85])
    {
      v105 = OUTLINED_FUNCTION_87_9();
      sub_18F0FA038(v105, v106);

      v107 = (v0 + 82);
      v108 = &qword_1EACD0620;
LABEL_47:
      sub_18F0FA038(v107, v108);
      goto LABEL_51;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7348);
    if (OUTLINED_FUNCTION_38_22())
    {
      v75 = v0[155];
      v0[187] = v75;
      if (qword_1ED6FEFE8 != -1)
      {
        OUTLINED_FUNCTION_1_6();
        swift_once();
      }

      v76 = v0[175];
      v77 = v0[172];
      v78 = v0[158];
      v79 = sub_18F52165C();
      OUTLINED_FUNCTION_51_11(v79, qword_1ED7077A8);
      OUTLINED_FUNCTION_86();
      v77();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v6 = sub_18F52163C();
      v80 = sub_18F52223C();

      if (OUTLINED_FUNCTION_243())
      {
        OUTLINED_FUNCTION_145_1();
        v261 = v81;
        log = v82;
        v259 = v0[164];
        v274 = v6;
        v83 = v0[163];
        v272 = v80;
        v84 = v0[162];
        v78 = v0[160];
        v85 = v0[158];
        v86 = OUTLINED_FUNCTION_142_3();
        v269 = OUTLINED_FUNCTION_141_2();
        v276[0] = v269;
        *v86 = v254;
        v87 = sub_18F52307C();
        v89 = sub_18F11897C(v87, v88, v276);

        *(v86 + 4) = v89;
        *(v86 + 12) = 2080;
        _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
        (*(v83 + 8))(v259, v85);
        sub_18F368258();
        sub_18F522C9C();
        v90 = OUTLINED_FUNCTION_29_8();
        v91(v90);
        v92 = OUTLINED_FUNCTION_19_3();
        sub_18F11897C(v92, v93, v94);
        OUTLINED_FUNCTION_62_1();

        *(v86 + 14) = v84;
        *(v86 + 22) = 2080;
        sub_18F11897C(log, v261, v276);
        OUTLINED_FUNCTION_46();

        *(v86 + 24) = v84;
        *(v86 + 32) = 2080;
        v95 = v0[50];
        v6 = v0[51];
        v96 = OUTLINED_FUNCTION_52_14();
        __swift_project_boxed_opaque_existential_1Tm(v96, v97);
        v98 = OUTLINED_FUNCTION_22_33();
        v99(v98, v6);
        v100 = sub_18F52307C();
        OUTLINED_FUNCTION_137_1(v100, v101);
        OUTLINED_FUNCTION_102_0();
        *(v86 + 34) = v95;
        *(v86 + 42) = 2080;
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E28);
        v103 = MEMORY[0x193ADB2B0](v75, v102);
        OUTLINED_FUNCTION_137_1(v103, v104);
        OUTLINED_FUNCTION_102_0();
        *(v86 + 44) = v95;
        v80 = v274;
        OUTLINED_FUNCTION_240(&dword_18F0E9000, v274, v272, "Resolving %s(%s)::%s to %s from %s");
        v76 = v269;
        OUTLINED_FUNCTION_167_0();
        OUTLINED_FUNCTION_53_12();
        OUTLINED_FUNCTION_32();
      }

      else
      {
        v123 = OUTLINED_FUNCTION_19_37();
        v124(v123);
      }

      OUTLINED_FUNCTION_90_8(*(v75 + 16));
      v1 = (v0 + 72);
      if (v125)
      {
        if (*(v80 + 16))
        {
          OUTLINED_FUNCTION_220_0();
          OUTLINED_FUNCTION_41_19();
          v215 = swift_task_alloc();
          v216 = OUTLINED_FUNCTION_158_2(v215);
          *v216 = v217;
          OUTLINED_FUNCTION_9_46();
LABEL_81:
          *(v218 + 8) = v219;
          OUTLINED_FUNCTION_54_15();
          OUTLINED_FUNCTION_141_0();

          return sub_18F35EB98();
        }

        __break(1u);
LABEL_90:
        OUTLINED_FUNCTION_2_1();
LABEL_60:
        v158 = off_1ED6FF6C8;

        v159 = OUTLINED_FUNCTION_200(v269);
        sub_18F164CE8(v159);
        OUTLINED_FUNCTION_88_2();

        v234 = v158;
        OUTLINED_FUNCTION_214_0();
        OUTLINED_FUNCTION_83_1();

        v235 = v264;
        goto LABEL_85;
      }
    }

    v126 = OUTLINED_FUNCTION_87_9();
    sub_18F0FA038(v126, v127);

LABEL_51:
    sub_18F0FA038((v0 + 2), &qword_1EACD7340);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 47));
  }

  sub_18F0F9FD4((v0 + 4), (v0 + 87), &qword_1EACD0620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  OUTLINED_FUNCTION_30_30();
  if (swift_dynamicCast())
  {
    v269 = v0[126];
    v264 = v0[128];
    *&v266 = v0[127];
    v132 = v0[129];
    v0[177] = v132;
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_6();
      swift_once();
    }

    v133 = v0[173];
    v134 = v0[172];
    v135 = v0[159];
    v136 = v0[158];
    v137 = sub_18F52165C();
    v138 = OUTLINED_FUNCTION_51_11(v137, qword_1ED7077A8);
    v134(v138, v135, v136);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v139 = sub_18F52163C();
    sub_18F52223C();
    OUTLINED_FUNCTION_238_0();

    v140 = OUTLINED_FUNCTION_182_2();
    v141 = v0[168];
    v142 = v0[163];
    if (v140)
    {
      LOBYTE(v261) = v133;
      log = v139;
      v143 = v0[162];
      v258 = v132;
      v144 = v0[158];
      v145 = OUTLINED_FUNCTION_142_3();
      v0[157] = OUTLINED_FUNCTION_141_2();
      *v145 = v254;
      v146 = OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_219_0(v146, v147);
      OUTLINED_FUNCTION_222_0();
      *(v145 + 4) = v133;
      *(v145 + 12) = 2080;
      _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
      (*(v142 + 8))(v141, v144);
      sub_18F368258();
      v76 = sub_18F522C9C();
      v149 = v148;
      v150 = OUTLINED_FUNCTION_29_8();
      v151(v150);
      sub_18F11897C(v76, v149, v0 + 157);
      OUTLINED_FUNCTION_55();

      *(v145 + 14) = v143;
      *(v145 + 22) = 2080;
      sub_18F11897C(v271, v274, v0 + 157);
      OUTLINED_FUNCTION_124_6();

      *(v145 + 24) = v143;
      *(v145 + 32) = 2080;
      v152 = OUTLINED_FUNCTION_6_59();
      v153(v152);
      v154 = sub_18F52307C();
      OUTLINED_FUNCTION_210_0(v154, v155);
      OUTLINED_FUNCTION_102_0();
      *(v145 + 34) = v76;
      v274 = v145;
      *(v145 + 42) = 2080;
      v78 = v258;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v156 = OUTLINED_FUNCTION_45();
      static AppValue._identifier.getter(v156, v157);
      if (OUTLINED_FUNCTION_4_41())
      {
        if (qword_1ED6FF6D8 != -1)
        {
          goto LABEL_90;
        }

        goto LABEL_60;
      }

      OUTLINED_FUNCTION_103_8();
      v235 = v264;
LABEL_85:
      v236 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      OUTLINED_FUNCTION_134_2();
      sub_18F166ED0();
      v238 = v237;
      v239 = [v237 description];

      sub_18F5218DC();
      OUTLINED_FUNCTION_83_1();

      v240 = OUTLINED_FUNCTION_45();
      sub_18F11897C(v240, v241, v242);
      OUTLINED_FUNCTION_55();

      *(v274 + 44) = v238;
      OUTLINED_FUNCTION_117_5(&dword_18F0E9000, v243, v261, "Resolving %s(%s)::%s to %s from %s");
      OUTLINED_FUNCTION_168_2();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_53_12();
    }

    else
    {
      (*(v142 + 8))(v0[168], v0[158]);

      v78 = v132;
      v235 = v264;
    }

    v0[122] = v269;
    v0[123] = v266;
    v0[124] = v235;
    v0[125] = v78;
    v244 = swift_task_alloc();
    v245 = OUTLINED_FUNCTION_60_11(v244);
    *v245 = v246;
    OUTLINED_FUNCTION_3_62(v245);
    OUTLINED_FUNCTION_141_0();

    return sub_18F3676F0(v247, v248, v249, v250);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD1E80);
  if (!OUTLINED_FUNCTION_39_22())
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 87));
    goto LABEL_11;
  }

  v165 = v0[156];
  v0[180] = v165;
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_6();
    swift_once();
  }

  v166 = v0[172];
  v167 = OUTLINED_FUNCTION_139_2();
  __swift_project_value_buffer(v167, qword_1ED7077A8);
  v168 = OUTLINED_FUNCTION_45();
  (v166)(v168);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v169 = sub_18F52163C();
  sub_18F52223C();
  OUTLINED_FUNCTION_247_0();

  v170 = OUTLINED_FUNCTION_83_5();
  v171 = v0[167];
  v172 = v0[163];
  if (v170)
  {
    v267 = v169;
    v173 = v0[162];
    v260 = v0[158];
    OUTLINED_FUNCTION_142_3();
    v276[0] = OUTLINED_FUNCTION_108_4();
    *v166 = v254;
    v174 = sub_18F52307C();
    loga = v6;
    v176 = OUTLINED_FUNCTION_192_0(v174, v175);

    *(v166 + 4) = v176;
    *(v166 + 12) = 2080;
    _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
    (*(v172 + 8))(v171, v260);
    sub_18F368258();
    v177 = sub_18F522C9C();
    v179 = v178;
    v180 = OUTLINED_FUNCTION_29_8();
    v181(v180);
    v182 = OUTLINED_FUNCTION_110_4();
    sub_18F11897C(v182, v179, v183);
    OUTLINED_FUNCTION_62_1();

    *(v166 + 14) = v173;
    *(v166 + 22) = 2080;
    sub_18F11897C(v271, v274, v276);
    OUTLINED_FUNCTION_124_6();

    *(v166 + 24) = v173;
    *(v166 + 32) = 2080;
    v184 = OUTLINED_FUNCTION_1_80();
    v185(v184);
    v186 = sub_18F52307C();
    OUTLINED_FUNCTION_137_1(v186, v187);
    OUTLINED_FUNCTION_143_1();
    *(v166 + 34) = v177;
    *(v166 + 42) = 2080;
    v188 = MEMORY[0x193ADB2B0](v165, &type metadata for EntityIdentifier);
    OUTLINED_FUNCTION_137_1(v188, v189);
    OUTLINED_FUNCTION_143_1();
    *(v166 + 44) = v177;
    _os_log_impl(&dword_18F0E9000, v267, loga, "Resolving %s(%s)::%s to %s from %s", v166, 0x34u);
    OUTLINED_FUNCTION_115_6();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_105();
  }

  else
  {
    (*(v172 + 8))(v0[167], v0[158]);
  }

  v220 = swift_task_alloc();
  v221 = OUTLINED_FUNCTION_59_10(v220);
  *v221 = v222;
  OUTLINED_FUNCTION_5_59(v221);
  OUTLINED_FUNCTION_126_4();
  OUTLINED_FUNCTION_141_0();

  return sub_18F367A6C(v223, v224, v225, v226);
}

uint64_t sub_18F360354()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 1432) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F36167C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1456) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F3629C8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 1472) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F362AC8()
{
  v268 = v1;
  v264 = (v1 + 117);
  v266 = (v1 + 72);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 52));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 107));
  v258 = v1[184];
  v3 = &qword_1EACCFD88;
  v4 = MEMORY[0x1E69E7CA0];
  *&v5 = 136315906;
  v261 = v5;
  *&v5 = 136316162;
  v260 = v5;
LABEL_2:
  OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_11_40();
  v6 = OUTLINED_FUNCTION_17_40();
  v7(v6);
  swift_endAccess();
  if (v1[80])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E28);
    v8 = (v1 + 72);
    if (swift_dynamicCast())
    {
      if (v1[75])
      {
        sub_18F0FD0B4(v266, (v1 + 67));
        if (qword_1ED6FEFE8 != -1)
        {
          OUTLINED_FUNCTION_1_6();
          swift_once();
        }

        OUTLINED_FUNCTION_32_33();
        v124 = OUTLINED_FUNCTION_139_2();
        OUTLINED_FUNCTION_51_11(v124, qword_1ED7077A8);
        OUTLINED_FUNCTION_24_23();
        v4();
        OUTLINED_FUNCTION_209_0();
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v125 = sub_18F52163C();
        sub_18F52223C();
        OUTLINED_FUNCTION_239_0();
        if (OUTLINED_FUNCTION_241_0())
        {
          v262 = v1[176];
          OUTLINED_FUNCTION_190_0();
          v257 = v126;
          v259 = v127;
          v128 = v1[163];
          OUTLINED_FUNCTION_25_32();
          v267[0] = OUTLINED_FUNCTION_118_5();
          dword_18F54C250 = v260;
          v129 = OUTLINED_FUNCTION_166_1();
          OUTLINED_FUNCTION_208_0(v129, v130);
          OUTLINED_FUNCTION_196_0();
          OUTLINED_FUNCTION_76_12();
          (*(v128 + 8))(v257, v4);
          sub_18F368258();
          OUTLINED_FUNCTION_212_0();
          v131 = OUTLINED_FUNCTION_18_38();
          v132(v131);
          v133 = OUTLINED_FUNCTION_92_7();
          sub_18F11897C(v133, &dword_1EACD1410, v134);
          OUTLINED_FUNCTION_173_0();

          OUTLINED_FUNCTION_31_35();
          v136 = sub_18F11897C(v262, v259, v135);
          OUTLINED_FUNCTION_164_0(v136);
          v137 = OUTLINED_FUNCTION_15_40();
          v138(v137);
          v139 = sub_18F52307C();
          OUTLINED_FUNCTION_137_1(v139, v140);
          OUTLINED_FUNCTION_144_2();

          OUTLINED_FUNCTION_114_6();
          v141 = OUTLINED_FUNCTION_242_0();
          OUTLINED_FUNCTION_67_10(v141, v142);
          OUTLINED_FUNCTION_46();

          unk_18F54C27C = v125;
          OUTLINED_FUNCTION_48_17(&dword_18F0E9000, "Resolving %s(%s)::%s to %s from %s", v266);
          OUTLINED_FUNCTION_167_0();
          OUTLINED_FUNCTION_53_12();
          OUTLINED_FUNCTION_65();
        }

        else
        {
          OUTLINED_FUNCTION_24_36();
          v148();

          __swift_destroy_boxed_opaque_existential_1Tm((v1 + 97));
        }

        OUTLINED_FUNCTION_40_21();
        v149 = swift_task_alloc();
        v150 = OUTLINED_FUNCTION_160_1(v149);
        *v150 = v151;
        v146 = OUTLINED_FUNCTION_8_47();
        goto LABEL_66;
      }
    }

    else
    {
      OUTLINED_FUNCTION_116_3();
    }
  }

  else
  {
    sub_18F0FA038((v1 + 77), &qword_1EACD0620);
    v8 = (v1 + 72);
    OUTLINED_FUNCTION_171_1();
  }

  sub_18F0FA038(v8, &qword_1EACD1E40);
  OUTLINED_FUNCTION_71_10();
  OUTLINED_FUNCTION_11_40();
  v9 = OUTLINED_FUNCTION_17_40();
  v10(v9);
  swift_endAccess();
  if (!v1[85])
  {
    v35 = OUTLINED_FUNCTION_87_9();
    sub_18F0FA038(v35, v36);

    sub_18F0FA038((v1 + 82), &qword_1EACD0620);
    while (1)
    {
LABEL_19:
      v42 = (v1 + 2);
      v43 = &unk_1EACD7340;
      while (1)
      {
        sub_18F0FA038(v42, v43);
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 47));
        while (1)
        {
          OUTLINED_FUNCTION_203_0();
          if (!v1[20])
          {
            v115 = OUTLINED_FUNCTION_7_50();
            v116(v115);

            OUTLINED_FUNCTION_6();
            OUTLINED_FUNCTION_141_0();

            __asm { BRAA            X1, X16 }
          }

          v44 = OUTLINED_FUNCTION_20_32();
          sub_18F0F9FD4(v44, v45, &qword_1EACCFD88);

          v46 = OUTLINED_FUNCTION_78();
          __swift_instantiateConcreteTypeFromMangledNameV2(v46);
          if (OUTLINED_FUNCTION_183_1())
          {
            break;
          }

          v47 = OUTLINED_FUNCTION_87_9();
          sub_18F0FA038(v47, v48);
          v49 = OUTLINED_FUNCTION_26_36();
          sub_18F0FA038(v49, &qword_1EACD0D08);
        }

        OUTLINED_FUNCTION_29_34();
        v50 = OUTLINED_FUNCTION_16_40();
        __swift_project_boxed_opaque_existential_1Tm(v50, v51);
        v52 = OUTLINED_FUNCTION_17_40();
        v54 = v53(v52);
        v1[175] = v55;
        if (v55)
        {
          break;
        }

        swift_endAccess();
        if (qword_1ED6FEFE8 != -1)
        {
          OUTLINED_FUNCTION_1_6();
          swift_once();
        }

        v56 = sub_18F52165C();
        v57 = OUTLINED_FUNCTION_186_2(v56, qword_1ED7077A8);
        v58 = sub_18F52221C();
        if (OUTLINED_FUNCTION_27(v58))
        {
          OUTLINED_FUNCTION_140_1();
          v59 = OUTLINED_FUNCTION_48_11();
          v267[0] = v59;
          *v2 = 136315138;
          v60 = OUTLINED_FUNCTION_202();
          v62 = OUTLINED_FUNCTION_218_0(v60, v61);

          *(v2 + 4) = v62;
          OUTLINED_FUNCTION_95_0(&dword_18F0E9000, v57, v0, "Missing property identifier for %s");
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_24_3();
        }

        v42 = OUTLINED_FUNCTION_87_9();
      }

      v14 = v54;
      v0 = v55;
      v1[176] = v54;
      swift_endAccess();
      OUTLINED_FUNCTION_73_6();
      OUTLINED_FUNCTION_199_0();
      OUTLINED_FUNCTION_42_16();
      v63 = OUTLINED_FUNCTION_78();
      v64(v63);
      v65 = sub_18F238034();
      v254 = v66;
      v67 = v1[51];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 47, v1[50]);
      v68 = OUTLINED_FUNCTION_124_6();
      v69(v68, v67);
      swift_endAccess();
      v1[2] = v65;
      v1[3] = v254;
      OUTLINED_FUNCTION_27_34();
      if (v65 && dynamic_cast_existential_1_conditional(v65) && v1[7])
      {
        sub_18F0F9FD4((v1 + 4), (v1 + 87), &qword_1EACD0620);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
        OUTLINED_FUNCTION_30_30();
        if (swift_dynamicCast())
        {
          v264 = v1[126];
          *&v261 = v1[127];
          v253 = v1[128];
          v3 = v1[129];
          v1[177] = v3;
          if (qword_1ED6FEFE8 != -1)
          {
            goto LABEL_92;
          }

          goto LABEL_70;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD1E80);
        if (OUTLINED_FUNCTION_39_22())
        {
          v183 = v1[156];
          v1[180] = v183;
          if (qword_1ED6FEFE8 != -1)
          {
            OUTLINED_FUNCTION_1_6();
            swift_once();
          }

          v184 = v1[172];
          v185 = OUTLINED_FUNCTION_221_0();
          __swift_project_value_buffer(v185, qword_1ED7077A8);
          v186 = OUTLINED_FUNCTION_69_9();
          v184(v186);
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          v187 = sub_18F52163C();
          v188 = sub_18F52223C();

          v189 = OUTLINED_FUNCTION_83_5();
          v190 = v1[167];
          v191 = v1[163];
          if (v189)
          {
            v263 = v187;
            v192 = v1[162];
            v250 = v1[158];
            v193 = OUTLINED_FUNCTION_142_3();
            v267[0] = OUTLINED_FUNCTION_141_2();
            *v193 = v260;
            v194 = sub_18F52307C();
            v265 = v183;
            v196 = sub_18F11897C(v194, v195, v267);

            *(v193 + 4) = v196;
            *(v193 + 12) = 2080;
            _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
            (*(v191 + 8))(v190, v250);
            sub_18F368258();
            v197 = sub_18F522C9C();
            v199 = v198;
            v200 = OUTLINED_FUNCTION_51_4();
            v201(v200);
            sub_18F11897C(v197, v199, v267);
            OUTLINED_FUNCTION_173_0();

            *(v193 + 14) = v192;
            *(v193 + 22) = 2080;
            v202 = OUTLINED_FUNCTION_110_4();
            sub_18F11897C(v202, v0, v203);
            OUTLINED_FUNCTION_46();

            *(v193 + 24) = v192;
            *(v193 + 32) = 2080;
            v204 = OUTLINED_FUNCTION_6_59();
            v205(v204);
            v206 = sub_18F52307C();
            OUTLINED_FUNCTION_137_1(v206, v207);
            OUTLINED_FUNCTION_102_0();
            *(v193 + 34) = v0;
            *(v193 + 42) = 2080;
            v208 = MEMORY[0x193ADB2B0](v265, &type metadata for EntityIdentifier);
            OUTLINED_FUNCTION_137_1(v208, v209);
            OUTLINED_FUNCTION_102_0();
            *(v193 + 44) = v0;
            _os_log_impl(&dword_18F0E9000, v263, v188, "Resolving %s(%s)::%s to %s from %s", v193, 0x34u);
            OUTLINED_FUNCTION_167_0();
            OUTLINED_FUNCTION_53_12();
            OUTLINED_FUNCTION_55_0();
          }

          else
          {
            (*(v191 + 8))(v1[167], v1[158]);
          }

          v212 = swift_task_alloc();
          v213 = OUTLINED_FUNCTION_59_10(v212);
          *v213 = v214;
          OUTLINED_FUNCTION_5_59(v213);
          OUTLINED_FUNCTION_141_0();

          return sub_18F367A6C(v215, v216, v217, v218);
        }

        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 87));
      }

      OUTLINED_FUNCTION_72_11();
      OUTLINED_FUNCTION_199_0();
      OUTLINED_FUNCTION_37_26();
      v70 = OUTLINED_FUNCTION_78();
      v71(v70);
      v4 = MEMORY[0x1E69E7CA0];
      v72 = (v1 + 62);
      if (!v1[65])
      {
        sub_18F0FA038(v72, &qword_1EACD0620);
        swift_endAccess();
        goto LABEL_2;
      }

      sub_18F0FD0B4(v72, (v1 + 52));
      swift_endAccess();
      OUTLINED_FUNCTION_199_0();
      OUTLINED_FUNCTION_42_16();
      v73 = OUTLINED_FUNCTION_78();
      v74(v73);
      v75 = sub_18F238034();
      __swift_project_boxed_opaque_existential_1Tm(v1 + 52, v1[55]);
      DynamicType = swift_getDynamicType();
      if (v75 && DynamicType == v75)
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 52));
        goto LABEL_2;
      }

      if (qword_1ED6FEFE8 != -1)
      {
        OUTLINED_FUNCTION_1_6();
        swift_once();
      }

      v252 = v1[172];
      v248 = OUTLINED_FUNCTION_169_2();
      __swift_project_value_buffer(v248, qword_1ED7077A8);
      v77 = OUTLINED_FUNCTION_232_0();
      v252(v77);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v78 = sub_18F52163C();
      v79 = sub_18F52223C();

      v80 = os_log_type_enabled(v78, v79);
      v81 = v1[163];
      if (v80)
      {
        v255 = v1[162];
        logb = v78;
        v82 = OUTLINED_FUNCTION_162_2();
        v83 = swift_slowAlloc();
        *v82 = OUTLINED_FUNCTION_88_10(v83, v84, v85, v86, v87, v88, v89, v90, v237, v238, v239, v241, v242, logb, v248, v83, v255, v258, v260, *(&v260 + 1), v261).n128_u32[0];
        v91 = OUTLINED_FUNCTION_166_1();
        LODWORD(v242) = v79;
        v93 = sub_18F11897C(v91, v92, v267);

        *(v82 + 4) = v93;
        *(v82 + 12) = 2080;
        _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
        (*(v81 + 8))(v238, v237);
        sub_18F368258();
        v94 = sub_18F522C9C();
        v96 = v95;
        (*(v241 + 8))(v256, v239);
        v97 = OUTLINED_FUNCTION_105_8();
        sub_18F11897C(v97, v96, v98);
        OUTLINED_FUNCTION_88_2();

        *(v82 + 14) = v94;
        *(v82 + 22) = 2080;
        v99 = OUTLINED_FUNCTION_110_4();
        *(v82 + 24) = sub_18F11897C(v99, v0, v100);
        *(v82 + 32) = 2080;
        v101 = v1[50];
        v102 = v1[51];
        __swift_project_boxed_opaque_existential_1Tm(v1 + 47, v101);
        OUTLINED_FUNCTION_42_16();
        v103(v101, v102);
        v104 = sub_18F52307C();
        OUTLINED_FUNCTION_137_1(v104, v105);
        OUTLINED_FUNCTION_143_1();
        *(v82 + 34) = v101;
        _os_log_impl(&dword_18F0E9000, logc, v242, "Resolving %s(%s)::%s to %s", v82, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_105();
      }

      else
      {
        (*(v81 + 8))(v1[166], v1[158]);
      }

      OUTLINED_FUNCTION_201();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7350);
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_12_47();
        OUTLINED_FUNCTION_14_6();
        v119 = swift_task_alloc();
        v120 = OUTLINED_FUNCTION_159_1(v119);
        *v120 = v121;
        OUTLINED_FUNCTION_2_81();
        OUTLINED_FUNCTION_141_0();

        __asm { BRAA            X2, X16 }
      }

      v106 = OUTLINED_FUNCTION_28_42();
      sub_18F0FA038(v106, &qword_1EACD7358);
      if (qword_1ED6FE088 != -1)
      {
        OUTLINED_FUNCTION_4_63();
        swift_once();
      }

      v107 = OUTLINED_FUNCTION_186_2(v248, qword_1ED707760);
      v108 = sub_18F52221C();
      if (OUTLINED_FUNCTION_84_2(v108))
      {
        v0 = OUTLINED_FUNCTION_126();
        v109 = OUTLINED_FUNCTION_75();
        v267[0] = v109;
        *v0 = 136315138;
        sub_18F0FD6C4((v1 + 47), (v1 + 27));
        v110 = sub_18F52194C();
        v112 = OUTLINED_FUNCTION_192_0(v110, v111);

        *(v0 + 4) = v112;
        _os_log_impl(&dword_18F0E9000, v107, v108, "Unexpected property type: %s", v0, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v109);
        OUTLINED_FUNCTION_105();
        OUTLINED_FUNCTION_53_12();
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 52));
      v113 = OUTLINED_FUNCTION_87_9();
      sub_18F0FA038(v113, v114);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7348);
  if ((OUTLINED_FUNCTION_38_22() & 1) == 0)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_224_0();
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_6();
    swift_once();
  }

  v2 = v1[175];
  v253 = v1[173];
  v11 = v1[172];
  v12 = OUTLINED_FUNCTION_221_0();
  __swift_project_value_buffer(v12, qword_1ED7077A8);
  v13 = OUTLINED_FUNCTION_45();
  v11(v13);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v14 = sub_18F52163C();
  v15 = sub_18F52223C();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_145_1();
    v241 = v16;
    v242 = v17;
    v253 = v0;
    v18 = v1[163];
    v251 = v15;
    v19 = v1[162];
    v238 = v1[164];
    v239 = v1[160];
    OUTLINED_FUNCTION_104_8();
    v247 = OUTLINED_FUNCTION_108_4();
    v267[0] = v247;
    dword_1EACD1410 = v260;
    v20 = OUTLINED_FUNCTION_166_1();
    loga = v14;
    v22 = sub_18F11897C(v20, v21, v267);

    *algn_1EACD1414 = v22;
    OUTLINED_FUNCTION_207_0();
    (*(v18 + 8))(v238, v11);
    v0 = v253;
    sub_18F368258();
    sub_18F522C9C();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_51_4();
    v26(v25);
    v27 = OUTLINED_FUNCTION_110_4();
    sub_18F11897C(v27, v24, v28);
    OUTLINED_FUNCTION_88_2();

    *&algn_1EACD1414[10] = v19;
    v2 = 2080;
    HIWORD(qword_1EACD1420) = 2080;
    sub_18F11897C(v242, v241, v267);
    OUTLINED_FUNCTION_55();

    qword_1EACD1428 = v19;
    word_1EACD1430 = 2080;
    v29 = OUTLINED_FUNCTION_1_80();
    v30(v29);
    v31 = sub_18F52307C();
    OUTLINED_FUNCTION_137_1(v31, v32);
    OUTLINED_FUNCTION_143_1();
    *algn_1EACD1432 = v241;
    WORD1(qword_1EACD1438) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E28);
    OUTLINED_FUNCTION_244_0();
    OUTLINED_FUNCTION_137_1(v33, v34);
    OUTLINED_FUNCTION_143_1();
    *(&qword_1EACD1438 + 4) = v241;
    v14 = loga;
    _os_log_impl(&dword_18F0E9000, loga, v251, "Resolving %s(%s)::%s to %s from %s", &dword_1EACD1410, 0x34u);
    v15 = v247;
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_105();
  }

  else
  {
    v37 = OUTLINED_FUNCTION_19_37();
    v38(v37);
  }

  OUTLINED_FUNCTION_90_8(*(v0 + 16));
  if (!v39)
  {
LABEL_18:
    v40 = OUTLINED_FUNCTION_87_9();
    sub_18F0FA038(v40, v41);

    goto LABEL_19;
  }

  if (*(v15 + 16))
  {
    OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_41_19();
    v143 = swift_task_alloc();
    v144 = OUTLINED_FUNCTION_158_2(v143);
    *v144 = v145;
    v146 = OUTLINED_FUNCTION_9_46();
LABEL_66:
    *(v146 + 8) = v147;
    OUTLINED_FUNCTION_54_15();
    OUTLINED_FUNCTION_141_0();

    return sub_18F35EB98();
  }

  __break(1u);
LABEL_92:
  OUTLINED_FUNCTION_1_6();
  swift_once();
LABEL_70:
  v154 = v1[172];
  v155 = OUTLINED_FUNCTION_169_2();
  __swift_project_value_buffer(v155, qword_1ED7077A8);
  v156 = OUTLINED_FUNCTION_232_0();
  v154(v156);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v157 = sub_18F52163C();
  v158 = sub_18F52223C();

  v159 = OUTLINED_FUNCTION_83_5();
  v160 = v1[168];
  v161 = v3;
  v162 = v1[163];
  if (v159)
  {
    log = v158;
    v249 = v157;
    v163 = v1[162];
    v240 = v1[158];
    v164 = OUTLINED_FUNCTION_142_3();
    v1[157] = OUTLINED_FUNCTION_141_2();
    *v164 = v260;
    v165 = sub_18F52307C();
    v167 = sub_18F11897C(v165, v166, v1 + 157);

    *(v164 + 4) = v167;
    *(v164 + 12) = 2080;
    _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
    (*(v162 + 8))(v160, v240);
    sub_18F368258();
    v168 = sub_18F522C9C();
    v170 = v169;
    v171 = OUTLINED_FUNCTION_51_4();
    v172(v171);
    sub_18F11897C(v168, v170, v1 + 157);
    OUTLINED_FUNCTION_174_2();
    *(v164 + 14) = v163;
    *(v164 + 22) = 2080;
    sub_18F11897C(v14, v0, v1 + 157);
    OUTLINED_FUNCTION_46();

    *(v164 + 24) = v163;
    *(v164 + 32) = 2080;
    v173 = OUTLINED_FUNCTION_6_59();
    v174(v173);
    v175 = sub_18F52307C();
    OUTLINED_FUNCTION_210_0(v175, v176);
    OUTLINED_FUNCTION_102_0();
    *(v164 + 34) = v0;
    *(v164 + 42) = 2080;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v177 = OUTLINED_FUNCTION_45();
    static AppValue._identifier.getter(v177, v178);
    if (OUTLINED_FUNCTION_4_41())
    {
      if (qword_1ED6FF6D8 != -1)
      {
        OUTLINED_FUNCTION_2_1();
      }

      v179 = off_1ED6FF6C8;

      v180 = OUTLINED_FUNCTION_200(v264);
      v182 = v181;
      sub_18F164CE8(v180);
      if (v258)
      {

        OUTLINED_FUNCTION_103_8();
      }

      else
      {
        OUTLINED_FUNCTION_46();

        v220 = v179;
        OUTLINED_FUNCTION_214_0();
        OUTLINED_FUNCTION_83_1();
      }
    }

    else
    {
      OUTLINED_FUNCTION_103_8();
    }

    v211 = v253;
    v221 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_134_2();
    sub_18F166ED0();
    v223 = v222;
    v224 = [v222 description];

    sub_18F5218DC();
    OUTLINED_FUNCTION_83_1();

    v225 = OUTLINED_FUNCTION_45();
    sub_18F11897C(v225, v226, v227);
    OUTLINED_FUNCTION_55();

    *(v164 + 44) = v223;
    OUTLINED_FUNCTION_117_5(&dword_18F0E9000, v228, log, "Resolving %s(%s)::%s to %s from %s");
    OUTLINED_FUNCTION_168_2();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_53_12();

    v210 = v261;
  }

  else
  {
    (*(v162 + 8))(v1[168], v1[158]);

    v210 = v261;
    v211 = v253;
  }

  v1[122] = v264;
  v1[123] = v210;
  v1[124] = v211;
  v1[125] = v161;
  v229 = swift_task_alloc();
  v230 = OUTLINED_FUNCTION_60_11(v229);
  *v230 = v231;
  OUTLINED_FUNCTION_3_62();
  OUTLINED_FUNCTION_141_0();

  return sub_18F3676F0(v232, v233, v234, v235);
}

uint64_t sub_18F3640A4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 1488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F365704()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 1528) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 736);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F366A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  v11 = v10[171];
  v12 = v10[170];
  v13 = v10[169];

  sub_18F0FA038((v10 + 21), &qword_1EACCFD88);
  (*(v12 + 8))(v11, v13);

  __swift_destroy_boxed_opaque_existential_1Tm((v10 + 87));
  sub_18F0FA038((v10 + 4), &qword_1EACD0620);
  OUTLINED_FUNCTION_10_43();
  OUTLINED_FUNCTION_189();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_18F366B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_111_6();
  sub_18F0FA038(v10 + 168, &qword_1EACCFD88);
  v11 = OUTLINED_FUNCTION_22();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 696);
  sub_18F0FA038(v10 + 32, &qword_1EACD0620);
  OUTLINED_FUNCTION_10_43();
  OUTLINED_FUNCTION_189();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F366C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_111_6();
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 416);
  sub_18F0FA038(v10 + 168, &qword_1EACCFD88);
  v11 = OUTLINED_FUNCTION_22();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 856);
  sub_18F0FA038(v10 + 16, &qword_1EACD7340);
  OUTLINED_FUNCTION_10_43();
  OUTLINED_FUNCTION_189();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F366D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_111_6();
  sub_18F0FA038(v10 + 168, &qword_1EACCFD88);
  v11 = OUTLINED_FUNCTION_22();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 536);
  sub_18F0FA038(v10 + 16, &qword_1EACD7340);
  OUTLINED_FUNCTION_10_43();
  OUTLINED_FUNCTION_189();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_18F366E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_111_6();
  sub_18F0FA038(v10 + 168, &qword_1EACCFD88);
  v11 = OUTLINED_FUNCTION_22();
  v12(v11);
  sub_18F0FA038(v10 + 16, &qword_1EACD7340);
  OUTLINED_FUNCTION_10_43();
  OUTLINED_FUNCTION_189();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

double sub_18F366F30@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!dynamic_cast_existential_1_conditional(a1))
  {
    return OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_83_1();
  v4 = *(v3 + 16);
  a2[3] = v5;
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a2);
  v6 = OUTLINED_FUNCTION_45();
  v4(v6);
  return result;
}

uint64_t sub_18F366FCC()
{
  OUTLINED_FUNCTION_29();
  v15 = v0;
  if (qword_1ED6FE088 != -1)
  {
    OUTLINED_FUNCTION_4_63();
    swift_once();
  }

  v2 = sub_18F52165C();
  v3 = OUTLINED_FUNCTION_186_2(v2, qword_1ED707760);
  v4 = sub_18F52221C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 16);
  if (v5)
  {
    OUTLINED_FUNCTION_126();
    v7 = OUTLINED_FUNCTION_48_11();
    v14 = v7;
    *v1 = 136315138;
    v8 = static AppValue._identifier.getter(*(v6 + 16), *(*(*(v6 + 24) + 8) + 8));
    v10 = sub_18F11897C(v8, v9, &v14);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_95_0(&dword_18F0E9000, v3, v4, "Entity type %s is transient and is not meant to be queried.");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_24_3();
  }

  else
  {
  }

  v11 = sub_18F521D2C();
  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_18F367128(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18F130C90;

  return _TransientAppEntityQuery.entities(for:)(v4, a2);
}

uint64_t sub_18F3671BC(uint64_t a1, uint64_t a2)
{
  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000018, 0x800000018F52A700);
  MEMORY[0x193ADB000](a1, a2);
  MEMORY[0x193ADB000](0xD000000000000036, 0x800000018F52A720);
  return 0;
}

uint64_t sub_18F36726C(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  v40 = v6;
  if (v7)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F1A0904(v6, v8);
    v10 = v9;

    if (v10)
    {
      v11 = [v10 value];
      if (v11)
      {
        v12 = v11;
        LNValue.asUnboxedPropertyType.getter();

        if (*(&v37 + 1))
        {
          sub_18F0FD0B4(&v36, v39);
LABEL_14:
          v24 = a1[3];
          v25 = a1[4];
          __swift_mutable_project_boxed_opaque_existential_1(a1, v24);
          (*(v25 + 80))(v39, v24, v25);

          goto LABEL_15;
        }
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
      }

      v22 = a1[3];
      v23 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, v22);
      (*(v23 + 72))(v39, v22, v23);
      if (*(&v37 + 1))
      {
        sub_18F0FA038(&v36, &qword_1EACD0620);
      }

      goto LABEL_14;
    }
  }

  if (qword_1ED6FE088 != -1)
  {
    swift_once();
  }

  v13 = sub_18F52165C();
  __swift_project_value_buffer(v13, qword_1ED707760);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v14 = a2;
  v15 = sub_18F52163C();
  v16 = sub_18F52221C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v36 = v35;
    *v17 = 136315650;
    *(v17 + 4) = sub_18F11897C(0xD000000000000019, 0x800000018F52A6E0, &v36);
    *(v17 + 12) = 2080;
    v39[0] = v6;
    v39[1] = v8;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
    v18 = sub_18F52194C();
    v20 = sub_18F11897C(v18, v19, &v36);

    *(v17 + 14) = v20;
    *(v17 + 22) = 2112;
    *(v17 + 24) = v14;
    *v34 = v14;
    v21 = v14;
    _os_log_impl(&dword_18F0E9000, v15, v16, "Warning in %s: property with identifier %s not found in LNEntity %@. Using default, pre-populated value.", v17, 0x20u);
    sub_18F0FA038(v34, &qword_1EACD0578);
    MEMORY[0x193ADD350](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v35, -1, -1);
    MEMORY[0x193ADD350](v17, -1, -1);
  }

LABEL_15:
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v26);
  if ((*(*(v27 + 8) + 24))(v26))
  {
  }

  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v29);
  (*(v30 + 72))(v39, v29, v30);
  if (v39[3])
  {

    return sub_18F0FA038(v39, &qword_1EACD0620);
  }

  else
  {
    sub_18F0FA038(v39, &qword_1EACD0620);
    if (v8)
    {
      v31 = v40;
    }

    else
    {
      v31 = 0x6E776F6E6B6E753CLL;
    }

    if (v8)
    {
      v32 = v8;
    }

    else
    {
      v32 = 0xE90000000000003ELL;
    }

    sub_18F3682CC();
    swift_allocError();
    *v33 = v31;
    v33[1] = v32;
    return swift_willThrow();
  }
}

uint64_t sub_18F3676F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  *(v4 + 48) = a1;
  v6 = sub_18F52254C();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  v9 = swift_task_alloc();
  *(v4 + 96) = v9;
  *v9 = v4;
  v9[1] = sub_18F36782C;

  return sub_18F27FF4C();
}

uint64_t sub_18F36782C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 104) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F36792C()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[11];
  v2 = v0[7];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    v3 = v0[8];
    v4 = v0[6];
    v4[3] = v2;
    v4[4] = *(*(v3 + 8) + 24);
    __swift_allocate_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_31_0();
    (*(v5 + 32))();
  }

  OUTLINED_FUNCTION_6();

  return v6();
}

uint64_t sub_18F367A10()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F367A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a1;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_18F367B20;

  return sub_18F2806C4(a2, a3, a4);
}

uint64_t sub_18F367B20()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = v3;
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_18F367C50()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];
  v3[3] = sub_18F521DBC();
  v0[2] = *(*(v2 + 8) + 24);
  v3[4] = swift_getWitnessTable();
  *v3 = v1;
  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_18F367CF4()
{
  v1[11] = v0;
  v1[12] = *v0;
  v1[13] = *v0;
  return OUTLINED_FUNCTION_5_5(sub_18F367D5C);
}

uint64_t sub_18F367D5C()
{
  v10 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v0[10] = v0[11];
  v3 = *(v2 + 80);
  WitnessTable = swift_getWitnessTable();
  v0[14] = sub_18F1ACD98(v3, v1, v3, WitnessTable);
  sub_18F11E02C(v9);
  sub_18F1CDF90(v9);
  v5 = [objc_allocWithZone(MEMORY[0x1E69AC8F8]) init];
  v0[15] = v5;
  [v5 setForcesNeedsValue_];
  v6 = v5;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_18F367EA4;

  return sub_18F1326DC();
}

uint64_t sub_18F367EA4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F367FA4()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(*v1 + 168);
  swift_beginAccess();
  sub_18F0F9FD4(v1 + v3, v0 + 16, &qword_1EACD0620);
  sub_18F31D30C(v0 + 16);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_18F36805C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F3680C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return sub_18F367CF4();
}

uint64_t sub_18F368154(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_18F3681A4(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18F368258()
{
  result = qword_1EACCED40;
  if (!qword_1EACCED40)
  {
    sub_18F520E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCED40);
  }

  return result;
}

unint64_t sub_18F3682CC()
{
  result = qword_1EACD7360[0];
  if (!qword_1EACD7360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD7360);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_75_9()
{

  return sub_18F0FA038(v0 + 168, v1);
}

uint64_t OUTLINED_FUNCTION_97_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  *(v24 - 88) = a1;
  *v23 = a23;

  return sub_18F52307C();
}

uint64_t OUTLINED_FUNCTION_111_6()
{
}

uint64_t OUTLINED_FUNCTION_115_6()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_117_5(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0x34u);
}

void *OUTLINED_FUNCTION_119_4()
{
  v2 = *(v0 + 400);

  return __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v2);
}

uint64_t OUTLINED_FUNCTION_125_5()
{
  __swift_project_boxed_opaque_existential_1Tm((v0 + 416), *(v0 + 440));

  return swift_getDynamicType();
}

unint64_t OUTLINED_FUNCTION_137_1(uint64_t a1, unint64_t a2)
{

  return sub_18F11897C(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_139_2()
{

  return sub_18F52165C();
}

uint64_t OUTLINED_FUNCTION_141_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_142_3()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_146_2()
{

  return __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v1);
}

uint64_t OUTLINED_FUNCTION_147_2(uint64_t a1)
{
  *(v1 + 1408) = a1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_148_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_149_3()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_150_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_152_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_154_2()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
}

uint64_t OUTLINED_FUNCTION_164_0(uint64_t result)
{
  *(v2 + 24) = result;
  *(v2 + 32) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_168_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_169_2()
{

  return sub_18F52165C();
}

double OUTLINED_FUNCTION_171_1()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_174_2()
{
}

uint64_t OUTLINED_FUNCTION_184_1()
{
  *(v2 + 34) = v0;
  *(v2 + 42) = v1;

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_186_2(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_18F52163C();
}

uint64_t OUTLINED_FUNCTION_189()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 376);
}

unint64_t OUTLINED_FUNCTION_192_0(uint64_t a1, unint64_t a2)
{

  return sub_18F11897C(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_194()
{
}

unint64_t OUTLINED_FUNCTION_195(uint64_t a1, unint64_t a2)
{

  return sub_18F11897C(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_196_0()
{
}

BOOL OUTLINED_FUNCTION_197_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{

  return os_log_type_enabled(v20, v19);
}

unint64_t OUTLINED_FUNCTION_198(uint64_t a1, unint64_t a2)
{

  return sub_18F11897C(a1, a2, (v2 - 88));
}

void *OUTLINED_FUNCTION_199_0()
{
  v2 = *(v0 + 400);

  return __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v2);
}

uint64_t OUTLINED_FUNCTION_200(uint64_t a1)
{

  return static AppValue._identifier.getter(a1, v1);
}

uint64_t OUTLINED_FUNCTION_201()
{

  return sub_18F0FD6C4(v0 + 376, v0 + 896);
}

uint64_t OUTLINED_FUNCTION_202()
{

  return sub_18F52307C();
}

uint64_t OUTLINED_FUNCTION_203_0()
{

  return sub_18F522AFC();
}

uint64_t OUTLINED_FUNCTION_205_0(float a1)
{
  *v1 = a1;

  return sub_18F52307C();
}

uint64_t OUTLINED_FUNCTION_206_0()
{
  *(v1 - 120) = v0;
}

uint64_t OUTLINED_FUNCTION_207_0()
{
  *(v0 + 12) = 2080;

  return _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
}

unint64_t OUTLINED_FUNCTION_208_0(uint64_t a1, unint64_t a2)
{

  return sub_18F11897C(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_209_0()
{

  return sub_18F0FD6C4(v0 + 536, v0 + 776);
}

unint64_t OUTLINED_FUNCTION_210_0(uint64_t a1, unint64_t a2)
{

  return sub_18F11897C(a1, a2, (v2 + 1256));
}

uint64_t OUTLINED_FUNCTION_213_0()
{

  return sub_18F522C9C();
}

uint64_t OUTLINED_FUNCTION_214_0()
{

  return sub_18F1AF344();
}

unint64_t OUTLINED_FUNCTION_218_0(uint64_t a1, unint64_t a2)
{

  return sub_18F11897C(a1, a2, (v2 - 88));
}

unint64_t OUTLINED_FUNCTION_219_0(uint64_t a1, unint64_t a2)
{

  return sub_18F11897C(a1, a2, (v2 + 1256));
}

uint64_t OUTLINED_FUNCTION_220_0()
{

  return sub_18F0FD6C4(v0 + 32, v1 + 736);
}

uint64_t OUTLINED_FUNCTION_221_0()
{

  return sub_18F52165C();
}

uint64_t OUTLINED_FUNCTION_222_0()
{
}

uint64_t OUTLINED_FUNCTION_225_0(uint64_t result)
{
  *(v2 + 24) = result;
  *(v2 + 32) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_231()
{
  __swift_project_boxed_opaque_existential_1Tm((v0 + 416), *(v0 + 440));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_235_0()
{
  *(v3 + 34) = v2;
  *(v3 + 42) = v0;

  return sub_18F0FD6C4(v1 + 776, v1 + 816);
}

uint64_t OUTLINED_FUNCTION_236_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
}

void OUTLINED_FUNCTION_237_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_238_0()
{
}

uint64_t OUTLINED_FUNCTION_239_0()
{
}

void OUTLINED_FUNCTION_240(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x34u);
}

BOOL OUTLINED_FUNCTION_241_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_242_0()
{

  return sub_18F52194C();
}

BOOL OUTLINED_FUNCTION_243()
{

  return os_log_type_enabled(v1, v0);
}

void OUTLINED_FUNCTION_244_0()
{

  JUMPOUT(0x193ADB2B0);
}

void OUTLINED_FUNCTION_245_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t AsyncSignal.__allocating_init(id:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AsyncSignal.init(id:)(a1);
  return v2;
}

uint64_t AsyncSignal.init(id:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_23_18();
  OUTLINED_FUNCTION_23_18();
  OUTLINED_FUNCTION_23_18();
  v4 = type metadata accessor for AsyncSignal.State();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  OUTLINED_FUNCTION_23_18();
  v11 = (v1 + *(v10 + 104));
  OUTLINED_FUNCTION_67_0();
  swift_storeEnumTagMultiPayload();
  *v11 = 0;
  v12 = *(sub_18F5211AC() + 28);
  v13 = sub_18F5211BC();
  bzero(&v11[v12], *(*(v13 - 8) + 64));
  (*(v6 + 32))(&v11[v12], v9, v4);
  v14 = *(*v2 + 112);
  v15 = sub_18F520E6C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v2 + v14, a1, v15);
  v17 = _s10Foundation4UUIDV10AppIntentsE22entityIdentifierStringSSvg_0();
  v19 = v18;
  if (qword_1ED6FDA70 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v20 = sub_18F52165C();
  __swift_project_value_buffer(v20, qword_1ED7076B0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v21 = sub_18F52163C();
  v22 = sub_18F52220C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_126();
    v24 = OUTLINED_FUNCTION_75();
    v28 = v24;
    *v23 = 136446210;
    v25 = sub_18F11897C(v17, v19, &v28);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_18F0E9000, v21, v22, "AsyncSignal %{public}s created", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
  }

  (*(v16 + 8))(a1, v15);
  return v2;
}

uint64_t sub_18F368EB8(uint64_t a1)
{
  sub_18F369184(a1);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_167();
  v2 = sub_18F522F9C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_18F368F5C(uint64_t a1)
{
  OUTLINED_FUNCTION_80();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_40_0();
  sub_18F522F9C();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_47();
  (*(v6 + 32))(v1, a1, v4);
  OUTLINED_FUNCTION_67_0();
  swift_storeEnumTagMultiPayload();
  sub_18F369184(v1);
  v7 = OUTLINED_FUNCTION_67_0();
  return v8(v7);
}

uint64_t sub_18F369070(uint64_t a1)
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_40_0();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_40_0();
  sub_18F522F9C();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_47();
  (*(v6 + 32))(v1, a1, v4);
  OUTLINED_FUNCTION_67_0();
  swift_storeEnumTagMultiPayload();
  sub_18F369184(v1);
  v7 = OUTLINED_FUNCTION_67_0();
  return v8(v7);
}

uint64_t sub_18F369184(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  OUTLINED_FUNCTION_23_18();
  v6 = v5;
  v7 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  v51 = v7;
  v8 = sub_18F521E4C();
  OUTLINED_FUNCTION_0();
  v53 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v11;
  sub_18F52254C();
  OUTLINED_FUNCTION_0();
  v54 = v13;
  v55 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  OUTLINED_FUNCTION_23_18();
  v50 = _s10Foundation4UUIDV10AppIntentsE22entityIdentifierStringSSvg_0();
  v20 = v19;
  if (qword_1ED6FDA70 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v21 = sub_18F52165C();
  v22 = __swift_project_value_buffer(v21, qword_1ED7076B0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v49 = v22;
  v23 = sub_18F52163C();
  v24 = sub_18F52220C();

  v25 = os_log_type_enabled(v23, v24);
  v56 = v18;
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_126();
    v48 = v6;
    v27 = v26;
    v28 = v8;
    v29 = a1;
    v30 = OUTLINED_FUNCTION_75();
    v57[0] = v30;
    *v27 = 136446210;
    *(v27 + 4) = sub_18F11897C(v50, v20, v57);
    _os_log_impl(&dword_18F0E9000, v23, v24, "AsyncSignal %{public}s completed", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    a1 = v29;
    v8 = v28;
    v18 = v56;
    OUTLINED_FUNCTION_32();
    v6 = v48;
    OUTLINED_FUNCTION_32();
  }

  v31 = (v2 + *(*v2 + 104));
  os_unfair_lock_lock(v31);
  v32 = *(v6 + 88);
  type metadata accessor for AsyncSignal.State();
  v33 = sub_18F5211AC();
  sub_18F369674(v31 + *(v33 + 28), a1, v18);
  v34 = v56;
  os_unfair_lock_unlock(v31);
  v36 = v54;
  v35 = v55;
  (*(v54 + 16))(v16, v34, v55);
  if (__swift_getEnumTagSinglePayload(v16, 1, v8) == 1)
  {
    v37 = *(v36 + 8);
    v37(v34, v35);

    return (v37)(v16, v35);
  }

  else
  {
    (*(v53 + 32))(v52, v16, v8);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v39 = sub_18F52163C();
    v40 = sub_18F52220C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_126();
      v42 = OUTLINED_FUNCTION_75();
      v57[0] = v42;
      *v41 = 136446210;
      v43 = v8;
      v44 = a1;
      v45 = sub_18F11897C(v50, v20, v57);

      *(v41 + 4) = v45;
      a1 = v44;
      v8 = v43;
      _os_log_impl(&dword_18F0E9000, v39, v40, "AsyncSignal %{public}s resuming", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v36 = v54;
      OUTLINED_FUNCTION_32();
      v35 = v55;
      OUTLINED_FUNCTION_32();
    }

    else
    {
    }

    v46 = v52;
    sub_18F3699C4(a1, v8, v32);
    (*(v53 + 8))(v46, v8);
    return (*(v36 + 8))(v56, v35);
  }
}

uint64_t sub_18F369674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AsyncSignal.State();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  (*(v7 + 16))(&v20 - v8, a1, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v7 + 8))(v9, v6);
      goto LABEL_4;
    case 2u:
      (*(v7 + 8))(a1, v6);
      v18 = sub_18F522F9C();
      (*(*(v18 - 8) + 16))(a1, a2, v18);
      swift_storeEnumTagMultiPayload();
      goto LABEL_10;
    case 3u:
LABEL_4:
      if (qword_1ED6FDA70 != -1)
      {
        swift_once();
      }

      v14 = sub_18F52165C();
      __swift_project_value_buffer(v14, qword_1ED7076B0);
      v15 = sub_18F52163C();
      v16 = sub_18F52221C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_18F0E9000, v15, v16, "AsyncSignal already completed", v17, 2u);
        MEMORY[0x193ADD350](v17, -1, -1);
      }

LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
      v13 = sub_18F521E4C();
      v11 = a3;
      v12 = 1;
      break;
    default:
      (*(v7 + 8))(a1, v6);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
      v10 = sub_18F521E4C();
      (*(*(v10 - 8) + 32))(a3, v9, v10);
      swift_storeEnumTagMultiPayload();
      v11 = a3;
      v12 = 0;
      v13 = v10;
      break;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_18F3699C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18F522F9C();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  (*(v17 + 16))(v22 - v15, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v11 + 32);
    v18(v13, v16, a3);
    v19 = swift_allocError();
    v18(v20, v13, a3);
    v22[3] = v19;
    return sub_18F521E2C();
  }

  else
  {
    (*(v6 + 32))(v9, v16, v5);
    return sub_18F521E3C();
  }
}

uint64_t sub_18F369C24(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_5_5(sub_18F369C64);
}

uint64_t sub_18F369C64()
{
  OUTLINED_FUNCTION_69();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_18F369D0C;
  OUTLINED_FUNCTION_6_60();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18F369D0C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F369E2C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_71();

    return v5();
  }
}

uint64_t sub_18F369E50(uint64_t a1)
{
  v63 = a1;
  OUTLINED_FUNCTION_167();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_167();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_167();
  v7 = *(v6 + 96);
  v8 = sub_18F522F9C();
  OUTLINED_FUNCTION_0();
  v56 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v54 - v11;
  v12 = sub_18F52254C();
  OUTLINED_FUNCTION_0();
  v61 = v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - v18;
  OUTLINED_FUNCTION_167();
  v21 = (v1 + *(v20 + 104));
  os_unfair_lock_lock(v21);
  type metadata accessor for AsyncSignal.State();
  v22 = v21 + *(sub_18F5211AC() + 28);
  v57 = v3;
  v58 = v5;
  v59 = v7;
  sub_18F36A358(v22, v63, v19);
  os_unfair_lock_unlock(v21);
  v23 = _s10Foundation4UUIDV10AppIntentsE22entityIdentifierStringSSvg_0();
  v25 = v24;
  v26 = v61;
  v27 = *(v61 + 16);
  v62 = v19;
  v28 = v12;
  v27(v17, v19, v12);
  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v29 = *(v26 + 8);
    v29(v17, v12);
    if (qword_1ED6FDA70 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v30 = sub_18F52165C();
    __swift_project_value_buffer(v30, qword_1ED7076B0);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v31 = sub_18F52163C();
    v32 = sub_18F52220C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_126();
      v34 = OUTLINED_FUNCTION_75();
      v64[0] = v34;
      *v33 = 136446210;
      v35 = sub_18F11897C(v23, v25, v64);

      *(v33 + 4) = v35;
      OUTLINED_FUNCTION_18_39(&dword_18F0E9000, v36, v37, "AsyncSignal %{public}s not completed, storing continuation");
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }

    else
    {
    }

    return (v29)(v62, v12);
  }

  else
  {
    v38 = v23;
    v39 = v56;
    v40 = v60;
    (*(v56 + 32))(v60, v17, v8);
    if (qword_1ED6FDA70 != -1)
    {
      OUTLINED_FUNCTION_59();
    }

    v41 = sub_18F52165C();
    __swift_project_value_buffer(v41, qword_1ED7076B0);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v42 = sub_18F52163C();
    v43 = sub_18F52220C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_126();
      v45 = OUTLINED_FUNCTION_75();
      v55 = v12;
      v46 = v45;
      v64[0] = v45;
      *v44 = 136446210;
      v47 = sub_18F11897C(v38, v25, v64);
      v48 = v26;
      v49 = v47;

      *(v44 + 4) = v49;
      v26 = v48;
      OUTLINED_FUNCTION_18_39(&dword_18F0E9000, v50, v51, "AsyncSignal %{public}s already completed, returning result");
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      v28 = v55;
      OUTLINED_FUNCTION_32();
      v40 = v60;
      OUTLINED_FUNCTION_32();
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
    v53 = sub_18F521E4C();
    sub_18F3699C4(v40, v53, v58);
    (*(v39 + 8))(v40, v8);
    return (*(v26 + 8))(v62, v28);
  }
}

uint64_t sub_18F36A358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AsyncSignal.State();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  (*(v7 + 16))(&v16 - v8, a1, v6);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      (*(v7 + 8))(a1, v6);
      v11 = sub_18F522F9C();
      (*(*(v11 - 8) + 32))(a3, v9, v11);
      swift_storeEnumTagMultiPayload();
      v12 = a3;
      v13 = 0;
      v14 = v11;
      return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
    case 2:
      (*(v7 + 8))(a1, v6);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
      v15 = sub_18F521E4C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      swift_storeEnumTagMultiPayload();
      v14 = sub_18F522F9C();
      v12 = a3;
      v13 = 1;
      return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
    case 3:
      __break(1u);
      goto LABEL_6;
    default:
LABEL_6:
      __break(1u);
      return result;
  }
}

uint64_t AsyncSignal.deinit()
{
  v1 = v0;
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_40_0();
  type metadata accessor for AsyncSignal.State();
  sub_18F5211AC();
  v2 = sub_18F5211BC();
  sub_18F36AC74(v2);
  v3 = *(*v0 + 112);
  v4 = sub_18F520E6C();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  return v1;
}

uint64_t AsyncSignal.__deallocating_deinit()
{
  AsyncSignal.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F36A710(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_18F36A744(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_5_5(sub_18F36A75C);
}

uint64_t sub_18F36A75C()
{
  OUTLINED_FUNCTION_69();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_18F1AC5EC;
  v3 = *(v0 + 16);

  return sub_18F369C24(v3);
}

uint64_t AsyncSignal.Waiter.__deallocating_deinit()
{
  AsyncSignal.Waiter.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t AsyncSignal.waiter.getter()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_40_0();
  type metadata accessor for AsyncSignal.Waiter();
  v1 = sub_18F36A710(v0);

  return v1;
}

uint64_t AsyncSignal<>.resume()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_40_0();
  v0 = sub_18F522F9C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - v4;
  swift_storeEnumTagMultiPayload();
  sub_18F369184(v5);
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_18F36A9A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_5_5(sub_18F36A9E0);
}

uint64_t sub_18F36A9E0()
{
  OUTLINED_FUNCTION_69();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_18F36AA88;
  OUTLINED_FUNCTION_6_60();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18F36AA88()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F36ABA8, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_71();

    return v5();
  }
}

uint64_t AsyncSignal.Waiter<>.result()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_5_5(sub_18F36ABDC);
}

uint64_t sub_18F36ABDC()
{
  OUTLINED_FUNCTION_69();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_18F1AC5EC;
  v3 = *(v0 + 16);

  return sub_18F36A9A0(v3);
}

uint64_t sub_18F36AC9C()
{
  type metadata accessor for AsyncSignal.State();
  result = sub_18F5211AC();
  if (v1 <= 0x3F)
  {
    result = sub_18F520E6C();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of AsyncSignal.Waiter.result()(uint64_t a1)
{
  v7 = (*(*v1 + 120) + **(*v1 + 120));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_18F0FC874;

  return v7(a1);
}

uint64_t sub_18F36AFAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  result = sub_18F521E4C();
  if (v1 <= 0x3F)
  {
    result = sub_18F522F9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id static StringSearchCriteria.valueType.getter()
{
  v0 = [objc_opt_self() stringValueType];

  return v0;
}

id StringSearchCriteria.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_18F36B0FC();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  result = sub_18F36B140();
  a1[3] = v2;
  *a1 = result;
  return result;
}

unint64_t sub_18F36B0FC()
{
  result = qword_1EACD30E0;
  if (!qword_1EACD30E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACD30E0);
  }

  return result;
}

id sub_18F36B140()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F5218AC();

  v2 = [v0 initWithTerm_];

  return v2;
}

uint64_t StringSearchCriteriaFromStringResolverSpecificification.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1CCC38, 0, 0);
}

uint64_t sub_18F36B220(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18F10DF80;

  return StringSearchCriteriaFromStringResolverSpecificification.resolve(from:context:)(a1, v4, v5);
}

unint64_t sub_18F36B2E4(uint64_t a1)
{
  result = sub_18F36B30C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F36B30C()
{
  result = qword_1EACD74E8;
  if (!qword_1EACD74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD74E8);
  }

  return result;
}

unint64_t sub_18F36B364()
{
  result = qword_1EACD74F0;
  if (!qword_1EACD74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD74F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StringSearchCriteriaFromStringResolverSpecificification(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18F36B464()
{
  result = qword_1EACD74F8;
  if (!qword_1EACD74F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EACD7500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD74F8);
  }

  return result;
}

uint64_t AppShortcutOptionsCollection.title.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_18F520B3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AppShortcutOptionsCollection.systemImageName.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v2;
}

uint64_t sub_18F36B5B4(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = sub_18F520B3C();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = result;
  v14 = *(v6 + 64) + v12;
  v15 = *(*(result - 8) + 64) + 7;
  if (v11 >= a2)
  {
LABEL_27:
    if (v7 == v11)
    {
      v24 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v24 = (a1 + v14) & ~v12;
      if (v10 != v11)
      {
        v25 = *(((v15 + v24) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        if ((v25 + 1) >= 2)
        {
          return v25;
        }

        else
        {
          return 0;
        }
      }
    }

    return __swift_getEnumTagSinglePayload(v24, v10, v13);
  }

  v16 = ((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v11 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 2:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_27;
      }

LABEL_24:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *a1;
      }

      else
      {
        v23 = 0;
      }

      result = v11 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_27;
  }

  return result;
}

void sub_18F36B7D4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_18F520B3C();
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

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = *(*(v10 - 8) + 64) + 7;
  v17 = ((v16 + (v15 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v16 + (v15 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = a3 - v13 + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v13 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 <= v13)
  {
    v24 = ~v14;
    v25 = v10;
    switch(v21)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v9 == v13)
        {
          v26 = a1;
          v27 = a2;
          v12 = v9;
          v25 = v7;
        }

        else
        {
          v26 = (a1 + v15) & v24;
          if (v12 != v13)
          {
            v28 = ((v16 + v26) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v28 = 0;
              v28[1] = 0;
              *v28 = a2 - 0x7FFFFFFF;
            }

            else
            {
              v28[1] = a2;
            }

            return;
          }

          v27 = a2;
        }

        __swift_storeEnumTagSinglePayload(v26, v27, v12, v25);
        break;
    }
  }

  else
  {
    if (((v16 + (v15 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v13;
    }

    else
    {
      v22 = 1;
    }

    if (((v16 + (v15 & ~v14)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v13 + a2;
      bzero(a1, v17);
      *a1 = v23;
    }

    switch(v21)
    {
      case 1:
        *(a1 + v17) = v22;
        break;
      case 2:
        *(a1 + v17) = v22;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t *sub_18F36BAA4()
{
  if (qword_1ED6FD780 != -1)
  {
    OUTLINED_FUNCTION_9_48();
  }

  return &qword_1ED6FD788;
}

uint64_t sub_18F36BAE4()
{
  OUTLINED_FUNCTION_69();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v7 = sub_18F52254C();
  v1[23] = v7;
  v1[24] = *(v7 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F36BC24()
{
  v1 = v0[19];
  v2 = sub_18F52271C();
  v0[28] = v2;
  v3 = *(v1 + 16);
  v0[29] = v3;
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (*(v4 + 16) && (v5 = sub_18F0EFA5C(v2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  v0[30] = v7;
  os_unfair_lock_unlock((v3 + 24));
  if (v7)
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[31] = v8;
    *v8 = v9;
    v8[1] = sub_18F36BEC8;

    return sub_18F36CC20((v0 + 6));
  }

  else
  {
    v11 = v0[16];
    if (v11)
    {
      v26 = (v11 + *v11);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[35] = v12;
      *v12 = v13;
      v12[1] = sub_18F36C590;
      v14 = v0[25];

      return v26(v14);
    }

    else
    {
      v16 = v0[24];
      v15 = v0[25];
      v17 = v0[23];
      v18 = v0[18];
      v19 = v0[15];
      v20 = OUTLINED_FUNCTION_24_2();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
      (*(v16 + 8))(v15, v17);
      type metadata accessor for AppDependencyManager.Error();
      OUTLINED_FUNCTION_0_99();
      OUTLINED_FUNCTION_38_8();
      v24 = v23;
      sub_18F10CBFC(v19, v23);
      *(v24 + 40) = v18;
      *(v24 + 56) = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_10_44();

      OUTLINED_FUNCTION_71();

      return v25();
    }
  }
}

uint64_t sub_18F36BEC8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F36BFCC()
{
  if (*(v0 + 72))
  {

    sub_18F118710((v0 + 48), (v0 + 16));
    sub_18F0FECD4(v0 + 16, v0 + 80);
    v1 = swift_dynamicCast();
    v2 = *(v0 + 216);
    if (v1)
    {
      v3 = *(v0 + 160);
      v4 = *(v0 + 144);
      v5 = *(v0 + 112);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

      v6 = OUTLINED_FUNCTION_18_40();
      __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
      (*(v3 + 32))(v5, v2, v4);
      OUTLINED_FUNCTION_22_34();

      OUTLINED_FUNCTION_6();
LABEL_11:

      return v9();
    }

    v16 = *(v0 + 184);
    v17 = *(v0 + 192);
    v18 = *(v0 + 144);
    v19 = *(v0 + 120);
    v20 = OUTLINED_FUNCTION_24_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
    (*(v17 + 8))(v2, v16);
    type metadata accessor for AppDependencyManager.Error();
    OUTLINED_FUNCTION_0_99();
    OUTLINED_FUNCTION_38_8();
    v24 = v23;
    sub_18F10CBFC(v19, v23);
    *(v24 + 40) = v18;
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    *(v24 + 48) = swift_getDynamicType();
    *(v24 + 56) = 2;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
LABEL_10:
    OUTLINED_FUNCTION_10_44();

    OUTLINED_FUNCTION_71();
    goto LABEL_11;
  }

  v10 = *(v0 + 128);
  sub_18F0EF1A8(v0 + 48, &qword_1EACD0430);
  if (!v10)
  {
    v25 = *(v0 + 208);
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v28 = *(v0 + 144);
    v29 = *(v0 + 120);
    v30 = OUTLINED_FUNCTION_24_2();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);
    (*(v27 + 8))(v25, v26);
    type metadata accessor for AppDependencyManager.Error();
    OUTLINED_FUNCTION_0_99();
    OUTLINED_FUNCTION_38_8();
    v34 = v33;
    sub_18F10CBFC(v29, v33);
    *(v34 + 40) = v28;
    *(v34 + 56) = 1;
    swift_willThrow();

    goto LABEL_10;
  }

  v11 = *(v0 + 128);

  v35 = (v11 + *v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 264) = v12;
  *v12 = v13;
  v12[1] = sub_18F36C338;
  v14 = *(v0 + 208);

  return v35(v14);
}