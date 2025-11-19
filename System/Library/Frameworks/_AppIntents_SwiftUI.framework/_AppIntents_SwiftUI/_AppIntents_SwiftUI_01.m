uint64_t sub_1D414EB50()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = v4[22];
  v6 = v4[17];
  v7 = v4[16];
  v8 = v4[15];
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v11 + 184) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414ECA8()
{
  OUTLINED_FUNCTION_9();
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[14];

  OUTLINED_FUNCTION_3_2();

  return v5();
}

uint64_t sub_1D414ED40()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = v5[24];
  v7 = v5[14];
  v8 = v5[13];
  v9 = v5[12];
  v10 = *v1;
  OUTLINED_FUNCTION_4();
  *v11 = v10;
  v3[25] = v0;

  (*(v8 + 8))(v7, v9);
  if (!v0)
  {
    v12 = v3[21];
    v14 = v3[17];
    v13 = v3[18];
    v15 = v3[14];

    OUTLINED_FUNCTION_3_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414EEEC()
{
  OUTLINED_FUNCTION_9();
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[23];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_1D414EF88()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[25];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_1D414F00C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D414F07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16();
  sub_1D414FF84(a1, a2, v15, a5);
  return (*(v9 + 8))(v15, a5);
}

uint64_t sub_1D414F168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14();
  sub_1D414FCEC(a1, v13, a4);
  return (*(v7 + 8))(v13, a4);
}

uint64_t sub_1D414F24C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t AppIntent.requestChoice<A>(between:dialog:content:)()
{
  OUTLINED_FUNCTION_6();
  v10 = OUTLINED_FUNCTION_10_4(v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v13 = *(*(v0 - 8) + 64);
  v1[13] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_0();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1D414F350()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13_3();
  v0();
  OUTLINED_FUNCTION_21_2();
  sub_1D413DBDC();
  OUTLINED_FUNCTION_19_2();
  v1 = *(MEMORY[0x1E6959E50] + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_3(v3);

  return MEMORY[0x1EEDB2CE0](v5);
}

uint64_t sub_1D414F400()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *(v5 + 112);
  v8 = *v1;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  v3[16] = v0;

  sub_1D414F5DC(v7, &qword_1EC7C4440, &qword_1D41675E0);
  if (!v0)
  {
    v11 = v3[13];
    v10 = v3[14];
    v12 = v3[12];

    OUTLINED_FUNCTION_3_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414F56C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  OUTLINED_FUNCTION_17();
  v5 = v0[16];

  return v4();
}

uint64_t sub_1D414F5DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t AppIntent.requestChoice<A>(between:dialog:view:)()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v1[9] = v4;
  v1[10] = v0;
  v1[7] = v2;
  v1[8] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[3] = v8;
  v1[4] = v9;
  v1[2] = v10;
  v11 = sub_1D4165910();
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_19();
  v14 = *(v3 - 8);
  v1[12] = v14;
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414F740()
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  (*(v0[12] + 16))(v0[13], v0[5], v0[7]);
  sub_1D413DBDC();
  sub_1D413DBE4();
  v4 = *(MEMORY[0x1E6959E50] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_3(v5);
  *v6 = v7;
  v6[1] = sub_1D414F844;
  v8 = v0[14];
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];

  return MEMORY[0x1EEDB2CE0](v14);
}

uint64_t sub_1D414F844()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *(v5 + 112);
  v8 = *v1;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  v3[16] = v0;

  sub_1D414F5DC(v7, &qword_1EC7C4440, &qword_1D41675E0);
  if (!v0)
  {
    v11 = v3[13];
    v10 = v3[14];
    v12 = v3[11];

    OUTLINED_FUNCTION_3_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414F9B0()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];

  OUTLINED_FUNCTION_17();
  v5 = v0[16];

  return v4();
}

uint64_t AppIntent._requestChoice<A>(between:dialog:content:)()
{
  OUTLINED_FUNCTION_6();
  v10 = OUTLINED_FUNCTION_10_4(v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v13 = *(*(v0 - 8) + 64);
  v1[13] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_7_0();
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1D414FAD0()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_13_3();
  v0();
  OUTLINED_FUNCTION_21_2();
  sub_1D413DBDC();
  OUTLINED_FUNCTION_19_2();
  v1 = *(MEMORY[0x1E6959E60] + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_3(v3);

  return MEMORY[0x1EEDB2CF8](v5);
}

uint64_t sub_1D414FB80()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *(v5 + 112);
  v8 = *v1;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  v3[16] = v0;

  sub_1D414F5DC(v7, &qword_1EC7C4440, &qword_1D41675E0);
  if (!v0)
  {
    v11 = v3[13];
    v10 = v3[14];
    v12 = v3[12];

    OUTLINED_FUNCTION_3_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1D414FCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D41659B0();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_23_2();
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v33);
  (*(v23 + 16))(v29, a2, a3);
  OUTLINED_FUNCTION_21_2();
  sub_1D413DBDC();
  sub_1D413DBE4();
  v34 = sub_1D4165760();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v34);
  (*(v7 + 16))(v13, a1, v5);
  sub_1D41659A0();
  sub_1D413E4E8();
  sub_1D413E53C();
  OUTLINED_FUNCTION_18_2();
  return OUTLINED_FUNCTION_24_2();
}

uint64_t sub_1D414FF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D41659B0();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C44B8, &unk_1D4167930);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_23_2();
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v34);
  (*(v24 + 16))(v30, a3, a4);
  sub_1D413DBDC();
  sub_1D413DBE4();
  v35 = sub_1D4165760();
  (*(*(v35 - 8) + 16))(v4, a2, v35);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v35);
  (*(v8 + 16))(v14, a1, v6);
  sub_1D41659A0();
  sub_1D413E4E8();
  sub_1D413E53C();
  OUTLINED_FUNCTION_18_2();
  return OUTLINED_FUNCTION_24_2();
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[14];
  v4 = v2[11];
  v5 = v2[9];
  v6 = v2[7];
  v7 = v2[3];
  v8 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_18_2()
{
  result = v0 - 81;
  v2 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_1D4165970();
}

uint64_t PlaybackButton.init<A>(interval:state:intent:systemImage:alignment:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47D0, &qword_1D4168380);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_3_3();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    sub_1D4150864(a1, v2, &qword_1EC7C47D0, &qword_1D4168380);
    v16 = OUTLINED_FUNCTION_9_4();
    v17(v16);
    v18 = OUTLINED_FUNCTION_5_2();
    v19(v18);
    v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v22 = OUTLINED_FUNCTION_2_5(v21);
    v23(v22);
    OUTLINED_FUNCTION_4_2();
    sub_1D4165F20();
    v24 = OUTLINED_FUNCTION_11_5();
    v25(v24);
    (*(v10 + 8))(a2, v8);
    return sub_1D414F5DC(a1, &qword_1EC7C47D0, &qword_1D4168380);
  }

  else
  {
    result = OUTLINED_FUNCTION_7_2();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4150558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D4166A20();
  v6[5] = sub_1D4166A10();
  v8 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D4147968, v8, v7);
}

uint64_t PlaybackButton.init<A>(interval:state:intent:playSystemImage:pauseSystemImage:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47D8, &qword_1D4168388);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_3_3();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    sub_1D4150864(a1, v2, &qword_1EC7C47D8, &qword_1D4168388);
    v16 = OUTLINED_FUNCTION_9_4();
    v17(v16);
    v18 = OUTLINED_FUNCTION_5_2();
    v19(v18);
    v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v22 = OUTLINED_FUNCTION_2_5(v21);
    v23(v22);
    OUTLINED_FUNCTION_4_2();
    sub_1D4165F30();
    v24 = OUTLINED_FUNCTION_11_5();
    v25(v24);
    (*(v10 + 8))(a2, v8);
    return sub_1D414F5DC(a1, &qword_1EC7C47D8, &qword_1D4168388);
  }

  else
  {
    result = OUTLINED_FUNCTION_7_2();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4150864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D41508CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v7 + 16))(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_1D4166A20();
  v16 = sub_1D4166A10();
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v7 + 32))(&v18[v17], &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_1D415326C();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D4150B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D4166A20();
  v6[5] = sub_1D4166A10();
  v8 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D414C250, v8, v7);
}

uint64_t sub_1D4150C1C()
{
  OUTLINED_FUNCTION_10_5();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_1_3(v6);

  return sub_1D4150B80(v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D4150DA4()
{
  OUTLINED_FUNCTION_10_5();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_1_3(v6);

  return sub_1D4150558(v7, v8, v9, v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return MEMORY[0x1EEDD9D10](0);
}

void sub_1D4150EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a7;
  v70 = a6;
  v68 = a4;
  v71 = a3;
  v69 = a2;
  v75 = sub_1D4165C70();
  v9 = *(v75 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v75);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v64 - v14;
  v15 = sub_1D4166AD0();
  v66 = *(v15 - 8);
  v16 = *(v66 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v64 - v18;
  v74 = *(a5 - 8);
  v20 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47E0, &qword_1D41683C8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v64 - v24;
  v26 = sub_1D41657E0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D41657C0();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    v31 = &qword_1EC7C47E0;
    v32 = &qword_1D41683C8;
    v33 = v25;
LABEL_10:
    sub_1D414F5DC(v33, v31, v32);
LABEL_11:
    v50 = v75;
    if (qword_1EC7C43D8 != -1)
    {
      swift_once();
    }

    v51 = sub_1D4165D70();
    __swift_project_value_buffer(v51, qword_1EC7C5F48);
    (*(v9 + 16))(v13, a1, v50);
    v52 = sub_1D4165D50();
    v53 = sub_1D4166A90();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v78[0] = v55;
      *v54 = 136446210;
      sub_1D4152F2C();
      v56 = sub_1D4166C00();
      v58 = v57;
      (*(v9 + 8))(v13, v50);
      v59 = sub_1D41529BC(v56, v58, v78);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_1D4134000, v52, v53, "[Scene:%{public}s] could not find context", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1DA6D2650](v55, -1, -1);
      MEMORY[0x1DA6D2650](v54, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v13, v50);
    }

    return;
  }

  (*(v27 + 32))(v30, v25, v26);
  sub_1D4152904();
  sub_1D41657F0();
  if (!*&v77[0])
  {
    (*(v27 + 8))(v30, v26);
    v31 = &unk_1EC7C47F0;
    v32 = &unk_1D41683D0;
    v33 = v77;
    goto LABEL_10;
  }

  v65 = v27;
  v78[0] = v77[0];
  v78[1] = v77[1];
  v78[2] = v77[2];
  sub_1D4152F84(v78, v77);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47F8, &qword_1D41683D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D414F5DC(v78, &qword_1EC7C4808, &qword_1D41683E0);
    (*(v65 + 8))(v30, v26);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, a5);
    (*(v66 + 8))(v19, v15);
    goto LABEL_11;
  }

  __swift_storeEnumTagSinglePayload(v19, 0, 1, a5);
  (*(v74 + 32))(v73, v19, a5);
  if (qword_1EC7C43D8 != -1)
  {
    swift_once();
  }

  v34 = sub_1D4165D70();
  __swift_project_value_buffer(v34, qword_1EC7C5F48);
  v35 = v67;
  v36 = v75;
  (*(v9 + 16))(v67, a1, v75);
  v37 = sub_1D4165D50();
  v38 = sub_1D4166A90();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v35;
    v40 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v77[0] = v66;
    *v40 = 136446466;
    sub_1D4152F2C();
    v41 = sub_1D4166C00();
    v42 = v36;
    v44 = v43;
    (*(v9 + 8))(v39, v42);
    v45 = sub_1D41529BC(v41, v44, v77);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v76 = a5;
    swift_getMetatypeMetadata();
    v46 = sub_1D4166930();
    v48 = sub_1D41529BC(v46, v47, v77);

    *(v40 + 14) = v48;
    _os_log_impl(&dword_1D4134000, v37, v38, "[Scene:%{public}s] calling handler for %s", v40, 0x16u);
    v49 = v66;
    swift_arrayDestroy();
    MEMORY[0x1DA6D2650](v49, -1, -1);
    MEMORY[0x1DA6D2650](v40, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v35, v36);
  }

  v60 = sub_1D4166A20();
  MEMORY[0x1EEE9AC00](v60);
  *(&v64 - 8) = v68;
  *(&v64 - 7) = a5;
  v61 = v72;
  v62 = v73;
  *(&v64 - 6) = v70;
  *(&v64 - 5) = v61;
  v63 = v71;
  *(&v64 - 4) = v69;
  *(&v64 - 3) = v63;
  *(&v64 - 2) = v62;
  sub_1D415179C(sub_1D4153054, (&v64 - 10));
  sub_1D414F5DC(v78, &qword_1EC7C4808, &qword_1D41683E0);
  (*(v65 + 8))(v30, v26);
  (*(v74 + 8))(v62, a5);
}

uint64_t sub_1D415179C(uint64_t a1, uint64_t a2)
{
  sub_1D4166A10();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1D415308C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D4166B30();
    MEMORY[0x1DA6D1C60](0xD00000000000003FLL, 0x80000001D416C990);
    v8 = sub_1D4166D10();
    MEMORY[0x1DA6D1C60](v8);

    MEMORY[0x1DA6D1C60](46, 0xE100000000000000);
    result = sub_1D4166BB0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D41519B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_9_5();
  if (qword_1ED9ACD78 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = v9;
  v15[7] = a3;
  v16 = sub_1D41527F8();

  v18(&type metadata for Definition, a9, v15, a4, &type metadata for Definition, a6, v16);
}

void sub_1D4151AB0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v85 = a2;
  v88 = sub_1D4165C70();
  v7 = OUTLINED_FUNCTION_0(v88);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v80[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v80[-v15];
  v16 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0(v16);
  v82 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_13();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v80[-v22];
  v87 = *(a5 - 8);
  v24 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v86 = v26 - v25;
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47E0, &qword_1D41683C8) - 8) + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v80[-v29];
  v31 = sub_1D41657E0();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  sub_1D41657C0();
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    v40 = &qword_1EC7C47E0;
    v41 = &qword_1D41683C8;
    v42 = v30;
LABEL_10:
    sub_1D414F5DC(v42, v40, v41);
LABEL_11:
    v59 = v88;
    if (qword_1EC7C43D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v60 = sub_1D4165D70();
    __swift_project_value_buffer(v60, qword_1EC7C5F48);
    (*(v9 + 16))(v14, a1, v59);
    v61 = sub_1D4165D50();
    v62 = sub_1D4166A90();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v91[0] = v64;
      *v63 = 136446210;
      sub_1D4152F2C();
      v65 = sub_1D4166C00();
      v67 = v66;
      v68 = OUTLINED_FUNCTION_5_3();
      v69(v68);
      v70 = sub_1D41529BC(v65, v67, v91);

      *(v63 + 4) = v70;
      _os_log_impl(&dword_1D4134000, v61, v62, "[Scene:%{public}s] could not find context", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_10_6();
      OUTLINED_FUNCTION_10_6();
    }

    else
    {

      v71 = OUTLINED_FUNCTION_5_3();
      v72(v71);
    }

    return;
  }

  (*(v34 + 32))(v39, v30, v31);
  sub_1D4152904();
  sub_1D41657F0();
  if (!*&v90[0])
  {
    v57 = OUTLINED_FUNCTION_4_3();
    v58(v57);
    v40 = &unk_1EC7C47F0;
    v41 = &unk_1D41683D0;
    v42 = v90;
    goto LABEL_10;
  }

  v91[0] = v90[0];
  v91[1] = v90[1];
  v91[2] = v90[2];
  sub_1D4152F84(v91, v90);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47F8, &qword_1D41683D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D414F5DC(v91, &qword_1EC7C4808, &qword_1D41683E0);
    v73 = OUTLINED_FUNCTION_4_3();
    v74(v73);
    __swift_storeEnumTagSinglePayload(v23, 1, 1, a5);
    (*(v82 + 8))(v23, v16);
    goto LABEL_11;
  }

  __swift_storeEnumTagSinglePayload(v23, 0, 1, a5);
  (*(v87 + 32))(v86, v23, a5);
  if (qword_1EC7C43D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v43 = sub_1D4165D70();
  __swift_project_value_buffer(v43, qword_1EC7C5F48);
  v44 = v83;
  v45 = v88;
  (*(v9 + 16))(v83, a1, v88);
  v46 = sub_1D4165D50();
  v47 = sub_1D4166A90();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v90[0] = v82;
    *v48 = 136446466;
    sub_1D4152F2C();
    v81 = v47;
    v49 = sub_1D4166C00();
    v50 = v44;
    v52 = v51;
    (*(v9 + 8))(v50, v45);
    v53 = sub_1D41529BC(v49, v52, v90);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    v89 = a5;
    swift_getMetatypeMetadata();
    v54 = sub_1D4166930();
    v56 = sub_1D41529BC(v54, v55, v90);

    *(v48 + 14) = v56;
    _os_log_impl(&dword_1D4134000, v46, v81, "[Scene:%{public}s] calling handler for %s", v48, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_10_6();
  }

  else
  {

    v75 = OUTLINED_FUNCTION_5_3();
    v76(v75);
  }

  v77 = v86;
  v85(v86);
  (*(v87 + 8))(v77, a5);
  sub_1D414F5DC(v91, &qword_1EC7C4808, &qword_1D41683E0);
  v78 = OUTLINED_FUNCTION_4_3();
  v79(v78);
}

uint64_t sub_1D41522A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_9_5();
  if (qword_1ED9ACD78 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = v9;
  v15[7] = a3;

  v17(a9, v15, a4, a6);
}

uint64_t sub_1D4152384(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a3;
  v62 = a2;
  v60 = a7;
  v8 = sub_1D4165570();
  v9 = OUTLINED_FUNCTION_0(v8);
  v58 = v10;
  v59 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = sub_1D4166AD0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v55 = v18;
  v56 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_13();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v55 - v23;
  v57 = *(a5 - 8);
  v25 = *(v57 + 64);
  v26 = MEMORY[0x1EEE9AC00](v22);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v55 - v29;
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47E0, &qword_1D41683C8) - 8) + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v55 - v33;
  v35 = sub_1D41657E0();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  sub_1D41657C0();
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    v44 = &qword_1EC7C47E0;
    v45 = &qword_1D41683C8;
    v46 = v34;
    return sub_1D414F5DC(v46, v44, v45);
  }

  (*(v38 + 32))(v43, v34, v35);
  sub_1D4152904();
  sub_1D41657F0();
  if (!v63)
  {
    v51 = OUTLINED_FUNCTION_6_5();
    v52(v51);
    v44 = &unk_1EC7C47F0;
    v45 = &unk_1D41683D0;
    v46 = &v63;
    return sub_1D414F5DC(v46, v44, v45);
  }

  sub_1D4143978(&v64, v65);
  sub_1D4152958(v65, &v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47F8, &qword_1D41683D8);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v24, 0, 1, a5);
    v47 = v57;
    (*(v57 + 32))(v30, v24, a5);
    (*(v47 + 16))(v28, v30, a5);
    sub_1D4165560();
    v62(v15);
    (*(v58 + 8))(v15, v59);
    (*(v47 + 8))(v30, a5);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v48 = OUTLINED_FUNCTION_6_5();
    return v49(v48);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v24, 1, 1, a5);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v53 = OUTLINED_FUNCTION_6_5();
    v54(v53);
    return (*(v55 + 8))(v24, v56);
  }
}

unint64_t sub_1D41527F8()
{
  result = qword_1EC7C48C0;
  if (!qword_1EC7C48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C48C0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRz10AppIntents28TargetContentProvidingIntentRd__r__lqd0__AaBHD3_AaBPAAE25onConnectionOptionPayload_7performQrqd__m_y0M0Qyd__ct5UIKit07UIScenekL10DefinitionRd__lFQOyx_01_de1_aB00Q0OQo_HOTm(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[2];
  sub_1D41527F8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1D4152904()
{
  result = qword_1EC7C47E8;
  if (!qword_1EC7C47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C47E8);
  }

  return result;
}

uint64_t sub_1D4152958(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D41529BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D4152A80(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1D4152FF4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D4152A80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D4152B80(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1D4166B50();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D4152B80(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D4152BCC(a1, a2);
  sub_1D4152CE4(&unk_1F4F85260);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D4152BCC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1D4166980())
  {
    result = sub_1D4152DC8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D4166B20();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1D4166B50();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D4152CE4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1D4152E38(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D4152DC8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4810, &qword_1D41683E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1D4152E38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4810, &qword_1D41683E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1D4152F2C()
{
  result = qword_1EC7C4800;
  if (!qword_1EC7C4800)
  {
    sub_1D4165C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4800);
  }

  return result;
}

uint64_t sub_1D4152F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4808, &qword_1D41683E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4152FF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D415308C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D41530BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = *(v5 + 16);
  OUTLINED_FUNCTION_17_3();
  v17();
  sub_1D4166A20();
  v18 = sub_1D4166A10();
  v19 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 2) = v18;
  *(v20 + 3) = v21;
  *(v20 + 4) = a1;
  *(v20 + 5) = a2;
  (*(v5 + 32))(&v20[v19], &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1D415326C();
}

void sub_1D415326C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  sub_1D414E718(v5, v26 - v12, &qword_1EC7C46D0, &qword_1D4168010);
  v14 = sub_1D4166A50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D414E5B4(v13, &qword_1EC7C46D0, &qword_1D4168010);
  }

  else
  {
    sub_1D4166A40();
    OUTLINED_FUNCTION_14(v14);
    (*(v16 + 8))(v13, v14);
  }

  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1D4166A00();
    v21 = v20;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v22 = sub_1D4166940() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = v3;
      *(v23 + 24) = v1;

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v24 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v26[1] = 7;
      v26[2] = v24;
      v26[3] = v22;
      swift_task_create();

      sub_1D414E5B4(v5, &qword_1EC7C46D0, &qword_1D4168010);

      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1D414E5B4(v5, &qword_1EC7C46D0, &qword_1D4168010);
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(v25 + 24) = v1;
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_28();
}

void Button.init<A>(intent:label:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28[1] = v8;
  v28[2] = v9;
  v11 = v10;
  v28[0] = v12;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v19 = v28[3];
    v20 = *(v14 + 16);
    OUTLINED_FUNCTION_17_3();
    v24(v21, v22, v23);
    v25 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = v7;
    *(v26 + 3) = v5;
    *(v26 + 4) = v3;
    *(v26 + 5) = v1;
    (*(v14 + 32))(&v26[v25], v18, v5);
    v27 = v19;
    sub_1D41667E0();

    (*(v14 + 8))(v11, v5);
    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_12_4();
    __break(1u);
  }
}

uint64_t sub_1D4153728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a4;
  sub_1D4166A20();
  v8[5] = sub_1D4166A10();
  v10 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D4155C44, v10, v9);
}

void Button<>.init<A>(_:intent:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(v10 - v9, v11, v12);
  Button.init<A>(intent:label:)();

  (*(v5 + 8))(v3, v1);
  OUTLINED_FUNCTION_28();
}

void Button<>.init<A, B>(_:intent:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  (*(v10 + 16))(v0);
  Button.init<A>(intent:label:)();
  (*(v10 + 8))(v6, v2);
  OUTLINED_FUNCTION_14(v4);
  (*(v14 + 8))(v8, v4);
  OUTLINED_FUNCTION_28();
}

void Button.init<A>(role:intent:label:)()
{
  OUTLINED_FUNCTION_39();
  v1 = v0;
  v38 = v2;
  v39 = v3;
  v5 = v4;
  v36 = v6;
  v37 = v7;
  v9 = v8;
  v11 = v10;
  v35 = v12;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v33 - v23;
  sub_1D41656D0();
  sub_1D414766C();
  if (OUTLINED_FUNCTION_8())
  {
    v25 = v40;
    sub_1D414E718(v11, v24, &qword_1EC7C4818, &qword_1D41683F0);
    v26 = *(v14 + 16);
    OUTLINED_FUNCTION_17_3();
    v27();
    v28 = *(v14 + 80);
    v33 = v9;
    v34 = v11;
    v29 = (v28 + 48) & ~v28;
    v30 = swift_allocObject();
    v31 = v39;
    *(v30 + 2) = v38;
    *(v30 + 3) = v5;
    *(v30 + 4) = v31;
    *(v30 + 5) = v1;
    (*(v14 + 32))(&v30[v29], v18, v5);
    v32 = v25;
    sub_1D41667C0();

    (*(v14 + 8))(v33, v5);
    sub_1D414E5B4(v34, &qword_1EC7C4818, &qword_1D41683F0);
    OUTLINED_FUNCTION_28();
  }

  else
  {
    OUTLINED_FUNCTION_12_4();
    __break(1u);
  }
}

void sub_1D4153CB0()
{
  OUTLINED_FUNCTION_39();
  v26[0] = v1;
  v26[1] = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C46D0, &qword_1D4168010);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_11_0();
  v20 = sub_1D4166A50();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v20);
  (*(v12 + 16))(v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v6);
  sub_1D4166A20();
  v21 = sub_1D4166A10();
  v22 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 2) = v21;
  *(v23 + 3) = v24;
  *(v23 + 4) = v8;
  *(v23 + 5) = v6;
  v25 = v26[0];
  *(v23 + 6) = v4;
  *(v23 + 7) = v25;
  (*(v12 + 32))(&v23[v22], v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1D415326C();

  OUTLINED_FUNCTION_28();
}

uint64_t objectdestroyTm_1()
{
  OUTLINED_FUNCTION_14(*(v0 + 24));
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1D4153EF8()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(*(v0[3] - 8) + 80);
  sub_1D4153CB0();
}

uint64_t sub_1D4153F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a6;
  v8[4] = a8;
  v8[2] = a4;
  sub_1D4166A20();
  v8[5] = sub_1D4166A10();
  v10 = sub_1D4166A00();

  return MEMORY[0x1EEE6DFA0](sub_1D4153FF0, v10, v9);
}

uint64_t sub_1D4153FF0()
{
  OUTLINED_FUNCTION_9();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_1D41530BC(v3, v2);
  OUTLINED_FUNCTION_17();

  return v5();
}

void Button<>.init<A>(_:role:intent:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v17 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_24_0();
  sub_1D414E718(v5, v0, &qword_1EC7C4818, &qword_1D41683F0);
  v15 = OUTLINED_FUNCTION_16_3(v7);
  v16(v15, v17, v2);
  Button.init<A>(role:intent:label:)();

  (*(v7 + 8))(v17, v2);
  sub_1D414E5B4(v5, &qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D415420C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1D4147B40(a1);
}

void Button<>.init<A, B>(_:role:intent:)()
{
  OUTLINED_FUNCTION_39();
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_5();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_0();
  sub_1D414E718(v7, v0, &qword_1EC7C4818, &qword_1D41683F0);
  v19 = OUTLINED_FUNCTION_16_3(v11);
  v20(v19, v22, v3);
  OUTLINED_FUNCTION_20_2();
  Button.init<A>(role:intent:label:)();
  (*(v11 + 8))(v22, v3);
  sub_1D414E5B4(v7, &qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_14(v5);
  (*(v21 + 8))(v9, v5);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D41543F0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  (*(v7 + 16))(v6 - v5);
  OUTLINED_FUNCTION_17_3();
  result = sub_1D4166560();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_1D41544BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1D41543F0(a1);
}

void Button<>.init<A>(_:systemImage:role:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_39();
  v23 = v22;
  v25 = v24;
  v51 = v26;
  v52 = v24;
  v50 = v27;
  v29 = v28;
  v49 = v30;
  v48 = v31;
  v33 = v32;
  v54 = v34;
  OUTLINED_FUNCTION_2();
  v36 = v35;
  v38 = *(v37 + 64);
  v53 = a22;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1_5();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v43);
  sub_1D414E718(v25, &v47 - v44, &qword_1EC7C4818, &qword_1D41683F0);
  v45 = OUTLINED_FUNCTION_16_3(v36);
  v46(v45, v23, a21);
  v55 = v33;
  v56 = v48;
  v57 = v49;
  v58 = v29;
  v59 = v50;
  v60 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C4820, &qword_1D4168C60);
  sub_1D415476C();
  OUTLINED_FUNCTION_20_2();
  Button.init<A>(role:intent:label:)();

  (*(v36 + 8))(v23, a21);
  sub_1D414E5B4(v52, &qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D41546C4()
{

  return sub_1D4166710();
}

uint64_t sub_1D4154758()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  return sub_1D41546C4();
}

unint64_t sub_1D415476C()
{
  result = qword_1ED9ACF28;
  if (!qword_1ED9ACF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7C4820, &qword_1D4168C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACF28);
  }

  return result;
}

void Button<>.init<A, B>(_:systemImage:role:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_39();
  v51 = v21;
  v52 = v22;
  v24 = v23;
  v26 = v25;
  v48 = v28;
  v49 = v27;
  v30 = v29;
  v50 = v29;
  v32 = v31;
  v53 = v33;
  OUTLINED_FUNCTION_2();
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1_5();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v42);
  sub_1D414E718(v30, &v48 - v43, &qword_1EC7C4818, &qword_1D41683F0);
  v44 = OUTLINED_FUNCTION_16_3(v35);
  v45 = v48;
  v46(v44, v48, v24);
  v54 = v26;
  v55 = v24;
  v56 = v52;
  v57 = a21;
  v58 = v32;
  v59 = v49;
  v60 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C4820, &qword_1D4168C60);
  sub_1D415476C();
  Button.init<A>(role:intent:label:)();

  (*(v35 + 8))(v45, v24);
  sub_1D414E5B4(v50, &qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_14(v26);
  (*(v47 + 8))(v32, v26);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D41549D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));

  return sub_1D4166720();
}

uint64_t sub_1D4154AC0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_1D41549D0(v0[6], v0[7], v0[8], v0[2]);
}

void Button<>.init<A>(_:image:role:intent:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v21 = v3;
  v5 = v4;
  v22 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_11_0();
  sub_1D414E718(v5, v0, &qword_1EC7C4818, &qword_1D41683F0);
  v17 = OUTLINED_FUNCTION_16_3(v9);
  v18(v17, v21, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C4820, &qword_1D4168C60);
  sub_1D415476C();
  OUTLINED_FUNCTION_20_2();
  Button.init<A>(role:intent:label:)();

  (*(v9 + 8))(v21, v2);
  sub_1D414E5B4(v22, &qword_1EC7C4818, &qword_1D41683F0);
  v19 = sub_1D4165CE0();
  OUTLINED_FUNCTION_14(v19);
  (*(v20 + 8))(v7);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D4154CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1D4165CE0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a5);

  return sub_1D4166730();
}

void Button<>.init<A, B>(_:image:role:intent:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v25 = v8;
  v26 = v10;
  v12 = v11;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4818, &qword_1D41683F0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_11_0();
  sub_1D414E718(v9, v1, &qword_1EC7C4818, &qword_1D41683F0);
  (*(v14 + 16))(v0, v7, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C4820, &qword_1D4168C60);
  sub_1D415476C();
  OUTLINED_FUNCTION_20_2();
  Button.init<A>(role:intent:label:)();
  (*(v14 + 8))(v7, v3);
  sub_1D414E5B4(v25, &qword_1EC7C4818, &qword_1D41683F0);
  v22 = sub_1D4165CE0();
  OUTLINED_FUNCTION_14(v22);
  (*(v23 + 8))(v26);
  OUTLINED_FUNCTION_14(v5);
  (*(v24 + 8))(v12, v5);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D4155010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4165CE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v14 + 16))(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  (*(v7 + 16))(v11, a2, v6);
  return sub_1D4166740();
}

uint64_t sub_1D4155198()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_1D4155010(v0[6], v0[7], v0[2]);
}

uint64_t sub_1D41551A8()
{
  OUTLINED_FUNCTION_2_0();
  v1 = v0[6];
  v2 = v0[7];
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_4(v8);

  return sub_1D4153F54(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D4155280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  sub_1D4166A20();
  v6[9] = sub_1D4166A10();
  v8 = sub_1D4166A00();
  v6[10] = v8;
  v6[11] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D415531C, v8, v7);
}

uint64_t sub_1D415531C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(MEMORY[0x1E6959E80] + 4);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1D41553B4;
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];

  return MEMORY[0x1EEDB2D50](1, v3, v4);
}

uint64_t sub_1D41553B4()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_1D4155544;
  }

  else
  {
    v7 = sub_1D41554EC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D41554EC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_1D4155544()
{
  v1 = v0[13];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47A8, &qword_1D4168310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D4168270;
  sub_1D4166B30();
  swift_getDynamicType();
  v6 = sub_1D4166D10();
  v8 = v7;

  MEMORY[0x1DA6D1C60](0xD00000000000001FLL, 0x80000001D416CA10);
  swift_getErrorValue();
  v10 = v0[2];
  v9 = v0[3];
  v11 = v0[4];
  v12 = sub_1D4166C70();
  MEMORY[0x1DA6D1C60](v12);

  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_1D4166CC0();

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_1D41556B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D41557B0;

  return v7(a1);
}

uint64_t sub_1D41557B0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_1D4155898()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_7(v4);

  return v7(v6);
}

uint64_t sub_1D415592C()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_7(v4);

  return v7(v6);
}

uint64_t sub_1D41559C0(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7(v8);
  *v9 = v10;
  v9[1] = sub_1D414E4D0;

  return sub_1D4155280(a1, v6, v7, v1 + v5, v3, v4);
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D4155B68()
{
  OUTLINED_FUNCTION_2_0();
  v1 = v0[6];
  v2 = v0[7];
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_4(v8);

  return sub_1D4153728(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D4155CDC()
{
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_1_6();

  return MEMORY[0x1EEDDC7F0]();
}

uint64_t sub_1D4155D2C()
{
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_1_6();

  return MEMORY[0x1EEDDC3F0]();
}

uint64_t (*sub_1D4155D7C(uint64_t a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return sub_1D4156D88;
}

uint64_t sub_1D4155E64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1D4155D7C(*a1, a1[1]);
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1D4156D5C;
  a2[1] = result;
  return result;
}

uint64_t sub_1D4155ECC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_1D4165DB0();
}

uint64_t sub_1D4155FC8()
{
  result = sub_1D4155FE8();
  qword_1EC7C5F60 = result;
  return result;
}

uint64_t sub_1D4155FE8()
{
  v0 = sub_1D4166AB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D4166AA0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1D4166880();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1D4156C20(0, &qword_1EC7C48D8, 0x1E69E9610);
  sub_1D4166870();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1D4156C60(&qword_1EC7C48E0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C48E8, &qword_1D4168570);
  sub_1D4156CA8();
  sub_1D4166B00();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  return sub_1D4166AC0();
}

uint64_t sub_1D4156228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_1D4165C70();
  v3[11] = v4;
  OUTLINED_FUNCTION_24(v4);
  v3[12] = v5;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47E0, &qword_1D41683C8) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v9 = sub_1D41657E0();
  v3[16] = v9;
  OUTLINED_FUNCTION_24(v9);
  v3[17] = v10;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D415637C, 0, 0);
}

uint64_t sub_1D415637C()
{
  v1 = *(v0 + 120);
  sub_1D41657D0();
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v4);
  (*(v3 + 32))(v2, v5, v4);
  sub_1D4165C60();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C48B0, &qword_1D4168560);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1D4165730();
  sub_1D4156C20(0, &qword_1EC7C48B8, 0x1E698E5F8);

  v11 = sub_1D41568C8(sub_1D4156C1C, v10);
  if (qword_1EC7C43E0 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 104);
  [v11 setQueue_];
  sub_1D41657B0();
  sub_1D41527F8();
  v14 = v11;
  v21 = sub_1D4165D80();
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 64);
  v35 = *(v0 + 72);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  *(v0 + 16) = v10;
  *(v0 + 48) = v35;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 24));
  (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v25);
  sub_1D4152904();

  v27 = v21;
  sub_1D4165800();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C48D0, &qword_1D4168568);
  v28 = sub_1D4165870();
  OUTLINED_FUNCTION_24(v28);
  v30 = *(v29 + 72);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D4168270;
  v34 = v27;
  sub_1D4165740();
  sub_1D4165860();

  (*(v23 + 8))(v22, v24);
  v15 = *(v0 + 144);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 104);

  v19 = *(v0 + 8);

  return v19(v33);
}

id sub_1D41568C8(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D4156978;
  v5[3] = &block_descriptor;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() responderWithHandler_];
  _Block_release(v2);

  return v3;
}

void sub_1D4156978(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1D41569E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4156A8C;

  return sub_1D4156228(a1, a2, a3);
}

uint64_t sub_1D4156A8C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1D4156BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C47E0, &qword_1D41683C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4156C20(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D4156C60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D4156CA8()
{
  result = qword_1EC7C48F0;
  if (!qword_1EC7C48F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C48E8, &qword_1D4168570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C48F0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D4156D24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1D4156D5C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1D4156D90()
{
  OUTLINED_FUNCTION_2_6();
  result = EnvironmentValues.attributeSet.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D4156DE4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.displayLocation.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1D4156E58()
{
  OUTLINED_FUNCTION_2_6();
  result = EnvironmentValues.searchString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D4156E80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.searchString.setter();
}

uint64_t DisplayRepresentation.init<A>(content:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a1;
  v47 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4960, &qword_1D4168578);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = v44 - v7;
  v46 = sub_1D4165C10();
  v8 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1();
  v44[1] = v10 - v9;
  sub_1D41658F0();
  OUTLINED_FUNCTION_2();
  v48 = v12;
  v49 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = sub_1D4165820();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_1();
  v20 = sub_1D4165AD0();
  OUTLINED_FUNCTION_2();
  v50 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_2();
  v29 = v28;
  v31 = *(v30 + 64);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = v44 - v37;
  v52(v36);
  v39 = sub_1D4165B90();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_1D4165B80();
  (*(v29 + 16))(v35, v38, a2);
  v52 = a2;
  sub_1D4142CA0(v35, a2, v51);
  (*(v48 + 104))(v17, *MEMORY[0x1E695A1E8], v49);
  sub_1D4165AC0();
  sub_1D41576F4(qword_1ED9ACAE8, MEMORY[0x1E695A6C0]);
  v42 = v53;
  sub_1D4165B70();
  if (v42)
  {

    (*(v50 + 8))(v27, v20);
  }

  else
  {
    v53 = v20;
    sub_1D4165C00();
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v46);
    sub_1D4165950();

    (*(v50 + 8))(v27, v53);
  }

  return (*(v29 + 8))(v38, v52);
}

void static DisplayRepresentation.view(from:attributeSet:displayLocation:searchString:)(uint64_t a1@<X2>, unsigned __int8 *a2@<X3>, uint64_t *a3@<X8>)
{
  v26 = a3;
  v6 = type metadata accessor for SharedIndexedViewFormatDecodable();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  v17 = *a2;
  v11 = sub_1D4165B60();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D4165B50();
  sub_1D41576F4(&qword_1EC7C4380, type metadata accessor for SharedIndexedViewFormatDecodable);
  sub_1D4165B40();
  if (v3)
  {

    sub_1D4143840();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v14 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    swift_getKeyPath();
    v18[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4968, &qword_1D41685A8);
    v24 = sub_1D4165F80();
    v21 = *(v14 + 24);
    v22 = sub_1D415773C(&qword_1EC7C4338, &qword_1EC7C4968, &qword_1D41685A8);
    WitnessTable = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_1D41665C0();

    __swift_project_boxed_opaque_existential_1(v23, v24);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4970, &qword_1D41685D8);
    v19 = sub_1D4165F80();
    sub_1D415773C(&qword_1EC7C4348, &qword_1EC7C4970, &qword_1D41685D8);
    v20 = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v18);
    sub_1D41665C0();

    __swift_project_boxed_opaque_existential_1(v18, v19);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4978, &qword_1D4168608);
    v15 = sub_1D4165F80();
    v16 = v26;
    v26[3] = v15;
    sub_1D415773C(&qword_1EC7C4340, &qword_1EC7C4978, &qword_1D4168608);
    v16[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v16);

    sub_1D41665C0();

    sub_1D41437E4(v10);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }
}

uint64_t sub_1D41576F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D415773C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_1D4157790()
{
  if (qword_1EC7C4420 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC7C4428;
  v1 = qword_1EC7C5F88;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC7C5F90;
  v3 = objc_opt_self();
  v4 = v2;
  result = [v3 clearColor];
  qword_1EC7C4980 = v1;
  *algn_1EC7C4988 = v4;
  qword_1EC7C4990 = result;
  qword_1EC7C4998 = 0;
  return result;
}

id static ShortcutsLinkStyle.automatic.getter()
{
  if (qword_1EC7C43E8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C4980);
  v1 = v0;

  return v3;
}

id sub_1D41578E8()
{
  if (qword_1EC7C4428 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC7C4420;
  v1 = qword_1EC7C5F90;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC7C5F88;
  result = [v2 colorWithAlphaComponent_];
  qword_1EC7C49A0 = v1;
  *algn_1EC7C49A8 = v2;
  qword_1EC7C49B0 = result;
  unk_1EC7C49B8 = 0x3FF0000000000000;
  return result;
}

id static ShortcutsLinkStyle.automaticOutline.getter()
{
  if (qword_1EC7C43F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C49A0);
  v1 = v0;

  return v3;
}

id sub_1D4157A30()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 blackColor];
  result = [v0 clearColor];
  qword_1EC7C49C0 = v1;
  *algn_1EC7C49C8 = v2;
  qword_1EC7C49D0 = result;
  unk_1EC7C49D8 = 0;
  return result;
}

id static ShortcutsLinkStyle.light.getter()
{
  if (qword_1EC7C43F8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C49C0);
  v1 = v0;

  return v3;
}

void sub_1D4157B3C()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 blackColor];
  v3 = [v0 blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  qword_1EC7C49E0 = v1;
  *algn_1EC7C49E8 = v2;
  qword_1EC7C49F0 = v4;
  unk_1EC7C49F8 = 0x3FF0000000000000;
}

id static ShortcutsLinkStyle.lightOutline.getter()
{
  if (qword_1EC7C4400 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C49E0);
  v1 = v0;

  return v3;
}

id sub_1D4157C70()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v0 whiteColor];
  result = [v0 clearColor];
  qword_1EC7C4A00 = v1;
  *algn_1EC7C4A08 = v2;
  qword_1EC7C4A10 = result;
  unk_1EC7C4A18 = 0;
  return result;
}

id static ShortcutsLinkStyle.dark.getter()
{
  if (qword_1EC7C4408 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C4A00);
  v1 = v0;

  return v3;
}

void sub_1D4157D7C()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v0 whiteColor];
  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  qword_1EC7C4A20 = v1;
  *algn_1EC7C4A28 = v2;
  qword_1EC7C4A30 = v4;
  unk_1EC7C4A38 = 0x3FF0000000000000;
}

id static ShortcutsLinkStyle.darkOutline.getter()
{
  if (qword_1EC7C4410 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_6(&qword_1EC7C4A20);
  v1 = v0;

  return v3;
}

uint64_t ShortcutsLink.init(action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  return result;
}

uint64_t ShortcutsLink.body.getter@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A40, &qword_1D4168658);
  OUTLINED_FUNCTION_5(v125);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  v124 = &v112 - v5;
  v6 = sub_1D4166170();
  v7 = OUTLINED_FUNCTION_0(v6);
  v128 = v8;
  v129 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1D4165FF0();
  v12 = OUTLINED_FUNCTION_5(v132);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v122 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v131 = (&v112 - v17);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A48, &qword_1D4168660);
  OUTLINED_FUNCTION_5(v117);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v20);
  v133 = &v112 - v21;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A50, &qword_1D4168668);
  OUTLINED_FUNCTION_5(v121);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v112 - v25;
  v26 = sub_1D4165FB0();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A58, &qword_1D4168670);
  OUTLINED_FUNCTION_0(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v112 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A60, &qword_1D4168678);
  v43 = OUTLINED_FUNCTION_0(v42);
  v119 = v44;
  v120 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v112 - v48;
  v50 = v1[1];
  v144 = *v1;
  v145 = v50;
  v146 = v1[2];
  v147 = *(v1 + 6);
  v51 = swift_allocObject();
  v52 = v1[1];
  *(v51 + 16) = *v1;
  *(v51 + 32) = v52;
  *(v51 + 48) = v1[2];
  *(v51 + 64) = *(v1 + 6);
  v134 = &v144;
  sub_1D4159A48(&v144, v142);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A68, &qword_1D4168680);
  sub_1D4159A80();
  sub_1D41667D0();
  sub_1D4165FA0();
  sub_1D41361D0(&qword_1EC7C4A90, &qword_1EC7C4A58, &qword_1D4168670);
  sub_1D415AB2C(&qword_1EC7C4A98, MEMORY[0x1E697C248]);
  v118 = v49;
  sub_1D41665B0();
  (*(v29 + 8))(v33, v26);
  (*(v36 + 8))(v41, v34);
  v53 = *(v132 + 20);
  v54 = *MEMORY[0x1E697F468];
  v55 = sub_1D4166290();
  OUTLINED_FUNCTION_5(v55);
  v57 = *(v56 + 104);
  v58 = v131;
  v115 = v56 + 104;
  v116 = v57;
  v57(v131 + v53, v54, v55);
  __asm { FMOV            V0.2D, #13.0 }

  v114 = _Q0;
  *v58 = _Q0;
  v148[0] = v144;
  v148[1] = v145;
  v149 = v146;
  v65 = *(&v144 + 1);
  v64 = v144;
  v66 = v145;
  v130 = v146;
  v113 = *(&v145 + 1);
  if (v146 == 1)
  {
    OUTLINED_FUNCTION_5_4();
    v67 = v65;
    v68 = v64;
  }

  else
  {
    sub_1D4159C10(v148, v142);
    sub_1D4166A80();
    v69 = sub_1D41663A0();
    sub_1D4165D40();

    v112 = v66;
    v70 = v65;
    v71 = v55;
    v72 = v54;
    v73 = v127;
    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(v148, &qword_1EC7C4AA0, &qword_1D4168698);
    (*(v128 + 8))(v73, v129);
    v68 = v135;
    v67 = v136;
    v54 = v72;
    v55 = v71;
    v65 = v70;
    v66 = v112;
  }

  v74 = sub_1D41666B0();
  if (v130)
  {
    OUTLINED_FUNCTION_5_4();
    v75 = v66;
    v76 = v65;
    v77 = v64;
  }

  else
  {
    sub_1D4159C10(v148, v142);
    sub_1D4166A80();
    v78 = sub_1D41663A0();
    sub_1D4165D40();

    v79 = v127;
    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(v148, &qword_1EC7C4AA0, &qword_1D4168698);
    (*(v128 + 8))(v79, v129);
    v77 = v135;
    v76 = v136;
    v75 = v137;
  }

  sub_1D4165DE0();
  v80 = v131;
  v81 = v133;
  sub_1D4159C80(v131, v133);
  v82 = *v142 * 0.5;
  v83 = v81 + *(v117 + 68);
  sub_1D4159C80(v80, v83);
  *(v83 + *(sub_1D4165FE0() + 20)) = v82;
  v84 = v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AA8, &qword_1D41686A0) + 36);
  v85 = v142[1];
  *v84 = v142[0];
  *(v84 + 16) = v85;
  *(v84 + 32) = v143;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AB0, &qword_1D41686A8);
  *(v83 + *(v86 + 52)) = v74;
  *(v83 + *(v86 + 56)) = 256;
  v87 = sub_1D4166840();
  v89 = v88;
  sub_1D4146F78(v80);
  v90 = (v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AB8, &qword_1D41686B0) + 36));
  *v90 = v87;
  v90[1] = v89;
  v91 = v122;
  v116(&v122[*(v132 + 20)], v54, v55);
  *v91 = v114;
  if (v130)
  {
    v138 = v64;
    v139 = v65;
    v140 = v66;
    v141 = v113;
    sub_1D4159C10(v148, &v135);
  }

  else
  {
    sub_1D4159C10(v148, &v135);
    sub_1D4166A80();
    v92 = sub_1D41663A0();
    sub_1D4165D40();

    v93 = v127;
    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(v148, &qword_1EC7C4AA0, &qword_1D4168698);
    (*(v128 + 8))(v93, v129);
    v65 = v139;
    v66 = v140;
  }

  v94 = sub_1D41666B0();
  v95 = v91;
  v96 = v124;
  sub_1D4159CE4(v95, v124);
  v97 = v125;
  *(v96 + *(v125 + 52)) = v94;
  *(v96 + *(v97 + 56)) = 256;
  v98 = sub_1D4166840();
  v100 = v99;
  v101 = v123;
  v102 = &v123[*(v121 + 36)];
  sub_1D4159D48(v96, v102);
  v103 = (v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AC0, &qword_1D41686B8) + 36));
  *v103 = v98;
  v103[1] = v100;
  sub_1D4159DB8(v133, v101, &qword_1EC7C4A48, &qword_1D4168660);
  v104 = sub_1D4166840();
  v106 = v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AC8, &qword_1D41686C0);
  v108 = v126;
  v109 = v126 + *(v107 + 36);
  sub_1D4159DB8(v101, v109, &qword_1EC7C4A50, &qword_1D4168668);
  v110 = (v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AD0, &qword_1D41686C8) + 36));
  *v110 = v104;
  v110[1] = v106;
  return (*(v119 + 32))(v108, v118, v120);
}

uint64_t sub_1D415892C(__int128 *a1)
{
  v2 = *(a1 + 6);
  (*(a1 + 5))();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 6);
  return sub_1D415956C();
}

uint64_t sub_1D4158980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A78, &qword_1D4168688);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-v7];
  v21 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AF8, &qword_1D4168818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B00, &unk_1D4168820);
  sub_1D415A0EC();
  sub_1D415A170();
  sub_1D4166700();
  v22 = xmmword_1D4168620;
  v23 = 0x4024000000000000;
  sub_1D41361D0(&qword_1EC7C4A80, &qword_1EC7C4A78, &qword_1D4168688);
  sub_1D4159BBC();
  sub_1D41665A0();
  (*(v5 + 8))(v8, v4);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A68, &qword_1D4168680) + 36));
  v10 = *(sub_1D4165FF0() + 20);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1D4166290();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #13.0 }

  *v9 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A88, &qword_1D4168690);
  *&v9[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1D4158BF4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v43 = sub_1D4166170();
  v42 = *(v43 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[1];
  v48 = *a1;
  v49 = v5;
  v50 = a1[2];
  v51 = *(a1 + 6);
  v45[0] = sub_1D4158F38();
  v45[1] = v6;
  sub_1D415A230();
  v7 = sub_1D4166560();
  v9 = v8;
  v11 = v10;
  sub_1D41664F0();
  v12 = sub_1D4166530();
  v14 = v13;
  v16 = v15;

  sub_1D414911C(v7, v9, v11 & 1);

  sub_1D4166440();
  v17 = sub_1D4166510();
  v19 = v18;
  v21 = v20;
  sub_1D414911C(v12, v14, v16 & 1);

  LOBYTE(v50) = *(a1 + 32);
  v22 = a1[1];
  v48 = *a1;
  v49 = v22;
  v23 = v48;
  if (v50 == 1)
  {
    v24 = v49;
    v46 = v48;
    v47 = v49;
    sub_1D4159C10(&v48, v45);
  }

  else
  {
    sub_1D4159C10(&v48, v45);
    sub_1D4166A80();
    v25 = sub_1D41663A0();
    sub_1D4165D40();

    v26 = v41;
    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(&v48, &qword_1EC7C4AA0, &qword_1D4168698);
    (*(v42 + 8))(v26, v43);
    v23 = v46;
    v24 = v47;
  }

  sub_1D41666B0();
  v27 = sub_1D4166520();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_1D414911C(v17, v19, v21 & 1);

  v34 = sub_1D4166400();
  result = sub_1D4165DC0();
  v36 = v44;
  *v44 = v27;
  v36[1] = v29;
  *(v36 + 16) = v31 & 1;
  v36[3] = v33;
  *(v36 + 32) = v34;
  v36[5] = v37;
  v36[6] = v38;
  v36[7] = v39;
  v36[8] = v40;
  *(v36 + 72) = 0;
  return result;
}

uint64_t sub_1D4158F38()
{
  v0 = objc_opt_self();
  v1 = sub_1D415A9EC([v0 mainBundle], &selRef_localizedInfoDictionary);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = sub_1D415A9EC([v0 mainBundle], &selRef_infoDictionary);
    if (!v2)
    {
      v15 = 0u;
      v16 = 0u;
      goto LABEL_10;
    }
  }

  result = *MEMORY[0x1E695E4F8];
  if (*MEMORY[0x1E695E4F8])
  {
    v4 = sub_1D4166910();
    v6 = v5;

    sub_1D4159508(v4, v6, v2, &v13);

    if (v14)
    {

      sub_1D4147280(&v13, &v15);
    }

    else
    {
      sub_1D4159508(0xD000000000000013, 0x80000001D416CB30, v2, &v15);

      if (v14)
      {
        sub_1D4137AEC(&v13, &qword_1EC7C4B18, &qword_1D4168CB0);
      }
    }

LABEL_10:
    v7 = MEMORY[0x1E69E6158];
    if (*(&v16 + 1))
    {
      if (swift_dynamicCast())
      {
        v9 = *(&v13 + 1);
        v8 = v13;
LABEL_15:
        type metadata accessor for AppSwiftUIBridge();
        v10 = [v0 bundleForClass_];
        sub_1D4165BE0();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B20, &qword_1D4168830);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1D4168270;
        *(v11 + 56) = v7;
        *(v11 + 64) = sub_1D415AA60();
        *(v11 + 32) = v8;
        *(v11 + 40) = v9;
        v12 = sub_1D4166920();

        return v12;
      }
    }

    else
    {
      sub_1D4137AEC(&v15, &qword_1EC7C4B18, &qword_1D4168CB0);
    }

    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_1D41591F0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D41666E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_1D4166170();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v30 = *(a1 + 32);
  v14 = a1[1];
  v28 = *a1;
  v29 = v14;
  v15 = v28;
  if (v30 == 1)
  {
    v16 = *(&v28 + 1);
    v17 = v29;
    v26 = v28;
    v27 = v29;
    sub_1D4159C10(&v28, v25);
  }

  else
  {
    sub_1D4159C10(&v28, v25);
    sub_1D4166A80();
    v18 = sub_1D41663A0();
    sub_1D4165D40();

    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(&v28, &qword_1EC7C4AA0, &qword_1D4168698);
    (*(v10 + 8))(v13, v9);
    v16 = *(&v26 + 1);
    v15 = v26;
    v17 = v27;
  }

  sub_1D415A1EC();
  type metadata accessor for AppSwiftUIBridge();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  result = sub_1D416063C(0x74756374726F6853, 0xE900000000000073, v20, 0);
  if (result)
  {
    v22 = result;
    sub_1D41666C0();
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v23 = sub_1D41666F0();

    result = (*(v5 + 8))(v8, v4);
  }

  else
  {
    v23 = 0;
  }

  *a2 = v23;
  return result;
}

double sub_1D4159508@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1D415A74C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1D4152FF4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1D415956C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B30, &qword_1D4168838);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_1D4165C50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  v10 = sub_1D415A97C(v9);
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1D4166B30();

  v18 = 0xD000000000000019;
  v19 = 0x80000001D416CB50;
  MEMORY[0x1DA6D1C60](v12, v13);

  sub_1D4165C40();

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_1D4137AEC(v3, &qword_1EC7C4B30, &qword_1D4168838);
  }

  (*(v5 + 32))(v8, v3, v4);
  v15 = [objc_opt_self() sharedApplication];
  v16 = sub_1D4165C30();
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1D415AB2C(&qword_1EC7C4490, type metadata accessor for OpenExternalURLOptionsKey);
  sub_1D41668B0();
  v17 = sub_1D4166890();

  [v15 openURL:v16 options:v17 completionHandler:0];

  return (*(v5 + 8))(v8, v4);
}

uint64_t View.shortcutsLinkStyle(_:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  swift_getKeyPath();
  v5 = *a1;
  sub_1D41665C0();
}

uint64_t sub_1D41598EC()
{
  sub_1D415AAB4();

  return sub_1D4166180();
}

double sub_1D4159934@<D0>(uint64_t a1@<X8>)
{
  sub_1D41598EC();
  result = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1D4159980(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  *&v8 = *a1;
  *(&v8 + 1) = v1;
  v9 = v2;
  v10 = v3;
  v4 = v8;
  v5 = v1;
  v6 = v2;
  return sub_1D415A284(&v8);
}

void sub_1D41599DC(void *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

unint64_t sub_1D4159A80()
{
  result = qword_1EC7C4A70;
  if (!qword_1EC7C4A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4A68, &qword_1D4168680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4A78, &qword_1D4168688);
    sub_1D41361D0(&qword_1EC7C4A80, &qword_1EC7C4A78, &qword_1D4168688);
    sub_1D4159BBC();
    swift_getOpaqueTypeConformance2();
    sub_1D41361D0(&qword_1ED9ACCD8, &qword_1EC7C4A88, &qword_1D4168690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4A70);
  }

  return result;
}

unint64_t sub_1D4159BBC()
{
  result = qword_1ED9ACA90;
  if (!qword_1ED9ACA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACA90);
  }

  return result;
}

uint64_t sub_1D4159C10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4AA0, &qword_1D4168698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4159C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4165FF0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4159CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4165FF0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4159D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A40, &qword_1D4168658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4159DB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D4159E34(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D4159E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D4159ECC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1D4159F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D4159F64()
{
  result = qword_1EC7C4AD8;
  if (!qword_1EC7C4AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4AC8, &qword_1D41686C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4A58, &qword_1D4168670);
    sub_1D4165FB0();
    sub_1D41361D0(&qword_1EC7C4A90, &qword_1EC7C4A58, &qword_1D4168670);
    sub_1D415AB2C(&qword_1EC7C4A98, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1D41361D0(&qword_1EC7C4AE0, &qword_1EC7C4AD0, &qword_1D41686C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4AD8);
  }

  return result;
}

unint64_t sub_1D415A0EC()
{
  result = qword_1EC7C4B08;
  if (!qword_1EC7C4B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4AF8, &qword_1D4168818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4B08);
  }

  return result;
}

unint64_t sub_1D415A170()
{
  result = qword_1EC7C4B10;
  if (!qword_1EC7C4B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4B00, &unk_1D4168820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4B10);
  }

  return result;
}

unint64_t sub_1D415A1EC()
{
  result = qword_1ED9ACA20;
  if (!qword_1ED9ACA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9ACA20);
  }

  return result;
}

unint64_t sub_1D415A230()
{
  result = qword_1ED9ACA40;
  if (!qword_1ED9ACA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACA40);
  }

  return result;
}

uint64_t sub_1D415A284(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  sub_1D415AAB4();
  return sub_1D4166190();
}

id sub_1D415A2D4()
{
  if (qword_1EC7C43E8 != -1)
  {
    swift_once();
  }

  v0 = *algn_1EC7C4988;
  v4 = qword_1EC7C4990;
  qword_1EC7C5F68 = qword_1EC7C4980;
  unk_1EC7C5F70 = *algn_1EC7C4988;
  qword_1EC7C5F78 = qword_1EC7C4990;
  qword_1EC7C5F80 = qword_1EC7C4998;
  v1 = qword_1EC7C4980;
  v2 = v0;

  return v4;
}

id sub_1D415A370@<X0>(void *a1@<X8>)
{
  if (qword_1EC7C4418 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC7C5F68;
  v3 = unk_1EC7C5F70;
  v4 = qword_1EC7C5F78;
  v9 = qword_1EC7C5F78;
  v5 = qword_1EC7C5F80;
  *a1 = qword_1EC7C5F68;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  v6 = v2;
  v7 = v3;

  return v9;
}

id sub_1D415A40C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  result = sub_1D415A58C(sub_1D415A45C, 0);
  qword_1EC7C5F88 = result;
  return result;
}

id sub_1D415A45C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = &selRef_blackColor;
  }

  else
  {
    v2 = off_1E8465B18[v1];
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

id sub_1D415A4CC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  result = sub_1D415A58C(sub_1D415A51C, 0);
  qword_1EC7C5F90 = result;
  return result;
}

id sub_1D415A51C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = &selRef_whiteColor;
  }

  else
  {
    v2 = off_1E8465B30[v1];
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

id sub_1D415A58C(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D415A630;
  v6[3] = &block_descriptor_0;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

id sub_1D415A630(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

unint64_t sub_1D415A698(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D4166CD0();
  type metadata accessor for CFString(0);
  sub_1D415AB2C(&qword_1EC7C4B40, type metadata accessor for CFString);
  sub_1D4165CC0();
  v4 = sub_1D4166CF0();

  return sub_1D415A7C4(a1, v4);
}

unint64_t sub_1D415A74C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D4166CD0();
  sub_1D4166950();
  v6 = sub_1D4166CF0();

  return sub_1D415A8C8(a1, a2, v6);
}

unint64_t sub_1D415A7C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_1D415AB2C(&qword_1EC7C4B40, type metadata accessor for CFString);
    v8 = v7;
    v9 = sub_1D4165CB0();

    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D415A8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D4166C20() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1D415A97C(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D4166910();

  return v3;
}

uint64_t sub_1D415A9EC(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1D41668A0();

  return v4;
}

unint64_t sub_1D415AA60()
{
  result = qword_1EC7C4B28;
  if (!qword_1EC7C4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4B28);
  }

  return result;
}

unint64_t sub_1D415AAB4()
{
  result = qword_1EC7C4B38;
  if (!qword_1EC7C4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4B38);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D415AB2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _ProjectedIntentParameter.requestConfirmation<A>(for:dialog:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18();
  v19 = _ProjectedIntentParameter.requestConfirmation<A>(for:dialog:view:)(a1, a2, v17, a5, a6);
  (*(v11 + 8))(v17, a6);
  return v19;
}

uint64_t _ProjectedIntentParameter.requestConfirmation<A>(for:dialog:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4440, &qword_1D41675E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v29 - v9;
  v11 = sub_1D41659A0();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_2();
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  (*(v25 + 16))(v24 - v23, a3, a5);
  v26 = sub_1D4166800();
  v29[6] = MEMORY[0x1E6981910];
  v29[7] = sub_1D413B5AC();
  v29[3] = v26;

  sub_1D4165990();
  (*(v13 + 16))(v10, v19, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v27 = sub_1D4165A70();

  sub_1D413B600(v10);
  (*(v13 + 8))(v19, v11);
  return v27;
}

uint64_t static AppManager.registerSwiftUIHooks()()
{
  if (qword_1ED9ACD78 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_1D415AEE8()
{
  OUTLINED_FUNCTION_6();
  sub_1D4166A20();
  *(v0 + 16) = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_6_6();
  sub_1D4166A00();
  OUTLINED_FUNCTION_9_6();
  v1 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEE6DFA0](v1);
}

uint64_t sub_1D415AF60()
{
  v1 = *(v0 + 16);

  sub_1D415B340();
  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_1D415AFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a3;
  v25 = a2;
  v27 = sub_1D4165790();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D4165630();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D4165840();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B48, &qword_1D4168950);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v22 - v17;
  sub_1D41655B0();
  sub_1D41655D0();
  swift_getObjectType();
  v19 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4BA0, &qword_1D41689B0) + 32));
  type metadata accessor for CGRect(0);
  sub_1D41662C0();
  sub_1D4165770();
  sub_1D4165830();
  (*(v24 + 8))(v6, v27);
  (*(v7 + 8))(v10, v26);
  (*(v11 + 8))(v14, v23);
  v20 = sub_1D4165920();
  result = __swift_getEnumTagSinglePayload(v18, 1, v20);
  if (result != 1)
  {
    return (*(*(v20 - 8) + 32))(v22, v18, v20);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D415B340()
{
  sub_1D4166300();
  v2 = MEMORY[0x1E69E7CC0];
  sub_1D41662E0();
  sub_1D41662F0();

  if (v0)
  {
  }

  return v2;
}

uint64_t sub_1D415B3E4()
{
  OUTLINED_FUNCTION_6();
  sub_1D4166A20();
  *(v0 + 16) = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_6_6();
  sub_1D4166A00();
  OUTLINED_FUNCTION_9_6();
  v1 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEE6DFA0](v1);
}

uint64_t sub_1D415B45C()
{
  v1 = *(v0 + 16);

  sub_1D415B340();
  OUTLINED_FUNCTION_23();

  return v2();
}

uint64_t sub_1D415B4F8(uint64_t a1)
{
  v2 = sub_1D4165790();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D4165600();
  sub_1D4165680();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B78, &qword_1D4168980);
  v5 = *(a1 + *(v4 + 28));
  sub_1D4166860();
  swift_getObjectType();
  v6 = *(a1 + *(v4 + 32));
  type metadata accessor for CGRect(0);
  sub_1D41662C0();
  sub_1D4165770();
  return sub_1D4165930();
}

uint64_t sub_1D415B644()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 64) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 32) = v4;
  sub_1D4166A20();
  *(v0 + 56) = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_6_6();
  sub_1D4166A00();
  OUTLINED_FUNCTION_9_6();
  v5 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1D415B6C8()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v9 = *(v0 + 32);

  sub_1D4166300();
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  sub_1D41662E0();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1 & 1;
  *(v4 + 32) = v9;
  *(v4 + 48) = v0 + 16;
  sub_1D41662F0();

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 8);

  return v7(v5, v6);
}

uint64_t sub_1D415B7C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v44 = a3;
  v41 = a7;
  v45 = a5;
  v47 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B78, &qword_1D4168980);
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B80, &qword_1D4168988);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v42 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v39 - v17;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B88, &qword_1D4168990);
  sub_1D41361D0(&qword_1EC7C4B90, &qword_1EC7C4B88, &qword_1D4168990);
  result = sub_1D41662D0();
  v19 = v48;
  v20 = *(v48 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v48 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    while (v21 < *(v19 + 16))
    {
      sub_1D4147124(v22 + *(v7 + 72) * v21, v12, &qword_1EC7C4B78, &qword_1D4168980);
      if (v47)
      {
        v23 = sub_1D4165600();
        v24 = v45;
      }

      else
      {
        v25 = *&v12[*(v46 + 28)];
        v23 = sub_1D4166860();
        v24 = v44;
      }

      if (v23 == v24)
      {

        v28 = v12;
        v27 = v43;
        sub_1D415DCB4(v28, v43);
        v26 = 0;
        goto LABEL_11;
      }

      ++v21;
      result = sub_1D4137AEC(v12, &qword_1EC7C4B78, &qword_1D4168980);
      if (v20 == v21)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v26 = 1;
    v27 = v43;
LABEL_11:
    v29 = v46;
    __swift_storeEnumTagSinglePayload(v27, v26, 1, v46);
    v30 = v42;
    sub_1D4147124(v27, v42, &qword_1EC7C4B80, &qword_1D4168988);
    if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
    {
      sub_1D4137AEC(v27, &qword_1EC7C4B80, &qword_1D4168988);
      return sub_1D4137AEC(v30, &qword_1EC7C4B80, &qword_1D4168988);
    }

    else
    {
      v31 = v30;
      v32 = v40;
      sub_1D415DCB4(v31, v40);
      v33 = sub_1D4165610();
      v35 = v34;
      sub_1D4137AEC(v32, &qword_1EC7C4B78, &qword_1D4168980);
      sub_1D4137AEC(v27, &qword_1EC7C4B80, &qword_1D4168988);
      v36 = v41;
      v37 = *v41;
      v38 = v41[1];
      *v41 = v33;
      v36[1] = v35;
      return sub_1D415DD24(v37);
    }
  }

  return result;
}

uint64_t sub_1D415BB70()
{
  OUTLINED_FUNCTION_6();
  sub_1D4166A20();
  *(v0 + 16) = OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_6_6();
  sub_1D4166A00();
  OUTLINED_FUNCTION_9_6();
  v1 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEE6DFA0](v1);
}

uint64_t sub_1D415BBE8()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D415BC48()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v2 = sub_1D4165790();
  v0[4] = v2;
  OUTLINED_FUNCTION_24(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v0[6] = OUTLINED_FUNCTION_19();
  v6 = sub_1D4165630();
  v0[7] = v6;
  OUTLINED_FUNCTION_24(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_19();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B48, &qword_1D4168950) - 8) + 64);
  v0[10] = OUTLINED_FUNCTION_19();
  v11 = sub_1D4165920();
  v0[11] = v11;
  OUTLINED_FUNCTION_24(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_19();
  v15 = sub_1D4165840();
  v0[14] = v15;
  OUTLINED_FUNCTION_24(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6DFA0](sub_1D415BE08, 0, 0);
}

uint64_t sub_1D415BE08()
{
  v1 = v0[3];
  sub_1D4165A50();
  sub_1D4165A30();
  OUTLINED_FUNCTION_6_6();

  sub_1D415C230(v2);
  v3 = sub_1D4165A40();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[15];
    v6 = *(v5 + 16);
    v5 += 16;
    v32 = v6;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v30 = (v0[8] + 8);
    v31 = (v0[5] + 8);
    v8 = MEMORY[0x1E69E7CC0];
    v28 = *(v5 + 56);
    v29 = (v5 - 8);
    v26 = v0[12];
    v27 = (v26 + 32);
    do
    {
      v37 = v8;
      v38 = v4;
      v9 = v0[16];
      v10 = v0[14];
      v33 = v0[10];
      v11 = v0[9];
      v12 = v0[6];
      v13 = v0[7];
      v34 = v0[4];
      v35 = v0[11];
      v36 = v7;
      v32(v9);
      v0[2] = MEMORY[0x1E69E7CC0];
      sub_1D4138620(&qword_1EC7C4B50, 255, MEMORY[0x1E6959D88]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B58, &qword_1D4168958);
      sub_1D41361D0(&qword_1EC7C4B60, &qword_1EC7C4B58, &qword_1D4168958);
      sub_1D4166B00();
      sub_1D4165780();
      sub_1D4165830();
      (*v31)(v12, v34);
      (*v30)(v11, v13);
      (*v29)(v9, v10);
      if (__swift_getEnumTagSinglePayload(v33, 1, v35) == 1)
      {
        sub_1D4137AEC(v0[10], &qword_1EC7C4B48, &qword_1D4168950);
        v8 = v37;
      }

      else
      {
        v14 = *v27;
        (*v27)(v0[13], v0[10], v0[11]);
        v8 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D415D578(0, *(v37 + 16) + 1, 1, v37, &qword_1EC7C4B68, &qword_1D4168960, MEMORY[0x1E695A3B0], MEMORY[0x1E695A3B0]);
        }

        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_1D415D578(v15 > 1, v16 + 1, 1, v8, &qword_1EC7C4B68, &qword_1D4168960, MEMORY[0x1E695A3B0], MEMORY[0x1E695A3B0]);
        }

        v17 = v0[13];
        v18 = v0[11];
        *(v8 + 16) = v16 + 1;
        v14(v8 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v16, v17, v18);
      }

      v7 = v36 + v28;
      v4 = v38 - 1;
    }

    while (v38 != 1);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v19 = v0[16];
  v20 = v0[13];
  v22 = v0[9];
  v21 = v0[10];
  v23 = v0[6];

  OUTLINED_FUNCTION_23();

  return v24(v8);
}

void *sub_1D415C230(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D415D77C(*(a1 + 16), 0);
  v4 = sub_1D415DB9C(&v6, v3 + 8, v2, a1);
  sub_1D415DC84();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D415C2D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415E0E0;

  return sub_1D415AEE8();
}

uint64_t sub_1D415C35C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415C3E8;

  return sub_1D415B3E4();
}

uint64_t sub_1D415C3E8()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_35();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  OUTLINED_FUNCTION_23();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1D415C4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415C588;

  return sub_1D415B644();
}

uint64_t sub_1D415C588(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35();
  v7 = *(v6 + 16);
  v8 = *v3;
  OUTLINED_FUNCTION_4();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v2)
  {
    v10 = a1;
    v11 = a2;
  }

  return v12(v10, v11);
}

uint64_t sub_1D415C68C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415C718;

  return sub_1D415BB70();
}

uint64_t sub_1D415C718()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_35();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1D415C7FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415E0E0;

  return sub_1D415BC48();
}

uint64_t sub_1D415C8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(MEMORY[0x1E6959D30] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D415E0DC;

  return MEMORY[0x1EEDB2A38](a1, a2, a3, v11, a5);
}

uint64_t sub_1D415C9D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D415CA80;

  return sub_1D4156B98();
}

uint64_t sub_1D415CA80()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_35();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  OUTLINED_FUNCTION_23();

  return v7(v2);
}

uint64_t sub_1D415CB74(uint64_t a1, void (*a2)(void))
{
  a2();
  sub_1D41669F0();
  swift_getWitnessTable();
  return sub_1D41669D0();
}

int64_t sub_1D415CBFC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v7 = *(a1 + 16);
  v8 = *(*v5 + 16);
  result = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1D415D8B8(result, 1, a2, a3, a4);
  v11 = *v5;
  if (!*(a1 + 16))
  {

    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  result = a5(0);
  v13 = *(result - 8);
  if (v12 < v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = *(v13 + 72);
  swift_arrayInitWithCopy();

  if (!v7)
  {
LABEL_8:
    *v5 = v11;
    return result;
  }

  v16 = *(v11 + 16);
  v17 = __OFADD__(v16, v7);
  v18 = v16 + v7;
  if (!v17)
  {
    *(v11 + 16) = v18;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D415CD18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D415CB68(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1D415CD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for AppViewAnchor();
  *(a5 + *(result + 28)) = a2;
  *(a5 + *(result + 32)) = a3;
  return result;
}

size_t sub_1D415CE10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29[0] = a5;
  v36 = a3;
  v37 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4BA0, &qword_1D41689B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = v29 - v12;
  v32 = sub_1D4165920();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v40 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4BA8, &qword_1D41689B8);
  swift_getObjectType();
  sub_1D41361D0(&qword_1EC7C4BB0, &qword_1EC7C4BA8, &qword_1D41689B8);
  v34 = a1;
  v35 = a2;
  sub_1D41662D0();
  v16 = v42;
  v17 = *(v42 + 16);
  if (v17)
  {
    v41 = MEMORY[0x1E69E7CC0];
    result = sub_1D415D94C(0, v17, 0);
    v19 = 0;
    v39 = v41;
    v20 = *(v10 + 80);
    v30 = v13;
    v31 = v16 + ((v20 + 32) & ~v20);
    v29[1] = v13 + 32;
    while (v19 < *(v16 + 16))
    {
      v21 = v17;
      v22 = v33;
      sub_1D4147124(v31 + *(v10 + 72) * v19, v33, &qword_1EC7C4BA0, &qword_1D41689B0);
      v36(v22, v34, v35);
      if (v6)
      {
        sub_1D4137AEC(v22, &qword_1EC7C4BA0, &qword_1D41689B0);
      }

      v38 = 0;
      v23 = v16;
      sub_1D4137AEC(v22, &qword_1EC7C4BA0, &qword_1D41689B0);
      v24 = v39;
      v41 = v39;
      v26 = *(v39 + 16);
      v25 = *(v39 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D415D94C(v25 > 1, v26 + 1, 1);
        v24 = v41;
      }

      ++v19;
      *(v24 + 16) = v26 + 1;
      v27 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v39 = v24;
      result = (*(v30 + 32))(v24 + v27 + *(v30 + 72) * v26, v40, v32);
      v17 = v21;
      v16 = v23;
      v6 = v38;
      if (v21 == v19)
      {

        v28 = v39;
        return sub_1D415CBFC(v28, &qword_1EC7C4B68, &qword_1D4168960, MEMORY[0x1E695A3B0], MEMORY[0x1E695A3B0]);
      }
    }

    __break(1u);
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
    return sub_1D415CBFC(v28, &qword_1EC7C4B68, &qword_1D4168960, MEMORY[0x1E695A3B0], MEMORY[0x1E695A3B0]);
  }

  return result;
}

size_t sub_1D415D1C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v29[0] = a5;
  v36 = a3;
  v37 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B78, &qword_1D4168980);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = v29 - v12;
  v32 = sub_1D4165940();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v40 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B88, &qword_1D4168990);
  swift_getObjectType();
  sub_1D41361D0(&qword_1EC7C4B90, &qword_1EC7C4B88, &qword_1D4168990);
  v34 = a1;
  v35 = a2;
  sub_1D41662D0();
  v16 = v42;
  v17 = *(v42 + 16);
  if (v17)
  {
    v41 = MEMORY[0x1E69E7CC0];
    result = sub_1D415D994(0, v17, 0);
    v19 = 0;
    v39 = v41;
    v20 = *(v10 + 80);
    v30 = v13;
    v31 = v16 + ((v20 + 32) & ~v20);
    v29[1] = v13 + 32;
    while (v19 < *(v16 + 16))
    {
      v21 = v17;
      v22 = v33;
      sub_1D4147124(v31 + *(v10 + 72) * v19, v33, &qword_1EC7C4B78, &qword_1D4168980);
      v36(v22, v34, v35);
      if (v6)
      {
        sub_1D4137AEC(v22, &qword_1EC7C4B78, &qword_1D4168980);
      }

      v38 = 0;
      v23 = v16;
      sub_1D4137AEC(v22, &qword_1EC7C4B78, &qword_1D4168980);
      v24 = v39;
      v41 = v39;
      v26 = *(v39 + 16);
      v25 = *(v39 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D415D994(v25 > 1, v26 + 1, 1);
        v24 = v41;
      }

      ++v19;
      *(v24 + 16) = v26 + 1;
      v27 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v39 = v24;
      result = (*(v30 + 32))(v24 + v27 + *(v30 + 72) * v26, v40, v32);
      v17 = v21;
      v16 = v23;
      v6 = v38;
      if (v21 == v19)
      {

        v28 = v39;
        return sub_1D415CBFC(v28, &qword_1EC7C4B98, &qword_1D41689A0, MEMORY[0x1E695A3B8], MEMORY[0x1E695A3B8]);
      }
    }

    __break(1u);
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
    return sub_1D415CBFC(v28, &qword_1EC7C4B98, &qword_1D41689A0, MEMORY[0x1E695A3B8], MEMORY[0x1E695A3B8]);
  }

  return result;
}

size_t sub_1D415D578(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_1D415D688(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_1D415D7F8(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_1D415D688(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_24(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D415D77C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B70, &qword_1D4168968);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 4);
  return v4;
}

uint64_t sub_1D415D7F8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_5(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_8_5();

    return MEMORY[0x1EEE6BD00](v12);
  }

  else if (a3 != a1)
  {
    v11 = OUTLINED_FUNCTION_8_5();

    return MEMORY[0x1EEE6BCF8](v11);
  }

  return result;
}

size_t sub_1D415D8B8(int64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v11;
  if (!result || a1 > *(v11 + 24) >> 1)
  {
    if (*(v11 + 16) <= a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = *(v11 + 16);
    }

    result = sub_1D415D578(result, v13, a2 & 1, v11, a3, a4, a5, a5);
    *v5 = result;
  }

  return result;
}

size_t sub_1D415D94C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D415D9DC(a1, a2, a3, *v3, &qword_1EC7C4B68, &qword_1D4168960, MEMORY[0x1E695A3B0], MEMORY[0x1E695A3B0]);
  *v3 = result;
  return result;
}

size_t sub_1D415D994(size_t a1, int64_t a2, char a3)
{
  result = sub_1D415D9DC(a1, a2, a3, *v3, &qword_1EC7C4B98, &qword_1D41689A0, MEMORY[0x1E695A3B8], MEMORY[0x1E695A3B8]);
  *v3 = result;
  return result;
}

size_t sub_1D415D9DC(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_24(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_1D415D7F8(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

void *sub_1D415DB9C(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 8) | (4 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D415DCB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4B78, &qword_1D4168980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D415DD24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D415DD74(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D415DEC0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D415E0A4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v1(&v4);
  return v4;
}

void View.linkIntent<A>(_:perform:)()
{
  OUTLINED_FUNCTION_39();
  v58 = v1;
  v59 = v0;
  v3 = v2;
  v64 = v5;
  v65 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v57 = sub_1D4165A20();
  v56 = OUTLINED_FUNCTION_4_4(qword_1ED9ACEA0);
  v55 = OUTLINED_FUNCTION_3_6(&qword_1ED9ACE98);
  v72 = v7;
  v73 = v57;
  v74 = v3;
  v75 = v56;
  v12 = v3;
  v76 = v55;
  OUTLINED_FUNCTION_6_0();
  v54 = v13;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  v52 = sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BC0, &unk_1D4168CD0);
  OUTLINED_FUNCTION_10_3();
  v14 = sub_1D4165F80();
  OUTLINED_FUNCTION_0(v14);
  v60 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  OUTLINED_FUNCTION_10_3();
  v53 = sub_1D4165F80();
  OUTLINED_FUNCTION_0(v53);
  v63 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  v51 = &v48 - v25;
  v26 = sub_1D4165620();
  v27 = OUTLINED_FUNCTION_0(v26);
  v61 = v28;
  v62 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D415E598(v9);
  v50 = v11;
  v33 = v58;
  v34 = v65;
  sub_1D41655F0();
  sub_1D415F4F8();
  v35 = swift_allocObject();
  v35[2] = v7;
  v35[3] = v34;
  v49 = v12;
  v35[4] = v12;
  v35[5] = v33;
  v35[6] = v11;
  v36 = v7;
  v72 = v7;
  v73 = v57;
  v74 = v12;
  v75 = v56;
  v76 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_8();
  v39 = sub_1D41361D0(v38, &qword_1EC7C4BB8, &unk_1D4168A80);
  v70 = OpaqueTypeConformance2;
  v71 = v39;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_7();
  v42 = sub_1D41361D0(v41, &qword_1EC7C4BC0, &unk_1D4168CD0);
  v68 = WitnessTable;
  v69 = v42;
  v43 = swift_getWitnessTable();
  v44 = v51;
  sub_1D4166690();

  (*(v60 + 8))(v20, v14);
  v45 = swift_allocObject();
  v46 = v65;
  v45[2] = v36;
  v45[3] = v46;
  v45[4] = v49;
  v45[5] = v33;
  v45[6] = v50;
  v66 = v43;
  v67 = MEMORY[0x1E69805D0];
  v47 = v53;
  swift_getWitnessTable();
  sub_1D41665D0();

  (*(v63 + 8))(v44, v47);
  (*(v61 + 8))(v32, v62);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D415E598(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D415E5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  sub_1D4165720();
  sub_1D4165700();
  a6(a1, a5);
}

void View.linkEntity<A>(_:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  (*(v11 + 16))(v0, v4, v2);
  OUTLINED_FUNCTION_13_4();
  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_28();
}

void View.representedAppEntity(_:)()
{
  OUTLINED_FUNCTION_39();
  v44 = v0;
  v45 = v1;
  v3 = v2;
  v38 = v2;
  v5 = v4;
  v7 = v6;
  v43 = sub_1D4165A20();
  v42 = OUTLINED_FUNCTION_4_4(qword_1ED9ACEA0);
  v50 = v5;
  v51 = v43;
  v52 = v3;
  v53 = v42;
  v54 = OUTLINED_FUNCTION_3_6(&qword_1ED9ACE98);
  OUTLINED_FUNCTION_6_0();
  v40 = v9;
  v41 = v8;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  OUTLINED_FUNCTION_12_5();
  v39 = sub_1D4165F80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BD0, &unk_1D4168A90);
  OUTLINED_FUNCTION_10_3();
  v10 = sub_1D4165F80();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v37 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - v18;
  v20 = v7[3];
  v21 = __swift_project_boxed_opaque_existential_1(v7, v20);
  v22 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v37 - v28;
  (*(*(v20 - 8) + 16))(&v37 - v28, v21, v20);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v20);
  v30 = v38;
  _s7SwiftUI4ViewP012_AppIntents_aB0E011representedD6EntityyQrqd__Sg0dE00dG0Rd__lF_0();
  (*(v24 + 8))(v29, v22);
  (*(v13 + 16))(v37, v19, v10);
  v50 = v5;
  v51 = v43;
  v52 = v30;
  v53 = v42;
  v54 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_8();
  v33 = sub_1D41361D0(v32, &qword_1EC7C4BB8, &unk_1D4168A80);
  v48 = OpaqueTypeConformance2;
  v49 = v33;
  OUTLINED_FUNCTION_10_8();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_7();
  v36 = sub_1D41361D0(v35, &qword_1EC7C4BD0, &unk_1D4168A90);
  v46 = WitnessTable;
  v47 = v36;
  swift_getWitnessTable();
  *v45 = sub_1D4166800();
  (*(v13 + 8))(v19, v10);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D415EAAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(v5 + 80);
  v9 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 > v7)
  {
    v11 = v9 + ((v8 + 8) & ~v8);
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_8;
    }

    v14 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= 0xFF)
      {
        if (v14 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v13 = *(a1 + v11);
        if (!*(a1 + v11))
        {
          goto LABEL_23;
        }

LABEL_15:
        v15 = (v13 - 1) << v12;
        if (v11 > 3)
        {
          v15 = 0;
        }

        if (v11)
        {
          if (v11 > 3)
          {
            LODWORD(v11) = 4;
          }

          switch(v11)
          {
            case 2:
              LODWORD(v11) = *a1;
              break;
            case 3:
              LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v11) = *a1;
              break;
            default:
              LODWORD(v11) = *a1;
              break;
          }
        }

        return v7 + (v11 | v15) + 1;
      }

      v13 = *(a1 + v11);
      if (*(a1 + v11))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v6 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v8 + 8) & ~v8, v6, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D415EC44(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 80);
  v12 = (v11 + 8) & ~v11;
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = v13 + v12;
  v15 = 8 * (v13 + v12);
  v16 = a3 >= v10;
  v17 = a3 - v10;
  if (v17 != 0 && v16)
  {
    if (v14 <= 3)
    {
      v18 = ((v17 + ~(-1 << v15)) >> v15) + 1;
      if (HIWORD(v18))
      {
        v6 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v6 = v19;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if (v9 >= 2)
          {
            v23 = &a1[v11 + 8] & ~v11;
            v24 = a2 + 1;

            __swift_storeEnumTagSinglePayload(v23, v24, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v10 + a2;
    if (v14 < 4)
    {
      v21 = (v20 >> v15) + 1;
      if (v14)
      {
        v22 = v20 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v14 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v20;
      v21 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v14] = v21;
        break;
      case 2:
        *&a1[v14] = v21;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v14] = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1D415EE80()
{
  OUTLINED_FUNCTION_39();
  v29 = v0;
  v2 = v1;
  v31 = v3;
  v32 = v4;
  v5 = *(v1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_5();
  v25[1] = sub_1D4166320();
  type metadata accessor for CGRect(255);
  v26 = *(v2 + 16);
  v27 = v8;
  type metadata accessor for AppViewAnchor();
  type metadata accessor for AppViewPreferenceKey();
  OUTLINED_FUNCTION_7_3();
  v25[2] = swift_getWitnessTable();
  v28 = sub_1D4166370();
  v9 = sub_1D4165F80();
  v10 = OUTLINED_FUNCTION_0(v9);
  v30 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v25 - v17;
  sub_1D41667A0();
  (*(v5 + 16))(v7, v29, v2);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  (*(v5 + 32))(v20 + v19, v7, v2);
  OUTLINED_FUNCTION_2_2();
  WitnessTable = swift_getWitnessTable();
  sub_1D4166640();

  OUTLINED_FUNCTION_5_5();
  v22 = swift_getWitnessTable();
  v33 = WitnessTable;
  v34 = v22;
  OUTLINED_FUNCTION_10();
  v23 = swift_getWitnessTable();
  sub_1D41605A4(v16, v9, v23);
  v24 = *(v30 + 8);
  v24(v16, v9);
  sub_1D41605A4(v18, v9, v23);
  v24(v18, v9);
  OUTLINED_FUNCTION_28();
}

uint64_t sub_1D415F188(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v27[0] = a2;
  v27[1] = a1;
  v6 = type metadata accessor for AppViewAnchor();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - v8;
  v10 = sub_1D4166AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v27 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v27 - v21;
  v23 = type metadata accessor for AppViewModifier();
  (*(v11 + 16))(v15, &a3[*(v23 + 28)], v10);
  if (__swift_getEnumTagSinglePayload(v15, 1, a4) == 1)
  {
    return (*(v11 + 8))(v15, v10);
  }

  (*(v16 + 32))(v22, v15, a4);
  (*(v16 + 16))(v20, v22, a4);
  v25 = *a3;
  v26 = sub_1D4166850();
  sub_1D415CD8C(v20, v26, v27[0], a4, v9);
  sub_1D41669F0();

  sub_1D41669E0();
  return (*(v16 + 8))(v22, a4);
}

uint64_t sub_1D415F434(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for AppViewModifier() - 8);
  v7 = (v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)));

  return sub_1D415F188(a1, a2, v7, v5);
}

void sub_1D415F4F8()
{
  OUTLINED_FUNCTION_39();
  v62 = v1;
  v63 = v2;
  v4 = v3;
  v64 = v5;
  v65 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4C60, &qword_1D4168CC8);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v55 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4BC0, &unk_1D4168CD0);
  OUTLINED_FUNCTION_5(v61);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v55 - v17;
  v18 = sub_1D4165620();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = sub_1D4165A20();
  OUTLINED_FUNCTION_20_3();
  v29 = sub_1D413653C(v28, v0);
  OUTLINED_FUNCTION_4_5();
  v31 = sub_1D413653C(v30, v0);
  v68 = v6;
  v69 = v27;
  v70 = v4;
  v71 = v29;
  v72 = v31;
  OUTLINED_FUNCTION_6_0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4BB8, &unk_1D4168A80);
  v56 = sub_1D4165F80();
  OUTLINED_FUNCTION_0(v56);
  v60 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v55 - v36;
  v38 = *(v21 + 16);
  v39 = v8;
  v38(v26, v8, v18);
  v40 = sub_1D4165A00();
  v68 = v40;
  v58 = v29;
  sub_1D4137BA4();
  v41 = v57;

  v38(v41, v39, v18);
  v42 = v59;
  OUTLINED_FUNCTION_18_0();
  v43 = v18;
  v44 = v61;
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v43);
  *v42 = 0;
  sub_1D41371A4(v41, v42 + *(v44 + 28), &qword_1EC7C4C60, &qword_1D4168CC8);
  if (qword_1ED9ACD78 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  sub_1D4137AEC(v41, &qword_1EC7C4C60, &qword_1D4168CC8);
  v68 = v64;
  v69 = v27;
  v70 = v65;
  v71 = v58;
  v72 = v31;
  OUTLINED_FUNCTION_18_3();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0_8();
  v52 = sub_1D41361D0(v49, v50, v51);
  v66 = OpaqueTypeConformance2;
  v67 = v52;
  OUTLINED_FUNCTION_10();
  v53 = v56;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1DA6D1980](v42, v53, v44, WitnessTable);
  sub_1D4137AEC(v42, &qword_1EC7C4BC0, &unk_1D4168CD0);
  (*(v60 + 8))(v37, v53);
  OUTLINED_FUNCTION_28();
}

void View.appEntityIdentifier<A>(forSelectionType:identifier:)()
{
  OUTLINED_FUNCTION_39();
  v22[2] = v0;
  v22[0] = v2;
  v22[1] = v1;
  v3 = sub_1D4165AF0();
  v4 = sub_1D4166AD0();
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v22 - v17;

  sub_1D4165AE0();
  (*(v13 + 16))(v11, v18, v3);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v3);
  OUTLINED_FUNCTION_22_2();
  sub_1D4166660();
  (*(v6 + 8))(v11, v4);
  (*(v13 + 8))(v18, v3);
  OUTLINED_FUNCTION_28();
}

uint64_t View.appEntityUIElements(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4165640();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  *v10 = a1;
  v10[1] = a2;
  (*(v11 + 104))(v9 - v8, *MEMORY[0x1E6959DD0]);
  v12 = sub_1D4165650();
  OUTLINED_FUNCTION_35_2(v12);

  sub_1D4165660();
  sub_1D4165720();
  sub_1D4165700();
  type metadata accessor for DummyView();
  swift_allocObject();
  sub_1D413653C(&qword_1EC7C4BD8, type metadata accessor for DummyView);
  OUTLINED_FUNCTION_17_4();
  sub_1D413653C(v13, type metadata accessor for DummyView);
  v14 = sub_1D4165B10();
  OUTLINED_FUNCTION_35_2(v14);

  sub_1D4165B30();
  sub_1D4165710();

  v15 = *MEMORY[0x1E695F050];
  v16 = *(MEMORY[0x1E695F050] + 8);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v18 = *(MEMORY[0x1E695F050] + 24);
  v19 = sub_1D4165AB0();
  v20 = OUTLINED_FUNCTION_35_2(v19);

  OUTLINED_FUNCTION_31_2(v21, v22, v23, v24);
  OUTLINED_FUNCTION_6_7();
  sub_1D413653C(v25, v20);
  OUTLINED_FUNCTION_3_7();
  sub_1D413653C(v26, v20);
  sub_1D4137BA4();
}

uint64_t View.setEntityProvider<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  v31[3] = v13;
  v31[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  v16 = *(v6 + 16);
  v16(boxed_opaque_existential_1, a1, a3);
  v17 = *MEMORY[0x1E695F050];
  v18 = *(MEMORY[0x1E695F050] + 8);
  v19 = *(MEMORY[0x1E695F050] + 16);
  v20 = *(MEMORY[0x1E695F050] + 24);
  v21 = sub_1D4165AB0();
  OUTLINED_FUNCTION_35_2(v21);
  v26 = OUTLINED_FUNCTION_31_2(v22, v23, v24, v25);
  sub_1D4165720();
  sub_1D4165700();
  sub_1D4165B10();
  v16(v12, a1, a3);
  type metadata accessor for DummyView();
  swift_allocObject();
  sub_1D413653C(&qword_1EC7C4BD8, type metadata accessor for DummyView);
  OUTLINED_FUNCTION_17_4();
  sub_1D413653C(v27, type metadata accessor for DummyView);
  sub_1D4165B20();
  sub_1D4165710();

  v31[0] = v26;
  v28 = MEMORY[0x1E695A6B8];
  sub_1D413653C(&qword_1EC7C4BE8, MEMORY[0x1E695A6B8]);
  OUTLINED_FUNCTION_3_7();
  sub_1D413653C(v29, v28);
  sub_1D4137BA4();
}

uint64_t sub_1D416009C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D4160214(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
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
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D4160434()
{
  result = qword_1ED9ACCB0;
  if (!qword_1ED9ACCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C18, &qword_1D4168C38);
    sub_1D4138A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCB0);
  }

  return result;
}

unint64_t sub_1D41604C0()
{
  result = qword_1ED9ACCC8;
  if (!qword_1ED9ACCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4C30, &qword_1D4168C50);
    sub_1D4138BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACCC8);
  }

  return result;
}

uint64_t sub_1D416054C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4166130();
  *a1 = result;
  return result;
}

uint64_t sub_1D4160578(uint64_t *a1)
{
  v1 = *a1;

  return sub_1D4166140();
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

id sub_1D416063C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1D41668E0();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

id sub_1D41606C0()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemBackgroundColor];
  v2 = [v0 secondaryLabelColor];
  v3 = [v0 labelColor];
  v4 = [v0 tertiaryLabelColor];
  sub_1D415A1EC();
  type metadata accessor for AppSwiftUIBridge();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  result = sub_1D416063C(0x697269687053, 0xE600000000000000, v6, v7);
  qword_1ED9ACAA0 = v1;
  *algn_1ED9ACAA8 = v2;
  qword_1ED9ACAB0 = v3;
  unk_1ED9ACAB8 = v4;
  qword_1ED9ACAC0 = result;
  return result;
}

id static SiriTipViewStyle.automatic.getter()
{
  if (qword_1ED9ACA98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_7(&qword_1ED9ACAA0);
  v3 = v0;
  v4 = v1;
  v5 = v2;

  return v7;
}

id sub_1D416088C()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemBackgroundColor];
  v2 = objc_opt_self();
  v3 = [v2 traitCollectionWithUserInterfaceStyle_];
  v4 = [v1 resolvedColorWithTraitCollection_];

  v5 = [v0 secondaryLabelColor];
  v6 = [v2 traitCollectionWithUserInterfaceStyle_];
  v7 = [v5 resolvedColorWithTraitCollection_];

  v8 = [v0 labelColor];
  v9 = [v2 traitCollectionWithUserInterfaceStyle_];
  v10 = [v8 resolvedColorWithTraitCollection_];

  v11 = [v0 tertiaryLabelColor];
  v12 = [v2 traitCollectionWithUserInterfaceStyle_];
  v13 = [v11 resolvedColorWithTraitCollection_];

  sub_1D415A1EC();
  type metadata accessor for AppSwiftUIBridge();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  result = sub_1D416063C(0x697269687053, 0xE600000000000000, v15, [v2 traitCollectionWithUserInterfaceStyle_]);
  qword_1EC7C4C68 = v4;
  unk_1EC7C4C70 = v7;
  qword_1EC7C4C78 = v10;
  unk_1EC7C4C80 = v13;
  qword_1EC7C4C88 = result;
  return result;
}

id static SiriTipViewStyle.light.getter()
{
  if (qword_1EC7C4430 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_7(&qword_1EC7C4C68);
  v3 = v0;
  v4 = v1;
  v5 = v2;

  return v7;
}

id sub_1D4160B70()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemBackgroundColor];
  v2 = objc_opt_self();
  v3 = [v2 traitCollectionWithUserInterfaceStyle_];
  v4 = [v1 resolvedColorWithTraitCollection_];

  v5 = [v0 secondaryLabelColor];
  v6 = [v2 traitCollectionWithUserInterfaceStyle_];
  v7 = [v5 resolvedColorWithTraitCollection_];

  v8 = [v0 labelColor];
  v9 = [v2 traitCollectionWithUserInterfaceStyle_];
  v10 = [v8 resolvedColorWithTraitCollection_];

  v11 = [v0 tertiaryLabelColor];
  v12 = [v2 traitCollectionWithUserInterfaceStyle_];
  v13 = [v11 resolvedColorWithTraitCollection_];

  sub_1D415A1EC();
  type metadata accessor for AppSwiftUIBridge();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  result = sub_1D416063C(0x697269687053, 0xE600000000000000, v15, [v2 traitCollectionWithUserInterfaceStyle_]);
  qword_1EC7C4C90 = v4;
  *algn_1EC7C4C98 = v7;
  qword_1EC7C4CA0 = v10;
  unk_1EC7C4CA8 = v13;
  qword_1EC7C4CB0 = result;
  return result;
}

id static SiriTipViewStyle.dark.getter()
{
  if (qword_1EC7C4438 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_7(&qword_1EC7C4C90);
  v3 = v0;
  v4 = v1;
  v5 = v2;

  return v7;
}

uint64_t SiriTipView.init<A>(intent:isVisible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0u;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CB8, &qword_1D4168D18);
  sub_1D4166760();

  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  *(a7 + 88) = 0;
  v14 = *(a5 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = *(v14 + 64);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  result = (*(v14 + 32))(v17 + v15, a1, a5);
  *(a7 + 96) = sub_1D4164030;
  *(a7 + 104) = v17;
  *(a7 + 48) = a2;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  return result;
}

uint64_t sub_1D4160FB8()
{
  sub_1D4165720();
  sub_1D4165700();
  v0 = sub_1D41656E0();

  return v0;
}

double SiriTipView.init(phrase:isVisible:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CB8, &qword_1D4168D18);
  sub_1D4166760();

  *a6 = KeyPath;
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (a2)
  {
    v14 = a2;
  }

  result = 0.0;
  *(a6 + 8) = 0u;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  *(a6 + 72) = v13;
  *(a6 + 80) = v14;
  *(a6 + 96) = 0;
  *(a6 + 104) = 0;
  *(a6 + 88) = 0;
  return result;
}

uint64_t SiriTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v131, v1, sizeof(v131));
  if (sub_1D4161C10())
  {
    v123 = a1;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CC8, &unk_1D4168D28);
    v122 = v110;
    v3 = OUTLINED_FUNCTION_0(v121);
    v120 = v4;
    v6 = *(v5 + 64);
    v7 = MEMORY[0x1EEE9AC00](v3);
    v119 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v118 = v110;
    MEMORY[0x1EEE9AC00](v7);
    v117 = v110 - v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4458, &qword_1D4167620);
    v116 = v110;
    v125 = v10;
    OUTLINED_FUNCTION_5(v10);
    v12 = *(v11 + 64);
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v13);
    v124 = v110 - v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CD0, &qword_1D4168D38);
    v115 = v110;
    v16 = *(*(v15 - 8) + 64);
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v17);
    v19 = v110 - v18;
    *v19 = sub_1D41661C0();
    *(v19 + 1) = 0;
    v19[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CE0, &qword_1D4168D48);
    sub_1D4161D64(__dst, &v19[*(v20 + 44)]);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CE8, &unk_1D4168D50);
    v114 = v110;
    v112 = v21;
    OUTLINED_FUNCTION_5(v21);
    v23 = *(v22 + 64);
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v24);
    v113 = (v110 - v25);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4A40, &qword_1D4168658);
    v111 = v110;
    OUTLINED_FUNCTION_5(v26);
    v28 = *(v27 + 64);
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v29);
    v31 = v110 - v30;
    v32 = sub_1D4165FF0();
    v110[1] = v110;
    v33 = *(*(v32 - 8) + 64);
    MEMORY[0x1EEE9AC00](v32 - 8);
    OUTLINED_FUNCTION_1();
    v36 = (v35 - v34);
    v38 = *(v37 + 28);
    v39 = *MEMORY[0x1E697F468];
    v40 = sub_1D4166290();
    OUTLINED_FUNCTION_5(v40);
    (*(v41 + 104))(&v36[v38], v39);
    __asm { FMOV            V0.2D, #8.0 }

    *v36 = _Q0;
    *&v134[9] = *(&__dst[1] + 9);
    v133 = __dst[0];
    *v134 = __dst[1];
    if (BYTE8(__dst[2]) == 1)
    {
      v48 = *&v134[8];
      v47 = *&v134[16];
      v49 = *(&v133 + 1);
      v50 = *v134;
      v127 = v133;
      v128 = *v134;
      v129 = *&v134[8];
      v130 = *&v134[16];
      sub_1D4164C68(&v133, v131, &qword_1EC7C4CF0, &qword_1D4168D60);
    }

    else
    {
      sub_1D4164C68(&v133, v131, &qword_1EC7C4CF0, &qword_1D4168D60);
      sub_1D4166A80();
      v58 = sub_1D41663A0();
      sub_1D4165D40();

      v59 = sub_1D4166170();
      v60 = OUTLINED_FUNCTION_0(v59);
      v62 = v61;
      v64 = *(v63 + 64);
      MEMORY[0x1EEE9AC00](v60);
      OUTLINED_FUNCTION_1();
      v67 = v66 - v65;
      sub_1D4166160();
      swift_getAtKeyPath();
      sub_1D4137AEC(&v133, &qword_1EC7C4CF0, &qword_1D4168D60);
      (*(v62 + 8))(v67, v59);
      v49 = *(&v127 + 1);
      v50 = v128;
      v48 = v129;
      v47 = v130;
    }

    v68 = sub_1D41666B0();
    sub_1D4159CE4(v36, v31);
    *&v31[*(v26 + 52)] = v68;
    *&v31[*(v26 + 56)] = 256;
    sub_1D4166840();
    sub_1D4166000();
    v69 = v113;
    sub_1D4164E44(v31, v113, &qword_1EC7C4A40, &qword_1D4168658);
    memcpy((v69 + *(v112 + 36)), v131, 0x70uLL);
    v70 = sub_1D4166840();
    v72 = v71;
    v73 = v124;
    v74 = v124 + *(v125 + 36);
    sub_1D4164E44(v69, v74, &qword_1EC7C4CE8, &unk_1D4168D50);
    v75 = (v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CD8, &qword_1D4168D40) + 36));
    *v75 = v70;
    v75[1] = v72;
    sub_1D4164E44(v19, v73, &qword_1EC7C4CD0, &qword_1D4168D38);
    sub_1D4166A20();
    sub_1D4164150(__dst, &v127);
    v76 = sub_1D4166A10();
    v77 = swift_allocObject();
    v78 = MEMORY[0x1E69E85E0];
    v77[2] = v76;
    v77[3] = v78;
    memcpy(v77 + 4, __dst, 0x70uLL);
    v114 = sub_1D4166A50();
    v115 = v110;
    v79 = OUTLINED_FUNCTION_0(v114);
    v81 = v80;
    v83 = *(v82 + 64);
    MEMORY[0x1EEE9AC00](v79);
    v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
    v85 = v110 - v84;
    sub_1D4166A30();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v112 = sub_1D4165F50();
      v113 = v110;
      v86 = OUTLINED_FUNCTION_0(v112);
      v111 = v87;
      v89 = *(v88 + 64);
      MEMORY[0x1EEE9AC00](v86);
      OUTLINED_FUNCTION_1();
      v92 = v91 - v90;
      *&v127 = 0;
      *(&v127 + 1) = 0xE000000000000000;
      sub_1D4166B30();

      *&v127 = 0xD000000000000032;
      *(&v127 + 1) = 0x80000001D416CC90;
      v126 = 156;
      v93 = sub_1D4166C00();
      MEMORY[0x1DA6D1C60](v93);

      MEMORY[0x1EEE9AC00](v94);
      v95 = v114;
      (*(v81 + 16))(v110 - v84, v85, v114);
      sub_1D4165F40();
      (*(v81 + 8))(v85, v95);
      v96 = v117;
      sub_1D4164E44(v124, v117, &qword_1EC7C4458, &qword_1D4167620);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4460, &qword_1D4167628);
      (v111[4])(v96 + *(v97 + 36), v92, v112);
    }

    else
    {
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4468, &qword_1D4167630);
      v96 = v117;
      v99 = (v117 + *(v98 + 36));
      v100 = sub_1D4165E50();
      (*(v81 + 32))(&v99[*(v100 + 20)], v110 - v84, v114);
      *v99 = &unk_1D4168D70;
      *(v99 + 1) = v77;
      sub_1D4164E44(v73, v96, &qword_1EC7C4458, &qword_1D4167620);
    }

    v102 = v119;
    v101 = v120;
    v103 = v121;
    (*(v120 + 32))(v119, v96, v121);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CC0, &qword_1D4168D20);
    OUTLINED_FUNCTION_5(v104);
    v106 = *(v105 + 64);
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v107);
    (*(v101 + 16))(v110 - v108, v102, v103);
    swift_storeEnumTagMultiPayload();
    v109 = sub_1D416406C();
    *&v127 = v125;
    *(&v127 + 1) = v109;
    OUTLINED_FUNCTION_3_8();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_10_10();
    sub_1D4166310();
    return (*(v101 + 8))(v102, v103);
  }

  else
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CC0, &qword_1D4168D20);
    OUTLINED_FUNCTION_5(v51);
    v53 = *(v52 + 64);
    OUTLINED_FUNCTION_13();
    MEMORY[0x1EEE9AC00](v54);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4CC8, &unk_1D4168D28);
    v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4458, &qword_1D4167620);
    v56 = sub_1D416406C();
    v131[0] = v55;
    v131[1] = v56;
    OUTLINED_FUNCTION_3_8();
    swift_getOpaqueTypeConformance2();
    return sub_1D4166310();
  }
}

BOOL sub_1D4161C10()
{
  v1 = v0;
  v3 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 64);
  v5 = *(v0 + 9);
  v6 = *(v0 + 10);
  v7 = *(v0 + 11);
  v13 = v0[6];
  if (v2)
  {
    *&v15 = *(v0 + 6);
    *(&v15 + 1) = v2;
    LOBYTE(v16) = v4 & 1;

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D70, &qword_1D4169010);
    MEMORY[0x1DA6D1B10](v14, v8);
    v9 = LOBYTE(v14[0]);

    if (v9 != 1)
    {
      return 0;
    }
  }

  v10 = v1[1];
  v15 = *v1;
  v16 = v10;
  v17 = v1[2];
  v18 = v3;
  v19 = v2;
  v20 = v4;
  *v21 = *(v1 + 65);
  *&v21[3] = *(v1 + 17);
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v13;
  sub_1D4163BA0();
  if (!v11)
  {
    return 0;
  }

  *&v15 = v5;
  *(&v15 + 1) = v6;
  *&v16 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D10, &qword_1D4168F40);
  sub_1D4166770();
  if (!v14[1])
  {
    return v13 != 0;
  }

  return 1;
}

uint64_t sub_1D4161D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D20, &qword_1D4168F58);
  v3 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D28, &qword_1D4168F60);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D30, &qword_1D4168F68);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D38, &qword_1D4168F70);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  v48 = a1;
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D40, &qword_1D4168F78);
  *&v49 = MEMORY[0x1E6981148];
  *(&v49 + 1) = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  sub_1D4166700();
  v49 = xmmword_1D4168CE0;
  v50 = 0x401C000000000000;
  sub_1D41361D0(&qword_1EC7C4330, &qword_1EC7C4D30, &qword_1D4168F68);
  sub_1D4159BBC();
  sub_1D41665A0();
  (*(v13 + 8))(v16, v12);
  *&v24[*(v18 + 44)] = 256;
  if (a1[7])
  {
    v25 = swift_allocObject();
    v26 = memcpy((v25 + 16), a1, 0x70uLL);
    MEMORY[0x1EEE9AC00](v26);
    *(&v43 - 2) = a1;
    sub_1D4164150(a1, &v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D50, &qword_1D4168F88);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4D58, &qword_1D4168F90);
    v28 = sub_1D4164CD4();
    *&v49 = v27;
    *(&v49 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    v29 = v44;
    sub_1D41667D0();
    v30 = sub_1D4166400();
    sub_1D4165DC0();
    v31 = v45;
    v32 = v29 + *(v45 + 36);
    *v32 = v30;
    *(v32 + 8) = v33;
    *(v32 + 16) = v34;
    *(v32 + 24) = v35;
    *(v32 + 32) = v36;
    *(v32 + 40) = 0;
    sub_1D4164E44(v29, v11, &qword_1EC7C4D20, &qword_1D4168F58);
    v37 = 0;
    v38 = v31;
  }

  else
  {
    v37 = 1;
    v38 = v45;
  }

  __swift_storeEnumTagSinglePayload(v11, v37, 1, v38);
  sub_1D4164C68(v24, v22, &qword_1EC7C4D38, &qword_1D4168F70);
  sub_1D4164C68(v11, v9, &qword_1EC7C4D28, &qword_1D4168F60);
  v39 = v46;
  sub_1D4164C68(v22, v46, &qword_1EC7C4D38, &qword_1D4168F70);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D48, &qword_1D4168F80);
  v41 = v39 + *(v40 + 48);
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_1D4164C68(v9, v39 + *(v40 + 64), &qword_1EC7C4D28, &qword_1D4168F60);
  sub_1D4137AEC(v11, &qword_1EC7C4D28, &qword_1D4168F60);
  sub_1D4137AEC(v24, &qword_1EC7C4D38, &qword_1D4168F70);
  sub_1D4137AEC(v9, &qword_1EC7C4D28, &qword_1D4168F60);
  return sub_1D4137AEC(v22, &qword_1EC7C4D38, &qword_1D4168F70);
}

uint64_t sub_1D4162308@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1D4165FD0();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D78, &qword_1D4169018);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v13 = sub_1D4165BB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  sub_1D41627C0(v12);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v46 = v3;
  v43 = v6;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4165BA0();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_1D4137AEC(v12, &qword_1EC7C4D78, &qword_1D4169018);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  v19 = sub_1D4166550();
  v21 = v20;
  v23 = v22;
  sub_1D41664F0();
  v24 = sub_1D4166530();
  v26 = v25;
  v28 = v27;

  sub_1D414911C(v19, v21, v23 & 1);

  sub_1D41664B0();
  v29 = sub_1D4166510();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1D414911C(v24, v26, v28 & 1);

  v47 = v29;
  v48 = v31;
  v49 = v33 & 1;
  v50 = v35;
  memcpy(__dst, v42, sizeof(__dst));
  v36 = v41;
  sub_1D41627C0(v41);
  LODWORD(v24) = __swift_getEnumTagSinglePayload(v36, 1, v13);
  sub_1D4137AEC(v36, &qword_1EC7C4D78, &qword_1D4169018);
  if (v24 == 1)
  {
    v37 = v43;
    sub_1D4165FC0();
    v38 = v46;
  }

  else
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1D4164F9C(&qword_1EC7C4358, MEMORY[0x1E697EA58]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D80, &unk_1D4169020);
    sub_1D41361D0(&qword_1EC7C4320, &qword_1EC7C4D80, &unk_1D4169020);
    v37 = v43;
    v38 = v46;
    sub_1D4166B00();
  }

  sub_1D41666A0();
  (*(v44 + 8))(v37, v38);
  sub_1D414911C(v29, v31, v33 & 1);
}

uint64_t sub_1D41627C0@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4610, &qword_1D4167E78);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v68 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D88, &qword_1D4169030);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v60 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D90, &qword_1D4169038);
  v8 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v63 = &v60 - v9;
  v67 = sub_1D4166170();
  v66 = *(v67 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D4165BB0();
  v70 = *(v76 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = *(v1 + 16);
  v74 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  v93 = v18;
  v19 = *(v1 + 72);
  v20 = *(v1 + 80);
  v21 = *(v1 + 88);
  v80 = v19;
  v81 = v20;
  v82 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D10, &qword_1D4168F40);
  sub_1D4166770();
  v73 = v92;
  if (!v92)
  {
    goto LABEL_6;
  }

  v72 = v91;
  v61 = v14;
  v80 = v14;
  v81 = v15;
  v62 = v15;
  v64 = v16;
  v22 = v74;
  v82 = v16;
  v83 = v74;
  v84 = v17;
  v85 = v18;
  *v86 = *(v1 + 41);
  *&v86[15] = *(v1 + 56);
  v87 = v19;
  v88 = v20;
  v89 = v21;
  v90 = *(v1 + 96);
  v23 = sub_1D4163BA0();
  if (!v24)
  {

LABEL_6:
    v35 = 1;
    v37 = v76;
    v36 = v77;
    return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
  }

  v25 = v17;
  v26 = v22;
  v80 = v23;
  v81 = v24;
  v91 = 16421;
  v92 = 0xE200000000000000;
  v27 = v73;
  v78 = v72;
  v79 = v73;
  sub_1D415A230();
  sub_1D4166AE0();

  sub_1D4165BA0();
  v28 = v93;
  v29 = v61;
  v30 = v62;
  if (v93)
  {
    v80 = v61;
    v81 = v62;
    v31 = v64;
    v82 = v64;
    v83 = v26;
    v84 = v25;
    sub_1D4164EBC(v61, v62, v64, v26, v25, 1);
    v32 = v25;
    v33 = v26;
    v34 = v29;
  }

  else
  {
    v38 = v64;
    sub_1D4164EBC(v61, v62, v64, v26, v25, 0);
    sub_1D4166A80();
    v39 = sub_1D41663A0();
    sub_1D4165D40();

    v40 = v65;
    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4164188(v29, v30, v38, v26, v25, 0);
    (*(v66 + 8))(v40, v67);
    v34 = v80;
    v31 = v82;
    v33 = v83;
    v32 = v84;
  }

  v80 = sub_1D41666B0();
  v62 = sub_1D4164F48();
  v41 = v75;
  sub_1D4165BC0();
  v80 = v72;
  v81 = v27;
  v42 = sub_1D4165CA0();
  v43 = v68;
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v42);
  sub_1D4164F9C(&qword_1ED9ACAD8, MEMORY[0x1E6968848]);
  v44 = v69;
  v37 = v76;
  sub_1D4165C20();
  sub_1D4137AEC(v43, &qword_1EC7C4610, &qword_1D4167E78);

  if (__swift_getEnumTagSinglePayload(v44, 1, v71) == 1)
  {
    v45 = &qword_1EC7C4D88;
    v46 = &qword_1D4169030;
    v47 = v44;
  }

  else
  {
    v48 = v25;
    v49 = v63;
    sub_1D4164E44(v44, v63, &qword_1EC7C4D90, &qword_1D4169038);
    if (v28)
    {
      v80 = v29;
      v81 = v30;
      v50 = v74;
      v82 = v64;
      v83 = v74;
      v84 = v48;
      sub_1D4164EBC(v29, v30, v64, v74, v48, 1);
    }

    else
    {
      v51 = v64;
      v52 = v74;
      sub_1D4164EBC(v29, v30, v64, v74, v48, 0);
      sub_1D4166A80();
      v53 = v30;
      v54 = sub_1D41663A0();
      sub_1D4165D40();

      v55 = v65;
      sub_1D4166160();
      swift_getAtKeyPath();
      sub_1D4164188(v29, v53, v51, v52, v48, 0);
      (*(v66 + 8))(v55, v67);
      v29 = v80;
      v30 = v81;
      v50 = v83;
      v48 = v84;
    }

    v56 = sub_1D41666B0();
    sub_1D41361D0(&qword_1ED9ACA38, &qword_1EC7C4D90, &qword_1D4169038);
    v57 = v75;
    v58 = sub_1D4165BD0();
    v91 = v56;
    sub_1D4165BF0();
    v58(&v80, 0);
    v47 = v49;
    v45 = &qword_1EC7C4D90;
    v46 = &qword_1D4169038;
    v41 = v57;
  }

  sub_1D4137AEC(v47, v45, v46);
  v36 = v77;
  (*(v70 + 32))(v77, v41, v37);
  v35 = 0;
  return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
}

uint64_t sub_1D4163048@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D41666E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_1D4166170();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v29[9] = *(a1 + 25);
  v14 = a1[1];
  v28 = *a1;
  *v29 = v14;
  v15 = v28;
  if (v29[24] == 1)
  {
    v17 = *&v29[8];
    v16 = *&v29[16];
    v18 = *(&v28 + 1);
    v19 = *v29;
    v25 = v28;
    v26 = *v29;
    v27 = *&v29[8];
    sub_1D4164C68(&v28, v24, &qword_1EC7C4CF0, &qword_1D4168D60);
  }

  else
  {
    sub_1D4164C68(&v28, v24, &qword_1EC7C4CF0, &qword_1D4168D60);
    sub_1D4166A80();
    v20 = sub_1D41663A0();
    sub_1D4165D40();

    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(&v28, &qword_1EC7C4CF0, &qword_1D4168D60);
    (*(v10 + 8))(v13, v9);
    v18 = *(&v25 + 1);
    v15 = v25;
    v19 = v26;
    v16 = *(&v27 + 1);
    v17 = v27;
  }

  if (!v16)
  {
    [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  sub_1D41666C0();
  (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
  v21 = sub_1D41666F0();

  result = (*(v5 + 8))(v8, v4);
  *a2 = v21;
  return result;
}

uint64_t sub_1D4163338(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = *(result + 48);
    v2 = *(result + 56);
    v3 = *(result + 64) & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D70, &qword_1D4169010);
    sub_1D4166820();
  }

  return result;
}

uint64_t sub_1D41633C8(__int128 *a1)
{
  v2 = sub_1D4166170();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D41666D0();
  *&v25[9] = *(a1 + 25);
  v8 = a1[1];
  v24 = *a1;
  *v25 = v8;
  v9 = v24;
  if (v25[24] == 1)
  {
    v10 = *&v25[16];
    v11 = *(&v24 + 1);
    v12 = *v25;
    v21 = v24;
    v22 = *v25;
    v23 = *&v25[8];
    sub_1D4164C68(&v24, v20, &qword_1EC7C4CF0, &qword_1D4168D60);
  }

  else
  {
    sub_1D4164C68(&v24, v20, &qword_1EC7C4CF0, &qword_1D4168D60);
    sub_1D4166A80();
    v13 = sub_1D41663A0();
    sub_1D4165D40();

    sub_1D4166160();
    swift_getAtKeyPath();
    sub_1D4137AEC(&v24, &qword_1EC7C4CF0, &qword_1D4168D60);
    (*(v3 + 8))(v6, v2);
    v11 = *(&v21 + 1);
    v9 = v21;
    v12 = v22;
    v10 = *(&v23 + 1);
  }

  v14 = sub_1D41666B0();
  KeyPath = swift_getKeyPath();
  v16 = sub_1D41664F0();
  v17 = swift_getKeyPath();
  v20[0] = v7;
  v20[1] = KeyPath;
  v20[2] = v14;
  v20[3] = v17;
  v20[4] = v16;
  sub_1D41664B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D58, &qword_1D4168F90);
  sub_1D4164CD4();
  sub_1D4166590();
}

uint64_t sub_1D4163660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a3;
  v4 = sub_1D4166B70();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  sub_1D4166A20();
  v3[24] = sub_1D4166A10();
  v8 = sub_1D4166A00();
  v3[25] = v8;
  v3[26] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D4163754, v8, v7);
}

uint64_t sub_1D4163754()
{
  v1 = *(v0 + 160);
  *(v0 + 80) = *(v1 + 72);
  v2 = *(v1 + 88);
  *(v0 + 216) = v2;
  *(v0 + 16) = *(v1 + 72);
  *(v0 + 32) = v2;
  *(v0 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D10, &qword_1D4168F40);
  sub_1D4166770();
  if (*(v0 + 104))
  {
    v3 = *(v0 + 192);

LABEL_3:
    v4 = *(v0 + 184);

    OUTLINED_FUNCTION_17();

    return v5();
  }

  v7 = *(v0 + 160);
  v8 = *(v7 + 96);
  *(v0 + 232) = v8;
  *(v0 + 240) = *(v7 + 104);
  if (!v8)
  {
    v12 = *(v0 + 192);

    goto LABEL_3;
  }

  v9 = *(v0 + 184);

  sub_1D4166C60();
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_1D41638DC;
  v11 = *(v0 + 184);

  return sub_1D41647C4(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1D41638DC()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = v2[31];
  *v4 = *v1;

  v6 = v2[23];
  v7 = v2[22];
  v8 = v2[21];
  if (v0)
  {

    v9 = *(v7 + 8);
    v10 = OUTLINED_FUNCTION_10_10();
    v11(v10);
    v12 = v3[25];
    v13 = v3[26];
    v14 = sub_1D4165044;
  }

  else
  {
    v15 = *(v7 + 8);
    v16 = OUTLINED_FUNCTION_10_10();
    v17(v16);
    v12 = v3[25];
    v13 = v3[26];
    v14 = sub_1D4163A60;
  }

  return MEMORY[0x1EEE6DFA0](v14, v12, v13);
}

uint64_t sub_1D4163A60()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 192);

  v7 = v2(v6);
  v8 = *(v0 + 80);
  *(v0 + 64) = v8;
  *(v0 + 144) = v4;
  *(v0 + 40) = v8;
  *(v0 + 56) = v4;
  *(v0 + 112) = v7;
  *(v0 + 120) = v9;
  sub_1D4164C68(v0 + 64, v0 + 128, &qword_1EC7C4CB8, &qword_1D4168D18);
  sub_1D4164C68(v0 + 144, v0 + 152, &qword_1EC7C4D18, &qword_1D4168F50);
  sub_1D4166780();
  sub_1D415DD24(v2);
  sub_1D4137AEC(v0 + 64, &qword_1EC7C4CB8, &qword_1D4168D18);
  sub_1D4137AEC(v0 + 144, &qword_1EC7C4D18, &qword_1D4168F50);
  v10 = *(v0 + 184);

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_1D4163BA0()
{
  sub_1D4165720();
  sub_1D4165700();
  v0 = sub_1D41656F0();
  v2 = v1;

  if (v2)
  {
    type metadata accessor for AppSwiftUIBridge();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = objc_opt_self();
    v5 = [v4 bundleForClass_];
    v6 = [v5 localizations];
    if (!v6)
    {
      sub_1D41669B0();
      v6 = sub_1D41669A0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C4D98, &qword_1D4169040);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D4168270;
    *(v7 + 32) = v0;
    *(v7 + 40) = v2;
    v8 = sub_1D41669A0();

    v9 = [v4 preferredLocalizationsFromArray:v6 forPreferences:v8];

    v10 = sub_1D41669B0();
    if (v10[2])
    {
      v12 = v10[4];
      v11 = v10[5];
    }

    else
    {
      v11 = 0;
    }

    v18 = sub_1D41668E0();
    v19 = sub_1D41668E0();
    if (v11)
    {
      v20 = sub_1D41668E0();
    }

    else
    {
      v20 = 0;
    }

    v21 = [v5 localizedStringForKey:v18 value:v19 table:0 localization:v20];

    v17 = sub_1D4166910();
  }

  else
  {
    if (qword_1ED9ACCE0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D4165D70();
    __swift_project_value_buffer(v13, qword_1ED9AD488);
    v14 = sub_1D4165D50();
    v15 = sub_1D4166A70();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D4134000, v14, v15, "Siri language unavailable, hiding tip", v16, 2u);
      MEMORY[0x1DA6D2650](v16, -1, -1);
    }

    return 0;
  }

  return v17;
}

uint64_t View.siriTipViewStyle(_:)(__int128 *a1)
{
  v2 = *(a1 + 4);
  swift_getKeyPath();
  v4 = *a1;
  v5 = a1[1];
  sub_1D41665C0();
}

uint64_t sub_1D4163F38()
{
  sub_1D4164FE4();

  return sub_1D4166180();
}

double sub_1D4163F80@<D0>(uint64_t a1@<X8>)
{
  sub_1D4163F38();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D4163FC4(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  *&v11 = *a1;
  *(&v11 + 1) = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v5 = v4;
  v6 = v11;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  return sub_1D4164628(&v11);
}

uint64_t sub_1D4164030()
{
  v1 = *(v0 + 24);
  v2 = *(*(*(v0 + 16) - 8) + 80);
  return sub_1D4160FB8();
}

unint64_t sub_1D416406C()
{
  result = qword_1EC7C4360;
  if (!qword_1EC7C4360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4458, &qword_1D4167620);
    sub_1D41361D0(&qword_1EC7C4328, &qword_1EC7C4CD0, &qword_1D4168D38);
    sub_1D41361D0(&qword_1ED9ACA60, &qword_1EC7C4CD8, &qword_1D4168D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4360);
  }

  return result;
}

void sub_1D4164188(void *a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

uint64_t sub_1D41641FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D41642A0;

  return sub_1D4163660(v2, v3, v0 + 32);
}

uint64_t sub_1D41642A0()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  OUTLINED_FUNCTION_17();

  return v4();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D41643B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D41643F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_SSSgIegho_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D4164490(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t sub_1D41644E4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t sub_1D4164560()
{
  result = qword_1EC7C4350;
  if (!qword_1EC7C4350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4CF8, &qword_1D4168F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4458, &qword_1D4167620);
    sub_1D416406C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C4350);
  }

  return result;
}

uint64_t sub_1D4164628(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  sub_1D4164FE4();
  return sub_1D4166190();
}

id sub_1D4164670()
{
  if (qword_1ED9ACA98 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9ACAA0;
  v1 = *algn_1ED9ACAA8;
  v2 = qword_1ED9ACAB0;
  v8 = unk_1ED9ACAB8;
  qword_1ED9AD460 = qword_1ED9ACAA0;
  *algn_1ED9AD468 = *algn_1ED9ACAA8;
  qword_1ED9AD470 = qword_1ED9ACAB0;
  unk_1ED9AD478 = unk_1ED9ACAB8;
  qword_1ED9AD480 = qword_1ED9ACAC0;
  v3 = qword_1ED9ACAC0;
  v4 = v0;
  v5 = v1;
  v6 = v2;

  return v8;
}

id sub_1D416471C@<X0>(void *a1@<X8>)
{
  if (qword_1ED9ACAD0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9AD460;
  v3 = *algn_1ED9AD468;
  v5 = qword_1ED9AD470;
  v4 = unk_1ED9AD478;
  v12 = unk_1ED9AD478;
  v6 = qword_1ED9AD480;
  *a1 = qword_1ED9AD460;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v6;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  v10 = v5;

  return v12;
}

uint64_t sub_1D41647C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D4166B60();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D41648C4, 0, 0);
}

uint64_t sub_1D41648C4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1D4166B70();
  v7 = sub_1D4164F9C(&qword_1EC7C4310, MEMORY[0x1E69E8820]);
  sub_1D4166C40();
  sub_1D4164F9C(&qword_1EC7C4318, MEMORY[0x1E69E87E8]);
  sub_1D4166B80();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D4164A54;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1D4164A54()
{
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 64);
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v2;
  v2[15] = v0;

  v9 = OUTLINED_FUNCTION_10_10();
  v5(v9);
  if (!v0)
  {
    v11 = v2[10];
    v10 = v2[11];

    OUTLINED_FUNCTION_17();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1D4164C00, 0, 0);
}

uint64_t sub_1D4164C00()
{
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_17();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1D4164C68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_33(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_11_8();
  v9(v8);
  return v4;
}

unint64_t sub_1D4164CD4()
{
  result = qword_1ED9ACA68;
  if (!qword_1ED9ACA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4D58, &qword_1D4168F90);
    sub_1D4164D8C();
    sub_1D41361D0(qword_1ED9ACF30, &qword_1EC7C4C40, &qword_1D4168C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACA68);
  }

  return result;
}

unint64_t sub_1D4164D8C()
{
  result = qword_1ED9ACA70;
  if (!qword_1ED9ACA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C4D60, &qword_1D4168F98);
    sub_1D41361D0(&qword_1ED9ACA50, &qword_1EC7C4D68, &unk_1D4168FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACA70);
  }

  return result;
}

uint64_t sub_1D4164E44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_33(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_11_8();
  v9(v8);
  return v4;
}

uint64_t sub_1D4164E90(uint64_t *a1)
{
  v1 = *a1;

  return sub_1D41660A0();
}

id sub_1D4164EBC(void *a1, void *a2, void *a3, void *a4, void *a5, char a6)
{
  if (a6)
  {
    v9 = a5;
    v10 = a1;
    v11 = a2;
    v12 = a3;

    return a4;
  }

  else
  {
  }
}

unint64_t sub_1D4164F48()
{
  result = qword_1ED9ACAE0;
  if (!qword_1ED9ACAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACAE0);
  }

  return result;
}

uint64_t sub_1D4164F9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D4164FE4()
{
  result = qword_1ED9ACAC8;
  if (!qword_1ED9ACAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ACAC8);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EC7C4DB8 == -1)
  {
    if (qword_1EC7C4DC0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_1EC7C4DC0)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EC7C4DB0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_1EC7C4DA4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_1EC7C4DA4 >= a3)
      {
        result = dword_1EC7C4DA8 >= a4;
        v12 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = qword_1EC7C4DC0;
  if (qword_1EC7C4DC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EC7C4DC0 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1DA6D2110](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_1EC7C4DA4, &dword_1EC7C4DA8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x1E69E9840];
  return result;
}