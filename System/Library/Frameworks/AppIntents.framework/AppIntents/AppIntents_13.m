uint64_t sub_18F211940()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 392) = v4;
  *(v2 + 400) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F211A44()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 392))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
LABEL_12:
    v11 = OUTLINED_FUNCTION_3_25();
    v12(v11);

    v13 = OUTLINED_FUNCTION_12_7();

    return v14(v13);
  }

  (*(v0 + 368))(*(v0 + 352), *(v0 + 336), *(v0 + 320));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2838);
  OUTLINED_FUNCTION_68_0();
  if (!swift_dynamicCast())
  {
    *(v0 + 288) = 0;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    sub_18F217988(v0 + 256, &qword_1EACD2840);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
    goto LABEL_12;
  }

  sub_18F0FD0B4((v0 + 256), v0 + 216);
  if (qword_1ED6FE320 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  v1 = sub_18F52165C();
  OUTLINED_FUNCTION_58(v1, qword_1ED707748);
  v2 = sub_18F52163C();
  v3 = sub_18F52223C();
  if (os_log_type_enabled(v2, v3))
  {
    *OUTLINED_FUNCTION_54() = 0;
    OUTLINED_FUNCTION_42(&dword_18F0E9000, v4, v5, "Unsuccessful transferable extraction, attempted URLRepresentable");
    OUTLINED_FUNCTION_32();
  }

  __swift_project_boxed_opaque_existential_1Tm((v0 + 216), *(v0 + 240));
  v6 = swift_task_alloc();
  *(v0 + 408) = v6;
  *v6 = v0;
  v6[1] = sub_18F211C5C;
  OUTLINED_FUNCTION_33_12();
  OUTLINED_FUNCTION_68_0();

  return sub_18F21277C(v7, v8, v9);
}

uint64_t sub_18F211C5C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = v3;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F211D4C()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  v1 = OUTLINED_FUNCTION_3_25();
  v2(v1);

  v3 = OUTLINED_FUNCTION_12_7();

  return v4(v3);
}

uint64_t sub_18F211DD8()
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
  *(v5 + 432) = v0;

  if (!v0)
  {
    *(v5 + 440) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F211EE4()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  v1 = OUTLINED_FUNCTION_3_25();
  v2(v1);

  v3 = OUTLINED_FUNCTION_12_7();

  return v4(v3);
}

uint64_t sub_18F211F68()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 456) = v3;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F212058()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  v1 = OUTLINED_FUNCTION_3_25();
  v2(v1);

  v3 = OUTLINED_FUNCTION_12_7();

  return v4(v3);
}

uint64_t sub_18F2120DC()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  v1 = OUTLINED_FUNCTION_3_25();
  v2(v1);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F212160()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  v1 = OUTLINED_FUNCTION_3_25();
  v2(v1);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F212210(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v3[25] = swift_task_alloc();
  v3[26] = *(a2 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F212304, 0, 0);
}

uint64_t sub_18F212304()
{
  OUTLINED_FUNCTION_69();
  v1 = OUTLINED_FUNCTION_34_10();
  v2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2830);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    sub_18F5227DC();
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    *(v0 + 224) = v3;
    *(v0 + 232) = v4;
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    *(v0 + 240) = v5;
    *(v0 + 248) = v6;
    v7 = *(v0 + 128);
    *(v0 + 129) = v7;
    *(v0 + 136) = v3;
    *(v0 + 144) = v4;
    *(v0 + 152) = v5;
    *(v0 + 160) = v6;
    *(v0 + 168) = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 256) = v8;
    *v8 = v9;
    v8[1] = sub_18F2124C0;
    v10 = *(v0 + 200);

    return FileEntityIdentifier.fileURL.getter(v10);
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_18F217988(v0 + 56, &qword_1EACD2890);
    sub_18F520C8C();
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);

    OUTLINED_FUNCTION_71();

    return v16();
  }
}

uint64_t sub_18F2124C0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_18F2125BC()
{
  v1 = *(v0 + 200);
  v2 = sub_18F520C8C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_18F217988(v1, &qword_1EACD0360);
    OUTLINED_FUNCTION_42_7();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  }

  else
  {
    v6 = *(v0 + 176);
    OUTLINED_FUNCTION_31_0();
    (*(v7 + 32))(v6, v1, v2);
    OUTLINED_FUNCTION_42_7();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_43_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F2126F8()
{
  OUTLINED_FUNCTION_69();
  sub_18F1239A0(*(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 129));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F21277C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v4[6] = swift_task_alloc();
  v5 = sub_18F520C8C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_18F52153C();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2128EC, 0, 0);
}

uint64_t sub_18F2128EC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[12];
  sub_18F214208();
  sub_18F52151C();
  OUTLINED_FUNCTION_66();
  v2 = sub_18F52150C();
  v3 = *(v1 + 8);
  v0[15] = v3;
  v0[16] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = OUTLINED_FUNCTION_165();
  v3(v4);
  v5 = OUTLINED_FUNCTION_19_3();
  v3(v5);
  if (v2)
  {
    if (qword_1ED6FE320 != -1)
    {
      OUTLINED_FUNCTION_0_41();
    }

    v6 = sub_18F52165C();
    OUTLINED_FUNCTION_58(v6, qword_1ED707748);
    v7 = sub_18F52163C();
    v8 = sub_18F52223C();
    if (os_log_type_enabled(v7, v8))
    {
      *OUTLINED_FUNCTION_54() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v9, v10, "Non-transferable but URLRepresentable, extracting URL");
      OUTLINED_FUNCTION_32();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[17] = v11;
    *v11 = v12;
    v11[1] = sub_18F212AD4;
    v13 = v0[6];
    v14 = v0[3];

    return URLRepresentableEntity.urlRepresentation.getter(v13, v14);
  }

  else
  {

    OUTLINED_FUNCTION_20_0();

    return v16(0);
  }
}

uint64_t sub_18F212AD4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F212BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  v16 = v14[6];
  v15 = v14[7];
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    sub_18F217988(v16, &qword_1EACD0360);
  }

  else
  {
    a10 = v14[15];
    a11 = v14[16];
    v17 = v14[14];
    v18 = v14[10];
    a9 = v14[11];
    v19 = v14[8];
    v20 = v14[9];
    v21 = v14[2];
    OUTLINED_FUNCTION_68_0();
    v22();
    sub_18F0F21A8(0, &unk_1ED6FDDB8);
    (*(v19 + 16))(v20, v18, v15);
    sub_18F214208();
    v23 = sub_18F5214DC();
    v25 = v24;
    a10(v17, a9);
    OUTLINED_FUNCTION_13_0();
    v29 = sub_18F17380C(v26, v27, v28, v23, v25);
    sub_18F0F21A8(0, &unk_1ED6FDD90);
    sub_18F214674([v21 contentType], v29);
    v30 = OUTLINED_FUNCTION_80_0();
    v31(v30);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_20();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18F212D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  v10 = sub_18F520C8C();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v11 = *(a6 - 8);
  v8[20] = v11;
  v8[21] = *(v11 + 64);
  v8[22] = swift_task_alloc();
  v12 = sub_18F52153C();
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F212F2C, 0, 0);
}

uint64_t sub_18F212F2C()
{
  v53 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v49 = *(v0 + 120);
  v47 = *(v0 + 96);
  v6 = *(v0 + 64);
  v50 = *(v0 + 104);
  sub_18F214208();
  v7 = sub_18F5214DC();
  v9 = v8;
  v10 = *(v1 + 8);
  *(v0 + 208) = v8;
  v46 = v10;
  v10(v2, v4);
  sub_18F0F21A8(0, &qword_1EACD2848);
  (*(v5 + 16))(v3, v6, v50);
  v11 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v47;
  *(v12 + 24) = v50;
  *(v12 + 40) = v49;
  (*(v5 + 32))(v12 + v11, v3, v50);
  v13 = sub_18F52229C();
  *(v0 + 216) = v13;
  v51 = v9;
  v14 = sub_18F5218AC();
  LODWORD(v2) = [v13 hasItemConformingToTypeIdentifier_];

  v15 = *(v0 + 184);
  if (v2)
  {
    v48 = v13;
    v16 = *(v0 + 200);
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    v20 = *(v0 + 128);
    v19 = *(v0 + 136);
    v21 = *(v0 + 72);
    sub_18F520BCC();
    sub_18F214208();
    sub_18F520C0C();
    v46(v16, v15);
    v22 = *(v19 + 8);
    v22(v18, v20);
    v23 = sub_18F520BDC();
    v25 = v24;
    *(v0 + 224) = v23;
    *(v0 + 232) = v24;
    v22(v17, v20);
    v26 = [v21 preferredExtractionType];
    if (!v26)
    {
      v41 = *(v0 + 72);

      v42 = swift_task_alloc();
      *(v0 + 264) = v42;
      v42[2] = v48;
      v42[3] = v41;
      v42[4] = v23;
      v42[5] = v25;
      v43 = swift_task_alloc();
      *(v0 + 272) = v43;
      sub_18F0F21A8(0, &unk_1ED6FDDB8);
      *v43 = v0;
      v43[1] = sub_18F21385C;
      OUTLINED_FUNCTION_13_0();
      goto LABEL_11;
    }

    if (v26 == 1)
    {
      v27 = swift_task_alloc();
      *(v0 + 240) = v27;
      v27[2] = v48;
      v27[3] = v7;
      v27[4] = v51;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 248) = v28;
      *v28 = v29;
      v28[1] = sub_18F213594;
      OUTLINED_FUNCTION_13_0();
LABEL_11:

      return MEMORY[0x1EEE6DE38]();
    }

    goto LABEL_15;
  }

  v30 = [v13 registeredContentTypes];
  v31 = sub_18F521CAC();

  *(v0 + 16) = v31;
  *(v0 + 24) = sub_18F214304;
  *(v0 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2850);
  sub_18F217710();
  v32 = sub_18F5217AC();
  v34 = v33;

  if (qword_1ED6FDA70 != -1)
  {
    swift_once();
  }

  v35 = sub_18F52165C();
  OUTLINED_FUNCTION_58(v35, qword_1ED7076B0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v36 = sub_18F52163C();
  v37 = sub_18F52223C();

  if (!os_log_type_enabled(v36, v37))
  {

LABEL_15:

    goto LABEL_16;
  }

  v38 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  *v38 = 136446466;
  v39 = sub_18F11897C(v7, v9, &v52);

  *(v38 + 4) = v39;
  *(v38 + 12) = 2082;
  v40 = sub_18F11897C(v32, v34, &v52);

  *(v38 + 14) = v40;
  _os_log_impl(&dword_18F0E9000, v36, v37, "Entity does not provide %{public}s, provides: [%{public}s]", v38, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_32();

LABEL_16:

  OUTLINED_FUNCTION_20_0();

  return v44(0);
}

uint64_t sub_18F213594()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_18F2136E0()
{
  v2 = v0[28];
  v1 = v0[29];
  v18 = v0[27];
  v3 = v0[9];
  sub_18F0F21A8(0, &unk_1ED6FDDB8);
  v4 = OUTLINED_FUNCTION_66();
  sub_18F16AAE0(v4, v5);
  v6 = [v3 contentType];
  v7 = [v6 &selRef_mediaSearchValueType];

  v8 = sub_18F5218DC();
  v10 = v9;

  v11 = OUTLINED_FUNCTION_66();
  v13 = sub_18F173518(v11, v12, v2, v1, v8, v10);
  sub_18F0F21A8(0, &unk_1ED6FDD90);
  sub_18F214674([v3 contentType], v13);

  v14 = OUTLINED_FUNCTION_66();
  sub_18F123A1C(v14, v15);
  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_29_1();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_18F21385C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F213968()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[27];
  v2 = v0[9];
  v3 = v0[7];
  sub_18F0F21A8(0, &unk_1ED6FDD90);
  sub_18F214674([v2 contentType], v3);

  OUTLINED_FUNCTION_31_20();

  v4 = OUTLINED_FUNCTION_12_7();

  return v5(v4);
}

uint64_t sub_18F213A30()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F213AB0()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_31_20();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F213B48(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2878);
  v2[8] = swift_task_alloc();
  v4 = sub_18F52092C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v5 = swift_task_alloc();
  v2[12] = v5;
  v6 = sub_18F520C8C();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[17] = v7;
  *v7 = v2;
  v7[1] = sub_18F213D38;

  return sub_18F212210(v5, a2);
}

uint64_t sub_18F213D38()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F213E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  v16 = v14[12];
  v15 = v14[13];
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    sub_18F217988(v16, &qword_1EACD0360);
    goto LABEL_9;
  }

  v17 = v14[18];
  (*(v14[14] + 32))(v14[16], v16, v15);
  sub_18F215330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  v19 = *MEMORY[0x1E695DC68];
  *(inited + 32) = *MEMORY[0x1E695DC68];
  v20 = v19;
  sub_18F452420(inited);
  sub_18F520BBC();
  if (v17)
  {
    v22 = v14[8];
    v21 = v14[9];

    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);
    sub_18F217988(v22, &qword_1EACD2878);
  }

  else
  {
    v28 = v14[8];
    v27 = v14[9];

    __swift_storeEnumTagSinglePayload(v28, 0, 1, v27);
    v29 = OUTLINED_FUNCTION_41_9();
    v30(v29);
    sub_18F52091C();
    if (v31)
    {
      sub_18F0F21A8(0, &qword_1EACD2888);
      v26 = sub_18F2153F4();
      v32 = OUTLINED_FUNCTION_18_19();
      v33(v32);
      goto LABEL_8;
    }

    v57 = OUTLINED_FUNCTION_18_19();
    v58(v57);
  }

  sub_18F0F21A8(0, &qword_1EACD2888);
  v26 = sub_18F2153F4();
LABEL_8:
  v34 = v14[15];
  v35 = v14[16];
  v36 = v14[13];
  v37 = v14[14];
  a10 = sub_18F0F21A8(0, &unk_1ED6FDD90);
  sub_18F0F21A8(0, &unk_1ED6FDDB8);
  (*(v37 + 16))(v34, v35, v36);
  v38 = [v26 contentType];
  v39 = sub_18F5218DC();
  v41 = v40;

  OUTLINED_FUNCTION_13_0();
  v45 = sub_18F17380C(v42, v43, v44, v39, v41);
  sub_18F214674(v26, v45);
  v46 = OUTLINED_FUNCTION_18_19();
  v47(v46);
LABEL_9:

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_20();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18F21417C()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F214208()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = [v1 contentType];
  v6 = [v5 contentType];

  sub_18F5218DC();
  v7 = sub_18F52153C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  return sub_18F5214CC();
}

uint64_t sub_18F214304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F5214DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_18F214330(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0410);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = sub_18F5218AC();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_18F2177D8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F2145C8;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);

  v12 = [a2 loadDataRepresentationForTypeIdentifier:v8 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_18F214510(uint64_t a1, unint64_t a2, id a3)
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v3 = a3;
    }

    else
    {
      sub_18F21786C();
      swift_allocError();
      *v5 = 0;
      v5[1] = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0410);
    return sub_18F521E2C();
  }

  else
  {
    sub_18F16AAE0(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0410);
    return sub_18F521E3C();
  }
}

uint64_t sub_18F2145C8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_18F520D4C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_18F190748(v4, v8);
}

id sub_18F214674(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContentType:a1 content:a2];

  return v4;
}

uint64_t sub_18F2146D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v25 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2870);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v22 = sub_18F52153C();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F214208();
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v15, v11, v7);
  *(v17 + v16) = a3;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  v20 = a3;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return (*(v12 + 8))(v14, v22);
}

uint64_t sub_18F214904(uint64_t a1, int a2, void (**a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v92 = a7;
  v87 = a6;
  v95 = a5;
  v97 = a4;
  v89 = a3;
  LODWORD(v90) = a2;
  v98[2] = *MEMORY[0x1E69E9840];
  v8 = sub_18F520B8C();
  v85 = *(v8 - 8);
  v86 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v79 - v11;
  v13 = sub_18F52153C();
  v93 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v79 - v17;
  v19 = sub_18F520C8C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v88 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v83 = &v79 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v94 = &v79 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v79 - v27;
  sub_18F116A1C(a1, v18, &qword_1EACD0360);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_18F217988(v18, &qword_1EACD0360);
    if (v89)
    {
      v98[0] = v89;
      v29 = v89;
    }

    else
    {
      sub_18F21786C();
      v65 = swift_allocError();
      *v66 = 0;
      v66[1] = 0;
      v98[0] = v65;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2870);
    return sub_18F521E2C();
  }

  v30 = v20[4];
  v81 = v20 + 4;
  v80 = v30;
  v30(v28, v18, v19);
  v91 = v28;
  sub_18F520B9C();
  sub_18F214208();
  sub_18F5214FC();
  v31 = v13;
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_18F214208();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_18F217988(v12, &qword_1EACD0358);
    }
  }

  else
  {
    (*(v93 + 32))(v96, v12, v13);
  }

  v89 = v20;
  v32 = v20[2];
  v33 = v94;
  v34 = v91;
  v82 = v32;
  v32(v94, v91, v19);
  if ((v90 & 1) == 0)
  {
    v35 = objc_opt_self();
    v36 = [v35 defaultManager];
    v37 = sub_18F520BEC();
    v98[0] = 0;
    v38 = [v36 URLForDirectory:99 inDomain:1 appropriateForURL:v37 create:1 error:v98];

    v39 = v98[0];
    if (v38)
    {
      v90 = v31;
      v79 = v35;
      v40 = v88;
      sub_18F520C3C();
      v41 = v39;

      v98[0] = sub_18F520BDC();
      v98[1] = v42;
      v43 = v84;
      v44 = v85;
      v45 = v86;
      (*(v85 + 104))(v84, *MEMORY[0x1E6968F70], v86);
      sub_18F12A000();
      v46 = v83;
      sub_18F520C7C();
      (*(v44 + 8))(v43, v45);

      v47 = v89[1];
      v47(v40, v19);
      v47(v33, v19);
      v80(v33, v46, v19);
      v48 = [v79 defaultManager];
      v49 = sub_18F520BEC();
      v50 = sub_18F520BEC();
      v98[0] = 0;
      LODWORD(v43) = [v48 copyItemAtURL:v49 toURL:v50 error:v98];

      if (v43)
      {
        v51 = v98[0];
        v31 = v90;
        goto LABEL_12;
      }

      v77 = v98[0];
      v76 = sub_18F520A8C();

      swift_willThrow();
      v47(v33, v19);
      v31 = v90;
      v34 = v91;
    }

    else
    {
      v75 = v98[0];
      v76 = sub_18F520A8C();

      swift_willThrow();
      v47 = v89[1];
      v47(v33, v19);
    }

    v78 = v96;
    v98[0] = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2870);
    sub_18F521E2C();
    (*(v93 + 8))(v78, v31);
    return (v47)(v34, v19);
  }

LABEL_12:
  v52 = sub_18F520B6C();
  v54 = v53;
  if (qword_1ED6FDA70 != -1)
  {
    swift_once();
  }

  v55 = sub_18F52165C();
  __swift_project_value_buffer(v55, qword_1ED7076B0);
  v56 = v92;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v57 = sub_18F52163C();
  v58 = sub_18F52223C();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = v31;
    v61 = swift_slowAlloc();
    v98[0] = v61;
    *v59 = 136446466;
    v62 = v87;
    *(v59 + 4) = sub_18F11897C(v87, v92, v98);
    *(v59 + 12) = 2080;
    v63 = sub_18F11897C(v52, v54, v98);

    *(v59 + 14) = v63;
    _os_log_impl(&dword_18F0E9000, v57, v58, "Filename: %{public}s.  Issuing sandbox extension to %s", v59, 0x16u);
    swift_arrayDestroy();
    v64 = v61;
    v31 = v60;
    v56 = v92;
    MEMORY[0x193ADD350](v64, -1, -1);
    MEMORY[0x193ADD350](v59, -1, -1);
  }

  else
  {

    v62 = v87;
  }

  v68 = v94;
  sub_18F215330();
  sub_18F0F21A8(0, &unk_1ED6FDDB8);
  v69 = v88;
  v82(v88, v68, v19);
  v70 = v96;
  v71 = sub_18F5214DC();
  v73 = v72;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v98[0] = sub_18F17380C(v69, v62, v56, v71, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2870);
  sub_18F521E3C();
  v74 = v89[1];
  v74(v68, v19);
  (*(v93 + 8))(v70, v31);
  return (v74)(v91, v19);
}

void sub_18F215330()
{
  [v0 auditToken];
  if (LNAuditTokenIsValid())
  {
    [v0 auditToken];
  }

  else
  {
    sub_18F215468(v4);
    if (v5)
    {
      v1 = *MEMORY[0x1E69ACC48];
      v2 = *(MEMORY[0x1E69ACC48] + 16);
    }

    else
    {
      v1 = v4[0];
      v2 = v4[1];
    }

    v6 = v1;
    v7 = v2;
  }

  if (LNAuditTokenIsValid())
  {
    v3 = sub_18F520BEC();
    INIssueSandboxExtensionToProcess();
  }
}

id sub_18F2153F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F5218AC();

  v2 = [v0 initWithContentType_];

  return v2;
}

uint64_t sub_18F215468@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntentContext();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IntentContext.current.getter(v4);
  v5 = *(v4 + 3);
  v8 = *(v4 + 2);
  v9 = v5;
  result = sub_18F11CDDC(v4, type metadata accessor for IntentContext);
  v7 = v9;
  *a1 = v8;
  *(a1 + 16) = v7;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_18F21555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v19;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  v8[12] = a2;
  v8[13] = a3;
  v8[11] = a1;
  v8[20] = *(v19 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[21] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[22] = v10;
  v8[23] = *(v10 + 64);
  v8[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2828);
  v8[27] = v11;
  v8[28] = *(v11 - 8);
  v8[29] = swift_task_alloc();
  sub_18F52254C();
  v8[30] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v8[31] = *(swift_getAssociatedConformanceWitness() + 8);
  v12 = swift_getAssociatedTypeWitness();
  v8[32] = v12;
  v8[33] = *(v12 - 8);
  v8[34] = swift_task_alloc();
  v13 = swift_checkMetadataState();
  v8[35] = v13;
  v8[36] = *(v13 - 8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v14 = swift_getAssociatedTypeWitness();
  v8[39] = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[40] = TupleTypeMetadata2;
  v8[41] = *(TupleTypeMetadata2 - 8);
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_getAssociatedConformanceWitness();
  v16 = sub_18F52219C();
  v8[45] = v16;
  v8[46] = *(v16 - 8);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = *(v14 - 8);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F215A1C, 0, 0);
}

uint64_t sub_18F215A1C()
{
  OUTLINED_FUNCTION_32_15();
  sub_18F5220AC();
  v3 = v0[50];
  OUTLINED_FUNCTION_32_15();
  sub_18F5220FC();
  OUTLINED_FUNCTION_66();
  v4 = sub_18F52180C();
  v5 = *(v3 + 8);
  v0[54] = v5;
  v0[55] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6 = OUTLINED_FUNCTION_165();
  v5(v6);
  v112 = v5;
  if (v4)
  {
    if (qword_1ED6FE320 != -1)
    {
      OUTLINED_FUNCTION_0_41();
    }

    v7 = sub_18F52165C();
    OUTLINED_FUNCTION_58(v7, qword_1ED707748);
    v8 = sub_18F52163C();
    v9 = sub_18F5221FC();
    if (os_log_type_enabled(v8, v9))
    {
      *OUTLINED_FUNCTION_54() = 0;
      OUTLINED_FUNCTION_54_5(&dword_18F0E9000, v10, v11, "Extraction completed");
      OUTLINED_FUNCTION_32();
    }

    v12 = v0[53];
    v13 = v0[39];
    v14 = v0[11];

    (v112)(v12, v13);
    *v14 = MEMORY[0x1E69E7CC0];

    OUTLINED_FUNCTION_71();

    return v15();
  }

  v108 = v0[51];
  OUTLINED_FUNCTION_36_12();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_49_6();
  v17 = sub_18F5220EC();
  v18 = OUTLINED_FUNCTION_165();
  v112(v18);
  OUTLINED_FUNCTION_49_6();
  sub_18F5220CC();
  OUTLINED_FUNCTION_66();
  if ((sub_18F5217EC() & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_17_21();
  v19 = OUTLINED_FUNCTION_48_3();
  v108(v19);
  v20 = OUTLINED_FUNCTION_25_14();
  v21(v20);
  v22 = OUTLINED_FUNCTION_19_16();
  v24 = v23(v22);
  v32 = OUTLINED_FUNCTION_39_9(v24, v25, v26, v27, v28, v29, v30, v31, v92, v94, v96);
  v108(v32);
  (v112)(v17 + v1, v2);
  v33 = OUTLINED_FUNCTION_19_16();
  v35 = v34(v33);
  v43 = OUTLINED_FUNCTION_26_15(v35, v36, v37, v38, v39, v40, v41, v42, v93, v95, v97, v98, v99, v101, v103, v105);
  v44(v43);
  (v112)(v17, v2);
  v102(v104, v100, v2);
  sub_18F52215C();
  if (qword_1ED6FE320 != -1)
  {
LABEL_30:
    OUTLINED_FUNCTION_0_41();
  }

  v45 = v0[46];
  v46 = sub_18F52165C();
  __swift_project_value_buffer(v46, qword_1ED707748);
  v47 = *(v45 + 16);
  v48 = OUTLINED_FUNCTION_56();
  v47(v48);
  v49 = sub_18F52163C();
  v50 = sub_18F52220C();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v0[48];
  v107 = v0;
  if (v51)
  {
    v53 = v0[47];
    v54 = v0[46];
    v55 = v0[45];
    v56 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v56 = 136315138;
    (v47)(v53, v52, v55);
    v57 = *(v54 + 8);
    v57(v52, v55);
    sub_18F52218C();
    v58 = v53;
    v59 = v0;
    v57(v58, v55);
    v60 = OUTLINED_FUNCTION_51_4();
    v63 = sub_18F11897C(v60, v61, v62);

    *(v56 + 4) = v63;
    _os_log_impl(&dword_18F0E9000, v49, v50, "Batching extraction: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  else
  {
    v59 = v0;
    v57 = *(v0[46] + 8);
    v57(v52, v0[45]);
  }

  v106 = v59 + 2;
  v59[56] = v57;
  v64 = OUTLINED_FUNCTION_34_10();
  v65(v64);
  OUTLINED_FUNCTION_19_3();
  sub_18F521B1C();
  while (1)
  {
    v66 = v59[34];
    v67 = v59[30];
    v68 = v59[21];
    swift_getAssociatedConformanceWitness();
    sub_18F52257C();
    if (__swift_getEnumTagSinglePayload(v67, 1, v68) == 1)
    {
      break;
    }

    v69 = v59[30];
    v70 = v59[26];
    v71 = v59[24];
    v72 = v59[21];
    v73 = v59[22];
    v111 = v59[15];
    v113 = v59[25];
    v74 = sub_18F521EFC();
    v109 = *(v59 + 9);
    v110 = *(v59 + 8);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v74);
    v78 = *(v73 + 32);
    v78(v71, v69, v72);
    v79 = (*(v73 + 80) + 64) & ~*(v73 + 80);
    OUTLINED_FUNCTION_50_2();
    v80 = swift_allocObject();
    *(v80 + 16) = 0;
    *(v80 + 24) = 0;
    *(v80 + 32) = v110;
    *(v80 + 48) = v109;
    v78(v80 + v79, v71, v72);
    v59 = v107;
    *(v80 + v66) = v111;
    sub_18F116A1C(v70, v113, &qword_1EACD0418);
    LODWORD(v71) = __swift_getEnumTagSinglePayload(v113, 1, v74);
    v81 = v111;
    if (v71 == 1)
    {
      sub_18F217988(v107[25], &qword_1EACD0418);
    }

    else
    {
      sub_18F521EEC();
      OUTLINED_FUNCTION_31_0();
      v82 = OUTLINED_FUNCTION_41_9();
      v83(v82);
    }

    if (*(v80 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v84 = sub_18F521E1C();
      v86 = v85;
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = 0;
      v86 = 0;
    }

    v87 = *v107[12];
    sub_18F0F21A8(0, &unk_1ED6FE390);

    if (v86 | v84)
    {
      v88 = v106;
      *v106 = 0;
      v106[1] = 0;
      v107[4] = v84;
      v107[5] = v86;
    }

    else
    {
      v88 = 0;
    }

    v89 = v107[26];
    v107[6] = 1;
    v107[7] = v88;
    v107[8] = v87;
    OUTLINED_FUNCTION_16_19();
    swift_task_create();

    sub_18F217988(v89, &qword_1EACD0418);
  }

  (*(v59[33] + 8))(v59[34], v59[32]);
  v90 = MEMORY[0x1E69E7CC0];
  v59[9] = MEMORY[0x1E69E7CC0];
  sub_18F0F21A8(0, &unk_1ED6FE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  OUTLINED_FUNCTION_66();
  sub_18F521F8C();
  v59[57] = v90;
  OUTLINED_FUNCTION_20_5(&qword_1ED6FDDA8, &qword_1EACD2828);
  v91 = swift_task_alloc();
  v59[58] = v91;
  *v91 = v59;
  OUTLINED_FUNCTION_15_17(v91);

  return MEMORY[0x1EEE6D8C8](v59 + 10);
}

uint64_t sub_18F216334()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[59] = v0;

  if (v0)
  {
    (*(v3[28] + 8))(v3[29], v3[27]);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F216450()
{
  v134 = v0;
  v2 = v0 + 10;
  v1 = v0[10];
  if (v1)
  {
    v3 = v0 + 9;
    v4 = v1;
    MEMORY[0x193ADB260]();
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F521D0C();
    }

    OUTLINED_FUNCTION_80_0();
    sub_18F521D6C();

    v5 = *v3;
    goto LABEL_31;
  }

  v122 = v0 + 10;
  v6 = v0[56];
  v127 = v0[54];
  v7 = v0[38];
  v132 = v0;
  v8 = v0[36];
  v9 = v0[35];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v11 = *(v8 + 8);
  v10 = v8 + 8;
  v11(v7, v9);
  v12 = OUTLINED_FUNCTION_66();
  v6(v12);
  v13 = OUTLINED_FUNCTION_41_9();
  v127(v13);
  v14 = v0[57];
  v15 = v0[50];
  OUTLINED_FUNCTION_32_15();
  sub_18F5220FC();
  OUTLINED_FUNCTION_66();
  v16 = sub_18F52180C();
  v18 = *(v15 + 8);
  v17 = v15 + 8;
  v0[54] = v18;
  v0[55] = v17 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19 = OUTLINED_FUNCTION_165();
  v18(v19);
  v123 = v14;
  v129 = v18;
  if ((v16 & 1) == 0)
  {
    v30 = v0[52];
    v124 = v0[51];
    v31 = v0[39];
    OUTLINED_FUNCTION_36_12();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_49_6();
    v32 = sub_18F5220EC();
    v129(v30, v31);
    OUTLINED_FUNCTION_49_6();
    sub_18F5220CC();
    OUTLINED_FUNCTION_66();
    if (sub_18F5217EC())
    {
      OUTLINED_FUNCTION_17_21();
      v33 = OUTLINED_FUNCTION_48_3();
      v124(v33);
      v34 = OUTLINED_FUNCTION_25_14();
      v35(v34);
      v36 = OUTLINED_FUNCTION_19_16();
      v38 = v37(v36);
      v46 = OUTLINED_FUNCTION_39_9(v38, v39, v40, v41, v42, v43, v44, v45, v108, v110, v112);
      v124(v46);
      v129(v32 + v17, v10);
      v47 = OUTLINED_FUNCTION_19_16();
      v49 = v48(v47);
      v57 = OUTLINED_FUNCTION_26_15(v49, v50, v51, v52, v53, v54, v55, v56, v109, v111, v113, v114, v115, v117, v119, v121);
      v58(v57);
      v129(v32, v10);
      v118(v120, v116, v10);
      sub_18F52215C();
      if (qword_1ED6FE320 == -1)
      {
LABEL_15:
        v59 = v0[46];
        v60 = sub_18F52165C();
        __swift_project_value_buffer(v60, qword_1ED707748);
        v61 = *(v59 + 16);
        v62 = OUTLINED_FUNCTION_56();
        v61(v62);
        v63 = sub_18F52163C();
        v64 = sub_18F52220C();
        v65 = os_log_type_enabled(v63, v64);
        v66 = v0[48];
        if (v65)
        {
          v67 = v0[46];
          v68 = v0[47];
          v69 = v0[45];
          v70 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v133 = v130;
          *v70 = 136315138;
          (v61)(v68, v66, v69);
          v71 = *(v67 + 8);
          v72 = OUTLINED_FUNCTION_51_4();
          v71(v72);
          v73 = sub_18F52218C();
          v75 = v74;
          (v71)(v68, v69);
          v76 = sub_18F11897C(v73, v75, &v133);

          *(v70 + 4) = v76;
          _os_log_impl(&dword_18F0E9000, v63, v64, "Batching extraction: %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v130);
          OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_32();
        }

        else
        {
          v71 = *(v0[46] + 8);
          (v71)(v0[48], v0[45]);
        }

        v0[56] = v71;
        v77 = OUTLINED_FUNCTION_34_10();
        v78(v77);
        sub_18F521B1C();
        while (1)
        {
          v79 = v0[34];
          v80 = v0[30];
          v81 = v0[21];
          swift_getAssociatedConformanceWitness();
          sub_18F52257C();
          if (__swift_getEnumTagSinglePayload(v80, 1, v81) == 1)
          {
            break;
          }

          v82 = v0[30];
          v83 = v0[26];
          v84 = v0[24];
          v85 = v132[22];
          v86 = v132[21];
          v128 = v132[15];
          v131 = v0[25];
          v87 = sub_18F521EFC();
          v126 = *(v132 + 8);
          v125 = *(v132 + 9);
          OUTLINED_FUNCTION_11();
          __swift_storeEnumTagSinglePayload(v88, v89, v90, v87);
          v91 = *(v85 + 32);
          v91(v84, v82, v86);
          v92 = (*(v85 + 80) + 64) & ~*(v85 + 80);
          OUTLINED_FUNCTION_50_2();
          v93 = swift_allocObject();
          *(v93 + 16) = 0;
          *(v93 + 24) = 0;
          *(v93 + 32) = v126;
          *(v93 + 48) = v125;
          v91(v93 + v92, v84, v86);
          *(v93 + v79) = v128;
          v0 = v132;
          sub_18F116A1C(v83, v131, &qword_1EACD0418);
          LODWORD(v92) = __swift_getEnumTagSinglePayload(v131, 1, v87);
          v94 = v128;
          v95 = v132[25];
          if (v92 == 1)
          {
            v96 = OUTLINED_FUNCTION_51_4();
            sub_18F217988(v96, v97);
          }

          else
          {
            sub_18F521EEC();
            OUTLINED_FUNCTION_31_0();
            (*(v98 + 8))(v95, v87);
          }

          if (*(v93 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            OUTLINED_FUNCTION_80_0();
            v99 = sub_18F521E1C();
            v101 = v100;
            swift_unknownObjectRelease();
          }

          else
          {
            v99 = 0;
            v101 = 0;
          }

          v102 = *v132[12];
          sub_18F0F21A8(0, &unk_1ED6FE390);

          if (v101 | v99)
          {
            v103 = v122 - 8;
            *(v122 - 8) = 0;
            *(v122 - 7) = 0;
            v132[4] = v99;
            v132[5] = v101;
          }

          else
          {
            v103 = 0;
          }

          v132[6] = 1;
          v132[7] = v103;
          v132[8] = v102;
          OUTLINED_FUNCTION_16_19();
          swift_task_create();

          v104 = OUTLINED_FUNCTION_51_4();
          sub_18F217988(v104, v105);
        }

        (*(v0[33] + 8))(v0[34], v0[32]);
        v5 = v123;
        v0[9] = v123;
        sub_18F0F21A8(0, &unk_1ED6FE390);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
        OUTLINED_FUNCTION_66();
        sub_18F521F8C();
        v2 = v122;
LABEL_31:
        v0[57] = v5;
        OUTLINED_FUNCTION_20_5(&qword_1ED6FDDA8, &qword_1EACD2828);
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        v0[58] = v106;
        *v106 = v107;
        OUTLINED_FUNCTION_15_17();

        return MEMORY[0x1EEE6D8C8](v2);
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_0_41();
    goto LABEL_15;
  }

  if (qword_1ED6FE320 != -1)
  {
    OUTLINED_FUNCTION_0_41();
  }

  v20 = sub_18F52165C();
  OUTLINED_FUNCTION_58(v20, qword_1ED707748);
  v21 = sub_18F52163C();
  v22 = sub_18F5221FC();
  if (os_log_type_enabled(v21, v22))
  {
    *OUTLINED_FUNCTION_54() = 0;
    OUTLINED_FUNCTION_54_5(&dword_18F0E9000, v23, v24, "Extraction completed");
    OUTLINED_FUNCTION_32();
  }

  v25 = v0[53];
  v26 = v0[39];
  v27 = v0[11];

  v129(v25, v26);
  *v27 = v123;

  OUTLINED_FUNCTION_71();

  return v28();
}

uint64_t sub_18F216E64()
{
  v1 = v0[56];
  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[49];
  v5 = v0[45];
  v6 = v0[39];
  (*(v0[36] + 8))();
  v1(v4, v5);
  v2(v3, v6);
  v7 = OUTLINED_FUNCTION_53();
  (v2)(v7);

  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F216FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[6] = v11;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_18F520B3C();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  type metadata accessor for DisplayRepresentation();
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F2170EC, 0, 0);
}

uint64_t sub_18F2170EC()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = OUTLINED_FUNCTION_80_0();
  v0[11] = AppEntity.asValueWithDisplayRepresentation.getter(v2, v3, AssociatedConformanceWitness);
  v4 = OUTLINED_FUNCTION_46_8();
  v5(v4);
  sub_18F52193C();
  v0[12] = v6;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_18F217230;
  OUTLINED_FUNCTION_43_2();

  return sub_18F21158C();
}

uint64_t sub_18F217230()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (!v0)
  {
    *(v5 + 120) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F217360()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[2];
  [v2 setExportedContent_];

  OUTLINED_FUNCTION_2_37();
  sub_18F11CDDC(v3, v5);
  *v4 = v2;

  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F21740C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_2_37();
  sub_18F11CDDC(v1, v2);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F217488()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_29_1();

  return sub_18F21555C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18F217568()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_51(AssociatedTypeWitness);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_29_1();

  return sub_18F216FF0(v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_18F217710()
{
  result = qword_1EACD2858;
  if (!qword_1EACD2858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD2850);
    sub_18F1B8B98(&qword_1EACD2860, &qword_1EACD0408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2858);
  }

  return result;
}

uint64_t sub_18F2177D8(uint64_t a1, unint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0410);

  return sub_18F214510(a1, a2, a3);
}

unint64_t sub_18F21786C()
{
  result = qword_1EACD2868;
  if (!qword_1EACD2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2868);
  }

  return result;
}

uint64_t sub_18F2178C0(uint64_t a1, int a2, void (**a3)(char *, uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2870);
  OUTLINED_FUNCTION_51(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v3 + v13);
  v15 = (v3 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];

  return sub_18F214904(a1, a2, a3, v3 + v12, v14, v16, v17);
}

uint64_t sub_18F217988(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_0_31();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t ForegroundContinuableIntent.needsToContinueInForegroundError(_:continuation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = type metadata accessor for IntentContext();
  OUTLINED_FUNCTION_10_0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  AppIntent.systemContext.getter(a4, *(a5 + 8));
  static IntentContext.current.getter(v21);
  sub_18F21964C(v40);
  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(v21, v22);
  static IntentContext.current.getter(v14);
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_3_26(v23, v24, v25, v15);
  v27 = v26;
  sub_18F219AEC(v14, v19, v26);
  v28 = *&v19[*(v15 + 60)];
  v29 = *(v19 + 3);
  sub_18F219A34(v19, v27);
  if (v29 != 4)
  {
    if (v28 == 3)
    {
      if (v29 != 3)
      {
        goto LABEL_2;
      }
    }

    else if ((v28 & 0xC) == 0)
    {
      goto LABEL_2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1FF8);
    OUTLINED_FUNCTION_32_16();
    v35 = *(v34 + 96);
    v36 = (a6 + *(v34 + 112));
    sub_18F15F1BC(a1, a6);
    *(v27 + a6) = 1;
    *(a6 + v28) = 0;
    *v29 = 0;
    v29[1] = 0;
    *(a6 + v35) = MEMORY[0x1E69E7CC0];
    v37 = v39;
    *v36 = a2;
    v36[1] = v37;
    type metadata accessor for AppIntentError.Context(0);
    swift_storeEnumTagMultiPayload();
    return sub_18F0F693C(a2);
  }

LABEL_2:
  if (qword_1EACCF548 != -1)
  {
    OUTLINED_FUNCTION_2_7();
  }

  v30 = type metadata accessor for AppIntentError(0);
  __swift_project_value_buffer(v30, qword_1EACD4AB8);
  OUTLINED_FUNCTION_1_2();
  return sub_18F219A8C(v31, a6, v32);
}

uint64_t ForegroundContinuableIntent.requestToContinueInForeground<A>(_:continuation:)()
{
  OUTLINED_FUNCTION_69();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v8 = sub_18F520F1C();
  OUTLINED_FUNCTION_10(v8);
  v1[19] = OUTLINED_FUNCTION_34_0();
  v9 = sub_18F520ADC();
  OUTLINED_FUNCTION_34_11(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_34_0();
  v11 = sub_18F52189C();
  OUTLINED_FUNCTION_10(v11);
  v1[23] = OUTLINED_FUNCTION_34_0();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_10(v12);
  v1[24] = OUTLINED_FUNCTION_34_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v13);
  v1[25] = OUTLINED_FUNCTION_34_0();
  v14 = type metadata accessor for IntentDialog(0);
  v1[26] = v14;
  OUTLINED_FUNCTION_10(v14);
  v1[27] = OUTLINED_FUNCTION_34_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  OUTLINED_FUNCTION_10(v15);
  v1[28] = OUTLINED_FUNCTION_34_0();
  v16 = type metadata accessor for IntentContext();
  v1[29] = v16;
  OUTLINED_FUNCTION_10(v16);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_18F217E70()
{
  OUTLINED_FUNCTION_31_21();
  v2 = static IntentContext.current.getter(v0);
  OUTLINED_FUNCTION_30_12(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, v31, SWORD2(v31), SBYTE6(v31), SHIBYTE(v31));
  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(0, v10);
  static IntentContext.current.getter(v1[28]);
  v11 = v1[32];
  v13 = v1[28];
  v12 = v1[29];
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_3_26(v14, v15, v16, v12);
  sub_18F219AEC(v13, v11, v17);
  OUTLINED_FUNCTION_29_18();
  if (v13 == 4)
  {
LABEL_2:
    if (qword_1EACCF548 != -1)
    {
      OUTLINED_FUNCTION_2_7();
    }

    v18 = type metadata accessor for AppIntentError(0);
    v19 = __swift_project_value_buffer(v18, qword_1EACD4AB8);
    sub_18F2199DC();
    OUTLINED_FUNCTION_38_8();
    OUTLINED_FUNCTION_1_2();
    sub_18F219A8C(v19, v20, v21);
    swift_willThrow();
    OUTLINED_FUNCTION_5_29();

    OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_28_2();

    __asm { BRAA            X1, X16 }
  }

  if (v12 == 3)
  {
    if (v13 != 3)
    {
      goto LABEL_2;
    }
  }

  else if ((v12 & 0xC) == 0)
  {
    goto LABEL_2;
  }

  static IntentContext.current.getter(v1[31]);
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v1[34] = *(off_1ED6FF6C8 + 10);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[35] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_21_14(v24);
  OUTLINED_FUNCTION_28_2();

  return sub_18F2AF7E8();
}

uint64_t sub_18F218110()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F218214()
{
  OUTLINED_FUNCTION_19_17();
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_17_22();
    OUTLINED_FUNCTION_23_17();
    *v3 = type metadata accessor for IntentContext.__();
    (*(v0 + 104))(v3, *MEMORY[0x1E6968E00], v4);
    sub_18F520EDC();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_24_16();
    IntentDialog.init(_:)();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_18F0EF1A8(*(v2 + 200), &qword_1EACCF7A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_25();
  }

  OUTLINED_FUNCTION_6_29();
  v5 = swift_task_alloc();
  *(v2 + 312) = v5;
  *v5 = v2;
  v5[1] = sub_18F2183C0;
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_26_16();

  return v6();
}

uint64_t sub_18F2183C0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2184BC()
{
  OUTLINED_FUNCTION_11_20();
  sub_18F2196F8(1);

  OUTLINED_FUNCTION_4_27();
  sub_18F219A34(v2, v3);
  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(v1, v4);
  OUTLINED_FUNCTION_9_20();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 328) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_28_22(v5);

  return v8(v7);
}

uint64_t sub_18F2185C8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t ForegroundContinuableIntent.needsToContinueInForegroundError(_:requestConfirmation:continuation:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a3;
  v41 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for IntentContext();
  OUTLINED_FUNCTION_10_0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - v21;
  AppIntent.systemContext.getter(a5, *(a6 + 8));
  static IntentContext.current.getter(v22);
  sub_18F21964C(v42);
  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(v22, v23);
  static IntentContext.current.getter(v15);
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_3_26(v24, v25, v26, v16);
  v28 = v27;
  sub_18F219AEC(v15, v20, v27);
  v29 = *&v20[*(v16 + 60)];
  v30 = *(v20 + 3);
  sub_18F219A34(v20, v28);
  if (v30 != 4)
  {
    if (v29 == 3)
    {
      if (v30 != 3)
      {
        goto LABEL_2;
      }
    }

    else if ((v29 & 0xC) == 0)
    {
      goto LABEL_2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1FF8);
    OUTLINED_FUNCTION_32_16();
    v36 = *(v35 + 96);
    v37 = (a7 + *(v35 + 112));
    sub_18F15F1BC(a1, a7);
    *(v28 + a7) = a2 & 1;
    *(a7 + v29) = 0;
    *v30 = 0;
    v30[1] = 0;
    *(a7 + v36) = MEMORY[0x1E69E7CC0];
    v39 = v40;
    v38 = v41;
    *v37 = v40;
    v37[1] = v38;
    type metadata accessor for AppIntentError.Context(0);
    swift_storeEnumTagMultiPayload();
    return sub_18F0F693C(v39);
  }

LABEL_2:
  if (qword_1EACCF548 != -1)
  {
    OUTLINED_FUNCTION_2_7();
  }

  v31 = type metadata accessor for AppIntentError(0);
  __swift_project_value_buffer(v31, qword_1EACD4AB8);
  OUTLINED_FUNCTION_1_2();
  return sub_18F219A8C(v32, a7, v33);
}

uint64_t ForegroundContinuableIntent.requestToContinueInForeground<A>(_:requestConfirmation:continuation:)()
{
  OUTLINED_FUNCTION_69();
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  *(v1 + 104) = v5;
  *(v1 + 112) = v6;
  *(v1 + 344) = v7;
  *(v1 + 96) = v8;
  v9 = sub_18F520F1C();
  OUTLINED_FUNCTION_10(v9);
  *(v1 + 152) = OUTLINED_FUNCTION_34_0();
  v10 = sub_18F520ADC();
  OUTLINED_FUNCTION_34_11(v10);
  *(v1 + 168) = v11;
  *(v1 + 176) = OUTLINED_FUNCTION_34_0();
  v12 = sub_18F52189C();
  OUTLINED_FUNCTION_10(v12);
  *(v1 + 184) = OUTLINED_FUNCTION_34_0();
  v13 = sub_18F520B3C();
  OUTLINED_FUNCTION_10(v13);
  *(v1 + 192) = OUTLINED_FUNCTION_34_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v14);
  *(v1 + 200) = OUTLINED_FUNCTION_34_0();
  v15 = type metadata accessor for IntentDialog(0);
  *(v1 + 208) = v15;
  OUTLINED_FUNCTION_10(v15);
  *(v1 + 216) = OUTLINED_FUNCTION_34_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  OUTLINED_FUNCTION_10(v16);
  *(v1 + 224) = OUTLINED_FUNCTION_34_0();
  v17 = type metadata accessor for IntentContext();
  *(v1 + 232) = v17;
  OUTLINED_FUNCTION_10(v17);
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_18F218B50()
{
  OUTLINED_FUNCTION_31_21();
  v2 = static IntentContext.current.getter(v0);
  OUTLINED_FUNCTION_30_12(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, v31, SWORD2(v31), SBYTE6(v31), SHIBYTE(v31));
  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(0, v10);
  static IntentContext.current.getter(v1[28]);
  v11 = v1[32];
  v13 = v1[28];
  v12 = v1[29];
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_3_26(v14, v15, v16, v12);
  sub_18F219AEC(v13, v11, v17);
  OUTLINED_FUNCTION_29_18();
  if (v13 == 4)
  {
LABEL_2:
    if (qword_1EACCF548 != -1)
    {
      OUTLINED_FUNCTION_2_7();
    }

    v18 = type metadata accessor for AppIntentError(0);
    v19 = __swift_project_value_buffer(v18, qword_1EACD4AB8);
    sub_18F2199DC();
    OUTLINED_FUNCTION_38_8();
    OUTLINED_FUNCTION_1_2();
    sub_18F219A8C(v19, v20, v21);
    swift_willThrow();
    OUTLINED_FUNCTION_5_29();

    OUTLINED_FUNCTION_15_18();
    OUTLINED_FUNCTION_28_2();

    __asm { BRAA            X1, X16 }
  }

  if (v12 == 3)
  {
    if (v13 != 3)
    {
      goto LABEL_2;
    }
  }

  else if ((v12 & 0xC) == 0)
  {
    goto LABEL_2;
  }

  static IntentContext.current.getter(v1[31]);
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v1[34] = *(off_1ED6FF6C8 + 10);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[35] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_21_14(v24);
  OUTLINED_FUNCTION_28_2();

  return sub_18F2AF7E8();
}

uint64_t sub_18F218DF0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F218EF4()
{
  OUTLINED_FUNCTION_19_17();
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_17_22();
    OUTLINED_FUNCTION_23_17();
    *v3 = type metadata accessor for IntentContext.__();
    (*(v0 + 104))(v3, *MEMORY[0x1E6968E00], v4);
    sub_18F520EDC();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_24_16();
    IntentDialog.init(_:)();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_18F0EF1A8(*(v2 + 200), &qword_1EACCF7A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_25();
  }

  OUTLINED_FUNCTION_6_29();
  v5 = swift_task_alloc();
  *(v2 + 312) = v5;
  *v5 = v2;
  v5[1] = sub_18F2190A4;
  OUTLINED_FUNCTION_26_16();

  return v6();
}

uint64_t sub_18F2190A4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2191A0()
{
  OUTLINED_FUNCTION_11_20();
  sub_18F2196F8(1);

  OUTLINED_FUNCTION_4_27();
  sub_18F219A34(v2, v3);
  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(v1, v4);
  OUTLINED_FUNCTION_9_20();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 328) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_28_22(v5);

  return v8(v7);
}

uint64_t sub_18F2192AC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F2193A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  v15 = *(v14 + 248);
  OUTLINED_FUNCTION_4_27();
  sub_18F219A34(v16, v17);

  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(v15, v18);
  OUTLINED_FUNCTION_5_29();
  v30 = v19;
  v31 = v20;

  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_20();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_18F2194A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  v15 = v14[31];
  v26 = v14[22];
  v27 = v14[19];
  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(v15, v16);

  OUTLINED_FUNCTION_20();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26, v27, a12, a13, a14);
}

uint64_t sub_18F219584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_0_42();
  sub_18F219A34(v14, v15);
  OUTLINED_FUNCTION_5_29();
  v27 = v16;
  v28 = v17;

  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_20();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

void sub_18F21964C(_BYTE *a1@<X8>)
{
  os_unfair_lock_lock((v1 + 16));
  sub_18F21988C((v1 + 24), a1);
  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_18F2196A0()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = sub_18F219938((v0 + 24));
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

void sub_18F2196F8(char a1)
{
  os_unfair_lock_lock(v1 + 4);
  sub_18F2197A8(&v1[6], a1);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_18F21974C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(v2 + 4);
  sub_18F219818(&v2[6], a1, a2);
  os_unfair_lock_unlock(v2 + 4);
}

_OWORD *sub_18F2197A8(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    v2 = 0;
    memset(v4, 0, 24);
  }

  else
  {
    LOBYTE(v4[0]) = a2 & 1;
    v2 = &type metadata for IntentModes.Current;
  }

  v4[3] = v2;
  return sub_18F42110C(v4, &unk_1F0315AF0);
}

_OWORD *sub_18F219818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = MEMORY[0x1E69E6158];
    v4 = a3;
  }

  else
  {
    a2 = 0;
    v4 = 0;
    v3 = 0;
    v6[2] = 0;
  }

  v6[0] = a2;
  v6[1] = v4;
  v6[3] = v3;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return sub_18F42110C(v6, &type metadata for TurnContext.Identifier);
}

uint64_t sub_18F21988C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_18F0EFA5C(&unk_1F0315AF0), (v5 & 1) != 0))
  {
    sub_18F0FECD4(*(v3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0430);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 2;
  }

  return result;
}

uint64_t sub_18F219938(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16) && (v2 = sub_18F0EFA5C(&type metadata for TurnContext.Identifier), (v3 & 1) != 0))
  {
    sub_18F0FECD4(*(v1 + 56) + 32 * v2, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0430);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18F2199DC()
{
  result = qword_1EACCF088;
  if (!qword_1EACCF088)
  {
    type metadata accessor for AppIntentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCF088);
  }

  return result;
}

uint64_t sub_18F219A34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F219A8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_18F219AEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t EqualToComparator.__allocating_init(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_6_30();
  return EqualToComparator.init(mappingTransform:)(v0, v1);
}

void EqualToComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_57();
  EqualToComparator.init<A>(withResolvers:mappingTransform:)(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_101_0();
}

uint64_t EqualToComparator.__deallocating_deinit()
{
  v0 = EntityQueryComparator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t NotEqualToComparator.__allocating_init(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_6_30();
  return NotEqualToComparator.init(mappingTransform:)(v0, v1);
}

uint64_t sub_18F219D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v3[13] = a3;
  v6 = OUTLINED_FUNCTION_36_13();
  *(v6 + 16) = v4[21];
  *(v6 + 24) = v4[22];
  *(v6 + 32) = *(v5 + 23);
  *(v6 + 48) = v4[25];
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_12_26();
  return sub_18F1F41D8(v7, v8, v9, v10, v11);
}

void NotEqualToComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_57();
  NotEqualToComparator.init<A>(withResolvers:mappingTransform:)(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_101_0();
}

uint64_t (*sub_18F219FF8())(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_18();
  OUTLINED_FUNCTION_29_19();
  v4 = swift_allocObject();
  v5 = v1[6];
  *(v4 + 16) = v1[5];
  *(v4 + 32) = v5;
  *(v4 + 48) = v1[7];
  *(v4 + 64) = v0;
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;

  return sub_18F21E4C8;
}

uint64_t sub_18F21A078(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v36 = a3;
  v33 = a2;
  v37 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v32 - v11;
  v12 = sub_18F52254C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v32 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v32 - v21;
  v23 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25, v37, a6);
  if (swift_dynamicCast())
  {
    (*(v13 + 32))(v19, v22, v12);
    (*(v13 + 16))(v16, v19, v12);
    if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) != 1)
    {
      v29 = v34;
      v30 = v32;
      (*(v34 + 32))(v32, v16, AssociatedTypeWitness);
      v28 = v36(v30, v33);
      (*(v29 + 8))(v30, AssociatedTypeWitness);
      (*(v13 + 8))(v19, v12);
      goto LABEL_8;
    }

    (*(v13 + 8))(v19, v12);
    goto LABEL_6;
  }

  if (!swift_dynamicCast())
  {
LABEL_6:
    v28 = 0;
    goto LABEL_8;
  }

  v26 = v34;
  v27 = v32;
  (*(v34 + 32))(v32, v10, AssociatedTypeWitness);
  v28 = v36(v27, v33);
  (*(v26 + 8))(v27, AssociatedTypeWitness);
LABEL_8:
  (*(v23 + 8))(v25, a6);
  return v28 & 1;
}

void GreaterThanComparator.__allocating_init(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  OUTLINED_FUNCTION_6_30();
  GreaterThanComparator.init(mappingTransform:)();
}

void GreaterThanComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_57();
  GreaterThanComparator.init<A>(withResolvers:mappingTransform:)(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_101_0();
}

void LessThanComparator.__allocating_init(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  OUTLINED_FUNCTION_6_30();
  LessThanComparator.init(mappingTransform:)();
}

void LessThanComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_57();
  LessThanComparator.init<A>(withResolvers:mappingTransform:)(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_101_0();
}

void GreaterThanOrEqualToComparator.__allocating_init(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  OUTLINED_FUNCTION_6_30();
  GreaterThanOrEqualToComparator.init(mappingTransform:)();
}

void GreaterThanOrEqualToComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_57();
  GreaterThanOrEqualToComparator.init<A>(withResolvers:mappingTransform:)(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_101_0();
}

void LessThanOrEqualToComparator.__allocating_init(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  OUTLINED_FUNCTION_6_30();
  LessThanOrEqualToComparator.init(mappingTransform:)();
}

void sub_18F21AA6C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = *v0;
  v0[13] = v2;
  OUTLINED_FUNCTION_23_18();
  v4 = *(v3 + 192);
  v5 = *(v1 + 176);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_allocObject();
  OUTLINED_FUNCTION_23_18();
  v8[2] = *(v7 + 168);
  v8[3] = v5;
  v8[4] = *(v1 + 184);
  v8[5] = v4;
  OUTLINED_FUNCTION_23_18();
  *(v10 + 48) = *(v9 + 200);
  *(v10 + 56) = AssociatedTypeWitness;
  sub_18F219FF8();

  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_17_23();
  OUTLINED_FUNCTION_12_26();
  sub_18F1F41D8(v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_47_0();
}

void LessThanOrEqualToComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_57();
  LessThanOrEqualToComparator.init<A>(withResolvers:mappingTransform:)(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_101_0();
}

uint64_t sub_18F21ACC8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = *v7;
  v7[13] = a7;
  OUTLINED_FUNCTION_23_18();
  v11 = *(v10 + 192);
  v12 = *(v22 + 176);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_allocObject();
  OUTLINED_FUNCTION_23_18();
  v15[2] = *(v14 + 168);
  v15[3] = v12;
  v15[4] = *(v22 + 184);
  v15[5] = a5;
  v15[6] = v11;
  v15[7] = a6;
  OUTLINED_FUNCTION_23_18();
  *(v17 + 64) = *(v16 + 200);
  *(v17 + 72) = AssociatedTypeWitness;
  sub_18F219FF8();
  v19 = v18;

  v26[3] = a5;
  v26[4] = a6;
  __swift_allocate_boxed_opaque_existential_1(v26);
  a1();

  v20 = OUTLINED_FUNCTION_17_23();
  return sub_18F1F41D8(v20, v19, v26, a3, a4);
}

uint64_t IsBetweenComparator.__allocating_init(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  OUTLINED_FUNCTION_6_30();
  return IsBetweenComparator.init(mappingTransform:)();
}

uint64_t IsBetweenComparator.init(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  v3 = *v1;
  v4 = *v1;
  v1[13] = 9;
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 168);
  *(v5 + 32) = *(v3 + 184);
  *(v5 + 40) = *(v4 + 192);
  *(v5 + 56) = *(v3 + 208);
  OUTLINED_FUNCTION_5_30();
  v6 = OUTLINED_FUNCTION_22_18();
  return sub_18F1F41E0(v6, v7, v8, v2, v0);
}

uint64_t sub_18F21B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a3;
  v7 = sub_18F52254C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F11E26C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, a6);
    (*(v12 + 32))(v14, v11, a6);
    v15 = 0;
    if (sub_18F5217DC())
    {
      v15 = sub_18F5217EC();
    }

    (*(v12 + 8))(v14, a6);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, a6);
    (*(v8 + 8))(v11, v7);
    v15 = 0;
  }

  return v15 & 1;
}

void IsBetweenComparator.init<A>(withResolvers:mappingTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_48_0();
  a25 = v27;
  a26 = v28;
  v29 = v26;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = *v29;
  v37 = *v29;
  v29[13] = 9;
  v38 = swift_allocObject();
  *(v38 + 16) = v36[21];
  *(v38 + 24) = *(v37 + 11);
  *(v38 + 40) = v36[24];
  *(v38 + 48) = v33;
  *(v38 + 56) = v36[25];
  *(v38 + 64) = v36[26];
  *(v38 + 72) = v31;
  a13 = v33;
  a14 = v31;
  __swift_allocate_boxed_opaque_existential_1(&a10);
  v35();

  OUTLINED_FUNCTION_12_26();
  sub_18F1F41E0(v39, v40, v41, v42, v43);
  OUTLINED_FUNCTION_47_0();
}

uint64_t sub_18F21B438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a3;
  v7 = sub_18F52254C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F11E26C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, a6);
    (*(v12 + 32))(v14, v11, a6);
    v15 = 0;
    if (sub_18F5217DC())
    {
      v15 = sub_18F5217EC();
    }

    (*(v12 + 8))(v14, a6);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, a6);
    (*(v8 + 8))(v11, v7);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t ContainsComparator.__allocating_init<>(mappingTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  return ContainsComparator.init<>(mappingTransform:)(a1, a2, a3, a4, a5);
}

uint64_t ContainsComparator.init<>(mappingTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *v5;
  OUTLINED_FUNCTION_32_17();
  v13 = swift_allocObject();
  *(v13 + 16) = v11[21];
  *(v13 + 24) = *(v12 + 11);
  *(v13 + 40) = v11[24];
  *(v13 + 48) = a3;
  *(v13 + 56) = a4;
  *(v13 + 64) = v11[26];
  *(v13 + 72) = a5;
  OUTLINED_FUNCTION_5_30();
  v14 = OUTLINED_FUNCTION_22_18();
  return sub_18F1F41D8(v14, v15, v16, a1, a2);
}

void ContainsComparator.init<A>(withResolvers:mappingTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_26_17();
  a27 = v30;
  a28 = v31;
  v32 = v29;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v51 = v41;
  v52 = v42;
  v50 = v43;
  v44 = a29;
  v45 = *v32;
  v46 = *v32;
  OUTLINED_FUNCTION_31_22();
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_20_15();
  *(v49 + 16) = *(v48 + 168);
  *(v49 + 24) = *(v46 + 176);
  *(v49 + 40) = *(v45 + 192);
  *(v49 + 48) = v40;
  *(v49 + 56) = v38;
  *(v49 + 64) = v36;
  *(v49 + 72) = *(v45 + 208);
  *(v49 + 80) = v34;
  *(v49 + 88) = v44;
  a15 = v40;
  a16 = v44;
  __swift_allocate_boxed_opaque_existential_1(&a12);
  v50();

  sub_18F1F41D8(sub_18F21BB10, v47, &a12, v51, v52);
  OUTLINED_FUNCTION_27_19();
}

void ContainsComparator.__allocating_init<>(mappingTransform:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_57();
  ContainsComparator.init<>(mappingTransform:)();
  OUTLINED_FUNCTION_101_0();
}

void ContainsComparator.init<>(mappingTransform:)()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_18_20();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = *v0;
  OUTLINED_FUNCTION_32_17();
  v12 = swift_allocObject();
  *(v12 + 16) = v10[21];
  *(v12 + 24) = v10[22];
  *(v12 + 32) = *(v11 + 23);
  *(v12 + 48) = v10[25];
  *(v12 + 56) = v5;
  *(v12 + 64) = v10[26];
  *(v12 + 72) = v3;
  *(v12 + 80) = v2;
  *(v12 + 88) = v1;
  OUTLINED_FUNCTION_5_30();
  v13 = OUTLINED_FUNCTION_22_18();
  sub_18F1F41D8(v13, v14, v15, v9, v7);
  OUTLINED_FUNCTION_47_0();
}

uint64_t sub_18F21BC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36 = a6;
  v37 = a8;
  v34 = a3;
  v35 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = v32 - v18;
  v20 = sub_18F52254C();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v32 - v22;
  MEMORY[0x1EEE9AC00](v21);
  (*(v25 + 16))(v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  swift_dynamicCast();
  if (__swift_getEnumTagSinglePayload(v23, 1, AssociatedTypeWitness) == 1)
  {
    v26 = 0;
  }

  else
  {
    v33 = a11;
    v27 = (*(v17 + 32))(v19, v23, AssociatedTypeWitness);
    v32[1] = v32;
    MEMORY[0x1EEE9AC00](v27);
    v28 = v35;
    v32[-12] = v34;
    v32[-11] = a4;
    v30 = v36;
    v29 = v37;
    v32[-10] = v28;
    v32[-9] = v30;
    v32[-8] = a7;
    v32[-7] = v29;
    v32[-6] = a9;
    v32[-5] = a10;
    v32[-4] = v33;
    v32[-3] = a12;
    v32[-2] = a2;
    v26 = sub_18F521BFC();
    (*(v17 + 8))(v19, AssociatedTypeWitness);
  }

  return v26 & 1;
}

uint64_t ContainsComparator.__allocating_init<A>(withResolvers:mappingTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18_20();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_19_18();
  return ContainsComparator.init<A>(withResolvers:mappingTransform:)(v10, v11, v12, v13, v14, v15, v16, a8, a9, a10);
}

uint64_t ContainsComparator.init<A>(withResolvers:mappingTransform:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *v10;
  v15 = *v10;
  OUTLINED_FUNCTION_31_22();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_20_15();
  *(v18 + 16) = *(v17 + 168);
  *(v18 + 24) = *(v15 + 176);
  *(v18 + 40) = *(v14 + 192);
  *(v18 + 48) = a5;
  *(v18 + 56) = *(v14 + 200);
  *(v18 + 64) = a6;
  OUTLINED_FUNCTION_20_15();
  v20[9] = *(v19 + 208);
  v20[10] = a7;
  v20[11] = a8;
  v20[12] = a9;
  v20[13] = a10;
  v26[3] = a5;
  v26[4] = a8;
  __swift_allocate_boxed_opaque_existential_1(v26);
  a1();

  return sub_18F1F41D8(sub_18F21C438, v16, v26, a3, a4);
}

uint64_t sub_18F21C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v42 = a6;
  v43 = a7;
  v40 = a3;
  v41 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = v36 - v20;
  v22 = sub_18F52254C();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v36 - v24;
  MEMORY[0x1EEE9AC00](v23);
  (*(v27 + 16))(v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  swift_dynamicCast();
  if (__swift_getEnumTagSinglePayload(v25, 1, AssociatedTypeWitness) == 1)
  {
    v28 = 0;
  }

  else
  {
    v38 = a2;
    v39 = a13;
    v37 = a12;
    v29 = (*(v19 + 32))(v21, v25, AssociatedTypeWitness);
    v36[1] = v36;
    MEMORY[0x1EEE9AC00](v29);
    v30 = v41;
    v36[-14] = v40;
    v36[-13] = a4;
    v32 = v42;
    v31 = v43;
    v36[-12] = v30;
    v36[-11] = v32;
    v36[-10] = v31;
    v36[-9] = a8;
    v36[-8] = a9;
    v36[-7] = a10;
    v33 = v37;
    v36[-6] = a11;
    v36[-5] = v33;
    v34 = v38;
    v36[-4] = v39;
    v36[-3] = a14;
    v36[-2] = v34;
    v28 = sub_18F521BFC();
    (*(v19 + 8))(v21, AssociatedTypeWitness);
  }

  return v28 & 1;
}

uint64_t ContainsComparator.__allocating_init<>(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_6_30();
  return ContainsComparator.init<>(mappingTransform:)(v0, v1);
}

{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  OUTLINED_FUNCTION_6_30();
  return ContainsComparator.init<>(mappingTransform:)();
}

{
  OUTLINED_FUNCTION_8_18();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  OUTLINED_FUNCTION_11_21();
  return ContainsComparator.init<>(mappingTransform:)();
}

void ContainsComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_57();
  ContainsComparator.init<A>(withResolvers:mappingTransform:)(v0);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_28_23();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_4_28();
  ContainsComparator.init<A>(withResolvers:mappingTransform:)(v0);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_57();
  ContainsComparator.init<A>(withResolvers:mappingTransform:)(v0);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_28_23();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_4_28();
  ContainsComparator.init<A>(withResolvers:mappingTransform:)(v0);
  OUTLINED_FUNCTION_101_0();
}

void ContainsComparator.init<>(mappingTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_48_0();
  a25 = v31;
  a26 = v32;
  OUTLINED_FUNCTION_38_9();
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_25_15();
  v34[2] = *(v33 + 168);
  v34[3] = v29[22];
  v34[4] = v29[24];
  v34[5] = v29[25];
  v34[6] = v27;
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_24_17();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_10_22(v35);
  v36[6] = v27;
  v36[7] = v28;
  v36[8] = v26;
  sub_18F1F41D8(sub_18F21C884, v30, &a9, sub_18F21C894, v37);
  OUTLINED_FUNCTION_47_0();
}

uint64_t sub_18F21C748(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = *v2;
  v4 = v2[1];
  (*(v5 + 16))(v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
  swift_dynamicCast();
  if (v11)
  {
    v10[2] = v10[4];
    v10[3] = v11;
    v10[0] = v3;
    v10[1] = v4;
    sub_18F12A000();
    v8 = sub_18F5225FC();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t ContainsComparator.init<>(mappingTransform:)()
{
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_5_30();
  v0 = OUTLINED_FUNCTION_22_18();
  return sub_18F1F41D8(v0, 0, v1, v2, v3);
}

{
  OUTLINED_FUNCTION_8_18();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_32_17();
  v4 = OUTLINED_FUNCTION_36_13();
  *(v4 + 16) = *(v3 + 168);
  *(v4 + 32) = *(v2 + 192);
  *(v4 + 40) = *(v2 + 200);
  *(v4 + 48) = v0;
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_12_26();
  return sub_18F1F41D8(v5, v6, v7, v8, v9);
}

uint64_t ContainsComparator.init<A>(withResolvers:mappingTransform:)(void (*a1)(void))
{
  OUTLINED_FUNCTION_31_22();
  v10[3] = v2;
  v10[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v10);
  a1();

  OUTLINED_FUNCTION_12_26();
  return sub_18F1F41D8(v4, v5, v6, v7, v8);
}

uint64_t sub_18F21CBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F5208EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F1DE5B0();
  v8 = *(v5 + 16);
  v8(v7, a1, v4);
  v9 = sub_18F52234C();
  v10 = [v9 string];

  v11 = sub_18F5218DC();
  v13 = v12;

  v20[2] = v11;
  v20[3] = v13;
  v8(v7, a2, v4);
  v14 = sub_18F52234C();
  v15 = [v14 string];

  v16 = sub_18F5218DC();
  v18 = v17;

  v20[0] = v16;
  v20[1] = v18;
  sub_18F12A000();
  LOBYTE(v16) = sub_18F5225FC();

  return v16 & 1;
}

uint64_t sub_18F21CE7C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18F5208EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD1480);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v15);
  (*(v19 + 16))(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  swift_dynamicCast();
  if (__swift_getEnumTagSinglePayload(v17, 1, v7) == 1)
  {
    v20 = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v17, v7);
    sub_18F1DE5B0();
    v34 = v8;
    v21 = *(v8 + 16);
    v21(v11, v13, v7);
    v22 = sub_18F52234C();
    v23 = [v22 string];

    v24 = sub_18F5218DC();
    v26 = v25;

    v37 = v24;
    v38 = v26;
    v21(v11, a2, v7);
    v27 = sub_18F52234C();
    v28 = [v27 string];

    v29 = sub_18F5218DC();
    v31 = v30;

    v35 = v29;
    v36 = v31;
    sub_18F12A000();
    v20 = sub_18F5225FC();

    (*(v34 + 8))(v13, v7);
  }

  return v20 & 1;
}

uint64_t HasPrefixComparator.__allocating_init<>(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_6_30();
  return HasPrefixComparator.init<>(mappingTransform:)(v0, v1);
}

void HasPrefixComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_57();
  HasPrefixComparator.init<A>(withResolvers:mappingTransform:)(v0);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_28_23();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_4_28();
  HasPrefixComparator.init<A>(withResolvers:mappingTransform:)(v0);
  OUTLINED_FUNCTION_101_0();
}

void HasPrefixComparator.init<>(mappingTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_48_0();
  a25 = v31;
  a26 = v32;
  OUTLINED_FUNCTION_8_18();
  v33 = *v27;
  v27[13] = 7;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_25_15();
  v35[2] = *(v34 + 168);
  v35[3] = v33[22];
  v35[4] = v33[24];
  v35[5] = v33[25];
  v35[6] = v26;
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_24_17();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_10_22(v36);
  v37[6] = v26;
  v37[7] = v29;
  v37[8] = v28;
  sub_18F1F41D8(sub_18F21D584, v30, &a9, sub_18F21E53C, v38);
  OUTLINED_FUNCTION_47_0();
}

uint64_t HasSuffixComparator.__allocating_init<>(mappingTransform:)()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_6_30();
  return HasSuffixComparator.init<>(mappingTransform:)(v0, v1);
}

uint64_t sub_18F21D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v6[13] = a3;
  OUTLINED_FUNCTION_5_30();
  v12 = swift_allocObject();
  v12[2] = *(v11 + 168);
  v12[3] = *(v11 + 192);
  v12[4] = a1;
  v12[5] = a2;
  return sub_18F1F41D8(a5, 0, &v14, a6, v12);
}

void HasSuffixComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_57();
  HasSuffixComparator.init<A>(withResolvers:mappingTransform:)(v0);
  OUTLINED_FUNCTION_101_0();
}

{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_28_23();
  OUTLINED_FUNCTION_3_27();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_4_28();
  HasSuffixComparator.init<A>(withResolvers:mappingTransform:)(v0);
  OUTLINED_FUNCTION_101_0();
}

void sub_18F21D918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_48_0();
  a25 = v32;
  a26 = v33;
  OUTLINED_FUNCTION_18_20();
  v35 = v34;
  v37 = v36;
  v38 = a27;
  v46 = a28;
  v39 = *v28;
  v28[13] = v40;
  a13 = v41;
  a14 = v42;
  __swift_allocate_boxed_opaque_existential_1(&a10);
  v37();

  swift_allocObject();
  OUTLINED_FUNCTION_20_15();
  v44[2] = *(v43 + 168);
  v44[3] = *(v39 + 192);
  v44[4] = v30;
  v44[5] = v29;
  v44[6] = v35;
  v44[7] = v31;
  sub_18F1F41D8(v38, 0, &a10, v46, v45);
  OUTLINED_FUNCTION_47_0();
}

void HasSuffixComparator.init<>(mappingTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_48_0();
  a25 = v32;
  a26 = v33;
  OUTLINED_FUNCTION_38_9();
  *(v27 + 104) = 8;
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_25_15();
  v35[2] = *(v34 + 168);
  v35[3] = v30[22];
  v35[4] = v30[24];
  v35[5] = v30[25];
  v35[6] = v28;
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_24_17();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_10_22(v36);
  v37[6] = v28;
  v37[7] = v29;
  v37[8] = v26;
  sub_18F1F41D8(sub_18F21DC38, v31, &a9, sub_18F21E53C, v38);
  OUTLINED_FUNCTION_47_0();
}

uint64_t sub_18F21DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_30_13();
  MEMORY[0x1EEE9AC00](v9);
  v12 = *v11;
  v13 = v11[1];
  (*(v14 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
  swift_dynamicCast();
  if (v20)
  {
    v17 = a8(v12, v13, v19, v20);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_18F21DDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_30_13();
  MEMORY[0x1EEE9AC00](v10);
  v13 = *v12;
  v14 = v12[1];
  (*(v15 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
  swift_dynamicCast();
  if (v21)
  {
    v18 = a10(v13, v14, v20, v21);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t dispatch thunk of ContainsComparator.__allocating_init<>(mappingTransform:)()
{
  return (*(v0 + 224))();
}

{
  return (*(v0 + 240))();
}

{
  return (*(v0 + 256))();
}

{
  return (*(v0 + 272))();
}

{
  return (*(v0 + 288))();
}

{
  return (*(v0 + 304))();
}

uint64_t dispatch thunk of ContainsComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  return (*(v0 + 232))();
}

{
  return (*(v0 + 248))();
}

{
  return (*(v0 + 264))();
}

{
  return (*(v0 + 280))();
}

{
  return (*(v0 + 296))();
}

{
  return (*(v0 + 312))();
}

uint64_t dispatch thunk of HasPrefixComparator.__allocating_init<>(mappingTransform:)()
{
  return (*(v0 + 224))();
}

{
  return (*(v0 + 240))();
}

uint64_t dispatch thunk of HasPrefixComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  return (*(v0 + 232))();
}

{
  return (*(v0 + 248))();
}

uint64_t dispatch thunk of HasSuffixComparator.__allocating_init<>(mappingTransform:)()
{
  return (*(v0 + 224))();
}

{
  return (*(v0 + 240))();
}

uint64_t dispatch thunk of HasSuffixComparator.__allocating_init<A>(withResolvers:mappingTransform:)()
{
  return (*(v0 + 232))();
}

{
  return (*(v0 + 248))();
}

uint64_t sub_18F21E3FC()
{
  OUTLINED_FUNCTION_39_10();
  v0 = sub_18F52180C();
  return OUTLINED_FUNCTION_37_11(v0);
}

uint64_t sub_18F21E430()
{
  OUTLINED_FUNCTION_39_10();
  v0 = sub_18F52180C();
  return OUTLINED_FUNCTION_37_11(v0);
}

uint64_t sub_18F21E464()
{
  OUTLINED_FUNCTION_39_10();
  v0 = sub_18F52180C();
  return OUTLINED_FUNCTION_37_11(v0);
}

uint64_t sub_18F21E498()
{
  OUTLINED_FUNCTION_39_10();
  v0 = sub_18F52180C();
  return OUTLINED_FUNCTION_37_11(v0);
}

uint64_t sub_18F21E57C()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_36();

  return v2();
}

uint64_t sub_18F21E600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  return OUTLINED_FUNCTION_5_5(sub_18F21E61C);
}

uint64_t sub_18F21E61C()
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0);
  v1 = sub_18F5218DC();
  v3 = sub_18F10051C(v1, v2, 0);
  v0[26] = v3;
  v4 = LNDaemonApplicationXPCInterface();
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v0[14] = sub_18F21EC18;
  v0[15] = 0;
  v5 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_18F38D7A4;
  v0[13] = &block_descriptor_19;
  v6 = _Block_copy(v0 + 10);
  v7 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_18F52261C();
  swift_unknownObjectRelease();
  sub_18F0FECD4((v0 + 18), (v0 + 10));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8);
  if (OUTLINED_FUNCTION_5_31())
  {
    v8 = v0[22];
    v0[27] = v8;
    sub_18F0F21A8(0, &qword_1ED6FBB08);
    v9 = sub_18F521C8C();
    v0[28] = v9;
    sub_18F0F21A8(0, qword_1ED6FBD60);
    v10 = sub_18F521C8C();
    v0[29] = v10;
    v11 = sub_18F521C8C();
    v0[30] = v11;
    v0[2] = v0;
    v0[3] = sub_18F21E9CC;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DB0);
    v0[10] = v5;
    v0[11] = 1107296256;
    v0[12] = sub_18F354F08;
    v0[13] = &block_descriptor_22;
    v0[14] = v12;
    [v8 refreshAutoShortcutSubstitution:v9 spans:v10 parameterPresentationSubstitutions:v11 reply:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1ED6FDA70 != -1)
    {
      OUTLINED_FUNCTION_0_43();
      swift_once();
    }

    v13 = sub_18F52165C();
    __swift_project_value_buffer(v13, qword_1ED7076B0);
    v14 = sub_18F52163C();
    v15 = sub_18F52221C();
    if (os_log_type_enabled(v14, v15))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v16, v17, "Cannot convert remote object proxy to LNDaemonApplicationInterface");
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
    }

    OUTLINED_FUNCTION_1_36();

    return v18();
  }
}

uint64_t sub_18F21E9CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_18F21EB74;
  }

  else
  {
    v2 = sub_18F21EADC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F21EADC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);

  [v3 invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1_36();

  return v4();
}

uint64_t sub_18F21EB74()
{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  swift_willThrow();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 18));

  v5 = v0[1];

  return v5();
}

void sub_18F21EC24(void *a1, const char *a2)
{
  if (qword_1ED6FDA70 != -1)
  {
    OUTLINED_FUNCTION_0_43();
    swift_once();
  }

  v4 = sub_18F52165C();
  __swift_project_value_buffer(v4, qword_1ED7076B0);
  v5 = a1;
  oslog = sub_18F52163C();
  v6 = sub_18F52221C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_18F522E8C();
    v11 = sub_18F11897C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_18F0E9000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
    OUTLINED_FUNCTION_47_2();
    MEMORY[0x193ADD350]();
  }

  else
  {
  }
}

id sub_18F21EDA8()
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0);
  v0 = sub_18F5218DC();
  v2 = sub_18F10051C(v0, v1, 0);
  v3 = LNDaemonApplicationXPCInterface();
  [v2 setRemoteObjectInterface_];

  [v2 resume];
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v24 = sub_18F21F2D8;
  v25 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_18F38D7A4;
  v23 = &block_descriptor_1;
  v5 = _Block_copy(&aBlock);

  v6 = [v2 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v5);
  sub_18F52261C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v7 = *(v4 + 16);
  if (v7)
  {
    swift_willThrow();
    v8 = v7;

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    sub_18F0FECD4(v26, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_4_29();
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      OUTLINED_FUNCTION_4_29();
      v10 = swift_allocObject();
      *(v10 + 16) = v4;
      *(v10 + 24) = v9;
      v24 = sub_18F21F2E0;
      v25 = v10;
      aBlock = MEMORY[0x1E69E9820];
      v21 = 1107296256;
      v22 = sub_18F10F710;
      v23 = &block_descriptor_9;
      v11 = _Block_copy(&aBlock);

      [v19 retrieveSiriLanguageWithReply_];
      _Block_release(v11);
      v12 = *(v4 + 16);
      if (v12)
      {
        swift_willThrow();
        v13 = v12;
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1Tm(v26);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        swift_unknownObjectRelease();

        swift_beginAccess();
        v2 = *(v9 + 16);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }
    }

    else
    {
      if (qword_1ED6FDA70 != -1)
      {
        OUTLINED_FUNCTION_0_43();
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
        _os_log_impl(&dword_18F0E9000, v15, v16, "Cannot convert remote object proxy to LNDaemonApplicationInterface", v17, 2u);
        OUTLINED_FUNCTION_47_2();
        MEMORY[0x193ADD350]();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v2 = 0;
    }
  }

  return v2;
}

id sub_18F21F1DC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_18F21F230(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    swift_beginAccess();
    v7 = *(a4 + 16);
    *(a4 + 16) = a3;
    v8 = a3;
  }

  else
  {
    swift_beginAccess();
    *(a5 + 16) = a1;
    *(a5 + 24) = a2;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

uint64_t sub_18F21F314()
{
  OUTLINED_FUNCTION_21();
  if (qword_1ED6FEF38 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED707778);
  v2 = sub_18F52163C();
  v3 = sub_18F52220C();
  if (OUTLINED_FUNCTION_27(v3))
  {
    v4 = OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_13_24(v4);
    OUTLINED_FUNCTION_42(&dword_18F0E9000, v5, v6, "Attempting to fetch suggested intents from view");
    OUTLINED_FUNCTION_26_0();
  }

  if (qword_1EACCF598 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = qword_1EACD79D8;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_18F21F45C;

  return sub_18F37B540(v7);
}

uint64_t sub_18F21F45C()
{
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *(v6 + 112) = v5;

  return MEMORY[0x1EEE6DFA0](sub_18F21F570, 0, 0);
}

uint64_t sub_18F21F570()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v3 = sub_18F220C38();
    v4 = v1 + 32;
    do
    {
      sub_18F0FD724(v4, (v0 + 2));
      sub_18F0FD724((v0 + 2), (v0 + 7));
      v5 = v0[10];
      v6 = v0[11];
      v7 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v5);
      v8 = *(v5 - 8);
      v9 = swift_task_alloc();
      (*(v8 + 16))(v9, v7, v5);
      sub_18F33B63C(v9, v3, v5, v6);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));

      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v4 += 40;
      --v2;
    }

    while (v2);

    v10 = v13;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_18F21F7C4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_18F21F868;

  return AppContext.fetchSuggestedActionsFromView()();
}

uint64_t sub_18F21F868()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_32();
  v4 = v3;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v2;
  OUTLINED_FUNCTION_39();
  *v9 = v8;

  if (v1)
  {
    v10 = sub_18F520A7C();

    v11 = v10;
  }

  else if (v0)
  {
    v12 = sub_18F521C8C();

    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = *(v4 + 24);
  v14 = OUTLINED_FUNCTION_2_39();
  v15(v14);

  _Block_release(v13);
  OUTLINED_FUNCTION_71();

  return v16();
}

uint64_t sub_18F21F9EC()
{
  OUTLINED_FUNCTION_21();
  if (qword_1ED6FEF38 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED707778);
  v2 = sub_18F52163C();
  v3 = sub_18F52220C();
  if (OUTLINED_FUNCTION_27(v3))
  {
    v4 = OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_13_24(v4);
    OUTLINED_FUNCTION_42(&dword_18F0E9000, v5, v6, "Attempting to fetch suggested intents");
    OUTLINED_FUNCTION_26_0();
  }

  v7 = *(v0 + 8);
  v8 = MEMORY[0x1E69E7CC0];

  return v7(v8);
}

uint64_t sub_18F21FB4C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    sub_18F5218DC();
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_18F21FC10;

  return AppContext.fetchSuggestedActions(with:)();
}

uint64_t sub_18F21FC10()
{
  OUTLINED_FUNCTION_5_32();
  v4 = v3;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v2;
  OUTLINED_FUNCTION_39();
  *v9 = v8;

  if (v1)
  {
    v10 = sub_18F520A7C();

    v11 = v10;
  }

  else if (v0)
  {
    v12 = sub_18F521C8C();

    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = *(v4 + 24);
  v14 = OUTLINED_FUNCTION_2_39();
  v15(v14);

  _Block_release(v13);
  OUTLINED_FUNCTION_71();

  return v16();
}

uint64_t sub_18F21FDC0()
{
  v78 = v0;
  if (qword_1ED6FEF38 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED707778);
  v2 = sub_18F52163C();
  v3 = sub_18F52220C();
  if (OUTLINED_FUNCTION_27(v3))
  {
    v4 = OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_13_24(v4);
    OUTLINED_FUNCTION_42(&dword_18F0E9000, v5, v6, "Attempting to fetch suggested start workout intents");
    OUTLINED_FUNCTION_26_0();
  }

  v7 = *(v0 + 152);

  if (!v7)
  {
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
LABEL_17:
    v38 = sub_18F52163C();
    v39 = sub_18F52221C();
    if (OUTLINED_FUNCTION_27(v39))
    {
      v40 = OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_13_24(v40);
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v41, v42, "Wrong input type for fetchSuggestedActionsForStartWorkoutIntent:completionHandler:");
      OUTLINED_FUNCTION_26_0();
    }

    sub_18F220CE0();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
    goto LABEL_20;
  }

  v9 = v8;
  v76 = MEMORY[0x1E69E7CC0];
  v10 = sub_18F12DA08();
  if (!v10)
  {
    swift_unknownObjectRetain();
    v46 = sub_18F52163C();
    v47 = sub_18F52221C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v48 = 136446466;
      v49 = [v9 identifier];
      v50 = sub_18F5218DC();
      v52 = v51;

      v53 = sub_18F11897C(v50, v52, v77);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2082;
      *(v0 + 136) = sub_18F220C7C(v9);
      *(v0 + 144) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
      v55 = sub_18F52194C();
      v57 = sub_18F11897C(v55, v56, v77);

      *(v48 + 14) = v57;
      _os_log_impl(&dword_18F0E9000, v46, v47, "Could not find an action with identifier %{public}s, mangledTypeName: %{public}s", v48, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_26_0();
    }

    sub_18F220CE0();
    v58 = swift_allocError();
    *v59 = 2;
    swift_willThrow();
    swift_unknownObjectRetain();
    v60 = v58;
    v61 = sub_18F52163C();
    v62 = sub_18F52221C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v77[0] = v64;
      *v63 = 136315138;
      v65 = [v9 identifier];
      v66 = sub_18F5218DC();
      v68 = v67;

      v69 = sub_18F11897C(v66, v68, v77);

      *(v63 + 4) = v69;
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }

    swift_willThrow();
    swift_unknownObjectRelease();

LABEL_20:
    OUTLINED_FUNCTION_71();

    return v44();
  }

  v12 = v10;
  v13 = v11;
  swift_unknownObjectRetain();
  v14 = sub_18F52163C();
  v15 = sub_18F52223C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v16 = 136446466;
    v17 = sub_18F52307C();
    v75 = v13;
    v19 = sub_18F11897C(v17, v18, v77);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = [v9 identifier];
    v21 = sub_18F5218DC();
    v23 = v22;

    v24 = sub_18F11897C(v21, v23, v77);

    *(v16 + 14) = v24;
    v13 = v75;
    _os_log_impl(&dword_18F0E9000, v14, v15, "Found %{public}s matching %{public}s registered with AppManager", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  sub_18F12FCE4();
  v26 = sub_18F12FFE8(v25, v12, v13);

  sub_18F0FD724(v26 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v0 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DC0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    swift_getDynamicType();
    (*(*(v0 + 48) + 64))();
    v27 = sub_18F52298C();

    v28 = *(v27 + 16);
    v29 = (v27 + 32);
    for (i = MEMORY[0x1E69E7CC0]; v28; --v28)
    {
      v31 = sub_18F220C38();
      v32 = v29[3];
      v33 = v29[4];
      v34 = __swift_project_boxed_opaque_existential_1Tm(v29, v32);
      v35 = *(v32 - 8);
      v36 = swift_task_alloc();
      (*(v35 + 16))(v36, v34, v32);
      sub_18F33B63C(v36, v31, v32, *(*(v33 + 16) + 8));

      MEMORY[0x193ADB260](v37);
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F521D0C();
      }

      sub_18F521D6C();
      i = v76;
      v29 += 5;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_18F220D34(v0 + 96);
    i = MEMORY[0x1E69E7CC0];
  }

  if (i >> 62)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v74 = sub_18F522A4C();
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
    i = v74;
  }

  else
  {
    v70 = i & 0xFFFFFFFFFFFFFF8;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F522DAC();
    if (swift_dynamicCastMetatype() || (v72 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_32:
      swift_unknownObjectRelease();
    }

    else
    {
      v73 = (v70 + 32);
      while (*v73)
      {
        ++v73;
        if (!--v72)
        {
          goto LABEL_32;
        }
      }

      swift_unknownObjectRelease();

      i = v70 | 1;
    }
  }

  v71 = *(v0 + 8);

  return v71(i);
}

uint64_t sub_18F220724(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_18F2207E4;

  return AppContext.fetchSuggestedActionsForStartWorkoutAction(_:)(a1);
}

uint64_t sub_18F2207E4()
{
  OUTLINED_FUNCTION_5_32();
  v4 = v3;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_39();
  *v9 = v8;

  swift_unknownObjectRelease();

  if (v1)
  {
    v10 = sub_18F520A7C();

    v11 = v10;
  }

  else if (v0)
  {
    v12 = sub_18F521C8C();

    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = *(v4 + 32);
  v14 = OUTLINED_FUNCTION_2_39();
  v15(v14);

  _Block_release(v13);
  OUTLINED_FUNCTION_71();

  return v16();
}

uint64_t sub_18F2209A0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
  switch(a1)
  {
    case 1:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v9;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = 0x2064696C61766E49;
      v4 = 0x2E7475706E69;
      goto LABEL_7;
    case 2:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v5;
      v6 = 0x800000018F5274B0;
      *(inited + 72) = MEMORY[0x1E69E6158];
      v7 = 0xD000000000000014;
      goto LABEL_5;
    case 3:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v8;
      v6 = 0x800000018F527480;
      *(inited + 72) = MEMORY[0x1E69E6158];
      v7 = 0xD000000000000020;
LABEL_5:
      *(inited + 48) = v7;
      break;
    default:
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v3;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = 0x206E776F6E6B6E55;
      v4 = 0x2E726F727265;
LABEL_7:
      v6 = v4 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
  }

  *(inited + 56) = v6;
  return sub_18F5216CC();
}

uint64_t sub_18F220B90(uint64_t a1)
{
  v2 = sub_18F220F64();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F220BCC(uint64_t a1)
{
  v2 = sub_18F220F64();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18F220C38()
{
  result = qword_1ED6FD860;
  if (!qword_1ED6FD860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6FD860);
  }

  return result;
}

uint64_t sub_18F220C7C(void *a1)
{
  v1 = [a1 mangledTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

unint64_t sub_18F220CE0()
{
  result = qword_1EACD2DB8;
  if (!qword_1EACD2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2DB8);
  }

  return result;
}

uint64_t sub_18F220D34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F220D9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_18F220DDC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for SuggestedActionsFetchError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F220F10()
{
  result = qword_1EACD2DD0;
  if (!qword_1EACD2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2DD0);
  }

  return result;
}

unint64_t sub_18F220F64()
{
  result = qword_1EACD2DD8;
  if (!qword_1EACD2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2DD8);
  }

  return result;
}

uint64_t sub_18F220FB8()
{
  OUTLINED_FUNCTION_21();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_19(v1);

  return v3(v2);
}

uint64_t sub_18F221050()
{
  OUTLINED_FUNCTION_21();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_19(v1);

  return v3(v2);
}

uint64_t sub_18F2210E8()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18F221190;

  return sub_18F21F7C4(v2, v3);
}

id sub_18F221198()
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v0 = sub_18F3E6D78();
  v2 = v1;

  if (!v0)
  {
    return 0;
  }

  if (([v0 canUndo] & 1) == 0 && !objc_msgSend(v0, sel_canRedo))
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v4 = sub_18F52165C();
    __swift_project_value_buffer(v4, qword_1ED7077A8);
    v5 = sub_18F52163C();
    v6 = sub_18F52223C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      OUTLINED_FUNCTION_2_40(&dword_18F0E9000, v8, v9, "UndoManager cache contained an undo manager for this intent execution, but no actions were registered. This manager will be removed from the cache.");
      MEMORY[0x193ADD350](v7, -1, -1);
    }

    goto LABEL_13;
  }

  [v0 endUndoGrouping];
  if ((v2 & 1) == 0)
  {
LABEL_13:

    sub_18F3E7494(v0);

    return 0;
  }

  v3 = [v0 _auxiliaryReference];

  return v3;
}

uint64_t sub_18F22132C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F10DF80;

  return _UndoableIntent.configuration()(a1);
}

uint64_t sub_18F2213E4()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 2;
  return (*(v0 + 8))();
}

id _s10AppIntents14UndoableIntentPAAE11undoManagerSo06NSUndoF0CSgvg_0()
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v0 = sub_18F3E6D78();

  if (!v0)
  {

    v1 = sub_18F3E71C4();

    if (v1)
    {
      v0 = v1;

      v2 = v0;
      v3 = 0;
    }

    else
    {
      v0 = [objc_allocWithZone(MEMORY[0x1E696AFC8]) init];
      [v0 setGroupsByEvent_];

      v2 = v0;
      v3 = 1;
    }

    sub_18F3E7300(v2, v3);

    [v0 beginUndoGrouping];
  }

  return v0;
}

id sub_18F22151C()
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v0 = sub_18F3E6D78();
  v2 = v1;

  if (!v0)
  {
    return 0;
  }

  if (([v0 canUndo] & 1) == 0 && !objc_msgSend(v0, sel_canRedo))
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v4 = sub_18F52165C();
    __swift_project_value_buffer(v4, qword_1ED7077A8);
    v5 = sub_18F52163C();
    v6 = sub_18F52223C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      OUTLINED_FUNCTION_2_40(&dword_18F0E9000, v8, v9, "UndoManager cache contained an undo manager for this intent execution, but no actions were registered. This manager will be removed from the cache.");
      MEMORY[0x193ADD350](v7, -1, -1);
    }

    sub_18F3E7494(v0);

    return 0;
  }

  [v0 endUndoGrouping];
  if ((v2 & 1) == 0)
  {

    return 0;
  }

  v3 = [v0 _auxiliaryReference];

  return v3;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents27UndoableIntentConfigurationO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_18F2216D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_18F221714(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_18F221758(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t dispatch thunk of _UndoableIntent.configuration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F10DF80;

  return v9(a1, a2, a3);
}

uint64_t sub_18F2218B0()
{
  OUTLINED_FUNCTION_7_22();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_10_23(v1);
  v3(v2);
  return v0;
}

uint64_t sub_18F221968()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F130C90;

  return sub_18F221A44();
}

uint64_t sub_18F221A44()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v0[21] = v3;
  v0[22] = v4;
  v0[19] = v1;
  v0[20] = v5;
  v0[17] = v6;
  v0[18] = v7;
  v0[16] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[23] = AssociatedTypeWitness;
  v0[24] = *(AssociatedTypeWitness - 8);
  v0[25] = OUTLINED_FUNCTION_34_0();
  v0[26] = *(v2 - 8);
  v0[27] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F221B64()
{
  OUTLINED_FUNCTION_21();
  if ((*(*(v0 + 168) + 64))())
  {
    (*(*(v0 + 208) + 16))(*(v0 + 216), *(v0 + 128), *(v0 + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DE0);
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4((v0 + 56), v0 + 16);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
      *(v0 + 224) = swift_getAssociatedTypeWitness();
      *(v0 + 232) = OUTLINED_FUNCTION_34_0();
      v1 = swift_task_alloc();
      *(v0 + 240) = v1;
      *v1 = v0;
      v1[1] = sub_18F221DAC;

      return sub_18F2E8290();
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_18F0EF148(v0 + 56, &qword_1EACD2DE8);
      v5 = swift_task_alloc();
      *(v0 + 256) = v5;
      *v5 = v0;
      OUTLINED_FUNCTION_1_37(v5);

      return sub_18F13F7EC();
    }
  }

  else
  {
    sub_18F521D2C();
    OUTLINED_FUNCTION_14_24();

    v3 = OUTLINED_FUNCTION_12_7();

    return v4(v3);
  }
}

uint64_t sub_18F221DAC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F221EA8()
{
  OUTLINED_FUNCTION_69();
  sub_18F521DBC();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    OUTLINED_FUNCTION_14_24();

    v1 = OUTLINED_FUNCTION_12_7();

    return v2(v1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_1_37(v4);

    return sub_18F13F7EC();
  }
}

uint64_t sub_18F221FA0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F22209C()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v16 = *(v0 + 168);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 40))(v3, AssociatedConformanceWitness);
  (*(v2 + 8))(v1, v3);
  *(v0 + 96) = v9;
  v10 = sub_18F521DBC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193ADB180](v10, WitnessTable);

  *(v0 + 112) = *(v0 + 104);
  v12 = swift_task_alloc();
  *(v12 + 16) = v5;
  *(v12 + 24) = v4;
  *(v12 + 32) = v16;
  *(v12 + 48) = v7;
  *(v12 + 56) = v6;
  sub_18F5227EC();
  swift_getWitnessTable();
  sub_18F521BBC();

  OUTLINED_FUNCTION_14_24();

  v13 = OUTLINED_FUNCTION_12_7();

  return v14(v13);
}

uint64_t sub_18F222268()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_14_24();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F2222D8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_14_24();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F222338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v15;
  v8[3] = a1;
  v8[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v8[7] = OUTLINED_FUNCTION_34_0();
  v13 = (a6 + *a6);
  v10 = swift_task_alloc();
  v8[8] = v10;
  *v10 = v8;
  v10[1] = sub_18F222478;
  v11 = OUTLINED_FUNCTION_8_20();

  return v13(v11);
}

uint64_t sub_18F222478()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_18F2225B8()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_18F521D7C();
  if (v1 == 1)
  {
    v0[2] = v0[9];
    sub_18F521DBC();
    OUTLINED_FUNCTION_4_30();
    swift_getWitnessTable();
    sub_18F52211C();
    goto LABEL_5;
  }

  if (!v1)
  {
    __swift_storeEnumTagSinglePayload(v0[3], 1, 1, v0[5]);
LABEL_5:

    OUTLINED_FUNCTION_71();

    return v2();
  }

  v4 = v0[7];
  v5 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_task_alloc();
  v0[10] = v6;
  type metadata accessor for IntentParameterContext();
  *v6 = v0;
  v6[1] = sub_18F222750;

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F222750()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_18F0EF148(v5, &qword_1EACCF7A0);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F22289C()
{
  OUTLINED_FUNCTION_69();
  __swift_storeEnumTagSinglePayload(*(v0 + 24), 0, 1, *(v0 + 40));

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F22290C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F222974(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a2;
  v10 = a2[1];
  v12 = *(v4 + 8);
  v11 = *(v4 + 16);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  v15 = *(a4 + 16);
  *v14 = v5;
  v14[1] = sub_18F0FC874;

  return sub_18F222338(a1, v9, v10, a3, v13, v12, v11, v15);
}

uint64_t sub_18F222A54(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F222AC4()
{
  OUTLINED_FUNCTION_7_22();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_10_23(v1);
  v3(v2);
  return v0;
}

uint64_t sub_18F222B7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F18C9E0;

  return sub_18F221A44();
}

uint64_t sub_18F222C58()
{
  OUTLINED_FUNCTION_21();
  *(v0 + 24) = v1;
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_18F222D50;
  v4 = OUTLINED_FUNCTION_8_20();

  return v6(v4);
}

uint64_t sub_18F222D50()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_18F222E70()
{
  OUTLINED_FUNCTION_69();
  v0[2] = v0[5];
  sub_18F521DBC();
  OUTLINED_FUNCTION_4_30();
  swift_getWitnessTable();
  v1 = sub_18F52213C();
  v2 = v0[5];
  if (v1)
  {

    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_18F222F10(uint64_t a1)
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](a1);
  return sub_18F522F4C();
}

uint64_t sub_18F222F58(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F1E9574;

  return sub_18F222C58();
}

uint64_t sub_18F223018(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F223088(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  sub_18F522EFC();
  a4(v7, *v4);
  return sub_18F522F4C();
}

uint64_t sub_18F2230D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F223124()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F223160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a2;
  v25 = a3;
  v9 = sub_18F520F1C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for DisplayRepresentation();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18F520B3C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  (*(*(*(a7 + 16) + 8) + 16))(a5);
  v20 = *(v14 + 16);
  v20(v19, v12, v13);
  sub_18F14372C(v12);
  static IntentContext.currentLocale.getter();
  sub_18F520E7C();
  sub_18F520B2C();
  v20(v17, v19, v13);
  v28 = sub_18F52193C();
  v29 = v21;
  v26 = v24;
  v27 = v25;
  sub_18F12A000();
  v22 = sub_18F5225EC();

  (*(v14 + 8))(v19, v13);
  return v22 & 1;
}

uint64_t sub_18F2233E4()
{
  OUTLINED_FUNCTION_12_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F223598;
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_15_19();

  return sub_18F222B7C();
}

uint64_t sub_18F2234BC()
{
  OUTLINED_FUNCTION_12_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F1B98B8;
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_15_19();

  return sub_18F221968();
}

uint64_t AppContext.fetchAction(for:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = type metadata accessor for AppShortcut();
  OUTLINED_FUNCTION_51(v3);
  v2[21] = v4;
  v2[22] = OUTLINED_FUNCTION_34_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DF0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DF8);
  v2[25] = v5;
  OUTLINED_FUNCTION_51(v5);
  v2[26] = v6;
  v2[27] = OUTLINED_FUNCTION_34_0();

  return MEMORY[0x1EEE6DFA0](sub_18F2236F8, 0, 0);
}

uint64_t sub_18F2236F8()
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v10 = sub_18F34F344(0, 0);

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E00);
    sub_18F52126C();
    sub_18F52127C();
    v11 = v0[23];
    sub_18F224A20(v0[24], v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E08);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
    v14 = v0[23];
    if (EnumTagSinglePayload == 1)
    {
      sub_18F224A90(v0[23]);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v16 = v0[19];
      v15 = v0[20];
    }

    else
    {
      sub_18F5212AC();
      v17 = v0[6];
      v18 = v0[7];
      v19 = v0[8];
      v20 = v0[9];

      (*(*(v12 - 8) + 8))(v14, v12);
      v16 = MEMORY[0x193ADAF70](v17, v18, v19, v20);
      v15 = v21;
    }

    v22 = OUTLINED_FUNCTION_43_1();
    result = v23(v22);
    v24 = result;
    v25 = *(result + 16);
    if (v25)
    {
      v26 = 0;
      v28 = v0[21];
      v27 = v0[22];
      v29 = result + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v53 = v29;
      v55 = v27;
      while (2)
      {
        if (v26 >= *(v24 + 16))
        {
          __break(1u);
          return result;
        }

        v57 = v26 + 1;
        sub_18F10E0D0(v29 + *(v28 + 72) * v26, v0[22]);
        v30 = *(v27 + 8);
        v31 = (v30 + 40);
        v32 = *(v30 + 16) + 1;
        while (--v32)
        {
          v33 = *(v31 - 1);
          v34 = *v31;
          if (v33 != v0[19] || v34 != v0[20])
          {
            OUTLINED_FUNCTION_43_1();
            if ((sub_18F522D5C() & 1) == 0 && (v33 != v16 || v34 != v15))
            {
              v31 += 2;
              OUTLINED_FUNCTION_43_1();
              if ((sub_18F522D5C() & 1) == 0)
              {
                continue;
              }
            }
          }

          v43 = v0[26];
          v42 = v0[27];
          v54 = v0[24];
          v56 = v0[25];
          v44 = v0[22];

          v45 = sub_18F220C38();
          sub_18F0FD724(*v44 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, (v0 + 14));
          v46 = v0[17];
          v47 = v0[18];
          v48 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 14), v46);
          v49 = *(v46 - 8);
          v50 = OUTLINED_FUNCTION_34_0();
          (*(v49 + 16))(v50, v48, v46);
          sub_18F33B63C(v50, v45, v46, v47);
          sub_18F224A90(v54);
          (*(v43 + 8))(v42, v56);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 14));

          sub_18F125D14(v44);

          v51 = OUTLINED_FUNCTION_12_7();

          return v52(v51);
        }

        result = sub_18F125D14(v0[22]);
        v27 = v55;
        v26 = v57;
        v29 = v53;
        if (v57 != v25)
        {
          continue;
        }

        break;
      }
    }

    v37 = v0[24];

    sub_18F1B1258();
    v38 = swift_allocError();
    OUTLINED_FUNCTION_6_31(v38, v39);
    sub_18F224A90(v37);
    v40 = OUTLINED_FUNCTION_43_1();
    v41(v40);
  }

  else
  {
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v1 = sub_18F52165C();
    __swift_project_value_buffer(v1, qword_1ED707778);
    v2 = sub_18F52163C();
    v3 = sub_18F52221C();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v4, v5, "Attempted to fetch Auto Shortcuts, but couldn't find the AppShortcutsProvider");
      OUTLINED_FUNCTION_32();
    }

    sub_18F1B1258();
    v6 = swift_allocError();
    OUTLINED_FUNCTION_6_31(v6, v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_18F223CE8(int a1, void *aBlock, void *a3)
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
  v9[1] = sub_18F223DB8;

  return AppContext.fetchAction(for:)(v5, v7);
}

uint64_t sub_18F223DB8()
{
  OUTLINED_FUNCTION_13_2();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  v7 = *(v3 + 24);
  if (v0)
  {
    sub_18F520A7C();

    v8 = OUTLINED_FUNCTION_11_3();
    v9(v8, 0, v1);

    _Block_release(v7);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_11_3();
    v11(v10, v1, 0);
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  v12 = *(v5 + 8);

  return v12();
}

uint64_t AppContext.fetchAction(identifier:)(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = type metadata accessor for AppShortcut();
  OUTLINED_FUNCTION_51(v3);
  v2[16] = v4;
  v2[17] = OUTLINED_FUNCTION_34_0();

  return MEMORY[0x1EEE6DFA0](sub_18F223FFC, 0, 0);
}

uint64_t sub_18F223FFC()
{
  v67 = v0;
  if (qword_1ED6FEF38 != -1)
  {
LABEL_36:
    OUTLINED_FUNCTION_9_1();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED707778);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v2 = sub_18F52163C();
  v3 = sub_18F52223C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v66 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_18F11897C(v5, v4, &v66);
    _os_log_impl(&dword_18F0E9000, v2, v3, "Fetching action for App Shortcuts with identifier %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v16 = sub_18F34F344(0, 0);
  v18 = v17;

  if (!v16)
  {
    v8 = sub_18F52163C();
    v9 = sub_18F52221C();
    if (os_log_type_enabled(v8, v9))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v10, v11, "Attempted to fetch App Shortcuts, but couldn't find the AppShortcutsProvider.");
      OUTLINED_FUNCTION_32();
    }

    sub_18F1B1258();
    v12 = swift_allocError();
    OUTLINED_FUNCTION_6_31(v12, v13);

    OUTLINED_FUNCTION_68_1();

    __asm { BRAA            X1, X16 }
  }

  v20 = v0[14];
  v19 = v0[15];
  v21 = *(v18 + 8);
  v22 = *(v21(v16, v18) + 16);

  v23 = sub_18F16BFE0(v20, v19, v22);
  result = v21(v16, v18);
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
  }

  else if (v23 < *(result + 16))
  {
    v25 = v0[17];
    sub_18F10E0D0(result + ((*(v0[16] + 80) + 32) & ~*(v0[16] + 80)) + *(v0[16] + 72) * v23, v25);

    v26 = *v25;
    sub_18F0FD724(*v25 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, (v0 + 2));
    v28 = v0[5];
    v27 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v28);
    v61 = v26;

    v29 = sub_18F113E38(v28, v27);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    v30 = 0;
    v31 = MEMORY[0x1E69E7CC8];
    v62 = *(v29 + 16);
    v63 = v29;
    v32 = v29 + 32;
    while (1)
    {
      if (v62 == v30)
      {

        sub_18F220C38();
        v55 = sub_18F33AE40(v61);
        v56 = objc_allocWithZone(MEMORY[0x1E69ACD58]);
        sub_18F2249A4(v55);
        v57 = OUTLINED_FUNCTION_46();
        sub_18F125D14(v57);

        OUTLINED_FUNCTION_12_7();
        OUTLINED_FUNCTION_68_1();

        __asm { BRAA            X2, X16 }
      }

      if (v30 >= *(v63 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v64 = v32;
      v65 = v30;
      sub_18F0FD724(v32, (v0 + 7));
      __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v0[10]);
      v33 = OUTLINED_FUNCTION_46();
      result = v34(v33);
      if (!v35)
      {
        goto LABEL_40;
      }

      v36 = result;
      v37 = v35;
      v39 = v0[10];
      v38 = v0[11];
      __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v39);
      v0[12] = (*(*(v38 + 8) + 96))(v39);
      v0[13] = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530);
      v41 = sub_18F52194C();
      v43 = v42;
      swift_isUniquelyReferenced_nonNull_native();
      v66 = v31;
      v44 = sub_18F0F713C(v36, v37);
      if (__OFADD__(v31[2], (v45 & 1) == 0))
      {
        goto LABEL_35;
      }

      v46 = v44;
      v47 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E10);
      result = sub_18F5229DC();
      if (result)
      {
        result = sub_18F0F713C(v36, v37);
        if ((v47 & 1) != (v48 & 1))
        {
          OUTLINED_FUNCTION_68_1();

          return sub_18F522E2C();
        }

        v46 = result;
      }

      if (v47)
      {

        v31 = v66;
        v49 = (v66[7] + 16 * v46);
        *v49 = v41;
        v49[1] = v43;
      }

      else
      {
        v31 = v66;
        v66[(v46 >> 6) + 8] |= 1 << v46;
        v50 = (v31[6] + 16 * v46);
        *v50 = v36;
        v50[1] = v37;
        v51 = (v31[7] + 16 * v46);
        *v51 = v41;
        v51[1] = v43;
        v52 = v31[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          __break(1u);
          goto LABEL_38;
        }

        v31[2] = v54;
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));
      v32 = v64 + 40;
      v30 = v65 + 1;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_18F224614(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;

  return sub_18F10B344();
}

uint64_t sub_18F224698(int a1, void *aBlock, void *a3)
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
  v9[1] = sub_18F223DB8;

  return AppContext.fetchAction(identifier:)(v5, v7);
}

uint64_t sub_18F224784(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
  if (a1)
  {
    if (a1 == 1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v3;
      v4 = 0x800000018F527580;
      *(inited + 72) = MEMORY[0x1E69E6158];
      v5 = 0xD000000000000023;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v7;
      v4 = 0x800000018F527550;
      *(inited + 72) = MEMORY[0x1E69E6158];
      v5 = 0xD000000000000020;
    }

    *(inited + 48) = v5;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F53F800;
    *(inited + 32) = sub_18F5218DC();
    *(inited + 40) = v6;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0x206E776F6E6B6E55;
    v4 = 0xEE002E726F727265;
  }

  *(inited + 56) = v4;
  return sub_18F5216CC();
}

uint64_t sub_18F224904(uint64_t a1)
{
  v2 = sub_18F224C30();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F224940(uint64_t a1)
{
  v2 = sub_18F224C30();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

id sub_18F2249A4(void *a1)
{
  v3 = sub_18F5216AC();

  v4 = [v1 initWithAction:a1 typeMap:v3];

  return v4;
}

uint64_t sub_18F224A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F224A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for IntentForAppShortcutPhraseFetchError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F224BDC()
{
  result = qword_1EACD2E18;
  if (!qword_1EACD2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2E18);
  }

  return result;
}

unint64_t sub_18F224C30()
{
  result = qword_1EACD2E20;
  if (!qword_1EACD2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2E20);
  }

  return result;
}

uint64_t sub_18F224C84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_19(v1);

  return v3(v2);
}

uint64_t sub_18F224D20()
{
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_18F224E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_19(v1);

  return v3(v2);
}

uint64_t static AppIntent.targetContentIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 8))();
  MEMORY[0x193ADB000](v2);

  return 0x6E65746E69707061;
}

Swift::String __swiftcall AppIntent.targetContentIdentifier()()
{
  v3 = sub_18F224F30(v2, 0, v0, v1);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_18F224F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = MEMORY[0x1E69E7CC0];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  sub_18F225290(a1, &v18, a2, sub_18F226378, 0, v8, a4, v17);
  v9 = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18F53F800;
  *(v10 + 32) = static AppIntent.targetContentIdentifier.getter(a3, a4);
  *(v10 + 40) = v11;
  v17[0] = v9;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F2268A8(v17);

  v12 = v17[0];
  v17[0] = v10;
  sub_18F25DB50(v12);
  sub_18F1B8B98(&qword_1EACCF408, &qword_1EACD0400);
  v13 = sub_18F5217AC();
  v15 = v14;

  v17[0] = v13;
  v17[1] = v15;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](47, 0xE100000000000000);

  return v17[0];
}

uint64_t AppIntent.targetContentIdentifier<A>(including:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v7 = a2;
    v9 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v10 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v11 = MEMORY[0x1E69E7CC0];
    do
    {

      swift_getAtKeyPath();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18F168C5C();
        v11 = v16;
        v23 = v16;
      }

      v13 = *(v11 + 16);
      if (v13 >= *(v11 + 24) >> 1)
      {
        sub_18F168C5C();
        v11 = v17;

        v23 = v11;
      }

      else
      {
      }

      v22[0] = v22[1];
      v14 = type metadata accessor for IntentParameter();
      OUTLINED_FUNCTION_0_9();
      WitnessTable = swift_getWitnessTable();
      sub_18F11401C(v13, v22, &v23, v14, WitnessTable);
      a1 += 8;
      v10 += 8;
      v9 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_18F224F30(v6, v11, a3, a5);

  return v18;
}

uint64_t sub_18F225290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19 = a7;
  v20 = a5;
  v14 = sub_18F5229CC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a6 - 8) + 16))(a8, a2, a6);
  v21 = a6;
  v22 = v19;
  v23 = a1;
  v24 = a3;
  v25 = a4;
  v26 = v20;
  v27 = a8;
  sub_18F2262C0();
  sub_18F522CDC();
  return (*(v15 + 8))(v17, v14);
}

uint64_t AppIntent.reduceParameters<A, B>(into:including:reducer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  if (a5)
  {
    v12 = a5;
    v14 = a7 & 0xFFFFFFFFFFFFFFFELL;
    v15 = a10 & 0xFFFFFFFFFFFFFFFELL;
    v16 = MEMORY[0x1E69E7CC0];
    do
    {

      swift_getAtKeyPath();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18F168C5C();
        v16 = v21;
        v30 = v21;
      }

      v18 = *(v16 + 16);
      if (v18 >= *(v16 + 24) >> 1)
      {
        sub_18F168C5C();
        v16 = v22;

        v30 = v16;
      }

      else
      {
      }

      v29[0] = v29[1];
      v19 = type metadata accessor for IntentParameter();
      OUTLINED_FUNCTION_0_9();
      WitnessTable = swift_getWitnessTable();
      sub_18F11401C(v18, v29, &v30, v19, WitnessTable);
      a2 += 8;
      v15 += 8;
      v14 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_18F225290(v11, a1, v16, a3, a4, a6, a9, a8);
}

uint64_t sub_18F22559C(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v3);
  return (*(v4 + 64))(a1, v3, v4) & 1;
}

uint64_t sub_18F225608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  swift_getAtPartialKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
  if (swift_dynamicCast())
  {
    v10 = sub_18F0FD0B4(&v37, v40);
    if (!a4 || (MEMORY[0x1EEE9AC00](v10), v31[2] = v40, sub_18F2F0BBC(sub_18F227358, v31, a4)))
    {
      v11 = sub_18F225A28();
      v13 = v12;
      v15 = v41;
      v14 = v42;
      __swift_project_boxed_opaque_existential_1Tm(v40, v41);
      (*(*(v14 + 8) + 72))(v32, v15);
      if (v33)
      {
        __swift_project_boxed_opaque_existential_1Tm(v32, v33);
        sub_18F11E26C();
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        if (*(&v35 + 1))
        {
          sub_18F0FD0B4(&v34, &v37);
          v16 = *(&v38 + 1);
          v17 = __swift_project_boxed_opaque_existential_1Tm(&v37, *(&v38 + 1));
          v18 = sub_18F225B1C(v17, v16);
          if (v19)
          {
            a5(a7, v11, v13, v18, v19);
          }

          else
          {
            if (qword_1ED6FEFE8 != -1)
            {
              swift_once();
            }

            v24 = sub_18F52165C();
            __swift_project_value_buffer(v24, qword_1ED7077A8);
            _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
            v25 = sub_18F52163C();
            v26 = sub_18F52221C();

            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              v28 = swift_slowAlloc();
              *&v34 = v28;
              *v27 = 136315138;
              v29 = sub_18F11897C(v11, v13, &v34);

              *(v27 + 4) = v29;
              _os_log_impl(&dword_18F0E9000, v25, v26, "Failed to generate TargetContentIdentifier for %s", v27, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v28);
              MEMORY[0x193ADD350](v28, -1, -1);
              MEMORY[0x193ADD350](v27, -1, -1);
            }

            else
            {
            }
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v37);
          goto LABEL_21;
        }
      }

      else
      {
        sub_18F0EF148(v32, &qword_1EACD0620);
        v34 = 0u;
        v35 = 0u;
        v36 = 0;
      }

      sub_18F0EF148(&v34, &qword_1EACD0620);
      v21 = v41;
      v20 = v42;
      __swift_project_boxed_opaque_existential_1Tm(v40, v41);
      if ((*(*(*(v20 + 8) + 8) + 24))(v21))
      {
        v22 = v41;
        v23 = v42;
        __swift_project_boxed_opaque_existential_1Tm(v40, v41);
        if ((*(v23 + 32))(v22, v23))
        {
          a5(a7, v11, v13, 7104878, 0xE300000000000000);
        }
      }
    }

LABEL_21:
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    return 1;
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_18F0EF148(&v37, &qword_1EACD0F20);
  return 1;
}

uint64_t sub_18F225A28()
{
  v0 = sub_18F521A2C();
  v2 = v1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v3 = sub_18F521ACC();
  v5 = v4;

  if (v3 == 95 && v5 == 0xE100000000000000)
  {
  }

  else
  {
    v7 = sub_18F522D5C();

    if ((v7 & 1) == 0)
    {
      return v0;
    }
  }

  v9 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v9 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    result = sub_18F33B7EC(v0, v2);
    if (v10)
    {

      sub_18F227378(1);
      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F225B1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_18F520B3C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v40 - v16;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E28);
  if (swift_dynamicCast())
  {
    if (qword_1ED6FEFE8 != -1)
    {
      swift_once();
    }

    v21 = sub_18F52165C();
    __swift_project_value_buffer(v21, qword_1ED7077A8);
    v22 = sub_18F52163C();
    v23 = sub_18F52221C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_18F0E9000, v22, v23, "TargetContentIdentifier does not support TransientAppEntity", v24, 2u);
      MEMORY[0x193ADD350](v24, -1, -1);
    }

    v25 = v45;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v45, v42);
    __swift_project_boxed_opaque_existential_1Tm(v42, v43);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v41 = &v40;
    v28 = *(AssociatedTypeWitness - 8);
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v30 = &v40 - v29;
    sub_18F5227DC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
LABEL_13:
    v26 = v32;
    (*(v28 + 8))(v30, AssociatedTypeWitness);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v45, v42);
    __swift_project_boxed_opaque_existential_1Tm(v42, v43);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v41 = &v40;
    v28 = *(AssociatedTypeWitness - 8);
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v30 = &v40 - v33;
    sub_18F521C0C();
    swift_getAssociatedConformanceWitness();
    v32 = sub_18F522C9C();
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E30);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v45, v42);
    v35 = v43;
    v36 = v44;
    __swift_project_boxed_opaque_existential_1Tm(v42, v43);
    v37 = (*(v36 + 24))(v35, v36);
LABEL_18:
    v26 = v37;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E38);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E40);
    if (!swift_dynamicCast())
    {
      goto LABEL_8;
    }

    sub_18F0FD0B4(v45, v42);
    __swift_project_boxed_opaque_existential_1Tm(v42, v43);
    v37 = sub_18F522C9C();
    goto LABEL_18;
  }

  sub_18F0FD0B4(v45, v42);
  v38 = v44;
  v41 = v43;
  __swift_project_boxed_opaque_existential_1Tm(v42, v43);
  (*(v38 + 32))(v41, v38);
  v39 = type metadata accessor for DisplayRepresentation();
  if (__swift_getEnumTagSinglePayload(v6, 1, v39) != 1)
  {
    v41 = *(v8 + 16);
    (v41)(v14, v6, v7);
    sub_18F14372C(v6);
    (*(v8 + 32))(v17, v14, v7);
    (v41)(v11, v17, v7);
    v26 = sub_18F52193C();
    (*(v8 + 8))(v17, v7);
    goto LABEL_14;
  }

  sub_18F0EF148(v6, &qword_1EACD32D0);
  v25 = v42;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
LABEL_8:
  v26 = 0;
LABEL_15:
  (*(v18 + 8))(v20, a2);
  return v26;
}

uint64_t sub_18F2262C0()
{
  sub_18F5229CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E48);
  sub_18F1B8B98(&qword_1EACCDD60, &qword_1EACD2E48);
  return sub_18F52266C();
}

uint64_t sub_18F226378(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](61, 0xE100000000000000);
  MEMORY[0x193ADB000](a4, a5);
  sub_18F166FA8();
  v8 = *(*a1 + 16);
  result = sub_18F167060(v8);
  v10 = *a1;
  *(v10 + 16) = v8 + 1;
  v11 = v10 + 16 * v8;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *a1 = v10;
  return result;
}

uint64_t sub_18F226418(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v31 - v5;
  v7 = sub_18F52254C();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - v9;
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  (*(v11 + 16))(v13, v37, a1);
  v36 = v16;
  sub_18F521B1C();
  v33 = a1;
  v37 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (v4 + 32);
  v18 = (v4 + 8);
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_18F52257C();
    if (__swift_getEnumTagSinglePayload(v10, 1, AssociatedTypeWitness) == 1)
    {
      (*(v32 + 8))(v36, v37);
      v39 = 91;
      v40 = 0xE100000000000000;
      v38 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
      sub_18F1B8B98(&qword_1EACCF408, &qword_1EACD0400);
      v27 = sub_18F5217AC();
      v29 = v28;

      MEMORY[0x193ADB000](v27, v29);

      MEMORY[0x193ADB000](93, 0xE100000000000000);
      return v39;
    }

    (*v17)(v6, v10, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v21 = sub_18F225B1C(v6, AssociatedTypeWitness);
    if (!v20)
    {
      break;
    }

    v22 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F141818();
      v19 = v25;
    }

    v23 = *(v19 + 16);
    if (v23 >= *(v19 + 24) >> 1)
    {
      sub_18F141818();
      v19 = v26;
    }

    (*v18)(v6, AssociatedTypeWitness);
    *(v19 + 16) = v23 + 1;
    v24 = v19 + 16 * v23;
    *(v24 + 32) = v21;
    *(v24 + 40) = v22;
  }

  (*v18)(v6, AssociatedTypeWitness);
  (*(v32 + 8))(v36, v37);

  return v21;
}

uint64_t sub_18F2268A8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18F3BA934();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_18F226914(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_18F226914(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18F522C8C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_18F521D3C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_18F226AD0(v7, v8, a1, v4);
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
    return sub_18F226A08(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18F226A08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_18F522D5C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_18F226AD0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_18F522D5C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_18F522D5C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_18F522D5C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18F167414();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_18F167414();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_18F227104((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_18F226FD8(&v91, *a1, a3);
LABEL_102:
}

uint64_t sub_18F226FD8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_18F3BA714();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_18F227104((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_18F227104(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_18F169E98(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_18F522D5C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_18F169E98(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_18F522D5C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_18F2272A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F2272E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F227378(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_18F5219FC();
  if (v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sub_18F52199C();
}

void *sub_18F227424()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  v99 = &v96 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v96 - v5;
  v6 = sub_18F520F1C();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v105 = sub_18F520ADC();
  v11 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_4();
  v14 = (v13 - v12);
  v15 = sub_18F52189C();
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E58);
  v20 = (__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2E60) - 8);
  v21 = *v20;
  v109 = *(*v20 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v100 = v23;
  *(v23 + 16) = xmmword_18F549D20;
  v108 = v23 + v22;
  v24 = v23 + v22 + v20[14];
  *(v23 + v22) = 0;
  sub_18F52181C();
  v107 = type metadata accessor for ChangeOperation.__();
  *v14 = v107;
  v103 = *MEMORY[0x1E6968E00];
  v25 = *(v11 + 104);
  v104 = v11 + 104;
  v106 = v25;
  v25(v14);
  v101 = v10;
  sub_18F520EDC();
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_2_4();
  v26 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  v30 = type metadata accessor for DisplayRepresentation.Image(0);
  v31 = v99;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
  v35 = type metadata accessor for DisplayRepresentation();
  v36 = v35[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v26);
  v40 = v35[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v30);
  v44 = v35[7];
  v102 = xmmword_18F540410;
  OUTLINED_FUNCTION_6_32(v44, xmmword_18F540410);
  *(v24 + v45) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v26);
  v49 = v24 + v36;
  v50 = v97;
  sub_18F0FF628(v97, v49, &qword_1EACCF7A8);
  sub_18F0FF628(v31, v24 + v40, &qword_1EACD0270);
  v51 = v108 + v109 + v20[14];
  *(v108 + v109) = 1;
  v98 = v19;
  sub_18F52181C();
  v52 = OUTLINED_FUNCTION_4_31();
  v53(v52);
  sub_18F520EDC();
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_2_4();
  v54 = v50;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v26);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v30);
  v61 = v35[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v26);
  v65 = v35[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v30);
  OUTLINED_FUNCTION_6_32(v35[7], v102);
  *(v51 + v69) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v26);
  sub_18F0FF628(v54, v51 + v61, &qword_1EACCF7A8);
  sub_18F0FF628(v31, v51 + v65, &qword_1EACD0270);
  v73 = (v108 + 2 * v109);
  v74 = &v73[v20[14]];
  *v73 = 2;
  sub_18F52181C();
  v75 = OUTLINED_FUNCTION_4_31();
  v76(v75);
  sub_18F520EDC();
  OUTLINED_FUNCTION_2_4();
  v77 = v54;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v26);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v30);
  v84 = v35[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v26);
  v88 = v35[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v30);
  *&v74[v35[7]] = v102;
  *&v74[v35[8]] = 0;
  *&v74[v35[9]] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v26);
  sub_18F0FF628(v77, &v74[v84], &qword_1EACCF7A8);
  sub_18F0FF628(v31, &v74[v88], &qword_1EACD0270);
  sub_18F228214();
  result = sub_18F5216CC();
  off_1ED6FE0F0 = result;
  return result;
}

_UNKNOWN **sub_18F227A4C()
{
  if (qword_1ED6FE0E8 != -1)
  {
    OUTLINED_FUNCTION_0_44();
  }

  return &off_1ED6FE0F0;
}

uint64_t static ChangeOperation.caseDisplayRepresentations.getter()
{
  if (qword_1ED6FE0E8 != -1)
  {
    OUTLINED_FUNCTION_0_44();
  }

  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t static ChangeOperation.caseDisplayRepresentations.setter(void *a1)
{
  if (qword_1ED6FE0E8 != -1)
  {
    OUTLINED_FUNCTION_0_44();
  }

  swift_beginAccess();
  off_1ED6FE0F0 = a1;
}

uint64_t (*static ChangeOperation.caseDisplayRepresentations.modify())()
{
  if (qword_1ED6FE0E8 != -1)
  {
    OUTLINED_FUNCTION_0_44();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F227BDC@<X0>(void *a1@<X8>)
{
  sub_18F227A4C();
  swift_beginAccess();
  *a1 = off_1ED6FE0F0;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F227C30(void **a1)
{
  v1 = *a1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F227A4C();
  swift_beginAccess();
  off_1ED6FE0F0 = v1;
}

AppIntents::ChangeOperation_optional __swiftcall ChangeOperation.init(rawValue:)(Swift::String rawValue)
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

uint64_t ChangeOperation.rawValue.getter()
{
  v1 = 0x656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x656C67676F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6261736964;
  }
}

unint64_t sub_18F227D58()
{
  result = qword_1ED6FEBD8;
  if (!qword_1ED6FEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBD8);
  }

  return result;
}

uint64_t sub_18F227DD0@<X0>(uint64_t *a1@<X8>)
{
  result = ChangeOperation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_18F227E38()
{
  result = qword_1ED6FEBB8;
  if (!qword_1ED6FEBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBB8);
  }

  return result;
}

unint64_t sub_18F227E8C()
{
  result = qword_1ED6FEBA0;
  if (!qword_1ED6FEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBA0);
  }

  return result;
}

unint64_t sub_18F227EE0()
{
  result = qword_1ED6FEBD0;
  if (!qword_1ED6FEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBD0);
  }

  return result;
}

unint64_t sub_18F227F34(uint64_t a1)
{
  result = sub_18F227F5C();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_18F227F5C()
{
  result = qword_1ED6FEBB0;
  if (!qword_1ED6FEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBB0);
  }

  return result;
}

unint64_t sub_18F227FB0(uint64_t a1)
{
  result = sub_18F227FD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F227FD8()
{
  result = qword_1ED6FEBA8;
  if (!qword_1ED6FEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBA8);
  }

  return result;
}

unint64_t sub_18F228080()
{
  result = qword_1ED6FEBC0;
  if (!qword_1ED6FEBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBC0);
  }

  return result;
}

uint64_t sub_18F228118(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_18F22816C()
{
  result = qword_1ED6FEBE8;
  if (!qword_1ED6FEBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBE8);
  }

  return result;
}

unint64_t sub_18F2281C0()
{
  result = qword_1ED6FEBC8;
  if (!qword_1ED6FEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBC8);
  }

  return result;
}

unint64_t sub_18F228214()
{
  result = qword_1ED6FEBE0;
  if (!qword_1ED6FEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEBE0);
  }

  return result;
}

unint64_t sub_18F22826C()
{
  result = qword_1ED6FE068;
  if (!qword_1ED6FE068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD2E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE068);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChangeOperation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F228498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v23 = a4;
  v22 = a2;
  v21 = sub_18F522F8C();
  v20 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 24);
  *(&v34 + 1) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v5, v10);
  sub_18F522F6C();
  v19 = v9;
  sub_18F522F7C();
  sub_18F52295C();

  v12 = &qword_1EACD2F68;
  while (1)
  {
    sub_18F522AFC();
    if (!v35)
    {
      break;
    }

    v31 = v33;
    sub_18F118710(&v34, &v32);
    sub_18F11DDA0(&v31, v27);

    __swift_instantiateConcreteTypeFromMangledNameV2(v12);
    if (swift_dynamicCast())
    {
      v13 = v12;
      sub_18F0FD0B4(v25, v28);
      v14 = v29;
      v15 = v30;
      __swift_project_boxed_opaque_existential_1Tm(v28, v29);
      v16 = sub_18F3F1870(v22, v14, v23, v15, v24);
      if (v16)
      {
        v17 = v16;
        MEMORY[0x193ADB260]();
        if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18F521D0C();
        }

        sub_18F521D6C();

        sub_18F0EF148(&v31, &qword_1EACCFD88);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v12 = v13;
      }

      else
      {
        sub_18F0EF148(&v31, &qword_1EACCFD88);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v12 = v13;
      }
    }

    else
    {
      sub_18F0EF148(&v31, &qword_1EACCFD88);
      memset(v25, 0, sizeof(v25));
      v26 = 0;
      sub_18F0EF148(v25, &qword_1EACD2F70);
    }
  }

  (*(v20 + 8))(v19, v21);
}

_BYTE *sub_18F228800(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F2288B4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F228924(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_18F228A60(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_18F228CA8()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_18F22900C;
  }

  else
  {
    v2 = sub_18F228DDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F228DDC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 22));
  OUTLINED_FUNCTION_25_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2F78);
  sub_18F521DBC();
  if (OUTLINED_FUNCTION_16_20())
  {
    sub_18F145E84();

LABEL_5:
    OUTLINED_FUNCTION_24_18();
    sub_18F521DBC();
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_7_24();

    v7 = v0[34];
    v0[35] = v7;
    v8 = swift_task_alloc();
    OUTLINED_FUNCTION_9_22(v8, v9, v10, v11, v12, v13, v14, v15, v43, v44, v45);
    type metadata accessor for DynamicOptionsResult.Section(0);
    v16 = OUTLINED_FUNCTION_2_41();
    v17 = OUTLINED_FUNCTION_1_38(v16);
    OUTLINED_FUNCTION_0_45(v17, v18, v19, v20, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v21);

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22_19();
  v3 = OUTLINED_FUNCTION_14_25();
  v4 = v0[51];
  if (v3)
  {
    OUTLINED_FUNCTION_11_22();
    v6 = *(v5 + 8);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v6(v4, v1);
    goto LABEL_5;
  }

  v7 = v0[49];
  v22 = v0[50];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  (*(v22 + 8))(v4, v7);
LABEL_7:
  v27 = OUTLINED_FUNCTION_4_32();
  v28(v27);
  sub_18F0FF690(v7, v2 + v1, &qword_1EACCF7A8);
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  v29 = OUTLINED_FUNCTION_10_24();
  v30(v29);
  v31 = OUTLINED_FUNCTION_21_16();
  v33 = v32(v31);
  OUTLINED_FUNCTION_20_16(v33, v34, v35, v36, v37, v38, v39, v40, v43);

  OUTLINED_FUNCTION_71();

  return v41();
}

uint64_t sub_18F22900C()
{
  v1 = OUTLINED_FUNCTION_17_24();
  v2(v1);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  OUTLINED_FUNCTION_13_25();
  sub_18F0EF1A8(v4 + v3, &qword_1EACCF7A8);

  OUTLINED_FUNCTION_71();

  return v5();
}

uint64_t sub_18F2290C0()
{
  v1 = OUTLINED_FUNCTION_17_24();
  v2(v1);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 56);
  OUTLINED_FUNCTION_13_25();
  sub_18F0EF1A8(v4 + v3, &qword_1EACCF7A8);

  OUTLINED_FUNCTION_71();

  return v5();
}

uint64_t sub_18F22916C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_18F1169CC(a1, a4, &qword_1EACD32D0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14[5] = *(a1 + *(type metadata accessor for IntentItemSection() + 36));
  v14[2] = a2;
  v14[3] = a3;
  type metadata accessor for IntentItem();
  v8 = sub_18F521DBC();
  v9 = type metadata accessor for DynamicOptionsResult.Item(0);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_18F10C138(sub_18F229454, v14, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  result = type metadata accessor for DynamicOptionsResult.Section(0);
  *(a4 + *(result + 20)) = v12;
  return result;
}

uint64_t sub_18F229360@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for IntentItem();
  return sub_18F229474(v2, a1);
}

uint64_t sub_18F229474@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(v7 + 2);
  v16(v9, v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2F80);
  if (OUTLINED_FUNCTION_15_20())
  {
    sub_18F14B458(v51, &v48);
    v46 = v16;
    v47 = v13;
    v17 = v4;
    v18 = v3;
    v19 = a2;
    v20 = v7;
    v22 = v49;
    v21 = v50;
    __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
    v23 = v22;
    v3 = v18;
    v4 = v17;
    v13 = v47;
    (*(*(v21 + 8) + 16))(v23);
    v7 = v20;
    a2 = v19;
    v16 = v46;
    v24 = type metadata accessor for DisplayRepresentation();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2F88);
    if (!OUTLINED_FUNCTION_15_20())
    {
      type metadata accessor for DisplayRepresentation();
      OUTLINED_FUNCTION_11();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
      goto LABEL_7;
    }

    sub_18F14B458(v51, &v48);
    v46 = v7;
    v47 = a2;
    v25 = v16;
    v26 = v13;
    v27 = v4;
    v28 = v3;
    v29 = v49;
    v30 = v50;
    __swift_project_boxed_opaque_existential_1Tm(&v48, v49);
    v31 = v30;
    v3 = v28;
    v4 = v27;
    v13 = v26;
    v16 = v25;
    sub_18F1436A0(v29, v31);
    v7 = v46;
    a2 = v47;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
LABEL_7:
  (*(v7 + 1))(v9, v6);
  v36 = *(v4 + 24);
  a2[3] = v6;
  a2[4] = v36;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v16(boxed_opaque_existential_1, v3, v6);
  sub_18F2297DC(v15, v13);
  sub_18F0EF1A8(v15, &qword_1EACD32D0);
  v38 = type metadata accessor for DisplayRepresentation();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v38);
  v39 = *(v3 + *(v4 + 40));
  v40 = type metadata accessor for DynamicOptionsResult.Item(0);
  v41 = *(v40 + 20);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v38);
  result = sub_18F0FF690(v13, a2 + v41, &qword_1EACD32D0);
  *(a2 + *(v40 + 24)) = v39;
  return result;
}

uint64_t sub_18F2297DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v22 = sub_18F520B3C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = *(v23 + 16);
  v48 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25();
  v26 = type metadata accessor for DisplayRepresentation();
  sub_18F1169CC(v3 + v26[5], v19, &qword_1EACCF7A8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v22);
  v51 = v21;
  if (EnumTagSinglePayload == 1)
  {
    v28 = v45;
    sub_18F1169CC(v45, v15, &qword_1EACD32D0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v26) == 1)
    {
      sub_18F0EF1A8(v15, &qword_1EACD32D0);
      __swift_storeEnumTagSinglePayload(v51, 1, 1, v22);
    }

    else
    {
      sub_18F1169CC(&v15[v26[5]], v51, &qword_1EACCF7A8);
      sub_18F14372C(v15);
    }

    v30 = v3;
    v31 = v23;
    v32 = v47;
    v34 = __swift_getEnumTagSinglePayload(v19, 1, v22);
    v29 = v50;
    v33 = v46;
    if (v34 != 1)
    {
      sub_18F0EF1A8(v19, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v23 + 32))(v21, v19, v22);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
    v29 = v50;
    v30 = v3;
    v31 = v23;
    v32 = v47;
    v28 = v45;
    v33 = v46;
  }

  sub_18F1169CC(v30 + v26[6], v32, &qword_1EACD0270);
  v35 = type metadata accessor for DisplayRepresentation.Image(0);
  if (__swift_getEnumTagSinglePayload(v32, 1, v35) == 1)
  {
    sub_18F1169CC(v28, v33, &qword_1EACD32D0);
    if (__swift_getEnumTagSinglePayload(v33, 1, v26) == 1)
    {
      sub_18F0EF1A8(v33, &qword_1EACD32D0);
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v35);
    }

    else
    {
      sub_18F1169CC(v33 + v26[6], v29, &qword_1EACD0270);
      sub_18F14372C(v33);
    }

    if (__swift_getEnumTagSinglePayload(v32, 1, v35) != 1)
    {
      sub_18F0EF1A8(v32, &qword_1EACD0270);
    }
  }

  else
  {
    sub_18F11CF40(v32, v29);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v35);
  }

  v36 = *(v30 + v26[9]);
  v37 = v28;
  v38 = v49;
  sub_18F1169CC(v37, v49, &qword_1EACD32D0);
  if (__swift_getEnumTagSinglePayload(v38, 1, v26) == 1)
  {
    sub_18F0EF1A8(v38, &qword_1EACD32D0);
    v39 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v39 = *(v38 + v26[9]);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F14372C(v38);
  }

  v52 = v36;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F25DC10(v39);
  v40 = v52;
  v41 = v26[5];
  __swift_storeEnumTagSinglePayload(a2 + v41, 1, 1, v22);
  v42 = v26[6];
  __swift_storeEnumTagSinglePayload(a2 + v42, 1, 1, v35);
  *(a2 + v26[7]) = xmmword_18F540410;
  *(a2 + v26[8]) = 0;
  v43 = v26[9];
  __swift_storeEnumTagSinglePayload(a2 + v26[10], 1, 1, v22);
  (*(v31 + 32))(a2, v48, v22);
  sub_18F0FF690(v51, a2 + v41, &qword_1EACCF7A8);
  result = sub_18F0FF690(v29, a2 + v42, &qword_1EACD0270);
  *(a2 + v43) = v40;
  return result;
}

uint64_t sub_18F229E24(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v10 = *(v7 + 16 * v5);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v8 = a1(&v10);

    if (v3)
    {
      return result;
    }

    if (v8)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

void sub_18F229F0C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193ADBE10](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v4 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_18F22A010(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_10_5();
}

void sub_18F22A024()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0[23] + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  v0[24] = v1;
  v2 = *(v1 + 16);
  v0[25] = v2;
  v0[26] = 0;
  if (!v2)
  {
    v6 = sub_18F22AF14();
    v0[29] = v6;
    v0[30] = v7;
    if (v6)
    {
      OUTLINED_FUNCTION_2_42();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[31] = v8;
      *v8 = v9;
      OUTLINED_FUNCTION_7_25(v8);
      OUTLINED_FUNCTION_21_17();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_17_25(v0[23]);
    v12 = OUTLINED_FUNCTION_26_18();
    v0[34] = v12;
    v0[10] = v12;
    OUTLINED_FUNCTION_80_0();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[35] = AssociatedConformanceWitness;
    v0[11] = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_24_19(boxed_opaque_existential_1, v15, v16, v17, v18, v19, v20, v21, v26, v27, v28);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[37] = v22;
    *v22 = v23;
    OUTLINED_FUNCTION_4_33(v22);
    OUTLINED_FUNCTION_21_17();

    __asm { BRAA            X3, X16 }
  }

  if (*(v1 + 16))
  {
    sub_18F0FD724(v1 + 32, (v0 + 2));
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_16_21();
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_6_34(v3);
    OUTLINED_FUNCTION_21_17();

    __asm { BRAA            X2, X16 }
  }

  __break(1u);
}

uint64_t sub_18F22A2CC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F22A3C8()
{
  OUTLINED_FUNCTION_29();
  result = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v2 = v0[25];
  v3 = v0[26] + 1;
  v0[26] = v3;
  if (v3 == v2)
  {
    v4 = sub_18F22AF14();
    v0[29] = v4;
    v0[30] = v5;
    if (v4)
    {
      OUTLINED_FUNCTION_2_42();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[31] = v6;
      *v6 = v7;
      OUTLINED_FUNCTION_7_25(v6);
      OUTLINED_FUNCTION_21_17();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_17_25(v0[23]);
    v14 = OUTLINED_FUNCTION_26_18();
    v0[34] = v14;
    v0[10] = v14;
    OUTLINED_FUNCTION_80_0();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[35] = AssociatedConformanceWitness;
    v0[11] = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_24_19(boxed_opaque_existential_1, v17, v18, v19, v20, v21, v22, v23, v28, v29, v30);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[37] = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_4_33(v24);
    OUTLINED_FUNCTION_21_17();

    __asm { BRAA            X3, X16 }
  }

  v10 = v0[24];
  if (v3 < *(v10 + 16))
  {
    sub_18F0FD724(v10 + 48 * v3 + 32, (v0 + 2));
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_16_21();
    v11 = swift_task_alloc();
    v0[27] = v11;
    *v11 = v0;
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_21_17();

    __asm { BRAA            X2, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F22A680()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F22A77C()
{
  OUTLINED_FUNCTION_69();
  sub_18F0F689C(*(v0 + 232));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F22A7D8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F22A8D4()
{
  OUTLINED_FUNCTION_21();
  v1 = (v0[23] + v0[33]);
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v2;
  *v2 = v3;
  v2[1] = sub_18F22A998;

  return sub_18F307524();
}

uint64_t sub_18F22A998()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F22AA7C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 176);
  if (*(v0 + 160))
  {
    sub_18F0FD0B4((v0 + 136), v0 + 96);
    sub_18F0FD0B4((v0 + 96), v1);
  }

  else
  {
    sub_18F0EF1A8(v0 + 136, &qword_1EACD2FE0);
    sub_18F0FD724(v0 + 56, v1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F22AB24()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F22AB80()
{
  OUTLINED_FUNCTION_69();
  sub_18F0F689C(*(v0 + 232));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F22ABDC()
{
  OUTLINED_FUNCTION_69();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 56);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F22AC38()
{
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  sub_18F0FD724(v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v5);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  v2 = static AppIntent._identifier.getter(DynamicType);
  v3 = sub_18F164DD4(v2);

  return v3;
}

uint64_t sub_18F22AD2C()
{
  sub_18F116A7C((v0 + 2), &v8, &qword_1EACD0620);
  if (v9)
  {
    sub_18F0FD0B4(&v8, &v10);
    sub_18F0FD724(&v10, &v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    sub_18F52194C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v10);
  }

  else
  {
    sub_18F0EF1A8(&v8, &qword_1EACD0620);
  }

  if (v0[7])
  {
    v1 = v0[8];
    v10 = v0[7];
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530);
    v2 = sub_18F52196C();
    v4 = v3;
  }

  else
  {
    v4 = 0xE900000000000064;
    v2 = 0x656E696665646E75;
  }

  v5 = v0[1];
  v10 = *v0;
  v11 = v5;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](673201440, 0xE400000000000000);
  MEMORY[0x193ADB000](v2, v4);

  MEMORY[0x193ADB000](8233, 0xE200000000000000);
  v6 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v6);

  return v10;
}

unint64_t sub_18F22AEBC()
{
  result = qword_1ED6FF180;
  if (!qword_1ED6FF180)
  {
    sub_18F520E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FF180);
  }

  return result;
}

uint64_t sub_18F22AF14()
{
  v1 = v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent__viewIntent;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent__viewIntent));
  v2 = *(v1 + 8);
  sub_18F0F693C(v2);
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_18F22AF84()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 136);
  v2 = OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent;
  sub_18F0FD724(v1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FC0);
  if (OUTLINED_FUNCTION_20_17())
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    v3 = *(v0 + 40);
    *(v0 + 144) = v3;
    *(v0 + 160) = __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v3);
    sub_18F521EBC();
    *(v0 + 168) = sub_18F521EAC();
    v4 = sub_18F521E1C();
    v6 = v5;
    v7 = sub_18F22B19C;
LABEL_5:

    return MEMORY[0x1EEE6DFA0](v7, v4, v6);
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_18F0EF1A8(v0 + 96, &qword_1EACD2FC8);
  sub_18F0FD724(v1 + v2, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FD0);
  if (OUTLINED_FUNCTION_20_17())
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    v8 = *(v0 + 40);
    *(v0 + 184) = v8;
    *(v0 + 200) = __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v8);
    sub_18F521EBC();
    *(v0 + 208) = sub_18F521EAC();
    v4 = sub_18F521E1C();
    v6 = v9;
    v7 = sub_18F22B270;
    goto LABEL_5;
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_18F0EF1A8(v0 + 96, &qword_1EACD2FD8);
  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_18F22B19C()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_80_0();
  *(v0 + 176) = sub_18F221198();
  v1 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_18F22B210()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 176);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18F22B270()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_80_0();
  *(v0 + 216) = sub_18F22151C();
  v1 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_18F22B2E4()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 216);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18F22B344(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC10AppIntents14PreparedIntent__viewIntent;
  os_unfair_lock_lock(v5);
  sub_18F22B3C0((v5 + 8), a1, a2);
  os_unfair_lock_unlock(v5);

  return sub_18F0F689C(a1);
}

uint64_t sub_18F22B3C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_18F0F689C(v6);
  }

  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  *a1 = a2;
  a1[1] = v7;
  return sub_18F0F693C(a2);
}

id sub_18F22B420()
{
  sub_18F0FD724(v0 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2FB0);
  if (OUTLINED_FUNCTION_19_19())
  {
    __swift_project_boxed_opaque_existential_1Tm(&v6, *(&v7 + 1));
    v1 = OUTLINED_FUNCTION_25_17();
    v3 = sub_18F3CB89C(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(&v6);
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_18F0EF1A8(&v6, &qword_1EACD2FB8);
    return 0;
  }

  return v3;
}