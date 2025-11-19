uint64_t sub_18F36C338()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F36C434()
{
  v1 = v0[34];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[18];
  v7 = OUTLINED_FUNCTION_18_40();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = *(v5 + 32);
  v11 = OUTLINED_FUNCTION_56();
  v10(v11);
  v12 = swift_task_alloc();
  v12[2] = v6;
  v12[3] = v3;
  v12[4] = v4;
  os_unfair_lock_lock((v2 + 24));
  sub_18F10CD68((v2 + 16));
  if (!v1)
  {
    v15 = v0[22];
    v16 = v0[18];
    v17 = v0[14];
    os_unfair_lock_unlock((v0[29] + 24));

    (v10)(v17, v15, v16);
    OUTLINED_FUNCTION_22_34();

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_176();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_176();

  os_unfair_lock_unlock(v13);
}

uint64_t sub_18F36C590()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F36C68C()
{
  v1 = v0[36];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v7 = OUTLINED_FUNCTION_18_40();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = *(v5 + 32);
  v11 = OUTLINED_FUNCTION_56();
  v10(v11);
  v12 = swift_task_alloc();
  v12[2] = v6;
  v12[3] = v3;
  v12[4] = v4;
  os_unfair_lock_lock((v2 + 24));
  sub_18F10CF40((v2 + 16));
  if (!v1)
  {
    v15 = v0[21];
    v16 = v0[18];
    v17 = v0[14];
    os_unfair_lock_unlock((v0[29] + 24));

    (v10)(v17, v15, v16);
    OUTLINED_FUNCTION_22_34();

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_176();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_176();

  os_unfair_lock_unlock(v13);
}

uint64_t sub_18F36C7D8()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_44();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18F36C858()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_10_44();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18F36C8E0()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_10_44();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t AppDependencyManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AppDependencyManager.init()();
  return v0;
}

uint64_t sub_18F36C9A0@<X0>(void *a1@<X8>)
{
  sub_18F36BAA4();
  *a1 = qword_1ED6FD788;
}

uint64_t sub_18F36C9E0(uint64_t *a1)
{
  v1 = *a1;

  sub_18F36BAA4();
  qword_1ED6FD788 = v1;
}

uint64_t AppDependencyManager.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD7588);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_18F36CA74()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_89();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_1_81(v1);
  OUTLINED_FUNCTION_31_9();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F36CB08(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_18F36CB8C()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_89();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_1_81(v1);
  OUTLINED_FUNCTION_31_9();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F36CC20(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F36CC4C()
{
  v1 = *(*(v0 + 120) + 32);
  *(v0 + 128) = v1;
  os_unfair_lock_lock(v1 + 12);
  sub_18F116970(&v1[4], v0 + 48, &qword_1EACD0430);
  os_unfair_lock_unlock(v1 + 12);
  if (*(v0 + 72))
  {
    v2 = *(v0 + 112);
    sub_18F118710((v0 + 48), (v0 + 16));
    sub_18F118710((v0 + 16), v2);
LABEL_3:
    OUTLINED_FUNCTION_6();

    return v3();
  }

  v5 = *(v0 + 120);
  sub_18F0EF1A8(v0 + 48, &qword_1EACD0430);
  v6 = *(v5 + 16);
  *(v0 + 136) = v6;
  *(v0 + 144) = *(v5 + 24);
  if (!v6)
  {
    v9 = *(v0 + 112);
    *v9 = 0u;
    v9[1] = 0u;
    goto LABEL_3;
  }

  v10 = (v6 + *v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 152) = v7;
  *v7 = v8;
  v7[1] = sub_18F36CE0C;

  return v10(v0 + 80);
}

uint64_t sub_18F36CE0C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F36CF08()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = v0[20];
  v2 = v0[16];
  *(swift_task_alloc() + 16) = v0 + 10;
  os_unfair_lock_lock(v2 + 12);
  sub_18F36D804(&v2[4]);
  if (v1)
  {
    OUTLINED_FUNCTION_31_9();

    os_unfair_lock_unlock(v3);
  }

  else
  {
    v5 = v0[17];
    v6 = v0[14];
    os_unfair_lock_unlock((v0[16] + 48));
    sub_18F0F689C(v5);

    sub_18F0FECD4((v0 + 10), v6);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 10));
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_31_9();

    v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_18F36CFF8()
{
  OUTLINED_FUNCTION_69();
  sub_18F0F689C(*(v0 + 136));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t AppDependencyManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t AppDependencyManager.Error.errorDescription.getter()
{
  OUTLINED_FUNCTION_10_0();
  (*(v0 + 16))(&v19);
  if (v21)
  {
    if (v21 != 1)
    {
      v17 = v19;
      v18 = v20;
      OUTLINED_FUNCTION_5_60();
      sub_18F52279C();
      OUTLINED_FUNCTION_21_33();
      MEMORY[0x193ADB000](0xD00000000000001ALL);
      v11 = type metadata accessor for AppDependencyManager();
      v15 = OUTLINED_FUNCTION_23_34(v11, v12, v13, v14);
      MEMORY[0x193ADB000](v15);

      OUTLINED_FUNCTION_4_64();
      swift_getMetatypeMetadata();
      OUTLINED_FUNCTION_26_37();
      OUTLINED_FUNCTION_28_43();

      OUTLINED_FUNCTION_21_33();
      MEMORY[0x193ADB000]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2390);
      OUTLINED_FUNCTION_26_37();
      OUTLINED_FUNCTION_28_43();

      goto LABEL_7;
    }

    v17 = v19;
    v18 = v20;
    OUTLINED_FUNCTION_5_60();
    sub_18F52279C();
    OUTLINED_FUNCTION_21_33();
    MEMORY[0x193ADB000](0xD00000000000001ALL);
    v1 = type metadata accessor for AppDependencyManager();
    v5 = OUTLINED_FUNCTION_23_34(v1, v2, v3, v4);
    MEMORY[0x193ADB000](v5);

    OUTLINED_FUNCTION_4_64();
    swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_26_37();
    OUTLINED_FUNCTION_28_43();
  }

  else
  {
    v17 = v19;
    v18 = v20;
    OUTLINED_FUNCTION_5_60();
    sub_18F52279C();
    OUTLINED_FUNCTION_21_33();
    MEMORY[0x193ADB000]();
    v6 = type metadata accessor for AppDependencyManager();
    v10 = OUTLINED_FUNCTION_23_34(v6, v7, v8, v9);
    MEMORY[0x193ADB000](v10);

    OUTLINED_FUNCTION_4_64();
    swift_getMetatypeMetadata();
    OUTLINED_FUNCTION_26_37();
    OUTLINED_FUNCTION_28_43();
  }

  OUTLINED_FUNCTION_21_33();
  MEMORY[0x193ADB000]();
LABEL_7:
  sub_18F0EF654(&v17);
  return OUTLINED_FUNCTION_56();
}

uint64_t sub_18F36D368()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18F36D3CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F36D408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_18F36D458(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_18F36D4F0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = *(a4 - 8);
  v6 = swift_task_alloc();
  v4[5] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_18F36D644;

  return v9(v6);
}

uint64_t sub_18F36D644()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v9 = v3[4];
    v8 = v3[5];
    v10 = v3[2];
    v11 = v3[3];
    v10[3] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(v9 + 32))(boxed_opaque_existential_1, v8, v11);

    OUTLINED_FUNCTION_6();
  }

  return v7();
}

uint64_t sub_18F36D770()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_89();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_1_81(v1);
  OUTLINED_FUNCTION_31_9();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t static Date.defaultResolverSpecification.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DateFromStringResolver();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_18F520DBC();
  sub_18F520FCC();
  sub_18F36D96C(v7, v5);
  sub_18F36D9D0(v5, a1);
  return sub_18F36DA34(v7);
}

uint64_t type metadata accessor for DateFromStringResolver()
{
  result = qword_1EACD7640;
  if (!qword_1EACD7640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DateFromStringResolver.init()()
{
  sub_18F520DBC();
  type metadata accessor for DateFromStringResolver();
  return sub_18F520FCC();
}

uint64_t sub_18F36D96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateFromStringResolver();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F36D9D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateFromStringResolver();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F36DA34(uint64_t a1)
{
  v2 = type metadata accessor for DateFromStringResolver();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateFromStringResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F36DABC, 0, 0);
}

uint64_t sub_18F36DABC()
{
  v1 = *(v0 + 48);
  sub_18F36DCD8((v0 + 72));
  v2 = *(v0 + 72);
  v3 = *(type metadata accessor for DateFromStringResolver() + 20);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_18F36DB98;
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return sub_18F36DFE8(v8, v6, v7, v2, v5, v1 + v3);
}

uint64_t sub_18F36DB98()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F36DCC0, 0, 0);
  }

  else
  {
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_18F36DCD8@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16))
  {
    v4 = sub_18F0F713C(0x646E694B65746164, 0xE800000000000000);
    if (v5)
    {
      sub_18F0FECD4(*(v3 + 56) + 32 * v4, &v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7730);
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_10;
      }
    }
  }

  sub_18F19E300(v3, &v9);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7728);
    result = swift_dynamicCast();
    if (result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_18F0EF1A8(&v9, &qword_1EACD0430);
  }

  sub_18F19E300(v3, &v9);
  if (!v10)
  {
    result = sub_18F0EF1A8(&v9, &qword_1EACD0430);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7720);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    v7 = 3;
    goto LABEL_13;
  }

LABEL_10:
  v7 = v8;
LABEL_13:
  *a1 = v7;
  return result;
}

uint64_t IntentParameterContext<>.dateKind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  OUTLINED_FUNCTION_14_8(a1, a2, a3, a4, a5, a6, a7, a8, v27, v30, v33, v36, v38);
  if (v39)
  {
    type metadata accessor for IntentParameter.DateKind();
    result = OUTLINED_FUNCTION_6_61();
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = sub_18F0EF1A8(&v38, &qword_1EACD0430);
  }

  OUTLINED_FUNCTION_14_8(result, v12, v13, v14, v15, v16, v17, v18, v28, v31, v34, v37, v38);
  if (v39)
  {
    sub_18F52254C();
    v32 = *(a1 + 24);
    swift_getWitnessTable();
    type metadata accessor for IntentParameter.DateKind();
    result = OUTLINED_FUNCTION_6_61();
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = sub_18F0EF1A8(&v38, &qword_1EACD0430);
  }

  OUTLINED_FUNCTION_14_8(result, v19, v20, v21, v22, v23, v24, v25, v29, v32, v35, v37, v38);
  if (!v39)
  {
    result = sub_18F0EF1A8(&v38, &qword_1EACD0430);
    goto LABEL_13;
  }

  sub_18F521DBC();
  swift_getWitnessTable();
  type metadata accessor for IntentParameter.DateKind();
  result = OUTLINED_FUNCTION_6_61();
  if ((result & 1) == 0)
  {
LABEL_13:
    v26 = 3;
    goto LABEL_14;
  }

LABEL_11:
  v26 = HIBYTE(v37);
LABEL_14:
  *a9 = v26;
  return result;
}

{
  OUTLINED_FUNCTION_14_8(a1, a2, a3, a4, a5, a6, a7, a8, v29, v32, v35, v38, v39);
  if (v40)
  {
    type metadata accessor for IntentParameter.DateKind();
    v11 = OUTLINED_FUNCTION_4_84();
    if (v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = sub_18F0FA038(&v39, &qword_1EACD0430);
  }

  OUTLINED_FUNCTION_14_8(v11, v12, v13, v14, v15, v16, v17, v18, v30, v33, v36, v38, v39);
  if (v40)
  {
    sub_18F52254C();
    v34 = *(a1 + 24);
    swift_getWitnessTable();
    type metadata accessor for IntentParameter.DateKind();
    v19 = OUTLINED_FUNCTION_4_84();
    if (v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = sub_18F0FA038(&v39, &qword_1EACD0430);
  }

  OUTLINED_FUNCTION_14_8(v19, v20, v21, v22, v23, v24, v25, v26, v31, v34, v37, v38, v39);
  if (!v40)
  {
    result = sub_18F0FA038(&v39, &qword_1EACD0430);
    goto LABEL_14;
  }

  sub_18F521DBC();
  swift_getWitnessTable();
  type metadata accessor for IntentParameter.DateKind();
  result = OUTLINED_FUNCTION_4_84();
  if ((result & 1) == 0)
  {
LABEL_14:
    v28 = 3;
    goto LABEL_15;
  }

LABEL_11:
  swift_checkMetadataState();
LABEL_12:
  result = sub_18F36F8BC(&v38 + 7, &v39);
  v28 = v39;
LABEL_15:
  *a9 = v28;
  return result;
}

uint64_t sub_18F36DFE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = a6;
  *(v6 + 209) = a4;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6A08);
  *(v6 + 120) = swift_task_alloc();
  v7 = sub_18F520EFC();
  *(v6 + 128) = v7;
  *(v6 + 136) = *(v7 - 8);
  *(v6 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD76F0);
  *(v6 + 152) = swift_task_alloc();
  v8 = sub_18F520F1C();
  *(v6 + 160) = v8;
  *(v6 + 168) = *(v8 - 8);
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F36E1AC, 0, 0);
}

uint64_t sub_18F36E1AC()
{
  OUTLINED_FUNCTION_27_35();
  v4 = [objc_allocWithZone(MEMORY[0x1E6999A90]) initWithScannerType:2 passiveIntent:0];
  *(v0 + 184) = v4;
  static IntentContext.currentLocale.getter();
  sub_18F520E7C();
  sub_18F520F0C();
  sub_18F520EEC();
  (*(v3 + 8))(v1, v2);
  v5 = sub_18F520EAC();
  OUTLINED_FUNCTION_35_22(v5);
  if (v6)
  {
    sub_18F0EF1A8(v1, &qword_1EACD76F0);
  }

  else
  {
    sub_18F520E9C();
    OUTLINED_FUNCTION_19_38();
    (*(v7 + 8))(v1, v1);
    v8 = sub_18F5218AC();

    [v4 setLanguage_];
  }

  OUTLINED_FUNCTION_12_48();
  OUTLINED_FUNCTION_11_41(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD76F8);
  OUTLINED_FUNCTION_4_65(&qword_1EACD7700);
  sub_18F12A000();
  OUTLINED_FUNCTION_33_27();
  v10 = swift_task_alloc();
  OUTLINED_FUNCTION_18_41(v10);
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7708);
  *v11 = v0;
  v11[1] = sub_18F36E418;
  v12 = OUTLINED_FUNCTION_5_61();

  return MEMORY[0x1EEE6DDE0](v12);
}

uint64_t sub_18F36E418()
{
  OUTLINED_FUNCTION_69();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_18F36E550, 0, 0);
}

uint64_t sub_18F36E550()
{
  OUTLINED_FUNCTION_16_41();
  if (v5 >= 2)
  {
    OUTLINED_FUNCTION_10_45();
    if (v29)
    {
      sub_18F141818();
      OUTLINED_FUNCTION_2_82();
      if (v14)
      {
        OUTLINED_FUNCTION_1_82();
        v84 = v79;
      }

      v28 = 0xE400000000000000;
    }

    else
    {
      sub_18F141818();
      OUTLINED_FUNCTION_2_82();
      if (v14)
      {
        OUTLINED_FUNCTION_1_82();
        v84 = v78;
      }

      v28 = 0xE400000000000000;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_45();
    sub_18F141818();
    OUTLINED_FUNCTION_22_35();
    if (!v25 & v14)
    {
      OUTLINED_FUNCTION_8_49(v6, v7, v8, v9, v10, v11, v12, v13, v80, v82, v84);
    }

    else
    {
LABEL_34:
      OUTLINED_FUNCTION_1_82();
      OUTLINED_FUNCTION_8_49(v61, v62, v63, v64, v65, v66, v67, v68, v80, v82, v61);
    }

    if (v15 != v16)
    {
      OUTLINED_FUNCTION_26_38();
      OUTLINED_FUNCTION_7_51(v69, v70, v71, v72, v73, v74, v75, v76, v81, v83, v69);
    }

    else
    {
      OUTLINED_FUNCTION_7_51(v17, v18, v19, v20, v21, v22, v23, v24, v81, v83, v85);
    }

    if (!(v26 ^ v27 | v25))
    {
      OUTLINED_FUNCTION_1_82();
      v84 = v77;
    }

    OUTLINED_FUNCTION_20_33();
  }

  OUTLINED_FUNCTION_25_33(v28, v80, v82, v84);
  OUTLINED_FUNCTION_31_36();
  while (1)
  {
    if (v3 == v4)
    {
      v37 = OUTLINED_FUNCTION_30_31();
      v38(v37);

      sub_18F520DEC();
      OUTLINED_FUNCTION_11();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_32_34();
    if (v1)
    {
      v30 = MEMORY[0x193ADBE10](v4, v0);
    }

    else
    {
      v30 = *(v0 + 8 * v4 + 32);
    }

    v31 = v30;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    v32 = [v30 type];
    v33 = sub_18F5218DC();
    v35 = v34;

    *(v2 + 48) = v33;
    *(v2 + 56) = v35;
    v36 = swift_task_alloc();
    *(v36 + 16) = v82;
    LOBYTE(v33) = sub_18F2F0C1C(sub_18F3707F0, v36, v86);

    if (v33)
    {
      break;
    }

    ++v4;
  }

  *(v2 + 208) = 0;
  v43 = sub_18F520D7C();
  v44 = sub_18F520F9C();
  *(v2 + 72) = 0;
  v45 = OUTLINED_FUNCTION_24_37(v44, sel_dateFromReferenceDate_referenceTimezone_timezoneRef_allDayRef_);

  v46 = *(v2 + 72);
  v47 = *(v2 + 184);
  if (v45)
  {
    sub_18F520DAC();
    v48 = v46;

    v49 = OUTLINED_FUNCTION_45();
    v50(v49);
    v51 = 0;
  }

  else
  {
    v52 = *(*(v2 + 168) + 8);
    v53 = v46;
    v54 = OUTLINED_FUNCTION_45();
    v52(v54);

    v51 = 1;
  }

  v55 = *(v2 + 120);
  v56 = sub_18F520DEC();
  __swift_storeEnumTagSinglePayload(v55, v51, 1, v56);
  v57 = OUTLINED_FUNCTION_66();
  sub_18F3704D0(v57, v58);

LABEL_30:

  v59 = *(v2 + 8);

  return v59();
}

uint64_t sub_18F36E8CC()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 104) = v1;
  *(v0 + 112) = v2;
  *(v0 + 209) = v3;
  *(v0 + 88) = v4;
  *(v0 + 96) = v5;
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6A08);
  OUTLINED_FUNCTION_10(v7);
  *(v0 + 120) = OUTLINED_FUNCTION_34_0();
  v8 = sub_18F520EFC();
  *(v0 + 128) = v8;
  *(v0 + 136) = *(v8 - 8);
  *(v0 + 144) = OUTLINED_FUNCTION_34_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD76F0);
  OUTLINED_FUNCTION_10(v9);
  *(v0 + 152) = OUTLINED_FUNCTION_34_0();
  v10 = sub_18F520F1C();
  *(v0 + 160) = v10;
  *(v0 + 168) = *(v10 - 8);
  *(v0 + 176) = OUTLINED_FUNCTION_34_0();

  return MEMORY[0x1EEE6DFA0](sub_18F36EA64, 0, 0);
}

uint64_t sub_18F36EA64()
{
  OUTLINED_FUNCTION_27_35();
  v4 = [objc_allocWithZone(MEMORY[0x1E6999A90]) initWithScannerType:2 passiveIntent:0];
  *(v0 + 184) = v4;
  static IntentContext.currentLocale.getter();
  sub_18F520E7C();
  sub_18F520F0C();
  sub_18F520EEC();
  (*(v3 + 8))(v1, v2);
  v5 = sub_18F520EAC();
  OUTLINED_FUNCTION_35_22(v5);
  if (v6)
  {
    sub_18F0EF1A8(v1, &qword_1EACD76F0);
  }

  else
  {
    sub_18F520E9C();
    OUTLINED_FUNCTION_19_38();
    (*(v7 + 8))(v1, v1);
    v8 = sub_18F5218AC();

    [v4 setLanguage_];
  }

  OUTLINED_FUNCTION_12_48();
  OUTLINED_FUNCTION_11_41(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD76F8);
  OUTLINED_FUNCTION_4_65(&qword_1EACD7700);
  sub_18F12A000();
  OUTLINED_FUNCTION_33_27();
  v10 = swift_task_alloc();
  OUTLINED_FUNCTION_18_41(v10);
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7708);
  *v11 = v0;
  v11[1] = sub_18F36ECD0;
  v12 = OUTLINED_FUNCTION_5_61();

  return MEMORY[0x1EEE6DDE0](v12);
}

uint64_t sub_18F36ECD0()
{
  OUTLINED_FUNCTION_69();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_18F36EE08, 0, 0);
}

uint64_t sub_18F36EE08()
{
  OUTLINED_FUNCTION_16_41();
  if (v5 >= 2)
  {
    OUTLINED_FUNCTION_10_45();
    if (v29)
    {
      sub_18F141818();
      OUTLINED_FUNCTION_2_82();
      if (v14)
      {
        OUTLINED_FUNCTION_1_82();
        v84 = v79;
      }

      v28 = 0xE400000000000000;
    }

    else
    {
      sub_18F141818();
      OUTLINED_FUNCTION_2_82();
      if (v14)
      {
        OUTLINED_FUNCTION_1_82();
        v84 = v78;
      }

      v28 = 0xE400000000000000;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_45();
    sub_18F141818();
    OUTLINED_FUNCTION_22_35();
    if (!v25 & v14)
    {
      OUTLINED_FUNCTION_8_49(v6, v7, v8, v9, v10, v11, v12, v13, v80, v82, v84);
    }

    else
    {
LABEL_34:
      OUTLINED_FUNCTION_1_82();
      OUTLINED_FUNCTION_8_49(v61, v62, v63, v64, v65, v66, v67, v68, v80, v82, v61);
    }

    if (v15 != v16)
    {
      OUTLINED_FUNCTION_26_38();
      OUTLINED_FUNCTION_7_51(v69, v70, v71, v72, v73, v74, v75, v76, v81, v83, v69);
    }

    else
    {
      OUTLINED_FUNCTION_7_51(v17, v18, v19, v20, v21, v22, v23, v24, v81, v83, v85);
    }

    if (!(v26 ^ v27 | v25))
    {
      OUTLINED_FUNCTION_1_82();
      v84 = v77;
    }

    OUTLINED_FUNCTION_20_33();
  }

  OUTLINED_FUNCTION_25_33(v28, v80, v82, v84);
  OUTLINED_FUNCTION_31_36();
  while (1)
  {
    if (v3 == v4)
    {
      v37 = OUTLINED_FUNCTION_30_31();
      v38(v37);

      sub_18F520DEC();
      OUTLINED_FUNCTION_11();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_32_34();
    if (v1)
    {
      v30 = MEMORY[0x193ADBE10](v4, v0);
    }

    else
    {
      v30 = *(v0 + 8 * v4 + 32);
    }

    v31 = v30;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    v32 = [v30 type];
    v33 = sub_18F5218DC();
    v35 = v34;

    *(v2 + 48) = v33;
    *(v2 + 56) = v35;
    v36 = swift_task_alloc();
    *(v36 + 16) = v82;
    LOBYTE(v33) = sub_18F2F0C1C(sub_18F16C86C, v36, v86);

    if (v33)
    {
      break;
    }

    ++v4;
  }

  *(v2 + 208) = 0;
  v43 = sub_18F520D7C();
  v44 = sub_18F520F9C();
  *(v2 + 72) = 0;
  v45 = OUTLINED_FUNCTION_24_37(v44, sel_dateFromReferenceDate_referenceTimezone_timezoneRef_allDayRef_);

  v46 = *(v2 + 72);
  v47 = *(v2 + 184);
  if (v45)
  {
    sub_18F520DAC();
    v48 = v46;

    v49 = OUTLINED_FUNCTION_45();
    v50(v49);
    v51 = 0;
  }

  else
  {
    v52 = *(*(v2 + 168) + 8);
    v53 = v46;
    v54 = OUTLINED_FUNCTION_45();
    v52(v54);

    v51 = 1;
  }

  v55 = *(v2 + 120);
  v56 = sub_18F520DEC();
  __swift_storeEnumTagSinglePayload(v55, v51, 1, v56);
  v57 = OUTLINED_FUNCTION_66();
  sub_18F3704D0(v57, v58);

LABEL_30:

  v59 = *(v2 + 8);

  return v59();
}

void sub_18F36F184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7710);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = objc_opt_self();
  v14 = sub_18F5218AC();
  (*(v10 + 16))(v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v12, v9);
  aBlock[4] = sub_18F370540;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F36F3D0;
  aBlock[3] = &block_descriptor_9;
  v17 = _Block_copy(aBlock);

  [v13 scanString:v14 range:a4 configuration:a5 completionBlock:{v19, v17}];
  _Block_release(v17);
}

uint64_t sub_18F36F380()
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7710);
  return sub_18F521E3C();
}

uint64_t sub_18F36F3D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_18F3705B8();
  v2 = sub_18F521CAC();

  v1(v2);
}

uint64_t static DateFromStringResolver.== infix(_:_:)()
{
  if (sub_18F520D9C())
  {
    type metadata accessor for DateFromStringResolver();

    JUMPOUT(0x193ADA5A0);
  }

  return 0;
}

uint64_t DateFromStringResolver.hash(into:)()
{
  sub_18F520DEC();
  OUTLINED_FUNCTION_0_100();
  sub_18F10F820(v0, v1);
  OUTLINED_FUNCTION_66();
  sub_18F52178C();
  type metadata accessor for DateFromStringResolver();
  sub_18F520FDC();
  OUTLINED_FUNCTION_3_63();
  sub_18F10F820(v2, v3);
  OUTLINED_FUNCTION_66();
  return sub_18F52178C();
}

uint64_t DateFromStringResolver.hashValue.getter()
{
  sub_18F522EFC();
  sub_18F520DEC();
  OUTLINED_FUNCTION_0_100();
  sub_18F10F820(v0, v1);
  sub_18F52178C();
  type metadata accessor for DateFromStringResolver();
  sub_18F520FDC();
  OUTLINED_FUNCTION_3_63();
  sub_18F10F820(v2, v3);
  sub_18F52178C();
  return sub_18F522F4C();
}

uint64_t sub_18F36F624(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_18F36F6E0;

  return DateFromStringResolver.resolve(from:context:)(a1, v6, v7, a3);
}

uint64_t sub_18F36F6E0()
{
  OUTLINED_FUNCTION_69();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_18F36F7D0()
{
  sub_18F522EFC();
  sub_18F520DEC();
  sub_18F10F820(&qword_1EACD7620, MEMORY[0x1E6969530]);
  sub_18F52178C();
  sub_18F520FDC();
  sub_18F10F820(&qword_1EACD7628, MEMORY[0x1E6969BC0]);
  sub_18F52178C();
  return sub_18F522F4C();
}

uint64_t IntentParameter.DateKind.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F36F95C()
{
  sub_18F522EFC();
  IntentParameter.DateKind.hash(into:)();
  return sub_18F522F4C();
}

void IntentParameter<>.dateKind.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(*v1 + 112));
  if (!*(v3 + 16) || (v4 = sub_18F0F713C(0x646E694B65746164, 0xE800000000000000), (v5 & 1) == 0) || (sub_18F0FECD4(*(v3 + 56) + 32 * v4, &v6), type metadata accessor for IntentParameter.DateKind(), (swift_dynamicCast() & 1) == 0))
  {
    *a1 = 3;
  }
}

{
  v3 = *(v1 + *(*v1 + 112));
  if (!*(v3 + 16) || (v4 = sub_18F0F713C(0x646E694B65746164, 0xE800000000000000), (v5 & 1) == 0) || (sub_18F0FECD4(*(v3 + 56) + 32 * v4, &v6), type metadata accessor for IntentParameter.DateKind(), (swift_dynamicCast() & 1) == 0))
  {
    *a1 = 3;
  }
}

id static Date.valueType.getter()
{
  v0 = [objc_opt_self() dateValueType];

  return v0;
}

uint64_t Date.defaultDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_18F52187C();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F520DCC();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = type metadata accessor for DisplayRepresentation();
  v21 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  v25 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
  *(a1 + v20[7]) = xmmword_18F540410;
  *(a1 + v20[8]) = 0;
  *(a1 + v20[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v12);
  sub_18F0FF6E0(v9, a1 + v21, &qword_1EACCF7A8);
  sub_18F0FF6E0(v5, a1 + v25, &qword_1EACD0270);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v20);
}

uint64_t sub_18F36FD18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1935893875 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F522D5C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18F36FDE0(char a1)
{
  if (a1)
  {
    return 0x656E6F5A656D6974;
  }

  else
  {
    return 1935893875;
  }
}

uint64_t sub_18F36FE10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD76E0);
  OUTLINED_FUNCTION_21_34();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F370478();
  sub_18F522FEC();
  v16 = 0;
  sub_18F522C1C();
  if (!v6)
  {
    v15 = 1;
    sub_18F522BFC();
  }

  return (*(v9 + 8))(v12, v5);
}

uint64_t sub_18F36FF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F36FD18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F36FFB0(uint64_t a1)
{
  v2 = sub_18F370478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F36FFEC(uint64_t a1)
{
  v2 = sub_18F370478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F370054()
{
  sub_18F520FDC();
  OUTLINED_FUNCTION_21_34();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F520D8C();
  v7 = v6;
  sub_18F520FAC();
  sub_18F520F8C();
  (*(v2 + 8))(v5, v0);
  return v7;
}

uint64_t sub_18F370138@<X0>(uint64_t a1@<X8>)
{
  result = sub_18F370054();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_18F370188(uint64_t a1)
{
  result = sub_18F10F820(&qword_1EACD7630, type metadata accessor for DateFromStringResolver);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F370270()
{
  result = sub_18F520DEC();
  if (v1 <= 0x3F)
  {
    result = sub_18F520FDC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_18F3702F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F3703C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_18F370414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_18F370478()
{
  result = qword_1EACD76E8;
  if (!qword_1EACD76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD76E8);
  }

  return result;
}

uint64_t sub_18F3704D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6A08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F370540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7710);
  OUTLINED_FUNCTION_10(v0);

  return sub_18F36F380();
}

unint64_t sub_18F3705B8()
{
  result = qword_1EACD7718;
  if (!qword_1EACD7718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACD7718);
  }

  return result;
}

_BYTE *_s13DateNLGParamsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F3706EC()
{
  result = qword_1EACD7738;
  if (!qword_1EACD7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7738);
  }

  return result;
}

unint64_t sub_18F370744()
{
  result = qword_1EACD7740;
  if (!qword_1EACD7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7740);
  }

  return result;
}

unint64_t sub_18F37079C()
{
  result = qword_1EACD7748[0];
  if (!qword_1EACD7748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD7748);
  }

  return result;
}

uint64_t sub_18F370810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v9 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  *(a5 + 48) = 1;
  sub_18F1168B4();
  *a5 = sub_18F5216CC();
  Parameter = type metadata accessor for EntityQueryParameter();
  sub_18F0FD724(a1, v30);
  (*(v11 + 16))(v15, a2, v9);
  sub_18F116A7C(a3, v29, &qword_1EACD0D00);
  sub_18F116A7C(a4, v28, &qword_1EACD0D00);
  v17 = sub_18F370A4C();
  *(a5 + 32) = Parameter;
  OUTLINED_FUNCTION_0_101();
  *(a5 + 40) = swift_getWitnessTable();
  *(a5 + 8) = v17;
  sub_18F0EF1A8(a4, &qword_1EACD0D00);
  sub_18F0EF1A8(a3, &qword_1EACD0D00);
  (*(v11 + 8))(a2, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for IntentParameterContext();
  v18 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  OUTLINED_FUNCTION_11();
  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
}

uint64_t sub_18F370A4C()
{
  OUTLINED_FUNCTION_12_49();
  v0 = swift_allocObject();
  sub_18F370ABC();
  return v0;
}

uint64_t sub_18F370ABC()
{
  OUTLINED_FUNCTION_12_49();
  *(v1 + 16) = 0;
  v6 = v1 + qword_1EAD0ACA8;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  v7 = (v1 + qword_1EAD0ACB0);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + qword_1EAD0ACB8);
  *v8 = 0;
  v8[1] = 0;
  sub_18F0FD0B4(v9, v17);
  swift_beginAccess();
  sub_18F102AC8(v17, v6);
  swift_endAccess();
  *v7 = v5;
  v7[1] = v4;

  v10 = qword_1EAD0ACA0;
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  (*(v11 + 32))(v1 + v10, v3);
  v12 = v1 + qword_1EAD0ACC0;
  v13 = *(v2 + 16);
  *v12 = *v2;
  *(v12 + 16) = v13;
  *(v12 + 32) = *(v2 + 32);
  v14 = v1 + qword_1EAD0ACC8;
  v15 = *(v0 + 16);
  *v14 = *v0;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v0 + 32);
  return v1;
}

uint64_t sub_18F370BEC()
{
  v1 = qword_1EAD0ACA0;
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  (*(v2 + 8))(v0 + v1);
  sub_18F0EF1A8(v0 + qword_1EAD0ACA8, &qword_1EACD0620);

  sub_18F0EF1A8(v0 + qword_1EAD0ACC0, &qword_1EACD0D00);
  sub_18F0EF1A8(v0 + qword_1EAD0ACC8, &qword_1EACD0D00);
  return v0;
}

uint64_t sub_18F370CD4()
{
  sub_18F370BEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F370DA4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F370DE0()
{
  if (qword_1ED6FDA70 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v0 = sub_18F52165C();
  __swift_project_value_buffer(v0, qword_1ED7076B0);
  v1 = sub_18F52163C();
  v2 = sub_18F52220C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_18F0E9000, v1, v2, "EntityQueryParameter.identifier should not be used.", v3, 2u);
    MEMORY[0x193ADD350](v3, -1, -1);
  }

  return 0;
}

void sub_18F370EB0()
{

  if (qword_1ED6FDA70 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v0 = sub_18F52165C();
  __swift_project_value_buffer(v0, qword_1ED7076B0);
  oslog = sub_18F52163C();
  v1 = sub_18F52220C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_18F0E9000, oslog, v1, "EntityQueryParameter.identifier should not be used. Ignoring set", v2, 2u);
    MEMORY[0x193ADD350](v2, -1, -1);
  }
}

uint64_t sub_18F370F90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EAD0ACA8;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F116A7C(v1 + v4, &v8, &qword_1EACD0620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  v5 = *(v3 + 80);
  v6 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a1, v6 ^ 1u, 1, v5);
}

uint64_t sub_18F371054(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  return OUTLINED_FUNCTION_5_5(sub_18F371094);
}

uint64_t sub_18F371094()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = qword_1EAD0ACA8;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F116A7C(v2 + v4, (v0 + 2), &qword_1EACD0620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  v5 = *(v1 + 80);
  v6 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v3, v6 ^ 1u, 1, v5);
  OUTLINED_FUNCTION_71();

  return v7();
}

uint64_t sub_18F37117C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return OUTLINED_FUNCTION_5_5(sub_18F3711BC);
}

uint64_t sub_18F3711BC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F37121C()
{
  v1 = qword_1EAD0ACA8;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F116A7C(v0 + v1, &v5, &qword_1EACD0620);
  if (!v6)
  {
    return 7104878;
  }

  sub_18F0FD0B4(&v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  sub_18F52299C();
  v2 = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

uint64_t sub_18F3712E8(uint64_t a1)
{
  sub_18F0FD724(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
  result = swift_dynamicCast();
  if (result)
  {

    return v3 == v1;
  }

  return result;
}

uint64_t sub_18F371380()
{
  v1 = 7104878;
  if (*(v0 + qword_1EAD0ACB0 + 8))
  {
    v2 = *(v0 + qword_1EAD0ACB0);
    v3 = *(v0 + qword_1EAD0ACB0 + 8);
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](v2, v3);

  MEMORY[0x193ADB000](1008745760, 0xE400000000000000);
  v4 = sub_18F52307C();
  MEMORY[0x193ADB000](v4);

  MEMORY[0x193ADB000](10302, 0xE200000000000000);
  v5 = (v0 + qword_1EAD0ACA8);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  v6 = v5[3];
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
    OUTLINED_FUNCTION_11_0();
    v8 = v7;
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_4();
    v12 = v11 - v10;
    (*(v8 + 16))(v11 - v10);
    v1 = sub_18F238088(v6);
    v14 = v13;
    (*(v8 + 8))(v12, v6);
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x193ADB000](v1, v14);

  MEMORY[0x193ADB000](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_18F371584@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = qword_1EAD0ACA8;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F116A7C(v1 + v10, &v14, &qword_1EACD0620);
  if (v15)
  {
    sub_18F0FD0B4(&v14, v16);
    sub_18F0FD724(v16, &v14);
    if (*(v1 + qword_1EAD0ACB0 + 8))
    {
      (*(v5 + 16))(v9, v1 + qword_1EAD0ACA0, v3);
      sub_18F116A7C(v1 + qword_1EAD0ACC0, v13, &qword_1EACD0D00);
      sub_18F116A7C(v1 + qword_1EAD0ACC8, v12, &qword_1EACD0D00);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F370810(&v14, v9, v13, v12, a1);
      return __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    __break(1u);
  }

  sub_18F0EF1A8(&v14, &qword_1EACD0620);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_18F52279C();
  MEMORY[0x193ADB000](0x28747865746E6F63, 0xED0000293A726F66);
  MEMORY[0x193ADB000](0xD00000000000003FLL, 0x800000018F52AB60);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F371854()
{
  OUTLINED_FUNCTION_69();
  v1[45] = v2;
  v1[46] = v0;
  v1[47] = *v0;
  v3 = *v0;
  v1[48] = *v0;
  v4 = *(v3 + 80);
  v1[49] = v4;
  v5 = sub_18F52254C();
  v1[50] = v5;
  v1[51] = *(v5 - 8);
  v1[52] = swift_task_alloc();
  v1[53] = *(v4 - 8);
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3719DC, 0, 0);
}

uint64_t sub_18F3719DC()
{
  v1 = *(v0 + 368);
  v2 = qword_1EAD0ACA8;
  *(v0 + 448) = qword_1EAD0ACA8;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F116A7C(v1 + v2, v0 + 56, &qword_1EACD0620);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 360);
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    if (v3)
    {
      v4 = *(v0 + 360);
    }

    else
    {
      if (qword_1ED6FC310 != -1)
      {
        swift_once();
      }

      v4 = qword_1ED707678;
    }

    *(v0 + 456) = v4;
    v8 = *(v0 + 376);
    *(v0 + 344) = *(v0 + 368);
    sub_18F0FD724(v0 + 16, v0 + 96);

    v9 = swift_task_alloc();
    *(v0 + 464) = v9;
    WitnessTable = swift_getWitnessTable();
    *v9 = v0;
    v9[1] = sub_18F371C18;

    return sub_18F29A748(v0 + 344, v0 + 96, v8, WitnessTable);
  }

  else
  {
    sub_18F0EF1A8(v0 + 56, &qword_1EACD0620);
    type metadata accessor for EntityQueryParameter.ResolutionError();
    OUTLINED_FUNCTION_1_83();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_34_14();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_15_41();

    OUTLINED_FUNCTION_71();

    return v6();
  }
}

uint64_t sub_18F371C18()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = v1;
  v1[59] = v3;
  v1[60] = v4;
  v1[61] = v0;

  sub_18F0EF1A8((v2 + 12), &qword_1EACD0620);
  if (v0)
  {
    v5 = sub_18F372318;
  }

  else
  {
    v5 = sub_18F371D44;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F371D44()
{
  v1 = v0[59];
  if (v1)
  {
    v2 = v0[46];
    v0[25] = v0[47];
    OUTLINED_FUNCTION_0_101();
    v0[26] = swift_getWitnessTable();
    v0[22] = v2;
    sub_18F0FD724((v0 + 2), (v0 + 27));

    v14 = (v1 + *v1);
    v3 = swift_task_alloc();
    v0[62] = v3;
    *v3 = v0;
    v3[1] = sub_18F371FF0;
    v4 = v0[52];

    return (v14)(v4, v0 + 22, v0 + 27);
  }

  else
  {
    sub_18F0FD724((v0 + 2), (v0 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    if (swift_dynamicCast())
    {
      v7 = v0[53];
      v6 = v0[54];
      v8 = v0[49];
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

      (*(v7 + 8))(v6, v8);
    }

    else
    {
      v0[44] = v0[49];
      swift_getMetatypeMetadata();
      v10 = sub_18F52194C();
      v12 = v11;
      type metadata accessor for EntityQueryParameter.ResolutionError();
      OUTLINED_FUNCTION_1_83();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_34_14();
      swift_allocError();
      *v13 = v10;
      v13[1] = v12;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    }

    OUTLINED_FUNCTION_71();

    return v9();
  }
}

uint64_t sub_18F371FF0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v3 + 504) = v0;

  sub_18F0EF1A8(v3 + 216, &qword_1EACD0620);
  if (v0)
  {
    v6 = sub_18F37239C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 176);
    v6 = sub_18F37211C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F37211C()
{
  v1 = v0[52];
  v2 = v0[49];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[59];
    (*(v0[51] + 8))(v1, v0[50]);
    type metadata accessor for EntityQueryParameter.ResolutionError();
    OUTLINED_FUNCTION_1_83();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_34_14();
    swift_allocError();
    *v4 = xmmword_18F540420;
    swift_willThrow();
    sub_18F1D5958(v3);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    OUTLINED_FUNCTION_15_41();
  }

  else
  {
    v6 = v0[59];
    v7 = v0[56];
    v8 = v0[55];
    v9 = v0[48];
    v10 = v0[46];
    v11 = *(v0[53] + 32);
    v11(v8, v1, v2);
    v0[35] = v2;
    v0[36] = *(v9 + 88);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 32);
    v11(boxed_opaque_existential_1, v8, v2);
    sub_18F1D5958(v6);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    swift_beginAccess();
    sub_18F102AC8((v0 + 32), v10 + v7);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_71();

  return v5();
}

uint64_t sub_18F372318()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_15_41();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F37239C()
{
  sub_18F1D5958(*(v0 + 472));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  OUTLINED_FUNCTION_15_41();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F372434()
{
  v27 = *v0;
  v28 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = *(v27 + 80);
  v6 = sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = qword_1EAD0ACA8;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F116A7C(v0 + v12, v29, &qword_1EACD0620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  v13 = (v8 + 8);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v5);
    return (*v13)(v11, v6);
  }

  else
  {
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v5);
    (*v13)(v11, v6);
    v30[3] = v27;
    OUTLINED_FUNCTION_0_101();
    v30[4] = swift_getWitnessTable();
    v30[0] = v0;
    type metadata accessor for IntentDialog(0);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    memset(v29, 0, 41);
    OUTLINED_FUNCTION_34_14();
    swift_allocError();
    v23 = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0568);
    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    sub_18F0FD724(v30, v23);
    sub_18F116A7C(v4, v23 + v25, &qword_1EACCF7A0);
    sub_18F116A7C(v29, v23 + v26, &qword_1EACD0550);
    type metadata accessor for AppIntentError.Context(0);
    swift_storeEnumTagMultiPayload();

    sub_18F0EF1A8(v29, &qword_1EACD0550);
    sub_18F0EF1A8(v4, &qword_1EACCF7A0);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    return swift_willThrow();
  }
}

uint64_t sub_18F372770()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return sub_18F371854();
}

uint64_t sub_18F372808()
{
  sub_18F372434();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F3728D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F0FC874;

  return sub_18F37117C(a1);
}

uint64_t sub_18F372990(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F372A04()
{
  v1 = *(*v0 + qword_1EAD0ACB0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t sub_18F372A44(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + qword_1EAD0ACB0);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_18F372A88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EAD0ACA8;
  swift_beginAccess();
  return sub_18F116A7C(v3 + v4, a1, &qword_1EACD0620);
}

uint64_t sub_18F372AF4(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_1EAD0ACA8;
  swift_beginAccess();
  sub_18F102AC8(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_18F372B7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F0FC870;

  return sub_18F371054(a1);
}

uint64_t sub_18F372C18(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F372C54@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EAD0ACA0;
  v5 = sub_18F520B3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_18F372CD0()
{
  result = sub_18F520B3C();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_18F372D9C(uint64_t a1, uint64_t a2)
{
  v2 = 0xD000000000000020;
  if (!a2)
  {
    return 0xD00000000000002ALL;
  }

  if (a2 != 1)
  {
    sub_18F52279C();

    MEMORY[0x193ADB000](a1, a2);
    MEMORY[0x193ADB000](46, 0xE100000000000000);
    return 0xD000000000000022;
  }

  return v2;
}

uint64_t sub_18F372E8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents20EntityQueryParameterC15ResolutionErrorOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F372EFC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18F372FA4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EntityQuerySort();

  return sub_18F521D2C();
}

uint64_t sub_18F373064()
{
  OUTLINED_FUNCTION_69();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v0[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F373104, 0, 0);
}

uint64_t sub_18F373104()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 72) = sub_18F372FA4();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_18F3731B4;

  return sub_18F2ECA08();
}

uint64_t sub_18F3731B4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v6 = sub_18F3736B4;
  }

  else
  {

    v6 = sub_18F3732C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F3732C4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[13] = AssociatedTypeWitness;
  v2 = sub_18F521D7C();
  if (v2 == 1)
  {
    v0[2] = v0[11];
    sub_18F521DBC();
    OUTLINED_FUNCTION_4_30();
    swift_getWitnessTable();
    sub_18F52211C();
    goto LABEL_5;
  }

  if (!v2)
  {
    __swift_storeEnumTagSinglePayload(v0[3], 1, 1, AssociatedTypeWitness);
LABEL_5:

    OUTLINED_FUNCTION_71();

    return v3();
  }

  v5 = v0[8];
  v6 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_task_alloc();
  v0[14] = v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for IntentParameterContext();
  *v7 = v0;
  v7[1] = sub_18F3734FC;

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F3734FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_18F1F03A8(v5);

  if (v0)
  {
    v9 = sub_18F373718;
  }

  else
  {
    v9 = sub_18F373644;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_18F373644()
{
  OUTLINED_FUNCTION_69();
  __swift_storeEnumTagSinglePayload(*(v0 + 24), 0, 1, *(v0 + 104));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F3736B4()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F373718()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F373774()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F2EE6C8;

  return sub_18F373064();
}

uint64_t sub_18F37382C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F373884()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_18F3739A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 88) = a4;
  *(v6 + 24) = a1;
  *(v6 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_18F3739CC, 0, 0);
}

uint64_t sub_18F3739CC()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 56) = sub_18F372FA4();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_18F373A7C;

  return sub_18F2ECA08();
}

uint64_t sub_18F373A7C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v6 = sub_18F373C4C;
  }

  else
  {

    v6 = sub_18F373B8C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F373B8C()
{
  OUTLINED_FUNCTION_69();
  v0[2] = v0[9];
  swift_getAssociatedTypeWitness();
  sub_18F521DBC();
  OUTLINED_FUNCTION_4_30();
  swift_getWitnessTable();
  v1 = sub_18F52213C();
  v2 = v0[9];
  if (v1)
  {

    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_18F373C4C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

BOOL sub_18F373CA8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    return (a4 & 1) == 0 && a1 == a3;
  }

  return (a4 & 1) != 0;
}

uint64_t sub_18F373CD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_18F522F1C();
  }

  sub_18F522F1C();
  return MEMORY[0x193ADC4F0](a2);
}

uint64_t sub_18F373D14(uint64_t a1, char a2)
{
  sub_18F522EFC();
  sub_18F373CD0(v5, a1, a2 & 1);
  return sub_18F522F4C();
}

uint64_t sub_18F373D64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = a1;
  v7 = *a2;
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  *v10 = v5;
  v10[1] = sub_18F373E1C;

  return sub_18F3739A4(v7, v11, v8, v9, v12, v13);
}

uint64_t sub_18F373E1C(uint64_t a1)
{
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_8_0();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_18F373F20(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F373F90()
{
  sub_18F522EFC();
  sub_18F373CD0(v2, *v0, *(v0 + 8));
  return sub_18F522F4C();
}

uint64_t sub_18F373FF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F374060()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_18F0FC874;

  return sub_18F374118(v6, v4, v2);
}

uint64_t sub_18F374118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F3741C4, 0, 0);
}

uint64_t sub_18F3741C4()
{
  v1 = dynamic_cast_existential_1_conditional(v0[11]);
  v0[14] = v1;
  if (v1 && (sub_18F35E5CC(v0[10], (v0 + 2)), __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]), swift_getDynamicType(), __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2)), v2 = sub_18F35DCE8(), v3 = [v2 contentType], v0[15] = v3, v2, v3))
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[10];
    v7 = swift_task_alloc();
    v0[16] = v7;
    v8 = *(v6 + 56);
    v9 = *(v6 + 64);
    sub_18F16AAE0(v8, v9);
    v10 = [v3 contentType];
    sub_18F5218DC();

    v11 = sub_18F52153C();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
    sub_18F5214EC();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
    v12 = swift_task_alloc();
    v0[17] = v12;
    *v12 = v0;
    v12[1] = sub_18F374440;
    v13 = v0[13];

    return MEMORY[0x1EEDBF5A0](v7, v8, v9, v13);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v0[9], 1, 1, v0[11]);

    OUTLINED_FUNCTION_71();

    return v14();
  }
}

uint64_t sub_18F374440()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_18F3745F8;
  }

  else
  {
    v5 = sub_18F374544;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F374544()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  v3 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v2, v3 ^ 1u, 1, v1);

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F3745F8()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F374678()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC870;

  return sub_18F374060();
}

uint64_t sub_18F374728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F37474C, 0, 0);
}

uint64_t sub_18F37474C()
{
  OUTLINED_FUNCTION_21();
  *(v0 + 16) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD7228);
  v4 = sub_18F35E658();
  *v2 = v0;
  v2[1] = sub_18F374848;
  v5 = *(v0 + 40);

  return MEMORY[0x1EEE18F40](&unk_18F55BED0, v1, v3, v5, v4);
}

uint64_t sub_18F374848()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  *(v2 + 72) = v1;
  *(v2 + 80) = v0;

  if (v0)
  {
    v3 = sub_18F27280C;
  }

  else
  {

    v3 = sub_18F37495C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_18F37495C()
{
  OUTLINED_FUNCTION_69();
  v0[3] = v0[9];
  sub_18F521DBC();
  swift_getWitnessTable();
  v1 = sub_18F52213C();
  v2 = v0[9];
  if (v1)
  {

    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_18F374A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F0FC870;

  return sub_18F374118(a1, a2, a3);
}

uint64_t sub_18F374AC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  *v7 = v4;
  v7[1] = sub_18F374B68;

  return sub_18F374728(v6, v8, v9, v10);
}

uint64_t sub_18F374B68()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_18F374C68(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F374CD8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_18F0FC874;

  return sub_18F374A0C(v5, v3, v6);
}

id FocusFilterAppContext.notificationFilterPredicate.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t FocusFilterAppContext.targetContentIdentifierPrefix.getter()
{
  v1 = *(v0 + 8);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

void FocusFilterAppContext.init(notificationFilterPredicate:)(void *a1@<X0>, void *a2@<X8>)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_4;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E699A228]);
  v5 = a1;
  v6 = [v4 init];
  v7 = 0;
  v8[0] = 0;
  [v6 validatePredicate:v5 compileTimeIssues:v8 runTimeIssues:&v7];

  if (v7)
  {
    __break(1u);
  }

  else if (!v8[0])
  {
LABEL_4:
    a2[1] = 0;
    a2[2] = 0;
    *a2 = a1;
    return;
  }

  __break(1u);
}

void FocusFilterAppContext.init(notificationFilterPredicate:targetContentIdentifierPrefix:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_4;
  }

  v8 = objc_allocWithZone(MEMORY[0x1E699A228]);
  v9 = a1;
  v10 = [v8 init];
  v11 = 0;
  v12[0] = 0;
  [v10 validatePredicate:v9 compileTimeIssues:v12 runTimeIssues:&v11];

  if (v11)
  {
    __break(1u);
  }

  else if (!v12[0])
  {
LABEL_4:
    *a4 = a1;
    a4[1] = a2;
    a4[2] = a3;
    return;
  }

  __break(1u);
}

uint64_t sub_18F374F98(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18F374FEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FocusFilterSuggestionContext(_BYTE *result, int a2, int a3)
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

AppIntents::IntentSystemContext::Source_optional __swiftcall IntentSystemContext.Source.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AppIntents::IntentSystemContext::ActionExecutionPriority_optional __swiftcall IntentSystemContext.ActionExecutionPriority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t IntentSystemContext.preciseTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6A08);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12_50();
  v7 = type metadata accessor for IntentContext();
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_13_42();
  if (v2)
  {

    v9 = sub_18F520DEC();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }

  else
  {
    v11 = *(v3 + 16);
    sub_18F178EA4(v3);
    v12 = [v11 preciseTimestamp];

    if (v12)
    {
      sub_18F520DAC();

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = sub_18F520DEC();
    __swift_storeEnumTagSinglePayload(v1, v13, 1, v14);
    return sub_18F3704D0(v1, a1);
  }
}

void IntentSystemContext.source.getter()
{
  v3 = OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_13_42();
  if (v1)
  {

    v5 = 10;
  }

  else
  {
    v5 = *(v2 + *(v3 + 40));
    sub_18F178EA4(v2);
  }

  *v0 = v5;
}

void IntentSystemContext.kind.getter()
{
  v3 = OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_13_42();
  if (v1)
  {

    v5 = 2;
  }

  else
  {
    v5 = *(v2 + *(v3 + 44));
    sub_18F178EA4(v2);
  }

  *v0 = v5;
}

void IntentSystemContext.priority.getter()
{
  v3 = OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_13_42();
  if (v1)
  {

    v5 = 2;
  }

  else
  {
    v5 = *(v2 + *(v3 + 48));
    sub_18F178EA4(v2);
  }

  *v0 = v5;
}

void sub_18F37544C(void *a1@<X0>, char *a2@<X8>)
{
  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  v7 = v7 && v2 == v6;
  if (v7)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_50();

  if (v3)
  {

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  if (v7 && v2 == v9)
  {

    v8 = 2;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_2();

    if (v11)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_9:
  *a2 = v8;
}

AppIntents::IntentSystemContext::StaccatoInteractionType_optional __swiftcall IntentSystemContext.StaccatoInteractionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void IntentSystemContext.staccatoInteractionType.getter()
{
  v2 = OUTLINED_FUNCTION_10_46();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_50();
  static IntentContext.current.getter(v1);
  v4 = *(v1 + 16);
  sub_18F178EA4(v1);
  v5 = [v4 staccatoInteractionType];

  sub_18F37544C(v5, v0);
}

uint64_t IntentSystemContext.userIdentity.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = static IntentContext.connectionIdentifier.getter();
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v3 = sub_18F10C01C(v2);

  if (v3)
  {
    v4 = *(v3 + 24);

    os_unfair_lock_lock((v4 + 24));
    v5 = [*(v4 + 16) userIdentity];
    os_unfair_lock_unlock((v4 + 24));
  }

  else
  {
    v5 = 0;
  }

  sub_18F3A5710(v5, a1);
}

uint64_t IntentSystemContext.encodedCaptureAppContext.getter()
{
  v0 = type metadata accessor for IntentContext();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v4 = v3 - v2;
  static IntentContext.current.getter(v3 - v2);
  v5 = *(v4 + 16);
  sub_18F178EA4(v4);
  v6 = [v5 encodedCaptureAppContext];

  sub_18F520D4C();
  return OUTLINED_FUNCTION_56();
}

void sub_18F375830(void *a1@<X0>, char *a2@<X8>)
{
  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  v7 = v7 && v2 == v6;
  if (v7)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_50();

  if (v3)
  {

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  if (v7 && v2 == v9)
  {

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_50();

  if (v3)
  {

LABEL_17:
    v8 = 1;
    goto LABEL_9;
  }

  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  if (v7 && v2 == v11)
  {

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_50();

  if (v3)
  {

LABEL_25:
    v8 = 2;
    goto LABEL_9;
  }

  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  if (v7 && v2 == v13)
  {

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_50();

  if (v3)
  {

LABEL_33:
    v8 = 3;
    goto LABEL_9;
  }

  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  if (v7 && v2 == v15)
  {

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_50();

  if (v3)
  {

LABEL_41:
    v8 = 4;
    goto LABEL_9;
  }

  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  if (v7 && v2 == v17)
  {

    goto LABEL_49;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_50();

  if (v3)
  {

LABEL_49:
    v8 = 5;
    goto LABEL_9;
  }

  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  if (v7 && v2 == v19)
  {

    goto LABEL_57;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_50();

  if (v3)
  {

LABEL_57:
    v8 = 6;
    goto LABEL_9;
  }

  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  if (v7 && v2 == v21)
  {

    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_50();

  if (v3)
  {

LABEL_65:
    v8 = 7;
    goto LABEL_9;
  }

  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  if (v7 && v2 == v23)
  {

    goto LABEL_73;
  }

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_50();

  if (v3)
  {

LABEL_73:
    v8 = 8;
    goto LABEL_9;
  }

  sub_18F5218DC();
  OUTLINED_FUNCTION_3_64();
  OUTLINED_FUNCTION_5_10();
  if (v7 && v2 == v25)
  {

    v8 = 9;
  }

  else
  {
    v27 = OUTLINED_FUNCTION_0_2();

    if (v27)
    {
      v8 = 9;
    }

    else
    {
      v8 = 10;
    }
  }

LABEL_9:
  *a2 = v8;
}

AppIntents::IntentSystemContext::InterfaceIdiom_optional __swiftcall IntentSystemContext.InterfaceIdiom.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F522B3C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t IntentSystemContext.InterfaceIdiom.rawValue.getter()
{
  result = 0x79616C50726163;
  switch(*v0)
  {
    case 1:
      result = 0x6565724673657965;
      break;
    case 2:
      result = 0x646F50656D6F68;
      break;
    case 3:
      result = 6513005;
      break;
    case 4:
      result = 0x73646F50726961;
      break;
    case 5:
      result = 0x656E6F685069;
      break;
    case 6:
      result = 1684099177;
      break;
    case 7:
      result = 0x6863746177;
      break;
    case 8:
      result = 22100;
      break;
    case 9:
      result = 0x6E6F69736976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F375D5C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentSystemContext.InterfaceIdiom.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void IntentSystemContext.interfaceIdiom.getter()
{
  v2 = OUTLINED_FUNCTION_10_46();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_50();
  static IntentContext.current.getter(v1);
  v4 = *(v1 + 16);
  sub_18F178EA4(v1);
  v5 = [v4 interfaceIdiom];

  if (v5)
  {
    sub_18F375830(v5, v0);
  }

  else
  {
    *v0 = 10;
  }
}

double IntentSystemContext.assistantContext.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_50();
  v6 = type metadata accessor for IntentContext();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_50();
  static IntentContext.current.getter(v1);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);
  sub_18F2DEA04(v1, v2);
  v8 = [*(v2 + 16) assistantContext];
  if (v8)
  {
    sub_18F375FCC(v8, *(v2 + 24), v12);
    sub_18F178EA4(v2);
    v9 = v12[1];
    v10 = v14;
    *a1 = v12[0];
    *(a1 + 8) = v9;
    *(a1 + 16) = v13;
    *(a1 + 32) = v10;
    result = v15[0];
    *(a1 + 40) = *v15;
  }

  else
  {
    sub_18F178EA4(v2);
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

void sub_18F375FCC(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 sessionIdentifier];
  v7 = sub_18F5218DC();
  v9 = v8;

  v10 = sub_18F376AD0(a1);
  v12 = v11;
  v13 = [a1 locale];
  if (v13)
  {
    v14 = v13;
    v15 = sub_18F5218DC();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  v18 = 0x203010004uLL >> (8 * a2);
  *a3 = v7;
  *(a3 + 8) = v9;
  if (a2 >= 5)
  {
    LOBYTE(v18) = 4;
  }

  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = v18;
  *(a3 + 40) = v15;
  *(a3 + 48) = v17;
}

uint64_t IntentSystemContext.AssistantContext.sessionIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntentSystemContext.AssistantContext.requestIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IntentSystemContext.AssistantContext.InteractionMode.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t IntentSystemContext.AssistantContext.locale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

unint64_t sub_18F376354()
{
  result = qword_1EACD78D0;
  if (!qword_1EACD78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD78D0);
  }

  return result;
}

unint64_t sub_18F3763AC()
{
  result = qword_1EACD78D8;
  if (!qword_1EACD78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD78D8);
  }

  return result;
}

unint64_t sub_18F376434()
{
  result = qword_1EACD78F0;
  if (!qword_1EACD78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD78F0);
  }

  return result;
}

unint64_t sub_18F37648C()
{
  result = qword_1EACD78F8;
  if (!qword_1EACD78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD78F8);
  }

  return result;
}

unint64_t sub_18F3764E4()
{
  result = qword_1EACD7900;
  if (!qword_1EACD7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7900);
  }

  return result;
}

unint64_t sub_18F37656C()
{
  result = qword_1EACD7918;
  if (!qword_1EACD7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7918);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentSystemContext(_BYTE *result, int a2, int a3)
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

_BYTE *sub_18F3766E0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_2(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentSystemContext.StaccatoInteractionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_18F37688C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          result = OUTLINED_FUNCTION_2(result, a2 + 9);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F376960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_18F3769A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for IntentSystemContext.AssistantContext.InteractionMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F376AD0(void *a1)
{
  v1 = [a1 requestIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

uint64_t AppIntent.continueInForeground(_:alwaysConfirm:)()
{
  OUTLINED_FUNCTION_69();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  *(v1 + 304) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  v6 = sub_18F520F1C();
  OUTLINED_FUNCTION_10(v6);
  *(v1 + 128) = OUTLINED_FUNCTION_34_0();
  v7 = sub_18F520ADC();
  *(v1 + 136) = v7;
  *(v1 + 144) = *(v7 - 8);
  *(v1 + 152) = OUTLINED_FUNCTION_34_0();
  v8 = sub_18F52189C();
  OUTLINED_FUNCTION_10(v8);
  *(v1 + 160) = OUTLINED_FUNCTION_34_0();
  v9 = sub_18F520B3C();
  OUTLINED_FUNCTION_10(v9);
  *(v1 + 168) = OUTLINED_FUNCTION_34_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v10);
  *(v1 + 176) = OUTLINED_FUNCTION_34_0();
  v11 = type metadata accessor for IntentDialog(0);
  *(v1 + 184) = v11;
  OUTLINED_FUNCTION_10(v11);
  *(v1 + 192) = OUTLINED_FUNCTION_34_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  OUTLINED_FUNCTION_10(v12);
  *(v1 + 200) = OUTLINED_FUNCTION_34_0();
  v13 = type metadata accessor for IntentContext();
  *(v1 + 208) = v13;
  OUTLINED_FUNCTION_10(v13);
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_18F376D3C()
{
  v17 = v0;
  v1 = v0[30];
  AppIntent.systemContext.getter(v0[13], v0[14]);
  static IntentContext.current.getter(v1);
  v2 = v0[30];
  sub_18F21964C(v16);
  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(v2, v3);
  static IntentContext.current.getter(v0[25]);
  v4 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
  sub_18F219AEC(v6, v4, type metadata accessor for IntentContext);
  v7 = *(v4 + *(v5 + 60));
  v8 = *(v4 + 24);
  sub_18F219A34(v4, type metadata accessor for IntentContext);
  if (v8 == 4)
  {
    goto LABEL_2;
  }

  if (v7 == 3)
  {
    if (v8 == 3)
    {
      goto LABEL_11;
    }

LABEL_2:
    if (qword_1EACCF548 != -1)
    {
      OUTLINED_FUNCTION_2_7();
    }

    v9 = type metadata accessor for AppIntentError(0);
    v10 = __swift_project_value_buffer(v9, qword_1EACD4AB8);
    sub_18F2199DC();
    swift_allocError();
    OUTLINED_FUNCTION_1_2();
    sub_18F219A8C(v10, v11, v12);
    swift_willThrow();
    OUTLINED_FUNCTION_7_52();

    OUTLINED_FUNCTION_71();

    return v13();
  }

  if ((v7 & 0xC) == 0)
  {
    goto LABEL_2;
  }

LABEL_11:
  static IntentContext.current.getter(v0[28]);
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v0[31] = *(off_1ED6FF6C8 + 10);

  v15 = swift_task_alloc();
  v0[32] = v15;
  *v15 = v0;
  v15[1] = sub_18F377078;

  return sub_18F2AF7E8();
}

uint64_t sub_18F377078()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_18F377188()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 96);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 264) = v5;
  *(v0 + 272) = v4;
  v6 = *(v0 + 32);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  *(v0 + 280) = v7;
  sub_18F15F1BC(v3, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v20 = v8;
    v9 = *(v0 + 152);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    sub_18F52181C();
    *v9 = type metadata accessor for IntentContext.__();
    (*(v10 + 104))(v9, *MEMORY[0x1E6968E00], v11);
    sub_18F520EDC();
    OUTLINED_FUNCTION_13_0();
    v8 = v20;
    sub_18F520B4C();
    IntentDialog.init(_:)();
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      sub_18F0EF1A8(*(v0 + 176), &qword_1EACCF7A0);
    }
  }

  else
  {
    sub_18F219AEC(*(v0 + 176), *(v0 + 192), type metadata accessor for IntentDialog);
  }

  v12 = *(*(v0 + 224) + *(*(v0 + 208) + 92));
  *(v0 + 56) = v5;
  *(v0 + 64) = v4;
  *(v0 + 72) = v6;
  *(v0 + 80) = v8;
  *(v0 + 88) = v7;
  v21 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 288) = v13;
  *v13 = v0;
  v13[1] = sub_18F377424;
  v14 = *(v0 + 304);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = *(v0 + 192);

  return (v21)(v16, 0, v14, 0, v0 + 56, 0, 0, v15);
}

uint64_t sub_18F377424()
{
  OUTLINED_FUNCTION_69();
  *(*v1 + 296) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F377530()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[24];
  sub_18F219A8C(v1, v2, type metadata accessor for IntentContext);
  v5 = *(v2 + *(v3 + 64));
  sub_18F2196F8(1);

  OUTLINED_FUNCTION_4_27();
  sub_18F219A34(v4, v6);
  OUTLINED_FUNCTION_3_65();
  sub_18F219A34(v2, v7);
  sub_18F219A34(v1, v5);

  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F3776A0()
{
  v1 = *(v0 + 224);
  OUTLINED_FUNCTION_4_27();
  sub_18F219A34(v2, v3);

  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(v1, v4);
  OUTLINED_FUNCTION_7_52();

  OUTLINED_FUNCTION_71();

  return v5();
}

uint64_t AppIntent.needsToContinueInForegroundError(_:alwaysConfirm:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36[-v12];
  v14 = type metadata accessor for IntentContext();
  OUTLINED_FUNCTION_10_0();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36[-v19];
  AppIntent.systemContext.getter(a3, a4);
  static IntentContext.current.getter(v20);
  v21 = *&v20[*(v14 + 64)];
  sub_18F21964C(v37);
  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(v20, v22);
  static IntentContext.current.getter(v13);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  OUTLINED_FUNCTION_3_65();
  sub_18F219AEC(v13, v18, v23);
  v24 = *&v18[*(v14 + 60)];
  v25 = *(v18 + 3);
  sub_18F219A34(v18, v21);
  if (v25 != 4)
  {
    if (v24 == 3)
    {
      if (v25 != 3)
      {
        goto LABEL_2;
      }
    }

    else if ((v24 & 0xC) == 0)
    {
      goto LABEL_2;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1FF8);
    v31 = v30[12];
    v32 = v30[16];
    v33 = (a5 + v30[20]);
    v34 = v30[24];
    v35 = (a5 + v30[28]);
    sub_18F15F1BC(a1, a5);
    *(a5 + v31) = a2 & 1;
    *(a5 + v32) = 0;
    *v33 = 0;
    v33[1] = 0;
    *(a5 + v34) = MEMORY[0x1E69E7CC0];
    *v35 = &unk_18F55C550;
    v35[1] = 0;
    type metadata accessor for AppIntentError.Context(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_2:
  if (qword_1EACCF548 != -1)
  {
    OUTLINED_FUNCTION_2_7();
  }

  v26 = type metadata accessor for AppIntentError(0);
  __swift_project_value_buffer(v26, qword_1EACD4AB8);
  OUTLINED_FUNCTION_1_2();
  return sub_18F219A8C(v27, a5, v28);
}

uint64_t sub_18F377A70()
{
  sub_18F521EBC();
  *(v0 + 16) = sub_18F521EAC();
  v2 = sub_18F521E1C();

  return MEMORY[0x1EEE6DFA0](sub_18F377B04, v2, v1);
}

uint64_t sub_18F377B04()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F377B80()
{
  if (*(v0 + 136))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v1 = swift_task_alloc();
      *(v0 + 144) = v1;
      *v1 = v0;
      v1[1] = sub_18F377D64;

      return sub_18F114AB0();
    }

    swift_unknownObjectRelease();
  }

  if (qword_1ED6FEF38 != -1)
  {
    swift_once();
  }

  v3 = sub_18F52165C();
  __swift_project_value_buffer(v3, qword_1ED707778);
  v4 = sub_18F52163C();
  v5 = sub_18F52221C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_18F0E9000, v4, v5, "Unable to perform malformed or null intent", v6, 2u);
    MEMORY[0x193ADD350](v6, -1, -1);
  }

  sub_18F378464();
  swift_allocError();
  *v7 = 0;
  swift_willThrow();
  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F377D64()
{
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 152) = v0;

  if (v0)
  {
    v5 = sub_18F377FE4;
  }

  else
  {
    v5 = sub_18F377E70;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F377E70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FB0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v1);
    v3 = sub_18F3CB89C(v1, v2);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_18F3784B8(v0 + 96);
    sub_18F378464();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_71();

    return v7();
  }
}

uint64_t sub_18F377FE4()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F3780D0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_18F378190;

  return AppContext.fetchActionAppContext(for:)(a1);
}

uint64_t sub_18F378190(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_39();
  *v8 = v7;

  swift_unknownObjectRelease();

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_18F520A7C();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    v9[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t FetchIntentAppContextError.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F3783DC(uint64_t a1)
{
  v2 = sub_18F37870C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F378418(uint64_t a1)
{
  v2 = sub_18F37870C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18F378464()
{
  result = qword_1EACD7940;
  if (!qword_1EACD7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7940);
  }

  return result;
}

uint64_t sub_18F3784B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18F378524()
{
  result = qword_1EACD7948;
  if (!qword_1EACD7948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7948);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchIntentAppContextError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F378658()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18F1ADF4C;

  return sub_18F3780D0(v2, v3, v4);
}

unint64_t sub_18F37870C()
{
  result = qword_1EACD7950;
  if (!qword_1EACD7950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7950);
  }

  return result;
}

id static Calendar.RecurrenceRule.valueType.getter()
{
  v0 = [objc_opt_self() recurrenceRuleType];

  return v0;
}

uint64_t Calendar.RecurrenceRule.projectedAsValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_18F520F2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18F5223AC();
  (*(v4 + 16))(v6, v1, v3);
  result = sub_18F52239C();
  a1[3] = v7;
  *a1 = result;
  return result;
}

unint64_t sub_18F3788A8()
{
  result = qword_1EACCDDC0;
  if (!qword_1EACCDDC0)
  {
    sub_18F520F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCDDC0);
  }

  return result;
}

unint64_t sub_18F378908()
{
  result = qword_1EACD7958;
  if (!qword_1EACD7958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD7960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7958);
  }

  return result;
}

uint64_t sub_18F378970@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6FEF38 != -1)
  {
    swift_once();
  }

  v2 = sub_18F52165C();
  v3 = __swift_project_value_buffer(v2, qword_1ED707778);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_OWORD *static AppContext.currentAuditToken()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for IntentContext();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_50();
  static IntentContext.current.getter(v3);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_18F2DEA04(v3, v0);
  v5 = swift_slowAlloc();
  v6 = *(v0 + 48);
  *v5 = *(v0 + 32);
  v5[1] = v6;
  sub_18F178EA4(v0);
  return v5;
}

void static AppContext.cancelTimeout()()
{

  sub_18F378C3C(&selRef_requestCancelTimeoutAndReturnError_);
}

void static AppContext.extendTimeout()()
{

  sub_18F378C3C(&selRef_requestExtendTimeoutAndReturnError_);
}

void sub_18F378C3C(SEL *a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for IntentContext();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_4_50();
  static IntentContext.current.getter(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_18F178EA4(v1);
  if (Strong)
  {
    v10[0] = 0;
    v5 = [Strong *a1];
    swift_unknownObjectRelease();
    v6 = v10[0];
    if (v5)
    {

      v7 = v6;
    }

    else
    {
      v8 = v10[0];
      v9 = sub_18F520A8C();

      swift_willThrow();
    }
  }
}

id AppContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18F379454()
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

void sub_18F379598()
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

void sub_18F379640()
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

void sub_18F379880()
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

void sub_18F379A74()
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

void sub_18F379B80()
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

uint64_t sub_18F379F04()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v0, qword_1EACD7968);
  v1 = __swift_project_value_buffer(v0, qword_1EACD7968);
  return TypeDisplayRepresentation.init(stringLiteral:)(v1);
}

uint64_t static Duration.typeDisplayRepresentation.getter()
{
  if (qword_1EACCF590 != -1)
  {
    OUTLINED_FUNCTION_0_102();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, qword_1EACD7968);
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_22();
  return sub_18F19083C(v1, v2);
}

uint64_t static Duration.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_1EACCF590 != -1)
  {
    OUTLINED_FUNCTION_0_102();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, qword_1EACD7968);
  swift_beginAccess();
  sub_18F19092C(a1, v3);
  swift_endAccess();
  return sub_18F189F60(a1);
}

uint64_t (*static Duration.typeDisplayRepresentation.modify())()
{
  if (qword_1EACCF590 != -1)
  {
    OUTLINED_FUNCTION_0_102();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, qword_1EACD7968);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t Duration.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_18F52187C();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_18F52186C();
  sub_18F52185C();
  v35 = sub_18F52300C();
  OUTLINED_FUNCTION_4_66();
  sub_18F52185C();
  sub_18F52300C();
  v35 = v12;
  OUTLINED_FUNCTION_4_66();
  sub_18F52185C();
  sub_18F520AEC();
  v13 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  v21 = type metadata accessor for DisplayRepresentation();
  v22 = v21[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v13);
  v26 = v21[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v17);
  *(a1 + v21[7]) = xmmword_18F540410;
  *(a1 + v21[8]) = 0;
  *(a1 + v21[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v13);
  sub_18F0FF628(v9, a1 + v22, &qword_1EACCF7A8);
  return sub_18F0FF628(v5, a1 + v26, &qword_1EACD0270);
}

uint64_t sub_18F37A36C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD79D0);
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23[-v2];
  v4 = sub_18F520F1C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_22();
  sub_18F5224EC();
  v9 = v8;
  sub_18F0EF148(v3, &qword_1EACD79D0);
  if ((v9 & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
    v13 = sub_18F5224EC();
    v15 = v14;
    v17 = v16;
    sub_18F0EF148(v3, &qword_1EACD79D0);
    if ((v17 & 0x100000000) == 0)
    {
      *&v23[28] = v13;
      v24 = v15;
      v25 = v17;
      sub_18F5224BC();
      v18 = OUTLINED_FUNCTION_5_62(objc_allocWithZone(MEMORY[0x1E696AB90]));
      v19 = [v18 longLongValue];

      MEMORY[0x193ADBAF0](v19);
      v20 = OUTLINED_FUNCTION_1_84();
      MEMORY[0x193ADBAB0](v20);
      MEMORY[0x193ADBA70](1000000000);
      OUTLINED_FUNCTION_1_84();
      sub_18F5224BC();
      MEMORY[0x193ADBA70](1000000000);
      OUTLINED_FUNCTION_1_84();
      sub_18F5224BC();
      v21 = OUTLINED_FUNCTION_5_62(objc_allocWithZone(MEMORY[0x1E696AB90]));
      [v21 longLongValue];
    }
  }

  return sub_18F52301C();
}

uint64_t sub_18F37A58C(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = *a3;
  *(v4 + 41) = *a4;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F37A5B0()
{
  v1 = *(v0 + 40);
  if (v1 == 7 && (v1 = *(v0 + 41), v1 == 7))
  {
LABEL_5:
    v2 = 1;
LABEL_7:
    *(v0 + 16) = v2;
    sub_18F522C9C();
    sub_18F37A36C();
  }

  else
  {
    switch(v1)
    {
      case 1:
      case 2:
      case 4:
      case 5:
        sub_18F37A36C();
        break;
      case 3:
        v2 = 60;
        goto LABEL_7;
      case 6:
        goto LABEL_5;
      default:
        v2 = 3600;
        goto LABEL_7;
    }
  }

  v3 = OUTLINED_FUNCTION_22();

  return v4(v3);
}

uint64_t Duration.DurationFromStringResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F37A740()
{
  v1 = **(v0 + 224);
  sub_18F19E300(v1, (v0 + 48));
  if (*(v0 + 72))
  {
    sub_18F118710((v0 + 48), (v0 + 16));
    sub_18F118710((v0 + 16), (v0 + 176));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7990);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 248);
      goto LABEL_6;
    }
  }

  else
  {
    sub_18F0EF148(v0 + 48, &qword_1EACD0430);
  }

  v2 = 7;
  *(v0 + 248) = 7;
LABEL_6:
  *(v0 + 249) = v2;
  sub_18F19E300(v1, (v0 + 112));
  if (*(v0 + 136))
  {
    sub_18F118710((v0 + 112), (v0 + 80));
    sub_18F118710((v0 + 80), (v0 + 144));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7990);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 250);
      goto LABEL_11;
    }
  }

  else
  {
    sub_18F0EF148(v0 + 112, &qword_1EACD0430);
  }

  v3 = 7;
  *(v0 + 250) = 7;
LABEL_11:
  *(v0 + 251) = v3;
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_18F37A938;
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);

  return sub_18F37A58C(v6, v5, (v0 + 249), (v0 + 251));
}

uint64_t sub_18F37A938(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_8_0();
  *v9 = v8;
  v10 = *v4;
  OUTLINED_FUNCTION_8_0();
  *v11 = v10;
  *(v12 + 240) = v3;

  if (v3)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F37AA88, 0, 0);
  }

  else
  {
    v13 = *(v10 + 8);

    return v13(a1, a2, a3 & 1);
  }
}

uint64_t sub_18F37AAE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_18F37AB90;

  return Duration.DurationFromStringResolver.resolve(from:context:)(v5, v6, a3);
}

uint64_t sub_18F37AB90(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  OUTLINED_FUNCTION_8_0();
  *v9 = v8;
  v10 = *v4;
  OUTLINED_FUNCTION_8_0();
  *v11 = v10;

  if (!v3)
  {
    v12 = *(v8 + 16);
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = a3 & 1;
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t static Duration.persistentIdentifier.getter()
{
  swift_beginAccess();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return OUTLINED_FUNCTION_22();
}

uint64_t static Duration.persistentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aSwiftDuration = a1;
  *&aSwiftDuration[8] = a2;
}

uint64_t (*static Duration.persistentIdentifier.modify())()
{
  OUTLINED_FUNCTION_22();
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_18F37ADDC()
{
  result = qword_1EACD7998;
  if (!qword_1EACD7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7998);
  }

  return result;
}

unint64_t sub_18F37AE30(uint64_t a1)
{
  result = sub_18F37AE58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F37AE58()
{
  result = qword_1EACD79A0;
  if (!qword_1EACD79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD79A0);
  }

  return result;
}

unint64_t sub_18F37AEB0()
{
  result = qword_1EACD79A8;
  if (!qword_1EACD79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD79A8);
  }

  return result;
}

unint64_t sub_18F37AF20(uint64_t a1)
{
  result = sub_18F37AF48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F37AF48()
{
  result = qword_1EACD79B0;
  if (!qword_1EACD79B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD79B0);
  }

  return result;
}

unint64_t sub_18F37AF9C(uint64_t a1)
{
  result = sub_18F37AFC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F37AFC4()
{
  result = qword_1EACD79B8;
  if (!qword_1EACD79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD79B8);
  }

  return result;
}

unint64_t sub_18F37B01C(uint64_t a1)
{
  result = sub_18F37ADDC();
  *(a1 + 8) = result;
  return result;
}

_BYTE *_s26DurationFromStringResolverVwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F37B0F0()
{
  result = qword_1EACD79C0;
  if (!qword_1EACD79C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD79C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD79C0);
  }

  return result;
}

uint64_t *sub_18F37B158()
{
  if (qword_1EACCF598 != -1)
  {
    OUTLINED_FUNCTION_1_85();
  }

  return &qword_1EACD79D8;
}

uint64_t sub_18F37B198()
{
  type metadata accessor for SuggestionIntentDonationManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for IntentDonationIdentifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  sub_18F37BA78();
  result = sub_18F5216CC();
  *(v0 + 112) = result;
  qword_1EACD79D8 = v0;
  return result;
}

uint64_t static SuggestionIntentDonationManager.shared.getter()
{
  if (qword_1EACCF598 != -1)
  {
    OUTLINED_FUNCTION_1_85();
  }
}

uint64_t sub_18F37B26C@<X0>(void *a1@<X8>)
{
  sub_18F37B158();
  *a1 = qword_1EACD79D8;
}

uint64_t sub_18F37B2AC(uint64_t *a1)
{
  v1 = *a1;

  sub_18F37B158();
  qword_1EACD79D8 = v1;
}

uint64_t sub_18F37B2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  type metadata accessor for IntentDonationIdentifier();
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F37B38C, v4, 0);
}

uint64_t sub_18F37B38C()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v7 = *(v0 + 96);
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  sub_18F2C16C8(v3, v1);
  *(v0 + 40) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v2);
  swift_beginAccess();
  sub_18F421658(v0 + 16);
  swift_endAccess();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_18F37B494(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return OUTLINED_FUNCTION_0_103(a1, v1);
}

uint64_t sub_18F37B4AC()
{
  swift_beginAccess();
  sub_18F2BF65C();
  sub_18F37B74C(v0 + 16);
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F37B558()
{
  v9 = v0;
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_18F169E14(*(v2 + 16), 0);
    v5 = sub_18F468520(&v8, (v4 + 4), v3, v2);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F125D0C();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_18F37B660()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD79E0);
  sub_18F52171C();
  return swift_endAccess();
}

uint64_t SuggestionIntentDonationManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SuggestionIntentDonationManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_18F37B74C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SuggestionIntentDonationManager.donateSuggestionFromView<A>(suggestedIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 120) + **(*v4 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_18F10DF80;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SuggestionIntentDonationManager.removeSuggestionFromView(identifier:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18F13B9C4;

  return v6(a1);
}

unint64_t sub_18F37BA78()
{
  result = qword_1EACD4848;
  if (!qword_1EACD4848)
  {
    type metadata accessor for IntentDonationIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4848);
  }

  return result;
}

uint64_t StartWorkoutIntent.init(style:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(*(*(a3 + 16) + 8) + 120))(a2);
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
  (*(a3 + 48))(v9, a2, a3);
  return (*(v7 + 8))(a1, AssociatedTypeWitness);
}

uint64_t sub_18F37BCB0()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

id sub_18F37BD64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0320);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_66();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0268);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for IntentDateComponentsRange();
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F37D464(a1, v12, &qword_1EACD0268);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_18F0FA038(a1, &qword_1EACD0268);
    sub_18F0FA038(v12, &qword_1EACD0268);
    return 0;
  }

  else
  {
    sub_18F37D4B8(v12, v16);
    sub_18F37D464(v16, v1, &qword_1EACD0320);
    v18 = sub_18F52085C();
    v19 = 0;
    if (OUTLINED_FUNCTION_7_53(v18) != 1)
    {
      v19 = sub_18F52082C();
      OUTLINED_FUNCTION_31_0();
      (*(v20 + 8))(v1, &qword_1EACD0268);
    }

    sub_18F37D464(&v16[*(v13 + 20)], v7, &qword_1EACD0320);
    if (__swift_getEnumTagSinglePayload(v7, 1, &qword_1EACD0268) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_18F52082C();
      OUTLINED_FUNCTION_31_0();
      (*(v22 + 8))(v7, &qword_1EACD0268);
    }

    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_18F37D51C();
    v24 = &v16[*(v13 + 24)];
    v25 = *(v24 + 2);
    v28 = *v24;
    v29 = v25;
    v26 = sub_18F37CCA0(&v28);
    v17 = [v23 initWithStartDateComponents:v19 endDateComponents:v21 recurrenceRule:v26];

    sub_18F0FA038(a1, &qword_1EACD0268);
    sub_18F37D560(v16);
  }

  return v17;
}

uint64_t sub_18F37C080@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0320);
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_66();
  sub_18F37D464(v1, v1, &qword_1EACD0320);
  v10 = sub_18F52085C();
  if (OUTLINED_FUNCTION_7_53(v10) == 1)
  {
    sub_18F0FA038(v1, &qword_1EACD0320);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v11 = sub_18F4506B8();
    v16 = v15;
    v13 = v17;
    v14 = v18;
    OUTLINED_FUNCTION_31_0();
    (*(v19 + 8))(v1, v2);
    v12 = v16 & 1;
  }

  v20 = type metadata accessor for IntentDateComponentsRange();
  sub_18F37D464(v1 + *(v20 + 20), v8, &qword_1EACD0320);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    result = sub_18F0FA038(v8, &qword_1EACD0320);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  else
  {
    v22 = sub_18F4506B8();
    v34 = v12;
    v26 = v14;
    v27 = v13;
    v28 = v11;
    v30 = v29;
    v24 = v31;
    v25 = v32;
    OUTLINED_FUNCTION_31_0();
    result = (*(v33 + 8))(v8, v2);
    v23 = v30 & 1;
    v11 = v28;
    v13 = v27;
    v14 = v26;
    v12 = v34;
  }

  *a1 = v11;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v22;
  a1[5] = v23;
  a1[6] = v24;
  a1[7] = v25;
  return result;
}

AppIntents::IntentDateComponentsRange::DayOfWeekOptions sub_18F37C2C4@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = IntentDateComponentsRange.DayOfWeekOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18F37C304@<X0>(uint64_t *a1@<X8>)
{
  result = IntentDateComponentsRange.DayOfWeekOptions.rawValue.getter();
  *a1 = result;
  return result;
}

AppIntents::IntentDateComponentsRange::RecurrenceFrequency_optional __swiftcall IntentDateComponentsRange.RecurrenceFrequency.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_18F37C350@<X0>(uint64_t *a1@<X8>)
{
  result = IntentDateComponentsRange.RecurrenceFrequency.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for IntentDateComponentsRange()
{
  result = qword_1EACCDEC0;
  if (!qword_1EACCDEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 IntentDateComponentsRange.recurrenceRule.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IntentDateComponentsRange() + 24));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

__n128 IntentDateComponentsRange.init(startDateComponents:endDateComponents:recurrenceRule:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *a3;
  v6 = a3[1].n128_u64[0];
  sub_18F37C4F4(a1, a4);
  v7 = type metadata accessor for IntentDateComponentsRange();
  sub_18F37C4F4(a2, a4 + *(v7 + 20));
  v8 = (a4 + *(v7 + 24));
  result = v10;
  *v8 = v10;
  v8[1].n128_u64[0] = v6;
  return result;
}

uint64_t sub_18F37C4F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntentDateComponentsRange.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = sub_18F52187C();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0320);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_66();
  sub_18F37D464(v1, v1, &qword_1EACD0320);
  v18 = sub_18F52085C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v18) == 1)
  {
    sub_18F0FA038(v1, &qword_1EACD0320);
  }

  else
  {
    MEMORY[0x193AD9E00]();
    OUTLINED_FUNCTION_31_0();
    (*(v19 + 8))(v1, v18);
  }

  v20 = type metadata accessor for IntentDateComponentsRange();
  sub_18F37D464(v1 + *(v20 + 20), v16, &qword_1EACD0320);
  if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
  {
    sub_18F0FA038(v16, &qword_1EACD0320);
  }

  else
  {
    MEMORY[0x193AD9E00]();
    OUTLINED_FUNCTION_31_0();
    (*(v21 + 8))(v16, v18);
  }

  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v22 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = type metadata accessor for DisplayRepresentation.Image(0);
  v27 = v45;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v26);
  v31 = type metadata accessor for DisplayRepresentation();
  v32 = v31[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v22);
  v36 = v31[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v26);
  *(a1 + v31[7]) = xmmword_18F540410;
  *(a1 + v31[8]) = 0;
  *(a1 + v31[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v22);
  sub_18F0FF85C(v9, a1 + v32, &qword_1EACCF7A8);
  return sub_18F0FF85C(v27, a1 + v36, &qword_1EACD0270);
}

unint64_t sub_18F37C9B4()
{
  result = qword_1EACD79E8;
  if (!qword_1EACD79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD79E8);
  }

  return result;
}

unint64_t sub_18F37CA0C()
{
  result = qword_1EACD79F0;
  if (!qword_1EACD79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD79F0);
  }

  return result;
}

unint64_t sub_18F37CA64()
{
  result = qword_1EACD79F8;
  if (!qword_1EACD79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD79F8);
  }

  return result;
}

unint64_t sub_18F37CABC()
{
  result = qword_1EACD7A00;
  if (!qword_1EACD7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A00);
  }

  return result;
}

unint64_t sub_18F37CB14()
{
  result = qword_1EACD7A08;
  if (!qword_1EACD7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A08);
  }

  return result;
}

uint64_t sub_18F37CB68(uint64_t a1)
{
  result = sub_18F37CC58(&qword_1EACD7A10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F37CBAC(uint64_t a1)
{
  result = sub_18F37CC58(&qword_1EACD7A18);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F37CBF4()
{
  result = qword_1EACD7A20;
  if (!qword_1EACD7A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD7A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A20);
  }

  return result;
}

uint64_t sub_18F37CC58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentDateComponentsRange();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_18F37CCA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInterval:*a1 frequency:v1 weeklyRecurrenceDays:*(a1 + 16)];
  }
}

uint64_t sub_18F37CD04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6365537472617473 && a2 == 0xE900000000000073;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73636553646E65 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F522D5C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18F37CDD4(char a1)
{
  if (a1)
  {
    return 0x73636553646E65;
  }

  else
  {
    return 0x6365537472617473;
  }
}

uint64_t sub_18F37CE10(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7A38);
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F37D410();
  sub_18F522FEC();
  v10 = v3[1];
  v15 = *v3;
  v16 = v10;
  v14 = 0;
  sub_18F1728C8();
  OUTLINED_FUNCTION_4_67();
  if (!v2)
  {
    v11 = v3[3];
    v15 = v3[2];
    v16 = v11;
    v14 = 1;
    OUTLINED_FUNCTION_4_67();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18F37CF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F37CD04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F37CFA0(uint64_t a1)
{
  v2 = sub_18F37D410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F37CFDC(uint64_t a1)
{
  v2 = sub_18F37D410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18F37D030@<D0>(_OWORD *a1@<X8>)
{
  sub_18F37C080(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

void sub_18F37D098()
{
  sub_18F37D11C();
  if (v0 <= 0x3F)
  {
    sub_18F37D174();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18F37D11C()
{
  if (!qword_1EACCDDC8)
  {
    sub_18F52085C();
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACCDDC8);
    }
  }
}

void sub_18F37D174()
{
  if (!qword_1EACCDED0)
  {
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACCDED0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for IntentDateComponentsRange.RecurrenceFrequency(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentDateComponentsRange.RecurrenceRule(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 24))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 7;
      v2 = v3 - 7;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for IntentDateComponentsRange.RecurrenceRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_18F37D340(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 64))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F37D3A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_18F37D410()
{
  result = qword_1EACD7A40;
  if (!qword_1EACD7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A40);
  }

  return result;
}

uint64_t sub_18F37D464(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3);
  OUTLINED_FUNCTION_31_0();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_18F37D4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDateComponentsRange();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18F37D51C()
{
  result = qword_1EACD7A48;
  if (!qword_1EACD7A48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACD7A48);
  }

  return result;
}

uint64_t sub_18F37D560(uint64_t a1)
{
  v2 = type metadata accessor for IntentDateComponentsRange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for IntentDateComponentsRange.DateComponentsRangeNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F37D69C()
{
  result = qword_1EACD7A50;
  if (!qword_1EACD7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A50);
  }

  return result;
}

unint64_t sub_18F37D6F4()
{
  result = qword_1EACD7A58;
  if (!qword_1EACD7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A58);
  }

  return result;
}

unint64_t sub_18F37D74C()
{
  result = qword_1EACD7A60;
  if (!qword_1EACD7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A60);
  }

  return result;
}

void *sub_18F37D7D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v80 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v80 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7A70);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7A78) - 8);
  v7 = *v6;
  v82 = *(*v6 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v83 = v9;
  *(v9 + 16) = xmmword_18F549D20;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_18F520ACC();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = type metadata accessor for DisplayRepresentation();
  v21 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  v25 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
  v29 = v20[7];
  v84 = xmmword_18F540410;
  OUTLINED_FUNCTION_6_5(v29, xmmword_18F540410);
  *(v11 + v30) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v12);
  v81 = v5;
  sub_18F0FF628(v5, v11 + v21, &qword_1EACCF7A8);
  v34 = v2;
  sub_18F0FF628(v2, v11 + v25, &qword_1EACD0270);
  v35 = v82;
  v36 = v10 + v82;
  v37 = v10 + v82 + v6[14];
  *v36 = 0;
  *(v36 + 8) = 65;
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v12);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v16);
  v44 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v12);
  v48 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v16);
  OUTLINED_FUNCTION_6_5(v20[7], v84);
  *(v37 + v52) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v12);
  v56 = v37 + v44;
  v57 = v81;
  sub_18F0FF628(v81, v56, &qword_1EACCF7A8);
  sub_18F0FF628(v34, v37 + v48, &qword_1EACD0270);
  v58 = v10 + 2 * v35;
  v59 = v58 + v6[14];
  *v58 = 0x3FF0000000000000;
  *(v58 + 8) = 0x80;
  sub_18F520ACC();
  v60 = v57;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v12);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v16);
  v67 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v12);
  v71 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v16);
  OUTLINED_FUNCTION_6_5(v20[7], v84);
  *(v59 + v75) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v12);
  sub_18F0FF628(v60, v59 + v67, &qword_1EACCF7A8);
  sub_18F0FF628(v34, v59 + v71, &qword_1EACD0270);
  sub_18F37E670();
  result = sub_18F5216CC();
  off_1ED6FE158 = result;
  return result;
}

_UNKNOWN **sub_18F37DC3C()
{
  if (qword_1ED6FE150 != -1)
  {
    OUTLINED_FUNCTION_0_104();
  }

  return &off_1ED6FE158;
}

uint64_t static ZoomBehavior.caseDisplayRepresentations.getter()
{
  if (qword_1ED6FE150 != -1)
  {
    OUTLINED_FUNCTION_0_104();
  }

  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t static ZoomBehavior.caseDisplayRepresentations.setter(void *a1)
{
  if (qword_1ED6FE150 != -1)
  {
    OUTLINED_FUNCTION_0_104();
  }

  swift_beginAccess();
  off_1ED6FE158 = a1;
}

uint64_t (*static ZoomBehavior.caseDisplayRepresentations.modify())()
{
  if (qword_1ED6FE150 != -1)
  {
    OUTLINED_FUNCTION_0_104();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F37DDCC@<X0>(void *a1@<X8>)
{
  sub_18F37DC3C();
  swift_beginAccess();
  *a1 = off_1ED6FE158;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F37DE20(void **a1)
{
  v1 = *a1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F37DC3C();
  swift_beginAccess();
  off_1ED6FE158 = v1;
}

uint64_t ZoomBehavior.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35[0] = 45;
  v35[1] = 0xE100000000000000;
  v34[2] = v35;
  v4 = sub_18F341E48(0x7FFFFFFFFFFFFFFFLL, 1, sub_18F16C86C, v34, a1, a2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v35[0] = MEMORY[0x1E69E7CC0];
    sub_18F3AA158();
    v6 = v35[0];
    v7 = (v4 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v12 = MEMORY[0x193ADAF70](v8, v9, v10, v11);
      v14 = v13;

      v35[0] = v6;
      v15 = v6[2];
      if (v15 >= v6[3] >> 1)
      {
        sub_18F3AA158();
        v6 = v35[0];
      }

      v6[2] = v15 + 1;
      v16 = &v6[2 * v15];
      v16[4] = v12;
      v16[5] = v14;
      v7 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v17 = v6[2];
  if (!v17)
  {
    goto LABEL_36;
  }

  v18 = v6[4];
  v19 = v6[5];
  v20 = v18 == 28265 && v19 == 0xE200000000000000;
  if (v20 || (OUTLINED_FUNCTION_12_6() & 1) != 0)
  {
    if (v17 == 2)
    {
      v21 = v6[6];
      v22 = v6[7];
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

      result = sub_18F27C7E8(v21, v22);
    }

    else
    {

      result = 0;
      v24 = 1;
    }

    v25 = v24 & 1;
    goto LABEL_37;
  }

  v26 = v18 == 7632239 && v19 == 0xE300000000000000;
  if (v26 || (OUTLINED_FUNCTION_12_6() & 1) != 0)
  {
    if (v17 == 2)
    {
      v27 = v6[6];
      v28 = v6[7];
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

      result = sub_18F27C7E8(v27, v28);
    }

    else
    {

      result = 0;
      v29 = 1;
    }

    v25 = v29 & 1 | 0x40;
    goto LABEL_37;
  }

  v30 = v18 == 28532 && v19 == 0xE200000000000000;
  if (!v30 && (OUTLINED_FUNCTION_12_6() & 1) == 0)
  {
LABEL_36:

    result = 0;
    v25 = -2;
    goto LABEL_37;
  }

  if (v17 == 2)
  {
    v31 = v6[6];
    v32 = v6[7];
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    result = sub_18F27C7E8(v31, v32);
    if (v33)
    {
      result = 0;
    }
  }

  else
  {

    result = 0;
  }

  v25 = 0x80;
LABEL_37:
  *a3 = result;
  *(a3 + 8) = v25;
  return result;
}

uint64_t ZoomBehavior.rawValue.getter()
{
  v1 = *(v0 + 8);
  if (!(v1 >> 6))
  {
    if (v1)
    {
      return 28265;
    }

    OUTLINED_FUNCTION_5_9();
    v3 = 28265;
    goto LABEL_10;
  }

  if (v1 >> 6 != 1)
  {
    OUTLINED_FUNCTION_5_9();
    v3 = 28532;
LABEL_10:
    v4 = 0xE200000000000000;
    goto LABEL_11;
  }

  result = 7632239;
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_5_9();
    v3 = 7632239;
    v4 = 0xE300000000000000;
LABEL_11:
    MEMORY[0x193ADB000](v3, v4);
    MEMORY[0x193ADB000](45, 0xE100000000000000);
    sub_18F52201C();
    return v5;
  }

  return result;
}

uint64_t sub_18F37E278@<X0>(uint64_t *a1@<X8>)
{
  result = ZoomBehavior.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18F37E2F0()
{
  result = qword_1ED6FECA8;
  if (!qword_1ED6FECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FECA8);
  }

  return result;
}

unint64_t sub_18F37E344()
{
  result = qword_1ED6FEC90;
  if (!qword_1ED6FEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC90);
  }

  return result;
}

unint64_t sub_18F37E398()
{
  result = qword_1ED6FECC0;
  if (!qword_1ED6FECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FECC0);
  }

  return result;
}

unint64_t sub_18F37E3EC(uint64_t a1)
{
  result = sub_18F37E414();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_18F37E414()
{
  result = qword_1ED6FECA0;
  if (!qword_1ED6FECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FECA0);
  }

  return result;
}

unint64_t sub_18F37E468(uint64_t a1)
{
  result = sub_18F37E490();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F37E490()
{
  result = qword_1ED6FEC98;
  if (!qword_1ED6FEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC98);
  }

  return result;
}

uint64_t sub_18F37E574(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_18F37E5C8()
{
  result = qword_1ED6FECD8;
  if (!qword_1ED6FECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FECD8);
  }

  return result;
}

unint64_t sub_18F37E61C()
{
  result = qword_1ED6FECB8;
  if (!qword_1ED6FECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FECB8);
  }

  return result;
}

unint64_t sub_18F37E670()
{
  result = qword_1ED6FECD0;
  if (!qword_1ED6FECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FECD0);
  }

  return result;
}

unint64_t sub_18F37E6C8()
{
  result = qword_1ED6FECC8;
  if (!qword_1ED6FECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FECC8);
  }

  return result;
}

unint64_t sub_18F37E720()
{
  result = qword_1ED6FE080;
  if (!qword_1ED6FE080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD7A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZoomBehavior(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 9))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for ZoomBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

void sub_18F37EE24()
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

void sub_18F37EF68()
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

void sub_18F37F010()
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

void sub_18F37F250()
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

void sub_18F37F444()
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

void sub_18F37F550()
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

uint64_t sub_18F37F8D4()
{
  v0 = sub_18F5227FC();
  v2 = v1;
  v3 = v0 == 0x697463656E6E6F63 && v1 == 0xEA0000000000676ELL;
  if (v3 || (v4 = v0, (OUTLINED_FUNCTION_0_105() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 0x6E69766C6F736572 && v2 == 0xE900000000000067;
    if (v6 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v4 == 0x676E6974696177 && v2 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v4 == 0x696D726F66726570 && v2 == 0xEA0000000000676ELL;
        if (v8 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
        {

          return 3;
        }

        else if (v4 == 0x676E6974616E6F64 && v2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_0_105();
          OUTLINED_FUNCTION_4_68();
          if (v4)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_18F37FAC8()
{
  result = qword_1EACD7A80;
  if (!qword_1EACD7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A80);
  }

  return result;
}

unint64_t sub_18F37FB34(uint64_t a1)
{
  result = sub_18F37FB5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F37FB5C()
{
  result = qword_1EACD7A88;
  if (!qword_1EACD7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A88);
  }

  return result;
}

uint64_t sub_18F37FBB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F37F8D4();
  *a1 = result;
  return result;
}

void sub_18F37FBE4(uint64_t a1@<X8>)
{
  sub_18F37FA50();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
}

uint64_t sub_18F37FC18()
{
  v0 = sub_18F52165C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - v5;
  v7 = sub_18F5215DC();
  __swift_allocate_value_buffer(v7, qword_1EAD0AB70);
  __swift_project_value_buffer(v7, qword_1EAD0AB70);
  if (qword_1ED6FD658 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1ED707698);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  v9(v4, v6, v0);
  sub_18F5215AC();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_18F37FDB0()
{
  v0 = sub_18F5227FC();
  v2 = v1;
  v3 = v0 == 0x7365697469746E65 && v1 == 0xE800000000000000;
  if (v3 || (v4 = v0, (OUTLINED_FUNCTION_0_105() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 0x736E6F69746361 && v2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v4 == 0x72656469766F7270 && v2 == 0xE800000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v4 == 0xD000000000000013 && 0x800000018F52AD50 == v2;
        if (v8 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = v4 == 0x6E69726170657270 && v2 == 0xE900000000000067;
          if (v9 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = v4 == 0x6976656972746572 && v2 == 0xEA0000000000676ELL;
            if (v10 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = v4 == 0x676E696375646572 && v2 == 0xE800000000000000;
              if (v11 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
              {

                return 6;
              }

              else if (v4 == 0x676E69766F6D6572 && v2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                OUTLINED_FUNCTION_0_105();
                OUTLINED_FUNCTION_4_68();
                if (v4)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18F380088()
{
  result = qword_1EACD7A90;
  if (!qword_1EACD7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A90);
  }

  return result;
}

unint64_t sub_18F3800DC(uint64_t a1)
{
  result = sub_18F380104();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F380104()
{
  result = qword_1EACD7A98;
  if (!qword_1EACD7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7A98);
  }

  return result;
}

uint64_t sub_18F380158@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F37FDB0();
  *a1 = result;
  return result;
}

void sub_18F38018C(uint64_t a1@<X8>)
{
  sub_18F37FFE8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
}

uint64_t sub_18F3801C0()
{
  v0 = sub_18F5227FC();
  v2 = v1;
  v3 = v0 == 0x6C6174736E496E6FLL && v1 == 0xE90000000000006CLL;
  if (v3 || (v4 = v0, (OUTLINED_FUNCTION_0_105() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 0x74736E696E556E6FLL && v2 == 0xEB000000006C6C61;
    if (v6 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v4 == 1851876211 && v2 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v4 == 0x657461647075 && v2 == 0xE600000000000000;
        if (v8 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = v4 == 0xD000000000000010 && 0x800000018F52AE20 == v2;
          if (v9 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = v4 == 0x7265747369676572 && v2 == 0xEE00656C646E7542;
            if (v10 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
            {

              return 5;
            }

            else if (v4 == 0x6556657461647075 && v2 == 0xED00006E6F697372)
            {

              return 6;
            }

            else
            {
              OUTLINED_FUNCTION_0_105();
              OUTLINED_FUNCTION_4_68();
              if (v4)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18F38045C()
{
  result = qword_1EACD7AA0;
  if (!qword_1EACD7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7AA0);
  }

  return result;
}

unint64_t sub_18F3804C8(uint64_t a1)
{
  result = sub_18F3804F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F3804F0()
{
  result = qword_1EACD7AA8;
  if (!qword_1EACD7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7AA8);
  }

  return result;
}

uint64_t sub_18F380544@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F3801C0();
  *a1 = result;
  return result;
}

void sub_18F380578(uint64_t a1@<X8>)
{
  sub_18F3803C4();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
}

uint64_t sub_18F3805AC()
{
  v0 = sub_18F5227FC();
  v2 = v1;
  OUTLINED_FUNCTION_35_5();
  v4 = v0 == 0xD00000000000001ALL && v3 == v2;
  if (v4 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_35_5();
    v7 = v0 == 0xD00000000000001BLL && v6 == v2;
    if (v7 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_35_5();
      v9 = v0 == 0xD000000000000011 && v8 == v2;
      if (v9 || (OUTLINED_FUNCTION_0_105() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_35_5();
        if (v0 == 0xD000000000000011 && v10 == v2)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_0_105();
          OUTLINED_FUNCTION_4_68();
          if (v0)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

unint64_t sub_18F38072C()
{
  result = qword_1EACD7AB0;
  if (!qword_1EACD7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7AB0);
  }

  return result;
}

uint64_t sub_18F380780(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_18F522EFC();
  a4(v8, v6);
  return sub_18F522F4C();
}

unint64_t sub_18F3807CC(uint64_t a1)
{
  result = sub_18F3807F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F3807F4()
{
  result = qword_1EACD7AB8;
  if (!qword_1EACD7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD7AB8);
  }

  return result;
}

uint64_t sub_18F380848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F3805AC();
  *a1 = result;
  return result;
}

void sub_18F38087C(uint64_t a1@<X8>)
{
  sub_18F3806C8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
}

_BYTE *sub_18F3808B0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_18F380988(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18F380A60(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18F380B38(_BYTE *result, unsigned int a2, unsigned int a3)
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

AppIntents::HardwareCapability __swiftcall HardwareCapability.init(_:isAvailable:)(AppIntents::HardwareCapability _, Swift::Bool isAvailable)
{
  *v2 = _.mobileGestaltKey;
  *(v2 + 16) = isAvailable;
  _.isAvailable = isAvailable;
  return _;
}

void __swiftcall FeatureFlagCapability.init(domain:feature:isAvailable:)(AppIntents::FeatureFlagCapability *__return_ptr retstr, Swift::String domain, Swift::String feature, Swift::Bool isAvailable)
{
  retstr->domain = domain;
  retstr->feature = feature;
  retstr->isAvailable = isAvailable;
}

uint64_t sub_18F380C38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_18F380C78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F380CD8()
{
  v1[14] = v0;
  v2 = type metadata accessor for ViewEntityIdentifier();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F380D98, 0, 0);
}

uint64_t sub_18F380D98()
{
  v1 = v0[14];
  if (*(v1 + *(type metadata accessor for FetchViewEntitiesTask() + 24)))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v0[18] = *(off_1ED6FF6C8 + 10);

    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_18F380F20;

    return sub_18F2AEBCC();
  }

  else
  {
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v0[20] = *(off_1ED6FF6C8 + 10);

    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_18F38122C;

    return sub_18F2AD68C();
  }
}

uint64_t sub_18F380F20()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;

  if (v0)
  {

    v7 = v5[1];

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_18F381088, 0, 0);
  }
}

uint64_t sub_18F381088()
{
  v2 = v0[9];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[17];
    v21 = v0[15];
    sub_18F5228CC();
    OUTLINED_FUNCTION_3_67();
    do
    {
      v5 = v0[17];
      sub_18F381724(v2, v5);
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
      OUTLINED_FUNCTION_1_87();
      v7 = v6;
      v8 = objc_allocWithZone(MEMORY[0x1E69AD090]);
      OUTLINED_FUNCTION_2_83(v8, sel_initWithValue_interactionID_location_structuredDataRepresentations_displayRepresentation_state_, v9, v10, v11, v12, v13, v14, v18, v19, v20, v21, v22, v23);

      sub_18F381788(v5);
      sub_18F52289C();
      OUTLINED_FUNCTION_6_62();
      sub_18F5228DC();
      OUTLINED_FUNCTION_6_62();
      sub_18F5228EC();
      sub_18F5228AC();
      v2 += v20;
      --v3;
    }

    while (v3);
  }

  sub_18F3817E4();
  sub_18F521C8C();

  v15 = OUTLINED_FUNCTION_14_1();

  return v16(v15);
}

uint64_t sub_18F38122C()
{
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  *(v7 + 176) = v0;

  if (v0)
  {
    v8 = sub_18F3814EC;
  }

  else
  {
    v8 = sub_18F381340;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_18F381340()
{

  v2 = v0[12];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[17];
    v21 = v0[15];
    sub_18F5228CC();
    OUTLINED_FUNCTION_3_67();
    do
    {
      v5 = v0[17];
      sub_18F381724(v2, v5);
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
      OUTLINED_FUNCTION_1_87();
      v7 = v6;
      v8 = objc_allocWithZone(MEMORY[0x1E69AD090]);
      OUTLINED_FUNCTION_2_83(v8, sel_initWithValue_interactionID_location_structuredDataRepresentations_displayRepresentation_state_, v9, v10, v11, v12, v13, v14, v18, v19, v20, v21, v22, v23);

      sub_18F381788(v5);
      sub_18F52289C();
      OUTLINED_FUNCTION_6_62();
      sub_18F5228DC();
      OUTLINED_FUNCTION_6_62();
      sub_18F5228EC();
      sub_18F5228AC();
      v2 += v20;
      --v3;
    }

    while (v3);
  }

  sub_18F3817E4();
  sub_18F521C8C();

  v15 = OUTLINED_FUNCTION_14_1();

  return v16(v15);
}

uint64_t sub_18F3814EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F381558@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18F52165C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for FetchViewEntitiesTask()
{
  result = qword_1EACD7AC0;
  if (!qword_1EACD7AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18F381634()
{
  sub_18F52165C();
  if (v0 <= 0x3F)
  {
    sub_18F3816C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18F3816C0()
{
  if (!qword_1EACD7AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD7AD8);
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACD7AD0);
    }
  }
}

uint64_t sub_18F381724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewEntityIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F381788(uint64_t a1)
{
  v2 = type metadata accessor for ViewEntityIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18F3817E4()
{
  result = qword_1EACD7AE0;
  if (!qword_1EACD7AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACD7AE0);
  }

  return result;
}

void DisplayRepresentation.init(stringLiteral:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31_37();
  v9 = sub_18F520ADC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = sub_18F520F1C();
  v17 = OUTLINED_FUNCTION_10(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v18 = sub_18F52189C();
  v19 = OUTLINED_FUNCTION_10(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  sub_18F52181C();
  sub_18F520EDC();
  (*(v11 + 104))(v15, *MEMORY[0x1E6968DF0], v9);
  sub_18F520B4C();
  v20 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  v28 = type metadata accessor for DisplayRepresentation();
  v29 = v28[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v20);
  v33 = v28[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v24);
  *(v2 + v28[7]) = xmmword_18F540410;
  *(v2 + v28[8]) = 0;
  *(v2 + v28[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v20);
  sub_18F0FF5DC(v0, v2 + v29, &qword_1EACCF7A8);
  sub_18F0FF5DC(v6, v2 + v33, &qword_1EACD0270);
  OUTLINED_FUNCTION_16();
}

void static DisplayRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v100 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v97 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v89 - v10;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7AE8);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_37();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v96 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v89 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B60);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v89 - v32;
  if ((MEMORY[0x193ADA0E0](v4, v2) & 1) == 0)
  {
    goto LABEL_22;
  }

  v89 = v30;
  v91 = v18;
  v95 = v14;
  v94 = type metadata accessor for DisplayRepresentation();
  v34 = v94[5];
  v90 = v26;
  v35 = *(v26 + 48);
  v92 = v4;
  sub_18F0F9F88(v4 + v34, v33, &qword_1EACCF7A8);
  v93 = v2;
  sub_18F0F9F88(v2 + v34, &v33[v35], &qword_1EACCF7A8);
  OUTLINED_FUNCTION_106(v33, 1, v12);
  if (v39)
  {
    OUTLINED_FUNCTION_9_49(&v33[v35]);
    if (v39)
    {
      sub_18F0EF1A8(v33, &qword_1EACCF7A8);
      goto LABEL_12;
    }

LABEL_10:
    v40 = &qword_1EACD0B60;
    v41 = v33;
LABEL_21:
    sub_18F0EF1A8(v41, v40);
    goto LABEL_22;
  }

  v36 = OUTLINED_FUNCTION_82();
  sub_18F0F9F88(v36, v37, v38);
  OUTLINED_FUNCTION_9_49(&v33[v35]);
  if (v39)
  {
    (*(v95 + 8))(v25, v12);
    goto LABEL_10;
  }

  v42 = v95;
  v43 = v91;
  (*(v95 + 32))(v91, &v33[v35], v12);
  OUTLINED_FUNCTION_7_54();
  sub_18F383C1C(v44, v45);
  v46 = sub_18F52180C();
  v47 = *(v42 + 8);
  v47(v43, v12);
  v47(v25, v12);
  sub_18F0EF1A8(v33, &qword_1EACCF7A8);
  if ((v46 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v48 = v94;
  v49 = v94[6];
  v50 = *(v99 + 48);
  v51 = v92;
  OUTLINED_FUNCTION_34_26(v92 + v49, v0);
  v52 = v93;
  OUTLINED_FUNCTION_34_26(v93 + v49, v0 + v50);
  v53 = v100;
  OUTLINED_FUNCTION_106(v0, 1, v100);
  if (v39)
  {
    OUTLINED_FUNCTION_106(v0 + v50, 1, v53);
    if (v39)
    {
      sub_18F0EF1A8(v0, &qword_1EACD0270);
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v54 = v98;
  sub_18F0F9F88(v0, v98, &qword_1EACD0270);
  OUTLINED_FUNCTION_106(v0 + v50, 1, v53);
  if (v55)
  {
    sub_18F140304(v54);
LABEL_20:
    v40 = &qword_1EACD7AE8;
    v41 = v0;
    goto LABEL_21;
  }

  v56 = v97;
  sub_18F11CF40(v0 + v50, v97);
  v57 = _s10AppIntents21DisplayRepresentationV5ImageV2eeoiySbAE_AEtFZ_0(v54, v56);
  sub_18F140304(v56);
  sub_18F140304(v54);
  sub_18F0EF1A8(v0, &qword_1EACD0270);
  if ((v57 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  v58 = v48[7];
  v60 = *(v51 + v58);
  v59 = *(v51 + v58 + 8);
  v61 = (v52 + v58);
  v63 = *v61;
  v62 = v61[1];
  if (v59 >> 60 != 15)
  {
    if (v62 >> 60 != 15)
    {
      v68 = OUTLINED_FUNCTION_6_63();
      v69 = MEMORY[0x193ADA320](v68);
      sub_18F190748(v63, v62);
      sub_18F190748(v60, v59);
      if ((v69 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

LABEL_28:
    v66 = OUTLINED_FUNCTION_6_63();
    sub_18F190748(v66, v67);
    sub_18F190748(v63, v62);
    goto LABEL_22;
  }

  if (v62 >> 60 != 15)
  {
    goto LABEL_28;
  }

  v64 = OUTLINED_FUNCTION_6_63();
  sub_18F190748(v64, v65);
LABEL_30:
  v70 = v94;
  v71 = v94[8];
  v72 = *(v51 + v71);
  v73 = *(v52 + v71);
  if (!v72)
  {
    v74 = v90;
    if (v73)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  v74 = v90;
  if (v73)
  {
    sub_18F0F21A8(0, qword_1ED6FEED0);
    v75 = v73;
    v76 = v72;
    v77 = sub_18F52243C();

    if (v77)
    {
LABEL_35:
      if ((sub_18F382820(*(v51 + v70[9]), *(v52 + v70[9])) & 1) == 0)
      {
        goto LABEL_22;
      }

      v78 = v70[10];
      v79 = *(v74 + 48);
      v80 = v89;
      OUTLINED_FUNCTION_34_26(v51 + v78, v89);
      OUTLINED_FUNCTION_34_26(v52 + v78, v80 + v79);
      OUTLINED_FUNCTION_9_49(v80);
      if (v39)
      {
        OUTLINED_FUNCTION_9_49(v80 + v79);
        if (v39)
        {
          sub_18F0EF1A8(v80, &qword_1EACCF7A8);
          goto LABEL_22;
        }
      }

      else
      {
        v81 = v96;
        sub_18F0F9F88(v80, v96, &qword_1EACCF7A8);
        OUTLINED_FUNCTION_9_49(v80 + v79);
        if (!v82)
        {
          v83 = v95;
          v84 = v80 + v79;
          v85 = v91;
          (*(v95 + 32))(v91, v84, v12);
          OUTLINED_FUNCTION_7_54();
          sub_18F383C1C(v86, v87);
          sub_18F52180C();
          v88 = *(v83 + 8);
          v88(v85, v12);
          v88(v81, v12);
          sub_18F0EF1A8(v80, &qword_1EACCF7A8);
          goto LABEL_22;
        }

        (*(v95 + 8))(v81, v12);
      }

      v40 = &qword_1EACD0B60;
      v41 = v80;
      goto LABEL_21;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F3822BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 7)
    {
      v5 = v3[3];
      v6 = v3[4];
      v8 = i[3];
      v7 = i[4];
      v9 = v3[1] == i[1] && v3[2] == i[2];
      if (!v9 && (sub_18F522D5C() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v8 && v6 == v7;
      if (!v10 && (sub_18F522D5C() & 1) == 0)
      {
        break;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v11 = sub_18F478C9C();
      v13 = v12;
      v14 = sub_18F478C9C();
      if (v13)
      {
        if (!v15)
        {
          goto LABEL_35;
        }

        if (v11 == v14 && v13 == v15)
        {
        }

        else
        {
          v17 = sub_18F522D5C();

          if ((v17 & 1) == 0)
          {

            return 0;
          }
        }
      }

      else if (v15)
      {
LABEL_35:

        return 0;
      }

      v18 = sub_18F478C84();
      v20 = v19;
      if (v18 == sub_18F478C84() && v20 == v21)
      {
      }

      else
      {
        v23 = sub_18F522D5C();

        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_18F382640(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    sub_18F0F21A8(0, &qword_1EACCE798);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      v8 = v5;
      v9 = v7;
      OUTLINED_FUNCTION_82();
      v10 = sub_18F52243C();

      if ((v10 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_18F382710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 88)
    {
      memcpy(__dst, v3, 0x51uLL);
      memcpy(v10, v3, sizeof(v10));
      memcpy(v12, i, 0x51uLL);
      memcpy(__src, i, sizeof(__src));
      sub_18F383DD4(__dst, v8);
      sub_18F383DD4(v12, v8);
      static MessageParticipantPrototype.== infix(_:_:)();
      v6 = v5;
      memcpy(v13, __src, 0x51uLL);
      sub_18F383E30(v13);
      memcpy(v14, v10, 0x51uLL);
      sub_18F383E30(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v3 += 88;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}