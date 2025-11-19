unint64_t sub_1B2466E98()
{
  result = qword_1EB7D0B18;
  if (!qword_1EB7D0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0B18);
  }

  return result;
}

unint64_t sub_1B2466EF0()
{
  result = qword_1EB7D0B20;
  if (!qword_1EB7D0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0B20);
  }

  return result;
}

unint64_t sub_1B2466F48()
{
  result = qword_1EB7D0B28;
  if (!qword_1EB7D0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0B28);
  }

  return result;
}

uint64_t sub_1B2466FC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B2466FE4, 0, 0);
}

void sub_1B2466FE4()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 176);
    *(v0 + 56) = *v1;
    *(v0 + 72) = *(v1 + 16);
    v2 = *(v1 + 40);
    *(v0 + 136) = *(v1 + 32);
    *(v0 + 144) = v2;
    *(v0 + 40) = &type metadata for OfferDisplayRequest;
    *(v0 + 48) = sub_1B24689E8();
    v3 = swift_allocObject();
    *(v0 + 16) = v3;
    v4 = *(v1 + 25);
    v5 = *(v1 + 16);
    v3[1] = *v1;
    v3[2] = v5;
    *(v3 + 41) = v4;

    sub_1B2468A40(v0 + 56, v0 + 104);
    sub_1B2468A9C(v0 + 72, v0 + 120);
    sub_1B2468B0C(v0 + 136, v0 + 152);
    v6 = swift_task_alloc();
    *(v0 + 192) = v6;
    *v6 = v0;
    v6[1] = sub_1B2467348;
    OUTLINED_FUNCTION_8_7();

    __asm { BR              X3 }
  }

  sub_1B2467710();
  v9 = swift_allocError();
  *v10 = 14;
  swift_willThrow();
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v11 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v11, qword_1ED69A108);
  OUTLINED_FUNCTION_7_8();
  v12 = v24;
  *(v0 + 88) = v23;
  *(v0 + 96) = v12;
  OUTLINED_FUNCTION_6_5();
  *(v0 + 168) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v13 = *(v0 + 88);
  v14 = sub_1B256E0AC();

  v15 = sub_1B256D5CC();

  if (os_log_type_enabled(v15, v14))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_2_12(4.8752e-34);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    sub_1B2519814(v23, v24, &v22);

    v17 = OUTLINED_FUNCTION_5_6(v16);

    *(v13 + 14) = v17;
    OUTLINED_FUNCTION_10_4(&dword_1B23EF000, v18, v19, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  parseError(_:)(v9);
  swift_willThrow();

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8_7();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1B2467348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  OUTLINED_FUNCTION_3_10();
  *v11 = v10;
  v12 = *v5;
  OUTLINED_FUNCTION_3_10();
  *v13 = v12;
  v10[25] = v4;

  if (v4)
  {
    v14 = sub_1B24674F8;
  }

  else
  {
    v10[26] = a4;
    v10[27] = a3;
    v10[28] = a2;
    v10[29] = a1;
    __swift_destroy_boxed_opaque_existential_1((v10 + 2));
    v14 = sub_1B2467490;
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

uint64_t sub_1B2467490()
{
  OUTLINED_FUNCTION_4_0();

  v1 = v0[1];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];

  return v1(v2, v3, v4, v5);
}

void sub_1B24674F8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[25];
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  OUTLINED_FUNCTION_7_8();
  v3 = v15;
  v0[11] = v14;
  v0[12] = v3;
  OUTLINED_FUNCTION_6_5();
  v0[21] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v4 = v0[11];
  v5 = sub_1B256E0AC();

  v6 = sub_1B256D5CC();

  if (os_log_type_enabled(v6, v5))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_2_12(4.8752e-34);
    MEMORY[0x1B2749D50](8285, 0xE200000000000000);
    sub_1B2519814(v14, v15, &v13);

    v8 = OUTLINED_FUNCTION_5_6(v7);

    *(v4 + 14) = v8;
    OUTLINED_FUNCTION_10_4(&dword_1B23EF000, v9, v10, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();
  }

  else
  {
  }

  parseError(_:)(v1);
  swift_willThrow();

  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8_7();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_1B2467710()
{
  result = qword_1EB7D2100;
  if (!qword_1EB7D2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D2100);
  }

  return result;
}

void sub_1B2467764(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;

  v9 = sub_1B256D1FC();
  v11[4] = sub_1B243CBF0;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B2444748;
  v11[3] = &block_descriptor_6;
  v10 = _Block_copy(v11);

  [v7 displayOfferWithOfferData:v9 reply:v10];
  _Block_release(v10);
}

uint64_t sub_1B2467870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B2467894, 0, 0);
}

uint64_t sub_1B2467894()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1B2467960;

  return sub_1B2467BBC(v0 + 16, sub_1B2468B70, v2);
}

uint64_t sub_1B2467960()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v5 = v4;
  *(v2 + 80) = v0;

  if (v0)
  {
    v6 = sub_1B2467B60;
  }

  else
  {

    v6 = sub_1B2467A70;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B2467A70()
{
  v1 = v0[10];
  v2 = sub_1B2468308();
  if (v1)
  {
    sub_1B2443AE4(v0[2], v0[3]);
    OUTLINED_FUNCTION_7_2();

    return v6();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    sub_1B2443AE4(v0[2], v0[3]);
    v12 = v0[1];

    return v12(v8, v9, v10, v11);
  }
}

uint64_t sub_1B2467B60()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B2467BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B2467BE0, 0, 0);
}

uint64_t sub_1B2467BE0()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1B2467CDC;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x4365636976726573, 0xEF293A5F286C6C61, sub_1B2468BD0, v2, v6);
}

uint64_t sub_1B2467CDC()
{
  OUTLINED_FUNCTION_4_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v5 = v4;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B2467E08, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_7_2();

    return v6();
  }
}

uint64_t sub_1B2467E08()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B2467E64(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *, uint64_t, unint64_t, uint64_t (*)(uint64_t a1, void *a2), uint64_t), uint64_t a5)
{
  v17[1] = a5;
  v18 = a4;
  v20 = a2;
  v19 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v19);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v21 = a1;
  sub_1B256CEAC();
  swift_allocObject();
  sub_1B256CE9C();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v11 = sub_1B256CE8C();
  v13 = v12;
  (*(v8 + 16))(v10, v20, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v10, v7);
  v18(&v21, v11, v13, sub_1B2468C9C, v15);
  sub_1B2443AE4(v11, v13);
}

uint64_t sub_1B246824C(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      sub_1B244784C(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50);
      return sub_1B256DD0C();
    }

    sub_1B2467710();
    swift_allocError();
    *v4 = 9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50);
  return sub_1B256DCFC();
}

uint64_t sub_1B2468308()
{
  v1 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v1, qword_1ED69A108);
  sub_1B244CC80(v4, v3);
  v5 = sub_1B256D5CC();
  v6 = sub_1B256D5EC();
  (*(*(v6 - 8) + 8))(v3, v6);
  v7 = sub_1B256E09C();
  if (os_log_type_enabled(v5, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1B2519814(0xD000000000000014, 0x80000001B258EB30, &v12);
    _os_log_impl(&dword_1B23EF000, v5, v7, "Decoding service response to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B274BFF0](v9, -1, -1);
    MEMORY[0x1B274BFF0](v8, -1, -1);
  }

  sub_1B256CE7C();
  swift_allocObject();
  sub_1B256CE6C();
  sub_1B2468B7C();
  sub_1B256CE5C();

  if (!v0)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1B246854C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v5 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B257B4C0;
  if (qword_1EB7CFC70 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB7D2760;
  *(v6 + 32) = qword_1EB7D2760;
  sub_1B2468BDC();
  v8 = v7;
  v9 = sub_1B256DC4C();

  v10 = [v5 remoteTargetWithLaunchingAssertionAttributes_];

  if (v10)
  {
    sub_1B256E3DC();
    swift_unknownObjectRelease();
    sub_1B244AA0C(v28, v29);
    sub_1B2456DAC(v29, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B58);
    if ((swift_dynamicCast() & 1) != 0 && v26)
    {
      v27 = v26;
      a3(&v27, a1);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED699E80 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v11, qword_1ED69A108);
      v12 = sub_1B256E0AC();
      v13 = sub_1B256D5CC();
      if (os_log_type_enabled(v13, v12))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *&v28[0] = v15;
        *v14 = 136446466;
        *(v14 + 4) = sub_1B2519814(0, 0xE000000000000000, v28);
        *(v14 + 12) = 2082;
        *(v14 + 14) = sub_1B2519814(0xD000000000000078, 0x80000001B258EBB0, v28);
        _os_log_impl(&dword_1B23EF000, v13, v12, "%{public}s%{public}s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B274BFF0](v15, -1, -1);
        MEMORY[0x1B274BFF0](v14, -1, -1);
      }

      sub_1B2467710();
      v16 = swift_allocError();
      *v17 = 10;
      *&v28[0] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50);
      sub_1B256DCFC();
    }

    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v19, qword_1ED69A108);
    v20 = sub_1B256E0AC();
    v21 = sub_1B256D5CC();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v29[0] = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_1B2519814(0, 0xE000000000000000, v29);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_1B2519814(0xD000000000000058, 0x80000001B258EB50, v29);
      _os_log_impl(&dword_1B23EF000, v21, v20, "%{public}s%{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B274BFF0](v23, -1, -1);
      MEMORY[0x1B274BFF0](v22, -1, -1);
    }

    sub_1B2467710();
    v24 = swift_allocError();
    *v25 = 10;
    *&v29[0] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50);
    return sub_1B256DCFC();
  }
}

unint64_t sub_1B24689E8()
{
  result = qword_1EB7D0B30;
  if (!qword_1EB7D0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0B30);
  }

  return result;
}

uint64_t sub_1B2468A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B2468B7C()
{
  result = qword_1EB7D0B38;
  if (!qword_1EB7D0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0B38);
  }

  return result;
}

unint64_t sub_1B2468BDC()
{
  result = qword_1EB7D0B48;
  if (!qword_1EB7D0B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7D0B48);
  }

  return result;
}

uint64_t sub_1B2468C20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D18E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2468C9C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0B50);

  return sub_1B2468C88(a1, a2);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_12(float a1)
{
  *v1 = a1;

  JUMPOUT(0x1B2749D50);
}

unint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, ...)
{
  va_start(va, a1);
  *(v3 + 4) = v2;
  *(v3 + 12) = 2082;

  return sub_1B2519814(a1, v1, va);
}

void OUTLINED_FUNCTION_6_5()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_7_8()
{

  return sub_1B256E4FC();
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_11_4()
{

  JUMPOUT(0x1B274BFF0);
}

uint64_t Product.ContingentPriceInfo.contingentDisplayPrice.getter()
{
  type metadata accessor for Product.ContingentPriceInfo(0);

  return OUTLINED_FUNCTION_22_1();
}

uint64_t Product.ContingentPriceInfo.contingentRenewalPeriod.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Product.ContingentPriceInfo(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = *(v4 + 1);
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B2469064(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4(v3);
  OUTLINED_FUNCTION_1_10();
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  return a2;
}

uint64_t sub_1B24690D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1B256D3CC();
  v69 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = type metadata accessor for Product();
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = type metadata accessor for Product.ContingentPriceInfo(0);
  v17 = &a2[v16[12]];
  *v17 = v13;
  *(v17 + 8) = v14;
  v80 = v17;
  *(v17 + 16) = v15;
  v18 = OUTLINED_FUNCTION_0_18();
  sub_1B24472B8(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_0_18();
  sub_1B24472B8(v21, v22, v23);
  OUTLINED_FUNCTION_1_14();
  sub_1B24AFE88();
  if (v2)
  {
    v26 = OUTLINED_FUNCTION_0_18();
    sub_1B24472E0(v26, v27, v28);
    v29 = OUTLINED_FUNCTION_0_18();
    sub_1B24472E0(v29, v30, v31);
    return sub_1B24472E0(*v80, *(v80 + 8), *(v80 + 16));
  }

  else
  {
    v66 = v8;
    v68 = v12;
    v64 = v5;
    *a2 = v24;
    *(a2 + 1) = v25;
    v32 = v25;
    OUTLINED_FUNCTION_1_14();
    sub_1B24AFE88();
    v33 = a2;
    v63 = v32;
    *(a2 + 2) = v34;
    *(a2 + 3) = v35;
    v36 = v35;
    OUTLINED_FUNCTION_1_14();
    sub_1B24AFE88();
    v62 = v36;
    *(a2 + 4) = v37;
    *(a2 + 5) = v38;
    if (v15 == 5)
    {
      if (*(v13 + 16) && (v39 = sub_1B2455488(), (v40 & 1) != 0))
      {
        v41 = *(v13 + 56) + 24 * v39;
        v42 = *v41;
        v43 = *(v41 + 8);
        v44 = *(v41 + 16);
        sub_1B24472B8(*v41, v43, v44);
      }

      else
      {
        v42 = 0;
        v43 = 0;
        v44 = 6;
      }

      v45 = 5;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = 6;
      v45 = v15;
    }

    sub_1B24472E0(v13, v14, v45);
    v76 = v42;
    v77 = v43;
    LOBYTE(v78) = v44;
    sub_1B24E66F8(&v76, v68);
    sub_1B2469EC4(v68, &v33[v16[7]]);
    sub_1B24B01A4(&unk_1F29AF428, v13, v14, v15, v46, v47, v48, v49, v62, v63, v64, v66, 0, v69, v71, v73, v74, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
    v50 = &v33[v16[8]];
    *v50 = v72;
    *(v50 + 4) = v75;
    OUTLINED_FUNCTION_1_14();
    sub_1B24AFE88();
    v51 = &v33[v16[9]];
    *v51 = v52;
    *(v51 + 1) = v53;
    OUTLINED_FUNCTION_1_14();
    sub_1B24AFE88();
    Product.SubscriptionPeriod.init(from8601String:)(v54, v55, &v76);
    v56 = v77;
    v57 = &v33[v16[10]];
    *v57 = v76;
    *(v57 + 1) = v56;
    OUTLINED_FUNCTION_1_14();
    sub_1B24B0474();
    v59 = OUTLINED_FUNCTION_0_18();
    sub_1B24472E0(v59, v60, v61);
    return (*(v70 + 32))(&v33[v16[11]], v67, v65);
  }
}

unint64_t sub_1B2469574(char a1)
{
  result = 0x725068636E617262;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    case 4:
      result = 0x65676E69746E6F63;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 25705;
      break;
    case 8:
      result = 1635017060;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t Product.ContingentPriceInfo.ID.hash(into:)()
{
  sub_1B256D3CC();
  OUTLINED_FUNCTION_2_13();
  sub_1B2469C38(v0, v1);

  return sub_1B256D8FC();
}

uint64_t Product.ContingentPriceInfo.ID.hashValue.getter()
{
  sub_1B256ED3C();
  sub_1B256D3CC();
  OUTLINED_FUNCTION_2_13();
  sub_1B2469C38(v0, v1);
  sub_1B256D8FC();
  return sub_1B256ED7C();
}

uint64_t sub_1B2469790()
{
  sub_1B256ED3C();
  sub_1B256D3CC();
  sub_1B2469C38(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
  sub_1B256D8FC();
  return sub_1B256ED7C();
}

uint64_t sub_1B246982C()
{
  v0 = sub_1B256E91C();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B2469884@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B246982C();
  *a1 = result;
  return result;
}

unint64_t sub_1B24698B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B2469574(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Product.ContingentPriceInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Product.ContingentPriceInfo(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_13();
  v8 = (v7 - v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B256EDAC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1B244A000();
    sub_1B256EBAC();
    sub_1B24690D8(&v10, v8);
    sub_1B2469EC4(v8, a2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Product.ContingentPriceInfo.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B256EDEC();
  v2 = v1 + *(type metadata accessor for Product.ContingentPriceInfo(0) + 48);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v7 = *v2;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  sub_1B24472B8(v3, v4, v5);
  sub_1B244A054();
  sub_1B256EC0C();
  sub_1B24472E0(v7, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1B2469C38(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B2469D08()
{
  type metadata accessor for Product();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Decimal(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Product.ContingentPriceInfo.ID(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B2469DFC()
{
  result = sub_1B256D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B2469E68(uint64_t a1)
{
  v2 = type metadata accessor for Product();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2469EC4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4(v3);
  OUTLINED_FUNCTION_1_10();
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  return a2;
}

uint64_t _s19ContingentPriceInfoV3KeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s19ContingentPriceInfoV3KeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B246A080()
{
  result = qword_1EB7D0B90;
  if (!qword_1EB7D0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0B90);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B246A154(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B246A194(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B246A1E8()
{
  result = qword_1EB7D0B98;
  if (!qword_1EB7D0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0B98);
  }

  return result;
}

uint64_t sub_1B246A23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1B256EB5C(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1B256EB5C();
    }
  }

  return result;
}

uint64_t sub_1B246A2DC()
{
  sub_1B256DA7C();

  return sub_1B256DA7C();
}

uint64_t sub_1B246A32C()
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

uint64_t sub_1B246A3D0()
{
  sub_1B256ED3C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  return sub_1B256ED7C();
}

uint64_t sub_1B246A434(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_17_4();
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v9 && v8)
              {
                break;
              }

              OUTLINED_FUNCTION_11_5();
              if (!v9)
              {
                break;
              }

              OUTLINED_FUNCTION_5_7();
              v7 = v18 + v17;
              if (__CFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_22();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_81:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v9 && v8)
            {
              break;
            }

            OUTLINED_FUNCTION_11_5();
            if (!v9)
            {
              break;
            }

            OUTLINED_FUNCTION_5_7();
            v7 = v21 + v20;
            if (__CFADD__(v21, v20))
            {
              break;
            }

            OUTLINED_FUNCTION_22();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_17_4();
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v9 && v8)
            {
              break;
            }

            OUTLINED_FUNCTION_11_5();
            if (!v9)
            {
              break;
            }

            OUTLINED_FUNCTION_5_7();
            v7 = v14 - v13;
            if (v14 < v13)
            {
              break;
            }

            OUTLINED_FUNCTION_22();
            if (v9)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B256E5FC();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_15_5();
              while (1)
              {
                OUTLINED_FUNCTION_9_0();
                if (!v9 && v8)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_11_5();
                if (!v9)
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_5_7();
                v7 = v16 + v15;
                if (__CFADD__(v16, v15))
                {
                  goto LABEL_70;
                }

                OUTLINED_FUNCTION_22();
                if (v9)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_70;
        }

        goto LABEL_80;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_70;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_70;
              }

              v8 = __CFADD__(10 * v7, v19);
              v7 = 10 * v7 + v19;
              if (v8)
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_70:
        v7 = 0;
        v12 = 1;
        goto LABEL_71;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_15_5();
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v9 && v8)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_11_5();
              if (!v9)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_5_7();
              v7 = v11 - v10;
              if (v11 < v10)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_22();
              if (v9)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_61:
          v12 = 0;
LABEL_71:
          v22 = v12;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  sub_1B243EE68(result, a2, 0xAuLL);
  v7 = v23;
  v22 = v24;
LABEL_72:

  if (v22)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

unsigned __int8 *BinaryInteger.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64[1] = a3;
  v64[2] = a4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_9();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = v64 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  switch(*(a1 + 16))
  {
    case 0:
      v18 = HIBYTE(v17) & 0xF;
      v19 = v16 & 0xFFFFFFFFFFFFLL;
      if ((v17 & 0x2000000000000000) != 0)
      {
        v20 = HIBYTE(v17) & 0xF;
      }

      else
      {
        v20 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (!v20)
      {

        goto LABEL_77;
      }

      if ((v17 & 0x1000000000000000) != 0)
      {
        v47 = OUTLINED_FUNCTION_19_2();
        sub_1B24472B8(v47, v48, v49);
        v50 = sub_1B243FC04(v16, v17, 10);
        if (v51)
        {
          goto LABEL_77;
        }

        v22 = v50;
        goto LABEL_84;
      }

      if ((v17 & 0x2000000000000000) == 0)
      {
        if ((v16 & 0x1000000000000000) != 0)
        {
          result = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_1B256E5FC();
        }

        v21 = *result;
        if (v21 == 43)
        {
          if (v19 >= 1)
          {
            if (v19 != 1)
            {
              v22 = 0;
              if (result)
              {
                OUTLINED_FUNCTION_15_5();
                while (1)
                {
                  OUTLINED_FUNCTION_9_0();
                  if (!v24 & v23)
                  {
                    goto LABEL_75;
                  }

                  OUTLINED_FUNCTION_1_15();
                  if (!v24)
                  {
                    goto LABEL_75;
                  }

                  v22 = v34 + v33;
                  if (__OFADD__(v34, v33))
                  {
                    goto LABEL_75;
                  }

                  OUTLINED_FUNCTION_22();
                  if (v24)
                  {
                    goto LABEL_76;
                  }
                }
              }

              goto LABEL_66;
            }

            goto LABEL_75;
          }

          goto LABEL_91;
        }

        if (v21 != 45)
        {
          if (v19)
          {
            v22 = 0;
            if (result)
            {
              while (1)
              {
                v37 = *result - 48;
                if (v37 > 9)
                {
                  goto LABEL_75;
                }

                v38 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  goto LABEL_75;
                }

                v22 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  goto LABEL_75;
                }

                ++result;
                if (!--v19)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_66;
          }

LABEL_75:
          v22 = 0;
          v27 = 1;
LABEL_76:
          v67 = v27;
          v41 = v27;
          v42 = OUTLINED_FUNCTION_19_2();
          sub_1B24472B8(v42, v43, v44);
          if (v41)
          {
LABEL_77:
            v45 = sub_1B246A434(v16, v17);
            if (v46)
            {
              v28 = OUTLINED_FUNCTION_19_2();
              goto LABEL_79;
            }

            v65 = v45;
            sub_1B246B7DC();
            goto LABEL_85;
          }

LABEL_84:
          v52 = OUTLINED_FUNCTION_19_2();
          sub_1B24472E0(v52, v53, v54);
          v65 = v22;
          sub_1B24554E4();
LABEL_85:
          OUTLINED_FUNCTION_3_12();
          sub_1B256E3CC();
          v55 = OUTLINED_FUNCTION_19_2();
          sub_1B24472E0(v55, v56, v57);
          goto LABEL_86;
        }

        if (v19 >= 1)
        {
          if (v19 != 1)
          {
            v22 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_15_5();
              while (1)
              {
                OUTLINED_FUNCTION_9_0();
                if (!v24 & v23)
                {
                  goto LABEL_75;
                }

                OUTLINED_FUNCTION_1_15();
                if (!v24)
                {
                  goto LABEL_75;
                }

                v22 = v26 - v25;
                if (__OFSUB__(v26, v25))
                {
                  goto LABEL_75;
                }

                OUTLINED_FUNCTION_22();
                if (v24)
                {
                  goto LABEL_76;
                }
              }
            }

LABEL_66:
            v27 = 0;
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v65 = *a1;
      v66 = v17 & 0xFFFFFFFFFFFFFFLL;
      if (v16 != 43)
      {
        if (v16 != 45)
        {
          if (v18)
          {
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v24 & v23)
              {
                break;
              }

              OUTLINED_FUNCTION_1_15();
              if (!v24)
              {
                break;
              }

              v22 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                break;
              }

              OUTLINED_FUNCTION_22();
              if (v24)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

        if (v18)
        {
          if (v18 != 1)
          {
            OUTLINED_FUNCTION_16_5();
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v24 & v23)
              {
                break;
              }

              OUTLINED_FUNCTION_1_15();
              if (!v24)
              {
                break;
              }

              v22 = v32 - v31;
              if (__OFSUB__(v32, v31))
              {
                break;
              }

              OUTLINED_FUNCTION_22();
              if (v24)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_90;
      }

      if (v18)
      {
        if (v18 != 1)
        {
          OUTLINED_FUNCTION_16_5();
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v24 & v23)
            {
              break;
            }

            OUTLINED_FUNCTION_1_15();
            if (!v24)
            {
              break;
            }

            v22 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            OUTLINED_FUNCTION_22();
            if (v24)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_92:
      __break(1u);
      return result;
    case 1:
      v65 = *a1;
      sub_1B2455538();
      OUTLINED_FUNCTION_3_12();
      sub_1B256E3BC();
      goto LABEL_86;
    case 2:
      v65 = *a1;
      sub_1B24554E4();
      OUTLINED_FUNCTION_3_12();
      sub_1B256E3CC();
      goto LABEL_86;
    case 3:
      swift_getAssociatedConformanceWitness();
      sub_1B256EC7C();
      sub_1B256EB2C();
      (*(v8 + 32))(v15, v12, a2);
LABEL_86:
      v58 = OUTLINED_FUNCTION_27_0();
      v59(v58);
      goto LABEL_87;
    default:
      v28 = *a1;
      v29 = *(a1 + 8);
      v30 = *(a1 + 16);
LABEL_79:
      sub_1B24472E0(v28, v29, v30);
LABEL_87:
      OUTLINED_FUNCTION_8_8();
      return __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  }
}

uint64_t BinaryFloatingPoint.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_9();
  v28 = v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  switch(v15)
  {
    case 0:

      sub_1B246AE80(v13, v14);
      if (v16)
      {
        v15 = 0;
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_19_4();
      sub_1B24472E0(v13, v14, 0);
      goto LABEL_11;
    case 1:
      OUTLINED_FUNCTION_19_4();
      goto LABEL_11;
    case 2:
      v30 = *a1;
      sub_1B24554E4();
      sub_1B256D8DC();
LABEL_11:
      v22 = v28;
      goto LABEL_12;
    case 3:
      swift_getAssociatedConformanceWitness();
      sub_1B256EC6C();
      sub_1B256EAFC();
      v22 = v28;
      (*(v28 + 32))(v12, v10, a2);
LABEL_12:
      (*(v22 + 32))(v29, v12, a2);
      OUTLINED_FUNCTION_8_8();
      result = __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      break;
    default:
LABEL_4:
      sub_1B24472E0(v13, v14, v15);
      OUTLINED_FUNCTION_8_8();

      result = __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
      break;
  }

  return result;
}

uint64_t sub_1B246AE80(uint64_t a1, uint64_t a2)
{
  sub_1B246B914(a1, a2);

  return 0;
}

uint64_t Date.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B256D36C();
  OUTLINED_FUNCTION_1_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_6();
  if (*(a1 + 16))
  {
    v9 = OUTLINED_FUNCTION_13_5();
    sub_1B24472E0(v9, v10, v11);
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1B246B89C(0xD000000000000015, 0x80000001B258ECB0, v17);
    OUTLINED_FUNCTION_13_5();
    v18 = sub_1B256D98C();
    v19 = OUTLINED_FUNCTION_13_5();
    sub_1B24472E0(v19, v20, 0);
    v21 = [v17 dateFromString_];

    if (v21)
    {
      sub_1B256D33C();

      (*(v7 + 32))(a2, v2, v5);
      OUTLINED_FUNCTION_8_8();
      return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    }
  }

  OUTLINED_FUNCTION_8_8();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Data.init(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = OUTLINED_FUNCTION_27_0();
    sub_1B24472E0(v1, v2, v3);
  }

  else
  {
    OUTLINED_FUNCTION_27_0();
    sub_1B256D1AC();
    v4 = OUTLINED_FUNCTION_27_0();
    sub_1B24472E0(v4, v5, 0);
  }

  return OUTLINED_FUNCTION_22_1();
}

uint64_t String.init(_:)(uint64_t a1)
{
  result = *a1;
  if (*(a1 + 16))
  {
    sub_1B24472E0(result, *(a1 + 8), *(a1 + 16));
    return 0;
  }

  return result;
}

uint64_t NSDecimal.init(_:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0010);
  OUTLINED_FUNCTION_23();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-v5];
  switch(*(a1 + 16))
  {
    case 0:
      v7 = sub_1B256D47C();
      v8 = 1;
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      OUTLINED_FUNCTION_13_5();
      sub_1B256E29C();
      v10 = v9;
      v11 = OUTLINED_FUNCTION_13_5();
      sub_1B24472E0(v11, v12, 0);
      sub_1B243E88C(v6, &qword_1EB7D0010);
      if ((v10 & 0x100000000) == 0)
      {
        goto LABEL_9;
      }

      break;
    case 1:
      MEMORY[0x1B274A520](v3, *a1);
      goto LABEL_9;
    case 2:
      MEMORY[0x1B274A530](*a1);
      goto LABEL_9;
    case 3:
      v4.n128_u64[0] = 0;
      if (*a1)
      {
        v4.n128_f64[0] = 1.0;
      }

      MEMORY[0x1B274A4C0](v3, v4);
LABEL_9:
      v8 = 0;
      break;
    default:
      sub_1B24472E0(*a1, a1[1], *(a1 + 16));
      v8 = 1;
      break;
  }

  v14[12] = v8;
  return OUTLINED_FUNCTION_22_1();
}

uint64_t Bool.init(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  switch(*(a1 + 16))
  {
    case 0:
      if (v1 == 1702195828 && v2 == 0xE400000000000000)
      {
        v4 = 1702195828;
        v5 = 0xE400000000000000;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_22_1();
      if (sub_1B256EB5C())
      {
        v4 = OUTLINED_FUNCTION_22_1();
LABEL_14:
        sub_1B24472E0(v4, v5, 0);
        LOBYTE(v1) = 1;
        return v1 & 1;
      }

      if (v1 == 0x65736C6166 && v2 == 0xE500000000000000)
      {
        sub_1B24472E0(0x65736C6166, 0xE500000000000000, 0);
        LOBYTE(v1) = 0;
      }

      else
      {
        OUTLINED_FUNCTION_22_1();
        v10 = sub_1B256EB5C();
        v11 = OUTLINED_FUNCTION_22_1();
        sub_1B24472E0(v11, v12, 0);
        LOBYTE(v1) = 0;
        if ((v10 & 1) == 0)
        {
          return 2;
        }
      }

      return v1 & 1;
    case 1:
      v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      goto LABEL_10;
    case 2:
      v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
LABEL_10:
      v7 = v6;
      LOBYTE(v1) = sub_1B256DCDC();

      return v1 & 1;
    case 3:
      return v1 & 1;
    default:
      sub_1B24472E0(*a1, v2, *(a1 + 16));
      return 2;
  }
}

uint64_t UUID.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  if (*(a1 + 16))
  {
    v7 = OUTLINED_FUNCTION_27_0();
    sub_1B24472E0(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_27_0();
    sub_1B256D37C();
    v10 = OUTLINED_FUNCTION_27_0();
    sub_1B24472E0(v10, v11, 0);
    v12 = sub_1B256D3CC();
    if (__swift_getEnumTagSinglePayload(v6, 1, v12) != 1)
    {
      v17 = OUTLINED_FUNCTION_22_1();
      v18(v17);
      v14 = a2;
      v15 = 0;
      v13 = v12;
      return __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
    }

    sub_1B243E88C(v6, &qword_1EB7D1770);
  }

  v13 = sub_1B256D3CC();
  v14 = a2;
  v15 = 1;
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
}

uint64_t Array<A>.init(_:)(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (v3 != 4)
  {
    sub_1B24472E0(result, *(a1 + 8), v3);
    return 0;
  }

  return result;
}

uint64_t Dictionary<>.init(_:)(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  if (v3 != 5)
  {
    sub_1B24472E0(result, *(a1 + 8), v3);
    return 0;
  }

  return result;
}

uint64_t Locale.Currency.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B256D45C();
  OUTLINED_FUNCTION_1_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12_6();
  if (*(a1 + 16))
  {
    sub_1B24472E0(*a1, *(a1 + 8), *(a1 + 16));
    OUTLINED_FUNCTION_8_8();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    sub_1B256D44C();
    (*(v7 + 32))(a2, v2, v5);
    OUTLINED_FUNCTION_8_8();
    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }
}

uint64_t Product.SubscriptionPeriod.init(_:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_4(a1);
  if (v4)
  {
    result = sub_1B24472E0(v2, v3, v4);
    v6 = 0;
    v7 = 4;
  }

  else
  {
    result = Product.SubscriptionPeriod.init(from8601String:)(v2, v3, v8);
    v7 = v8[0];
    v6 = v9;
  }

  *v1 = v7;
  v1[1] = v6;
  return result;
}

__n128 BackingValue.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t _s8StoreKit03AppA0O11EnvironmentVyAESgAA12BackingValueOcfC_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_4(a1);
  if (v4)
  {
    sub_1B24472E0(result, v3, v4);
    result = 0;
    v3 = 0;
  }

  *v1 = result;
  v1[1] = v3;
  return result;
}

unint64_t sub_1B246B7DC()
{
  result = qword_1EB7D0BA0;
  if (!qword_1EB7D0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0BA0);
  }

  return result;
}

_BYTE *sub_1B246B830@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

void sub_1B246B89C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B256D98C();

  [a3 setDateFormat_];
}

BOOL sub_1B246B914(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1B256E4CC();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return MEMORY[0x1EEE68720](v0, v1);
}

uint64_t sub_1B246BB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B24ABD24(a1, a2, a3, a4, a5, a6, a7, a8, v22, v24);
  if (!v9)
  {
    switch(LOBYTE(v30[2]))
    {
      case 4:
        v25 = v30[0];

        sub_1B24472E0(v30[0], v30[1], 4);
        sub_1B24472E0(0, 0, 6);
        v13 = *(v30[0] + 16);
        if (v13)
        {
          v23 = v30[1];
          v31 = MEMORY[0x1E69E7CC0];
          sub_1B2455C18(0, v13, 0);
          v14 = v31;
          v15 = v13 - 1;
          for (i = (v30[0] + 48); ; i += 24)
          {
            v17 = *(i - 1);
            v18 = *i;
            v27[0] = *(i - 2);
            v27[1] = v17;
            v28 = v18;
            sub_1B24472B8(v27[0], v17, v18);
            sub_1B2497E50(v27, __src);
            memcpy(__dst, __src, 0x84uLL);
            nullsub_3(__dst);
            memcpy(v30, __dst, 0x84uLL);
            v31 = v14;
            v20 = *(v14 + 16);
            v19 = *(v14 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_1B2455C18((v19 > 1), v20 + 1, 1);
              v14 = v31;
            }

            *(v14 + 16) = v20 + 1;
            memcpy((v14 + 136 * v20 + 32), v30, 0x84uLL);
            if (!v15)
            {
              break;
            }

            --v15;
          }

          sub_1B24472E0(v25, v23, 4);
        }

        else
        {
          sub_1B24472E0(v30[0], v30[1], 4);
          v14 = MEMORY[0x1E69E7CC0];
        }

        v8 = sub_1B246C870(v14);

        if (!v8)
        {
          goto LABEL_4;
        }

        break;
      case 6:
        sub_1B24472E0(v30[0], v30[1], 6);
        sub_1B24472E0(0, 0, 6);
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0BB8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0BC0);
        sub_1B246E7B4(&unk_1EB7D1880, &qword_1EB7D0BC0);
        swift_allocError();
        *v21 = a1;
        *(v21 + 8) = v8;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
        *(v21 + 32) = 0;
        goto LABEL_5;
      default:
        sub_1B24472E0(v30[0], v30[1], v30[2]);
        sub_1B24472E0(0, 0, 6);
LABEL_4:
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0BB8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0BC0);
        sub_1B246E7B4(&unk_1EB7D1880, &qword_1EB7D0BC0);
        swift_allocError();
        *v11 = a1;
        *(v11 + 8) = v8;
        *(v11 + 16) = 0;
        *(v11 + 24) = 0;
        *(v11 + 32) = 1;
LABEL_5:
        swift_willThrow();

        break;
    }
  }

  return v8;
}

void *sub_1B246C118()
{
  OUTLINED_FUNCTION_13_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D06B8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = OUTLINED_FUNCTION_7_10();
  sub_1B24AC758(v3, v4, v5, v6, v7, v8, v9, v10, v34, v35);
  if (!v0)
  {
    switch(v38)
    {
      case 4:

        OUTLINED_FUNCTION_2_14(v20, v37, 4);
        v21 = *(v36 + 16);
        if (v21)
        {
          OUTLINED_FUNCTION_12_7(MEMORY[0x1E69E7CC0]);
          sub_1B2455C90();
          v22 = v39;
          do
          {
            OUTLINED_FUNCTION_20_3();
            sub_1B249A5F0();
            OUTLINED_FUNCTION_16_6();
            if (v24)
            {
              OUTLINED_FUNCTION_14_5(v23);
              sub_1B2455C90();
              v22 = v39;
            }

            OUTLINED_FUNCTION_6_6();
            sub_1B246E808();
            --v21;
          }

          while (v21);
          sub_1B24472E0(v36, v37, 4);
        }

        else
        {
          v32 = OUTLINED_FUNCTION_11_6();
          sub_1B24472E0(v32, v33, 4);
          v22 = MEMORY[0x1E69E7CC0];
        }

        v2 = sub_1B246CA34(v22);

        if (!v2)
        {
          goto LABEL_4;
        }

        break;
      case 6:
        v25 = OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_2_14(v25, v26, 6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0BD0);
        v2 = &unk_1B257BB58;
        OUTLINED_FUNCTION_15_6();
        OUTLINED_FUNCTION_9_9();
        sub_1B246E7B4(v27, v28);
        v29 = OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_3_13(v29, v30);
        *(v31 + 32) = 0;
        goto LABEL_5;
      default:
        v11 = OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_2_14(v11, v12, v13);
LABEL_4:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0BD0);
        v2 = &unk_1B257BB58;
        OUTLINED_FUNCTION_15_6();
        OUTLINED_FUNCTION_9_9();
        sub_1B246E7B4(v14, v15);
        v16 = OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_3_13(v16, v17);
        *(v18 + 32) = 1;
LABEL_5:
        swift_willThrow();

        break;
    }
  }

  return v2;
}

void *sub_1B246C394()
{
  OUTLINED_FUNCTION_13_6();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D06A8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = OUTLINED_FUNCTION_7_10();
  sub_1B24AE2CC(v3, v4, v5, v6);
  if (!v0)
  {
    switch(v32)
    {
      case 4:

        OUTLINED_FUNCTION_2_14(v16, v31, 4);
        v17 = *(v30 + 16);
        if (v17)
        {
          OUTLINED_FUNCTION_12_7(MEMORY[0x1E69E7CC0]);
          sub_1B2455D28();
          v18 = v33;
          do
          {
            OUTLINED_FUNCTION_20_3();
            sub_1B249B198();
            OUTLINED_FUNCTION_16_6();
            if (v20)
            {
              OUTLINED_FUNCTION_14_5(v19);
              sub_1B2455D28();
              v18 = v33;
            }

            OUTLINED_FUNCTION_6_6();
            sub_1B246E808();
            --v17;
          }

          while (v17);
          sub_1B24472E0(v30, v31, 4);
        }

        else
        {
          v28 = OUTLINED_FUNCTION_11_6();
          sub_1B24472E0(v28, v29, 4);
          v18 = MEMORY[0x1E69E7CC0];
        }

        v2 = sub_1B246CD38(v18);

        if (!v2)
        {
          goto LABEL_4;
        }

        break;
      case 6:
        v21 = OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_2_14(v21, v22, 6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0BE0);
        v2 = &unk_1B257BB70;
        OUTLINED_FUNCTION_15_6();
        OUTLINED_FUNCTION_9_9();
        sub_1B246E7B4(v23, v24);
        v25 = OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_3_13(v25, v26);
        *(v27 + 32) = 0;
        goto LABEL_5;
      default:
        v7 = OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_2_14(v7, v8, v9);
LABEL_4:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0BE0);
        v2 = &unk_1B257BB70;
        OUTLINED_FUNCTION_15_6();
        OUTLINED_FUNCTION_9_9();
        sub_1B246E7B4(v10, v11);
        v12 = OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_3_13(v12, v13);
        *(v14 + 32) = 1;
LABEL_5:
        swift_willThrow();

        break;
    }
  }

  return v2;
}

void *sub_1B246C610()
{
  sub_1B24B645C();
  if (!v0)
  {
    v2 = v26;
    switch(v29)
    {
      case 4:

        OUTLINED_FUNCTION_2_14(v9, v28, 4);
        v10 = *(v26 + 16);
        if (v10)
        {
          v27 = MEMORY[0x1E69E7CC0];
          sub_1B2455E98(0, v10, 0);
          v11 = v27;
          v25 = v2;
          v12 = (v2 + 48);
          v13 = (v2 + 48);
          do
          {
            v14 = *v13;
            v13 += 24;
            if (v14)
            {
              v15 = 0;
              v16 = 0;
            }

            else
            {
              v15 = *(v12 - 2);
              v16 = *(v12 - 1);
            }

            v18 = *(v27 + 16);
            v17 = *(v27 + 24);
            if (v18 >= v17 >> 1)
            {
              sub_1B2455E98((v17 > 1), v18 + 1, 1);
            }

            *(v27 + 16) = v18 + 1;
            v19 = v27 + 16 * v18;
            *(v19 + 32) = v15;
            *(v19 + 40) = v16;
            v12 = v13;
            --v10;
          }

          while (v10);
          sub_1B24472E0(v25, v28, 4);
        }

        else
        {
          sub_1B24472E0(v26, v28, 4);
          v11 = MEMORY[0x1E69E7CC0];
        }

        v1 = sub_1B246D03C(v11);

        if (!v1)
        {
          goto LABEL_4;
        }

        break;
      case 6:
        OUTLINED_FUNCTION_2_14(v26, v28, 6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
        v1 = &unk_1B2584480;
        OUTLINED_FUNCTION_15_6();
        OUTLINED_FUNCTION_9_9();
        sub_1B246E7B4(v20, v21);
        v22 = OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_3_13(v22, v23);
        *(v24 + 32) = 0;
        goto LABEL_5;
      default:
        OUTLINED_FUNCTION_2_14(v26, v28, v29);
LABEL_4:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
        v1 = &unk_1B2584480;
        OUTLINED_FUNCTION_15_6();
        OUTLINED_FUNCTION_9_9();
        sub_1B246E7B4(v3, v4);
        v5 = OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_3_13(v5, v6);
        *(v7 + 32) = 1;
LABEL_5:
        swift_willThrow();

        break;
    }
  }

  return v1;
}

uint64_t sub_1B246C870(uint64_t a1)
{
  v2 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B2455BF8(0, v2, 0);
  v3 = v13;
  v4 = (a1 + 32);
  if (v2)
  {
    while (1)
    {
      memcpy(__dst, v4, sizeof(__dst));
      memcpy(v11, v4, sizeof(v11));
      sub_1B246E85C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0660);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      nullsub_3(__src);
      memcpy(v9, __src, 0x84uLL);
      v13 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B2455BF8((v5 > 1), v6 + 1, 1);
        v3 = v13;
      }

      memcpy(v8, v9, 0x84uLL);
      *(v3 + 16) = v6 + 1;
      memcpy((v3 + 136 * v6 + 32), v8, 0x84uLL);
      v4 += 136;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_1B246E7AC(v8);
    memcpy(__src, v8, 0x84uLL);
    memcpy(v9, v8, 0x84uLL);
    sub_1B246E8B0(v9, &qword_1EB7D0660);
    return 0;
  }

  return v3;
}

uint64_t sub_1B246CA34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D06B8);
  v12[1] = *(v2 - 8);
  v12[2] = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = type metadata accessor for Transaction.AdvancedCommerceInfo.Item(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v12[3] = a1;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  sub_1B2455C38();
  v8 = 0;
  v9 = v14;
  while (v13 != v8)
  {
    sub_1B246E85C();
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
      sub_1B246E8B0(v5, &qword_1EB7D06B8);
      return 0;
    }

    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    sub_1B246E910();
    sub_1B246E910();
    v14 = v9;
    v10 = *(v9 + 16);
    if (v10 >= *(v9 + 24) >> 1)
    {
      sub_1B2455C38();
      v9 = v14;
    }

    *(v9 + 16) = v10 + 1;
    sub_1B246E910();
    ++v8;
  }

  return v9;
}

uint64_t sub_1B246CD38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D06A8);
  v12[1] = *(v2 - 8);
  v12[2] = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = type metadata accessor for Transaction.AdvancedCommerceInfo.Refund(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v12[3] = a1;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  sub_1B2455CD0();
  v8 = 0;
  v9 = v14;
  while (v13 != v8)
  {
    sub_1B246E85C();
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
      sub_1B246E8B0(v5, &qword_1EB7D06A8);
      return 0;
    }

    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    sub_1B246E910();
    sub_1B246E910();
    v14 = v9;
    v10 = *(v9 + 16);
    if (v10 >= *(v9 + 24) >> 1)
    {
      sub_1B2455CD0();
      v9 = v14;
    }

    *(v9 + 16) = v10 + 1;
    sub_1B246E910();
    ++v8;
  }

  return v9;
}

uint64_t sub_1B246D03C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B2455BD8(0, v2, 0);
  v3 = v11;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0670);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B2455BD8((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 16;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo.Item.details.getter()
{
  memcpy(__dst, v0, 0x84uLL);
  v1 = OUTLINED_FUNCTION_22_1();
  memcpy(v1, v2, 0x84uLL);
  return sub_1B24586E4(__dst, v4);
}

uint64_t static Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo.Item.== infix(_:_:)()
{
  OUTLINED_FUNCTION_18_3();
  memcpy(__dst, v1, 0x84uLL);
  memcpy(v8, v0, 0x84uLL);
  memcpy(__src, v1, sizeof(__src));
  memcpy(v5, v0, sizeof(v5));
  sub_1B24586E4(__dst, v10);
  sub_1B24586E4(v8, v10);
  static Transaction.AdvancedCommerceInfo.Item.Details.== infix(_:_:)();
  v3 = v2;
  memcpy(v9, v5, 0x84uLL);
  sub_1B2458740(v9);
  memcpy(v10, __src, 0x84uLL);
  sub_1B2458740(v10);
  return v3 & 1;
}

uint64_t Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo.Item.hash(into:)()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(v0 + 104);
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256ED5C();
  if (v1)
  {
    sub_1B256E28C();
    MEMORY[0x1B274AFC0]();
    MEMORY[0x1B274AFC0]();
    MEMORY[0x1B274AFC0]();
    sub_1B256DA7C();
  }

  OUTLINED_FUNCTION_19_5();

  return sub_1B256E28C();
}

uint64_t Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo.Item.hashValue.getter()
{
  OUTLINED_FUNCTION_10_5();
  v1 = *(v0 + 104);
  sub_1B256ED3C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256ED5C();
  if (v1)
  {
    sub_1B256E28C();
    MEMORY[0x1B274AFC0]();
    MEMORY[0x1B274AFC0]();
    MEMORY[0x1B274AFC0]();
    sub_1B256DA7C();
  }

  sub_1B256E28C();
  return sub_1B256ED7C();
}

uint64_t sub_1B246D520()
{
  memcpy(v2, v0, sizeof(v2));
  sub_1B256ED3C();
  Transaction.AdvancedCommerceInfo.Item.Details.hash(into:)();
  return sub_1B256ED7C();
}

void Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo.period.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
}

void static Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v29 = *(a1 + 56);
  v30 = *(a1 + 48);
  v27 = *(a1 + 72);
  v28 = *(a1 + 64);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v26 = *(a2 + 64);
  v24 = *(a1 + 88);
  v25 = *(a2 + 72);
  v22 = *(a2 + 80);
  v23 = *(a1 + 80);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v21 = *(a2 + 88);
  if (v12 || (sub_1B256EB5C()) && (v2 == v6 ? (v13 = v4 == v7) : (v13 = 0), (v13 || (sub_1B256EB5C()) && (v3 == v8 ? (v14 = v5 == v9) : (v14 = 0), (v14 || (OUTLINED_FUNCTION_22_1(), (sub_1B256EB5C())) && (v30 == v10 ? (v15 = v29 == v11) : (v15 = 0), (v15 || (sub_1B256EB5C()) && (v28 == v26 ? (v16 = v27 == v25) : (v16 = 0), (v16 || (sub_1B256EB5C()) && (v23 == v22 ? (v17 = v24 == v21) : (v17 = 0), v17))))))
  {
    OUTLINED_FUNCTION_19_5();

    sub_1B2451D68(v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_19_5();
  }
}

void Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo.hash(into:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  MEMORY[0x1B274AFC0](v1);
  MEMORY[0x1B274AFC0](v2);

  sub_1B2457038();
}

uint64_t Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo.hashValue.getter()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_1B256ED3C();
  sub_1B256DA7C();
  OUTLINED_FUNCTION_9_9();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  sub_1B256DA7C();
  MEMORY[0x1B274AFC0](v2);
  MEMORY[0x1B274AFC0](v3);
  sub_1B2457038();
  return sub_1B256ED7C();
}

uint64_t sub_1B246D9C8()
{
  v0 = sub_1B256E91C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B246DA24(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
    case 2:
      return result;
    case 3:
      result = 0x4E79616C70736964;
      break;
    case 4:
      result = 0x736D657469;
      break;
    case 5:
      result = 0x646F69726570;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x65646F43786174;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1B246DB20()
{
  sub_1B256ED3C();
  Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo.hash(into:)();
  return sub_1B256ED7C();
}

uint64_t sub_1B246DB80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B246D9C8();
  *a1 = result;
  return result;
}

unint64_t sub_1B246DBB0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B246DA24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B246DBF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B246DA14();
  *a1 = result;
  return result;
}

uint64_t sub_1B246DC20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B246DA18();
  *a1 = result;
  return result;
}

uint64_t sub_1B246DC48(uint64_t a1)
{
  v2 = sub_1B246EBD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B246DC84(uint64_t a1)
{
  v2 = sub_1B246EBD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B246DCC0@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_1_16();
  sub_1B24AB744();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_1_16();
  sub_1B24AB744();
  v7 = v6;
  v32 = v8;
  OUTLINED_FUNCTION_1_16();
  sub_1B24AB744();
  v10 = v9;
  v31 = v11;
  OUTLINED_FUNCTION_1_16();
  sub_1B24AB744();
  v35 = v12;
  v30 = v13;
  OUTLINED_FUNCTION_1_16();
  sub_1B24AB744();
  v34 = v14;
  v29 = v15;
  OUTLINED_FUNCTION_1_16();
  v28 = sub_1B246BB1C(v16, v17, v18, v19, v20, v21, v22, v23);
  OUTLINED_FUNCTION_1_16();
  sub_1B24ABA4C();
  v24 = OUTLINED_FUNCTION_0_19();
  sub_1B24472E0(v24, v25, v26);
  v33 = v43;
  v36 = v44;
  __src[0] = v5;
  __src[1] = v3;
  __src[2] = v7;
  __src[3] = v32;
  __src[4] = v10;
  __src[5] = v31;
  __src[6] = v35;
  __src[7] = v30;
  __src[8] = v34;
  __src[9] = v29;
  LOBYTE(__src[10]) = v43;
  __src[11] = v44;
  __src[12] = v28;
  memcpy(a1, __src, 0x68uLL);
  v39[0] = v5;
  v39[1] = v3;
  v39[2] = v7;
  v39[3] = v32;
  v39[4] = v10;
  v39[5] = v31;
  v39[6] = v35;
  v39[7] = v30;
  v39[8] = v34;
  v39[9] = v29;
  v40 = v33;
  v41 = v36;
  v42 = v28;
  sub_1B246E744(__src, v37);
  return sub_1B246E77C(v39);
}

unint64_t sub_1B246E258()
{
  result = qword_1EB7D0BA8;
  if (!qword_1EB7D0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0BA8);
  }

  return result;
}

unint64_t sub_1B246E2B0()
{
  result = qword_1EB7D0BB0;
  if (!qword_1EB7D0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0BB0);
  }

  return result;
}

uint64_t sub_1B246E30C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1B246E34C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s20AdvancedCommerceInfoV4ItemV7DetailsVwxx()
{
}

uint64_t _s20AdvancedCommerceInfoV4ItemV7DetailsVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t _s20AdvancedCommerceInfoV4ItemV7DetailsVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 54) = *(a2 + 54);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 118) = *(a2 + 118);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 126) = *(a2 + 126);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 130) = *(a2 + 130);
  return a1;
}

uint64_t _s20AdvancedCommerceInfoV4ItemV7DetailsVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v7;

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  return a1;
}

uint64_t _s20AdvancedCommerceInfoV4ItemV7DetailsVwet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 132))
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

uint64_t _s20AdvancedCommerceInfoV4ItemV7DetailsVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 132) = 1;
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

    *(result + 132) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B246E7B4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B246E808()
{
  OUTLINED_FUNCTION_18_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_1_10();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t sub_1B246E85C()
{
  OUTLINED_FUNCTION_18_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_1_10();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t sub_1B246E8B0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B246E910()
{
  OUTLINED_FUNCTION_18_3();
  v1(0);
  OUTLINED_FUNCTION_1_10();
  v2 = OUTLINED_FUNCTION_22_1();
  v3(v2);
  return v0;
}

uint64_t _s20AdvancedCommerceInfoV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20AdvancedCommerceInfoV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B246EACC()
{
  result = qword_1EB7D0BF0;
  if (!qword_1EB7D0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0BF0);
  }

  return result;
}

unint64_t sub_1B246EB24()
{
  result = qword_1EB7D0BF8;
  if (!qword_1EB7D0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0BF8);
  }

  return result;
}

unint64_t sub_1B246EB7C()
{
  result = qword_1EB7D0C00;
  if (!qword_1EB7D0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0C00);
  }

  return result;
}

unint64_t sub_1B246EBD0()
{
  result = qword_1EB7D0C08;
  if (!qword_1EB7D0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0C08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B24472E0(a1, a2, a3);

  return sub_1B24472E0(0, 0, 6);
}

void OUTLINED_FUNCTION_3_13(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;
  a2[2] = 0;
  a2[3] = 0;
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_20_3()
{
  v2 = *(v0 - 2);
  v3 = *(v0 - 1);
  v4 = *v0;
  *(v1 - 104) = v2;
  *(v1 - 96) = v3;
  *(v1 - 88) = v4;
  sub_1B24472B8(v2, v3, v4);
  return v1 - 104;
}

uint64_t sub_1B246EE24()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CDA40 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v1 = qword_1EB7CDA48;
  *(v0 + 16) = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B246EEA8, v1, 0);
}

uint64_t sub_1B246EEA8()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 24) = sub_1B246F59C();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B246EF48;

  return sub_1B24EB7E4();
}

uint64_t sub_1B246EF48()
{
  OUTLINED_FUNCTION_4_0();
  *(*v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B246F044, 0, 0);
}

uint64_t sub_1B246F044()
{
  OUTLINED_FUNCTION_4_0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t static ExternalLinkAccount.open()()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 48) = type metadata accessor for ExternalGatewayRequest();
  *(v0 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B246F130, 0, 0);
}

uint64_t sub_1B246F130()
{
  v1 = v0[7];
  v2 = *(v0[6] + 28);
  v3 = type metadata accessor for ClientOverride(0);
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  if (qword_1ED699E80 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  v4 = v0[7];
  v6 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v6, qword_1ED69A108);
  v7 = sub_1B24D3E10();
  v8 = v5[8];
  v9 = (v4 + v5[9]);
  *v4 = 2;
  *(v4 + 8) = xmmword_1B257BCD0;
  *(v4 + 24) = 1;
  *(v4 + v8) = 0;
  *v9 = 0;
  v9[1] = 0;
  v10 = (v4 + v5[10]);
  *v10 = v7;
  v10[1] = v11;
  if (qword_1EB7CDA40 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v12 = qword_1EB7CDA48;
  v0[8] = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B246F26C, v12, 0);
}

uint64_t sub_1B246F26C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B246F59C();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1B246F310;
  v3 = v0[7];

  return sub_1B24EBD68(v3, v1);
}

uint64_t sub_1B246F310()
{
  OUTLINED_FUNCTION_4_0();
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B246F4A0;
  }

  else
  {

    v2 = sub_1B246F42C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B246F42C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 56);

  sub_1B2443A74(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B246F4A0()
{
  v1 = v0[11];

  v2 = parseError(_:)(v1);
  swift_getErrorValue();
  v3 = sub_1B2518EF0(v0[3]);
  v4 = v0[11];
  v5 = v0[7];
  if (v3)
  {
    sub_1B2443A74(v5);
  }

  else
  {
    swift_willThrow();

    sub_1B2443A74(v5);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B246F59C()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = (*(v1 + 120))();
    swift_weakAssign();
  }

  return Strong;
}

_BYTE *storeEnumTagSinglePayload for ExternalLinkAccount(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

uint64_t sub_1B246F6B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C58);
  OUTLINED_FUNCTION_1_1();
  v2 = v1;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C60);
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  type metadata accessor for StorefrontInternal();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v0);
  sub_1B256DE5C();
  sub_1B256DE1C();
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1B246F860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0438);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_1B247DAA8();
}

uint64_t sub_1B246FA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B246FA48, a4, 0);
}

uint64_t sub_1B246FA48()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B246FCB0(*(v0 + 24));
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B246FAA0(uint64_t a1)
{
  v3 = type metadata accessor for StorefrontInternal();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1B256DDAC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_1B245AEC8(a1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  sub_1B24732C0(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for StorefrontInternal);

  sub_1B247DAA8();
}

uint64_t sub_1B246FC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B246FC58, a4, 0);
}

uint64_t sub_1B246FC58()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B246FE0C(*(v0 + 24));
  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B246FCB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1B256D3CC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1B256D3BC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0438);
  (*(*(v6 - 8) + 16))(v4, a1, v6);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  swift_beginAccess();
  sub_1B253EF24();
  return swift_endAccess();
}

uint64_t sub_1B246FE0C(uint64_t a1)
{
  v75 = a1;
  v2 = type metadata accessor for StorefrontInternal();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v74 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v59 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0438);
  v7 = *(v86 - 8);
  v8 = MEMORY[0x1EEE9AC00](v86);
  v80 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v59 - v10;
  v11 = sub_1B256D3CC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C40);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v79 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v59 - v22;
  v87 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v59 = v1;
  v23 = *(v1 + 112);
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v77 = (v25 + 63) >> 6;
  v81 = (v12 + 16);
  v61 = v7 + 16;
  v83 = (v7 + 32);
  v84 = (v12 + 32);
  v71 = (v5 + 88);
  v70 = *MEMORY[0x1E69E8620];
  v64 = v7;
  v69 = (v7 + 8);
  v62 = v12;
  v68 = (v12 + 8);
  v67 = (v5 + 8);
  v28 = v4;
  v66 = v23;

  v30 = 0;
  v65 = v4;
  v78 = v11;
  v85 = v17;
  v72 = v24;
  while (v27)
  {
    v31 = v30;
LABEL_11:
    v34 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v35 = v34 | (v31 << 6);
    v36 = v66;
    v37 = v62;
    v38 = v82;
    (*(v62 + 16))(v82, *(v66 + 48) + *(v62 + 72) * v35, v11);
    v39 = v64;
    v40 = *(v36 + 56) + *(v64 + 72) * v35;
    v41 = v63;
    v42 = v86;
    (*(v64 + 16))(v63, v40, v86);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C48);
    v44 = *(v43 + 48);
    v45 = *(v37 + 32);
    v33 = v79;
    v45(v79, v38, v11);
    (*(v39 + 32))(v33 + v44, v41, v42);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v43);
    v28 = v65;
    v32 = v80;
    v17 = v85;
LABEL_12:
    v46 = v76;
    sub_1B24733F0(v33, v76);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C48);
    if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
    {

      if (*(v87 + 16))
      {
        v56 = v59;

        v58 = sub_1B2473460(v57, &v87);

        *(v56 + 112) = v58;
      }
    }

    v48 = *(v47 + 48);
    v11 = v78;
    (*v84)(v17, v46, v78);
    v49 = v46 + v48;
    v50 = v86;
    (*v83)(v32, v49, v86);
    sub_1B245AEC8(v75, v74);
    v51 = v73;
    sub_1B256DDEC();
    v52 = (*v71)(v51, v28);
    if (v52 == v70)
    {
      (*v67)(v51, v28);
      (*v81)(v60, v85, v11);
      v53 = v82;
      v17 = v85;
      sub_1B255FFE4();
      v54 = *v68;
      (*v68)(v53, v11);
      (*v69)(v32, v50);
      result = (v54)(v17, v11);
    }

    else
    {
      (*v69)(v32, v50);
      (*v68)(v17, v11);
      result = (*v67)(v51, v28);
    }

    v24 = v72;
  }

  v33 = v79;
  v32 = v80;
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v77)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C48);
      __swift_storeEnumTagSinglePayload(v33, 1, 1, v55);
      v27 = 0;
      goto LABEL_12;
    }

    v27 = *(v24 + 8 * v31);
    ++v30;
    if (v27)
    {
      v30 = v31;
      v11 = v78;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1B24705F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B256ED3C();
  sub_1B256DA7C();
  v6 = sub_1B256ED7C();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1B256EB5C();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_1B24706E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_1B256ED3C();
  MEMORY[0x1B274AFC0](a3 & 1);
  sub_1B256DA7C();
  v8 = sub_1B256ED7C();
  v9 = a4 + 56;
  v10 = -1 << *(a4 + 32);
  v11 = v8 & ~v10;
  if (((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  v13 = *(a4 + 48);
  while (1)
  {
    v14 = v13 + 24 * v11;
    if ((*(v14 + 16) & 1) == 0)
    {
      break;
    }

    if (a3)
    {
      goto LABEL_8;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    goto LABEL_13;
  }

LABEL_8:
  v15 = *v14 == a1 && *(v14 + 8) == a2;
  if (!v15 && (sub_1B256EB5C() & 1) == 0)
  {
    goto LABEL_13;
  }

  return 1;
}

uint64_t sub_1B2470808(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  swift_defaultActor_initialize();
  type metadata accessor for StorefrontInternal();
  OUTLINED_FUNCTION_16_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(v1 + OBJC_IVAR____TtC8StoreKit18StorefrontListener_storefrontUpdateTask) = 0;
  v9 = OBJC_IVAR____TtC8StoreKit18StorefrontListener_stream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C18);
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = MEMORY[0x1E69E7CC8];
  *(v1 + v9) = v10;
  sub_1B24731D0(a1, v1 + OBJC_IVAR____TtC8StoreKit18StorefrontListener_server, &qword_1EB7D0C20);
  sub_1B256DDAC();
  OUTLINED_FUNCTION_16_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  sub_1B247DAA8();

  sub_1B243E88C(a1, &qword_1EB7D0C20);
  return v1;
}

uint64_t sub_1B24709B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB7D0730);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C28);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for DaemonNotificationListener();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2470B1C, 0, 0);
}

uint64_t sub_1B2470B1C()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  *v1 = 0xD000000000000024;
  v1[1] = 0x80000001B258ED70;
  v1[2] = 0xD000000000000011;
  v1[3] = 0x80000001B258EC90;
  v5 = swift_task_alloc();
  v5[2] = 0xD000000000000024;
  v5[3] = 0x80000001B258ED70;
  v5[4] = 0xD000000000000011;
  v5[5] = 0x80000001B258EC90;
  (*(v3 + 104))(v2, *MEMORY[0x1E69E8650], v4);
  sub_1B256DE5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0710);
  sub_1B256DE1C();
  OUTLINED_FUNCTION_24_3();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_6_7(v6);

  return MEMORY[0x1EEE6D9C8](v7);
}

uint64_t sub_1B2470CA8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B2470D8C()
{
  v15 = v0;
  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 104);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
LABEL_12:
    sub_1B247321C(v1, type metadata accessor for DaemonNotificationListener);

    OUTLINED_FUNCTION_7_2();

    return v13();
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (!Strong)
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v5 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v5, qword_1ED69A108);
    v6 = sub_1B256E0CC();
    v7 = sub_1B256D5CC();
    v8 = os_log_type_enabled(v7, v6);
    v1 = *(v0 + 104);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 48);
    if (v8)
    {
      v12 = OUTLINED_FUNCTION_21_3();
      v14 = OUTLINED_FUNCTION_20_4();
      *v12 = 136446466;
      *(v12 + 4) = sub_1B2519814(0, 0xE000000000000000, &v14);
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_1B2519814(0xD000000000000023, 0x80000001B258EDA0, &v14);
      _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    (*(v10 + 8))(v9, v11);
    goto LABEL_12;
  }

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1B247101C;

  return sub_1B24716B4();
}

uint64_t sub_1B247101C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B2471100()
{
  OUTLINED_FUNCTION_4_0();

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_7();

  return MEMORY[0x1EEE6D9C8](v2);
}

uint64_t sub_1B247117C()
{
  OUTLINED_FUNCTION_4_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C30);
  OUTLINED_FUNCTION_2_2(v3);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2471210, v0, 0);
}

uint64_t sub_1B2471210()
{
  v21 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = OBJC_IVAR____TtC8StoreKit18StorefrontListener__currentStorefront;
  v0[10] = OBJC_IVAR____TtC8StoreKit18StorefrontListener__currentStorefront;
  OUTLINED_FUNCTION_24_3();
  sub_1B24731D0(v2 + v3, v1, &qword_1EB7D0C30);
  v4 = type metadata accessor for StorefrontInternal();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[9];
  if (EnumTagSinglePayload == 1)
  {
    sub_1B243E88C(v6, &qword_1EB7D0C30);
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v7 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v7, qword_1ED69A108);
    if (qword_1EB7CDA50 != -1)
    {
      OUTLINED_FUNCTION_3_14();
    }

    sub_1B256EE5C();
    v9 = v0[5];
    v8 = v0[6];
    v10 = sub_1B256E0CC();

    v11 = sub_1B256D5CC();

    if (os_log_type_enabled(v11, v10))
    {
      v12 = OUTLINED_FUNCTION_21_3();
      v13 = OUTLINED_FUNCTION_20_4();
      *v12 = 136446466;
      v20[0] = v13;
      v20[1] = 91;
      v20[2] = 0xE100000000000000;
      MEMORY[0x1B2749D50](v9, v8);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      sub_1B2519814(91, 0xE100000000000000, v20);

      OUTLINED_FUNCTION_25_3();
      *(v12 + 14) = sub_1B2519814(0xD00000000000001ELL, v14, v20);
      OUTLINED_FUNCTION_29_3(&dword_1B23EF000, v15, v16, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    v17 = swift_task_alloc();
    v0[11] = v17;
    *v17 = v0;
    v17[1] = sub_1B2471510;

    return sub_1B24716B4();
  }

  else
  {
    sub_1B24732C0(v6, v0[7], type metadata accessor for StorefrontInternal);
    OUTLINED_FUNCTION_31_2();

    OUTLINED_FUNCTION_7_2();

    return v19();
  }
}

uint64_t sub_1B2471510()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B2471610, v2, 0);
}

uint64_t sub_1B2471610()
{
  OUTLINED_FUNCTION_4_0();
  sub_1B24731D0(v0[8] + v0[10], v0[7], &qword_1EB7D0C30);

  OUTLINED_FUNCTION_7_2();

  return v1();
}

uint64_t sub_1B24716D4()
{
  v24 = v0;
  v1 = *(v0[6] + OBJC_IVAR____TtC8StoreKit18StorefrontListener_storefrontUpdateTask);
  if (v1)
  {
    v2 = qword_1ED699E80;

    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v3 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v3, qword_1ED69A108);
    if (qword_1EB7CDA50 != -1)
    {
      OUTLINED_FUNCTION_3_14();
    }

    sub_1B256EE5C();
    v5 = v0[4];
    v4 = v0[5];
    v6 = sub_1B256E0CC();

    v7 = sub_1B256D5CC();

    if (os_log_type_enabled(v7, v6))
    {
      v8 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      *v8 = 136446466;
      OUTLINED_FUNCTION_18_4();
      MEMORY[0x1B2749D50](v5, v4);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      v9 = sub_1B2519814(v22, v23, &v21);

      *(v8 + 4) = v9;
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_1B2519814(0xD000000000000029, 0x80000001B258EE60, &v21);
      _os_log_impl(&dword_1B23EF000, v7, v6, "%{public}s%{public}s", v8, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v10 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v10, qword_1ED69A108);
    if (qword_1EB7CDA50 != -1)
    {
      OUTLINED_FUNCTION_3_14();
    }

    sub_1B256EE5C();
    v12 = v0[2];
    v11 = v0[3];
    v13 = sub_1B256E0CC();

    v14 = sub_1B256D5CC();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      *v15 = 136446466;
      OUTLINED_FUNCTION_18_4();
      MEMORY[0x1B2749D50](v12, v11);
      MEMORY[0x1B2749D50](8285, 0xE200000000000000);
      sub_1B2519814(v22, v23, &v21);

      OUTLINED_FUNCTION_25_3();
      *(v15 + 14) = sub_1B2519814(0xD000000000000023, v16, &v21);
      OUTLINED_FUNCTION_29_3(&dword_1B23EF000, v17, v18, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    v1 = sub_1B2471C2C();
  }

  v0[7] = v1;

  v19 = swift_task_alloc();
  v0[8] = v19;
  *v19 = v0;
  v19[1] = sub_1B2471AB8;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1B2471AB8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B2471BD4, v2, 0);
}

uint64_t sub_1B2471BD4()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B2471C2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B256DDAC();
  OUTLINED_FUNCTION_16_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = sub_1B2473C08(&qword_1EB7CDA08, type metadata accessor for StorefrontListener);
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v0;
  swift_retain_n();
  sub_1B247DAA8();
  v10 = v9;
  *(v0 + OBJC_IVAR____TtC8StoreKit18StorefrontListener_storefrontUpdateTask) = v9;

  return v10;
}

uint64_t sub_1B2471D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v4[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C30);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for StorefrontInternal();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for StorefrontRequest();
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C20);
  v4[29] = swift_task_alloc();
  v4[30] = type metadata accessor for ClientOverride.Server(0);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1850);
  v4[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2471F54, a4, 0);
}

uint64_t sub_1B2471F54()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_1B24731D0(v0[19] + OBJC_IVAR____TtC8StoreKit18StorefrontListener_server, v1, &qword_1EB7D0C20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[32];
  if (EnumTagSinglePayload == 1)
  {
    sub_1B243E88C(v0[29], &qword_1EB7D0C20);
    type metadata accessor for ClientOverride(0);
    OUTLINED_FUNCTION_16_2();
  }

  else
  {
    v9 = v0[31];
    v10 = v0[28];
    sub_1B24732C0(v0[29], v9, type metadata accessor for ClientOverride.Server);
    v11 = type metadata accessor for ClientOverride(0);
    sub_1B24732C0(v9, v4 + v11[7], type metadata accessor for ClientOverride.Server);
    v12 = sub_1B256D3CC();
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    *v4 = xmmword_1B25793F0;
    v16 = v4 + v11[8];
    v17 = v4 + v11[9];
    v18 = v11[10];
    OUTLINED_FUNCTION_16_2();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v12);
    sub_1B2443AD0(*v4, *(v4 + 8));
    *v4 = xmmword_1B25793F0;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v16 = 0;
    *(v16 + 8) = 1;
    *v17 = 0;
    *(v17 + 8) = 1;
    sub_1B2473274(v10, v4 + v18, &qword_1EB7D1770);
    v5 = v4;
    v6 = 0;
    v7 = 1;
    v8 = v11;
  }

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_1B24731D0(v0[32], v0[27], &qword_1EB7D1850);
  if (qword_1EB7CDA50 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  v23 = v0[26];
  v22 = v0[27];
  v0[33] = qword_1EB7EDF60;
  sub_1B256EE5C();
  v24 = v0[9];
  v25 = (v22 + *(v23 + 20));
  *v25 = v0[8];
  v25[1] = v24;
  v26 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1B2472198()
{
  OUTLINED_FUNCTION_4_0();
  if (qword_1EB7CDA40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB7CDA48;
  *(v0 + 272) = qword_1EB7CDA48;

  return MEMORY[0x1EEE6DFA0](sub_1B247222C, v1, 0);
}

uint64_t sub_1B247222C()
{
  OUTLINED_FUNCTION_4_0();
  v1 = sub_1B246F59C();
  v0[35] = v1;
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_1B24722D4;
  v3 = v0[27];
  v4 = v0[25];

  return sub_1B2527C40(v4, v3, v1);
}

uint64_t sub_1B24722D4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_1B2472A18;
  }

  else
  {
    v4 = sub_1B2472400;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B2472400()
{
  v68 = v0;
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[19];
  v6 = *v2;
  v7 = v2[1];
  v8 = OBJC_IVAR____TtC8StoreKit18StorefrontListener__currentStorefront;
  OUTLINED_FUNCTION_24_3();
  sub_1B24731D0(v5 + v8, v4, &qword_1EB7D0C30);
  if (__swift_getEnumTagSinglePayload(v4, 1, v3))
  {
    sub_1B243E88C(v0[22], &qword_1EB7D0C30);
LABEL_3:
    v9 = v0[21];
    sub_1B245AEC8(v0[25], v9);
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    sub_1B2473274(v9, v5 + v8, &qword_1EB7D0C30);
    swift_endAccess();
    if (qword_1ED699E80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
    }

    v10 = v0[21];
    v11 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v11, qword_1ED69A108);
    sub_1B256E4FC();

    v66 = 0xD000000000000016;
    v67 = 0x80000001B258EDF0;
    sub_1B24731D0(v5 + v8, v10, &qword_1EB7D0C30);
    v12 = sub_1B256D9FC();
    MEMORY[0x1B2749D50](v12);

    sub_1B256EE5C();
    v1 = v0[14];
    v13 = v0[15];
    v14 = sub_1B256E0CC();

    v15 = sub_1B256D5CC();

    if (os_log_type_enabled(v15, v14))
    {
      v16 = OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_20_4();
      *v16 = 136446466;
      OUTLINED_FUNCTION_11_7();
      MEMORY[0x1B2749D50](v1, v13);
      OUTLINED_FUNCTION_23_3();
      v1 = OUTLINED_FUNCTION_22_3(v17, v18, v19, v20, v21, v22, v23, v24, v60, v62, v65, v66, v67);

      *(v16 + 4) = v1;
      *(v16 + 12) = 2082;
      v25 = sub_1B2519814(0xD000000000000016, 0x80000001B258EDF0, &v65);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1B23EF000, v15, v14, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_11_4();
    }

    else
    {
    }

    v33 = v0[27];
    v34 = v0[25];
    v35 = *(v0[19] + OBJC_IVAR____TtC8StoreKit18StorefrontListener_stream);
    sub_1B246FAA0(v34);

    OUTLINED_FUNCTION_2_15();
    sub_1B247321C(v34, v36);
    OUTLINED_FUNCTION_0_21();
    v38 = v33;
    goto LABEL_15;
  }

  v26 = v0[24];
  v27 = v0[22];
  sub_1B245AEC8(v27, v26);

  sub_1B243E88C(v27, &qword_1EB7D0C30);
  v29 = *v26;
  v28 = v26[1];

  OUTLINED_FUNCTION_2_15();
  sub_1B247321C(v26, v30);
  if (v6 == v29 && v7 == v28)
  {
  }

  else
  {
    OUTLINED_FUNCTION_22_1();
    v32 = sub_1B256EB5C();

    if ((v32 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v41 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v41, qword_1ED69A108);
  sub_1B256EE5C();
  v42 = v0[16];
  v43 = v0[17];
  v44 = sub_1B256E0CC();

  v45 = sub_1B256D5CC();

  v46 = os_log_type_enabled(v45, v44);
  v35 = v0[27];
  v47 = v0[25];
  if (v46)
  {
    v48 = OUTLINED_FUNCTION_21_3();
    v1 = OUTLINED_FUNCTION_20_4();
    *v48 = 136446466;
    OUTLINED_FUNCTION_11_7();
    v63 = v35;
    v35 = &v66;
    MEMORY[0x1B2749D50](v42, v43);
    OUTLINED_FUNCTION_23_3();
    v57 = OUTLINED_FUNCTION_22_3(v49, v50, v51, v52, v53, v54, v55, v56, "Storefront updated to ", v63, v65, v66, v67);

    *(v48 + 4) = v57;
    *(v48 + 12) = 2082;
    *(v48 + 14) = sub_1B2519814(0xD00000000000001FLL, v61 | 0x8000000000000000, &v65);
    _os_log_impl(&dword_1B23EF000, v45, v44, "%{public}s%{public}s", v48, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();

    OUTLINED_FUNCTION_2_15();
    sub_1B247321C(v47, v58);
    OUTLINED_FUNCTION_0_21();
    v38 = v64;
  }

  else
  {

    OUTLINED_FUNCTION_2_15();
    sub_1B247321C(v47, v59);
    OUTLINED_FUNCTION_0_21();
    v38 = v35;
  }

LABEL_15:
  sub_1B247321C(v38, v37);
  OUTLINED_FUNCTION_13_7();
  sub_1B243E88C(v35, &qword_1EB7D1850);
  *(v1 + OBJC_IVAR____TtC8StoreKit18StorefrontListener_storefrontUpdateTask) = 0;

  OUTLINED_FUNCTION_7_2();

  return v39();
}

uint64_t sub_1B2472A18()
{
  v31 = v0;

  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v2 = v0[37];
  v3 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v3, qword_1ED69A108);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1B256E4FC();
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  MEMORY[0x1B2749D50](0xD00000000000001BLL, 0x80000001B258EDD0);
  v0[18] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  sub_1B256E78C();
  v5 = v0[10];
  v4 = v0[11];
  sub_1B256EE5C();
  v7 = v0[12];
  v6 = v0[13];
  v8 = sub_1B256E0AC();

  v9 = sub_1B256D5CC();

  v10 = os_log_type_enabled(v9, v8);
  v11 = v0[37];
  v12 = v0[27];
  if (v10)
  {
    v1 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_20_4();
    *v1 = 136446466;
    OUTLINED_FUNCTION_11_7();
    MEMORY[0x1B2749D50](v7, v6);
    OUTLINED_FUNCTION_23_3();
    v21 = OUTLINED_FUNCTION_22_3(v13, v14, v15, v16, v17, v18, v19, v20, v5, v12, v28, v29, v30);

    *(v1 + 4) = v21;
    *(v1 + 12) = 2082;
    v12 = sub_1B2519814(v26, v4, &v28);

    *(v1 + 14) = v12;
    _os_log_impl(&dword_1B23EF000, v9, v8, "%{public}s%{public}s", v1, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_11_4();

    OUTLINED_FUNCTION_0_21();
    v23 = v27;
  }

  else
  {

    OUTLINED_FUNCTION_0_21();
    v23 = v12;
  }

  sub_1B247321C(v23, v22);
  OUTLINED_FUNCTION_13_7();
  sub_1B243E88C(v12, &qword_1EB7D1850);
  *(v1 + OBJC_IVAR____TtC8StoreKit18StorefrontListener_storefrontUpdateTask) = 0;

  OUTLINED_FUNCTION_7_2();

  return v24();
}

uint64_t sub_1B2472D2C()
{
  sub_1B243E88C(v0 + OBJC_IVAR____TtC8StoreKit18StorefrontListener_server, &qword_1EB7D0C20);
  sub_1B243E88C(v0 + OBJC_IVAR____TtC8StoreKit18StorefrontListener__currentStorefront, &qword_1EB7D0C30);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B2472DAC()
{
  sub_1B2472D2C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for StorefrontListener()
{
  result = qword_1EB7CD9F0;
  if (!qword_1EB7CD9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B2472E2C()
{
  sub_1B2472F50(319, &qword_1EB7CDA38, type metadata accessor for ClientOverride.Server);
  if (v0 <= 0x3F)
  {
    sub_1B2472F50(319, &qword_1EB7CDA30, type metadata accessor for StorefrontInternal);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B2472F50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B256E2EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B2472FA8()
{
  result = qword_1EB7CD958;
  if (!qword_1EB7CD958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D0C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD958);
  }

  return result;
}

uint64_t sub_1B247300C()
{
  sub_1B2471688();
}

uint64_t sub_1B2473044()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v3[1] = sub_1B24741E0;
  v5 = OUTLINED_FUNCTION_5_8();

  return sub_1B24709B8(v5, v6, v7, v1);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B2473130()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v3[1] = sub_1B2445514;
  v5 = OUTLINED_FUNCTION_5_8();

  return sub_1B2471D60(v5, v6, v7, v1);
}

uint64_t sub_1B24731D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return v3;
}

uint64_t sub_1B247321C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B2473274(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_20_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return v3;
}

uint64_t sub_1B24732C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  return a2;
}

uint64_t sub_1B247331C()
{
  v1 = type metadata accessor for StorefrontInternal();
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_7_7();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v3[1] = sub_1B24741E0;
  v5 = OUTLINED_FUNCTION_5_8();

  return sub_1B246FC38(v5, v6, v7, v0, v8);
}

uint64_t sub_1B24733F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1B2473460(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_1B2473B80(v10, v6, v4, a2);
      MEMORY[0x1B274BFF0](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = (v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1B255FE64(0, v6, v7);
  v8 = sub_1B24735D0(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

uint64_t sub_1B24735D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v57 = a4;
  v46[0] = a2;
  v48 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C48);
  MEMORY[0x1EEE9AC00](v56);
  v6 = v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0438);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v46 - v9;
  v11 = sub_1B256D3CC();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v64 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = v46 - v15;
  v58 = a3;
  v59 = 0;
  v18 = 0;
  v19 = *(a3 + 64);
  v47 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v68 = v16 + 16;
  v54 = v16;
  v55 = v8;
  v67 = (v16 + 8);
  v50 = (v8 + 8);
  v51 = v8 + 16;
  v49 = v7;
  v63 = v10;
  v52 = v23;
  v53 = v46 - v15;
LABEL_5:
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v62 = (v22 - 1) & v22;
LABEL_12:
    v27 = v24 | (v18 << 6);
    v28 = v58;
    v29 = v58[6];
    v66 = *(v54 + 72);
    v30 = *(v54 + 16);
    v30(v17, v29 + v66 * v27, v11);
    v31 = v28[7];
    v32 = *(v55 + 72);
    v60 = v27;
    v33 = v31 + v32 * v27;
    v34 = *(v55 + 16);
    v35 = v63;
    v34(v63, v33, v7);
    v65 = v30;
    v30(v6, v17, v11);
    v34(&v6[*(v56 + 48)], v35, v7);
    v36 = *v57;
    if (*(*v57 + 16))
    {
      v61 = v18;
      sub_1B2473C08(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);

      v37 = v6;
      v38 = sub_1B256D8EC();
      v39 = ~(-1 << *(v36 + 32));
      while (1)
      {
        v40 = v38 & v39;
        if (((*(v36 + 56 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
        {
          break;
        }

        v41 = v64;
        v65(v64, *(v36 + 48) + v40 * v66, v11);
        sub_1B2473C08(&qword_1EB7D0630, MEMORY[0x1E69695A8]);
        v42 = sub_1B256D96C();
        v43 = *v67;
        (*v67)(v41, v11);
        v38 = v40 + 1;
        if (v42)
        {

          v6 = v37;
          sub_1B243E88C(v37, &qword_1EB7D0C48);
          v7 = v49;
          (*v50)(v63, v49);
          v17 = v53;
          result = v43(v53);
          v18 = v61;
          v22 = v62;
          v23 = v52;
          goto LABEL_5;
        }
      }

      v6 = v37;
      v7 = v49;
      v22 = v62;
      v44 = v63;
      v18 = v61;
    }

    else
    {
      v22 = v62;
      v44 = v35;
    }

    v23 = v52;
    sub_1B243E88C(v6, &qword_1EB7D0C48);
    (*v50)(v44, v7);
    v17 = v53;
    result = (*v67)(v53);
    *(v48 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
    if (__OFADD__(v59++, 1))
    {
      goto LABEL_24;
    }
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      return sub_1B2473C50(v48, v46[0], v59, v58);
    }

    v26 = *(v47 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v62 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t *sub_1B2473B80(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1B24735D0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B2473C08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B2473C50(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0438);
  v54 = *(v58 - 8);
  v8 = MEMORY[0x1EEE9AC00](v58);
  v57 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = v44 - v10;
  v11 = sub_1B256D3CC();
  v53 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v56 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = v44 - v14;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C50);
  result = sub_1B256E8DC();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_1B2473C08(&qword_1EB7CDC38, MEMORY[0x1E69695A8]);
    result = sub_1B256D8EC();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_25:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B2474100()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0438);
  OUTLINED_FUNCTION_2_2(v1);
  OUTLINED_FUNCTION_7_7();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_8(v2);
  *v3 = v4;
  v3[1] = sub_1B24741E0;
  v5 = OUTLINED_FUNCTION_5_8();

  return sub_1B246FA28(v5, v6, v7, v0, v8);
}

uint64_t OUTLINED_FUNCTION_3_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a12;
  v15 = a13;

  return sub_1B2519814(v14, v15, &a11);
}

void OUTLINED_FUNCTION_23_3()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_29_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t sub_1B24743C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B2474404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B2474454()
{
  v0 = sub_1B256E91C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B24744A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C98);
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2474A10();
  sub_1B256EDFC();
  v15 = 0;
  OUTLINED_FUNCTION_4_7();
  sub_1B256EA2C();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C80);
    sub_1B2474AB8(&qword_1EB7D0CA0, sub_1B2474B30);
    OUTLINED_FUNCTION_4_7();
    sub_1B256EA5C();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1B2474664(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C70);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2474A10();
  sub_1B256EDBC();
  if (!v1)
  {
    v4 = sub_1B256E97C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0C80);
    sub_1B2474AB8(&qword_1EB7D0C88, sub_1B2474A64);
    sub_1B256E9AC();
    v6 = OUTLINED_FUNCTION_3_15();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1B2474894@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2474454();
  *a1 = result;
  return result;
}

unint64_t sub_1B24748C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B23F3B38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B24748F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2474454();
  *a1 = result;
  return result;
}

uint64_t sub_1B2474920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B2465A24();
  *a1 = result;
  return result;
}

uint64_t sub_1B2474948(uint64_t a1)
{
  v2 = sub_1B2474A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2474984(uint64_t a1)
{
  v2 = sub_1B2474A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B24749C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B2474664(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1B2474A10()
{
  result = qword_1EB7D0C78;
  if (!qword_1EB7D0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0C78);
  }

  return result;
}

unint64_t sub_1B2474A64()
{
  result = qword_1EB7D0C90;
  if (!qword_1EB7D0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0C90);
  }

  return result;
}

uint64_t sub_1B2474AB8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7D0C80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B2474B30()
{
  result = qword_1EB7D0CA8;
  if (!qword_1EB7D0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0CA8);
  }

  return result;
}

void sub_1B2474B84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1B2455488();
    if (v3)
    {
      sub_1B2456DAC(*(a1 + 56) + 32 * v2, &v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0AC0);
      if (OUTLINED_FUNCTION_6_8())
      {
        sub_1B247A514(a1, &v20);

        if (!v22)
        {

          sub_1B2475424(&v20);
          return;
        }

        if (OUTLINED_FUNCTION_6_8())
        {
          v4 = 0;
          v5 = *(v19 + 16);
          v6 = MEMORY[0x1E69E7CC0];
LABEL_7:
          v7 = v4;
          while (v5 != v7)
          {
            if (v7 >= *(v19 + 16))
            {
              __break(1u);
              return;
            }

            v4 = v7 + 1;

            sub_1B2474DA8(v8, &v20);
            v9 = *(&v20 + 1);
            v7 = v4;
            if (*(&v20 + 1))
            {
              v10 = v20;
              v11 = v22;
              v17 = v23;
              v18 = v21;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B2448FF4();
                v6 = v15;
              }

              v12 = *(v6 + 16);
              v13 = v12 + 1;
              if (v12 >= *(v6 + 24) >> 1)
              {
                sub_1B2448FF4();
                v13 = v12 + 1;
                v6 = v16;
              }

              *(v6 + 16) = v13;
              v14 = (v6 + 40 * v12);
              v14[4] = v10;
              v14[5] = v9;
              v14[6] = v18;
              v14[7] = v11;
              v14[8] = v17;
              goto LABEL_7;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B2474DA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v4 = sub_1B2455488();
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1B2456DAC(*(a1 + 56) + 32 * v4, &v14);
  if ((OUTLINED_FUNCTION_2_16() & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = v12;
  sub_1B247A514(a1, &v14);
  if (!v15)
  {
    goto LABEL_12;
  }

  if ((OUTLINED_FUNCTION_2_16() & 1) == 0)
  {
LABEL_9:

LABEL_10:
    v8 = 0;
    v7 = 0;
    v10 = 0;
    v11 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  v8 = v12;
  v7 = v13;
  sub_1B247A514(a1, &v14);

  if (!v15)
  {
LABEL_12:

    result = sub_1B2475424(&v14);
    goto LABEL_10;
  }

  result = OUTLINED_FUNCTION_2_16();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = v12;
  v11 = v13;
LABEL_11:
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v6;
  return result;
}

uint64_t sub_1B2474F14(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0CD8);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B247571C();
  sub_1B256EDFC();
  v10[15] = 0;
  OUTLINED_FUNCTION_4_7();
  sub_1B256EA2C();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_4_7();
    sub_1B256EA2C();
    v10[13] = 2;
    OUTLINED_FUNCTION_4_7();
    sub_1B256EA4C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1B2475084@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0CC8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B247571C();
  sub_1B256EDBC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1B256E97C();
  v15 = v7;
  v13 = sub_1B256E97C();
  v14 = v8;
  v9 = sub_1B256E99C();
  v10 = OUTLINED_FUNCTION_1_17();
  v11(v10);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v9;
  return result;
}

uint64_t sub_1B24752C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F3B74();
  *a1 = result;
  return result;
}

uint64_t sub_1B24752F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B23F3BC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B2475324@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B23F3B74();
  *a1 = result;
  return result;
}

uint64_t sub_1B247534C(uint64_t a1)
{
  v2 = sub_1B247571C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2475388(uint64_t a1)
{
  v2 = sub_1B247571C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1B24753C4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2475084(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1B2475424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D05F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionGroupStatusInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B247557C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B24755BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B2475618()
{
  result = qword_1EB7D0CB0;
  if (!qword_1EB7D0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0CB0);
  }

  return result;
}

unint64_t sub_1B2475670()
{
  result = qword_1EB7D0CB8;
  if (!qword_1EB7D0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0CB8);
  }

  return result;
}

unint64_t sub_1B24756C8()
{
  result = qword_1EB7D0CC0;
  if (!qword_1EB7D0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0CC0);
  }

  return result;
}

unint64_t sub_1B247571C()
{
  result = qword_1EB7D0CD0;
  if (!qword_1EB7D0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0CD0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusInternal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B2475850()
{
  result = qword_1EB7D0CE0;
  if (!qword_1EB7D0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0CE0);
  }

  return result;
}

unint64_t sub_1B24758A8()
{
  result = qword_1EB7D0CE8;
  if (!qword_1EB7D0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0CE8);
  }

  return result;
}

unint64_t sub_1B2475900()
{
  result = qword_1EB7D0CF0;
  if (!qword_1EB7D0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0CF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return swift_dynamicCast();
}

uint64_t sub_1B2475A14()
{
  sub_1B2475A6C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B2475A6C()
{
  if (!qword_1ED699FF0)
  {
    v0 = sub_1B256D14C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED699FF0);
    }
  }
}

void sub_1B2475AFC()
{
  sub_1B2441328(319, &qword_1ED699FE8);
  if (v0 <= 0x3F)
  {
    sub_1B2441328(319, &qword_1ED699E38);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ClientOverride.Server(319);
      if (v2 <= 0x3F)
      {
        sub_1B2441328(319, &qword_1ED699E30);
        if (v3 <= 0x3F)
        {
          sub_1B2475BF8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B2475BF8()
{
  if (!qword_1ED699FE0)
  {
    sub_1B256D3CC();
    v0 = sub_1B256E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED699FE0);
    }
  }
}

uint64_t sub_1B2475C50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_4();
  v5 = v5 && v4 == 0xE900000000000063;
  if (v5 || (OUTLINED_FUNCTION_8_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_7();
    v8 = v5 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_8_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_20_5();
      v9 = v5 && a2 == 0xE700000000000000;
      if (v9 || (OUTLINED_FUNCTION_8_1() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73655465646F6378 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_8_1();

        if (v11)
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

uint64_t sub_1B2475D58(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x69746375646F7270;
      break;
    case 2:
      result = 0x786F62646E6173;
      break;
    case 3:
      result = 0x73655465646F6378;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B2475DE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001B258EF30 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B256EB5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B2475E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2475C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B2475EBC(uint64_t a1)
{
  v2 = sub_1B2478278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2475EF8(uint64_t a1)
{
  v2 = sub_1B2478278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2475F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B2475DE4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B2475F8C(uint64_t a1)
{
  v2 = sub_1B2478330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2475FC8(uint64_t a1)
{
  v2 = sub_1B2478330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2476004()
{
  v1 = v0;
  v2 = sub_1B256D14C();
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = type metadata accessor for ClientOverride.Server(0);
  v10 = OUTLINED_FUNCTION_2_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_7_11();
  sub_1B24785FC(v1, v13, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
  v16 = 0x6974616D6F747541;
  switch(__swift_getEnumTagSinglePayload(v13, 3, v15))
  {
    case 1u:
      return v16;
    case 2u:
      v16 = 0x69746375646F7250;
      break;
    case 3u:
      v16 = 0x786F62646E6153;
      break;
    default:
      (*(v4 + 32))(v8, v13, v2);
      OUTLINED_FUNCTION_1_18();
      sub_1B2478384(v17, v18);
      v19 = sub_1B256EAAC();
      MEMORY[0x1B2749D50](v19);

      MEMORY[0x1B2749D50](41, 0xE100000000000000);
      v16 = 0x73655465646F6358;
      (*(v4 + 8))(v8, v2);
      break;
  }

  return v16;
}

uint64_t sub_1B2476230@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D00);
  OUTLINED_FUNCTION_2_2(v4);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_6();
  v88 = v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D08);
  OUTLINED_FUNCTION_1_1();
  v87 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_6();
  v86 = v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D10);
  OUTLINED_FUNCTION_1_1();
  v89 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_6();
  v91 = v12;
  sub_1B256D14C();
  OUTLINED_FUNCTION_1_1();
  v97 = v14;
  v98 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v93 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D18);
  OUTLINED_FUNCTION_1_1();
  v94 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v84 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D20);
  OUTLINED_FUNCTION_2_2(v22);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D28);
  OUTLINED_FUNCTION_1_1();
  v28 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_27_1();
  v30 = type metadata accessor for ClientOverride.Server(0);
  v31 = OUTLINED_FUNCTION_2_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v96 = v33 - v32;
  v34 = a1[3];
  v105 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1B2478278();
  v35 = v99;
  sub_1B256EDBC();
  if (v35)
  {

    __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
    sub_1B243E88C(v25, &qword_1EB7D0D20);
  }

  else
  {
    v99 = v21;
    v85 = v17;
    v40 = v97;
    v39 = v98;
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    (*(v28 + 32))(v2, v25, v26);
    v41 = sub_1B256E9CC();
    if (*(v41 + 16))
    {
      v42 = *(v41 + 32);

      switch(v42)
      {
        case 1:
          v64 = OUTLINED_FUNCTION_10_6();
          v65(v64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
          v45 = OUTLINED_FUNCTION_9_10();
          v47 = 2;
          goto LABEL_24;
        case 2:
          v57 = OUTLINED_FUNCTION_10_6();
          v58(v57);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
          v45 = OUTLINED_FUNCTION_9_10();
          v47 = 3;
          goto LABEL_24;
        case 3:
          v59 = v39;
          v60 = v40;
          LOBYTE(v104[0]) = 3;
          sub_1B2478330();
          v61 = v99;
          v62 = v2;
          sub_1B256E92C();
          v63 = v28;
          OUTLINED_FUNCTION_1_18();
          sub_1B2478384(v67, v68);
          v69 = v93;
          v70 = v61;
          v71 = v85;
          sub_1B256E9AC();
          (*(v94 + 8))(v70, v71);
          (*(v63 + 8))(v62, v26);
          v36 = v105;
          v42 = v96;
          (*(v60 + 32))(v96, v69, v59);
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
          __swift_storeEnumTagSinglePayload(v42, 0, 3, v72);
          break;
        default:
          v43 = OUTLINED_FUNCTION_10_6();
          v44(v43);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
          v45 = OUTLINED_FUNCTION_9_10();
          v47 = 1;
LABEL_24:
          __swift_storeEnumTagSinglePayload(v45, v47, 3, v46);
          v36 = v105;
          break;
      }

LABEL_25:
      sub_1B24782CC(v42, v95);
      return __swift_destroy_boxed_opaque_existential_1(v36);
    }

    v48 = OUTLINED_FUNCTION_10_6();
    v49(v48);
  }

  v36 = v105;
  __swift_project_boxed_opaque_existential_1(v105, v105[3]);
  OUTLINED_FUNCTION_29_4();
  sub_1B256EDAC();
  if (!v35)
  {
    __swift_project_boxed_opaque_existential_1(v104, v104[3]);
    OUTLINED_FUNCTION_29_4();
    v37 = sub_1B256EB7C();
    v42 = v37;
    v50 = v38;
    v51 = v37 == 1869903201 && v38 == 0xE400000000000000;
    if (v51 || (OUTLINED_FUNCTION_12_9() & 1) != 0 || ((OUTLINED_FUNCTION_21_4(), v51) ? (v53 = v50 == v52) : (v53 = 0), v53 || (OUTLINED_FUNCTION_12_9() & 1) != 0))
    {

      v54 = 1;
    }

    else
    {
      v73 = v42 == 1685025392 && v50 == 0xE400000000000000;
      if (v73 || (OUTLINED_FUNCTION_12_9() & 1) != 0 || ((OUTLINED_FUNCTION_15_7(), v51) ? (v75 = v50 == v74) : (v75 = 0), v75 || (OUTLINED_FUNCTION_12_9() & 1) != 0))
      {

        v54 = 2;
      }

      else
      {
        OUTLINED_FUNCTION_20_5();
        v76 = v51 && v50 == 0xE700000000000000;
        if (v76 || (OUTLINED_FUNCTION_12_9() & 1) != 0)
        {

          v54 = 3;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D30);
          sub_1B256D58C();
          v77 = v88;
          sub_1B256D59C();

          if (__swift_getEnumTagSinglePayload(v77, 1, v90) == 1)
          {
            sub_1B243E88C(v77, &qword_1EB7D0D00);
            v78 = sub_1B256E58C();
            swift_allocError();
            v80 = v79;
            v36 = v105;
            __swift_project_boxed_opaque_existential_1(v105, v105[3]);
            sub_1B256ED8C();
            sub_1B256E54C();
            (*(*(v78 - 8) + 104))(v80, *MEMORY[0x1E69E6B00], v78);
            swift_willThrow();
            (*(v89 + 8))(v91, v92);
            __swift_destroy_boxed_opaque_existential_1(v104);
            return __swift_destroy_boxed_opaque_existential_1(v36);
          }

          v81 = v87;
          v82 = v86;
          v83 = v90;
          (*(v87 + 32))(v86, v77, v90);
          swift_getKeyPath();
          sub_1B256D5AC();

          v42 = MEMORY[0x1B2749CC0](v100, v101, v102, v103);

          sub_1B256D0FC();

          (*(v81 + 8))(v82, v83);
          (*(v89 + 8))(v91, v92);
          v54 = 0;
          v36 = v105;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
    v55 = OUTLINED_FUNCTION_9_10();
    __swift_storeEnumTagSinglePayload(v55, v54, 3, v56);
    __swift_destroy_boxed_opaque_existential_1(v104);
    goto LABEL_25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_1B2476C68(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D48);
  OUTLINED_FUNCTION_1_1();
  v55 = v4;
  v56 = v3;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_6();
  v52 = v6;
  sub_1B256D14C();
  OUTLINED_FUNCTION_1_1();
  v53 = v8;
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v57 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D50);
  OUTLINED_FUNCTION_1_1();
  v50 = v12;
  v51 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_6();
  v49 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D58);
  OUTLINED_FUNCTION_1_1();
  v47 = v16;
  v48 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D60);
  OUTLINED_FUNCTION_1_1();
  v45 = v19;
  v46 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for ClientOverride.Server(0);
  v24 = OUTLINED_FUNCTION_2_2(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D68);
  OUTLINED_FUNCTION_1_1();
  v30 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v44 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2478278();
  sub_1B256EDFC();
  OUTLINED_FUNCTION_7_11();
  sub_1B24785FC(v58, v27, v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D20A0);
  switch(__swift_getEnumTagSinglePayload(v27, 3, v35))
  {
    case 1u:
      v59 = 0;
      sub_1B2478474();
      OUTLINED_FUNCTION_16_8();
      (*(v45 + 8))(v22, v46);
      goto LABEL_6;
    case 2u:
      v60 = 1;
      sub_1B2478420();
      OUTLINED_FUNCTION_16_8();
      (*(v47 + 8))(v1, v48);
      goto LABEL_6;
    case 3u:
      v61 = 2;
      sub_1B24783CC();
      v43 = v49;
      OUTLINED_FUNCTION_16_8();
      (*(v50 + 8))(v43, v51);
LABEL_6:
      result = (*(v30 + 8))(v33, v28);
      break;
    default:
      v37 = v53;
      v36 = v54;
      (*(v53 + 32))(v57, v27, v54);
      v62 = 3;
      sub_1B2478330();
      v38 = v52;
      OUTLINED_FUNCTION_16_8();
      OUTLINED_FUNCTION_1_18();
      sub_1B2478384(v39, v40);
      v41 = v56;
      sub_1B256EA5C();
      (*(v55 + 8))(v38, v41);
      (*(v37 + 8))(v57, v36);
      result = (*(v30 + 8))(v33, v28);
      break;
  }

  return result;
}

uint64_t sub_1B24771A4(uint64_t a1)
{
  v2 = sub_1B2478474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24771E0(uint64_t a1)
{
  v2 = sub_1B2478474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B247721C(uint64_t a1)
{
  v2 = sub_1B2478420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2477258(uint64_t a1)
{
  v2 = sub_1B2478420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2477294(uint64_t a1)
{
  v2 = sub_1B24783CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B24772D0(uint64_t a1)
{
  v2 = sub_1B24783CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B2477340()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_2_2(v3);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_0();
  v5 = sub_1B256D3CC();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_27_1();
  if (v0[3])
  {
    MEMORY[0x1B2749D50](v0[2]);
    OUTLINED_FUNCTION_24_4();
    MEMORY[0x1B2749D50](0x2864696272, 0xE500000000000000);
  }

  if (v0[5])
  {
    MEMORY[0x1B2749D50](v0[4]);
    OUTLINED_FUNCTION_24_4();
    MEMORY[0x1B2749D50](0x287372766272, 0xE600000000000000);
  }

  v9 = type metadata accessor for ClientOverride(0);
  if ((*(v0 + v9[9] + 8) & 1) == 0)
  {
    v10 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v10);

    OUTLINED_FUNCTION_24_4();
    MEMORY[0x1B2749D50](0x2864496D616461, 0xE700000000000000);
  }

  if ((*(v0 + v9[8] + 8) & 1) == 0)
  {
    v11 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v11);

    OUTLINED_FUNCTION_24_4();
    MEMORY[0x1B2749D50](0x6449737256747865, 0xE900000000000028);
  }

  sub_1B24784C8(v0 + v9[10], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
  {
    sub_1B243E88C(v2, &qword_1EB7D1770);
  }

  else
  {
    (*(v7 + 32))(v1, v2, v5);
    OUTLINED_FUNCTION_2_17();
    sub_1B2478384(v12, v13);
    v14 = sub_1B256EAAC();
    MEMORY[0x1B2749D50](v14);

    OUTLINED_FUNCTION_24_4();
    MEMORY[0x1B2749D50](677669238, 0xE400000000000000);

    (*(v7 + 8))(v1, v5);
  }

  v15 = sub_1B2476004();
  MEMORY[0x1B2749D50](v15);

  MEMORY[0x1B2749D50](41, 0xE100000000000000);
  MEMORY[0x1B2749D50](0x28726576726573, 0xE700000000000000);

  return 0;
}

uint64_t sub_1B24776FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001B258EF50 == a2;
  if (v3 || (sub_1B256EB5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4274736575716572 && a2 == 0xEF4449656C646E75;
    if (v6 || (sub_1B256EB5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001B258EF70 == a2;
      if (v7 || (sub_1B256EB5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726576726573 && a2 == 0xE600000000000000;
        if (v8 || (sub_1B256EB5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x80000001B258EF90 == a2;
          if (v9 || (sub_1B256EB5C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65744965726F7473 && a2 == 0xEB0000000044496DLL;
            if (v10 || (sub_1B256EB5C() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1B256EB5C();

              if (v12)
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

unint64_t sub_1B2477944(char a1)
{
  result = 0x4274736575716572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x726576726573;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x65744965726F7473;
      break;
    case 6:
      result = 0x4449726F646E6576;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1B2477A28(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0DA0);
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_27_1();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2478538();
  sub_1B256EDFC();
  v15 = *v4;
  v16 = v4[1];
  sub_1B24786B4(*v4, v16);
  sub_1B2443C2C();
  sub_1B256EA0C();
  if (v2)
  {
    sub_1B2443AD0(v15, v16);
  }

  else
  {
    sub_1B2443AD0(v15, v16);
    OUTLINED_FUNCTION_4_8(1);
    sub_1B256E9FC();
    OUTLINED_FUNCTION_4_8(2);
    sub_1B256E9FC();
    type metadata accessor for ClientOverride(0);
    type metadata accessor for ClientOverride.Server(0);
    OUTLINED_FUNCTION_8_9();
    sub_1B2478384(v10, v11);
    OUTLINED_FUNCTION_22_4();
    sub_1B256EA5C();
    OUTLINED_FUNCTION_4_8(4);
    sub_1B256EA1C();
    OUTLINED_FUNCTION_4_8(5);
    sub_1B256EA1C();
    sub_1B256D3CC();
    OUTLINED_FUNCTION_2_17();
    sub_1B2478384(v12, v13);
    OUTLINED_FUNCTION_22_4();
    sub_1B256EA0C();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1B2477CAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  type metadata accessor for ClientOverride.Server(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_27_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0D88);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for ClientOverride(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = (v11 - v10);
  *(v11 - v10) = xmmword_1B25793F0;
  v32 = v13;
  v14 = v13[10];
  v15 = sub_1B256D3CC();
  v33 = v14;
  __swift_storeEnumTagSinglePayload(v12 + v14, 1, 1, v15);
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B2478538();
  sub_1B256EDBC();
  if (v31)
  {
    OUTLINED_FUNCTION_25_4();
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B2443AD0(*v12, v12[1]);

    if (v16)
    {
      sub_1B247865C(v12 + *(v3 + 28), type metadata accessor for ClientOverride.Server);
    }

    return sub_1B243E88C(v12 + v33, &qword_1EB7D1770);
  }

  else
  {
    sub_1B24439BC();
    OUTLINED_FUNCTION_14_6();
    sub_1B256E95C();
    sub_1B2443AD0(*v12, v12[1]);
    *v12 = v34;
    v12[1] = v35;
    OUTLINED_FUNCTION_28_2(1);
    OUTLINED_FUNCTION_14_6();
    v12[2] = sub_1B256E94C();
    v12[3] = v17;
    OUTLINED_FUNCTION_28_2(2);
    OUTLINED_FUNCTION_14_6();
    v12[4] = sub_1B256E94C();
    v12[5] = v18;
    OUTLINED_FUNCTION_8_9();
    sub_1B2478384(v19, v20);
    OUTLINED_FUNCTION_14_6();
    sub_1B256E9AC();
    sub_1B24782CC(v2, v12 + v32[7]);
    OUTLINED_FUNCTION_28_2(4);
    OUTLINED_FUNCTION_14_6();
    v21 = sub_1B256E96C();
    OUTLINED_FUNCTION_26_2(v21, v22, v32[8]);
    OUTLINED_FUNCTION_28_2(5);
    OUTLINED_FUNCTION_14_6();
    v23 = sub_1B256E96C();
    OUTLINED_FUNCTION_26_2(v23, v24, v32[9]);
    OUTLINED_FUNCTION_2_17();
    sub_1B2478384(v25, v26);
    OUTLINED_FUNCTION_14_6();
    sub_1B256E95C();
    v27 = OUTLINED_FUNCTION_11_8();
    v28(v27);
    sub_1B247858C(v3, v12 + v33);
    sub_1B24785FC(v12, a2, type metadata accessor for ClientOverride);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B247865C(v12, type metadata accessor for ClientOverride);
  }
}

uint64_t sub_1B24781A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B24776FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B24781CC(uint64_t a1)
{
  v2 = sub_1B2478538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B2478208(uint64_t a1)
{
  v2 = sub_1B2478538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B2478278()
{
  result = qword_1EB7CD580;
  if (!qword_1EB7CD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD580);
  }

  return result;
}

uint64_t sub_1B24782CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverride.Server(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B2478330()
{
  result = qword_1EB7D0D38;
  if (!qword_1EB7D0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0D38);
  }

  return result;
}

uint64_t sub_1B2478384(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B24783CC()
{
  result = qword_1EB7D0D78;
  if (!qword_1EB7D0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0D78);
  }

  return result;
}

unint64_t sub_1B2478420()
{
  result = qword_1EB7D0D80;
  if (!qword_1EB7D0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0D80);
  }

  return result;
}

unint64_t sub_1B2478474()
{
  result = qword_1EB7CD558;
  if (!qword_1EB7CD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD558);
  }

  return result;
}

uint64_t sub_1B24784C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B2478538()
{
  result = qword_1EB7CD598;
  if (!qword_1EB7CD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD598);
  }

  return result;
}

uint64_t sub_1B247858C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B24785FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B247865C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B24786B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B244784C(a1, a2);
  }

  return a1;
}

_BYTE *storeEnumTagSinglePayload for ClientOverride.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ClientOverride.Server.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ClientOverride.Server.XcodeTestCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B2478960()
{
  result = qword_1EB7D0DA8;
  if (!qword_1EB7D0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0DA8);
  }

  return result;
}

unint64_t sub_1B24789B8()
{
  result = qword_1EB7D0DB0;
  if (!qword_1EB7D0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0DB0);
  }

  return result;
}

unint64_t sub_1B2478A10()
{
  result = qword_1EB7D0DB8;
  if (!qword_1EB7D0DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D0DB8);
  }

  return result;
}

unint64_t sub_1B2478A68()
{
  result = qword_1EB7CD588;
  if (!qword_1EB7CD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD588);
  }

  return result;
}

unint64_t sub_1B2478AC0()
{
  result = qword_1EB7CD590;
  if (!qword_1EB7CD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD590);
  }

  return result;
}

unint64_t sub_1B2478B18()
{
  result = qword_1EB7CD548;
  if (!qword_1EB7CD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD548);
  }

  return result;
}

unint64_t sub_1B2478B70()
{
  result = qword_1EB7CD550;
  if (!qword_1EB7CD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD550);
  }

  return result;
}

unint64_t sub_1B2478BC8()
{
  result = qword_1EB7CD528;
  if (!qword_1EB7CD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD528);
  }

  return result;
}

unint64_t sub_1B2478C20()
{
  result = qword_1EB7CD530;
  if (!qword_1EB7CD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD530);
  }

  return result;
}

unint64_t sub_1B2478C78()
{
  result = qword_1EB7CD560;
  if (!qword_1EB7CD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD560);
  }

  return result;
}

unint64_t sub_1B2478CD0()
{
  result = qword_1EB7CD568;
  if (!qword_1EB7CD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD568);
  }

  return result;
}

unint64_t sub_1B2478D28()
{
  result = qword_1EB7CD538;
  if (!qword_1EB7CD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD538);
  }

  return result;
}

unint64_t sub_1B2478D80()
{
  result = qword_1EB7CD540;
  if (!qword_1EB7CD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD540);
  }

  return result;
}

unint64_t sub_1B2478DD8()
{
  result = qword_1EB7CD570;
  if (!qword_1EB7CD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD570);
  }

  return result;
}

unint64_t sub_1B2478E30()
{
  result = qword_1EB7CD578;
  if (!qword_1EB7CD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD578);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_1B256EB5C();
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return sub_1B256E9EC();
}

void OUTLINED_FUNCTION_24_4()
{

  JUMPOUT(0x1B2749D50);
}

uint64_t OUTLINED_FUNCTION_26_2@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

id sub_1B2479050(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC8StoreKit19TransactionReceiver_logKey;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v5 = &v2[v4];
  v6 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v6, qword_1ED69A108);
  *v5 = sub_1B24D3E10();
  v5[1] = v7;
  v8 = OBJC_IVAR____TtC8StoreKit19TransactionReceiver_continuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v2[v8], a1, v9);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for TransactionReceiver();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a1, v9);
  return v11;
}

uint64_t sub_1B2479184(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v28 = v23 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DD0);
  v7 = *(v27 - 8);
  result = MEMORY[0x1EEE9AC00](v27);
  v26 = v23 - v9;
  if (a1)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v25 = OBJC_IVAR____TtC8StoreKit19TransactionReceiver_continuation;
      v11 = sub_1B256DDAC();
      v23[1] = v11 - 8;
      v24 = (v7 + 8);
      v12 = (a1 + 40);
      do
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        v15 = v28;
        __swift_storeEnumTagSinglePayload(v28, 1, 1, v11);
        v16 = swift_allocObject();
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = v14;
        v16[5] = v13;
        sub_1B2479E30(v15, v5);
        LODWORD(v14) = __swift_getEnumTagSinglePayload(v5, 1, v11);

        if (v14 == 1)
        {
          sub_1B2479EA0(v5);
        }

        else
        {
          sub_1B256DD9C();
          (*(*(v11 - 8) + 8))(v5, v11);
        }

        v17 = v16[2];
        swift_unknownObjectRetain();

        if (v17)
        {
          swift_getObjectType();
          v18 = sub_1B256DCEC();
          v20 = v19;
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
          v20 = 0;
        }

        sub_1B2479EA0(v28);
        v21 = swift_allocObject();
        *(v21 + 16) = &unk_1B257CAD8;
        *(v21 + 24) = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DE0);
        if (v20 | v18)
        {
          v30 = 0;
          v31 = 0;
          v32 = v18;
          v33 = v20;
        }

        v29 = swift_task_create();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
        v22 = v26;
        sub_1B256DDEC();
        result = (*v24)(v22, v27);
        v12 += 2;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
    return sub_1B256DDFC();
  }

  return result;
}

uint64_t sub_1B2479514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for Transaction(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B24795C0, 0, 0);
}

uint64_t sub_1B24795C0()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  Transaction.init(receipt:)(v3, v2, v1);
  v4 = v0[10];
  v5 = v0[8];
  sub_1B2479FC0(v0[9], v4);
  sub_1B247A024(v4, v5);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1B2479914;

  return sub_1B24ED054();
}

uint64_t sub_1B2479914()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_8();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B2479A04, 0, 0);
}

uint64_t sub_1B2479A04()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *(v0 + 40);
  sub_1B247A088(*(v0 + 80));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);

  OUTLINED_FUNCTION_7_2();

  return v3();
}

void sub_1B2479B10()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1B2479B60()
{
  v1 = OBJC_IVAR____TtC8StoreKit19TransactionReceiver_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D1950);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B2479BE8()
{
  sub_1B2479B60();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for TransactionReceiver()
{
  result = qword_1EB7CD338;
  if (!qword_1EB7CD338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B2479C68()
{
  sub_1B2479D0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B2479D0C()
{
  if (!qword_1EB7CD2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7D0DC0);
    v0 = sub_1B256DE0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7CD2D8);
    }
  }
}

uint64_t sub_1B2479D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B244D2A0;

  return sub_1B2479514(a1, v4, v5, v7, v6);
}

uint64_t sub_1B2479E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2479EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B2479F08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B244D2A0;

  return sub_1B253E84C();
}

uint64_t sub_1B2479FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B247A024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B247A088(uint64_t a1)
{
  v2 = type metadata accessor for Transaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B247A0E4(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v46 = a1;
  v47 = a2;
  OUTLINED_FUNCTION_1_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v48 = v14 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_9();
  v50 = v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v44 = v21 - v20;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_9();
  v38 = v23;
  v39 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v35 - v24;
  v26 = sub_1B256E03C();
  if (!v26)
  {
    return sub_1B256DC9C();
  }

  v49 = v26;
  v53 = sub_1B256E68C();
  v40 = sub_1B256E69C();
  sub_1B256E63C();
  result = sub_1B256E02C();
  if ((v49 & 0x8000000000000000) == 0)
  {
    v35 = v11;
    v36 = a5;
    v28 = 0;
    v41 = (v50 + 16);
    v42 = v50 + 8;
    v43 = v8;
    while (!__OFADD__(v28, 1))
    {
      v50 = v28 + 1;
      v29 = sub_1B256E07C();
      (*v41)(v19);
      v29(v52, 0);
      v30 = v51;
      v46(v19, v48);
      if (v30)
      {
        v33 = OUTLINED_FUNCTION_25_5();
        v34(v33);
        (*(v38 + 8))(v25, v39);

        return (*(v35 + 32))(v37, v48, v36);
      }

      v51 = 0;
      v31 = OUTLINED_FUNCTION_25_5();
      v32(v31);
      sub_1B256E67C();
      result = sub_1B256E04C();
      ++v28;
      if (v50 == v49)
      {
        (*(v38 + 8))(v25, v39);
        return v53;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B247A4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1B2455488();
    if (v3)
    {
    }
  }

  return OUTLINED_FUNCTION_22_1();
}

double sub_1B247A514@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B2455488(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1B2456DAC(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1B247A590@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v5 = a2(), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_1B2456DAC(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B247A5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B2458898(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for StoreProductManager.CachedProduct(0);
    OUTLINED_FUNCTION_7_0();
    sub_1B247D83C(v9 + *(v11 + 72) * v8, a4);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = type metadata accessor for StoreProductManager.CachedProduct(0);
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

double sub_1B247A6B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B2458898(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 16 * v6;

    sub_1B247D7E0(v8, a4);
  }

  else
  {
    *&result = 1;
    *a4 = xmmword_1B257CAF0;
  }

  return result;
}

unint64_t Product.PromotionInfo.Visibility.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1B247A740@<X0>(uint64_t *a1@<X8>)
{
  result = Product.PromotionInfo.Visibility.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Product.PromotionInfo.update()()
{
  OUTLINED_FUNCTION_21_5();
  *(v1 + 32) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_9_11(v2);

  return static Product.PromotionInfo.updateProductVisibility(_:for:)();
}

uint64_t sub_1B247A870()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_7_2();

    return v10();
  }
}

uint64_t static Product.PromotionInfo.updateProductVisibility(_:for:)()
{
  OUTLINED_FUNCTION_4_0();
  v2 = v1;
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  v5 = type metadata accessor for SKLogger();
  *(v0 + 168) = v5;
  OUTLINED_FUNCTION_2_2(v5);
  *(v0 + 176) = swift_task_alloc();
  *(v0 + 184) = swift_task_alloc();
  *(v0 + 248) = *v2;
  v6 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B247AA4C()
{
  v23 = v0;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = *(v0 + 184);
  *(v0 + 192) = __swift_project_value_buffer(*(v0 + 168), qword_1ED69A108);
  OUTLINED_FUNCTION_0_22();
  sub_1B247D83C(v2, v1);

  v3 = v1;
  sub_1B256D5CC();
  OUTLINED_FUNCTION_7_9();
  *(v0 + 200) = sub_1B256D5EC();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 8);
  *(v0 + 208) = v5;
  *(v0 + 216) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1);
  v6 = sub_1B256E09C();

  v7 = os_log_type_enabled(v3, v6);
  v8 = *(v0 + 248);
  if (v7)
  {
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B2519814(v10, v9, &v22);
    *(v11 + 12) = 2050;
    *(v11 + 14) = v8;
    _os_log_impl(&dword_1B23EF000, v3, v6, "Updating the promotion visibility for %{public}s to %{public}ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_10_7();
  }

  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B2578530;
  *(inited + 32) = sub_1B256D9BC();
  *(inited + 40) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E08);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1B2578530;
  *(v17 + 32) = v14;
  *(v17 + 40) = v13;
  *(v17 + 48) = v8;

  v18 = OUTLINED_FUNCTION_31_3();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E10);
  *(inited + 48) = v18;
  *(v0 + 224) = OUTLINED_FUNCTION_31_3();
  v19 = swift_task_alloc();
  *(v0 + 232) = v19;
  *v19 = v0;
  v20 = OUTLINED_FUNCTION_9_11(v19);

  return sub_1B247AF5C(v20);
}

uint64_t sub_1B247AD0C()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_10();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B247AE14()
{
  OUTLINED_FUNCTION_24_5();
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  OUTLINED_FUNCTION_0_22();
  sub_1B247D83C(v3, v2);
  sub_1B256D5CC();
  v4 = OUTLINED_FUNCTION_16_9();
  v1(v4);
  v5 = sub_1B256E09C();
  if (OUTLINED_FUNCTION_11_9(v5))
  {
    v6 = OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_13_8(v6);
    OUTLINED_FUNCTION_3_16();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_7_12();
  }

  OUTLINED_FUNCTION_7_2();

  return v12();
}

uint64_t sub_1B247AEEC()
{
  OUTLINED_FUNCTION_4_0();

  OUTLINED_FUNCTION_7_2();

  return v0();
}

uint64_t sub_1B247AF7C()
{
  OUTLINED_FUNCTION_4_0();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B247B010;
  v1 = swift_continuation_init();
  sub_1B247B390(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B247B010()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_10();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  v5 = *(v4 + 48);
  *(v1 + 88) = v5;
  if (v5)
  {
    swift_willThrow();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_1B247B148()
{
  v1 = parseError(_:)(*(v0 + 88));
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v2 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v2, qword_1ED69A108);
  v3 = v1;
  v4 = sub_1B256E0AC();
  v5 = sub_1B256D5CC();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_30_2(4.8752e-34, v7, v8, v9, v10, v11, v12, v13, v14, v7);
    OUTLINED_FUNCTION_19_7(v15);
    *(v6 + 14) = sub_1B2519814(0xD00000000000001ALL, v16, v17);
    OUTLINED_FUNCTION_29_5(&dword_1B23EF000, v18, v19, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_11_4();
  }

  v20 = *(v0 + 88);
  v21 = [objc_allocWithZone(type metadata accessor for SKTwoErrorEvent()) init];
  v22 = sub_1B256D0CC();
  [v21 setPrimaryError_];

  v23 = sub_1B256D0CC();
  [v21 setMappedError_];

  [v21 setUserAction_];
  OUTLINED_FUNCTION_27_2(OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context);
  [v21 setInAppPurchaseID_];

  [objc_opt_self() sendEvent_];
  swift_willThrow();

  OUTLINED_FUNCTION_7_2();

  return v24();
}

void sub_1B247B390(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultBroker];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v23 = sub_1B247D8D8;
  v24 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B244BD28;
  v22 = &block_descriptor_26_0;
  v7 = _Block_copy(&aBlock);

  v8 = [v5 storeKitServiceWithErrorHandler_];
  _Block_release(v7);

  if (v8)
  {
    v9 = sub_1B256D86C();
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    v23 = sub_1B247D8FC;
    v24 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1B2515BBC;
    v22 = &block_descriptor_32_0;
    v11 = _Block_copy(&aBlock);

    [v8 setPromotionInfo:v9 forClient:0 reply:v11];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_1ED69A108);
    sub_1B247D83C(v12, v4);
    v13 = sub_1B256D5CC();
    v14 = sub_1B256D5EC();
    (*(*(v14 - 8) + 8))(v4, v14);
    v15 = sub_1B256E0AC();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B23EF000, v13, v15, "Failed to get XPC remote object to update promotions", v16, 2u);
      MEMORY[0x1B274BFF0](v16, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B243A51C();
    v17 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v18 = v17;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B247B74C(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v2 = a1;
    v3 = a1;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t static Product.PromotionInfo.currentOrder.getter()
{
  OUTLINED_FUNCTION_4_0();
  v1 = type metadata accessor for SKLogger();
  v0[27] = v1;
  OUTLINED_FUNCTION_2_2(v1);
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B247B894()
{
  OUTLINED_FUNCTION_21_5();
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = v0[31];
  v0[32] = __swift_project_value_buffer(v0[27], qword_1ED69A108);
  OUTLINED_FUNCTION_0_22();
  sub_1B247D83C(v2, v1);
  sub_1B256D5CC();
  OUTLINED_FUNCTION_7_9();
  v0[33] = sub_1B256D5EC();
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 8);
  v0[34] = v4;
  v0[35] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1);
  v5 = sub_1B256E09C();
  if (OUTLINED_FUNCTION_11_9(v5))
  {
    v6 = OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_13_8(v6);
    OUTLINED_FUNCTION_3_16();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_7_12();
  }

  v12 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B247B9B4()
{
  OUTLINED_FUNCTION_4_0();
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1B247BA48;
  v1 = swift_continuation_init();
  sub_1B247C2D0(v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B247BA48()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_3_10();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  v1[36] = v4;
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v1[37] = v1[24];
  }

  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1B247BB60()
{
  v47 = v0;
  v1 = v0[34];
  v5 = v0[33];
  v2 = v0[30];
  OUTLINED_FUNCTION_0_22();
  sub_1B247D83C(v3, v2);

  v4 = sub_1B256D5CC();
  v1(v2, v5);
  LOBYTE(v5) = sub_1B256E09C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[37];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46 = v8;
    *v7 = 136315138;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
    v10 = MEMORY[0x1B2749EE0](v6, v9);
    v12 = sub_1B2519814(v10, v11, &v46);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_3_16();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_7_12();
  }

  v18 = v0[37];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        return;
      }

      v21 = *(v18 + 32 + 8 * v20);
      v22 = sub_1B256D9BC();
      if (*(v21 + 16) && (v23 = v22, , sub_1B2455488(), OUTLINED_FUNCTION_23_4(), (v5 & 1) != 0) && (sub_1B2456DAC(*(v21 + 56) + 32 * v23, (v0 + 10)), (swift_dynamicCast() & 1) != 0))
      {
        if ((v0[25] & 0x8000000000000000) != 0)
        {

          goto LABEL_23;
        }

        sub_1B256D9BC();
        if (*(v21 + 16))
        {
          sub_1B2455488();
          OUTLINED_FUNCTION_23_4();
          if (v5)
          {
            sub_1B2456DAC(*(v21 + 56) + 32 * v23, (v0 + 14));
            if (swift_dynamicCast())
            {
              v24 = v0[22];
              v44 = v0[23];
              sub_1B256D9BC();
              if (*(v21 + 16))
              {
                sub_1B2455488();
                OUTLINED_FUNCTION_23_4();
                if (v5)
                {
                  sub_1B2456DAC(*(v21 + 56) + 32 * v23, (v0 + 18));

                  if (swift_dynamicCast())
                  {
                    v25 = v0[26];
                    if (v25 == 2)
                    {
                      LOBYTE(v5) = 2;
                    }

                    else
                    {
                      LOBYTE(v5) = v25 == 1;
                    }

                    goto LABEL_32;
                  }

LABEL_31:
                  LOBYTE(v5) = 0;
LABEL_32:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1B244925C();
                    v45 = v40;
                  }

                  v38 = *(v45 + 16);
                  if (v38 >= *(v45 + 24) >> 1)
                  {
                    sub_1B244925C();
                    v45 = v41;
                  }

                  *(v45 + 16) = v38 + 1;
                  v39 = v45 + 24 * v38;
                  *(v39 + 32) = v24;
                  *(v39 + 40) = v44;
                  *(v39 + 48) = v5;
                  goto LABEL_23;
                }
              }

              else
              {
              }

              goto LABEL_31;
            }
          }
        }

        else
        {
        }

        v34 = v0[34];
        v5 = v0[33];
        v35 = v0[29];
        OUTLINED_FUNCTION_0_22();
        sub_1B247D83C(v36, v35);
        v29 = sub_1B256D5CC();
        v34(v35, v5);
        v37 = sub_1B256E0AC();
        if (os_log_type_enabled(v29, v37))
        {
          v5 = OUTLINED_FUNCTION_18_5();
          *v5 = 0;
          v31 = v37;
          v32 = v29;
          v33 = "Missing offer name for this promotion";
          goto LABEL_21;
        }
      }

      else
      {

        v26 = v0[34];
        v5 = v0[33];
        v27 = v0[28];
        OUTLINED_FUNCTION_0_22();
        sub_1B247D83C(v28, v27);
        v29 = sub_1B256D5CC();
        v26(v27, v5);
        v30 = sub_1B256E0AC();
        if (os_log_type_enabled(v29, v30))
        {
          v5 = OUTLINED_FUNCTION_18_5();
          *v5 = 0;
          v31 = v30;
          v32 = v29;
          v33 = "Missing order index for this promotion";
LABEL_21:
          _os_log_impl(&dword_1B23EF000, v32, v31, v33, v5, 2u);
          OUTLINED_FUNCTION_11_4();
        }
      }

LABEL_23:
      if (v19 == ++v20)
      {
        v42 = v45;
        goto LABEL_38;
      }
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
LABEL_38:

  v43 = v0[1];

  v43(v42);
}

uint64_t sub_1B247C090()
{
  v1 = parseError(_:)(*(v0 + 288));
  v2 = v1;
  v3 = sub_1B256E0AC();
  v4 = sub_1B256D5CC();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_30_2(4.8752e-34, v6, v7, v8, v9, v10, v11, v12, v13, v6);
    OUTLINED_FUNCTION_19_7(v14);
    *(v5 + 14) = sub_1B2519814(0xD00000000000001FLL, v15, v16);
    OUTLINED_FUNCTION_29_5(&dword_1B23EF000, v17, v18, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_11_4();
  }

  v19 = *(v0 + 288);
  v20 = [objc_allocWithZone(type metadata accessor for SKTwoErrorEvent()) init];
  v21 = sub_1B256D0CC();
  [v20 setPrimaryError_];

  v22 = sub_1B256D0CC();
  [v20 setMappedError_];

  [v20 setUserAction_];
  OUTLINED_FUNCTION_27_2(OBJC_IVAR____TtC8StoreKit15SKTwoErrorEvent_context);
  [v20 setInAppPurchaseID_];

  [objc_opt_self() sendEvent_];
  swift_willThrow();

  OUTLINED_FUNCTION_7_2();

  return v23();
}

uint64_t sub_1B247C2D0(uint64_t a1)
{
  v2 = type metadata accessor for SKLogger();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultBroker];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v23 = sub_1B247D894;
  v24 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B244BD28;
  v22 = &block_descriptor_7;
  v7 = _Block_copy(&aBlock);

  v8 = [v5 storeKitServiceWithErrorHandler_];
  _Block_release(v7);

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v23 = sub_1B247D8D0;
    v24 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1B247C95C;
    v22 = &block_descriptor_19_1;
    v10 = _Block_copy(&aBlock);

    [v8 promotionInfoForProductIdentifiers:0 client:0 reply:v10];
    _Block_release(v10);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED699E80 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_1ED69A108);
    sub_1B247D83C(v12, v4);
    v13 = sub_1B256D5CC();
    v14 = sub_1B256D5EC();
    (*(*(v14 - 8) + 8))(v4, v14);
    v15 = sub_1B256E0AC();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B23EF000, v13, v15, "Failed to get XPC remote object to fetch promotions", v16, 2u);
      MEMORY[0x1B274BFF0](v16, -1, -1);
    }

    type metadata accessor for StoreKitError();
    sub_1B243A51C();
    v17 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v18 = v17;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1B247C654(void *a1, uint64_t a2, const char *a3)
{
  v5 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  __swift_project_value_buffer(v5, qword_1ED69A108);
  OUTLINED_FUNCTION_0_22();
  sub_1B247D83C(v10, v9);
  v11 = a1;
  v12 = v9;
  sub_1B256D5CC();
  OUTLINED_FUNCTION_7_9();
  sub_1B256D5EC();
  OUTLINED_FUNCTION_7_0();
  (*(v13 + 8))(v9);
  v14 = sub_1B256E0AC();

  if (os_log_type_enabled(v12, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    v17 = sub_1B256D0CC();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&dword_1B23EF000, v12, v14, a3, v15, 0xCu);
    sub_1B2468C20(v16);
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_10_7();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
  swift_allocError();
  *v18 = a1;
  v19 = a1;
  OUTLINED_FUNCTION_22_1();
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1B247C824(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v4 = a2;
    v5 = a2;
LABEL_3:

    return swift_continuation_throwingResumeWithError();
  }

  if (!a1)
  {
    type metadata accessor for StoreKitError();
    sub_1B243A51C();
    v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7CFF40);
    swift_allocError();
    *v8 = v7;
    goto LABEL_3;
  }

  **(*(a3 + 64) + 40) = a1;

  return swift_continuation_throwingResume();
}

uint64_t sub_1B247C95C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D2000);
    v4 = sub_1B256DC5C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t static Product.PromotionInfo.updateProductOrder<A>(byID:)()
{
  OUTLINED_FUNCTION_4_0();
  v0[13] = v1;
  v0[14] = v2;
  v0[12] = v3;
  v0[15] = *(v1 - 8);
  v0[16] = swift_task_alloc();
  v4 = type metadata accessor for SKLogger();
  v0[17] = v4;
  OUTLINED_FUNCTION_2_2(v4);
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B247CAE0()
{
  OUTLINED_FUNCTION_24_5();
  if (qword_1ED699E80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
  }

  v1 = v0[19];
  v0[20] = __swift_project_value_buffer(v0[17], qword_1ED69A108);
  OUTLINED_FUNCTION_0_22();
  sub_1B247D83C(v2, v1);
  v3 = v1;
  sub_1B256D5CC();
  OUTLINED_FUNCTION_7_9();
  v0[21] = sub_1B256D5EC();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 8);
  v0[22] = v5;
  v0[23] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1);
  v6 = sub_1B256E09C();
  if (OUTLINED_FUNCTION_11_9(v6))
  {
    v7 = OUTLINED_FUNCTION_18_5();
    OUTLINED_FUNCTION_13_8(v7);
    OUTLINED_FUNCTION_3_16();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_7_12();
  }

  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[13];
  v16 = v0[12];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B2578530;
  *(inited + 32) = sub_1B256D9BC();
  *(inited + 40) = v18;
  (*(v14 + 16))(v13, v16, v15);
  v19 = sub_1B256DCCC();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D0620);
  *(inited + 48) = v19;
  v0[24] = sub_1B256D8AC();
  v20 = swift_task_alloc();
  v0[25] = v20;
  *v20 = v0;
  v21 = OUTLINED_FUNCTION_9_11(v20);

  return sub_1B247AF5C(v21);
}