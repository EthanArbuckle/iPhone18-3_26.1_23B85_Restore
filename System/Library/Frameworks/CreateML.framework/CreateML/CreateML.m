uint64_t sub_2379D4D54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
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

uint64_t sub_2379D4E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t _s10ClassifierVMa()
{
  result = qword_27DE9A6E0;
  if (!qword_27DE9A6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2379D4EF8()
{
  sub_2379D4F64();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2379D4F64()
{
  if (!qword_27DE9A6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9A6F8, &unk_237C10180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9A700, &qword_237C0A160);
    v0 = type metadata accessor for Either();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9A6F0);
    }
  }
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

uint64_t sub_2379D507C()
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

uint64_t sub_2379D5268()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[21];
  sub_2379D8FF4(v0[8], v0[22], &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[13] + 32))(v0[14], v3, v0[12]);
    v4 = *(MEMORY[0x277CC5138] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[25] = v5;
    *v5 = v6;
    v5[1] = sub_2379D55AC;
    v7 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    OUTLINED_FUNCTION_10();

    return MEMORY[0x282115360]();
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v3, v0[18]);
    v10 = *(MEMORY[0x277CC5100] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[23] = v11;
    *v11 = v12;
    v11[1] = sub_2379D53D8;
    v13 = v0[20];
    v14 = v0[17];
    v15 = v0[18];
    OUTLINED_FUNCTION_10();

    return MEMORY[0x282115308]();
  }
}

uint64_t sub_2379D53D8()
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

uint64_t sub_2379D54D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_27();
  v11 = v10[20];
  v13 = v10[17];
  v12 = v10[18];
  v14 = v10[15];
  v15 = v10[16];
  v16 = v10[22];
  v17 = v10[14];
  v18 = v10[11];
  v19 = OUTLINED_FUNCTION_15(v10[19]);
  v20(v19);
  v21 = OUTLINED_FUNCTION_14();
  v22(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_37();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_2379D55AC()
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

uint64_t sub_2379D56A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_27();
  v11 = v10[14];
  v13 = v10[11];
  v12 = v10[12];
  v14 = v10[9];
  v15 = v10[10];
  v16 = v10[22];
  v17 = v10[20];
  v18 = v10[17];
  v19 = OUTLINED_FUNCTION_15(v10[13]);
  v20(v19);
  v21 = OUTLINED_FUNCTION_14();
  v22(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_37();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_2379D5780()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = OUTLINED_FUNCTION_38(v0[19]);
  v9(v8);

  OUTLINED_FUNCTION_8();

  return v10();
}

uint64_t sub_2379D5830()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[26];
  v2 = v0[14];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  v7 = v0[11];
  v6 = v0[12];
  v8 = OUTLINED_FUNCTION_38(v0[13]);
  v9(v8);

  OUTLINED_FUNCTION_8();

  return v10();
}

uint64_t sub_2379D58E0()
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

uint64_t sub_2379D5AE4()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[24];
  sub_2379D8FF4(v0[11], v0[25], &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[25];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[16] + 32))(v0[17], v3, v0[15]);
    v4 = *(MEMORY[0x277CC5130] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[28] = v5;
    *v5 = v6;
    v5[1] = sub_2379D5E28;
    v7 = v0[17];
    v8 = v0[14];
    v9 = v0[15];
    OUTLINED_FUNCTION_22();

    return MEMORY[0x282115358]();
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v3, v0[21]);
    v10 = *(MEMORY[0x277CC50F8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[26] = v11;
    *v11 = v12;
    v11[1] = sub_2379D5C54;
    v13 = v0[23];
    v14 = v0[20];
    v15 = v0[21];
    OUTLINED_FUNCTION_22();

    return MEMORY[0x282115300]();
  }
}

uint64_t sub_2379D5C54()
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

uint64_t sub_2379D5D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_27();
  v11 = v10[23];
  v13 = v10[20];
  v12 = v10[21];
  v14 = v10[18];
  v15 = v10[19];
  v16 = v10[25];
  v17 = v10[17];
  v18 = v10[14];
  v19 = OUTLINED_FUNCTION_15(v10[22]);
  v20(v19);
  v21 = OUTLINED_FUNCTION_14();
  v22(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_37();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_2379D5E28()
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

uint64_t sub_2379D5F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_27();
  v11 = v10[17];
  v13 = v10[14];
  v12 = v10[15];
  v14 = v10[12];
  v15 = v10[13];
  v16 = v10[25];
  v17 = v10[23];
  v18 = v10[20];
  v19 = OUTLINED_FUNCTION_15(v10[16]);
  v20(v19);
  v21 = OUTLINED_FUNCTION_14();
  v22(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_37();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_2379D5FFC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v7 = v0[14];
  v8 = OUTLINED_FUNCTION_38(v0[22]);
  v9(v8);

  OUTLINED_FUNCTION_8();

  return v10();
}

uint64_t sub_2379D60AC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[29];
  v2 = v0[17];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[14];
  v6 = v0[15];
  v8 = OUTLINED_FUNCTION_38(v0[16]);
  v9(v8);

  OUTLINED_FUNCTION_8();

  return v10();
}

uint64_t sub_2379D615C(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v63 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v6 = OUTLINED_FUNCTION_0(v5);
  v59 = v7;
  v60 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_23();
  v57 = v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0(v58);
  v56 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_23();
  v55 = v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0(v54);
  v52[2] = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  (MEMORY[0x28223BE20])();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0(v53);
  v52[1] = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  (MEMORY[0x28223BE20])();
  OUTLINED_FUNCTION_13();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v25);
  v27 = v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718);
  OUTLINED_FUNCTION_20(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12();
  v33 = *(v32 + 56);
  sub_2379D8FF4(v61, v4, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v62, v4 + v33, &qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379D8FF4(v4, v3, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() == 1)
    {
      v34 = v55;
      v35 = v56;
      v36 = OUTLINED_FUNCTION_21(v56);
      v37 = v58;
      v38(v36, v3, v58);
      v39 = v59;
      v40 = v4 + v33;
      v41 = v57;
      v42 = v60;
      (*(v59 + 32))(v57, v40, v60);
      sub_2379D9224(&qword_27DE9A7A0, &qword_27DE9A700, &qword_237C0A160);
      sub_2379D9224(&qword_27DE9A7A8, &qword_27DE9A780, &unk_237C0A700);
      sub_237C06EBC();
      (*(v39 + 8))(v41, v42);
      (*(v35 + 8))(v34, v37);
      return sub_2379D9054(v4, &qword_27DE9A6D8, &qword_237C0A140);
    }

    OUTLINED_FUNCTION_28();
  }

  else
  {
    sub_2379D8FF4(v4, v27, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() != 1)
    {
      v43 = OUTLINED_FUNCTION_17();
      v44(v43);
      v45 = OUTLINED_FUNCTION_16();
      v46(v45);
      OUTLINED_FUNCTION_25();
      sub_237C072DC();
      v47 = OUTLINED_FUNCTION_36();
      v48(v47);
      ("Classifier")(v2, v21);
      return sub_2379D9054(v4, &qword_27DE9A6D8, &qword_237C0A140);
    }
  }

  v50 = OUTLINED_FUNCTION_32();
  v51(v50);
  OUTLINED_FUNCTION_2();
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_2379D6678()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D9D48;

  return sub_2379D507C();
}

uint64_t sub_2379D6750()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D6854;

  return sub_2379D58E0();
}

uint64_t sub_2379D6854()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t sub_2379D698C@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_4(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12();
  sub_2379D8FF4(v26[0], v2, &qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = OUTLINED_FUNCTION_21(v5);
    v22(v21, v2, v3);
    sub_237C0737C();
    (*(v5 + 8))(v1, v3);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_26();
    v24(v23);
    sub_237C072BC();
    (*(v11 + 8))(v16, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2379D6BCC()
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

uint64_t sub_2379D6E24()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[2];
  v4 = *(v0[26] + 48);
  sub_2379D8FF4(v0[8], v1, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v3, v1 + v4, &qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[27];
  if (EnumCaseMultiPayload == 1)
  {
    v7 = v0 + 24;
    sub_2379D8FF4(v6, v0[24], &qword_27DE9A6D8, &qword_237C0A140);
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = v0[12];
      v9 = v0[9];
      v10 = v0[10];
      (*(v0[14] + 32))(v0[15], v0[24], v0[13]);
      v11 = *(v10 + 32);
      v0[34] = v11;
      v0[35] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v11(v8, v1 + v4, v9);
      v12 = *(MEMORY[0x277CC5140] + 4);
      v13 = swift_task_alloc();
      v0[36] = v13;
      *v13 = v0;
      v13[1] = sub_2379D7390;
      v14 = v0[15];
      v16 = v0[12];
      v15 = v0[13];
      OUTLINED_FUNCTION_10();

      return MEMORY[0x282115368](v17);
    }

    v18 = 13;
    v19 = 14;
LABEL_9:
    (*(v0[v19] + 8))(*v7, v0[v18]);
    OUTLINED_FUNCTION_2();
    return sub_237C090DC();
  }

  v7 = v0 + 25;
  sub_2379D8FF4(v6, v0[25], &qword_27DE9A6D8, &qword_237C0A140);
  v0[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = 20;
    v19 = 21;
    goto LABEL_9;
  }

  v20 = v0[19];
  v21 = v0[16];
  v22 = v0[17];
  (*(v0[21] + 32))(v0[22], v0[25], v0[20]);
  v23 = *(v22 + 32);
  v0[29] = v23;
  v0[30] = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v23(v20, v1 + v4, v21);
  v24 = *(MEMORY[0x277CC5108] + 4);
  v25 = swift_task_alloc();
  v0[31] = v25;
  *v25 = v0;
  v25[1] = sub_2379D7144;
  v26 = v0[22];
  v28 = v0[19];
  v27 = v0[20];
  OUTLINED_FUNCTION_10();

  return MEMORY[0x282115318](v29);
}

uint64_t sub_2379D7144()
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

uint64_t sub_2379D723C()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v9 = v0[27];
  v8 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[11];
  v13 = v0[12];
  OUTLINED_FUNCTION_31(v0[21]);
  v14(v4);
  v3(v7, v6, v11);
  sub_2379D9054(v1, &qword_27DE9A790, &qword_237C0A710);
  v3(v1, v7, v11);
  swift_storeEnumTagMultiPayload();
  sub_2379D9054(v9, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_6();

  return v15();
}

uint64_t sub_2379D7390()
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

uint64_t sub_2379D7488()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  v9 = v0[9];
  v10 = v0[27];
  v18 = v0[25];
  v19 = v0[24];
  v11 = v0[22];
  v12 = v0[18];
  v13 = v0[19];
  OUTLINED_FUNCTION_31(v0[14]);
  v14(v5);
  v15 = OUTLINED_FUNCTION_30();
  v3(v15);
  sub_2379D9054(v1, &qword_27DE9A790, &qword_237C0A710);
  (v3)(v1, v8, v9);
  swift_storeEnumTagMultiPayload();
  sub_2379D9054(v10, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_6();

  return v16();
}

uint64_t sub_2379D75E0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[18];
  v8 = v0[15];
  v11 = v0[12];
  v12 = v0[11];
  v13 = v0[32];
  (*(v0[17] + 8))(v0[19], v0[16]);
  (*(v2 + 8))(v1, v3);
  sub_2379D9054(v4, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_8();

  return v9();
}

uint64_t sub_2379D770C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v8 = v0[19];
  v11 = v0[18];
  v12 = v0[11];
  v13 = v0[37];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v2 + 8))(v1, v3);
  sub_2379D9054(v4, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_8();

  return v9();
}

uint64_t sub_2379D783C(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v6 = OUTLINED_FUNCTION_0(v5);
  v60 = v7;
  v61 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  v58 = v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0(v59);
  v57 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23();
  v56 = v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0(v55);
  v53[2] = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0(v54);
  v53[1] = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13();
  v25 = &qword_27DE9A6D8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v30);
  v32 = v53 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718);
  OUTLINED_FUNCTION_20(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12();
  v38 = *(v37 + 56);
  sub_2379D8FF4(v62, v4, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v63, v4 + v38, &qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379D8FF4(v4, v3, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() == 1)
    {
      v2 = v56;
      v26 = v57;
      v39 = OUTLINED_FUNCTION_21(v57);
      v25 = v59;
      v40(v39, v3, v59);
      v42 = v60;
      v41 = v61;
      v43 = v58;
      (*(v60 + 32))(v58, v4 + v38, v61);
      OUTLINED_FUNCTION_25();
      sub_237C0738C();
      (*(v42 + 8))(v43, v41);
LABEL_6:
      (*(v26 + 8))(v2, v25);
      return sub_2379D9054(v4, &qword_27DE9A6D8, &qword_237C0A140);
    }

    OUTLINED_FUNCTION_28();
  }

  else
  {
    sub_2379D8FF4(v4, v32, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() != 1)
    {
      v44 = OUTLINED_FUNCTION_17();
      v45(v44);
      v46 = OUTLINED_FUNCTION_16();
      v47(v46);
      OUTLINED_FUNCTION_25();
      sub_237C072CC();
      v48 = OUTLINED_FUNCTION_36();
      v49(v48);
      goto LABEL_6;
    }
  }

  v51 = OUTLINED_FUNCTION_32();
  v52(v51);
  OUTLINED_FUNCTION_2();
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_2379D7CC8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v72 = a3;
  v74 = a1;
  v66 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v7 = OUTLINED_FUNCTION_0(v6);
  v63 = v8;
  v64 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v70 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v14 = OUTLINED_FUNCTION_0(v13);
  v68 = v15;
  v69 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v22 = OUTLINED_FUNCTION_0(v21);
  v61 = v23;
  v62 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_23();
  v67 = v27;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v28 = OUTLINED_FUNCTION_4(v65);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v60 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v59 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0(v35);
  v37 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_13();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_4(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12();
  sub_2379D8FF4(v73, v5, &qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v68;
    v45 = v69;
    v47 = OUTLINED_FUNCTION_26();
    v48(v47);
    v49 = v75;
    v72(v74, v45);
    result = (*(v46 + 8))(v20, v45);
    if (v49)
    {
      return result;
    }

    v51 = *(v63 + 32);
    v52 = v60;
    v53 = OUTLINED_FUNCTION_30();
    v54(v53);
    swift_storeEnumTagMultiPayload();
    v34 = v52;
  }

  else
  {
    v55 = OUTLINED_FUNCTION_21(v37);
    v56(v55, v5, v35);
    v57 = v67;
    v58 = v75;
    v71(v74, v35);
    result = (*(v37 + 8))(v4, v35);
    if (v58)
    {
      return result;
    }

    (*(v61 + 32))(v34, v57, v62);
    swift_storeEnumTagMultiPayload();
  }

  return sub_2379D8F84(v34, v66);
}

uint64_t sub_2379D80D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D9D48;

  return sub_2379D6BCC();
}

void sub_2379D8200(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2379D8234();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_2379D823C()
{
  v1 = OUTLINED_FUNCTION_29();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_2379D8288(uint64_t a1, id *a2)
{
  result = sub_237C086CC();
  *a2 = 0;
  return result;
}

uint64_t sub_2379D831C(uint64_t a1, id *a2)
{
  v3 = sub_237C086DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2379D839C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2379D942C();
  *a1 = result;
  return result;
}

uint64_t sub_2379D83C4()
{
  v0 = sub_237C086EC();
  v1 = MEMORY[0x2383DC3B0](v0);

  return v1;
}

uint64_t sub_2379D83FC()
{
  sub_237C086EC();
  sub_237C0878C();
}

uint64_t sub_2379D8450()
{
  sub_237C086EC();
  sub_237C093CC();
  sub_237C0878C();
  v0 = sub_237C0940C();

  return v0;
}

uint64_t sub_2379D8524()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_237C0605C();
}

uint64_t sub_2379D8570()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_237C0604C();
}

uint64_t sub_2379D85C8()
{
  sub_237C093CC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_237C0604C();
  return sub_237C0940C();
}

uint64_t sub_2379D8634()
{
  v1 = OUTLINED_FUNCTION_29();
  result = sub_237B4A974(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2379D865C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_2379D86C8()
{
  OUTLINED_FUNCTION_29();
  result = sub_2379D86F0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2379D86F4(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A960, type metadata accessor for FileAttributeKey);
  v3 = sub_2379D8BEC(&qword_27DE9A968, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D87B0(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A950, type metadata accessor for Key);
  v3 = sub_2379D8BEC(&qword_27DE9A958, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D886C(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A7B0, type metadata accessor for NLLanguage);
  v3 = sub_2379D8BEC(&qword_27DE9A7B8, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D8928(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A930, type metadata accessor for EmbeddingType);
  v3 = sub_2379D8BEC(&qword_27DE9A938, type metadata accessor for EmbeddingType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D89E4(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A920, type metadata accessor for URLResourceKey);
  v3 = sub_2379D8BEC(&qword_27DE9A928, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D8AA0(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A7D0, type metadata accessor for ProgressUserInfoKey);
  v3 = sub_2379D8BEC(&qword_27DE9A7D8, type metadata accessor for ProgressUserInfoKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D8BEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2379D8C34(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A7C0, type metadata accessor for VNImageOption);
  v3 = sub_2379D8BEC(&qword_27DE9A7C8, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D8F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379D8FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2379D9054(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2379D90AC(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A910, type metadata accessor for VNRecognizedPointKey);
  v3 = sub_2379D8BEC(&qword_27DE9A918, type metadata accessor for VNRecognizedPointKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D9168(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A940, type metadata accessor for ConfigurationOptionsKey);
  v3 = sub_2379D8BEC(&qword_27DE9A948, type metadata accessor for ConfigurationOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D9224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2379D926C(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A970, type metadata accessor for ImageOption);
  v3 = sub_2379D8BEC(&qword_27DE9A978, type metadata accessor for ImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D9328@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_237C086BC();

  *a2 = v5;
  return result;
}

uint64_t sub_2379D9370(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A980, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_2379D8BEC(&qword_27DE9A988, type metadata accessor for CIImageRepresentationOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D942C()
{
  sub_237C086EC();
  v0 = sub_237C086BC();

  return v0;
}

uint64_t sub_2379D953C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2379D955C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_2379D95AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_10()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
}

uint64_t OUTLINED_FUNCTION_15@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_16()
{
  v2 = *(*(v1 - 176) + 32);
  result = v0;
  v4 = *(v1 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_17()
{
  v2 = *(*(v1 - 184) + 32);
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_22()
{
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  *(v1 + 16) = v0[9];
  *(v1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_32()
{
  v2 = *(*(v1 - 184) + 8);
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_2379DA060(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v56 = a2;
  v5 = sub_237C0610C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v54 = v7;
  v55 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v53 = sub_237C0926C();
  v13 = OUTLINED_FUNCTION_0(v53);
  v50 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = sub_237C0683C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v51 = v22;
  v52 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  v28 = sub_237C060DC();
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v29);
  v36 = &v47 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v47 - v37;
  sub_237C065FC();
  v39 = (*(v31 + 88))(v38, v28);
  if (v39 == *MEMORY[0x277D2CC88] || v39 == *MEMORY[0x277D2CC90] || v39 == *MEMORY[0x277D2CCA8] || v39 == *MEMORY[0x277D2CCB0] || v39 == *MEMORY[0x277D2CCC8])
  {
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x28223BE20](v40);
    OUTLINED_FUNCTION_0_0();
    sub_237C0668C();
  }

  else
  {
    v43 = *(v31 + 104);
    v48 = a1;
    v43(v36);
    v44 = v50;
    (*(v50 + 104))(v19, *MEMORY[0x277D84660], v53);
    v49 = a3;
    sub_237C0675C();
    (*(v44 + 8))(v19, v53);
    v45 = *(v31 + 8);
    v46 = v45(v36, v28);
    MEMORY[0x28223BE20](v46);
    *(&v47 - 2) = v48;
    sub_237C0668C();
    (*(v51 + 8))(v27, v52);
    v45(v38, v28);
  }

  sub_237C0679C();
  v41 = sub_237C060FC();
  result = (*(v54 + 8))(v12, v55);
  *v56 = v41;
  return result;
}

void sub_2379DA56C(const float *a1, int64_t a2, uint64_t a3)
{
  if (*(a3 + 8) >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a3 + 8);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *a3;
  if (v4)
  {
    vDSP_vspdp(a1, 1, v4, 1, v3);
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_2379DA5A0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 2;
  }

  else
  {
    v3 = 0;
  }

  return sub_2379DA6F0(a1, v3, a3, MEMORY[0x277CB87B0]);
}

uint64_t sub_2379DA5F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 4;
  }

  else
  {
    v3 = 0;
  }

  return sub_2379DA6F0(a1, v3, a3, MEMORY[0x277CB87B8]);
}

uint64_t sub_2379DA648(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 2;
  }

  else
  {
    v3 = 0;
  }

  return sub_2379DA6F0(a1, v3, a3, MEMORY[0x277CB87C0]);
}

uint64_t sub_2379DA69C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 4;
  }

  else
  {
    v3 = 0;
  }

  return sub_2379DA6F0(a1, v3, a3, MEMORY[0x277CB87C8]);
}

uint64_t sub_2379DA6F0(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (a3[1] != a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a3)
  {
    return a4();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2379DA734(const float *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 4;
  }

  else
  {
    v3 = 0;
  }

  sub_2379DA56C(a1, v3, a3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Interaction(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Interaction(uint64_t result, int a2, int a3)
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

BOOL sub_2379DA8D4(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2379DA8F0(a1[1], a2[1]);
}

BOOL sub_2379DA8FC(_BOOL8 result, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if ((a6 & 1) == 0 && (a3 & 1) == 0)
  {
    if (a5 == a2)
    {
      return a4 >= result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_2379DA920(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2379DA93C(a1[1], a2[1]);
}

BOOL sub_2379DA948(_BOOL8 result, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if ((a3 & 1) == 0 && (a6 & 1) == 0)
  {
    if (a2 == a5)
    {
      return result >= a4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_2379DA96C(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2379DA988(a1[1], a2[1]);
}

BOOL sub_2379DA994(_BOOL8 result, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if ((a6 & 1) == 0 && (a3 & 1) == 0)
  {
    if (a5 == a2)
    {
      return a4 < result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2379DA9D8()
{
  result = qword_27DE9A990;
  if (!qword_27DE9A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A990);
  }

  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  result = sub_2379D8FF4(v1, &v11, &qword_27DE9A998, &unk_237C0C100);
  if (v12)
  {
    sub_2379DAD24(&v11, &v13);
    swift_dynamicCast();
    sub_237B684F4(a1);
    return sub_2379DAD34(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2379DAB04@<X0>(uint64_t a1@<X8>)
{
  result = MLBoostedTreeRegressor.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_2379DAB48(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
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
  sub_2379DADF0(v10, boxed_opaque_existential_0);
  return sub_2379DAE54(v16, v2);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v0, &v2, &qword_27DE9A998, &unk_237C0C100);
  if (v3)
  {
    sub_2379DAD24(&v2, &v4);
    type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_2379DAD24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2379DAD34(uint64_t a1)
{
  v2 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2379DADF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379DAE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*MLBoostedTreeRegressor.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLBoostedTreeRegressor.ModelParameters.validationData.getter(a1);
  return sub_2379DAF0C;
}

void sub_2379DAF0C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_2379DBCDC(v2, v3);
    MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v5);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v5);
  }
}

uint64_t sub_2379DAFA0(uint64_t a1)
{
  v2 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379DBD00(a1, v5);
  return MLBoostedTreeRegressor.ModelParameters.validation.setter(v5);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_2379DADF0(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

void (*MLBoostedTreeRegressor.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v5 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  v4[17] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  v4[18] = __swift_coroFrameAllocStub(v7);
  v4[19] = __swift_coroFrameAllocStub(v7);
  result = sub_2379D8FF4(v2, (v4 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_2379DB17C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2379DB17C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_2379DBD00((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_2379DADF0(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_2379DAD34(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_2379DADF0(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.earlyStoppingRounds.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.earlyStoppingRounds.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  v24 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a4;
  *(a7 + 72) = a10;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 96) = a11;
  *(a7 + 104) = a12;
  sub_2379DBD00(a1, v29 - v28);
  v33[3] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  sub_2379DADF0(v30, boxed_opaque_existential_0);
  sub_2379DAD34(a1);
  return sub_2379DAE54(v33, a7);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a4;
  *(a7 + 72) = a10;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 96) = a11;
  *(a7 + 104) = a12;
  v15 = v12;
  v16 = v13;
  return MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v15);
}

uint64_t sub_2379DB58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A8, &qword_237C0B658);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40 - v18;
  v20 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = sub_237C070EC();
  *(a3 + 40) = sub_237C0714C();
  sub_237C0718C();
  *(a3 + 48) = v27;
  sub_237C0716C();
  *(a3 + 56) = v28;
  *(a3 + 64) = sub_237C070AC();
  sub_237C070CC();
  *(a3 + 72) = v29;
  *(a3 + 80) = sub_237C071AC();
  *(a3 + 88) = v30 & 1;
  sub_237C0710C();
  *(a3 + 96) = v31;
  sub_237C0712C();
  *(a3 + 104) = v32;
  v41 = a2;
  sub_2379D8FF4(a2, v15, &qword_27DE9A9A0, &qword_237C0BF60);
  v33 = 1;
  if (__swift_getEnumTagSinglePayload(v15, 1, v6) != 1)
  {
    (*(v7 + 32))(v11, v15, v6);
    (*(v7 + 16))(v19, v11, v6);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 8))(v11, v6);
    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v33, 1, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      sub_2379D9054(v19, &qword_27DE9A9A8, &qword_237C0B658);
    }
  }

  else
  {
    v34 = OUTLINED_FUNCTION_7_0();
    sub_2379DADF0(v34, v35);
  }

  v42[3] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
  sub_2379DADF0(v26, boxed_opaque_existential_0);
  sub_2379D9054(v41, &qword_27DE9A9A0, &qword_237C0BF60);
  v37 = sub_237C071DC();
  OUTLINED_FUNCTION_4(v37);
  (*(v38 + 8))(a1);
  return sub_2379DAE54(v42, a3);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.description.getter()
{
  v11[2] = 0x747065442078614DLL;
  v11[3] = 0xEB00000000203A68;
  v11[0] = v0[4];
  OUTLINED_FUNCTION_7_0();
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();

  v11[0] = 0xD000000000000010;
  v11[1] = 0x8000000237C16E00;
  v9 = v0[5];
  OUTLINED_FUNCTION_7_0();
  v2 = sub_237C0924C();
  MEMORY[0x2383DC360](v2);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  v3 = v0[6];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();

  strcpy(v11, "Random Seed: ");
  HIWORD(v11[1]) = -4864;
  v10 = v0[8];
  OUTLINED_FUNCTION_7_0();
  v4 = sub_237C0924C();
  MEMORY[0x2383DC360](v4);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v11[0], v11[1]);

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  MEMORY[0x2383DC360](0x7A69532070657453, 0xEB00000000203A65);
  v5 = v0[9];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x2383DC360](0x7362755320776F52, 0xEF203A656C706D61);
  v6 = v0[12];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  v7 = v0[13];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  return 0x747065442078614DLL;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLBoostedTreeRegressor.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_2379DBC84(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_2379DBC9C(a1, a2 & 1);
  }
}

void sub_2379DBC9C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

id sub_2379DBCDC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_2379DBCF4(result, a2 & 1);
  }

  return result;
}

id sub_2379DBCF4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_2379DBD00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2379DBDB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t sub_2379DBE08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_2_1()
{

  JUMPOUT(0x2383DC360);
}

void OUTLINED_FUNCTION_4_0()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_237C08A8C();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_237C08A8C();
}

uint64_t sub_2379DBF28()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  __swift_allocate_value_buffer(v0, qword_27DE9A9B0);
  v1 = __swift_project_value_buffer(v0, qword_27DE9A9B0);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 20;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLHandPoseClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters();
  __swift_project_value_buffer(v2, qword_27DE9A9B0);
  OUTLINED_FUNCTION_5_1();
  return sub_2379E90B4(v3, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id MLHandPoseClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLHandPoseClassifier() + 20));

  return v1;
}

uint64_t type metadata accessor for MLHandPoseClassifier()
{
  result = qword_27DE9AA28;
  if (!qword_27DE9AA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLHandPoseClassifier.model.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = *(type metadata accessor for MLHandPoseClassifier() + 20);

  *(v1 + v2) = v0;
}

uint64_t (*MLHandPoseClassifier.model.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLHandPoseClassifier() + 20);
  return nullsub_1;
}

uint64_t MLHandPoseClassifier.modelParameters.getter()
{
  OUTLINED_FUNCTION_146();
  v2 = *(type metadata accessor for MLHandPoseClassifier() + 24);
  OUTLINED_FUNCTION_7_1();
  return sub_2379E90B4(v1 + v3, v0);
}

uint64_t MLHandPoseClassifier.trainingMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLHandPoseClassifier();
  return OUTLINED_FUNCTION_48(*(v0 + 28));
}

uint64_t MLHandPoseClassifier.trainingMetrics.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = v1 + *(type metadata accessor for MLHandPoseClassifier() + 28);

  return sub_2379DC1F8(v0, v2);
}

uint64_t sub_2379DC1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*MLHandPoseClassifier.trainingMetrics.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLHandPoseClassifier() + 28);
  return nullsub_1;
}

uint64_t MLHandPoseClassifier.validationMetrics.getter()
{
  OUTLINED_FUNCTION_146();
  v0 = type metadata accessor for MLHandPoseClassifier();
  return OUTLINED_FUNCTION_48(*(v0 + 32));
}

uint64_t MLHandPoseClassifier.validationMetrics.setter()
{
  OUTLINED_FUNCTION_46();
  v2 = v1 + *(type metadata accessor for MLHandPoseClassifier() + 32);

  return sub_2379DC1F8(v0, v2);
}

uint64_t (*MLHandPoseClassifier.validationMetrics.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLHandPoseClassifier() + 32);
  return nullsub_1;
}

void MLHandPoseClassifier.init(trainingData:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v90 = v2;
  v4 = v3;
  v5 = type metadata accessor for MLHandPoseClassifier();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v85 = v9 - v8;
  v10 = OUTLINED_FUNCTION_41_0();
  v11 = type metadata accessor for MLHandPoseClassifier.ModelParameters(v10);
  v12 = OUTLINED_FUNCTION_1(v11);
  v83 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_134();
  v87 = v16;
  v84 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58();
  v86 = v19;
  v20 = OUTLINED_FUNCTION_41_0();
  v88 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(v20);
  v21 = OUTLINED_FUNCTION_4(v88);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v81 = v25 - v24;
  OUTLINED_FUNCTION_41_0();
  v26 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v27 = OUTLINED_FUNCTION_20(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v80 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_60();
  v38 = v6[7];
  v96 = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  *(v4 + v38) = v96;
  v39 = (v4 + v6[9]);
  sub_237C06FAC();
  v40 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v41 = v39 + *(v40 + 20);
  sub_2379E51D0();
  v42 = v39 + *(v40 + 24);
  sub_2379E5C70();
  v43 = *(v34 + 8);
  v43(v1, v32);
  *v39 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_55();
  swift_storeEnumTagMultiPayload();
  v44 = (v4 + v6[10]);
  sub_237C06FAC();
  v45 = v44 + *(v40 + 20);
  sub_2379E51D0();
  v46 = v44 + *(v40 + 24);
  sub_2379E5C70();
  v43(v1, v32);
  *v44 = 0;
  swift_storeEnumTagMultiPayload();
  sub_237A99AB0(&v94, &v92);
  if (v0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_2379E9180();
    OUTLINED_FUNCTION_4_1();
    sub_2379E9180();

    OUTLINED_FUNCTION_42();
    sub_2379E9180();
    sub_2379E9180();
LABEL_6:
    OUTLINED_FUNCTION_73();
    return;
  }

  v78 = v4;
  v55 = v94;
  v56 = v95;
  v79 = v92;
  v91 = v93;
  if (v95 == 255)
  {
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(v47, v48, v49, v50, v51, v52, v53, v54, v72, v73, v74, v75, v77, v4, v92, v80, v81, v83, v84, v85);
  }

  else
  {
    _s16FeatureExtractorCMa_0();
    v92 = v55;
    OUTLINED_FUNCTION_116(v56 & 1);
  }

  v76 = v94;
  HIDWORD(v77) = v95;
  if (v91 != 255)
  {
    _s16FeatureExtractorCMa_0();
    v92 = v79;
    OUTLINED_FUNCTION_116(v91 & 1);
    OUTLINED_FUNCTION_92();
LABEL_13:
    v89 = v94;
    v82 = v95;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_22_0();
  sub_2379E90B4(v90, v81);
  OUTLINED_FUNCTION_37_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = sub_2379E72FC(v81, v80);
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(v57, v58, v59, v60, v61, v62, v63, v64, v72, v73, v74, v76, v77, v78, v79, v80, v81, v83, v84, v85);
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_4_1();
    sub_2379E9180();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_92();
  sub_2379E9180();
  if (MEMORY[0x2383DDC00](0))
  {
    OUTLINED_FUNCTION_87();
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    v65 = swift_allocObject();
    *(v65 + 16) = v88;
    type metadata accessor for _DataTable();
    swift_allocObject();
    v89 = sub_237B6C578(v65);
    v82 = 0;
LABEL_14:
    sub_2379E90B4(v90, v86);
    sub_2379E90B4(v86, v87);
    v66 = (*(v83 + 80) + 41) & ~*(v83 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = v76;
    *(v67 + 24) = BYTE4(v77);
    *(v67 + 32) = v89;
    *(v67 + 40) = v82;
    OUTLINED_FUNCTION_47();
    v69 = v68 + v66;
    v71 = v70;
    sub_2379E72FC(v87, v69);
    sub_2379DBCF4(v71, SBYTE4(v77));
    sub_2379DBCF4(v89, v82);
    sub_2379DD76C();

    OUTLINED_FUNCTION_121();
    sub_2379DBC84(v73, SBYTE4(v74));
    OUTLINED_FUNCTION_43();
    sub_2379E9180();
    OUTLINED_FUNCTION_4_1();
    sub_2379E9180();
    sub_2379E9180();

    OUTLINED_FUNCTION_42();
    sub_2379E9180();
    sub_2379E9180();
    sub_2379E72FC(v85, v78);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2379DCB14(uint64_t a1, void *a2, char a3, void *a4, char a5, uint64_t a6)
{
  *(v6 + 26) = a5;
  *(v6 + 64) = a4;
  *(v6 + 72) = a6;
  *(v6 + 25) = a3;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  v11 = *(*(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  sub_2379DBCF4(a2, a3 & 1);
  sub_2379DBCF4(a4, a5 & 1);

  return MEMORY[0x2822009F8](sub_2379DCBE0, 0, 0);
}

uint64_t sub_2379DCBE0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 26);
  v4 = *(v0 + 25);
  v5 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v4 & 1;
  *(v0 + 32) = v5;
  *(v0 + 40) = v3 & 1;
  OUTLINED_FUNCTION_7_1();
  sub_2379E90B4(v6, v7);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_2379DCCB4;
  v9 = *(v0 + 80);
  v10 = *(v0 + 48);

  return sub_2379DCE2C();
}

uint64_t sub_2379DCCB4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    OUTLINED_FUNCTION_8();

    return v13();
  }
}

uint64_t sub_2379DCDD0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_8();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_2379DCE2C()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  v7 = type metadata accessor for MLHandActionClassifier();
  *(v0 + 64) = v7;
  OUTLINED_FUNCTION_20(v7);
  v9 = *(v8 + 64) + 15;
  *(v0 + 72) = swift_task_alloc();
  v10 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v0 + 80) = v10;
  OUTLINED_FUNCTION_20(v10);
  v12 = *(v11 + 64) + 15;
  *(v0 + 88) = swift_task_alloc();
  *(v0 + 96) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  *(v0 + 104) = v13;
  OUTLINED_FUNCTION_1(v13);
  *(v0 + 112) = v14;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v18 = *v4;
  *(v0 + 120) = v17;
  *(v0 + 128) = v18;
  *(v0 + 25) = *(v4 + 8);
  *(v0 + 136) = *v2;
  *(v0 + 26) = *(v2 + 8);
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2379DCF78()
{
  v33 = *(v0 + 26);
  v30 = *(v0 + 25);
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v31 = *(v0 + 136);
  v32 = *(v0 + 88);
  v27 = *(v0 + 80);
  v5 = *(v0 + 48);
  v28 = *(v0 + 56);
  v29 = *(v0 + 128);
  *(v0 + 144) = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v6 = type metadata accessor for MLHandPoseClassifier();
  *(v0 + 152) = v6;
  v7 = v6[7];
  *(v0 + 28) = v7;
  v8 = (v5 + v7);
  sub_237C06FAC();
  v9 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v10 = *(v9 + 20);
  OUTLINED_FUNCTION_127();
  sub_2379E51D0();
  v11 = *(v9 + 24);
  OUTLINED_FUNCTION_127();
  sub_2379E5C70();
  v12 = *(v2 + 8);
  v12(v1, v4);
  *v8 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_83();
  swift_storeEnumTagMultiPayload();
  v13 = v6[8];
  *(v0 + 44) = v13;
  v14 = (v5 + v13);
  sub_237C06FAC();
  v15 = *(v9 + 20);
  OUTLINED_FUNCTION_127();
  sub_2379E51D0();
  v16 = *(v9 + 24);
  OUTLINED_FUNCTION_127();
  sub_2379E5C70();
  v12(v1, v4);
  *v14 = 0;
  OUTLINED_FUNCTION_83();
  swift_storeEnumTagMultiPayload();
  *(v0 + 176) = v6[6];
  OUTLINED_FUNCTION_7_1();
  sub_2379E90B4(v28, v5 + v17);
  v18 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v19 = *(v28 + v18[7]);
  v20 = *(v28 + v18[5]);
  v21 = *(v28 + v18[6]);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 256;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_125();
  swift_storeEnumTagMultiPayload();
  *(v3 + v27[5]) = v20;
  *(v3 + v27[6]) = v21;
  *(v3 + v27[7]) = 1;
  *(v3 + v27[8]) = v19;
  *(v3 + v27[10]) = 0x403E000000000000;
  *(v0 + 16) = v29;
  *(v0 + 24) = v30;
  *(v0 + 32) = v31;
  *(v0 + 40) = v33;
  OUTLINED_FUNCTION_23_0();
  sub_2379E90B4(v3, v22);
  v23 = swift_task_alloc();
  *(v0 + 160) = v23;
  *v23 = v0;
  v23[1] = sub_2379DD234;
  v24 = *(v0 + 88);
  v25 = *(v0 + 72);

  return sub_237ACDB54();
}

uint64_t sub_2379DD234()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 168) = v0;

  if (!v0)
  {
    *(v3 + 180) = *(*(v3 + 152) + 20);
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2379DD338()
{
  v1 = *(v0 + 180);
  v2 = *(v0 + 44);
  v3 = *(v0 + 28);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  v14 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  OUTLINED_FUNCTION_1_0();
  sub_2379E9180();
  OUTLINED_FUNCTION_2_2();
  sub_2379E9180();
  OUTLINED_FUNCTION_24_0();
  sub_2379E72FC(v8, v10);
  sub_2379E93B4(v10 + *(v7 + 32), v10 + v3);
  sub_2379E93B4(v10 + *(v7 + 36), v10 + v2);
  v11 = *(v10 + 16);

  *(v10 + v1) = v11;

  OUTLINED_FUNCTION_8();

  return v12();
}

uint64_t sub_2379DD44C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 44);
  v3 = *(v0 + 28);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v13 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_2379E9180();
  OUTLINED_FUNCTION_2_2();
  sub_2379E9180();

  sub_2379E9180();
  sub_2379E9180();
  sub_2379E9180();

  OUTLINED_FUNCTION_8();
  v11 = *(v0 + 168);

  return v10();
}

void sub_2379DD56C()
{
  OUTLINED_FUNCTION_97();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_0();
  type metadata accessor for ResultBox();
  v7 = OUTLINED_FUNCTION_120();
  v8 = OUTLINED_FUNCTION_29_0(v7);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_79();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_57(v13);

  v14 = v8;
  v15 = OUTLINED_FUNCTION_62();
  sub_237BBAEC8(v15, v16, v1, v17, v2);

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v0, &v18, &qword_27DE9AAA0, &unk_237C0B820);
  if (v19 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      sub_2379DAD24(&v18, &v20);
      sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
      OUTLINED_FUNCTION_152();
    }

    OUTLINED_FUNCTION_133();
  }
}

void sub_2379DD76C()
{
  OUTLINED_FUNCTION_74();
  v16 = v1;
  OUTLINED_FUNCTION_109();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  type metadata accessor for ResultBox();
  v6 = OUTLINED_FUNCTION_120();
  *(v6 + 32) = 0u;
  *(v6 + 16) = 0u;
  v7 = OUTLINED_FUNCTION_65(v6);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_79();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_118(v12);

  v13 = v7;
  OUTLINED_FUNCTION_101();

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v6 + 16, &v17, &qword_27DE9AAA0, &unk_237C0B820);
  OUTLINED_FUNCTION_132();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      OUTLINED_FUNCTION_155();
      v16(0);
      OUTLINED_FUNCTION_131();
      swift_dynamicCast();
    }

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

void sub_2379DD908()
{
  OUTLINED_FUNCTION_97();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_0();
  type metadata accessor for ResultBox();
  v7 = OUTLINED_FUNCTION_120();
  v8 = OUTLINED_FUNCTION_29_0(v7);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_79();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_57(v13);

  v14 = v8;
  v15 = OUTLINED_FUNCTION_62();
  sub_237BBAEC8(v15, v16, v1, v17, v2);

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v0, &v20, &qword_27DE9AAA0, &unk_237C0B820);
  OUTLINED_FUNCTION_132();
  if (v19)
  {
    __break(1u);
  }

  else
  {
    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      OUTLINED_FUNCTION_155();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABF0, &qword_237C0B968);
      OUTLINED_FUNCTION_131();
      swift_dynamicCast();
    }

    OUTLINED_FUNCTION_133();
  }
}

void sub_2379DDB90()
{
  OUTLINED_FUNCTION_97();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_0();
  type metadata accessor for ResultBox();
  v7 = OUTLINED_FUNCTION_120();
  v8 = OUTLINED_FUNCTION_29_0(v7);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_79();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_57(v13);

  v14 = v8;
  v15 = OUTLINED_FUNCTION_62();
  sub_237BBAEC8(v15, v16, v1, v17, v2);

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v0, &v18, &qword_27DE9AAA0, &unk_237C0B820);
  if (v19 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      sub_2379DAD24(&v18, &v20);
      type metadata accessor for _Model();
      OUTLINED_FUNCTION_152();
    }

    OUTLINED_FUNCTION_133();
  }
}

void sub_2379DDDC4()
{
  OUTLINED_FUNCTION_74();
  v17 = v1;
  v18 = v2;
  OUTLINED_FUNCTION_109();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_60();
  type metadata accessor for ResultBox();
  v7 = OUTLINED_FUNCTION_120();
  *(v7 + 32) = 0u;
  *(v7 + 16) = 0u;
  v8 = OUTLINED_FUNCTION_65(v7);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_79();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_118(v13);

  v14 = v8;
  OUTLINED_FUNCTION_101();

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v7 + 16, &v19, &qword_27DE9AAA0, &unk_237C0B820);
  OUTLINED_FUNCTION_132();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      OUTLINED_FUNCTION_155();
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      OUTLINED_FUNCTION_131();
      swift_dynamicCast();
    }

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

void sub_2379DDFE8()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_108();
  type metadata accessor for ResultBox();
  v9 = OUTLINED_FUNCTION_120();
  *(v9 + 32) = 0u;
  *(v9 + 16) = 0u;
  v10 = OUTLINED_FUNCTION_65(v9);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_79();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v9;
  v15[5] = v4;
  v15[6] = v2;
  v15[7] = v10;

  v16 = v10;
  v17 = OUTLINED_FUNCTION_62();
  sub_237BBAEC8(v17, v18, v0, v19, v15);

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v9 + 16, &v22, &qword_27DE9AAA0, &unk_237C0B820);
  OUTLINED_FUNCTION_132();
  if (v21)
  {
    __break(1u);
  }

  else
  {
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      OUTLINED_FUNCTION_155();
      OUTLINED_FUNCTION_131();
      swift_dynamicCast();
    }

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

uint64_t sub_2379DE1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v150 = a4;
  v151 = a2;
  v146 = a3;
  v143 = a1;
  OUTLINED_FUNCTION_146();
  v132 = sub_237C05DBC();
  v6 = OUTLINED_FUNCTION_0(v132);
  v134 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_0();
  v133 = v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  v131 = v12;
  OUTLINED_FUNCTION_41_0();
  v13 = sub_237C0683C();
  v137 = OUTLINED_FUNCTION_0(v13);
  v138 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_14_0();
  v127 = v17;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58();
  v136 = v19;
  v20 = OUTLINED_FUNCTION_41_0();
  v21 = type metadata accessor for MLClassifierMetrics(v20);
  v22 = OUTLINED_FUNCTION_20(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_0();
  v126 = v25;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_58();
  v129 = v27;
  v28 = OUTLINED_FUNCTION_41_0();
  v29 = type metadata accessor for MLHandActionClassifier.ModelParameters(v28);
  v30 = *(v29 - 8);
  v148 = (v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_14_0();
  v149 = v32;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v125 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_30_0();
  v42 = type metadata accessor for MLHandPoseClassifier();
  v43 = *(v42 + 20);
  v44 = v42;
  v45 = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v147 = v4;
  *(v4 + v43) = v45;
  v46 = *(v44 + 28);
  v47 = v44;
  v142 = v44;
  v48 = (v4 + v46);
  sub_237C06FAC();
  v49 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v50 = *(v49 + 20);
  OUTLINED_FUNCTION_122();
  sub_2379E51D0();
  v51 = *(v49 + 24);
  OUTLINED_FUNCTION_122();
  sub_2379E5C70();
  v52 = *(v38 + 8);
  v140 = v36;
  v52(v5, v36);
  v141 = v52;
  *v48 = 0;
  v53 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v128 = v48;
  OUTLINED_FUNCTION_37_0();
  v145 = v53;
  swift_storeEnumTagMultiPayload();
  v54 = (v147 + *(v47 + 32));
  sub_237C06FAC();
  v55 = *(v49 + 20);
  OUTLINED_FUNCTION_122();
  sub_2379E51D0();
  v56 = *(v49 + 24);
  OUTLINED_FUNCTION_122();
  sub_2379E5C70();
  v57 = OUTLINED_FUNCTION_82();
  (v52)(v57);
  *v54 = 0;
  v125 = v54;
  OUTLINED_FUNCTION_37_0();
  swift_storeEnumTagMultiPayload();
  v58 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v59 = *(v151 + v58[7]);
  v60 = *(v151 + v58[5]);
  v61 = *(v151 + v58[6]);
  *v35 = 0;
  *(v35 + 1) = 0;
  *(v35 + 8) = 256;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload();
  v62 = v148;
  *&v35[v148[7]] = v60;
  *&v35[v62[8]] = v61;
  *&v35[v62[9]] = 1;
  *&v35[v62[10]] = v59;
  *&v35[v62[12]] = 0x403E000000000000;
  OUTLINED_FUNCTION_23_0();
  v139 = v63;
  v144 = v35;
  sub_2379E90B4(v35, v64);
  v65 = objc_allocWithZone(MEMORY[0x277CBFF20]);

  v66 = [v65 init];
  v67 = v147;
  v147[2] = v66;
  v68 = type metadata accessor for MLHandActionClassifier();
  v69 = (v67 + v68[8]);
  sub_237C06FAC();
  v70 = *(v49 + 20);
  OUTLINED_FUNCTION_145();
  sub_2379E51D0();
  v71 = *(v49 + 24);
  OUTLINED_FUNCTION_145();
  sub_2379E5C70();
  v72 = v140;
  v73 = v141;
  v141(v5, v140);
  *v69 = 0;
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  v74 = (v67 + v68[9]);
  sub_237C06FAC();
  v75 = *(v49 + 20);
  OUTLINED_FUNCTION_145();
  sub_2379E51D0();
  v130 = v49;
  v76 = *(v49 + 24);
  OUTLINED_FUNCTION_145();
  sub_2379E5C70();
  v73(v5, v72);
  v77 = v151;
  *v74 = 0;
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  v78 = v149;
  v79 = v150;
  *v67 = v150;
  sub_2379E90B4(v78, v67 + v68[7]);
  v80 = *(v78 + v148[9]);
  v81 = _s8GraphCNNCMa(0);
  OUTLINED_FUNCTION_91(v81);

  sub_237AED020(v82, 0, 21, 3, v80);
  OUTLINED_FUNCTION_2_2();
  sub_2379E9180();
  v83 = v146;

  v84 = v142;
  v67[1] = v143;
  v85 = v84[6];
  OUTLINED_FUNCTION_7_1();
  sub_2379E90B4(v77, v67 + v86);
  sub_237AC9A74(0xD000000000000012, 0x8000000237C170A0, v83, &v154);
  if (!v155)
  {

    sub_2379E9130(&v154, &qword_27DE9A998);
LABEL_7:
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v93 = swift_allocError();
    *v94 = 0xD00000000000002CLL;
    v94[1] = 0x8000000237C170C0;
    OUTLINED_FUNCTION_52(v93, v94);
    OUTLINED_FUNCTION_1_0();
    sub_2379E9180();
    goto LABEL_9;
  }

  type metadata accessor for _MetricUtilities.ConfusionMatrixMeter();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v87 = v152;
  v88 = v136;
  sub_237A347A4();
  v89 = *(v79 + 16);
  sub_237A34D48(v88, v89);
  v91 = v90;
  v92 = v135;
  sub_237A33B40(v79, &v154);
  if (v92)
  {

    OUTLINED_FUNCTION_1_0();
    sub_2379E9180();
    (*(v138 + 8))(v88, v137);
LABEL_9:
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180();
    return sub_2379E9180();
  }

  v149 = v89;
  sub_237A34FA0(v88, v79, 0, &v152);
  v143 = v87;
  v148 = 0;
  v96 = v152;
  v97 = v153;
  v98 = v154;
  v99 = BYTE8(v154);
  v152 = v154;
  v153 = BYTE8(v154);
  sub_2379DBCF4(v154, SBYTE8(v154));
  v100 = v131;
  sub_237A70ED4(&v152, v131);
  v152 = v96;
  v153 = v97;
  v101 = v133;
  sub_237A70ED4(&v152, v133);
  sub_2379DBC9C(v98, v99);
  v102 = *(v138 + 8);
  v138 += 8;
  v142 = v102;
  (v102)(v88, v137);
  v103 = v129;
  *v129 = 1.0 - v91;
  v104 = v130;
  v105 = v134 + 32;
  v106 = *(v134 + 32);
  v107 = v132;
  v106(v103 + *(v130 + 20), v100, v132);
  v108 = v103 + *(v104 + 24);
  v134 = v105;
  v141 = v106;
  v106(v108, v101, v107);
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  sub_2379DC1F8(v103, v128);
  sub_237AC9A74(0xD000000000000014, 0x8000000237C170F0, v146, &v154);

  if (v155)
  {
    v109 = swift_dynamicCast();
    v110 = v150;
    if (v109)
    {
      v111 = v142;
      v112 = v127;
      sub_237A347A4();
      sub_237A34D48(v112, v149);
      v114 = v113;
      v115 = v148;
      sub_237A33B40(v110, &v154);
      if (v115)
      {

        OUTLINED_FUNCTION_1_0();
        sub_2379E9180();
        (v111)(v112, v137);
        OUTLINED_FUNCTION_2_2();
        sub_2379E9180();
        return sub_2379E9180();
      }

      sub_237A34FA0(v112, v110, 0, &v152);
      v148 = 0;

      v116 = v152;
      v117 = v153;
      v118 = v154;
      v119 = BYTE8(v154);
      v152 = v154;
      v153 = BYTE8(v154);
      sub_2379DBCF4(v154, SBYTE8(v154));
      v120 = v131;
      sub_237A70ED4(&v152, v131);
      v152 = v116;
      v153 = v117;
      sub_2379DBCF4(v116, v117);
      sub_237A70ED4(&v152, v133);

      sub_2379DBC9C(v116, v117);
      OUTLINED_FUNCTION_1_0();
      sub_2379E9180();
      sub_2379DBC9C(v118, v119);
      (v111)(v112, v137);
      OUTLINED_FUNCTION_2_2();
      sub_2379E9180();
      v121 = v126;
      *v126 = 1.0 - v114;
      v122 = v130;
      v123 = v132;
      v124 = v141;
      (v141)(v121 + *(v130 + 20), v120, v132);
      v124(v121 + *(v122 + 24), v133, v123);
      OUTLINED_FUNCTION_67();
      swift_storeEnumTagMultiPayload();
      return sub_2379DC1F8(v121, v125);
    }

    else
    {

      OUTLINED_FUNCTION_1_0();
      sub_2379E9180();
      OUTLINED_FUNCTION_2_2();
      return sub_2379E9180();
    }
  }

  else
  {

    OUTLINED_FUNCTION_1_0();
    sub_2379E9180();
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180();
    return sub_2379E9130(&v154, &qword_27DE9A998);
  }
}

void MLHandPoseClassifier.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v96 = type metadata accessor for MLHandActionClassifier();
  v4 = OUTLINED_FUNCTION_0(v96);
  v83 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_134();
  v84 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  v87 = v10;
  v11 = OUTLINED_FUNCTION_41_0();
  v86 = type metadata accessor for MLHandActionClassifier.ModelParameters(v11);
  v12 = OUTLINED_FUNCTION_4(v86);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_0();
  v94 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v92 = v17;
  OUTLINED_FUNCTION_41_0();
  v89 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v18 = OUTLINED_FUNCTION_4(v89);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v88 = v22 - v21;
  OUTLINED_FUNCTION_41_0();
  v91 = _s20PersistentParametersVMa_0();
  v23 = OUTLINED_FUNCTION_4(v91);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v101 = v27 - v26;
  OUTLINED_FUNCTION_41_0();
  v104 = sub_237C05ADC();
  v28 = OUTLINED_FUNCTION_0(v104);
  v103 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_0();
  v97 = v32;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  v102 = v34;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v35 = *(v100 - 8);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_94();
  v99 = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v38 = type metadata accessor for MLHandPoseClassifier();
  v39 = (v3 + v38[7]);
  sub_237C06FAC();
  v40 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v41 = *(v40 + 20);
  OUTLINED_FUNCTION_144();
  sub_2379E51D0();
  v42 = *(v40 + 24);
  OUTLINED_FUNCTION_144();
  sub_2379E5C70();
  v85 = *(v35 + 8);
  v85(v1, v100);
  *v39 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  v95 = v38;
  v93 = v3;
  v43 = (v3 + v38[8]);
  sub_237C06FAC();
  v44 = *(v40 + 20);
  OUTLINED_FUNCTION_144();
  sub_2379E51D0();
  v45 = *(v40 + 24);
  OUTLINED_FUNCTION_144();
  sub_2379E5C70();
  v85(v1, v100);
  *v43 = 0;
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  sub_237C05A5C();
  (*(v103 + 16))(v97, v102, v104);
  sub_237A07C0C(v97, v101);
  if (v0)
  {
    OUTLINED_FUNCTION_9_0();
    sub_2379E9180();
    (*(v103 + 8))(v102, v104);

    sub_2379E9180();
    sub_2379E9180();
  }

  else
  {
    v98 = v40;
    v46 = OUTLINED_FUNCTION_40_0();
    sub_2379E90B4(v46, v88);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v47 = *v88;
      v48 = *(v88 + 8);
      v49 = *(v88 + 24);
      v50 = *(v88 + 32);
      v51 = *(v88 + 40);
      v52 = *(v88 + 56);

      sub_2379DF938(v47, v48, &v105);

      v53 = v105;
      LOBYTE(v52) = v106;
      sub_2379DFAE0(v105, v106, &v107);
      sub_2379DBC9C(v53, v52);
      v90 = sub_2379DFC10(v107, v108);
      sub_2379DBC9C(v47, v48);
      v54 = v94;
      v38 = v95;
      v55 = v91;
      v56 = 0x277CBF000;
    }

    else
    {
      sub_237B84894();
      v55 = v91;
      v56 = 0x277CBF000uLL;
      v58 = v57;
      v54 = v94;

      v90 = sub_2379DFFEC(v58);
      OUTLINED_FUNCTION_4_1();
      sub_2379E9180();
    }

    v59 = v93 + v38[6];
    v60 = v55[5];
    OUTLINED_FUNCTION_22_0();
    sub_2379E90B4(v101 + v61, v59);
    v62 = *(v101 + v55[6]);
    v63 = *(v101 + v55[7]);
    v64 = *(v101 + v55[8]);
    v65 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    *(v59 + v65[5]) = v62;
    *(v59 + v65[6]) = v63;
    *(v59 + v65[7]) = v64;
    *v92 = 0;
    *(v92 + 8) = 0;
    *(v92 + 16) = 256;
    type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    OUTLINED_FUNCTION_126();
    swift_storeEnumTagMultiPayload();
    *(v92 + v86[5]) = v62;
    *(v92 + v86[6]) = v63;
    *(v92 + v86[7]) = 1;
    *(v92 + v86[8]) = v64;
    *(v92 + v86[10]) = 0x403E000000000000;
    OUTLINED_FUNCTION_23_0();
    sub_2379E90B4(v92, v54);
    v87[2] = [objc_allocWithZone(*(v56 + 3872)) init];
    v66 = (v87 + v96[8]);
    sub_237C06FAC();
    v67 = *(v98 + 20);
    OUTLINED_FUNCTION_141();
    sub_2379E51D0();
    v68 = *(v98 + 24);
    OUTLINED_FUNCTION_141();
    sub_2379E5C70();
    v85(v1, v100);
    *v66 = 0;
    OUTLINED_FUNCTION_67();
    swift_storeEnumTagMultiPayload();
    v69 = (v87 + v96[9]);
    sub_237C06FAC();
    v70 = *(v98 + 20);
    OUTLINED_FUNCTION_141();
    sub_2379E51D0();
    v71 = *(v98 + 24);
    OUTLINED_FUNCTION_141();
    sub_2379E5C70();
    v72 = OUTLINED_FUNCTION_128();
    (v85)(v72);
    *v69 = 0;
    OUTLINED_FUNCTION_67();
    swift_storeEnumTagMultiPayload();
    *v87 = v90;
    sub_2379E90B4(v94, v87 + v96[7]);
    v73 = *(v94 + v86[7]);
    v74 = _s8GraphCNNCMa(0);
    OUTLINED_FUNCTION_91(v74);

    v76 = sub_237AED020(v75, 0, 21, 3, v73);
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180();
    v87[1] = v76;
    sub_237AE8BE0();
    sub_2379E90B4(v87, v84);
    v77 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    swift_allocObject();
    OUTLINED_FUNCTION_24_0();
    sub_2379E72FC(v84, v78 + v77);
    sub_2379DD56C();
    v80 = v79;

    v81 = v95[5];
    OUTLINED_FUNCTION_9_0();
    sub_2379E9180();
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180();
    OUTLINED_FUNCTION_10_0();
    sub_2379E9180();
    (*(v103 + 8))(v102, v104);

    *(v93 + v81) = v80;
    OUTLINED_FUNCTION_24_0();
    sub_2379E72FC(v87, v82);
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379DF794(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  if (a2)
  {
    swift_willThrow();
    OUTLINED_FUNCTION_59();
    sub_237C08EDC();

    OUTLINED_FUNCTION_80();
    v15[0] = 0xD00000000000001FLL;
    v15[1] = v5;
    v6 = OUTLINED_FUNCTION_55();
    MEMORY[0x2383DC360](v6);
    v7 = v15;
    v8 = OUTLINED_FUNCTION_110();
    MEMORY[0x2383DC360](v8);
    v9 = v15[0];
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_25_0(v10, v11);
  }

  else
  {
    v4 = *(a1 + 16);
    swift_retain_n();
    OUTLINED_FUNCTION_55();
    v12 = sub_237B6ACC0();

    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v7 = swift_allocObject();
    v7[2] = v12;

    sub_237A60248(v15);

    if (LOBYTE(v15[0]))
    {

      OUTLINED_FUNCTION_59();
      sub_237C08EDC();

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_102();
      v9 = v15[0];
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v13 = swift_allocError();
      OUTLINED_FUNCTION_25_0(v13, v14);
    }

    else
    {

      v9 = 0;
    }
  }

  *a3 = v7;
  *(a3 + 8) = v9;
}

void sub_2379DF938(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  if (a2)
  {
    swift_willThrow();
    OUTLINED_FUNCTION_59();
    sub_237C08EDC();

    OUTLINED_FUNCTION_80();
    v15[0] = 0xD00000000000001FLL;
    v15[1] = v5;
    v6 = OUTLINED_FUNCTION_55();
    MEMORY[0x2383DC360](v6);
    v7 = v15;
    v8 = OUTLINED_FUNCTION_110();
    MEMORY[0x2383DC360](v8);
    v9 = v15[0];
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_25_0(v10, v11);
  }

  else
  {
    v4 = *(a1 + 16);
    swift_retain_n();
    OUTLINED_FUNCTION_55();
    v12 = sub_237B6ACC0();

    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v7 = swift_allocObject();
    v7[2] = v12;

    sub_237A60248(v15);

    if (LOBYTE(v15[0]) == 2)
    {

      v9 = 0;
    }

    else
    {

      OUTLINED_FUNCTION_59();
      sub_237C08EDC();

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_102();
      v9 = v15[0];
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v13 = swift_allocError();
      OUTLINED_FUNCTION_25_0(v13, v14);
    }
  }

  *a3 = v7;
  *(a3 + 8) = v9;
}

void sub_2379DFAE0(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    sub_2379DBCF4(a1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v5 = sub_237C0925C();
    if (v5)
    {
      v6 = v5;
      sub_2379DBC9C(a1, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v6 = swift_allocError();
      *v11 = a1;
    }

    v12 = 1;
    goto LABEL_7;
  }

  v7 = *(a1[2] + 16);
  v8 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v8, v9);
  v10 = sub_237B0E068(v7);
  v13 = v10;
  if (v10)
  {
    type metadata accessor for CMLColumn();
    OUTLINED_FUNCTION_103();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v15, v16);
    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v6 = swift_allocObject();
    v12 = 0;
    *(v6 + 16) = v14;
LABEL_7:
    *a3 = v6;
    *(a3 + 8) = v12;
    return;
  }

  __break(1u);
}

uint64_t sub_2379DFC10(uint64_t a1, char a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_154();
  }

  v2 = *(a1 + 16);
  result = sub_237A2F128();
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = result;
    if (result)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      do
      {
        v7 = OUTLINED_FUNCTION_88();
        v9 = sub_2379DBCF4(v7, v8);
        OUTLINED_FUNCTION_119(v9);
        v10 = OUTLINED_FUNCTION_88();
        sub_2379DBC9C(v10, v11);
        v12 = v19;
        v13 = v20;
        if (v21 != 2)
        {
          sub_2379E8CE8(v19, v20, v21);
          v12 = 0;
          v13 = 0xE000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_35_0();
          sub_237BC0CB8();
          v6 = v17;
        }

        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        if (v15 >= v14 >> 1)
        {
          OUTLINED_FUNCTION_106(v14);
          sub_237BC0CB8();
          v6 = v18;
        }

        ++v5;
        *(v6 + 16) = v15 + 1;
        v16 = v6 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
      }

      while (v4 != v5);
    }

    return OUTLINED_FUNCTION_154();
  }

  __break(1u);
  return result;
}

uint64_t sub_2379DFD2C(uint64_t a1, char a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_154();
  }

  v2 = *(a1 + 16);
  result = sub_237A2F128();
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = result;
    if (result)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        v7 = OUTLINED_FUNCTION_88();
        v9 = sub_2379DBCF4(v7, v8);
        OUTLINED_FUNCTION_119(v9);
        v10 = OUTLINED_FUNCTION_88();
        sub_2379DBC9C(v10, v11);
        v12 = v22;
        if (v24)
        {
          sub_2379E8CE8(v22, v23, v24);
          v12 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_12:
          v15 = OUTLINED_FUNCTION_35_0();
          sub_237BC0EB4(v15, v16, v17, v18);
          v6 = v19;
        }

        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
        if (v14 >= v13 >> 1)
        {
          v20 = OUTLINED_FUNCTION_106(v13);
          sub_237BC0EB4(v20, v14 + 1, 1, v6);
          v6 = v21;
        }

        ++v5;
        *(v6 + 16) = v14 + 1;
        *(v6 + 8 * v14 + 32) = v12;
        if (v4 == v5)
        {
          return OUTLINED_FUNCTION_154();
        }
      }
    }

    return OUTLINED_FUNCTION_154();
  }

  __break(1u);
  return result;
}

uint64_t sub_2379DFE44(uint64_t a1, char a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_154();
  }

  v2 = *(a1 + 16);
  result = sub_237A2F128();
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = result;
    if (result)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        v7 = OUTLINED_FUNCTION_88();
        v9 = sub_2379DBCF4(v7, v8);
        OUTLINED_FUNCTION_119(v9);
        v10 = OUTLINED_FUNCTION_88();
        sub_2379DBC9C(v10, v11);
        if (v24 == 1)
        {
          v12 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_2379E8CE8(v22, v23, v24);
          v12 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_12:
            v15 = OUTLINED_FUNCTION_35_0();
            sub_237BC0EDC(v15, v16, v17, v18);
            v6 = v19;
          }
        }

        v14 = *(v6 + 16);
        v13 = *(v6 + 24);
        if (v14 >= v13 >> 1)
        {
          v20 = OUTLINED_FUNCTION_106(v13);
          sub_237BC0EDC(v20, v14 + 1, 1, v6);
          v6 = v21;
        }

        ++v5;
        *(v6 + 16) = v14 + 1;
        *(v6 + 8 * v14 + 32) = v12;
        if (v4 == v5)
        {
          return OUTLINED_FUNCTION_154();
        }
      }
    }

    return OUTLINED_FUNCTION_154();
  }

  __break(1u);
  return result;
}

void *sub_2379DFF68(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_237BC246C();
      if (sub_237A36110(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

void *sub_2379DFFEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 16);
  v4 = sub_237BC24D0();
  v5 = sub_237BA2378(&v7, v4 + 4, v2, a1);
  sub_2379E925C();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v4;
}

void *sub_2379E007C(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    v4 = 8 * a2;
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
    v4 = 8 * a2;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 8);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

void *sub_2379E0124(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    v4 = 4 * a2;
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
    v4 = 4 * a2;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_2379E01CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2379E01EC, 0, 0);
}

uint64_t sub_2379E01EC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 24) + 8);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2379E027C;

  return sub_237BAF670();
}

uint64_t sub_2379E027C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 40) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_2379E03AC()
{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_8();
  return v1();
}

void static MLHandPoseClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static MLHandPoseClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v5 = v4;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA08, &qword_237C0B700);
    v7 = OUTLINED_FUNCTION_91(v6);
    sub_237BEBD4C(v7, v5);
  }
}

void static MLHandPoseClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MLTrainingSessionParameters();
  v8 = OUTLINED_FUNCTION_20(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v11);
  v13 = &v33[-1] - v12;
  v14 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v15 = OUTLINED_FUNCTION_20(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for MLHandPoseClassifier.DataSource();
  v22 = OUTLINED_FUNCTION_20(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  v28 = OUTLINED_FUNCTION_40_0();
  sub_2379E90B4(v28, v27);
  OUTLINED_FUNCTION_7_1();
  sub_2379E90B4(a2, v20);
  OUTLINED_FUNCTION_5_1();
  sub_2379E90B4(a3, v13);
  v29 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v29);
  sub_237A865A4();
  if (!v4)
  {
    v33[3] = v29;
    v33[4] = &off_284AC2E28;
    v33[0] = v30;
    OUTLINED_FUNCTION_5_1();
    sub_2379E90B4(a3, v3);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA10, &qword_237C0B708);
    OUTLINED_FUNCTION_91(v31);
    sub_2379E3ED4(v33, v3, 23, &qword_27DE9AC60, &qword_237C0B9A8);
  }
}

uint64_t static MLHandPoseClassifier.resume(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA08, &qword_237C0B700);
  v3 = OUTLINED_FUNCTION_91(v2);

  return sub_237BEBD4C(v3, a1);
}

void static MLHandPoseClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v4 = type metadata accessor for MLTrainingSessionParameters();
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-1] - v9;
  OUTLINED_FUNCTION_5_1();
  sub_2379E90B4(a1, v10);
  v11 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate();
  OUTLINED_FUNCTION_91(v11);
  OUTLINED_FUNCTION_125();
  sub_237A86140();
  if (!v2)
  {
    v17[3] = v11;
    v17[4] = &off_284AC2E28;
    v17[0] = v12;
    OUTLINED_FUNCTION_5_1();
    v13 = OUTLINED_FUNCTION_128();
    sub_2379E90B4(v13, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA10, &qword_237C0B708);
    OUTLINED_FUNCTION_91(v15);
    sub_2379E3ED4(v17, v1, 23, &qword_27DE9AC60, &qword_237C0B9A8);
  }
}

void sub_2379E07A8()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC78, &unk_237C0B9B0);
  OUTLINED_FUNCTION_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = (v52 - v15);
  v54 = _s20PersistentParametersVMa_0();
  v17 = OUTLINED_FUNCTION_4(v54);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v53 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_30_0();
  v26 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  if (v8)
  {
    *v16 = v10;
    OUTLINED_FUNCTION_147();
    swift_storeEnumTagMultiPayload();
    v35 = v10;
    v4(v16);
    v36 = &qword_27DE9AC78;
    v37 = v16;
LABEL_3:
    sub_2379E9130(v37, v36);
    goto LABEL_13;
  }

  v38 = v34;
  v52[1] = v2;
  sub_2379E8624(v6 + qword_27DEACD88, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
  OUTLINED_FUNCTION_46();
  type metadata accessor for HandPoseClassifierTrainingSessionDelegate();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v39 = v55;
  v40 = *(v55 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
  if (!v40)
  {

    goto LABEL_13;
  }

  v41 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v39 + v41, v0, &qword_27DE9AC80, &unk_237C0F350);
  v42 = v54;
  if (__swift_getEnumTagSinglePayload(v0, 1, v54))
  {

    v36 = &qword_27DE9AC80;
    v37 = v0;
    goto LABEL_3;
  }

  v43 = v40;
  v44 = v53;
  sub_2379E90B4(v0, v53);
  v52[0] = v43;

  sub_2379E9130(v0, &qword_27DE9AC80);
  v45 = v42[5];
  OUTLINED_FUNCTION_22_0();
  sub_2379E90B4(v44 + v46, v32);
  v47 = *(v44 + v42[6]);
  v48 = *(v44 + v42[7]);
  v49 = *(v44 + v42[8]);
  OUTLINED_FUNCTION_10_0();
  sub_2379E9180();
  *(v32 + v26[5]) = v47;
  *(v32 + v26[6]) = v48;
  *(v32 + v26[7]) = v49;
  OUTLINED_FUNCTION_47();
  v50 = sub_2379E72FC(v32, v38);
  v51 = *(v39 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
  if (v51)
  {
    MEMORY[0x28223BE20](v50);
    v52[-4] = v52[0];
    v52[-3] = v38;
    v52[-2] = v39;
    v52[-1] = v51;

    sub_237BBDCF4(sub_2379E910C, v16);

    v4(v16);

    sub_2379E9130(v16, &qword_27DE9AC78);
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_0();
  sub_2379E9180();
LABEL_13:
  OUTLINED_FUNCTION_150();
}

uint64_t sub_2379E0BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5;
  v12 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379E90B4(a2, v15);
  v16 = *(a3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  result = sub_2379DE1B8(a1, v15, v16, a4);
  if (v7)
  {
    *a5 = v7;
  }

  return result;
}

void sub_2379E0CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_129(a1, a2);
  MLDataTable.subscript.getter();
  if (v34)
  {
    sub_2379DBC9C(v33, 1);
LABEL_14:
    v31 = *(a1 + 8);
    v33 = *a1;
    v30 = v33;
    LOBYTE(v34) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B660;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    LOBYTE(v35) = 5;

    sub_2379DBCF4(v30, v31);
    sub_2379F21A4(&v33, inited, &v35);
    sub_2379DBC9C(v33, v34);
    swift_setDeallocating();
    sub_237B9082C();
    return;
  }

  v6 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v6, v7);
  sub_237A60248(&v35);
  v8 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v8, v9);
  v10 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v10, v11);
  if (v35 != 3)
  {
    goto LABEL_14;
  }

  MLDataTable.subscript.getter();
  v12 = v35;
  v13 = v36;
  sub_237AC3F10(1, sub_2379E9264, 0, v35, v36, &v33);
  sub_2379DBC9C(v12, v13);
  v37 = v33;
  v14 = v34;
  MLDataTable.subscript.getter();
  v15 = v33;
  v16 = v34;
  if (v34)
  {
    v17 = -1;
  }

  else
  {
    v18 = *(v33 + 2);

    v17 = sub_237A2F128();
    sub_2379DBC9C(v15, 0);
  }

  sub_2379DBC9C(v15, v16);
  sub_237AB08AC(v37, v14, &v35);
  v19 = v35;
  v20 = v36;
  if (v36)
  {
    v21 = -1;
  }

  else
  {
    v22 = *(v35 + 16);
    sub_2379DBCF4(v35, 0);
    v21 = sub_237A2F128();
    sub_2379DBC9C(v19, 0);
  }

  sub_2379DBC9C(v19, v20);
  if (!__OFSUB__(v17, v21))
  {
    if (v17 != v21)
    {
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000003DLL, 0x8000000237C17110);
      v35 = v17 - v21;
      v23 = OUTLINED_FUNCTION_115();
      MEMORY[0x2383DC360](v23);

      MEMORY[0x2383DC360](0xD00000000000006BLL, 0x8000000237C17150);
      v35 = 3;
      v24 = OUTLINED_FUNCTION_115();
      MEMORY[0x2383DC360](v24);

      MEMORY[0x2383DC360](8236, 0xE200000000000000);
      v35 = 21;
      v25 = OUTLINED_FUNCTION_115();
      MEMORY[0x2383DC360](v25);

      MEMORY[0x2383DC360](0xD00000000000003CLL, 0x8000000237C171C0);
      v26 = v33;
      v27 = v34;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v28 = swift_allocError();
      *v29 = v26;
      v29[1] = v27;
      OUTLINED_FUNCTION_52(v28, v29);
      sub_2379DBC9C(v37, v14);
      return;
    }

    sub_237AB09D4(v37, v14, a2, a3);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_2379E1068(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) == 3)
  {
    v4[1] = v2;
    v4[2] = v3;
    v4[0] = *a1;
    sub_2379E10AC(v4, a2);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_2379E10AC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *&v132 = MEMORY[0x277D84F90];
  sub_237C08FCC();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v5 = sub_237AC8938(v132, 65600);
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = v5;
  v7 = sub_237C08D4C();
  sub_237A2E9F4();
  if (sub_237A01878() != 1)
  {

LABEL_56:
    *a2 = 0;
    return;
  }

  v136 = 0;
  v137 = 0;
  v135 = v3;

  v128 = v7;
  while (1)
  {
    sub_237BABD8C(&v132);
    v8 = *(&v132 + 1);
    *v129 = v132;
    v9 = v133;
    if (v134 != 3)
    {
      if (v134 == 255)
      {

        MLDataValue.MultiArrayType.init(_:)(v6);
        *a2 = v132;
        return;
      }

      OUTLINED_FUNCTION_143();
      sub_2379E9268(v109, v110, v111, v112);

      goto LABEL_63;
    }

    v10 = OUTLINED_FUNCTION_55();
    sub_2379E9288(v10, v11, 3);
    sub_237A2E9F4();
    if (sub_237A01878() != 3)
    {

      OUTLINED_FUNCTION_143();
      sub_2379E9268(v113, v114, v115, 3);
      OUTLINED_FUNCTION_143();
      sub_2379E9268(v116, v117, v118, 3);
      goto LABEL_56;
    }

    v122 = v9;
    sub_2379E9288(v8, v9, 3);
    v123 = v8;
    v124 = a2;
    v126 = v6;
LABEL_7:
    sub_237BABD8C(&v132);
    v12 = *(&v132 + 1);
    v130 = v132;
    v13 = v133;
    v14 = v134;
    if (v134 == 3)
    {
      break;
    }

    if (v134 != 255)
    {
      sub_2379E9268(v129[0], v8, v122, 3);
      sub_2379E9268(v129[0], v8, v122, 3);
      v97 = v130;
      v98 = v12;
      v99 = v13;
      v100 = v14;
LABEL_62:
      sub_2379E9268(v97, v98, v99, v100);

LABEL_63:

      goto LABEL_56;
    }

    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v77, v78, v79, v80);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v81, v82, v83, v84);
  }

  sub_2379E9288(*(&v132 + 1), v133, 3);
  sub_237A2E9F4();
  if (sub_237A01878() != 21)
  {
    v101 = OUTLINED_FUNCTION_147();
    sub_2379E9268(v101, v102, v13, 3);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v103, v104, v105, v106);
    v107 = OUTLINED_FUNCTION_147();
    sub_2379E9268(v107, v108, v13, 3);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    goto LABEL_62;
  }

  v125 = v13;
  sub_2379E9288(v12, v13, 3);
  v15 = 0;
  while (1)
  {
    while (1)
    {
      if (v15 == sub_237A2E9F4())
      {
        OUTLINED_FUNCTION_72();
        sub_2379E9268(v69, v70, v71, v72);
        OUTLINED_FUNCTION_72();
        sub_2379E9268(v73, v74, v75, v76);

        v8 = v123;
        a2 = v124;
        goto LABEL_7;
      }

      v16 = sub_237A2E9C8(v15);
      switch(sub_237A2E910())
      {
        case 1u:
          v45 = *(v16 + 16);

          sub_237B0E848();
          v47 = v46;

          v19 = 0;
          v18 = v47;
          v20 = 1;
          goto LABEL_30;
        case 2u:

          v18 = sub_237A2DE60();
          v19 = v43;
          v20 = 2;

          goto LABEL_30;
        case 3u:
          v44 = sub_237B0DD68(*(v16 + 16));
          if (!v44)
          {
            goto LABEL_78;
          }

          type metadata accessor for CMLSequence();
          v18 = swift_allocObject();
          v19 = 0;
          *(v18 + 16) = v44;
          *(v18 + 24) = 1;
          v20 = 3;
          goto LABEL_30;
        case 4u:
          v21 = sub_237B0DDC8(*(v16 + 16));
          if (!v21)
          {
            goto LABEL_77;
          }

          type metadata accessor for CMLDictionary();
          *(swift_initStackObject() + 16) = v21;
          v18 = MEMORY[0x277D84F98];
          v131 = MEMORY[0x277D84F98];
          swift_retain_n();
          v22 = 0;
          break;
        case 5u:

          v18 = 0;
          v19 = 0;
          v20 = 6;
          goto LABEL_30;
        case 6u:

          sub_237AC8278(v48, &v132);
          v18 = v132;
          if (!v132)
          {
            goto LABEL_79;
          }

          v19 = 0;
          v20 = 5;
          goto LABEL_30;
        default:
          v17 = *(v16 + 16);

          v18 = sub_237B0ECCC(v17);

          v19 = 0;
          v20 = 0;
          goto LABEL_30;
      }

      while (v22 != sub_237A2EAA4())
      {
        sub_237A2EB64(v22);
        v22 = sub_237B6A974(v22);
        v23 = sub_237A2DE60();
        v25 = v24;

        sub_237AFC548(v26, &v132);

        v27 = v132;
        v127 = v133;
        *&v132 = v23;
        *(&v132 + 1) = v25;
        LOBYTE(v133) = 2;
        v28 = OUTLINED_FUNCTION_84();
        v30 = sub_237ACB180(v28, v29, 2);
        v32 = *(v18 + 16);
        v33 = (v31 & 1) == 0;
        v34 = __OFADD__(v32, v33);
        v35 = v32 + v33;
        if (v34)
        {
          goto LABEL_75;
        }

        v36 = v31;
        if (*(v18 + 24) < v35)
        {
          sub_237ABF994(v35, 1);
          v18 = v131;
          v30 = sub_237ACB180(v132, *(&v132 + 1), v133);
          if ((v36 & 1) != (v37 & 1))
          {
            sub_237C0932C();
            __break(1u);
LABEL_82:
            OUTLINED_FUNCTION_50();
            v119 = swift_allocError();
            swift_willThrow();

            v120 = v119;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
            if (swift_dynamicCast())
            {
              sub_237C08EDC();
              MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
              sub_237C0907C();
              v121 = OUTLINED_FUNCTION_110();
              MEMORY[0x2383DC360](v121);
              sub_237C090DC();
              __break(1u);
            }

            sub_2379E8CE8(v27, *(&v27 + 1), v127);

            sub_2379E8CE8(v132, *(&v132 + 1), v133);

            goto LABEL_80;
          }
        }

        if (v36)
        {
          goto LABEL_82;
        }

        *(v18 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v38 = *(v18 + 48) + 24 * v30;
        v39 = v133;
        *v38 = v132;
        *(v38 + 16) = v39;
        v40 = *(v18 + 56) + 24 * v30;
        *v40 = v27;
        *(v40 + 16) = v127;
        v41 = *(v18 + 16);
        v34 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v34)
        {
          goto LABEL_76;
        }

        *(v18 + 16) = v42;
      }

      v20 = 4;

      v19 = 0;
      v6 = v126;
LABEL_30:
      if (v15 >= sub_237A2E9F4())
      {
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
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);

        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);
        while (1)
        {
LABEL_80:
          swift_unexpectedError();
          __break(1u);
        }
      }

      v49 = [v6 strides];
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      v50 = sub_237C0893C();

      if ((v50 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x2383DCAF0](0, v50);
      }

      else
      {
        if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v51 = *(v50 + 32);
      }

      v52 = v51;

      v53 = [v52 integerValue];

      v54 = *v129 * v53;
      if ((*v129 * v53) >> 64 != (*v129 * v53) >> 63)
      {
        goto LABEL_67;
      }

      v55 = [v6 strides];
      v56 = sub_237C0893C();

      if ((v56 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x2383DCAF0](1, v56);
      }

      else
      {
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_70;
        }

        v57 = *(v56 + 40);
      }

      v58 = v57;

      v59 = [v58 integerValue];

      v60 = v130 * v59;
      if ((v130 * v59) >> 64 != (v130 * v59) >> 63)
      {
        goto LABEL_69;
      }

      v61 = v54 + v60;
      if (__OFADD__(v54, v60))
      {
        goto LABEL_71;
      }

      v62 = [v6 strides];
      v63 = sub_237C0893C();

      if ((v63 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x2383DCAF0](2, v63);
      }

      else
      {
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
          goto LABEL_73;
        }

        v64 = *(v63 + 48);
      }

      v65 = v64;

      v66 = [v65 integerValue];

      v67 = v15 * v66;
      if ((v15 * v66) >> 64 != (v15 * v66) >> 63)
      {
        goto LABEL_72;
      }

      v34 = __OFADD__(v61, v67);
      v68 = v61 + v67;
      if (v34)
      {
        goto LABEL_74;
      }

      ++v15;
      if (v20)
      {
        break;
      }

      *(v128 + 8 * v68) = v18;
    }

    if (v20 != 1)
    {
      break;
    }

    *(v128 + 8 * v68) = v18;
  }

  sub_2379E8CE8(v18, v19, v20);
  v85 = OUTLINED_FUNCTION_107();
  sub_2379E9268(v85, v86, v125, 3);
  OUTLINED_FUNCTION_72();
  sub_2379E9268(v87, v88, v89, v90);
  v91 = OUTLINED_FUNCTION_107();
  sub_2379E9268(v91, v92, v125, 3);
  OUTLINED_FUNCTION_72();
  sub_2379E9268(v93, v94, v95, v96);

  *v124 = 0;
}

void sub_2379E1D18(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3;
    v42 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_81();
    sub_237AC8A74();
    v6 = v42;
    v7 = sub_237AE854C(v5);
    v9 = v8;
    v11 = v10;
    v12 = 0;
    v39 = v5 + 56;
    v35 = v5 + 64;
    v36 = v4;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v5 + 32))
      {
        v13 = v7 >> 6;
        if ((*(v39 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v5 + 36) != v9)
        {
          goto LABEL_27;
        }

        v38 = v12;
        v14 = v5;
        v40 = *(*(v5 + 48) + 8 * v7);
        a1(v41, &v40);
        if (v3)
        {
          goto LABEL_31;
        }

        v15 = v41[0];
        v16 = v41[1];
        v42 = v6;
        v17 = *(v6 + 16);
        v18 = v6;
        v19 = v9;
        if (v17 >= *(v6 + 24) >> 1)
        {
          OUTLINED_FUNCTION_67();
          v34 = v31;
          v33 = v32;
          sub_237AC8A74();
          v16 = v33;
          v15 = v34;
          v19 = v9;
          v18 = v42;
        }

        *(v18 + 16) = v17 + 1;
        v20 = v18 + 16 * v17;
        *(v20 + 32) = v15;
        *(v20 + 40) = v16;
        if (v11)
        {
          goto LABEL_32;
        }

        v21 = 1 << *(v14 + 32);
        if (v7 >= v21)
        {
          goto LABEL_28;
        }

        v22 = *(v39 + 8 * v13);
        if ((v22 & (1 << v7)) == 0)
        {
          goto LABEL_29;
        }

        v6 = v18;
        v5 = v14;
        if (*(v14 + 36) != v19)
        {
          goto LABEL_30;
        }

        v23 = v22 & (-2 << (v7 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v24 = v36;
        }

        else
        {
          v25 = v18;
          v26 = v13 << 6;
          v27 = v13 + 1;
          v24 = v36;
          v28 = (v35 + 8 * v13);
          while (v27 < (v21 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              sub_2379E8FD0(v7, v19, 0);
              v21 = __clz(__rbit64(v29)) + v26;
              goto LABEL_20;
            }
          }

          sub_2379E8FD0(v7, v19, 0);
LABEL_20:
          v6 = v25;
        }

        v12 = v38 + 1;
        if (v38 + 1 == v24)
        {
          return;
        }

        v11 = 0;
        v9 = *(v5 + 36);
        v7 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_2379E1FAC(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_237AC8A74();
  v6 = v18;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v16[0] = *(i - 1);
    v16[1] = v9;

    a1(v17, v16);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v17[0];
    v10 = v17[1];
    v18 = v6;
    v12 = *(v6 + 16);
    if (v12 >= *(v6 + 24) >> 1)
    {
      sub_237AC8A74();
      v6 = v18;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 16 * v12;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2379E20D4(void (*a1)(__int128 *__return_ptr, void *))
{
  v3 = v1;
  v4 = OUTLINED_FUNCTION_84();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = sub_2379E9028(&qword_27DE9AA90, &qword_27DE9AA88);
  v8 = sub_237C08B3C();
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v30 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_81();
    sub_237AC8A54();
    v25 = v30;
    sub_237C08B2C();
    if ((v8 & 0x8000000000000000) == 0)
    {
      v24 = v2;
      for (i = 0; ; ++i)
      {
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v12 = v7;
        v13 = v3;
        v14 = v6;
        v15 = v12;
        v16 = sub_237C08B9C();
        v18 = v17[1];
        v27[0] = *v17;
        v27[1] = v18;

        v16(v28, 0);
        a1(&v29, v27);
        if (v24)
        {
          goto LABEL_13;
        }

        v19 = v29;
        v20 = v25;
        v30 = v25;
        v21 = *(v25 + 16);
        if (v21 >= *(v25 + 24) >> 1)
        {
          OUTLINED_FUNCTION_99();
          v26 = v22;
          sub_237AC8A54();
          v19 = v26;
          v20 = v30;
        }

        *(v20 + 16) = v21 + 1;
        v25 = v20;
        *(v20 + 16 * v21 + 32) = v19;
        v3 = v13;
        v6 = v14;
        v7 = v15;
        sub_237C08B6C();
        if (v11 == v8)
        {
          return v25;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:

    __break(1u);
  }

  return result;
}

uint64_t sub_2379E22EC(void (*a1)(uint64_t *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_81();
    sub_237AC8D14();
    v6 = v26;
    for (i = (a3 + 40); ; i += 2)
    {
      v9 = *i;
      v21[0] = *(i - 1);
      v21[1] = v9;

      a1(&v22, v21, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v22;
      v10 = v23;
      v12 = v24;
      v13 = v25;
      v26 = v6;
      v14 = *(v6 + 16);
      if (v14 >= *(v6 + 24) >> 1)
      {
        v18 = v23;
        v16 = v25;
        sub_237AC8D14();
        v13 = v16;
        v10 = v18;
        v6 = v26;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 32 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
      *(v15 + 48) = v12;
      *(v15 + 56) = v13;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

void sub_2379E244C()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v3 = v2;
  v24 = v4;
  v23 = sub_237C0683C();
  v5 = OUTLINED_FUNCTION_0(v23);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v25 = v11 - v10;
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_237C090EC())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_73();
      return;
    }

    v27 = MEMORY[0x277D84F90];
    v13 = OUTLINED_FUNCTION_81();
    sub_237AC8D54(v13, v14, 0);
    if (i < 0)
    {
      break;
    }

    v15 = 0;
    v21 = v3;
    v22 = v3 & 0xC000000000000001;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v22)
      {
        v17 = MEMORY[0x2383DCAF0](v15, v3);
      }

      else
      {
        if (v15 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v17 = *(v3 + 8 * v15 + 32);
      }

      v3 = v17;
      v26 = v17;
      v24(&v26);
      if (v1)
      {
        goto LABEL_20;
      }

      v1 = 0;

      v19 = *(v27 + 16);
      v18 = *(v27 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_237AC8D54(v18 > 1, v19 + 1, 1);
      }

      *(v27 + 16) = v19 + 1;
      (*(v7 + 32))(v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v25, v23);
      ++v15;
      v3 = v21;
      if (v16 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

void sub_2379E2664()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v3 = v2;
  v21 = v4;
  v22 = v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB70, &unk_237C0E600);
  OUTLINED_FUNCTION_0(v20);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = *(v3 + 16);
  if (v13)
  {
    v23 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_81();
    sub_237AC8DD4();
    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = v3 + v19;
    v18 = (v7 + 32);
    v15 = *(v7 + 72);
    while (1)
    {
      v21(v14);
      if (v1)
      {
        break;
      }

      v1 = 0;
      v16 = *(v23 + 16);
      if (v16 >= *(v23 + 24) >> 1)
      {
        sub_237AC8DD4();
      }

      *(v23 + 16) = v16 + 1;
      (*v18)(v23 + v19 + v16 * v15, v12, v20);
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

void sub_2379E2800()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  OUTLINED_FUNCTION_0(v17);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_0();
  v6 = *(v2 + 16);
  if (v6)
  {
    OUTLINED_FUNCTION_81();
    sub_237AC8DB4();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB70, &unk_237C0E600);
    OUTLINED_FUNCTION_1(v7);
    v9 = *(v8 + 80);
    OUTLINED_FUNCTION_78();
    v16 = *(v10 + 72);
    while (1)
    {
      v11 = OUTLINED_FUNCTION_123();
      v12(v11);
      if (v0)
      {
        break;
      }

      OUTLINED_FUNCTION_111();
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        sub_237AC8DB4();
      }

      v14 = OUTLINED_FUNCTION_51();
      v15(v14);
      v2 += v16;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

void sub_2379E2980()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  OUTLINED_FUNCTION_0(v17);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_0();
  v6 = *(v2 + 16);
  if (v6)
  {
    OUTLINED_FUNCTION_81();
    sub_237AC8DF4();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
    OUTLINED_FUNCTION_1(v7);
    v9 = *(v8 + 80);
    OUTLINED_FUNCTION_78();
    v16 = *(v10 + 72);
    while (1)
    {
      v11 = OUTLINED_FUNCTION_123();
      v12(v11);
      if (v0)
      {
        break;
      }

      OUTLINED_FUNCTION_111();
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        sub_237AC8DF4();
      }

      v14 = OUTLINED_FUNCTION_51();
      v15(v14);
      v2 += v16;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

uint64_t sub_2379E2B2C(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t))
{
  v5 = v4;
  v6 = *(a3 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v22 = MEMORY[0x277D84F90];
    a4(0, v6, 0);
    v7 = v22;
    v9 = sub_237C05ADC();
    OUTLINED_FUNCTION_1(v9);
    v11 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    while (1)
    {
      a1(&v21, v11, &v20);
      if (v5)
      {
        break;
      }

      v5 = 0;
      v14 = v21;
      v22 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        a4(v15 > 1, v16 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v16 + 1;
      *(v7 + 8 * v16 + 32) = v14;
      v11 += v13;
      if (!--v6)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_2379E2CD4(uint64_t a1, void *a2)
{
  sub_237AB0A6C();
  if (v3)
  {
    return v2;
  }

  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_237C08FCC();
    v8 = 32;
    do
    {
      v9 = *(v6 + v8);
      sub_237C08F8C();
      v10 = *(v15 + 16);
      sub_237C08FEC();
      sub_237C08FFC();
      sub_237C08F9C();
      v8 += 8;
      --v7;
    }

    while (v7);

    v11 = v15;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_237AB0E94(v11, 1, 21);

  if (*(v12 + 16))
  {
    v14 = *(v12 + 32);

    v2 = sub_2379E2EE8(v14, a2);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_2379E2E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for MLHandPoseClassifier();
  result = sub_2379E2CD4(a1, *(a2 + *(v9 + 20)));
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_2379E2EE8(void *a1, void *a2)
{
  v3 = v2;
  v93 = *MEMORY[0x277D85DE8];
  v6 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v7 = sub_237C0893C();

  v8 = sub_237A254D8(v7);

  if (v8 != 3)
  {
    goto LABEL_37;
  }

  v75 = a1;
  v9 = [a1 shape];
  v10 = sub_237C0893C();

  v11 = sub_237A254D8(v10);
  if (v11)
  {
    v12 = v11;
    *&v91[0] = MEMORY[0x277D84F90];
    sub_237AC8A34();
    if (v12 < 0)
    {
      goto LABEL_48;
    }

    v73 = a2;
    v13 = 0;
    v8 = *&v91[0];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2383DCAF0](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 integerValue];

      *&v91[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_106(v17);
        sub_237AC8A34();
        v8 = *&v91[0];
      }

      ++v13;
      *(v8 + 16) = v18 + 1;
      *(v8 + 8 * v18 + 32) = v16;
    }

    while (v12 != v13);

    a2 = v73;
    v3 = v2;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v19 = sub_237AC6FE0(v8, &unk_284ABFED8);

  if ((v19 & 1) == 0)
  {
LABEL_37:
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v60 = swift_allocError();
    *v61 = 0xD000000000000025;
    v61[1] = 0x8000000237C17020;
    OUTLINED_FUNCTION_52(v60, v61);
    goto LABEL_38;
  }

  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = 0x7365736F70;
  *(inited + 40) = 0xE500000000000000;
  v22 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_2379E8EE0(0, &qword_27DE9AC50, 0x277CBFEF8);
  *(inited + 48) = v22;
  sub_237C085AC();
  v23 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  OUTLINED_FUNCTION_125();
  v8 = v24;
  v25 = sub_237AD4714();
  if (!v3)
  {
    v26 = v25;
    *&v91[0] = 0;
    v27 = [v20 predictionFromFeatures:v25 error:v91];
    v8 = *&v91[0];
    if (!v27)
    {
      v64 = *&v91[0];
      sub_237C0593C();

      swift_willThrow();
      goto LABEL_38;
    }

    v28 = v27;
    v29 = *&v91[0];
    v30 = sub_237C086BC();
    v31 = [v28 featureValueForName_];

    if (!v31)
    {
      v8 = 0x8000000237C17070;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v65 = swift_allocError();
      *v66 = 0xD000000000000028;
      v66[1] = 0x8000000237C17070;
      OUTLINED_FUNCTION_52(v65, v66);

      swift_unknownObjectRelease();
      goto LABEL_38;
    }

    v32 = [v31 dictionaryValue];

    v33 = sub_237C0857C();
    v34 = *(v33 + 16);
    if (!v34)
    {

      swift_unknownObjectRelease();

      v8 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    v67 = v26;
    v79 = MEMORY[0x277D84F90];
    sub_237AC8C74();
    v8 = v79;
    v37 = sub_237B024B4(v33);
    v38 = 0;
    v76 = v33 + 64;
    v69 = v35;
    v70 = v34;
    v68 = v33 + 72;
    while ((v37 & 0x8000000000000000) == 0 && v37 < 1 << *(v33 + 32))
    {
      v39 = v37 >> 6;
      if ((*(v76 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
      {
        goto LABEL_43;
      }

      if (*(v33 + 36) != v35)
      {
        goto LABEL_44;
      }

      v72 = v38;
      v74 = v35;
      v71 = v36;
      sub_2379E8F20(*(v33 + 48) + 40 * v37, v91);
      v40 = *(*(v33 + 56) + 8 * v37);
      v88[0] = v91[0];
      v88[1] = v91[1];
      v89 = v92;
      v90 = v40;
      sub_2379E9068(v88, v82, &qword_27DE9AC58, &qword_237C0B9A0);
      v41 = v84;
      v42 = v40;

      v85 = v82[0];
      v86 = v82[1];
      v87 = v83;
      swift_dynamicCast();
      sub_2379E9068(v88, v80, &qword_27DE9AC58, &qword_237C0B9A0);
      v43 = v81;
      [v81 doubleValue];
      v45 = v44;

      sub_2379E9130(v88, &qword_27DE9AC58);
      sub_2379E8F7C(v80);
      v46 = v33;
      v48 = *(v79 + 16);
      v47 = *(v79 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_106(v47);
        sub_237AC8C74();
      }

      *(v79 + 16) = v48 + 1;
      v49 = (v79 + 24 * v48);
      v49[4] = v77;
      v49[5] = v78;
      v49[6] = v45;
      v50 = 1 << *(v46 + 32);
      if (v37 >= v50)
      {
        goto LABEL_45;
      }

      v51 = *(v76 + 8 * v39);
      if ((v51 & (1 << v37)) == 0)
      {
        goto LABEL_46;
      }

      v33 = v46;
      if (*(v46 + 36) != v74)
      {
        goto LABEL_47;
      }

      v52 = v51 & (-2 << (v37 & 0x3F));
      if (v52)
      {
        v50 = __clz(__rbit64(v52)) | v37 & 0x7FFFFFFFFFFFFFC0;
        v53 = v70;
        v54 = v72;
      }

      else
      {
        v55 = v39 << 6;
        v56 = v39 + 1;
        v57 = (v68 + 8 * v39);
        v53 = v70;
        v54 = v72;
        while (v56 < (v50 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            sub_2379E8FD0(v37, v74, v71 & 1);
            v50 = __clz(__rbit64(v58)) + v55;
            goto LABEL_35;
          }
        }

        sub_2379E8FD0(v37, v74, v71 & 1);
      }

LABEL_35:
      v36 = 0;
      v38 = v54 + 1;
      v37 = v50;
      v35 = v69;
      if (v38 == v53)
      {

        swift_unknownObjectRelease();

        goto LABEL_38;
      }
    }

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
    __break(1u);
LABEL_48:
    __break(1u);
  }

LABEL_38:
  v62 = *MEMORY[0x277D85DE8];
  return v8;
}

void MLHandPoseClassifier.evaluation(on:)()
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for MLHandPoseClassifier() + 24);
  v9 = *(v8 + *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 20));
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 256;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v10 = swift_storeEnumTagMultiPayload();
  *(v7 + v3[7]) = v9;
  *(v7 + v3[8]) = 80;
  *(v7 + v3[9]) = 1;
  *(v7 + v3[10]) = 0;
  *(v7 + v3[12]) = 0x403E000000000000;
  MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(v10, v11, v12, v13, v14, v15, v16, v17, v18, v20, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
  if (v1)
  {
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180();
  }

  else
  {
    sub_237ACE2C8();
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180();
    sub_2379DBC9C(v19, v21);
  }
}

void MLHandPoseClassifier.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v17 = v3;
  v4 = sub_237C05ADC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11 - 8];
  if (sub_237C0597C() == 0x67616B6361706C6DLL && v13 == 0xE900000000000065)
  {
  }

  else
  {
    v15 = sub_237C0929C();

    if ((v15 & 1) == 0)
    {
      sub_2379F25FC();
      if (!v1)
      {
        memcpy(v18, v17, sizeof(v18));
        MLHandActionClassifier.write(to:metadata:)();
        (*(v7 + 8))(v2, v4);
      }

      goto LABEL_11;
    }
  }

  sub_2379F25FC();
  if (!v1)
  {
    v16 = *(v0 + 8);
    memcpy(v18, v17, sizeof(v18));
    sub_237B33A98(v12, v18);
    (*(v7 + 8))(v12, v4);
  }

LABEL_11:
  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLHandPoseClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
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
  OUTLINED_FUNCTION_60();
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
  MLHandPoseClassifier.write(to:metadata:)();
  (*(v18 + 8))(v23, v15);
  OUTLINED_FUNCTION_73();
}

void MLHandPoseClassifier.debugDescription.getter()
{
  OUTLINED_FUNCTION_153();
  v2 = v0;
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v7 = type metadata accessor for MLHandPoseClassifier();
  v8 = v0 + v7[6];
  MLHandPoseClassifier.ModelParameters.description.getter();
  v9 = v2 + v7[7];
  _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
  sub_2379E90B4(v2 + v7[8], v1);
  OUTLINED_FUNCTION_107();
  LODWORD(v7) = swift_getEnumCaseMultiPayload();
  sub_2379E9180();
  _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
  OUTLINED_FUNCTION_80();
  v10 = OUTLINED_FUNCTION_83();
  MEMORY[0x2383DC360](v10);

  OUTLINED_FUNCTION_80();
  v15 = v11;
  v12 = OUTLINED_FUNCTION_128();
  MEMORY[0x2383DC360](v12);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v15);

  if (v7 <= 1)
  {
    OUTLINED_FUNCTION_80();
    v16 = v13;
    v14 = OUTLINED_FUNCTION_90();
    MEMORY[0x2383DC360](v14);
    MEMORY[0x2383DC360](0xD000000000000020, v16);
  }

  OUTLINED_FUNCTION_150();
}

id MLHandPoseClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLHandPoseClassifier.debugDescription.getter();
  result = sub_2379E3E14();
  a1[3] = v2;
  *a1 = result;
  return result;
}

id sub_2379E3E14()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_237C086BC();

  v2 = [v0 initWithString_];

  return v2;
}

void sub_2379E3ED4(uint64_t *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_0();
  v16 = sub_237C05ADC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v32 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  *(v5 + qword_27DEACD90) = 28;
  v21 = v5 + *(*v5 + 112);
  sub_237C05BEC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *(v21 + v22[7]) = 0;
  *(v21 + v22[8]) = 0;
  v23 = v22[9];
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v16);
  v27 = v22[10];
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v16);
  *(v21 + v22[11]) = MEMORY[0x277D84F90];
  sub_2379E8624(a1, v5 + qword_27DEACD88);
  OUTLINED_FUNCTION_5_1();
  sub_2379E90B4(a2, v5 + v31);
  *(v5 + qword_27DEACD90) = a3;
  sub_2379E9068(a2, v7, &qword_27DE9AA18, &qword_237C0B710);
  if (__swift_getEnumTagSinglePayload(v7, 1, v16) == 1)
  {
    sub_2379E9180();
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2379E9130(v7, &qword_27DE9AA18);
  }

  else
  {
    (*(v32 + 32))(v6, v7, v16);
    sub_2379E4440();
    if (v34)
    {
    }

    sub_2379E9180();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v32 + 8))(v6, v16);
  }

  OUTLINED_FUNCTION_133();
}

void sub_2379E4440()
{
  OUTLINED_FUNCTION_74();
  v66 = v0;
  v63 = v2;
  v4 = v3;
  v74 = *MEMORY[0x277D85DE8];
  v67 = v5;
  v68 = v6;
  v7 = OUTLINED_FUNCTION_129(v3, v5);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_4(v65);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_41_0();
  v12 = sub_237C0909C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v62 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v69 = sub_237C05ADC();
  v20 = OUTLINED_FUNCTION_0(v69);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  v28 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_124();
  sub_237C05A2C();
  sub_237C05A9C();
  v29 = sub_237C086BC();

  v30 = [v28 fileExistsAtPath_];

  if (v30)
  {
    sub_237C08EDC();

    OUTLINED_FUNCTION_80();
    v71 = 0xD00000000000001ELL;
    v72 = v31;
    v32 = sub_237C05A9C();
    MEMORY[0x2383DC360](v32);

    v33 = OUTLINED_FUNCTION_110();
    MEMORY[0x2383DC360](v33);
    sub_237C08C4C();
    sub_237BABE74(0xD00000000000001ELL, v72);

    v34 = sub_237C05B1C();
    if (v1)
    {
      v36 = OUTLINED_FUNCTION_93();
      v37(v36);
    }

    else
    {
      v49 = v34;
      v61 = v35;
      v50 = sub_237C058EC();
      OUTLINED_FUNCTION_91(v50);
      sub_237C058DC();
      if (qword_27DE9A580 != -1)
      {
        OUTLINED_FUNCTION_66();
      }

      v51 = __swift_project_value_buffer(v12, qword_27DEACD18);
      (*(v62 + 16))(v19, v51, v12);
      v73 = v69;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v71);
      (*(v22 + 16))(boxed_opaque_existential_0, v4, v69);
      v53 = sub_237C058CC();
      sub_237B19D44(&v71, v19);
      v53(&v70, 0);
      sub_2379E9028(v63, v67);
      v64 = v49;
      sub_237C058BC();
      v54 = v66 + *(*v66 + 112);
      swift_beginAccess();
      OUTLINED_FUNCTION_142();
      sub_2379E8FDC(v55, v56, v57, v68);
      swift_endAccess();
      v58 = *(v66 + qword_27DEACD88 + 24);
      v59 = *(v66 + qword_27DEACD88 + 32);
      __swift_project_boxed_opaque_existential_1((v66 + qword_27DEACD88), v58);
      LOBYTE(v71) = *(v54 + *(v65 + 28));
      (*(*(v59 + 8) + 16))(v4, &v71, v58);
      (*(v22 + 8))(v27, v69);

      sub_2379E86D4(v64, v61);
    }
  }

  else
  {
    sub_237C08EDC();

    OUTLINED_FUNCTION_80();
    v72 = v38;
    v39 = sub_237C05A9C();
    MEMORY[0x2383DC360](v39);

    v40 = OUTLINED_FUNCTION_110();
    MEMORY[0x2383DC360](v40);
    sub_237C08C4C();
    v41 = OUTLINED_FUNCTION_37_0();
    sub_237BABE74(v41, v42);

    v43 = sub_237C059EC();
    v71 = 0;
    v44 = [v28 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:&v71];

    if (v44)
    {
      v45 = v71;
      sub_2379E4AB4();
      (*(v22 + 8))(v27, v69);
    }

    else
    {
      v46 = v71;
      sub_237C0593C();

      swift_willThrow();
      v47 = OUTLINED_FUNCTION_93();
      v48(v47);
    }
  }

  v60 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73();
}

void sub_2379E4AB4()
{
  OUTLINED_FUNCTION_74();
  v68 = v4;
  v70 = v5;
  v71 = v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4(v67);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23();
  v69 = v10;
  OUTLINED_FUNCTION_41_0();
  v11 = sub_237C0909C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v66 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_94();
  v23 = type metadata accessor for MLTrainingSessionParameters();
  v24 = OUTLINED_FUNCTION_20(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  v30 = sub_237C05ADC();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v36);
  v38 = &v62 - v37;
  OUTLINED_FUNCTION_5_1();
  sub_2379E90B4(v0 + v39, v29);
  sub_2379E8770(v29, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v30) == 1)
  {
    sub_2379E9130(v2, &qword_27DE9AA18);
  }

  else
  {
    v64 = v0;
    v40 = *(v33 + 32);
    OUTLINED_FUNCTION_143();
    v41();
    OUTLINED_FUNCTION_124();
    v65 = v3;
    sub_237C05A2C();
    v42 = sub_237C0592C();
    OUTLINED_FUNCTION_91(v42);
    sub_237C0591C();
    if (qword_27DE9A580 != -1)
    {
      OUTLINED_FUNCTION_66();
    }

    v43 = __swift_project_value_buffer(v11, qword_27DEACD18);
    (*(v66 + 16))(v18, v43, v11);
    v73[3] = v30;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v73);
    v66 = v33;
    v45 = *(v33 + 16);
    v63 = v38;
    v45(boxed_opaque_existential_0, v38, v30);
    v46 = sub_237C0590C();
    sub_237B19D44(v73, v18);
    v46(&v72, 0);
    v47 = v64;
    v48 = *(*v64 + 112);
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v47 + v48, v69, v70, v71);
    OUTLINED_FUNCTION_142();
    sub_2379E9028(v49, v50);
    sub_237C058FC();
    if (v1)
    {

      OUTLINED_FUNCTION_142();
      sub_2379E9130(v51, v52);
      v55 = v63;
    }

    else
    {
      OUTLINED_FUNCTION_142();
      sub_2379E9130(v53, v54);
      sub_237C05B9C();
      v57 = *(v64 + qword_27DEACD88 + 24);
      v58 = *(v64 + qword_27DEACD88 + 32);
      __swift_project_boxed_opaque_existential_1((v64 + qword_27DEACD88), v57);
      v59 = *(*(v58 + 8) + 8);
      v55 = v63;
      v59(v63, v57);

      v60 = OUTLINED_FUNCTION_83();
      sub_2379E86D4(v60, v61);
    }

    v56 = *(v66 + 8);
    v56(v65, v30);
    v56(v55, v30);
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379E51D0()
{
  OUTLINED_FUNCTION_149();
  v53 = v2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0(v56);
  v52 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_108();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v8 = OUTLINED_FUNCTION_0(v7);
  v51 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0(v60);
  v50 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  sub_237C06F7C();
  sub_237B98EF8();
  v23 = v22;

  v59 = v0;
  sub_237C06F5C();
  v24 = *(sub_237C06F7C() + 16);

  OUTLINED_FUNCTION_61();
  v57 = v17;
  OUTLINED_FUNCTION_33_0();
  sub_237C05EDC();
  v25 = *(sub_237C06F7C() + 16);

  OUTLINED_FUNCTION_70();
  v54 = v14;
  OUTLINED_FUNCTION_33_0();
  sub_237C05EDC();
  v26 = *(sub_237C06F7C() + 16);

  v55 = v1;
  sub_237C05EDC();
  OUTLINED_FUNCTION_86(*(v23 + 16));
  v27 = v23 + 32;
  v63 = v28;
  v58 = xmmword_237C0B670;
  while (1)
  {
    v29 = sub_2379E6888();
    if (v31)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
      OUTLINED_FUNCTION_46();
      v36 = sub_237C0602C();
      OUTLINED_FUNCTION_1(v36);
      v38 = *(v37 + 72);
      v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_237C0B680;
      v42 = v57;
      sub_237C05EBC();
      sub_237C05EBC();
      v43 = v56;
      v44 = v55;
      sub_237C05EBC();
      v62 = v41;
      v45 = OUTLINED_FUNCTION_37_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
      OUTLINED_FUNCTION_44();
      sub_2379E9028(v47, &unk_27DE9ABA8);
      sub_237C05D7C();
      (*(v52 + 8))(v44, v43);
      v48 = *(v51 + 8);
      v49 = OUTLINED_FUNCTION_107();
      v48(v49);
      (v48)(v42, v7);
      (*(v50 + 8))(v59, v60);
      OUTLINED_FUNCTION_148();
      return;
    }

    v32 = v29;
    v33 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v34 = swift_allocObject();
    *(v34 + 16) = v58;
    *(v34 + 32) = v32;
    *(v34 + 40) = v33;
    OUTLINED_FUNCTION_45();
    sub_2379E9028(&qword_27DE9ABC0, &qword_27DE9AA48);
    sub_237C0835C();

    if ((v61 & 0x7FFFFFFF) > 0x7F7FFFFF)
    {
      break;
    }

    if (*&v61 <= -9.2234e18)
    {
      goto LABEL_14;
    }

    if (*&v61 >= 9.2234e18)
    {
      goto LABEL_15;
    }

    v35 = *&v61;
    if (*&v61)
    {
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v32 >= *(v23 + 16))
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_130((v27 + 16 * v32));
      sub_237C05F3C();
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v33 >= *(v23 + 16))
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_130((v27 + 16 * v33));
      sub_237C05F3C();
      v61 = v35;
      sub_237C05F3C();
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_2379E575C()
{
  OUTLINED_FUNCTION_149();
  v43[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v4 = OUTLINED_FUNCTION_0(v3);
  v44 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v43 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v43 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0(v50);
  v43[0] = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  sub_237C06F7C();
  sub_237B98E78();
  v19 = v18;

  v49 = v0;
  sub_237C06F5C();
  v20 = *(sub_237C06F7C() + 16);

  OUTLINED_FUNCTION_61();
  v47 = v13;
  OUTLINED_FUNCTION_33_0();
  sub_237C05EDC();
  v21 = *(sub_237C06F7C() + 16);

  OUTLINED_FUNCTION_70();
  v45 = v11;
  OUTLINED_FUNCTION_33_0();
  sub_237C05EDC();
  v22 = *(sub_237C06F7C() + 16);

  v46 = v1;
  sub_237C05EDC();
  OUTLINED_FUNCTION_86(*(v19 + 16));
  v23 = v19 + 32;
  v53 = v24;
  v48 = xmmword_237C0B670;
  while (1)
  {
    v25 = sub_2379E6888();
    if (v27)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
      OUTLINED_FUNCTION_87();
      v32 = sub_237C0602C();
      OUTLINED_FUNCTION_1(v32);
      v34 = *(v33 + 72);
      v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_237C0B680;
      v38 = v47;
      sub_237C05EBC();
      v39 = v45;
      sub_237C05EBC();
      sub_237C05EBC();
      v52 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
      OUTLINED_FUNCTION_44();
      sub_2379E9028(v40, &qword_27DE9ABA8);
      sub_237C05D7C();
      v41 = *(v44 + 8);
      v42 = OUTLINED_FUNCTION_128();
      v41(v42);
      (v41)(v39, v3);
      (v41)(v38, v3);
      (*(v43[0] + 8))(v49, v50);
      OUTLINED_FUNCTION_148();
      return;
    }

    v28 = v25;
    v29 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v30 = swift_allocObject();
    *(v30 + 16) = v48;
    *(v30 + 32) = v28;
    *(v30 + 40) = v29;
    OUTLINED_FUNCTION_45();
    sub_2379E9028(&qword_27DE9ABC0, &qword_27DE9AA48);
    sub_237C0835C();

    if ((v51 & 0x7FFFFFFF) > 0x7F7FFFFF)
    {
      break;
    }

    if (*&v51 <= -9.2234e18)
    {
      goto LABEL_14;
    }

    if (*&v51 >= 9.2234e18)
    {
      goto LABEL_15;
    }

    v31 = *&v51;
    if (*&v51)
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v28 >= *(v19 + 16))
      {
        goto LABEL_17;
      }

      v51 = *(v23 + 8 * v28);
      sub_237C05F3C();
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v29 >= *(v19 + 16))
      {
        goto LABEL_19;
      }

      v51 = *(v23 + 8 * v29);
      sub_237C05F3C();
      v51 = v31;
      sub_237C05F3C();
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_2379E5C70()
{
  OUTLINED_FUNCTION_149();
  v66 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB80, &qword_237C0B8E8);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v74 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v8 = OUTLINED_FUNCTION_0(v7);
  v64 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB90, &qword_237C0B8F8);
  OUTLINED_FUNCTION_20(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v23 = OUTLINED_FUNCTION_0(v22);
  v63 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_0();
  v71 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_138();
  v70 = v29;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_138();
  v69 = v31;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_58();
  v72 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC98, &qword_237C0BA00);
  OUTLINED_FUNCTION_20(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v67);
  v62 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_94();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v42 = *(sub_237C06F7C() + 16);

  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_112();
  v68 = v0;
  sub_237C05F8C();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  sub_237C05DAC();
  sub_237C06F7C();
  sub_237B98EF8();
  v44 = v43;

  v65 = v44;
  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = (v65 + 40);
    do
    {
      v47 = *(v46 - 1);
      v73 = *v46;
      v74 = v45;
      v76 = v47;
      v77 = v73;

      sub_237C05F3C();
      OUTLINED_FUNCTION_54();
      v48 = v17;
      v49 = v7;
      v50 = v14;
      v51 = sub_237C06F2C();
      v52 = sub_237C06F3C();
      v75 = sub_237C06F6C();
      OUTLINED_FUNCTION_136();
      sub_237C05F3C();
      v75 = v51;
      v14 = v50;
      v7 = v49;
      v17 = v48;
      OUTLINED_FUNCTION_136();
      sub_237C05F3C();
      v75 = v52;
      OUTLINED_FUNCTION_136();
      sub_237C05F3C();
      OUTLINED_FUNCTION_54();
      v75 = sub_237C06F4C();
      OUTLINED_FUNCTION_136();
      sub_237C05F3C();
      OUTLINED_FUNCTION_54();
      sub_237C06F1C();
      v75 = v53;
      sub_237C05F3C();
      OUTLINED_FUNCTION_54();
      sub_237C06EFC();
      v55 = v54;

      v75 = v55;
      sub_237C05F3C();
      v46 += 2;
      v45 = v74 - 1;
    }

    while (v74 != 1);
  }

  sub_237C05D4C();
  sub_237C05D4C();
  sub_237C05D4C();
  v56 = v70;
  sub_237C05D4C();
  v57 = v71;
  OUTLINED_FUNCTION_55();
  sub_237C05D4C();
  OUTLINED_FUNCTION_107();
  sub_237C05D4C();
  sub_237C05D4C();
  v58 = *(v64 + 8);
  v58(v14, v7);
  v58(v17, v7);
  v59 = *(v63 + 8);
  v59(v57, v22);
  v59(v56, v22);
  v60 = OUTLINED_FUNCTION_82();
  (v59)(v60);
  v59(v72, v22);
  (*(v62 + 8))(v68, v67);
  OUTLINED_FUNCTION_148();
}

void sub_2379E62D4()
{
  OUTLINED_FUNCTION_153();
  v58 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB80, &qword_237C0B8E8);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v57 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  v8 = OUTLINED_FUNCTION_0(v7);
  v56 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_0();
  v54 = v12;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB90, &qword_237C0B8F8);
  OUTLINED_FUNCTION_20(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_30_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v21 = OUTLINED_FUNCTION_0(v20);
  v55 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_0();
  v64 = v25;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  v63 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_138();
  v62 = v29;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v31);
  v33 = &v53 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  v34 = *(sub_237C06F7C() + 16);

  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_113();
  v60 = v33;
  OUTLINED_FUNCTION_82();
  sub_237C05F8C();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_113();
  v61 = v0;
  OUTLINED_FUNCTION_82();
  sub_237C05F8C();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_82();
  sub_237C05F8C();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_82();
  sub_237C05F8C();
  OUTLINED_FUNCTION_113();
  v35 = v54;
  sub_237C05F8C();
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_113();
  sub_237C05F8C();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_113();
  sub_237C05F8C();
  sub_237C05DAC();
  sub_237C06F7C();
  sub_237B98E78();
  v37 = v36;

  v57 = v37;
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = (v57 + 32);
    v59 = v7;
    do
    {
      v40 = *v39++;
      v66 = v40;
      sub_237C05F3C();
      OUTLINED_FUNCTION_63();
      v41 = v15;
      v42 = v35;
      v43 = sub_237C06F2C();
      v44 = sub_237C06F3C();
      v65 = sub_237C06F6C();
      OUTLINED_FUNCTION_140();
      sub_237C05F3C();
      v65 = v43;
      v35 = v42;
      v15 = v41;
      v7 = v59;
      OUTLINED_FUNCTION_140();
      sub_237C05F3C();
      v65 = v44;
      OUTLINED_FUNCTION_140();
      sub_237C05F3C();
      OUTLINED_FUNCTION_63();
      v65 = sub_237C06F4C();
      OUTLINED_FUNCTION_140();
      sub_237C05F3C();
      OUTLINED_FUNCTION_63();
      sub_237C06F1C();
      v65 = v45;
      sub_237C05F3C();
      OUTLINED_FUNCTION_63();
      sub_237C06EFC();
      v65 = v46;
      sub_237C05F3C();
      --v38;
    }

    while (v38);
  }

  sub_237C05D4C();
  sub_237C05D4C();
  v47 = v62;
  sub_237C05D4C();
  v48 = v63;
  sub_237C05D4C();
  v49 = v64;
  sub_237C05D4C();
  sub_237C05D4C();
  sub_237C05D4C();
  v50 = *(v56 + 8);
  v50(v35, v7);
  v51 = OUTLINED_FUNCTION_90();
  (v50)(v51);
  v52 = *(v55 + 8);
  v52(v49, v20);
  v52(v48, v20);
  v52(v47, v20);
  v52(v61, v20);
  v52(v60, v20);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_2379E6888()
{
  if (*(v0 + 56) == 1)
  {
    v2 = *(v0 + 8);
    result = *(v0 + 16);
    if (result == v2)
    {
LABEL_10:
      result = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 1;
      return result;
    }

    if (v2 < *v0)
    {
      goto LABEL_26;
    }

    if (result < *v0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (result >= v2)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    *(v0 + 16) = result + 1;
    *(v0 + 48) = result;
    *(v0 + 56) = 0;
  }

  else
  {
    result = *(v0 + 48);
  }

  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (v3 != v4)
  {
    v6 = *(v0 + 24);
    if (v4 < v6)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v3 < v6)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v3 >= v4)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_14:
    *(v0 + 40) = v3 + 1;
    return result;
  }

  v5 = *(v0 + 8);
  result = *(v0 + 16);
  if (result == v5)
  {
    goto LABEL_10;
  }

  if (v5 < *v0)
  {
    goto LABEL_29;
  }

  if (result < *v0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (result >= v5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v0 + 56) = 0;
  v3 = *(v0 + 64);
  v7 = *(v0 + 72);
  *(v0 + 16) = result + 1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v7;
  *(v0 + 40) = v3;
  *(v0 + 48) = result;
  if (v3 == v7)
  {
    return 0;
  }

  if (v7 >= v3)
  {
    if (v3 >= v7)
    {
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_14;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2379E69B8()
{
  OUTLINED_FUNCTION_153();
  v1 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v1);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  sub_2379DBC9C(*(v0 + 16), *(v0 + 24));
  sub_2379DBC9C(*(v0 + 32), *(v0 + 40));
  v6 = v0 + v3;
  type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_126();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MLHandPoseClassifier.DataSource();
    OUTLINED_FUNCTION_126();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v11 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v11);
        v13 = *(v12 + 8);
        v13(v0 + v3, v11);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
        v13(v6 + v14[12], v11);
        OUTLINED_FUNCTION_105(v14[16]);

        v15 = v14[20];
        goto LABEL_9;
      case 1u:
      case 2u:
        v7 = sub_237C05ADC();
        OUTLINED_FUNCTION_12_0(v7);
        (*(v8 + 8))(v0 + v3);
        break;
      case 3u:
        sub_2379DBC9C(*v6, *(v6 + 8));
        v16 = *(v6 + 24);

        v17 = *(v6 + 40);

        v18 = *(v6 + 56);
        goto LABEL_10;
      case 4u:
        sub_2379DBC9C(*v6, *(v6 + 8));
        v9 = *(v6 + 24);

        v10 = *(v6 + 40);
        goto LABEL_10;
      case 5u:
        v19 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v19);
        (*(v20 + 8))(v0 + v3);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v21[12]);

        OUTLINED_FUNCTION_105(v21[16]);

        v15 = v21[20];
        goto LABEL_9;
      case 6u:
        v22 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v22);
        (*(v23 + 8))(v0 + v3);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0);
        OUTLINED_FUNCTION_105(*(v24 + 48));

        v15 = *(v24 + 64);
LABEL_9:
        OUTLINED_FUNCTION_105(v15);
LABEL_10:

        break;
      default:
        break;
    }
  }

  OUTLINED_FUNCTION_150();

  return MEMORY[0x2821FE8E8](v25, v26, v27);
}

uint64_t sub_2379E6C80()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_46();
  v2 = type metadata accessor for MLHandPoseClassifier.ModelParameters(v1);
  OUTLINED_FUNCTION_20(v2);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_19_0(v9);
  *v10 = v11;
  v10[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_68();

  return sub_2379DCB14(v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2379E6D68()
{
  v1 = v0;
  v2 = type metadata accessor for MLHandActionClassifier();
  v3 = *(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v55 = (v3 + 16) & ~v3;
  v5 = v1 + v55;
  v6 = *(v1 + v55);

  v7 = *(v1 + v55 + 8);

  v8 = v1 + v55 + v2[7];
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v15 = sub_237C05ADC();
        OUTLINED_FUNCTION_4(v15);
        v17 = *(v16 + 8);
        v18 = OUTLINED_FUNCTION_147();
        v17(v18);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        (v17)(v8 + v19[12], v15);
        OUTLINED_FUNCTION_56(v19[16]);

        OUTLINED_FUNCTION_56(v19[20]);

        OUTLINED_FUNCTION_56(v19[24]);

        v20 = v19[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v9 = sub_237C05ADC();
        OUTLINED_FUNCTION_12_0(v9);
        (*(v10 + 8))(v8);
        break;
      case 3u:
        sub_2379DBC9C(*v8, *(v8 + 8));
        v21 = *(v8 + 24);

        v22 = *(v8 + 40);

        v23 = *(v8 + 56);
        goto LABEL_10;
      case 4u:
        sub_2379DBC9C(*v8, *(v8 + 8));
        v11 = *(v8 + 24);

        v12 = *(v8 + 40);

        v13 = *(v8 + 56);

        v14 = *(v8 + 72);
        goto LABEL_10;
      case 5u:
        v24 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v24);
        (*(v25 + 8))(v8);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_56(v26[12]);

        OUTLINED_FUNCTION_56(v26[16]);

        v20 = v26[20];
        goto LABEL_9;
      case 6u:
        v27 = sub_237C05DBC();
        OUTLINED_FUNCTION_12_0(v27);
        (*(v28 + 8))(v8);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_56(v29[12]);

        OUTLINED_FUNCTION_56(v29[16]);

        OUTLINED_FUNCTION_56(v29[20]);

        v20 = v29[24];
LABEL_9:
        OUTLINED_FUNCTION_56(v20);
LABEL_10:

        break;
      default:
        break;
    }
  }

  v30 = (v5 + v2[8]);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v34 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v54 = *(v34 + 20);
      v35 = sub_237C05DBC();
      v36 = v4;
      v37 = *(*(v35 - 8) + 8);
      v37(v30 + v54, v35);
      v37(v30 + *(v34 + 24), v35);
      v4 = v36;
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = &qword_27DE9AA00;
        v33 = &qword_237C0B6F0;
      }

      else
      {
        v32 = &qword_27DE9A9C8;
        v33 = &qword_237C0B6A0;
      }

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      OUTLINED_FUNCTION_12_0(v38);
      (*(v39 + 8))(v30);
      break;
  }

  v40 = (v5 + v2[9]);
  v41 = swift_getEnumCaseMultiPayload();
  switch(v41)
  {
    case 2:

      break;
    case 1:
      v44 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v45 = v4;
      v46 = *(v44 + 20);
      v47 = sub_237C05DBC();
      OUTLINED_FUNCTION_4(v47);
      v49 = *(v48 + 8);
      v50 = v40 + v46;
      v4 = v45;
      v49(v50, v47);
      v49(v40 + *(v44 + 24), v47);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      OUTLINED_FUNCTION_126();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = &qword_27DE9AA00;
        v43 = &qword_237C0B6F0;
      }

      else
      {
        v42 = &qword_27DE9A9C8;
        v43 = &qword_237C0B6A0;
      }

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
      OUTLINED_FUNCTION_12_0(v51);
      (*(v52 + 8))(v40);
      break;
  }

  return MEMORY[0x2821FE8E8](v1, v55 + v4, v3 | 7);
}

uint64_t sub_2379E72FC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

uint64_t sub_2379E7354()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_46();
  v2 = type metadata accessor for MLHandActionClassifier();
  OUTLINED_FUNCTION_20(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19_0(v5);
  *v6 = v7;
  v6[1] = sub_2379D6854;

  return sub_2379E01CC(v0, v1 + v4);
}

uint64_t sub_2379E741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7440, 0, 0);
}

uint64_t sub_2379E7440()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for MLHandPoseClassifier();
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15_0(v4);

  return v7(v6);
}

uint64_t sub_2379E74FC()
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

uint64_t sub_2379E75F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7618, 0, 0);
}

uint64_t sub_2379E7618()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 152);
  *(v0 + 40) = sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t sub_2379E76E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7704, 0, 0);
}

uint64_t sub_2379E7704()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for MLImageClassifier();
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15_0(v4);

  return v7(v6);
}

uint64_t sub_2379E77C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E77E4, 0, 0);
}

uint64_t sub_2379E77E4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 152);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABF0, &qword_237C0B968);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t sub_2379E78A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E78CC, 0, 0);
}

uint64_t sub_2379E78CC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 152);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE0, &qword_237C0B948);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t sub_2379E7990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E79B4, 0, 0);
}

uint64_t sub_2379E79B4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for MLHandActionClassifier();
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15_0(v4);

  return v7(v6);
}

uint64_t sub_2379E7A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7A94, 0, 0);
}

uint64_t sub_2379E7A94()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for MLStyleTransfer();
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15_0(v4);

  return v7(v6);
}

uint64_t sub_2379E7B50()
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

uint64_t sub_2379E7C48()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 144);
  *(v0 + 48) = 0;
  swift_beginAccess();
  sub_2379E8FDC(v0 + 16, v1 + 16, &qword_27DE9AAA0, &unk_237C0B820);
  swift_endAccess();
  v2 = *(v0 + 168);
  sub_237C08CAC();
  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_2379E7CE0()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  __swift_deallocate_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 56) = v1;
  *(v0 + 88) = 1;
  swift_beginAccess();
  sub_2379E8FDC(v0 + 56, v2 + 16, &qword_27DE9AAA0, &unk_237C0B820);
  swift_endAccess();
  v3 = *(v0 + 168);
  sub_237C08CAC();
  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_2379E7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7DBC, 0, 0);
}

uint64_t sub_2379E7DBC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_76();
  *(v1 + 40) = type metadata accessor for _Model();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t sub_2379E7E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7E94, 0, 0);
}

uint64_t sub_2379E7E94()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for MLSoundClassifier();
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15_0(v4);

  return v7(v6);
}

uint64_t sub_2379E7F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7F74, 0, 0);
}

uint64_t sub_2379E7F74()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 152);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAD0, &qword_237C0B860);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t sub_2379E8038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E805C, 0, 0);
}

uint64_t sub_2379E805C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_76();
  v1 = _s5ModelVMa_0();
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15_0(v4);

  return v7(v6);
}

uint64_t sub_2379E8118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E813C, 0, 0);
}

uint64_t sub_2379E813C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 152);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAC8, &qword_237C0B848);
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 4);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t sub_2379E8200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E8224, 0, 0);
}

uint64_t sub_2379E8224()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 152);
  *(v0 + 40) = &type metadata for MLRegressorMetrics;
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_0(v4);

  return v7(v6);
}

uint64_t sub_2379E833C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_87();
  v6 = type metadata accessor for MLHandActionClassifier();
  v7 = OUTLINED_FUNCTION_135(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    v14 = OUTLINED_FUNCTION_135(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v16 = a3[7];
    }

    v10 = v3 + v16;
    goto LABEL_11;
  }

  v11 = *(v3 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_2379E8458(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_87();
  v8 = type metadata accessor for MLHandActionClassifier();
  result = OUTLINED_FUNCTION_135(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5]) = (a2 - 1);
      return result;
    }

    v13 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    v14 = OUTLINED_FUNCTION_135(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v11 = type metadata accessor for MLClassifierMetrics(0);
      v16 = a4[7];
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2379E855C()
{
  result = type metadata accessor for MLHandActionClassifier();
  if (v1 <= 0x3F)
  {
    result = sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MLHandPoseClassifier.ModelParameters(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for MLClassifierMetrics(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2379E8624(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2379E86D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2379E8770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379E87E0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E8200(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x2383DD950);
  }

  return result;
}

uint64_t sub_2379E88C0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E8118(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2379E894C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E7F50(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2379E89D8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E8038(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2379E8A64()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E7E70(v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_2379E8AF0()
{
  result = qword_27DE9AB20;
  if (!qword_27DE9AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AB20);
  }

  return result;
}

uint64_t sub_2379E8B44()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E7D98(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2379E8BD0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E7A70(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2379E8C5C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E7990(v3, v4, v5, v6, v7, v8, v9);
}

void sub_2379E8CE8(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 2:
    case 4:

      break;
    case 3:

      break;
    case 5:

      break;
    default:
      return;
  }
}

uint64_t sub_2379E8D3C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E78A8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2379E8DC8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E77C0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2379E8E54()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E76E0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2379E8EE0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2379E8FD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2379E8FDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_151(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return v4;
}

uint64_t sub_2379E9028(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_129(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_125();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2379E9068(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_151(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return v4;
}

uint64_t sub_2379E90B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_37_0();
  v9(v8);
  return a2;
}

uint64_t sub_2379E9130(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_129(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_12_0(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_2379E9180()
{
  v1 = OUTLINED_FUNCTION_46();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2379E91D0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E75F4(v3, v4, v5, v6, v7, v8, v9);
}

void sub_2379E9268(int a1, void *a2, id a3, char a4)
{
  if (a4 != -1)
  {
    sub_2379E8CE8(a2, a3, a4);
  }
}

id sub_2379E9288(id result, id a2, char a3)
{
  switch(a3)
  {
    case 2:
    case 4:

      break;
    case 3:

      break;
    case 5:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2379E9328()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_2(v1);
  OUTLINED_FUNCTION_68();

  return sub_2379E741C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2379E93B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void OUTLINED_FUNCTION_8_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 160);
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 160);
  return v2;
}

double OUTLINED_FUNCTION_25_0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;
  return result;
}

dispatch_semaphore_t OUTLINED_FUNCTION_29_0(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = -1;

  return dispatch_semaphore_create(0);
}

uint64_t OUTLINED_FUNCTION_48@<X0>(uint64_t a1@<X8>)
{

  return sub_2379E90B4(v2 + a1, v1);
}

unint64_t OUTLINED_FUNCTION_51()
{
  *(v3 + 16) = v0;
  result = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1;
  v6 = *(v2 + 32);
  v8 = *(v4 - 112);
  v7 = *(v4 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_53()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_57(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v1;
  a1[7] = v4;
}

dispatch_semaphore_t OUTLINED_FUNCTION_65(uint64_t a1)
{
  *(a1 + 48) = -1;

  return dispatch_semaphore_create(0);
}

uint64_t OUTLINED_FUNCTION_66()
{

  return swift_once();
}

void OUTLINED_FUNCTION_86(uint64_t a1@<X8>)
{
  *(v1 - 120) = 0;
  *(v1 - 112) = a1;
  *(v1 - 184) = 0;
  *(v1 - 176) = a1;
  *(v1 - 168) = 0;
  *(v1 - 160) = 0;
  *(v1 - 144) = 0;
  *(v1 - 136) = 0;
  *(v1 - 152) = a1;
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_93()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_237BBAEC8(0, 0, v2, v0, v1);
}

void OUTLINED_FUNCTION_102()
{

  JUMPOUT(0x2383DC360);
}

void OUTLINED_FUNCTION_111()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_112()
{

  return sub_237C05FCC();
}

uint64_t OUTLINED_FUNCTION_113()
{

  return sub_237C05FCC();
}

uint64_t OUTLINED_FUNCTION_114()
{
  v2 = *(*(v0 - 176) + 16);

  return sub_237C08FEC();
}

uint64_t OUTLINED_FUNCTION_115()
{

  return sub_237C0924C();
}

id OUTLINED_FUNCTION_116@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_237BA57C4(v1 - 120, 0, (v1 - 104));
}

uint64_t *OUTLINED_FUNCTION_117(uint64_t a1)
{
  *(v1 + 40) = a1;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 16));
}

uint64_t OUTLINED_FUNCTION_118(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v4;
  a1[6] = v3;
  a1[7] = v1;
}

uint64_t OUTLINED_FUNCTION_119(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_237A607E0(v1, va);
}

uint64_t OUTLINED_FUNCTION_120()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_121()
{
  sub_2379DBC9C(*(v1 - 160), *(v1 - 208));
  sub_2379DBC9C(v0, *(v1 - 236));
  v2 = *(v1 - 224);
  v3 = *(v1 - 136);

  sub_2379DBC84(v2, v3);
}

uint64_t OUTLINED_FUNCTION_123()
{
  result = v0;
  v3 = *(v1 - 96);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_130@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 - 200) = v2;
  *(v1 - 192) = v3;
  return v1 - 200;
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_152()
{

  return swift_dynamicCast();
}

_OWORD *OUTLINED_FUNCTION_155()
{

  return sub_2379DAD24((v0 - 176), (v0 - 112));
}

uint64_t type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData()
{
  result = qword_27DE9ACA8;
  if (!qword_27DE9ACA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2379EA0A0()
{
  result = sub_2379EA11C();
  if (v1 <= 0x3F)
  {
    result = sub_237C05DBC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

ValueMetadata *sub_2379EA11C()
{
  result = qword_27DE9ACB8;
  if (!qword_27DE9ACB8)
  {
    result = &type metadata for MLSplitStrategy;
    atomic_store(&type metadata for MLSplitStrategy, &qword_27DE9ACB8);
  }

  return result;
}

uint64_t sub_2379EA144@<X0>(uint64_t a1@<X8>)
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
  v15 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  sub_2379EA830(v3, v18 - v17);
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
        JUMPOUT(0x2379EA398);
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

uint64_t sub_2379EA3A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v31 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v35 = (v34 - v33);
  sub_2379EA830(v57, v34 - v33);
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

uint64_t sub_2379EA830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379EA894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379EA904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_2()
{
  v2 = *(v0 + 16);
  v4 = *(v1 - 144);
  return *(v1 - 136);
}

void sub_2379EA98C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  v4 = *(a1 + 8);
  v15 = *a1;
  v22 = *a1;
  v14 = v4;
  v23 = v4;
  MLDataTable.subscript.getter();
  v18 = v20;
  v19 = v21;
  MLUntypedColumn.dropDuplicates()(&v16);
  sub_2379DBC9C(v18, v19);
  v5 = v16;
  LOBYTE(v6) = v17;
  if ((v17 & 1) == 0)
  {
    sub_2379DBCF4(v16, 0);
    sub_237A60248(&v22);
    sub_2379DBC9C(v5, 0);
    if (!v22)
    {
      v6 = sub_2379DFD2C(v5, 0);
      v7 = *(v6 + 16);
      if (!v7)
      {
LABEL_10:

        return;
      }

      v22 = MEMORY[0x277D84F90];
      sub_237AC8B94();
      v8 = 0;
      v5 = v22;
      while (v8 < *(v6 + 16))
      {
        v20 = *(v6 + 8 * v8 + 32);
        sub_2379EAB90(&v20, v15, v14, v24, &v18, &v16);
        if (v3)
        {

          return;
        }

        v3 = 0;
        v9 = v16;
        v10 = v17;
        v22 = v5;
        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          OUTLINED_FUNCTION_106(v11);
          sub_237AC8B94();
          v5 = v22;
        }

        ++v8;
        v5[2] = v12 + 1;
        v13 = &v5[2 * v12];
        v13[4] = v9;
        v13[5] = v10;
        if (v7 == v8)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  sub_2379DBC9C(v5, v6);
  __break(1u);
}

void sub_2379EAB90(unint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = v6;
  v13 = *a1;
  *v47 = a2;
  LOBYTE(v48) = a3 & 1;
  MLDataTable.subscript.getter();
  v14 = v52;
  if (v53)
  {
    *&v50 = v52;
    v15 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v16 = sub_237C0925C();
    if (v16)
    {
      v17 = v16;
      sub_2379DBC9C(v52, 1);
    }

    else
    {
      v17 = swift_allocError();
      *v20 = v52;
    }

    v19 = 1;
    sub_2379DBC9C(v14, 1);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v50 = v13;
    LOBYTE(v51) = 0;
    v18 = sub_237A60280(4, v52, &v50);
    if (v6)
    {
      sub_2379E8CE8(v50, *(&v50 + 1), v51);
      sub_2379DBC9C(v14, 0);
      v19 = 1;
      v17 = v6;
      v8 = 0;
    }

    else
    {
      v17 = v18;
      sub_2379E8CE8(v50, *(&v50 + 1), v51);
      sub_2379DBC9C(v14, 0);
      v19 = 0;
    }
  }

  *&v50 = a2;
  BYTE8(v50) = a3 & 1;
  *v47 = v17;
  LOBYTE(v48) = v19;
  MLDataTable.subscript.getter(v47, &v54);
  sub_2379DBC9C(*v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_237C0BA30;
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  *(v21 + 32) = sub_237C08CDC();
  *(v21 + 40) = sub_237C08CDC();
  *(v21 + 48) = sub_237C08CDC();
  sub_237AB166C(&v54, 0x746E696F7079656BLL, 0xE900000000000073, v21);
  if (v8)
  {
    sub_2379DBC9C(v54, v55);

    *a5 = v8;
    return;
  }

  MLDataTable.subscript.getter();
  v22 = *v47;
  if (v48)
  {
    sub_2379DBC9C(*v47, 1);
LABEL_17:
    sub_2379E8AF0();
    v29 = swift_allocError();
    *v28 = 0xD000000000000023;
    *(v28 + 8) = 0x8000000237C172E0;
LABEL_18:
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0;
    swift_willThrow();
LABEL_19:
    sub_2379DBC9C(v54, v55);
    *a5 = v29;
    return;
  }

  sub_2379DBCF4(*v47, 0);
  sub_237A607E0(0, &v50);
  sub_2379DBC9C(v22, 0);
  sub_2379DBC9C(v22, 0);
  v23 = v50;
  if (v51 != 2)
  {
    sub_2379E8CE8(v50, *(&v50 + 1), v51);
    goto LABEL_17;
  }

  v24 = sub_2379EB28C(v50, *(&v50 + 1), a4);
  if (v25)
  {
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_237C08EDC();

    *&v50 = 0xD000000000000017;
    *(&v50 + 1) = 0x8000000237C17310;
    MEMORY[0x2383DC360](v23, *(&v23 + 1));
    sub_2379E8CE8(v23, *(&v23 + 1), 2);
    MEMORY[0x2383DC360](544106784, 0xE400000000000000);
    v26 = MEMORY[0x2383DC4F0](a4, MEMORY[0x277D837D0]);
    MEMORY[0x2383DC360](v26);

    v27 = v50;
    sub_2379E8AF0();
    v29 = swift_allocError();
    *v28 = v27;
    goto LABEL_18;
  }

  v44 = v24;
  sub_2379E8CE8(v23, *(&v23 + 1), 2);
  v30 = v54;
  v31 = v55;
  v52 = v54;
  v53 = v55;
  *&v50 = v54;
  BYTE8(v50) = v55;
  sub_2379DBCF4(v54, v55);
  MLDataTable.size.getter();
  v32 = sub_237A018D0();
  if (v32)
  {
    v33 = v32;
    v43 = v31;
    v56 = MEMORY[0x277D84F90];
    sub_237C08FCC();
    if ((v33 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v45 = v33;
      v46 = a5;
      while (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        MLDataTable.Rows.subscript.getter(&v50, v34);
        v35 = *(&v50 + 1);
        if (!*(*(&v50 + 1) + 16))
        {
          goto LABEL_33;
        }

        v36 = sub_237ACAC78(0x746E696F7079656BLL, 0xE900000000000073);
        if ((v37 & 1) == 0)
        {
          goto LABEL_33;
        }

        v38 = sub_237A2E9C8(*(*(v35 + 56) + 8 * v36));
        sub_237AFC548(v38, v47);
        if (v49 != 5)
        {
          sub_2379E8CE8(*v47, v48, v49);
          a5 = v46;
LABEL_33:
          sub_2379E8AF0();
          v29 = swift_allocError();
          *v42 = 0xD00000000000002BLL;
          *(v42 + 8) = 0x8000000237C17330;
          *(v42 + 16) = 0u;
          *(v42 + 32) = 0u;
          *(v42 + 48) = 0;
          swift_willThrow();

          sub_2379DBC9C(v30, v43);

          goto LABEL_19;
        }

        sub_237C08F8C();
        v39 = *(v56 + 16);
        sub_237C08FEC();
        sub_237C08FFC();
        sub_237C08F9C();
        *&v50 = v52;
        BYTE8(v50) = v53;
        if (v34 >= MLDataTable.size.getter())
        {
          goto LABEL_35;
        }

        ++v34;
        a5 = v46;
        if (v45 == v34)
        {
          sub_2379DBC9C(v30, v43);
          v40 = v56;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_2379DBC9C(v30, v31);
    v40 = MEMORY[0x277D84F90];
LABEL_31:
    sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
    v41 = sub_2379EB400(v40, 0, 65600);
    sub_2379DBC9C(v54, v55);
    *a6 = v44;
    a6[1] = v41;
  }
}

uint64_t sub_2379EB28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_237C0929C() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

unint64_t sub_2379EB318(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_237C087AC())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_237C0882C() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_237C0929C();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

id sub_2379EB400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  v5 = sub_237C0892C();

  v6 = [swift_getObjCClassFromMetadata() multiArrayByConcatenatingMultiArrays:v5 alongAxis:a2 dataType:a3];

  return v6;
}

uint64_t sub_2379EB49C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&v76 = a3;
  v73 = a4;
  v74 = a2;
  v72 = sub_237C060DC();
  v5 = OUTLINED_FUNCTION_0(v72);
  v70 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v71 = v10 - v9;
  v11 = sub_237C0610C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_2_0();
  v69[1] = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v69 - v17;
  v19 = sub_237C0683C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v20);
  v77 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v79 = v69 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v78 = v69 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = v69 - v31;
  v33 = sub_237C0617C();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v41 = v40 - v39;
  v42 = *a1;
  v43 = a1[1];
  v75 = v42;
  (*(v36 + 104))(v41, *MEMORY[0x277D2CD40], v33);
  sub_2379EBB54();
  v44 = v43;
  sub_237C088DC();
  sub_237C088DC();
  (*(v36 + 8))(v41, v33);
  if (v81 == v80)
  {
    v45 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    v46 = v74;
    v81 = *(v74 + *(v45 + 32));
    v47 = sub_2379EBBAC(v44, &v81);

    v44 = v47;
    v48 = v46;
  }

  else
  {
    v48 = v74;
  }

  v49 = *(v48 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28));
  v50 = [v44 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v51 = sub_237C0893C();

  OUTLINED_FUNCTION_3_4();
  if (v50)
  {
    OUTLINED_FUNCTION_23_1();
  }

  else
  {
    v52 = *(v51 + 32);
  }

  OUTLINED_FUNCTION_20_0();
  v53 = sub_237C08AFC();

  v54 = sub_237AC934C(0x10020);
  sub_237C0616C();
  OUTLINED_FUNCTION_12_1();
  sub_237B699C8(v54, v18, v32);
  OUTLINED_FUNCTION_12_1();
  v55 = v78;
  sub_237C0663C();
  if (v53 < v49)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v56 = OUTLINED_FUNCTION_26_0();
    *(v56 + 16) = xmmword_237C0B680;
    v57 = v77;
    if (!__OFSUB__(v49, v53))
    {
      *(v56 + 32) = v49 - v53;
      *(v56 + 40) = xmmword_237C0BA40;
      *&v76 = v32;
      sub_237C0611C();
      (*(v70 + 104))(v71, *MEMORY[0x277D2CCC8], v72);
      OUTLINED_FUNCTION_12_1();
      v58 = v79;
      v32 = v76;
      sub_237C067BC();
      sub_237C0660C();
      v59 = *(v22 + 8);
      v59(v58, v19);
      v59(v32, v19);
      v60 = v57;
LABEL_14:
      (*(v22 + 32))(v32, v60, v19);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_18;
  }

  v57 = v77;
  if (v49 >= v53)
  {
LABEL_15:
    v66 = *(v22 + 16);
    v66(v79, v32, v19);
    v66(v57, v55, v19);
    sub_237C0607C();

    v67 = *(v22 + 8);
    v67(v55, v19);
    return (v67)(v32, v19);
  }

  v61 = v53 - v49;
  if (__OFSUB__(v53, v49))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v61 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v61)
  {
    v62 = sub_2379EED84(v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v63 = OUTLINED_FUNCTION_26_0();
    v76 = xmmword_237C0B680;
    *(v63 + 16) = xmmword_237C0B680;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 32) = v62;
    v64 = OUTLINED_FUNCTION_26_0();
    *(v64 + 16) = v76;
    *(v64 + 32) = v49;
    *(v64 + 40) = xmmword_237C0BA40;
    v65 = v79;
    sub_237C067AC();
    v55 = v78;

    (*(v22 + 8))(v32, v19);
    v60 = v65;
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
  OUTLINED_FUNCTION_0_2();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}