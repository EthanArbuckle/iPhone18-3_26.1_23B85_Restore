uint64_t sub_2219B01E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 208) = a4;
  *(v6 + 216) = a5;
  *(v6 + 192) = a2;
  *(v6 + 200) = a3;
  *(v6 + 184) = a1;
  *(v6 + 224) = *v5;
  v7 = *(v5 + 24);
  *(v6 + 240) = *(v5 + 16);
  *(v6 + 248) = v7;
  *(v6 + 296) = *(v5 + 32);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219B0218()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  *(v0 + 256) = type metadata accessor for AppIntentFetchOptionsResult.Section();
  result = sub_221BCD258();
  *(v0 + 176) = result;
  v5 = *(v1 + 16);
  *(v0 + 264) = v5;
  *(v0 + 272) = 0;
  if (v5)
  {
    v6 = *(v0 + 248);
    if (*(v6 + 16))
    {
      sub_2219B0DF4(v6 + 32, v0 + 16, &qword_27CFB7808, &qword_221BD1840);
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      *(v0 + 280) = v7;
      *v7 = v8;
      OUTLINED_FUNCTION_2_6(v7);

      return sub_2219B05B0();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = *(v0 + 296);
    v10 = *(v0 + 240);
    v11 = *(v0 + 184);
    *v11 = *(v0 + 224);
    *(v11 + 16) = v10;
    *(v11 + 24) = result;
    OUTLINED_FUNCTION_18(v9);

    return v12();
  }

  return result;
}

uint64_t sub_2219B0338()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 288) = v0;

  sub_2219B1538(v3 + 16, &qword_27CFB7808, &qword_221BD1840);
  if (v0)
  {
    v9 = *(v3 + 176);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2219B045C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 256);
  sub_221BCD748();
  result = sub_221BCD718();
  v3 = *(v0 + 264);
  v4 = *(v0 + 272) + 1;
  *(v0 + 272) = v4;
  if (v4 == v3)
  {
    v5 = *(v0 + 296);
    v6 = *(v0 + 240);
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    *v7 = *(v0 + 224);
    *(v7 + 16) = v6;
    *(v7 + 24) = v8;
    OUTLINED_FUNCTION_18(v5);

    return v12();
  }

  else
  {
    v9 = *(v0 + 248);
    if (v4 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_2219B0DF4(v9 + 80 * v4 + 32, v0 + 16, &qword_27CFB7808, &qword_221BD1840);
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      *(v0 + 280) = v10;
      *v10 = v11;
      OUTLINED_FUNCTION_2_6();

      return sub_2219B05B0();
    }
  }

  return result;
}

uint64_t sub_2219B058C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 288);
  return v2();
}

uint64_t sub_2219B05B0()
{
  OUTLINED_FUNCTION_1_5();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[20] = v5;
  v1[21] = v6;
  Options = type metadata accessor for AppIntentFetchOptionsResult.Item();
  v1[26] = Options;
  v8 = *(*(Options - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219B064C()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v1[25];
  v2 = v1[26];
  result = sub_221BCD258();
  v1[18] = result;
  v5 = *(v3 + 40);
  v1[28] = v5;
  v6 = *(v5 + 16);
  v1[29] = v6;
  v1[30] = 0;
  if (v6)
  {
    if (*(v5 + 16))
    {
      sub_2219B0DF4(v5 + 32, (v1 + 2), &unk_27CFBB710, &qword_221BD1850);
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      v1[31] = v7;
      *v7 = v8;
      OUTLINED_FUNCTION_3_5(v7);

      return sub_2219B0E54();
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  sub_2219B0DF4(v1[25], (v1 + 13), &qword_27CFB7B20, &qword_221BD15C0);
  if (v1[16])
  {
    v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7C38, qword_221BD1740);
    sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    if (swift_dynamicCast())
    {
      v1[33] = v1[19];
      v9 = swift_task_alloc();
      v1[34] = v9;
      *v9 = v1;
      OUTLINED_FUNCTION_5_2(v9);

      return sub_2219B1594();
    }
  }

  else
  {
    sub_2219B1538((v1 + 13), &qword_27CFB7B20, &qword_221BD15C0);
  }

  OUTLINED_FUNCTION_1_10();
  AppIntentFetchOptionsResult.Section.init(image:options:subtitle:title:)(0, v10, v11, v0, v12, (v1 + 18), v13);

  OUTLINED_FUNCTION_4_3();

  return v14();
}

uint64_t sub_2219B0850()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 256) = v0;

  sub_2219B1538(v3 + 16, &unk_27CFBB710, &qword_221BD1850);
  if (v0)
  {
    v9 = *(v3 + 144);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2219B0974()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1[26];
  v3 = v1[27];
  sub_221BCD748();
  result = sub_221BCD718();
  v5 = v1[29];
  v6 = v1[30] + 1;
  v1[30] = v6;
  if (v6 == v5)
  {
    sub_2219B0DF4(v1[25], (v1 + 13), &qword_27CFB7B20, &qword_221BD15C0);
    if (v1[16])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7C38, qword_221BD1740);
      sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
      if (swift_dynamicCast())
      {
        v1[33] = v1[19];
        v7 = swift_task_alloc();
        v1[34] = v7;
        *v7 = v1;
        OUTLINED_FUNCTION_5_2(v7);

        return sub_2219B1594();
      }
    }

    else
    {
      sub_2219B1538((v1 + 13), &qword_27CFB7B20, &qword_221BD15C0);
    }

    OUTLINED_FUNCTION_1_10();
    AppIntentFetchOptionsResult.Section.init(image:options:subtitle:title:)(0, v11, v12, v3, v13, v0, v14);

    OUTLINED_FUNCTION_4_3();

    return v15();
  }

  else
  {
    v8 = v1[28];
    if (v6 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_2219B0DF4(v8 + 88 * v6 + 32, (v1 + 2), &unk_27CFBB710, &qword_221BD1850);
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      v1[31] = v9;
      *v9 = v10;
      OUTLINED_FUNCTION_3_5();

      return sub_2219B0E54();
    }
  }

  return result;
}

uint64_t sub_2219B0B90()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v8 = *(v7 + 272);
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v5 + 280) = v0;

  if (v0)
  {
    v11 = *(v5 + 264);
    v12 = *(v5 + 144);
  }

  else
  {

    *(v5 + 288) = v3;
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2219B0CB8()
{
  OUTLINED_FUNCTION_8_0();
  v3 = *(v2 + 288);
  OUTLINED_FUNCTION_1_10();
  AppIntentFetchOptionsResult.Section.init(image:options:subtitle:title:)(v4, v5, v6, v0, v7, v1, v8);

  OUTLINED_FUNCTION_4_3();

  return v9();
}

uint64_t sub_2219B0D3C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_2219B0D98()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 280);
  v2 = *(v0 + 216);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_2219B0DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return a2;
}

uint64_t sub_2219B0E54()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  v1[11] = v4;
  v1[12] = v0;
  v1[9] = v5;
  v1[10] = v2;
  v1[8] = v6;
  v7 = sub_221BCDC98();
  v1[13] = v7;
  v8 = *(v7 - 8);
  v1[14] = v8;
  v9 = *(v8 + 64) + 15;
  v1[15] = swift_task_alloc();
  v10 = *(v3 - 8);
  v1[16] = v10;
  v11 = *(v10 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2219B0F78()
{
  v1 = v0[15];
  v2 = v0[10];
  (*(v0[11] + 32))(*(v0[12] + 80), v0[9], v2);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_2219A1218();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_0_10(v3, 10);
    swift_willThrow();
    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[15];

    OUTLINED_FUNCTION_25();
    goto LABEL_10;
  }

  v7 = v0[12];
  (*(v0[16] + 32))(v0[18], v0[15], v0[10]);
  sub_2219B0DF4(v7, (v0 + 2), &qword_27CFB7B20, &qword_221BD15C0);
  if (!v0[5])
  {
    sub_2219B1538((v0 + 2), &qword_27CFB7B20, &qword_221BD15C0);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7C38, qword_221BD1740);
  sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
  if (!swift_dynamicCast())
  {
LABEL_9:
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[16];
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v0[8];
    v28 = v14[5];
    v29 = v0[15];
    v27 = v14[6];
    v18 = v14[7];
    v19 = v14[8];
    v20 = v14[9];
    v21 = *(v13 + 16);
    v22 = OUTLINED_FUNCTION_0_0();
    v23(v22);
    AppIntentFetchOptionsResult.Item.init(image:indentationLevel:subtitle:title:value:)(0, v28, v27, v18, v19, v20, v11, v16, v17);
    v24 = *(v13 + 8);

    v24(v12, v16);

    OUTLINED_FUNCTION_4_3();
LABEL_10:
    OUTLINED_FUNCTION_28_0();

    __asm { BRAA            X1, X16 }
  }

  v0[19] = v0[7];
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_2219B124C;
  OUTLINED_FUNCTION_28_0();

  return sub_2219B1594();
}

uint64_t sub_2219B124C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v7 = *(v4 + 160);
  *v6 = *v2;
  *(v5 + 168) = v1;

  if (!v1)
  {
    *(v5 + 176) = a1;
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_2219B1384()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v16 = v0[22];
  v17 = v0[15];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  v14 = v4[8];
  v15 = v0[11];
  v10 = v4[9];
  (*(v3 + 16))(v2, v1, v5);
  AppIntentFetchOptionsResult.Item.init(image:indentationLevel:subtitle:title:value:)(v16, v7, v8, v9, v14, v10, v2, v5, v6);
  v11 = *(v3 + 8);

  v11(v1, v5);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2219B14A4()
{
  OUTLINED_FUNCTION_8_0();
  (*(v0[16] + 8))(v0[18], v0[10]);
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_2219B1538(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2219B15A8()
{
  v1 = [*(v0 + 152) inImage];
  *(v0 + 160) = v1;
  if ([v1 _requiresRetrieval])
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_2219B1748;
    v2 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D48, &qword_221BD1868);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2219B19B8;
    *(v0 + 104) = &block_descriptor_1;
    *(v0 + 112) = v2;
    [v1 _retrieveImageDataWithReply_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v3 = *(v0 + 152);

    v4 = *(v0 + 152);
    OUTLINED_FUNCTION_25();
    v8 = v5;
    v6 = v3;

    return v8(v4);
  }
}

uint64_t sub_2219B1748()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 168) = *(v3 + 48);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2219B1848()
{
  v1 = v0[18];
  v2 = v0[20];
  if (v1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D23860]) initWithINImage_];

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    sub_2219A1218();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_0_10(v6, 7);
    swift_willThrow();

    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t sub_2219B1950()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  v3 = *(v0 + 168);
  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_2219B19B8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_2219AD8D4(v5, a3);
  }

  v7 = a2;
  return sub_2219AD940(v5, a2);
}

uint64_t sub_2219B1A48(void *a1)
{
  v1 = [a1 dependentParameterIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD668();

  return v3;
}

void OUTLINED_FUNCTION_0_10(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 5;
}

void OUTLINED_FUNCTION_1_10()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  v8 = v2[9];
}

void *OUTLINED_FUNCTION_2_6(uint64_t a1)
{
  *(a1 + 8) = sub_2219B0338;
  v2 = v1[26];
  v3 = v1[27];
  v4 = v1[24];
  v5 = v1[25];
  return v1 + 12;
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1)
{
  *(a1 + 8) = sub_2219B0850;
  result = v1[27];
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[22];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_3()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a12 = a16;
  *(a12 + 8) = a11;
  *(a12 + 16) = a15;
  *(a12 + 24) = v17;
  *(a12 + 32) = v16;
}

void OUTLINED_FUNCTION_17_0()
{
  v3 = v0 + 80 * v2;
  *(v3 + 32) = v1;
  *(v3 + 40) = 0;
}

uint64_t OUTLINED_FUNCTION_18@<X0>(char a1@<W8>)
{
  *(v1 + 32) = a1;
  v5 = *(v2 + 8);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return sub_221BCD668();
}

void OUTLINED_FUNCTION_23_0(void *a1@<X8>)
{
  v7 = *(v6 - 104);
  a1[8] = v5;
  a1[9] = v7;
  a1[10] = v1;
  a1[11] = v2;
  a1[12] = v3;
  a1[13] = v4;
}

BOOL OUTLINED_FUNCTION_24_0@<W0>(unint64_t a1@<X8>)
{
  result = a1 > 1;
  *(v2 - 104) = v1;
  return result;
}

uint64_t AppIntentPerformOptions.assistantDismissalPolicy.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

Swift::Bool __swiftcall AppIntentPerformOptions.donateToTranscript(defaultValue:)(Swift::Bool defaultValue)
{
  v2 = *(v1 + 32);
  if (v2 == 2)
  {
    LOBYTE(v2) = defaultValue;
  }

  return v2 & 1;
}

uint64_t AppIntentPerformOptions.exportedContentTypeIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AppIntentPerformOptions.preferredBundleIdentifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

void AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, char a26, const void *a27)
{
  OUTLINED_FUNCTION_4_4();
  v65 = v27;
  v64 = v28;
  v30 = v29;
  v63 = v31;
  v33 = v32;
  v62 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v61 = a24;
  v60 = a23;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v44 = OUTLINED_FUNCTION_8_1(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v59 - v47;
  memcpy(v68, a27, sizeof(v68));
  v67 = v33 & 1;
  sub_2219B1FB0(v30, v48);
  v49 = sub_221BCCC98();
  v50 = OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v50, v51, v49) == 1)
  {
    sub_2219B2020(v30);
    sub_2219B2020(v48);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v52 = sub_221BCCC88();
    v53 = v54;
    sub_2219B2020(v30);
    OUTLINED_FUNCTION_0_6(v49);
    (*(v55 + 8))(v48, v49);
  }

  memcpy(&v66[6], v68, 0x64uLL);
  v56 = v67;
  *v42 = v40 & 1;
  *(v42 + 1) = v36 & 1;
  *(v42 + 8) = v62;
  *(v42 + 16) = v56;
  *(v42 + 24) = v38;
  *(v42 + 32) = v63;
  *(v42 + 40) = v52;
  *(v42 + 48) = v53;
  v57 = v65;
  *(v42 + 56) = v64;
  *(v42 + 64) = v57;
  v58 = v61;
  *(v42 + 72) = v60;
  *(v42 + 80) = v58;
  *(v42 + 88) = a25 & 1;
  *(v42 + 89) = a26 & 1;
  memcpy((v42 + 90), v66, 0x6AuLL);
  OUTLINED_FUNCTION_5_3();
}

uint64_t sub_2219B1FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2219B2020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2219B2088(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int16 a5)
{
  v29 = *a4;
  v8 = *v5;
  v9 = v5[1];
  v10 = *(v5 + 1);
  v11 = v5[16];
  v12 = *(v5 + 3);
  v13 = v5[32];
  v14 = *(v5 + 6);
  v22 = *(v5 + 5);
  v24 = *(v5 + 7);
  v25 = *(v5 + 8);
  v26 = v5[88];
  v27 = v5[89];
  v15 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
  [v15 setAllowLiveActivities_];
  [v15 setAllowsPrepareBeforePerform_];
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v10;
  }

  [v15 setAssistantDismissalPolicy_];
  sub_2219B2D48(a1, a2, v15);
  [v15 setConnectionOperationTimeout_];
  [v15 setDonateToTranscript_];
  [v15 setEnvironment_];
  if (v14)
  {
    sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);

    v17 = sub_221AE94F4(v22, v14);
    v18 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v17 preferredExtractionType:1];

    [v15 setExportedContentConfiguration_];
  }

  [v15 setInteractionMode_];
  [v15 setKind_];
  [v15 setPreferNoticePresentation_];
  [v15 setRequestUnlockIfNeeded_];
  [v15 setSource_];
  v19 = [objc_allocWithZone(MEMORY[0x277D23CB0]) init];
  v20 = 0;
  switch(v29)
  {
    case 10:
      break;
    default:
      v20 = sub_221BCD358();

      break;
  }

  [v19 setInterfaceIdiom_];

  [v15 setSystemContext_];
  return v15;
}

id sub_2219B23F4(uint64_t a1, void *a2)
{
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v7 = [objc_allocWithZone(MEMORY[0x277D23BC8]) init];
  if (!v6)
  {
    v9 = [a2 systemProtocols];
    sub_2219A1D20(0, &qword_27CFB7D70, 0x277D23938);
    v10 = sub_221BCD668();

    v11 = [objc_opt_self() systemFrameworkProtocol];
    v40 = v11;
    MEMORY[0x28223BE20](v11);
    v39[2] = &v40;
    sub_221A14814(sub_2219B2E28, v39, v10);
    v13 = v12;

    if (v13)
    {
      v14 = (a1 + 64);
      v15 = *(a1 + 16) + 1;
      do
      {
        if (!--v15)
        {
          v22 = 0;
          v17 = 0;
          v16 = 0;
          v19 = 0;
          goto LABEL_15;
        }

        v17 = *(v14 - 4);
        v16 = *(v14 - 3);
        v19 = *(v14 - 2);
        v18 = *(v14 - 1);
        v20 = *v14;
        if (v17 == 7368801 && v16 == 0xE300000000000000)
        {
          break;
        }

        v14 += 5;
      }

      while ((sub_221BCE1B8() & 1) == 0);

      if (v19)
      {
        v22 = [v19 valueType];
      }

      else
      {
        v22 = 0;
      }

LABEL_15:
      v23 = [objc_opt_self() applicationValueType];
      if (v22)
      {
        sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
        v24 = sub_221BCDC58();

        if ((v24 & 1) == 0)
        {
          v32 = OUTLINED_FUNCTION_3_6();
LABEL_23:
          OUTLINED_FUNCTION_11_0(v32, v33, v34);
          goto LABEL_24;
        }

        if (v16)
        {
          if (v19)
          {
            v25 = [v19 value];
            sub_221BCDCF8();
            swift_unknownObjectRelease();
            if (swift_dynamicCast())
            {
              sub_2219B2DA0(v39[5], v39[6], v7);
              v26 = OUTLINED_FUNCTION_3_6();
              OUTLINED_FUNCTION_11_0(v26, v27, v28);
              return v7;
            }

            v36 = OUTLINED_FUNCTION_3_6();
            OUTLINED_FUNCTION_11_0(v36, v37, v38);
            return 0;
          }

          v32 = v17;
          v33 = v16;
          v34 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v29 = OUTLINED_FUNCTION_3_6();
        OUTLINED_FUNCTION_11_0(v29, v30, v31);
      }
    }

LABEL_24:

    return 0;
  }

  v8 = sub_221BCD358();
  [v7 setPreferredBundleIdentifier_];

  return v7;
}

void AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, unsigned __int8 a26)
{
  OUTLINED_FUNCTION_4_4();
  v67 = v27;
  v68 = v28;
  v30 = v29;
  v66 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v62 = a26;
  v65 = a24;
  v63 = v42;
  v64 = a23;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v44 = OUTLINED_FUNCTION_8_1(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_11();
  MEMORY[0x28223BE20](v47);
  v49 = &v61[-v48];
  sub_2219B1FB0(v30, &v61[-v48]);
  v69 = v35 & 1;
  sub_2219B1FB0(v49, v26);
  v50 = sub_221BCCC98();
  v51 = OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v51, v52, v50) == 1)
  {
    sub_2219B2020(v30);
    sub_2219B2020(v49);
    sub_2219B2020(v26);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v53 = sub_221BCCC88();
    v54 = v55;
    sub_2219B2020(v30);
    sub_2219B2020(v49);
    OUTLINED_FUNCTION_0_6(v50);
    (*(v56 + 8))(v26, v50);
  }

  v57 = v69;
  *v41 = v39 & 1;
  v58 = v62 & 1;
  *(v41 + 1) = v37 & 1;
  *(v41 + 8) = v63;
  *(v41 + 16) = v57;
  *(v41 + 24) = v33;
  *(v41 + 32) = v66;
  *(v41 + 40) = v53;
  *(v41 + 48) = v54;
  v59 = v68;
  *(v41 + 56) = v67;
  *(v41 + 64) = v59;
  v60 = v65;
  *(v41 + 72) = v64;
  *(v41 + 80) = v60;
  *(v41 + 88) = a25 & 1;
  *(v41 + 89) = v58;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_5_3();
}

void AppIntentPerformOptions.init(allowsPrepareBeforePerform:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:)()
{
  OUTLINED_FUNCTION_4_4();
  v3 = v2;
  HIDWORD(v27) = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_11();
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_2(v12, v13, v14, v15, v16, v17, v18, v19, v27);
  sub_2219B1FB0(v1, v0);
  v20 = sub_221BCCC98();
  v21 = OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v21, v22, v20) == 1)
  {
    sub_2219B2020(v3);
    sub_2219B2020(v1);
    sub_2219B2020(v0);
  }

  else
  {
    sub_221BCCC88();
    sub_2219B2020(v3);
    sub_2219B2020(v1);
    OUTLINED_FUNCTION_0_6(v20);
    (*(v23 + 8))(v0, v20);
  }

  OUTLINED_FUNCTION_10_0();
  *v6 = 0;
  OUTLINED_FUNCTION_2_7(v24);
  v6[88] = v25;
  v6[89] = v26;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_5_3();
}

void AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, unsigned __int8 a24)
{
  OUTLINED_FUNCTION_4_4();
  v27 = v26;
  v29 = v28;
  LODWORD(v52) = a24;
  HIDWORD(v52) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v32 = OUTLINED_FUNCTION_8_1(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_11();
  v36 = MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_2(v36, v37, v38, v39, v40, v41, v42, v43, v52);
  sub_2219B1FB0(v25, v24);
  v44 = sub_221BCCC98();
  v45 = OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v45, v46, v44) == 1)
  {
    sub_2219B2020(v27);
    sub_2219B2020(v25);
    sub_2219B2020(v24);
  }

  else
  {
    sub_221BCCC88();
    sub_2219B2020(v27);
    sub_2219B2020(v25);
    OUTLINED_FUNCTION_0_6(v44);
    (*(v47 + 8))(v24, v44);
  }

  OUTLINED_FUNCTION_10_0();
  *v29 = v48;
  OUTLINED_FUNCTION_2_7(v49);
  v29[88] = v50;
  v29[89] = v51;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_5_3();
}

uint64_t sub_2219B2BB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 196))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_2219B2C08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 196) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 196) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_2219B2D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_221BCE1B8() & 1;
  }
}

void sub_2219B2D48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_221BCD358();
  [a3 setClientLabel_];
}

void sub_2219B2DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_221BCD358();

  [a3 setPreferredBundleIdentifier_];
}

uint64_t sub_2219B2E04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2219B2CA0() & 1;
}

void sub_2219B2E48(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

double OUTLINED_FUNCTION_0_11()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 2;
  return result;
}

void OUTLINED_FUNCTION_2_7(char a1@<W8>)
{
  *(v2 + 1) = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = v1;
  *(v2 + 24) = v6;
  *(v2 + 32) = *(v5 - 140);
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v7 = *(v5 - 128);
  *(v2 + 56) = *(v5 - 136);
  *(v2 + 64) = v7;
  v8 = *(v5 - 112);
  *(v2 + 72) = *(v5 - 120);
  *(v2 + 80) = v8;
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2219B1FB0(v10, &a9 - v9);
}

void OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, void *a3)
{

  sub_2219B2E48(a1, a2, a3);
}

uint64_t AppIntentRepresentation.exportToSpecification()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v42 = a3;
  v5 = sub_221BCE388();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v57 + 1) = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
  v10 = *(*(a1 - 8) + 16);
  v39 = a1;
  v10(boxed_opaque_existential_1, v3, a1);
  sub_221BCE368();
  v41 = v8;
  v38[1] = sub_221BCE378();
  sub_221BCDFE8();
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_221BCE098();
    if (!*(&v58 + 1))
    {
      break;
    }

    v54 = v56;
    v55[0] = v57;
    v55[1] = v58;
    v12 = *(&v56 + 1);
    if (!*(&v56 + 1))
    {
      goto LABEL_7;
    }

    v13 = v54;
    sub_22199B650(v55, &v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D78, &qword_221BD18E8);
    if (!swift_dynamicCast())
    {
      v46 = 0;
      memset(v45, 0, sizeof(v45));
      sub_2219A6860(v45, &qword_27CFB7D80, &qword_221BD18F0);
LABEL_7:
      v18 = 0;
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      goto LABEL_8;
    }

    sub_22198B358(v45, v48);
    v14 = v49;
    v15 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    (*(v15 + 32))(v13, v12, v14, v15);
    v16 = v49;
    v17 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    (*(v17 + 16))(&v51, v16, v17);
    __swift_destroy_boxed_opaque_existential_0(v48);
    v18 = *(&v51 + 1);
LABEL_8:
    sub_2219A6860(&v54, &qword_27CFB77C8, &unk_221BD0D30);
    v19 = v51;
    v20 = v52;
    v21 = v53;
    if (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = *(v11 + 16);
        OUTLINED_FUNCTION_10_1();
        sub_2219B3BE4();
        v11 = v25;
      }

      v22 = *(v11 + 16);
      if (v22 >= *(v11 + 24) >> 1)
      {
        sub_2219B3BE4();
        v11 = v26;
      }

      *(v11 + 16) = v22 + 1;
      v23 = v11 + 40 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      *(v23 + 48) = v20;
      *(v23 + 64) = v21;
    }

    else
    {
      sub_2219B2E48(v51, 0, v52);
    }
  }

  v27 = v39;
  v28 = v40;
  v29 = (*(v40 + 16))(v39, v40);
  v31 = v30;
  v32 = (*(v28 + 24))(v27, v28);
  v34 = v33;
  v35 = v42;
  v42[3] = &type metadata for AnyAppIntentSpecification;
  v35[4] = &off_283513928;
  v36 = swift_allocObject();
  *v35 = v36;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = xmmword_221BD0800;
  *(v36 + 48) = v32;
  *(v36 + 56) = v34;
  *(v36 + 64) = v11;
  return (*(v43 + 8))(v41, v44);
}

uint64_t AppIntentRepresentation.options<A>(for:searchTerm:dispatcher:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v8[20] = *a2;
  return MEMORY[0x2822009F8](sub_2219B3434, 0, 0);
}

uint64_t sub_2219B3434()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = MEMORY[0x277D84DE8];
  v4 = *(v0[20] + *MEMORY[0x277D84DE8]);
  (*(v0[18] + 32))(v4);
  swift_getAtKeyPath();
  v5 = v0[10];
  v0[21] = v5;
  v6 = (v5 + *(*v5 + 112));
  swift_beginAccess();
  v7 = v6[1];
  v0[22] = v7;
  if (v7)
  {
    v8 = v0[20];
    v9 = v0[16];
    v34 = v0[17];
    v10 = *v6;
    swift_getObjectType();
    v11 = *(v8 + *v3 + 8);
    v12 = *(v11 + 80);
    v13 = *(v34 + 24);

    v33 = v13 + *v13;
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[23] = v15;
    v16 = *(v11 + 88);
    *v15 = v0;
    v15[1] = sub_2219B3740;
    v17 = v0[16];
    v18 = v0[14];
    v19 = v0[15];
    v20 = v0[12];
    v36 = v0[17];

    __asm { BRAA            X8, X16 }
  }

  v21 = v0[20];
  v22 = v0[13];
  v23 = (*(v0[18] + 24))(v4);
  v25 = v24;
  v0[11] = v22;
  v26 = *(v21 + *v3 + 8);
  sub_221BCE3E8();

  v27 = sub_221BCD3D8();
  v29 = v28;
  sub_2219A1218();
  swift_allocError();
  *v30 = v23;
  *(v30 + 8) = v25;
  *(v30 + 16) = v27;
  *(v30 + 24) = v29;
  *(v30 + 32) = 3;
  swift_willThrow();

  sub_2219B397C((v0 + 2));
  v31 = v0[1];

  return v31();
}

uint64_t sub_2219B3740()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);

  if (v0)
  {
    v6 = sub_2219B38E0;
  }

  else
  {
    v6 = sub_2219B3874;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2219B3874()
{
  v1 = *(v0 + 168);

  sub_2219B397C(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2219B38E0()
{
  v1 = v0[21];

  v2 = v0[24];
  sub_2219B397C((v0 + 2));
  v3 = v0[1];

  return v3();
}

void sub_2219B3A0C()
{
  OUTLINED_FUNCTION_9_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_2_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7820, &unk_221BD1970);
      v8 = OUTLINED_FUNCTION_11_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_5_4(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C2C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B3AFC()
{
  OUTLINED_FUNCTION_9_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_2_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      v8 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_6_3(v8);
      OUTLINED_FUNCTION_7_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C0C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B3BE4()
{
  OUTLINED_FUNCTION_13_0();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 40);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_14_1();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v8)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B3CC4()
{
  OUTLINED_FUNCTION_9_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_2_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D88, &unk_221BD1920);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_6_3(v8);
      OUTLINED_FUNCTION_7_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C74(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B3D84()
{
  OUTLINED_FUNCTION_9_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_2_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7878, &unk_221BD1980);
      v8 = OUTLINED_FUNCTION_11_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_5_4(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_5();
        sub_2219A2BE4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7880, &qword_221BD0DC8);
    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B3E54()
{
  OUTLINED_FUNCTION_9_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_2_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7888, &qword_221BD0DD0);
      v8 = OUTLINED_FUNCTION_11_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_5_4(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C94(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B3F14()
{
  OUTLINED_FUNCTION_9_2();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_2_8(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DC8, &unk_221BD19C0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * v10 - 64;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_4_5();
        sub_2219A2CB8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_3_7();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B3FD0()
{
  OUTLINED_FUNCTION_9_2();
  if (v3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_221BB9B00(v7, v4);
  v9 = *(type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_2219A2CE0(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2219B4104()
{
  OUTLINED_FUNCTION_13_0();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = OUTLINED_FUNCTION_12_0();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_14_1();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v8)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B41D4()
{
  OUTLINED_FUNCTION_9_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_2_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D0, &unk_221BD1990);
      v8 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_6_3(v8);
      OUTLINED_FUNCTION_7_1(v9);
      if (v1)
      {
LABEL_9:
        OUTLINED_FUNCTION_4_5();
        sub_2219A2CF8();
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B429C()
{
  OUTLINED_FUNCTION_9_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_2_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D90, &qword_221BD1938);
      v8 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_6_3(v8);
      OUTLINED_FUNCTION_7_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C0C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D98, &qword_221BD1940);
    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B4454(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7, void (*a8)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v14 != v15)
    {
      OUTLINED_FUNCTION_8_2();
      if (v14)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v13 = a2;
  }

  v16 = *(a4 + 16);
  v17 = a5(v16, v13);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7) - 8);
  if (a1)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    a8(a4 + v19, v16, v17 + v19);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2219B4554()
{
  OUTLINED_FUNCTION_9_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_2_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DB8, &unk_221BD1960);
      v8 = OUTLINED_FUNCTION_11_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_5_4(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_5();
        sub_2219A2ECC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2219B4614()
{
  OUTLINED_FUNCTION_9_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_2_8(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DA8, &unk_221BD1950);
      v8 = OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_6_3(v8);
      OUTLINED_FUNCTION_7_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_5();
        sub_2219A2C54(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DB0, &qword_221BE8EC0);
    OUTLINED_FUNCTION_3_7();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_2();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_2();
    goto LABEL_7;
  }

  __break(1u);
}

void OUTLINED_FUNCTION_2_8(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_2219B47E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  sub_2219B68B8(a3, v19 - v10, &qword_27CFB7DD0, &unk_221BD19F0);
  v12 = sub_221BCC418();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2219A6860(a3, &qword_27CFB7DD0, &unk_221BD19F0);
    result = sub_2219A6860(v11, &qword_27CFB7DD0, &unk_221BD19F0);
    v14 = 0;
  }

  else
  {
    v19[3] = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    v16 = *(v12 - 8);
    (*(v16 + 16))(boxed_opaque_existential_1, v11, v12);
    v17 = [objc_opt_self() URLValueType];
    v18 = objc_allocWithZone(MEMORY[0x277D23958]);
    v14 = sub_2219A6260(v19, v17);
    sub_2219A6860(a3, &qword_27CFB7DD0, &unk_221BD19F0);
    result = (*(v16 + 8))(v11, v12);
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v14;
  a4[3] = v12;
  a4[4] = &protocol witness table for URL;
  return result;
}

uint64_t sub_2219B49E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_2219B68B8(a3, v10, &qword_27CFB7920, &qword_221BD0E60);
  if (v11)
  {
    v8 = AppEntitySpecification.lnValue.getter();
    sub_2219A6860(a3, &qword_27CFB7920, &qword_221BD0E60);
    result = sub_2219A1BD4(v10);
  }

  else
  {
    sub_2219A6860(a3, &qword_27CFB7920, &qword_221BD0E60);
    result = sub_2219A6860(v10, &qword_27CFB7920, &qword_221BD0E60);
    v8 = 0;
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = &type metadata for AppEntitySpecification;
  a4[4] = &protocol witness table for AppEntitySpecification;
  return result;
}

__n128 AppIntentSpecification.init(app:actionIdentifier:parameters:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v13 = *a1;
  v9 = a1[1].n128_u64[0];
  v10 = a1[1].n128_u64[1];
  a5[3] = &type metadata for AnyAppIntentSpecification;
  a5[4] = &off_283513928;
  v11 = swift_allocObject();
  *a5 = v11;
  result = v13;
  *(v11 + 16) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  *(v11 + 48) = a2;
  *(v11 + 56) = a3;
  *(v11 + 64) = a4;
  return result;
}

uint64_t AppIntentSpecification.app.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_1_0();
  return v4(v3);
}

uint64_t AppIntentSpecification.actionIdentifier.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_4();
  return v4(v3);
}

uint64_t AppIntentSpecification.parameters.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_4();
  return v4(v3);
}

uint64_t sub_2219B4C50(uint64_t *a1)
{
  v1 = *a1;

  return AppIntentSpecification.parameters.setter();
}

uint64_t AppIntentSpecification.parameters.setter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_16();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  v5 = *(v2 + 32);
  v6 = OUTLINED_FUNCTION_4();
  return v7(v6);
}

uint64_t (*AppIntentSpecification.parameters.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = OUTLINED_FUNCTION_16();
  __swift_project_boxed_opaque_existential_0(v5, v6);
  v7 = *(v4 + 24);
  v8 = OUTLINED_FUNCTION_1_0();
  *a1 = v9(v8);
  return sub_2219B4D44;
}

uint64_t sub_2219B4D44(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 32);
  if (a2)
  {

    v6(v7, v4, v5);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4();
    return (v6)(v9);
  }
}

uint64_t static AppIntentSpecification.openURL(app:url:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v27 - v8;
  v9 = sub_221BCC418();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v12 = v11;
  v27 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  v20 = a1[2];
  v19 = a1[3];
  v21 = *(v12 + 16);
  v21(v16, a2, v9);
  a3[3] = &type metadata for OpenURLIntentSpecification;
  a3[4] = &off_2835138F8;
  v22 = swift_allocObject();
  *a3 = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = v19;
  strcpy((v22 + 48), "OpenURLIntent");
  *(v22 + 62) = -4864;
  *(v22 + 72) = 0;
  *(v22 + 80) = 0;
  *(v22 + 88) = 1;
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7908, &unk_221BD19D0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_221BD19E0;
  v24 = v28;
  v25 = OUTLINED_FUNCTION_4();
  (v21)(v25);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v9);

  sub_221998178(v20, v19);
  sub_2219B47E4(7107189, 0xE300000000000000, v24, (v23 + 32));
  *(v22 + 64) = v23;
  result = (*(v27 + 8))(v16, v9);
  *(v22 + 112) = MEMORY[0x277D84F90];
  return result;
}

uint64_t static AppIntentSpecification.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_0_12();
  v6(v5);
  v44[0] = v46;
  v44[1] = v47;
  v45 = v48;
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_0_12();
  v10(v9);
  v39[0] = v41;
  v39[1] = v42;
  v40 = v43;
  v11 = static AppIdentifier.== infix(_:_:)(v44, v39);
  v12 = v40;

  sub_2219982C4(v12, *(&v12 + 1));
  v13 = v45;

  sub_2219982C4(v13, *(&v13 + 1));
  if (!v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_12();
  v15 = *(v14 + 16);
  v16 = OUTLINED_FUNCTION_0_12();
  v18 = v17(v16);
  v20 = v19;
  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v21);
  if (v18 == (*(v22 + 16))(v21, v22) && v20 == v23)
  {
  }

  else
  {
    v25 = sub_221BCE1B8();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_1_12();
  v28 = *(v27 + 24);
  v29 = OUTLINED_FUNCTION_0_12();
  v31 = v30(v29);
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v33 = *(v32 + 24);
  v34 = OUTLINED_FUNCTION_0_12();
  v36 = v35(v34);
  sub_2219B5260(v31, v36);
  v38 = v37;

  return v38 & 1;
}

void sub_2219B5260(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v52 = MEMORY[0x277D84F90];
    sub_2219A2FD4(0, v3, 0);
    v4 = v52;
    v6 = (a1 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      v11 = *(v52 + 16);
      v10 = *(v52 + 24);

      v12 = v9;
      if (v11 >= v10 >> 1)
      {
        sub_2219A2FD4((v10 > 1), v11 + 1, 1);
      }

      v6 += 5;
      *(v52 + 16) = v11 + 1;
      v13 = (v52 + 24 * v11);
      v13[4] = v8;
      v13[5] = v7;
      v13[6] = v9;
      --v3;
    }

    while (v3);
    v2 = a2;
  }

  v14 = sub_22199F118(v4);
  v15 = v14;
  v16 = *(v2 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v50 = v14;
    v53 = MEMORY[0x277D84F90];
    sub_2219A2FD4(0, v16, 0);
    v17 = v53;
    v18 = (v2 + 48);
    do
    {
      v20 = *(v18 - 2);
      v19 = *(v18 - 1);
      v21 = *v18;
      v22 = *(v53 + 16);
      v23 = *(v53 + 24);

      v24 = v21;
      if (v22 >= v23 >> 1)
      {
        sub_2219A2FD4((v23 > 1), v22 + 1, 1);
      }

      v18 += 5;
      *(v53 + 16) = v22 + 1;
      v25 = (v53 + 24 * v22);
      v25[4] = v20;
      v25[5] = v19;
      v25[6] = v21;
      --v16;
    }

    while (v16);
    v15 = v50;
  }

  v26 = sub_22199F118(v17);
  v27 = v26;
  if (*(v15 + 16) != *(v26 + 16))
  {

    return;
  }

  v28 = 0;
  v29 = v15 + 64;
  v30 = 1 << *(v15 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v15 + 64);
  v33 = (v30 + 63) >> 6;
  v48 = v26;
  do
  {
    while (1)
    {
      if (!v32)
      {
        while (1)
        {
          v34 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v34 >= v33)
          {

            return;
          }

          v32 = *(v29 + 8 * v34);
          ++v28;
          if (v32)
          {
            v28 = v34;
            goto LABEL_22;
          }
        }

        __break(1u);
        return;
      }

LABEL_22:
      v35 = __clz(__rbit64(v32)) | (v28 << 6);
      v36 = *(*(v15 + 56) + 8 * v35);
      if (!*(v27 + 16))
      {
        v47 = v36;
LABEL_34:

        return;
      }

      v37 = v15;
      v38 = (*(v15 + 48) + 16 * v35);
      v39 = *v38;
      v40 = v38[1];
      v51 = v36;

      v41 = sub_221B9E9B8(v39, v40);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        v47 = v51;
        goto LABEL_34;
      }

      v32 &= v32 - 1;
      v44 = *(*(v27 + 56) + 8 * v41);
      if (!v44)
      {
        break;
      }

      v15 = v37;
      if (v36)
      {
        sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
        v45 = v44;
        v46 = sub_221BCDC58();

        v27 = v48;
        if (v46)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    v15 = v37;
    v27 = v48;
  }

  while (!v36);

LABEL_35:
}

void sub_2219B55C4(id a1@<X1>, uint64_t *a2@<X0>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v42 = a2[3];
  v43 = a2[2];
  v7 = [a1 identifier];
  v8 = sub_221BCD388();
  v39 = v9;
  v40 = v8;

  v10 = sub_2219B6920(a1);
  v37 = v11;
  v38 = v10;
  v36 = [a1 openAppWhenRun];
  v35 = [a1 outputFlags];
  v34 = [a1 outputType];
  v41 = a1;
  v12 = [a1 parameters];
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v13 = sub_221BCD668();

  v14 = sub_2219A69A0(v13);
  v44 = v5;
  if (!v14)
  {

    v17 = MEMORY[0x277D84F90];
LABEL_12:
    v30 = [v41 systemProtocols];
    sub_2219A1D20(0, &qword_27CFB7D70, 0x277D23938);
    v31 = sub_221BCD668();

    *a3 = v6;
    *(a3 + 8) = v44;
    *(a3 + 16) = v43;
    *(a3 + 24) = v42;
    *(a3 + 32) = v40;
    *(a3 + 40) = v39;
    *(a3 + 48) = v17;
    *(a3 + 56) = v38;
    *(a3 + 64) = v37;
    *(a3 + 72) = v36;
    *(a3 + 80) = v35;
    *(a3 + 88) = v34;
    *(a3 + 96) = v31;
    return;
  }

  v15 = v14;
  v46 = MEMORY[0x277D84F90];
  sub_2219A2FF4(0, v14 & ~(v14 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v32 = v6;
    v33 = a3;
    v16 = 0;
    v17 = v46;
    v45 = v13 & 0xC000000000000001;
    v18 = v13;
    v19 = v15;
    do
    {
      if (v45)
      {
        v20 = MEMORY[0x223DA3BF0](v16, v13);
      }

      else
      {
        v20 = *(v13 + 8 * v16 + 32);
      }

      v21 = v20;
      v22 = [v20 identifier];
      v23 = sub_221BCD388();
      v25 = v24;

      v26 = [v21 value];
      v28 = *(v46 + 16);
      v27 = *(v46 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2219A2FF4((v27 > 1), v28 + 1, 1);
      }

      ++v16;
      *(v46 + 16) = v28 + 1;
      v29 = (v46 + 40 * v28);
      v29[4] = v23;
      v29[5] = v25;
      v29[7] = 0;
      v29[8] = 0;
      v29[6] = v26;
      v13 = v18;
    }

    while (v19 != v16);

    v6 = v32;
    a3 = v33;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_2219B58B8@<X0>(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = [a1 identifier];
  v10 = sub_221BCD388();
  v36 = v11;

  v12 = [a1 parameters];
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v13 = sub_221BCD668();

  v14 = sub_2219A69A0(v13);
  v37 = v10;
  if (!v14)
  {

    v18 = MEMORY[0x277D84F90];
LABEL_12:
    *a3 = v5;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
    a3[4] = v37;
    a3[5] = v36;
    a3[6] = v18;
    return result;
  }

  v15 = v14;
  v40 = MEMORY[0x277D84F90];
  result = sub_2219A2FF4(0, v14 & ~(v14 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v31 = v8;
    v32 = v7;
    v33 = v6;
    v34 = v5;
    v35 = a3;
    v17 = 0;
    v18 = v40;
    v38 = v13 & 0xC000000000000001;
    v39 = v15;
    v19 = a1;
    v20 = v13;
    do
    {
      if (v38)
      {
        v21 = MEMORY[0x223DA3BF0](v17, v13);
      }

      else
      {
        v21 = *(v13 + 8 * v17 + 32);
      }

      v22 = v21;
      v23 = [v21 identifier];
      v24 = sub_221BCD388();
      v26 = v25;

      v27 = [v22 value];
      v29 = *(v40 + 16);
      v28 = *(v40 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2219A2FF4((v28 > 1), v29 + 1, 1);
      }

      ++v17;
      *(v40 + 16) = v29 + 1;
      v30 = (v40 + 40 * v29);
      v30[4] = v24;
      v30[5] = v26;
      v30[7] = 0;
      v30[8] = 0;
      v30[6] = v27;
      v13 = v20;
    }

    while (v39 != v17);

    v5 = v34;
    a3 = v35;
    v7 = v32;
    v6 = v33;
    v8 = v31;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2219B5AFC(char *a1)
{
  v2 = *a1;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_221BCDE68();
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BEC750);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = OUTLINED_FUNCTION_1_0();
  __swift_project_boxed_opaque_existential_0(v5, v6);
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_0_12();
  v9(v8);
  sub_2219982C4(v23[2], v24);
  MEMORY[0x223DA31F0](0, 0xE000000000000000);

  MEMORY[0x223DA31F0](0x3A6E6F6974636120, 0xE900000000000020);
  OUTLINED_FUNCTION_1_12();
  v11 = *(v10 + 16);
  v12 = OUTLINED_FUNCTION_0_12();
  v14 = v13(v12);
  MEMORY[0x223DA31F0](v14);

  MEMORY[0x223DA31F0](0x74656D6172617020, 0xED0000203A737265);
  OUTLINED_FUNCTION_1_12();
  v16 = *(v15 + 24);
  v17 = OUTLINED_FUNCTION_0_12();
  v19 = v18(v17);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7750, &unk_221BD0CC0);
  v25 = sub_2219A19D8();
  v23[0] = v19;
  v20 = __swift_project_boxed_opaque_existential_0(v23, v24);
  sub_2219B6438(v2, *v20);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v21 = OUTLINED_FUNCTION_4();
  MEMORY[0x223DA31F0](v21);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v26;
}

unint64_t sub_2219B5CD0(uint64_t a1)
{
  result = sub_2219B5CF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2219B5CF8()
{
  result = qword_27CFB7DD8;
  if (!qword_27CFB7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7DD8);
  }

  return result;
}

uint64_t sub_2219B5D4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2219B5D8C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2219B5DEC(uint64_t a1, int a2)
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

uint64_t sub_2219B5E2C(uint64_t result, int a2, int a3)
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

uint64_t sub_2219B5E94(uint64_t a1, int a2)
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

uint64_t sub_2219B5ED4(uint64_t result, int a2, int a3)
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

uint64_t sub_2219B5F30@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;

  return sub_221998178(v4, v5);
}

uint64_t sub_2219B5F78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2219B5FB0(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

char *sub_2219B5FDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = &v53 - v3;
  v64 = sub_221BCC418();
  v4 = OUTLINED_FUNCTION_0_2(v64);
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  v62 = *(v0 + 72);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v16 = *(v0 + 96);
  v17 = *(v11 + 16);
  v61 = v11;
  if (v17)
  {
    v58 = v12;
    v60 = v9;
    v65 = MEMORY[0x277D84F90];
    v56 = v14;
    v18 = v14;

    v59 = v10;

    v57 = v13;

    v19 = v15;
    v20 = v15;
    sub_221BCDF28();
    v21 = (v11 + 48);
    do
    {
      v22 = *(v21 - 2);
      v23 = *(v21 - 1);
      v24 = *v21;
      v21 += 5;
      v25 = objc_allocWithZone(MEMORY[0x277D238D8]);
      v26 = v24;

      sub_2219A62D8(v22, v23, v24);
      sub_221BCDEF8();
      v27 = *(v65 + 16);
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      --v17;
    }

    while (v17);
    v10 = v59;
    v9 = v60;
    v13 = v57;
    v12 = v58;
    v28 = v56;
  }

  else
  {
    v28 = v14;
    v29 = v14;

    v30 = v15;
    v19 = v15;
  }

  v31 = objc_allocWithZone(MEMORY[0x277D23720]);
  v32 = sub_2219B6770(v9, v10, v12, v13, v62, v19, v28);
  v33 = (v61 + 64);
  v34 = *(v61 + 16) + 1;
  do
  {
    if (!--v34)
    {
      v42 = v63;
      v43 = v64;
      goto LABEL_20;
    }

    v36 = *(v33 - 4);
    v35 = *(v33 - 3);
    v37 = *(v33 - 2);
    v38 = *(v33 - 1);
    v39 = *v33;
    if (v36 == 7107189 && v35 == 0xE300000000000000)
    {
      v46 = v37;

      v35 = 0xE300000000000000;
      v42 = v63;
      v43 = v64;
      if (v37)
      {
        goto LABEL_15;
      }

LABEL_19:
      sub_2219B2E48(v36, v35, 0);
LABEL_20:
      __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
LABEL_21:
      sub_2219A6860(v42, &qword_27CFB7DD0, &unk_221BD19F0);
      return v32;
    }

    v33 += 5;
  }

  while ((sub_221BCE1B8() & 1) == 0);
  v41 = v37;

  v42 = v63;
  v43 = v64;
  if (!v35)
  {
    goto LABEL_20;
  }

  if (!v37)
  {
    goto LABEL_19;
  }

LABEL_15:
  v44 = [v37 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v45 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v42, v45 ^ 1u, 1, v43);
  if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
  {
    OUTLINED_FUNCTION_4_6();
    goto LABEL_21;
  }

  v48 = v55;
  v49 = *(v55 + 32);
  v63 = v32;
  v50 = v54;
  v49(v54, v42, v43);
  v51 = sub_221BCC388();
  v52 = v63;
  v64 = [v63 actionWithURL_];

  OUTLINED_FUNCTION_4_6();
  (*(v48 + 8))(v50, v43);
  return v64;
}

uint64_t sub_2219B6438(char a1, uint64_t a2)
{
  v44 = 91;
  v45 = 0xE100000000000000;
  v2 = *(a2 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v43 = MEMORY[0x277D84F90];
    sub_2219A2FB4(0, v2, 0);
    v3 = v43;
    v40 = sub_2219A1A5C();
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v42[3] = &type metadata for NamedProperty;
      v42[4] = v40;
      v11 = swift_allocObject();
      v42[0] = v11;
      v11[2] = v6;
      v11[3] = v7;
      v11[4] = v8;
      v11[5] = v9;
      v11[6] = v10;
      v12 = __swift_project_boxed_opaque_existential_0(v42, &type metadata for NamedProperty);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      if (a1)
      {
        if (!v15)
        {
          goto LABEL_8;
        }

        v16 = v8;

        v39 = v16;

        v17 = OUTLINED_FUNCTION_16();
        v19 = [v17 v18];
        v20 = [v19 description];

        v21 = sub_221BCD388();
        v22 = v13;
        v24 = v23;

        MEMORY[0x223DA31F0](v21, v24);
        MEMORY[0x223DA31F0](41, 0xE100000000000000);
        v13 = v22;
        v25 = v39;

        v26 = 0x20656D6F7328;
        v27 = 0xE600000000000000;
      }

      else
      {
        if (!v15)
        {
LABEL_8:
          v33 = v8;
          swift_bridgeObjectRetain_n();
          v25 = v33;
          v27 = 0xE300000000000000;
          v26 = 7104878;
          goto LABEL_9;
        }

        v28 = v8;

        v25 = v28;

        v29 = OUTLINED_FUNCTION_16();
        v31 = [v29 v30];
        v26 = sub_221BCD388();
        v27 = v32;
      }

LABEL_9:

      MEMORY[0x223DA31F0](8250, 0xE200000000000000);
      MEMORY[0x223DA31F0](v26, v27);

      __swift_destroy_boxed_opaque_existential_0(v42);

      v43 = v3;
      v35 = *(v3 + 16);
      v34 = *(v3 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_2219A2FB4((v34 > 1), v35 + 1, 1);
        v3 = v43;
      }

      v5 += 5;
      *(v3 + 16) = v35 + 1;
      v36 = v3 + 16 * v35;
      *(v36 + 32) = v13;
      *(v36 + 40) = v14;
      --v2;
    }

    while (v2);
  }

  v42[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
  sub_2219998AC();
  sub_221BCD328();

  v37 = OUTLINED_FUNCTION_1_0();
  MEMORY[0x223DA31F0](v37);

  MEMORY[0x223DA31F0](93, 0xE100000000000000);
  return v44;
}

id sub_2219B6770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v8 = v7;
  v13 = sub_221BCD358();

  if (a4)
  {
    v14 = sub_221BCD358();
  }

  else
  {
    v14 = 0;
  }

  sub_2219A1D20(0, &qword_27CFB7D70, 0x277D23938);
  v15 = sub_221BCD658();

  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v16 = sub_221BCD658();

  v17 = [v8 initWithIdentifier:v13 mangledTypeName:v14 openAppWhenRun:a5 & 1 outputFlags:a6 outputType:a7 systemProtocols:v15 parameters:v16];

  return v17;
}

uint64_t sub_2219B68B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2219B6920(void *a1)
{
  v1 = [a1 mangledTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD388();

  return v3;
}

void OUTLINED_FUNCTION_4_6()
{

  sub_2219B2E48(v2, v1, v0);
}

uint64_t AppIntentSuccessResult.origin.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t AppIntentSuccessResult.output.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for IntentOutput();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t AppIntentSuccessResult.init(output:context:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_22198B358(a2, a3);
  OUTLINED_FUNCTION_0_13();
  v5 = *(type metadata accessor for AppIntentSuccessResult() + 36);
  OUTLINED_FUNCTION_0_13();
  v6 = type metadata accessor for IntentOutput();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a1, v6);
}

uint64_t AppIntentSuccessResult.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  v11 = type metadata accessor for IntentOutput();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  OUTLINED_FUNCTION_0_13();
  v16 = type metadata accessor for IntentOutput();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v22 - v18;
  v20 = type metadata accessor for AppIntentSuccessResult();
  (*(v12 + 16))(v15, a1 + *(v20 + 36), v11);
  sub_2219A1B08(a1, v23);
  IntentOutput.init<A>(_:context:)(v15, v23, a2, a3, a4, a5, v19);
  sub_2219A1B08(a1, v23);
  (*(*(v20 - 8) + 8))(a1, v20);
  return AppIntentSuccessResult.init(output:context:)(v19, v23, v22);
}

uint64_t sub_2219B6D34(char *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getMetatypeMetadata();
  v12 = sub_221BCD3D8();
  v13 = v4;
  MEMORY[0x223DA31F0](0x3A74757074756F28, 0xE900000000000020);
  v5 = *(a2 + 36);
  v11 = v3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for IntentOutput();
  v9 = sub_2219BA4FC(&v11, v8);
  MEMORY[0x223DA31F0](v9);

  return v12;
}

uint64_t sub_2219B6DE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_221A1E060(a1, WitnessTable);
}

uint64_t sub_2219B6E3C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2219B6E80(uint64_t a1)
{
  result = sub_2219B74B8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    result = type metadata accessor for IntentOutput();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2219B6F08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  if (v6)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v13 = v10 + *(*(v4 - 8) + 64) - (((-217 - v9) | v9) + ((-41 - v9) | v11));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    if (v17 < 2)
    {
LABEL_29:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v9 + ((((((((((a1 + v11 + 40) & ~v11) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *(a1 + 3);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_29;
  }

LABEL_21:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_2219B710C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  v13 = *(v8 + 80);
  v14 = (v13 + 216) & ~v13;
  v15 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v15;
  }

  v16 = v14 + v15;
  v17 = v14 + v15 + ((v13 + 40) & ~(v13 | 7));
  v18 = 8 * v17;
  v19 = a3 >= v12;
  v20 = a3 - v12;
  if (v20 != 0 && v19)
  {
    if (v17 <= 3)
    {
      v21 = ((v20 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v21))
      {
        v6 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v6 = v22;
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

  if (v12 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_73:
        __break(1u);
        break;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if ((v10 & 0x80000000) != 0)
          {
            v26 = (&a1[(v13 | 7) + 40] & ~(v13 | 7));
            if (v11 >= a2)
            {
              v26 = ((v13 + 40 + ((((((((v26 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
              if (v10 >= a2)
              {
                v32 = a2 + 1;

                __swift_storeEnumTagSinglePayload(v26, v32, v9, v7);
              }

              else
              {
                if (v15 <= 3)
                {
                  v30 = ~(-1 << (8 * v15));
                }

                else
                {
                  v30 = -1;
                }

                if (v15)
                {
                  v28 = v30 & (~v10 + a2);
                  if (v15 <= 3)
                  {
                    v31 = v15;
                  }

                  else
                  {
                    v31 = 4;
                  }

                  bzero(v26, v15);
                  switch(v31)
                  {
                    case 2:
LABEL_72:
                      *v26 = v28;
                      break;
                    case 3:
LABEL_70:
                      *v26 = v28;
                      v26[2] = BYTE2(v28);
                      break;
                    case 4:
LABEL_71:
                      *v26 = v28;
                      break;
                    default:
LABEL_59:
                      *v26 = v28;
                      break;
                  }
                }
              }
            }

            else
            {
              if (v16 <= 3)
              {
                v27 = ~(-1 << (8 * v16));
              }

              else
              {
                v27 = -1;
              }

              if (v16)
              {
                v28 = v27 & (~v11 + a2);
                if (v16 <= 3)
                {
                  v29 = v16;
                }

                else
                {
                  v29 = 4;
                }

                bzero(v26, v16);
                switch(v29)
                {
                  case 2:
                    goto LABEL_72;
                  case 3:
                    goto LABEL_70;
                  case 4:
                    goto LABEL_71;
                  default:
                    goto LABEL_59;
                }
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 8) = 0u;
            *(a1 + 24) = 0u;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 3) = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v12 + a2;
    if (v17 < 4)
    {
      v24 = (v23 >> v18) + 1;
      if (v17)
      {
        v25 = v23 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v17 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v23;
      v24 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v17] = v24;
        break;
      case 2:
        *&a1[v17] = v24;
        break;
      case 3:
        goto LABEL_73;
      case 4:
        *&a1[v17] = v24;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_2219B74B8()
{
  result = qword_280FA8DD0;
  if (!qword_280FA8DD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280FA8DD0);
  }

  return result;
}

uint64_t sub_2219B7574(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2219B75B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219B7610()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2219B7648()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void sub_2219B7680(void *a1@<X0>, unint64_t a2@<X8>)
{
  v4 = [a1 acceptLabel];
  v5 = off_278482000;
  v58 = a2;
  if (v4)
  {
    v6 = v4;
    v7 = OUTLINED_FUNCTION_2_9();
    v8 = OUTLINED_FUNCTION_1_13(v7);

    v9 = sub_221BCD388();
    v56 = v10;
    v57 = v9;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v11 = [a1 acceptAlternatives];
  sub_2219B7A68();
  v12 = sub_221BCD668();

  v13 = sub_2219A69A0(v12);
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x223DA3BF0](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v16 = *(v12 + 8 * v14 + 32);
    }

    v17 = v16;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v18 = OUTLINED_FUNCTION_2_9();
    v19 = [v17 v5[510]];

    v20 = sub_221BCD388();
    v22 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = *(v15 + 16);
      sub_2219B3AFC();
      v15 = v26;
    }

    a2 = *(v15 + 16);
    v23 = *(v15 + 24);
    if (a2 >= v23 >> 1)
    {
      OUTLINED_FUNCTION_0_14(v23);
      sub_2219B3AFC();
      v15 = v27;
    }

    *(v15 + 16) = a2 + 1;
    v24 = v15 + 16 * a2;
    *(v24 + 32) = v20;
    *(v24 + 40) = v22;
    ++v14;
    v5 = off_278482000;
  }

  v28 = [a1 denyLabel];
  if (v28)
  {
    v29 = v28;
    v30 = OUTLINED_FUNCTION_2_9();
    v31 = OUTLINED_FUNCTION_1_13(v30);

    v32 = sub_221BCD388();
    v52 = v33;
    v54 = v32;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v34 = [a1 denyAlternatives];
  v35 = sub_221BCD668();

  v36 = sub_2219A69A0(v35);
  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  while (v36 != v37)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x223DA3BF0](v37, v35);
    }

    else
    {
      if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v39 = *(v35 + 8 * v37 + 32);
    }

    v40 = v39;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_34;
    }

    v41 = OUTLINED_FUNCTION_2_9();
    v42 = [v40 localizedStringForLocaleIdentifier_];

    v43 = sub_221BCD388();
    v45 = v44;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = *(v38 + 16);
      sub_2219B3AFC();
      v38 = v50;
    }

    v47 = *(v38 + 16);
    v46 = *(v38 + 24);
    if (v47 >= v46 >> 1)
    {
      OUTLINED_FUNCTION_0_14(v46);
      sub_2219B3AFC();
      v38 = v51;
    }

    *(v38 + 16) = v47 + 1;
    v48 = v38 + 16 * v47;
    *(v48 + 32) = v43;
    *(v48 + 40) = v45;
    ++v37;
  }

  *v58 = v57;
  v58[1] = v56;
  v58[2] = v15;
  v58[3] = v55;
  v58[4] = v53;
  v58[5] = v38;
}

unint64_t sub_2219B7A68()
{
  result = qword_27CFB7DE0;
  if (!qword_27CFB7DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB7DE0);
  }

  return result;
}

id OUTLINED_FUNCTION_1_13(uint64_t a1)
{

  return [v1 (v2 + 4070)];
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return sub_221BCD358();
}

uint64_t sub_2219B7AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = *(a3 + 8);
  *(v5 + 96) = *a3;
  *(v5 + 104) = v6;
  *(v5 + 112) = *(a3 + 16);
  return OUTLINED_FUNCTION_6_1();
}

char *sub_2219B7B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_39();
  v27 = [*(v24 + 72) confirmationActionName];
  if (v27)
  {
    v22 = *(v24 + 80);
    OUTLINED_FUNCTION_36_0(v27);
    OUTLINED_FUNCTION_49();
    v28 = swift_allocObject();

    OUTLINED_FUNCTION_31_0();
    v29 = &off_283513A88;
  }

  else
  {
    v30 = *(v24 + 88);

    v28 = 0;
    OUTLINED_FUNCTION_27_1();
  }

  v31 = [OUTLINED_FUNCTION_30_0(v29) dialog];
  *(v24 + 128) = v31;
  if (v31)
  {
    v32 = swift_task_alloc();
    *(v24 + 136) = v32;
    *v32 = v24;
    v32[1] = sub_2219B8100;
    OUTLINED_FUNCTION_26_1();

    return sub_22199B0DC();
  }

  v35 = OUTLINED_FUNCTION_22_1();
  v37 = [v36 nextAction];
  if (v37)
  {
    v22 = *(v24 + 112);
    v28 = *(v24 + 120);
    v38 = *(v24 + 104);
    v39 = v37;
    OUTLINED_FUNCTION_52();
    v40 = OUTLINED_FUNCTION_0_0();
    if (OUTLINED_FUNCTION_63(v40, v41))
    {
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_21_1();
      swift_allocObject();
      OUTLINED_FUNCTION_6_4();
      sub_2219B55C4(v25, v42, v43);

      v44 = &type metadata for OpenURLIntentSpecification;
    }

    else
    {
      OUTLINED_FUNCTION_20_0();
      v45 = swift_allocObject();
      v46 = [v25 identifier];
      v47 = sub_221BCD388();
      v26 = v48;

      v28 = OUTLINED_FUNCTION_51();
      sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
      OUTLINED_FUNCTION_25_1();
      v49 = sub_221BCD668();

      v50 = sub_2219A69A0(v49);
      if (v50)
      {
        v22 = v50;
        a10 = v26;
        a11 = v47;
        a12 = v25;
        a13 = v45;
        result = OUTLINED_FUNCTION_3_8(v50);
        a15 = v22;
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_23_1();
        do
        {
          if (a14)
          {
            OUTLINED_FUNCTION_56();
          }

          else
          {
            v51 = OUTLINED_FUNCTION_55();
          }

          v52 = v51;
          v45 = [v51 identifier];
          sub_221BCD388();
          OUTLINED_FUNCTION_40();
          [v52 value];

          OUTLINED_FUNCTION_10_2();
          if (v54)
          {
            OUTLINED_FUNCTION_2_10(v53);
            v22 = a16;
          }

          OUTLINED_FUNCTION_0_15();
          OUTLINED_FUNCTION_45();
        }

        while (!v55);
        v28 = v25;

        OUTLINED_FUNCTION_42();
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_15_1();
      v45[6] = v47;
      v45[7] = v26;
      v45[8] = v22;
      v44 = &type metadata for AnyAppIntentSpecification;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_1();
  }

  OUTLINED_FUNCTION_8_3(v44);
  *(v22 + 120) = [v28 shouldShowPrompt];
  v56 = [v28 showOutputAction];
  if (!v56)
  {
    v22 = *(v24 + 112);
    v28 = *(v24 + 120);
    v61 = *(v24 + 104);

    OUTLINED_FUNCTION_4_7();
    goto LABEL_41;
  }

  v57 = v56;
  if ((OUTLINED_FUNCTION_58() & 1) == 0)
  {
    OUTLINED_FUNCTION_20_0();
    v62 = swift_allocObject();
    v63 = [v22 identifier];
    v64 = sub_221BCD388();
    v66 = v65;

    v28 = OUTLINED_FUNCTION_50();
    sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
    OUTLINED_FUNCTION_25_1();
    v67 = sub_221BCD668();

    v68 = sub_2219A69A0(v67);
    if (!v68)
    {

      v22 = MEMORY[0x277D84F90];
LABEL_40:
      OUTLINED_FUNCTION_15_1();
      v62[6] = v64;
      v62[7] = v66;
      v62[8] = v22;
      v60 = &off_283513928;
      goto LABEL_41;
    }

    v69 = v68;
    a10 = v24;
    a11 = v66;
    a12 = v64;
    a13 = v22;
    a14 = v62;
    result = OUTLINED_FUNCTION_3_8(v68);
    if ((v69 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      v24 = v67;
      v64 = v69;
      do
      {
        if (a15)
        {
          OUTLINED_FUNCTION_57();
        }

        else
        {
          v70 = OUTLINED_FUNCTION_53();
        }

        v71 = v70;
        v62 = [v70 identifier];
        sub_221BCD388();
        OUTLINED_FUNCTION_40();
        v72 = [v71 value];

        OUTLINED_FUNCTION_10_2();
        if (v54)
        {
          OUTLINED_FUNCTION_2_10(v73);
          v22 = a16;
        }

        OUTLINED_FUNCTION_0_15();
      }

      while (v69 != v26);
      v28 = a13;

      OUTLINED_FUNCTION_44();
      goto LABEL_40;
    }

LABEL_48:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_21_1();
  swift_allocObject();
  OUTLINED_FUNCTION_6_4();
  sub_2219B55C4(v22, v58, v59);

  v60 = &off_2835138F8;
LABEL_41:
  OUTLINED_FUNCTION_9_3(v60);
  *(v22 + 168) = [v28 showOutputActionOptions];
  v74 = [v28 viewSnippet];
  if (v74)
  {
    v74 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v75 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v75 = 0;
  }

  v77 = *(v24 + 64);
  v76 = *(v24 + 72);
  OUTLINED_FUNCTION_41(v74, v75);
  v78 = [v76 value];

  *(v77 + 216) = v78;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_26_1();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2219B8100()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *(v4 + 128);
  v7 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  v11[18] = v9;
  v11[19] = v10;
  v11[20] = v12;

  v13 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2219B8730(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  v7 = *a3;
  v8 = a3[1];
  *(v6 + 96) = a6;
  *(v6 + 104) = v7;
  *(v6 + 112) = v8;
  *(v6 + 120) = *(a3 + 1);
  return OUTLINED_FUNCTION_6_1();
}

char *sub_2219B875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_39();
  v27 = [*(v24 + 9) confirmationActionName];
  if (v27)
  {
    v22 = *(v24 + 10);
    OUTLINED_FUNCTION_36_0(v27);
    OUTLINED_FUNCTION_49();
    v28 = swift_allocObject();

    OUTLINED_FUNCTION_31_0();
    v29 = &off_283513A88;
  }

  else
  {
    v30 = *(v24 + 11);

    v28 = 0;
    OUTLINED_FUNCTION_27_1();
  }

  v31 = [OUTLINED_FUNCTION_30_0(v29) dialog];
  *(v24 + 17) = v31;
  if (v31)
  {
    v32 = swift_task_alloc();
    *(v24 + 18) = v32;
    *v32 = v24;
    v32[1] = sub_2219B8D54;
    OUTLINED_FUNCTION_26_1();

    return sub_22199B0DC();
  }

  v35 = OUTLINED_FUNCTION_22_1();
  v37 = [v36 nextAction];
  v38 = 0x1FB06B000;
  if (v37)
  {
    v22 = *(v24 + 15);
    v28 = *(v24 + 16);
    v23 = *(v24 + 14);
    v39 = v37;
    OUTLINED_FUNCTION_52();
    v40 = OUTLINED_FUNCTION_0_0();
    if (OUTLINED_FUNCTION_63(v40, v41))
    {
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_21_1();
      swift_allocObject();
      OUTLINED_FUNCTION_6_4();
      sub_2219B55C4(v25, v42, v43);

      v44 = &type metadata for OpenURLIntentSpecification;
    }

    else
    {
      OUTLINED_FUNCTION_20_0();
      v23 = swift_allocObject();
      v45 = [v25 identifier];
      v46 = sub_221BCD388();
      v26 = v47;

      v28 = OUTLINED_FUNCTION_51();
      sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
      OUTLINED_FUNCTION_25_1();
      v48 = sub_221BCD668();

      v49 = sub_2219A69A0(v48);
      if (v49)
      {
        v22 = v49;
        a10 = v26;
        a11 = v46;
        a12 = v25;
        a13 = v23;
        result = OUTLINED_FUNCTION_3_8(v49);
        a15 = v22;
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_23_1();
        do
        {
          if (a14)
          {
            OUTLINED_FUNCTION_56();
          }

          else
          {
            v50 = OUTLINED_FUNCTION_55();
          }

          v51 = v50;
          v23 = [v50 identifier];
          sub_221BCD388();
          OUTLINED_FUNCTION_40();
          v38 = [v51 value];

          OUTLINED_FUNCTION_10_2();
          if (v53)
          {
            OUTLINED_FUNCTION_2_10(v52);
            v22 = a16;
          }

          OUTLINED_FUNCTION_0_15();
          OUTLINED_FUNCTION_45();
        }

        while (!v54);
        v28 = v25;

        OUTLINED_FUNCTION_42();
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_19_1();
      v23[6] = v46;
      v23[7] = v26;
      v23[8] = v22;
      v44 = &type metadata for AnyAppIntentSpecification;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_1();
  }

  OUTLINED_FUNCTION_8_3(v44);
  *(v22 + 120) = [v28 shouldShowPrompt];
  v55 = [v28 showOutputAction];
  if (!v55)
  {
    v22 = *(v24 + 15);
    v28 = *(v24 + 16);
    v60 = *(v24 + 14);

    OUTLINED_FUNCTION_4_7();
    goto LABEL_41;
  }

  v56 = v55;
  if ((OUTLINED_FUNCTION_58() & 1) == 0)
  {
    OUTLINED_FUNCTION_20_0();
    v23 = swift_allocObject();
    v61 = [v22 identifier];
    v62 = sub_221BCD388();
    v64 = v63;

    v28 = OUTLINED_FUNCTION_50();
    sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
    OUTLINED_FUNCTION_25_1();
    v38 = sub_221BCD668();

    v65 = sub_2219A69A0(v38);
    if (!v65)
    {

      v22 = MEMORY[0x277D84F90];
LABEL_40:
      OUTLINED_FUNCTION_19_1();
      v23[6] = v62;
      v23[7] = v64;
      v23[8] = v22;
      v59 = &off_283513928;
      goto LABEL_41;
    }

    v66 = v65;
    a10 = v24;
    a11 = v64;
    a12 = v62;
    a13 = v22;
    a14 = v23;
    result = OUTLINED_FUNCTION_3_8(v65);
    if ((v66 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      v24 = v38;
      v62 = v66;
      do
      {
        if (a15)
        {
          OUTLINED_FUNCTION_57();
        }

        else
        {
          v67 = OUTLINED_FUNCTION_53();
        }

        v68 = v67;
        v23 = [v67 identifier];
        sub_221BCD388();
        OUTLINED_FUNCTION_40();
        v69 = [v68 value];

        OUTLINED_FUNCTION_10_2();
        if (v53)
        {
          OUTLINED_FUNCTION_2_10(v70);
          v22 = a16;
        }

        OUTLINED_FUNCTION_0_15();
        v38 = v24;
      }

      while (v66 != v26);
      v28 = a13;

      OUTLINED_FUNCTION_44();
      goto LABEL_40;
    }

LABEL_48:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_21_1();
  swift_allocObject();
  OUTLINED_FUNCTION_6_4();
  sub_2219B55C4(v22, v57, v58);

  v59 = &off_2835138F8;
LABEL_41:
  OUTLINED_FUNCTION_9_3(v59);
  *(v22 + 168) = [v28 showOutputActionOptions];
  v71 = [v28 viewSnippet];
  if (v71)
  {
    v71 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v72 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v72 = 0;
  }

  v73 = *(v24 + 12);
  OUTLINED_FUNCTION_32_0(v71, v72);
  v74 = [v23 value];
  v75 = sub_2219C5E20(v74, v73);

  v38[27] = v75;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_26_1();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2219B8D54()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 136);
  v7 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  v11[19] = v9;
  v11[20] = v10;
  v11[21] = v12;

  v13 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t IntentOutput<>.init(_:origin:localeIdentifier:valueTransform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  v8 = *(a3 + 8);
  *(v7 + 112) = *a3;
  *(v7 + 120) = v8;
  *(v7 + 128) = *(a3 + 16);
  return OUTLINED_FUNCTION_6_1();
}

char *sub_2219B93C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_39();
  v27 = [*(v24 + 72) confirmationActionName];
  if (v27)
  {
    v22 = *(v24 + 80);
    OUTLINED_FUNCTION_36_0(v27);
    OUTLINED_FUNCTION_49();
    v28 = swift_allocObject();

    OUTLINED_FUNCTION_31_0();
    v29 = &off_283513A88;
  }

  else
  {
    v30 = *(v24 + 88);

    v28 = 0;
    OUTLINED_FUNCTION_27_1();
  }

  v31 = [OUTLINED_FUNCTION_30_0(v29) dialog];
  *(v24 + 144) = v31;
  if (v31)
  {
    v32 = swift_task_alloc();
    *(v24 + 152) = v32;
    *v32 = v24;
    v32[1] = sub_2219B99D0;
    OUTLINED_FUNCTION_26_1();

    return sub_22199B0DC();
  }

  v35 = OUTLINED_FUNCTION_22_1();
  v37 = [v36 nextAction];
  if (v37)
  {
    v22 = *(v24 + 128);
    v28 = *(v24 + 136);
    v38 = *(v24 + 120);
    v39 = v37;
    OUTLINED_FUNCTION_52();
    v40 = OUTLINED_FUNCTION_0_0();
    if (OUTLINED_FUNCTION_63(v40, v41))
    {
      OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_21_1();
      swift_allocObject();
      OUTLINED_FUNCTION_6_4();
      sub_2219B55C4(v25, v42, v43);

      v44 = &type metadata for OpenURLIntentSpecification;
    }

    else
    {
      OUTLINED_FUNCTION_20_0();
      v45 = swift_allocObject();
      v46 = [v25 identifier];
      v47 = sub_221BCD388();
      v26 = v48;

      v28 = OUTLINED_FUNCTION_51();
      sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
      OUTLINED_FUNCTION_25_1();
      v49 = sub_221BCD668();

      v50 = sub_2219A69A0(v49);
      if (v50)
      {
        v22 = v50;
        a10 = v26;
        a11 = v47;
        a12 = v25;
        a13 = v45;
        result = OUTLINED_FUNCTION_3_8(v50);
        a15 = v22;
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_23_1();
        do
        {
          if (a14)
          {
            OUTLINED_FUNCTION_56();
          }

          else
          {
            v51 = OUTLINED_FUNCTION_55();
          }

          v52 = v51;
          v45 = [v51 identifier];
          sub_221BCD388();
          OUTLINED_FUNCTION_40();
          v53 = [v52 value];

          OUTLINED_FUNCTION_10_2();
          if (v55)
          {
            OUTLINED_FUNCTION_2_10(v54);
            v22 = a16;
          }

          OUTLINED_FUNCTION_0_15();
          OUTLINED_FUNCTION_45();
        }

        while (!v56);
        v28 = v25;

        OUTLINED_FUNCTION_42();
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_17_1();
      v45[6] = v47;
      v45[7] = v26;
      v45[8] = v22;
      v44 = &type metadata for AnyAppIntentSpecification;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_1();
  }

  OUTLINED_FUNCTION_8_3(v44);
  *(v22 + 120) = [v28 shouldShowPrompt];
  v57 = [v28 showOutputAction];
  if (!v57)
  {
    v22 = *(v24 + 128);
    v28 = *(v24 + 136);
    v62 = *(v24 + 120);

    OUTLINED_FUNCTION_4_7();
    goto LABEL_41;
  }

  v58 = v57;
  if ((OUTLINED_FUNCTION_58() & 1) == 0)
  {
    OUTLINED_FUNCTION_20_0();
    v63 = swift_allocObject();
    v64 = [v22 identifier];
    v65 = sub_221BCD388();
    v67 = v66;

    v28 = OUTLINED_FUNCTION_50();
    sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
    OUTLINED_FUNCTION_25_1();
    v68 = sub_221BCD668();

    v69 = sub_2219A69A0(v68);
    if (!v69)
    {

      v22 = MEMORY[0x277D84F90];
LABEL_40:
      OUTLINED_FUNCTION_17_1();
      v63[6] = v65;
      v63[7] = v67;
      v63[8] = v22;
      v61 = &off_283513928;
      goto LABEL_41;
    }

    v70 = v69;
    a10 = v24;
    a11 = v67;
    a12 = v65;
    a13 = v22;
    a14 = v63;
    result = OUTLINED_FUNCTION_3_8(v69);
    if ((v70 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      v24 = v68;
      v65 = v70;
      do
      {
        if (a15)
        {
          OUTLINED_FUNCTION_57();
        }

        else
        {
          v71 = OUTLINED_FUNCTION_53();
        }

        v72 = v71;
        v63 = [v71 identifier];
        sub_221BCD388();
        OUTLINED_FUNCTION_40();
        v73 = [v72 value];

        OUTLINED_FUNCTION_10_2();
        if (v55)
        {
          OUTLINED_FUNCTION_2_10(v74);
          v22 = a16;
        }

        OUTLINED_FUNCTION_0_15();
      }

      while (v70 != v26);
      v28 = a13;

      OUTLINED_FUNCTION_44();
      goto LABEL_40;
    }

LABEL_48:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_21_1();
  swift_allocObject();
  OUTLINED_FUNCTION_6_4();
  sub_2219B55C4(v22, v59, v60);

  v61 = &off_2835138F8;
LABEL_41:
  OUTLINED_FUNCTION_9_3(v61);
  *(v22 + 168) = [v28 showOutputActionOptions];
  v75 = [v28 viewSnippet];
  v76 = v75;
  if (v75)
  {
    v75 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v77 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v77 = 0;
  }

  v79 = *(v24 + 96);
  v78 = *(v24 + 104);
  v81 = *(v24 + 64);
  v80 = *(v24 + 72);
  v81[22] = v76;
  v81[23] = 0;
  v81[24] = 0;
  v81[25] = v75;
  v81[26] = v77;
  v82 = [v80 value];
  v83 = v79();

  v81[27] = v83;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_26_1();

  return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2219B99D0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *(v4 + 144);
  v7 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  v11[20] = v9;
  v11[21] = v10;
  v11[22] = v12;

  v13 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t IntentOutput.init<A>(_:context:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v58 = a5;
  v57 = a7;
  v12 = sub_221BCDC98();
  OUTLINED_FUNCTION_0_7();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  OUTLINED_FUNCTION_0_7();
  v55 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_221BCDC98();
  OUTLINED_FUNCTION_0_7();
  v53 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v52 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v56 = &v51 - v32;
  __swift_storeEnumTagSinglePayload(&v51 - v32, 1, 1, a3);
  v33 = a6;
  v34 = type metadata accessor for IntentOutput();
  (*(v14 + 16))(v19, a1 + *(v34 + 60), v12);
  if (__swift_getEnumTagSinglePayload(v19, 1, a4) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
    (*(v14 + 8))(v19, v12);
LABEL_6:
    v44 = v56;
    goto LABEL_7;
  }

  v51 = a2;
  (*(v55 + 32))(v25, v19, a4);
  v35 = *(v33 + 16);
  v36 = v35(a4, v33);
  v37 = (*(v58 + 24))(v36, a3);

  if ((v37 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v51);
    v46 = OUTLINED_FUNCTION_48();
    v47(v46);
    goto LABEL_6;
  }

  v38 = v35(a4, v33);
  v39 = v52;
  v40 = v51;
  sub_221B8BC18(v38, a3, v58, v52);

  __swift_destroy_boxed_opaque_existential_0(v40);
  v41 = OUTLINED_FUNCTION_48();
  v42(v41);
  v43 = v53;
  v44 = v56;
  v45 = v54;
  (*(v53 + 8))(v56, v54);
  (*(v43 + 32))(v44, v39, v45);
LABEL_7:
  sub_2219BAF0C(a1, v63, &unk_27CFBB7B0, &unk_221BE4C10);
  sub_2219BAF0C(a1 + 40, v62, &qword_27CFB8320, &unk_221BD1D60);
  sub_2219BAF0C(a1 + 80, v61, &unk_27CFBB7C0, &qword_221BE4C20);
  v48 = *(a1 + 120);
  sub_2219BAF0C(a1 + 128, v60, &unk_27CFBB7C0, &qword_221BE4C20);
  v49 = *(a1 + 168);
  sub_2219BAF0C(a1 + 176, v59, &unk_27CFB93B0, &qword_221BD1D70);
  (*(*(v34 - 8) + 8))(a1, v34);
  return IntentOutput.init(confirmationActionName:dialog:nextAction:shouldShowPrompt:showOutputAction:showOutputActionOptions:viewSnippet:value:)(v63, v62, v61, v48, v60, v49, v59, v44, v57);
}

uint64_t sub_2219BA4FC(char *a1, uint64_t a2)
{
  v4 = *a1;
  sub_221BCDE68();
  swift_getMetatypeMetadata();
  v5 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v5);

  MEMORY[0x223DA31F0](0x203A65756C617628, 0xE800000000000000);
  sub_221A1E0A0(v2 + *(a2 + 60), *(a2 + 16));
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0xD000000000000019, 0x8000000221BEC770);
  sub_2219C2154(v2, v4);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0x3A676F6C61696420, 0xE900000000000020);
  sub_2219C21E4(v2 + 40, v4);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0x7463417478656E20, 0xED0000203A6E6F69);
  sub_2219C2274(v2 + 80, v4);
  OUTLINED_FUNCTION_59();

  OUTLINED_FUNCTION_54();
  if (*(v2 + 120))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v2 + 120))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v6, v7);

  OUTLINED_FUNCTION_54();
  sub_2219C2274(v2 + 128, v4);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0xD00000000000001ALL, 0x8000000221BEC7D0);
  v10 = *(v2 + 168);
  type metadata accessor for LNShowOutputActionOptions(0);
  sub_221BCE018();
  MEMORY[0x223DA31F0](0x696E537765697620, 0xEE00203A74657070);
  v8 = sub_2219C234C(v2 + 176, v4);
  MEMORY[0x223DA31F0](v8);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

uint64_t IntentOutput.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 16);
  v6 = sub_221BCDC98();
  v7 = OUTLINED_FUNCTION_2_1(v6);
  v9 = *(v8 + 16);

  return v9(a2, v2 + v4, v7);
}

uint64_t IntentOutput.init(confirmationActionName:dialog:nextAction:shouldShowPrompt:showOutputAction:showOutputActionOptions:viewSnippet:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v11;
  *(a9 + 32) = *(a1 + 32);
  v12 = *(a2 + 16);
  *(a9 + 40) = *a2;
  *(a9 + 56) = v12;
  *(a9 + 72) = *(a2 + 32);
  *(a9 + 112) = *(a3 + 32);
  v13 = *(a3 + 16);
  *(a9 + 80) = *a3;
  *(a9 + 96) = v13;
  *(a9 + 120) = a4;
  v14 = *(a5 + 32);
  v15 = *(a5 + 16);
  *(a9 + 128) = *a5;
  *(a9 + 144) = v15;
  *(a9 + 160) = v14;
  *(a9 + 168) = a6;
  *(a9 + 208) = *(a7 + 32);
  v16 = *(a7 + 16);
  *(a9 + 176) = *a7;
  *(a9 + 192) = v16;
  v17 = *(type metadata accessor for IntentOutput() + 60);
  v18 = sub_221BCDC98();
  OUTLINED_FUNCTION_2_1(v18);
  v20 = *(v19 + 32);

  return v20(a9 + v17, a8);
}

uint64_t IntentOutput.init(confirmationActionName:dialog:nextAction:shouldShowPrompt:showOutputAction:showOutputActionOptions:viewSnippet:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_2219BAF0C(a1, v23, &unk_27CFBB7B0, &unk_221BE4C10);
  sub_2219BAF0C(a2, v22, &qword_27CFB8320, &unk_221BD1D60);
  sub_2219BAF0C(a3, v21, &unk_27CFBB7C0, &qword_221BE4C20);
  sub_2219BAF0C(a5, v20, &unk_27CFBB7C0, &qword_221BE4C20);
  if (a7)
  {
    a6 = 0;
  }

  sub_2219A1CC8(a5, &unk_27CFBB7C0, &qword_221BE4C20);
  sub_2219A1CC8(a3, &unk_27CFBB7C0, &qword_221BE4C20);
  sub_2219A1CC8(a2, &qword_27CFB8320, &unk_221BD1D60);
  sub_2219A1CC8(a1, &unk_27CFBB7B0, &unk_221BE4C10);
  return IntentOutput.init(confirmationActionName:dialog:nextAction:shouldShowPrompt:showOutputAction:showOutputActionOptions:viewSnippet:value:)(v23, v22, v21, a4 & 1, v20, a6, a8, a10, a9);
}

uint64_t sub_2219BAB54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_221A1E060(a1, WitnessTable);
}

uint64_t IntentOutput<>.init(_:origin:localeIdentifier:valueTransform:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v72 = a3;
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = [a1 confirmationActionName];
  if (v10)
  {
    v11 = v10;
    sub_2219B7680(v11, v74);
    OUTLINED_FUNCTION_49();
    v12 = swift_allocObject();

    v13 = v74[1];
    v12[1] = v74[0];
    v12[2] = v13;
    v12[3] = v74[2];
    v14 = &off_283513A88;
    v15 = &type metadata for AnyConfirmationActionName;
  }

  else
  {

    v12 = 0;
    OUTLINED_FUNCTION_27_1();
  }

  *a4 = v12;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = v15;
  *(a4 + 32) = v14;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0;
  v16 = [a1 nextAction];
  if (v16)
  {
    v17 = v16;

    sub_221998178(v9, v8);
    if (sub_221BBEDE4())
    {
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_21_1();
      v18 = swift_allocObject();
      v26 = OUTLINED_FUNCTION_29_0(v18, v19, v20, v21, v22, v23, v24, v25, v71, v72, v73);
      sub_2219B55C4(v27, v26, v28);

      v29 = &type metadata for OpenURLIntentSpecification;
      v30 = &off_2835138F8;
    }

    else
    {
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_20_0();
      v18 = swift_allocObject();
      v38 = OUTLINED_FUNCTION_29_0(v18, v31, v32, v33, v34, v35, v36, v37, v71, v72, v73);
      sub_2219B58B8(v39, v38, v40);

      v29 = &type metadata for AnyAppIntentSpecification;
      v30 = &off_283513928;
    }
  }

  else
  {
    v29 = 0;
    v18 = 0;
    v30 = 0;
  }

  *(a4 + 80) = v18;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = v29;
  *(a4 + 112) = v30;
  *(a4 + 120) = [a1 shouldShowPrompt];
  v41 = [a1 showOutputAction];
  if (v41)
  {
    v42 = v41;
    if (sub_221BBEDE4())
    {
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_21_1();
      v43 = swift_allocObject();
      v51 = OUTLINED_FUNCTION_29_0(v43, v44, v45, v46, v47, v48, v49, v50, v71, v72, v73);
      sub_2219B55C4(v52, v51, v53);

      v54 = &type metadata for OpenURLIntentSpecification;
      v55 = &off_2835138F8;
    }

    else
    {
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_20_0();
      v43 = swift_allocObject();
      v63 = OUTLINED_FUNCTION_29_0(v43, v56, v57, v58, v59, v60, v61, v62, v71, v72, v73);
      sub_2219B58B8(v64, v63, v65);

      v54 = &type metadata for AnyAppIntentSpecification;
      v55 = &off_283513928;
    }
  }

  else
  {

    sub_2219982C4(v9, v8);
    OUTLINED_FUNCTION_27_1();
    v43 = 0;
  }

  *(a4 + 128) = v43;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 152) = v54;
  *(a4 + 160) = v55;
  *(a4 + 168) = [a1 showOutputActionOptions];
  v66 = [a1 viewSnippet];
  if (v66)
  {
    v66 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v67 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v67 = 0;
  }

  OUTLINED_FUNCTION_41(v66, v67);
  v68 = [a1 value];
  v69 = v72();

  *(a4 + 216) = v69;
  return result;
}

uint64_t sub_2219BAF0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return a2;
}

uint64_t sub_2219BAF68(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_2219BAFAC(uint64_t a1)
{
  sub_2219BB64C(319, qword_280FA8DD8, &qword_27CFB7DF0, &qword_221BD1DF0);
  if (v2 <= 0x3F)
  {
    sub_2219BB64C(319, &qword_280FA8DC8, &qword_27CFB7DF8, &qword_221BD1DF8);
    if (v3 <= 0x3F)
    {
      sub_2219BB5FC();
      if (v4 <= 0x3F)
      {
        type metadata accessor for LNShowOutputActionOptions(319);
        if (v5 <= 0x3F)
        {
          sub_2219BB64C(319, qword_280FA8E60, &qword_27CFB7E00, qword_221BD1E00);
          if (v6 <= 0x3F)
          {
            v7 = *(a1 + 16);
            sub_221BCDC98();
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2219BB0EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 216) & ~v9);
  v13 = 8 * (v10 + ((v9 - 40) & ~v9));
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if (v7 > 0x7FFFFFFE)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((((((((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 40) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(a1 + 3);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_2219BB2D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = ((v12 + 216) & ~v12) + v13;
  v15 = 8 * (((v12 - 40) & ~v12) + v13);
  v16 = a3 >= v11;
  v17 = a3 - v11;
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

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 > 0x7FFFFFFE)
          {
            v23 = ((((((((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 40) & ~v12);
            if (v10 >= a2)
            {
              v27 = a2 + 1;
              v28 = (((((((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 40) & ~v12;

              __swift_storeEnumTagSinglePayload(v28, v27, v9, v7);
            }

            else
            {
              if (v13 <= 3)
              {
                v24 = ~(-1 << (8 * v13));
              }

              else
              {
                v24 = -1;
              }

              if (v13)
              {
                v25 = v24 & (~v10 + a2);
                if (v13 <= 3)
                {
                  v26 = v13;
                }

                else
                {
                  v26 = 4;
                }

                bzero(v23, v13);
                switch(v26)
                {
                  case 2:
                    *v23 = v25;
                    break;
                  case 3:
                    *v23 = v25;
                    v23[2] = BYTE2(v25);
                    break;
                  case 4:
                    *v23 = v25;
                    break;
                  default:
                    *v23 = v25;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(a1 + 4) = 0;
            *a1 = 0u;
            *(a1 + 1) = 0u;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 3) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v11 + a2;
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
        goto LABEL_61;
      case 4:
        *&a1[v14] = v21;
        break;
      default:
        return;
    }
  }
}

void sub_2219BB5FC()
{
  if (!qword_280FA8EE8)
  {
    v0 = sub_221BCDC98();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA8EE8);
    }
  }
}

void sub_2219BB64C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_25_1();
    v5 = sub_221BCDC98();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void OUTLINED_FUNCTION_0_15()
{
  *(v0 + 16) = v1;
  v6 = (v0 + 40 * v4);
  v6[4] = v5;
  v6[5] = v2;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = v3;
}

void OUTLINED_FUNCTION_1_14(void *a1@<X8>)
{
  a1[4] = v3;
  a1[5] = v1;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v2;
}

char *OUTLINED_FUNCTION_2_10@<X0>(unint64_t a1@<X8>)
{

  return sub_2219A2FF4((a1 > 1), v1, 1);
}

char *OUTLINED_FUNCTION_3_8(uint64_t a1)
{

  return sub_2219A2FF4(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_5_5(void *a1@<X8>)
{
  a1[4] = v3;
  a1[5] = v1;
  a1[7] = 0;
  a1[8] = 0;
  a1[6] = v2;
}

void OUTLINED_FUNCTION_8_3(uint64_t a1@<X8>)
{
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v4[10] = v2;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = a1;
  v4[14] = v1;
}

void OUTLINED_FUNCTION_9_3(uint64_t a1@<X8>)
{
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v4[16] = v2;
  v4[17] = 0;
  v4[18] = 0;
  v4[19] = v1;
  v4[20] = a1;
}

__n128 OUTLINED_FUNCTION_14_2()
{
  v2 = v0[6].n128_u64[0];
  v3 = v0[6].n128_u64[1];
  return v0[7];
}

__n128 OUTLINED_FUNCTION_15_1()
{
  v2 = v1[6].n128_u64[1];
  v0[1].n128_u64[0] = v1[6].n128_u64[0];
  v0[1].n128_u64[1] = v2;
  result = v1[7];
  v0[2] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_16_1()
{
  v2 = v0[7].n128_u64[0];
  v3 = v0[7].n128_u64[1];
  return v0[8];
}

__n128 OUTLINED_FUNCTION_17_1()
{
  v2 = v1[7].n128_u64[1];
  v0[1].n128_u64[0] = v1[7].n128_u64[0];
  v0[1].n128_u64[1] = v2;
  result = v1[8];
  v0[2] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_18_0()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  return *(v0 + 120);
}

__n128 OUTLINED_FUNCTION_19_1()
{
  v2 = *(v1 + 112);
  v0[1].n128_u64[0] = *(v1 + 104);
  v0[1].n128_u64[1] = v2;
  result = *(v1 + 120);
  v0[2] = result;
  return result;
}

double OUTLINED_FUNCTION_22_1()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  *(v2 + 72) = 0;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v3 + 64);
  result = *(v3 + 72);
  *v5 = v2;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v1;
  v5[4] = a1;
  return result;
}

__n128 OUTLINED_FUNCTION_31_0()
{
  v2 = *(v1 + 32);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 32) = v2;
  result = *(v1 + 48);
  *(v0 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v5[22] = v2;
  v5[23] = 0;
  v5[24] = 0;
  v5[25] = result;
  v5[26] = a2;
  return result;
}

void OUTLINED_FUNCTION_36_0(void *a1)
{

  sub_2219B7680(a1, v1 + 16);
}

void OUTLINED_FUNCTION_40()
{
}

uint64_t OUTLINED_FUNCTION_41@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[22] = v2;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = result;
  v3[26] = a2;
  return result;
}

void OUTLINED_FUNCTION_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14[6] = v15;
  v14[7] = a13;
  v14[8] = v13;
}

id OUTLINED_FUNCTION_50()
{

  return [v0 (v1 + 248)];
}

id OUTLINED_FUNCTION_51()
{

  return [v1 (v0 + 248)];
}

uint64_t OUTLINED_FUNCTION_52()
{
}

id OUTLINED_FUNCTION_53()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void OUTLINED_FUNCTION_54()
{

  JUMPOUT(0x223DA31F0);
}

id OUTLINED_FUNCTION_55()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

void OUTLINED_FUNCTION_56()
{

  JUMPOUT(0x223DA3BF0);
}

void OUTLINED_FUNCTION_57()
{

  JUMPOUT(0x223DA3BF0);
}

uint64_t OUTLINED_FUNCTION_58()
{

  return sub_221BBEDE4();
}

void OUTLINED_FUNCTION_59()
{

  JUMPOUT(0x223DA31F0);
}

uint64_t OUTLINED_FUNCTION_63(uint64_t a1, uint64_t a2)
{
  sub_221998178(a1, a2);

  return sub_221BBEDE4();
}

unint64_t sub_2219BBB74(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_221BCD478();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_221BCD588();
      OUTLINED_FUNCTION_5_6();
      return OUTLINED_FUNCTION_1_15();
    }
  }

  __break(1u);
  return result;
}

int64_t sub_2219BBC2C(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2219BCD08(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_2219BCC9C(result, v3, a2);
      OUTLINED_FUNCTION_5_6();
      return OUTLINED_FUNCTION_1_15();
    }
  }

  __break(1u);
  return result;
}

uint64_t IntentParameter.identifier.getter()
{
  OUTLINED_FUNCTION_1_6();
  v2 = (v0 + *(v1 + 112));
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t IntentParameter.identifier.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_6();
  v6 = *(v5 + 112);
  OUTLINED_FUNCTION_3_9();
  v7 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t (*IntentParameter.identifier.modify())()
{
  OUTLINED_FUNCTION_1_6();
  v1 = *(v0 + 112);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t IntentParameter.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_2_4();
  v5 = *(v4 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_6(*(v6 + 80));
  return (*(v7 + 16))(a1, &v1[v5]);
}

uint64_t sub_2219BBE64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return IntentParameter.wrappedValue.setter(v7);
}

uint64_t IntentParameter.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_2_4();
  v5 = *(v4 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_6(*(v6 + 80));
  (*(v7 + 40))(v1 + v5, a1);
  result = swift_endAccess();
  *(v1 + 16) = 0;
  return result;
}

void (*IntentParameter.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_1_6();
  v5 = *(v4 + 80);
  *(v6 + 8) = v5;
  v7 = *(v5 - 8);
  *(v6 + 16) = v7;
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  IntentParameter.wrappedValue.getter(v9);
  return sub_2219BC0A0;
}

void sub_2219BC0A0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    IntentParameter.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    IntentParameter.wrappedValue.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t IntentParameter.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  IntentParameter.init(wrappedValue:)(a1);
  return v5;
}

_BYTE *IntentParameter.init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_11();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v1[*(v9 + 112)];
  *v10 = 0;
  v10[1] = 0;
  v11 = *(v6 + 16);
  (v11)(&v2[*(*v2 + 104)], a1, v5);
  v12 = OUTLINED_FUNCTION_1_15();
  v11(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7E08, &qword_221BD1E30);
  if (swift_dynamicCast())
  {
    sub_22198B358(v17, v19);
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_0(v19, v20);
    v15 = (*(v14 + 8))(v13, v14);
    (*(v6 + 8))(a1, v5);
    v2[16] = v15 & 1;
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    (*(v6 + 8))(a1, v5);
    sub_2219BC380(v17);
    v1[16] = 0;
  }

  return v2;
}

uint64_t sub_2219BC380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7E10, &qword_221BD1E38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IntentParameter.deinit()
{
  OUTLINED_FUNCTION_2_11();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_0_6(*(v3 + 80));
  (*(v4 + 8))(v0 + v5);
  OUTLINED_FUNCTION_1_6();
  v7 = *(v0 + *(v6 + 112) + 8);

  return v0;
}

uint64_t IntentParameter.__deallocating_deinit()
{
  IntentParameter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2219BC4F8(char a1)
{
  sub_221BCE308();
  MEMORY[0x223DA4060](a1 & 1);
  return sub_221BCE358();
}

uint64_t sub_2219BC55C()
{
  sub_221BCE308();
  sub_2219BC4D0(v2, *v0);
  return sub_221BCE358();
}

uint64_t static IntentParameter.valueType.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t IntentParameter.asProperty()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_11();
  v5 = v4;
  v7 = *(v6 + 80);
  v8 = sub_221BCDC98();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v33 - v10;
  OUTLINED_FUNCTION_0_6(v7);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  IntentParameter.wrappedValue.getter(v33 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7E08, &qword_221BD1E30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_2219BC380(v33);
LABEL_7:
    v18 = *(*v2 + 112);
    result = OUTLINED_FUNCTION_4_8();
    v20 = v1[1];
    if (v20)
    {
      v21 = *v1;
      IntentParameter.wrappedValue.getter(v11);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
      v22 = *(v5 + 88);

      result = NamedProperty.init<A>(identifier:value:)(v21, v20, v11, v7, v22, v35);
      v23 = v35[1];
      v24 = v37;
      *a1 = v35[0];
      *(a1 + 8) = v23;
      *(a1 + 16) = v36;
      *(a1 + 32) = v24;
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_22198B358(v33, v35);
  v16 = *(&v36 + 1);
  v17 = v37;
  v1 = __swift_project_boxed_opaque_existential_0(v35, *(&v36 + 1));
  if (((*(v17 + 8))(v16, v17) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v35);
    goto LABEL_7;
  }

  if ((v2[2] & 1) == 0)
  {
    v25 = *(*v2 + 112);
    result = OUTLINED_FUNCTION_4_8();
    v26 = v1[1];
    if (v26)
    {
      v27 = *v1;
      v28 = objc_allocWithZone(MEMORY[0x277CBEB68]);

      v29 = [v28 init];
      if (v29)
      {
        v30 = v29;
        v31 = NSNull.lnValue.getter();
      }

      else
      {
        v31 = 0;
      }

      v32 = sub_2219BC97C();
      *a1 = v27;
      *(a1 + 8) = v26;
      *(a1 + 16) = v31;
      *(a1 + 24) = v32;
      *(a1 + 32) = &protocol witness table for NSNull;
      return __swift_destroy_boxed_opaque_existential_0(v35);
    }

LABEL_17:
    __break(1u);
    return result;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

Swift::Void __swiftcall IntentParameter.setIdentifier(mirrorLabel:)(Swift::String mirrorLabel)
{
  object = mirrorLabel._object;
  countAndFlagsBits = mirrorLabel._countAndFlagsBits;
  v4 = sub_221BCD528();

  if (v4)
  {
    v5 = sub_2219BBB74(1uLL, countAndFlagsBits, object);
    countAndFlagsBits = MEMORY[0x223DA3160](v5);
    object = v6;
  }

  OUTLINED_FUNCTION_1_6();
  v8 = *(v7 + 112);
  OUTLINED_FUNCTION_3_9();
  v9 = v1[1];
  *v1 = countAndFlagsBits;
  v1[1] = object;
}

unint64_t sub_2219BC97C()
{
  result = qword_27CFB7E18[0];
  if (!qword_27CFB7E18[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CFB7E18);
  }

  return result;
}

uint64_t sub_2219BC9C0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s14PayloadPrivacyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2219BCB90(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2219BCC9C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2219BCD08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_6()
{
}

void sub_2219BCDE0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [a1 title];
  if (v8)
  {
    v9 = sub_221BCD358();
    v10 = [v8 localizedStringForLocaleIdentifier_];

    v8 = sub_221BCD388();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 parameterDescription];
  if (v13)
  {
    v14 = v13;
    v15 = sub_221BCD358();

    v16 = [v14 localizedStringForLocaleIdentifier_];

    v17 = sub_221BCD388();
    v19 = v18;
  }

  else
  {

    v17 = 0;
    v19 = 0;
  }

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v8;
  a4[3] = v12;
  a4[4] = v17;
  a4[5] = v19;
}

uint64_t AnyIntentParameterMetadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AnyIntentParameterMetadata.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AnyIntentParameterMetadata.parameterDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2219BD014(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2219BD054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PerformAppIntent.ChoiceRequest.Option.Style.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t sub_2219BD320()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t PerformAppIntent.ChoiceRequest.Option.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PerformAppIntent.ChoiceRequest.Option.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t sub_2219BD428()
{
  result = qword_27CFB7F28;
  if (!qword_27CFB7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7F28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerformAppIntent(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for PerformAppIntent(_BYTE *result, int a2, int a3)
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

uint64_t sub_2219BD588(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 121))
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

uint64_t sub_2219BD5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2219BD664(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_2219BD6A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219BD718(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_2219BD76C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2219BD7D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_2219BD818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219BD878(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2219BD8B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2219BD92C(uint64_t a1, int a2)
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

uint64_t sub_2219BD96C(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PerformAppIntent.ChoiceRequest.Option.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2219BDAC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BF710;

  return PerformAppIntentDelegate.needsContinueInApp(_:)();
}

uint64_t sub_2219BDB50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BF714;

  return PerformAppIntentDelegate.needsChoice(_:)();
}

uint64_t sub_2219BDBF0()
{
  OUTLINED_FUNCTION_8_0();
  v0 = *MEMORY[0x277CCA050];
  v1 = sub_221BCD388();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_2219BEA6C(v1, v3, 3072, 0);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_2219BDC94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BF710;

  return PerformAppIntentDelegate.needsContinueInApp(_:)();
}

uint64_t sub_2219BDD50()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219A1218();
  v0 = OUTLINED_FUNCTION_17_2();
  *v1 = 0xD00000000000005CLL;
  v1[1] = 0x8000000221BEC7F0;
  OUTLINED_FUNCTION_9_4(v0, v1);
  v2 = OUTLINED_FUNCTION_13_2();

  return v3(v2);
}

uint64_t sub_2219BDDF8()
{
  OUTLINED_FUNCTION_18_1();
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000035, 0x8000000221BEC850);
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_0(v0 + 5, v0[8]);
  v2 = OUTLINED_FUNCTION_15_2();
  v4 = v3(v2);
  MEMORY[0x223DA31F0](v4);

  OUTLINED_FUNCTION_16_2();
  sub_2219A1218();
  v5 = OUTLINED_FUNCTION_17_2();
  *v6 = v10;
  v6[1] = v11;
  OUTLINED_FUNCTION_9_4(v5, v6);
  v7 = OUTLINED_FUNCTION_13_2();

  return v8(v7);
}

uint64_t sub_2219BDF0C()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219A1218();
  v0 = OUTLINED_FUNCTION_17_2();
  *v1 = 0xD00000000000005ALL;
  v1[1] = 0x8000000221BEC8D0;
  OUTLINED_FUNCTION_9_4(v0, v1);
  v2 = OUTLINED_FUNCTION_13_2();

  return v3(v2);
}

uint64_t sub_2219BDFB0()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219A1218();
  v0 = OUTLINED_FUNCTION_17_2();
  *v1 = 0xD00000000000004FLL;
  v1[1] = 0x8000000221BEC930;
  OUTLINED_FUNCTION_9_4(v0, v1);
  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_2219BE058()
{
  OUTLINED_FUNCTION_18_1();
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000037, 0x8000000221BEC980);
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_0(v0 + 5, v0[8]);
  v2 = OUTLINED_FUNCTION_15_2();
  v4 = v3(v2);
  MEMORY[0x223DA31F0](v4);

  OUTLINED_FUNCTION_16_2();
  sub_2219A1218();
  v5 = OUTLINED_FUNCTION_17_2();
  *v6 = v9;
  v6[1] = v10;
  OUTLINED_FUNCTION_9_4(v5, v6);
  OUTLINED_FUNCTION_25();

  return v7();
}

double sub_2219BE158(uint64_t a1, uint64_t a2)
{
  sub_2219A1B08(a2, v6);
  v2 = swift_allocObject();
  sub_22198B358(v6, v2 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_221BD2428;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78A8, &qword_221BD2440);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_221BD19E0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = &unk_221BD25E0;
  *(v4 + 64) = v3;
  return result;
}

uint64_t sub_2219BE240()
{
  v1 = *(v0 + 16);
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000002ELL, 0x8000000221BECA00);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  MEMORY[0x223DA31F0](v4);

  MEMORY[0x223DA31F0](0xD000000000000031, 0x8000000221BEC890);
  sub_2219A1218();
  v5 = OUTLINED_FUNCTION_17_2();
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_9_4(v5, v6);
  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_2219BE3A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2219BF710;

  return sub_2219BDDE0(a1);
}

uint64_t sub_2219BE434(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2219BF714;

  return sub_2219BE040(a1);
}

uint64_t sub_2219BE4E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BF710;

  return sub_2219BDD3C();
}

uint64_t sub_2219BE56C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BE5F8;

  return sub_2219BDF9C();
}

uint64_t sub_2219BE5F8()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_2219BE6E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219BE774;

  return sub_2219BDEF8();
}

uint64_t sub_2219BE774()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  v8 = *(v6 + 8);
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_2219BE86C()
{
  OUTLINED_FUNCTION_1_5();
  *(v0 + 16) = v1;
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2219BE954;

  return v6();
}

uint64_t sub_2219BE954()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v5 + 16);
    v10[3] = sub_2219A8E5C();
    v10[4] = &protocol witness table for LNValue;
    *v10 = v3;
  }

  OUTLINED_FUNCTION_25();

  return v9();
}

id sub_2219BEA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_221BCD358();

  if (a4)
  {
    v8 = sub_221BCD278();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_2219BEB1C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_3(v1);
  *v2 = v3;
  v2[1] = sub_2219BEBA8;

  return sub_2219BE220(v0 + 16);
}

uint64_t sub_2219BEBA8()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v1;
  OUTLINED_FUNCTION_21_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of PerformAppIntentDelegate.needsConfirmation(_:)()
{
  OUTLINED_FUNCTION_14_3();
  v3 = *(OUTLINED_FUNCTION_2_13(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_6_5();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_3(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_17(v8);

  return v11(v10);
}

uint64_t dispatch thunk of PerformAppIntentDelegate.needsDisambiguation(_:)()
{
  OUTLINED_FUNCTION_14_3();
  v3 = *(OUTLINED_FUNCTION_2_13(v0, v1, v2) + 16);
  OUTLINED_FUNCTION_6_5();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_3(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_17(v8);

  return v11(v10);
}

uint64_t dispatch thunk of PerformAppIntentDelegate.needsActionConfirmation(_:)()
{
  OUTLINED_FUNCTION_14_3();
  v3 = *(OUTLINED_FUNCTION_2_13(v0, v1, v2) + 32);
  OUTLINED_FUNCTION_6_5();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_3(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_17(v8);

  return v11(v10);
}

uint64_t dispatch thunk of PerformAppIntentDelegate.needsChoice(_:)()
{
  OUTLINED_FUNCTION_14_3();
  v3 = *(OUTLINED_FUNCTION_2_13(v0, v1, v2) + 40);
  OUTLINED_FUNCTION_6_5();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_3(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_17(v8);

  return v11(v10);
}

uint64_t dispatch thunk of PerformAppIntentDelegate.needsContinueInApp(_:)()
{
  OUTLINED_FUNCTION_14_3();
  v3 = *(OUTLINED_FUNCTION_2_13(v0, v1, v2) + 48);
  OUTLINED_FUNCTION_6_5();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_3(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_17(v8);

  return v11(v10);
}

uint64_t dispatch thunk of DefaultPerformAppIntentDelegate.needsActionConfirmation(_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_7();
  v1 = *(v0 + 80);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_10(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DefaultPerformAppIntentDelegate.needsConfirmation(_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_7();
  v1 = *(v0 + 88);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_10(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DefaultPerformAppIntentDelegate.needsContinueInApp(_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_7();
  v1 = *(v0 + 96);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_10(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DefaultPerformAppIntentDelegate.needsChoice(_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_7();
  v1 = *(v0 + 104);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_10(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DefaultPerformAppIntentDelegate.needsDisambiguation(_:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_7();
  v1 = *(v0 + 112);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_10(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_16_2()
{

  JUMPOUT(0x223DA31F0);
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return swift_allocError();
}

double SnippetEnvironment.size.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t SnippetEnvironment.preferredContentSize.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t SnippetEnvironment.preferredContentSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t SnippetEnvironment.init(size:preferredContentSize:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, char a14, char a15, char a16, char a17)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3 & 1;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 97) = a15;
  *(a9 + 98) = a16;
  *(a9 + 99) = a17;
  return result;
}

uint64_t SnippetEnvironment.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v12 = *(v0 + 96);
  v13 = *(v0 + 97);
  v14 = *(v0 + 98);
  v15 = *(v0 + 99);
  sub_221BCDE68();
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  type metadata accessor for CGSize(0);
  sub_221BCE018();
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  type metadata accessor for LNSnippetEnvironmentDynamicTypeSize(0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  type metadata accessor for LNSnippetEnvironmentLegibilityWeight(0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  type metadata accessor for LNSnippetEnvironmentLayoutDirection(0);
  OUTLINED_FUNCTION_0_17();
  MEMORY[0x223DA31F0](0x53726F6C6F63202CLL, 0xEF203A656D656863);
  type metadata accessor for LNSnippetEnvironmentColorScheme(0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  type metadata accessor for LNSnippetEnvironmentColorSchemeContrast(0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0](0xD000000000000010);
  v10 = sub_221BCD968();
  MEMORY[0x223DA31F0](v10);

  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0](0xD000000000000010);
  type metadata accessor for LNSnippetEnvironmentDisplayGamut(0);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  OUTLINED_FUNCTION_2_14();

  OUTLINED_FUNCTION_1_18();
  MEMORY[0x223DA31F0]();
  OUTLINED_FUNCTION_2_14();

  MEMORY[0x223DA31F0](10528, 0xE200000000000000);
  return 0;
}

uint64_t sub_2219BFE40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 100))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 96);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_2219BFE8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 100) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 100) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 1;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return sub_221BCE018();
}

void OUTLINED_FUNCTION_2_14()
{

  JUMPOUT(0x223DA31F0);
}

void sub_2219BFF44(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v6 = *(a1 + 16);
  for (i = (a1 + 64); v6; --v6)
  {
    v9 = *(i - 4);
    v8 = *(i - 3);
    v37 = *(i - 16);
    v10 = *i;
    v36 = *(i - 1);
    if (!v9)
    {
      v18 = *a4;
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = *(v18 + 16);
        sub_2219B3BB4();
        v18 = v28;
        *a4 = v28;
      }

      v20 = *(v18 + 16);
      if (v20 >= *(v18 + 24) >> 1)
      {
        sub_2219B3BB4();
        v18 = v29;
        *a4 = v29;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 40 * v20;
      *(v21 + 32) = 0;
      *(v21 + 40) = v8;
      *(v21 + 48) = v37;
      *(v21 + 56) = v36;
      *(v21 + 64) = v10;

      goto LABEL_22;
    }

    v35 = v6;
    v11 = *(v8 + 16);

    v12 = v11(v9, v8);
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      if (v37)
      {
        v14 = v13;
        sub_2219C0CD8();
        v34 = a2;
        v15 = a4;
        v16 = a2;
        v17 = [v14 memberValueType];
        LOBYTE(v14) = sub_221BCDC58();

        a2 = v16;
        a4 = v15;

        if (v14)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    else if ((v37 & 1) == 0)
    {
      sub_2219C0CD8();
      v22 = sub_221BCDC58();

      if (v22)
      {
LABEL_15:
        v23 = *a3;

        v24 = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v23;
        if ((v24 & 1) == 0)
        {
          v30 = *(v23 + 16);
          sub_2219B3BB4();
          v23 = v31;
          *a3 = v31;
        }

        v25 = *(v23 + 16);
        if (v25 >= *(v23 + 24) >> 1)
        {
          sub_2219B3BB4();
          v23 = v32;
          *a3 = v32;
        }

        *(v23 + 16) = v25 + 1;
        v26 = v23 + 40 * v25;
        *(v26 + 32) = v9;
        *(v26 + 40) = v8;
        *(v26 + 48) = v37;
        *(v26 + 56) = v36;
        *(v26 + 64) = v10;
      }

LABEL_20:

      goto LABEL_21;
    }

LABEL_21:
    v6 = v35;
LABEL_22:
    i += 5;
  }
}

uint64_t ValueProvider.init(valueProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(a3 + 24) = &unk_221BD25E0;
  *(a3 + 32) = result;
  return result;
}

uint64_t static ValueProviderBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
}

void *ValueProvider.init<A>(_:valueProvider:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = 0;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *(a5 + 24) = &unk_221BD25F0;
  *(a5 + 32) = result;
  return result;
}

uint64_t sub_2219C031C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v7 = *(a4 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v5[6] = v9;
  v13 = (a2 + *a2);
  v10 = a2[1];
  v11 = swift_task_alloc();
  v5[7] = v11;
  *v11 = v5;
  v11[1] = sub_2219C0474;

  return v13(v9);
}

uint64_t sub_2219C0474()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;

  if (v0)
  {
    v6 = v2[6];
  }

  else
  {
    v9 = v2[5];
    v8 = v2[6];
    v11 = v2[3];
    v10 = v2[4];
    v12 = v2[2];
    v12[3] = v11;
    v12[4] = *(*(v10 + 8) + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(v9 + 32))(boxed_opaque_existential_1, v8, v11);
  }

  v7 = *(v4 + 8);

  return v7();
}

void *ValueProvider.init<A>(_:valueProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = 1;
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *(a5 + 24) = &unk_221BD2600;
  *(a5 + 32) = result;
  return result;
}

uint64_t sub_2219C0640(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_2219C0730;

  return v9();
}

uint64_t sub_2219C0730(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  if (!v1)
  {
    v9 = v4[4];
    v10 = v4[5];
    v11 = v4[3];
    v11[3] = sub_221BCD748();
    v4[2] = *(v10 + 8);
    v11[4] = swift_getWitnessTable();
    *v11 = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2219C0888()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_15(v3);
  *v4 = v5;
  v4[1] = sub_2219C0D1C;

  return sub_2219BE86C();
}

uint64_t sub_2219C0938()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_18(v6);

  return v9(v8);
}

uint64_t sub_2219C09DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_18(v6);

  return v9(v8);
}

uint64_t sub_2219C0A80()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

_BYTE *storeEnumTagSinglePayload for ValueProviderBuilder(_BYTE *result, int a2, int a3)
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

uint64_t sub_2219C0C28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  sub_2219BFF44(a2, a1, &v8, &v7);
  v6 = v8;

  sub_221BC398C(v4);
  sub_2219A28EC(v6, a3);
}

unint64_t sub_2219C0CD8()
{
  result = qword_27CFB7670;
  if (!qword_27CFB7670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB7670);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_2219C0D58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_19_2();
    v6 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FA8, &qword_221BD2830);
    v4 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v4);

    OUTLINED_FUNCTION_171();
    return v6;
  }

  else
  {

    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C0DF4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_19_2();
    v6[0] = v2;
    v6[1] = v3;
    v6[9] = &type metadata for PropertyQuery;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8020, &qword_221BD28D0);
    v4 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v4);

    OUTLINED_FUNCTION_171();
    return v6[0];
  }

  else
  {
    sub_2219EB67C(a1, v6);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C0E8C(void *a1, char a2)
{
  v16 = a1;
  v4 = sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F78, &unk_221BD43A0);
  if (swift_dynamicCast())
  {
    sub_22198B358(v14, v17);
    v6 = v17[4];
    OUTLINED_FUNCTION_23_2(v17);
    LOBYTE(v14[0]) = a2 & 1;
    v7 = *(v6 + 16);
    OUTLINED_FUNCTION_56_0();
    v8();
    OUTLINED_FUNCTION_183();
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_2219EC58C(v14, &unk_27CFB7F80);
    if (a2)
    {
      OUTLINED_FUNCTION_19_2();
      v17[0] = v9;
      v17[1] = v10;
      *&v14[0] = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F88, &qword_221BD2818);
      v11 = sub_221BCD3F8();
      MEMORY[0x223DA31F0](v11);

      OUTLINED_FUNCTION_171();
    }

    else
    {
      v17[0] = v5;
      v12 = v5;
      sub_221BCD3D8();
      OUTLINED_FUNCTION_183();
    }
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2219C0FF8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_2219A1B08(a1, v22);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F78, &unk_221BD43A0);
  if (swift_dynamicCast())
  {
    sub_22198B358(v20, v23);
    v13 = v23[4];
    OUTLINED_FUNCTION_23_2(v23);
    LOBYTE(v22[0]) = a2 & 1;
    v14 = *(v13 + 16);
    OUTLINED_FUNCTION_56_0();
    v15();
    OUTLINED_FUNCTION_183();
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_2219EC58C(v20, &unk_27CFB7F80);
    if (a2)
    {
      OUTLINED_FUNCTION_19_2();
      v23[0] = v16;
      v23[1] = v17;
      v22[0] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = sub_221BCD3F8();
      MEMORY[0x223DA31F0](v18);

      OUTLINED_FUNCTION_171();
    }

    else
    {
      sub_2219A1B08(a1, v23);
      sub_221BCD3D8();
      OUTLINED_FUNCTION_183();
    }
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2219C1168(void *a1, char a2)
{
  v8[3] = &type metadata for AnyQueryOutput;
  v8[4] = sub_2219EBC40();
  v8[0] = a1;
  v4 = *__swift_project_boxed_opaque_existential_0(v8, &type metadata for AnyQueryOutput);
  v5 = a1;
  sub_221BCDE68();

  v6 = sub_2219C0E8C(v4, a2 & 1);
  MEMORY[0x223DA31F0](v6);

  OUTLINED_FUNCTION_171();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2219C1238(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F78, &unk_221BD43A0);
  v2 = MEMORY[0x277D84F78];
  if (swift_dynamicCast())
  {
    sub_22198B358(v8, v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    LOBYTE(v8[0]) = a1 & 1;
    v5 = (*(v4 + 16))(v8, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_2219EC58C(v8, &qword_27CFB7F80);
    if (a1)
    {
      v10[0] = 0x20656D6F7328;
      v10[1] = 0xE600000000000000;
      *&v8[0] = v2 + 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80F0, &qword_221BD2A00);
      v6 = sub_221BCD3F8();
      MEMORY[0x223DA31F0](v6);

      MEMORY[0x223DA31F0](41, 0xE100000000000000);
      return v10[0];
    }

    else
    {
      return sub_221BCD3D8();
    }
  }

  return v5;
}

uint64_t sub_2219C13A0(uint64_t a1, char a2)
{
  v20[3] = &type metadata for AppIntentsProtocol.PerformQuery.Response;
  v20[4] = sub_2219EC4DC();
  v4 = swift_allocObject();
  v20[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v6 = __swift_project_boxed_opaque_existential_0(v20, &type metadata for AppIntentsProtocol.PerformQuery.Response);
  if (v6[4])
  {
    sub_2219EC530(a1, v19);
    v7 = 0x726F7272652ELL;
  }

  else
  {
    v8 = v6[2];
    v9 = v6[3];
    v10 = *v6;
    v11 = v6[1];
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_2219EC530(a1, v19);
    sub_221BCDE68();

    v19[0] = 0x737365636375732ELL;
    v19[1] = 0xE900000000000028;
    v12 = a2 & 1;
    v13 = sub_2219C1168(v10, v12);
    MEMORY[0x223DA31F0](v13);

    MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEC6D0);
    if (v8)
    {
      LOBYTE(v18[0]) = v12;
      v14 = sub_221AE7580(v18, v11 & 1, v8, v9);
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    MEMORY[0x223DA31F0](v14, v16);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    v7 = v19[0];
  }

  __swift_destroy_boxed_opaque_existential_0(v20);
  return v7;
}

uint64_t sub_2219C1544(uint64_t a1, char a2)
{
  started = type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse(0);
  v5 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (a2)
  {
    v10[3] = 0xE600000000000000;
    v10[1] = started;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8190, &qword_221BD2AE0);
    v8 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v8);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    sub_2219EC27C(a1, v10 - v7, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1654(uint64_t a1, char a2)
{
  if (a2)
  {
    *(&v6 + 1) = 0xE600000000000000;
    v5 = &type metadata for AppIntentsProtocol.FetchAppDescription.Response;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8178, &qword_221BD2AC8);
    v2 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v2);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    v4 = *(a1 + 16);
    v6 = *a1;
    v7 = v4;
    v8 = *(a1 + 32);
    sub_2219EC220(a1, &v5);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1710(uint64_t a1, char a2)
{
  if (a2)
  {
    *(&v6 + 1) = 0xE600000000000000;
    v5 = &type metadata for AppIntentsProtocol.FetchOptionsForAction.Response;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8158, &qword_221BD2AA0);
    v2 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v2);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    v4 = *(a1 + 16);
    v6 = *a1;
    v7 = v4;
    v8 = *(a1 + 32);
    sub_2219EC178(a1, &v5);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C17CC(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8148, &qword_221BD2A88);
    v3 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v3);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    sub_2219EBFB4(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1894(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8138, &qword_221BD2A78);
    v3 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v3);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    v5 = a1;
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1948(uint64_t a1, uint64_t a2, char a3, void (*a4)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_19_2();
    v9 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v7 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v7);

    OUTLINED_FUNCTION_171();
    return v9;
  }

  else
  {
    a4();
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C19DC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_221BCD3D8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8130, &qword_221BD2A58);
  v3 = sub_221BCD3F8();
  MEMORY[0x223DA31F0](v3);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0x20656D6F7328;
}

uint64_t sub_2219C1A84(uint64_t a1, char a2)
{
  if (a2)
  {
    *(&v6 + 1) = 0xE600000000000000;
    v5 = &type metadata for AppDescription;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8118, &qword_221BD2A38);
    v2 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v2);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {
    v4 = *(a1 + 16);
    v6 = *a1;
    v7 = v4;
    v8 = *(a1 + 32);
    sub_2219EBE1C(a1, &v5);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1B40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80D0, &qword_221BD29D8);
    v4 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v4);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return 0x20656D6F7328;
  }

  else
  {

    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_19_2();
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8128, &qword_221BD2A48);
    v6 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v6);

    OUTLINED_FUNCTION_171();
    return v10;
  }

  else
  {

    v8 = OUTLINED_FUNCTION_70();
    sub_221998178(v8, v9);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1CB0(uint64_t a1, char a2)
{
  v4 = sub_221BCC558();
  v5 = *(*(v4 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v4);
  if (a2)
  {
    v12 = 0x20656D6F7328;
    v13 = 0xE600000000000000;
    v11[1] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8100, &qword_221BD2A18);
    v9 = sub_221BCD3F8();
    MEMORY[0x223DA31F0](v9);

    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    return v12;
  }

  else
  {
    (*(v7 + 16))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v8);
    return sub_221BCD3D8();
  }
}

uint64_t sub_2219C1DE8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8060, &qword_221BD2928);
  v4 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](0x3A74757074756F28, 0xE900000000000020);
  v2 = sub_2219C1E9C(a1 & 1);
  MEMORY[0x223DA31F0](v2);

  return v4;
}

uint64_t sub_2219C1E9C(char a1)
{
  sub_221BCDE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7A0, &qword_221BD2930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8068, &qword_221BD2938);
  sub_221BCD3D8();
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0x203A65756C617628, 0xE800000000000000);
  v3 = *(v1 + 216);
  v4 = a1 & 1;
  if (v3)
  {
    v5 = sub_2219C0E8C(v3, v4);
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x223DA31F0](v5, v7);

  MEMORY[0x223DA31F0](0xD000000000000019, 0x8000000221BEC770);
  v8 = OUTLINED_FUNCTION_4();
  sub_2219C2154(v8, v9);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0x3A676F6C61696420, 0xE900000000000020);
  sub_2219C21E4(v1 + 40, v4);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0x7463417478656E20, 0xED0000203A6E6F69);
  sub_2219C2274(v1 + 80, v4);
  OUTLINED_FUNCTION_59();

  OUTLINED_FUNCTION_54();
  if (*(v1 + 120))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + 120))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v10, v11);

  OUTLINED_FUNCTION_54();
  sub_2219C2274(v1 + 128, v4);
  OUTLINED_FUNCTION_59();

  MEMORY[0x223DA31F0](0xD00000000000001ALL, 0x8000000221BEC7D0);
  v14 = *(v1 + 168);
  type metadata accessor for LNShowOutputActionOptions(0);
  sub_221BCE018();
  MEMORY[0x223DA31F0](0x696E537765697620, 0xEE00203A74657070);
  v12 = sub_2219C234C(v1 + 176, v4);
  MEMORY[0x223DA31F0](v12);

  OUTLINED_FUNCTION_171();
  return 0;
}

uint64_t sub_2219C2154(uint64_t a1, char a2)
{
  sub_2219BAF0C(a1, &v13, &unk_27CFBB7B0, &unk_221BE4C10);
  if (v14)
  {
    sub_22198B358(&v13, v12);
    v3 = sub_2219C0FF8(v12, a2 & 1, &qword_27CFB7DF0, &qword_221BD1DF0, &qword_27CFB8088, &qword_221BD2958);
    OUTLINED_FUNCTION_203(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
  }

  else
  {
    OUTLINED_FUNCTION_88();
  }

  return OUTLINED_FUNCTION_70();
}

uint64_t sub_2219C21E4(uint64_t a1, char a2)
{
  sub_2219BAF0C(a1, &v13, &qword_27CFB8320, &unk_221BD1D60);
  if (v14)
  {
    sub_22198B358(&v13, v12);
    v3 = sub_2219C0FF8(v12, a2 & 1, &qword_27CFB7DF8, &qword_221BD1DF8, &qword_27CFB8080, &qword_221BD2950);
    OUTLINED_FUNCTION_203(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
  }

  else
  {
    OUTLINED_FUNCTION_88();
  }

  return OUTLINED_FUNCTION_70();
}

uint64_t sub_2219C2274(uint64_t a1, char a2)
{
  sub_2219BAF0C(a1, &v8, &unk_27CFBB7C0, &qword_221BE4C20);
  if (*(&v9 + 1))
  {
    v6[0] = v8;
    v6[1] = v9;
    v7 = v10;
    v5[3] = &type metadata for AppIntentSpecification;
    v5[4] = sub_2219EB9A8();
    v5[0] = swift_allocObject();
    sub_2219EB748(v6, v5[0] + 16);
    OUTLINED_FUNCTION_62_0(v5, &type metadata for AppIntentSpecification);
    v4 = a2 & 1;
    sub_2219B5AFC(&v4);
    sub_2219B397C(v6);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    OUTLINED_FUNCTION_88();
  }

  return OUTLINED_FUNCTION_70();
}

uint64_t sub_2219C234C(uint64_t a1, char a2)
{
  sub_2219BAF0C(a1, &v13, &unk_27CFB93B0, &qword_221BD1D70);
  if (v14)
  {
    sub_22198B358(&v13, v12);
    v3 = sub_2219C0FF8(v12, a2 & 1, &qword_27CFB7E00, qword_221BD1E00, &qword_27CFB8070, &unk_221BD2940);
    OUTLINED_FUNCTION_203(v3, v4, v5, v6, v7, v8, v9, v10, v12[0]);
  }

  else
  {
    OUTLINED_FUNCTION_88();
  }

  return OUTLINED_FUNCTION_70();
}

void sub_2219C23DC()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v34 = v3;
  v35 = v2;
  v33 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_221BCCD88();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  v20 = *v6;
  v21 = v6[1];
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  __swift_project_value_buffer(v11, qword_280FA9008);
  v22 = *(v14 + 16);
  v23 = OUTLINED_FUNCTION_3_4();
  v24(v23);
  sub_221BCCCE8();
  v25 = (v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
  *v25 = sub_221BC5570(6);
  v25[1] = v26;
  *(v1 + 16) = v10;
  *(v1 + 24) = v8;
  sub_2219A1B08(v35, v1 + 32);
  *(v1 + 72) = v20;
  *(v1 + 73) = v21;
  *(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_source) = v33;
  sub_2219EBEE4(v34, v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_user);

  v27 = sub_221BCCD68();
  sub_221BCDA98();
  OUTLINED_FUNCTION_246();
  if (os_log_type_enabled(v27, v19))
  {
    v28 = OUTLINED_FUNCTION_103();
    v36 = OUTLINED_FUNCTION_105();
    *v28 = 136315394;
    v30 = *(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
    v29 = *(v1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8);

    v31 = sub_2219A6360(v30, v29, &v36);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v32 = sub_2219A6360(v10, v8, &v36);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_221989000, v27, v19, "[%s] Initialized dispatcher for %s", v28, 0x16u);
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();

    sub_2219EBE90(v34);
  }

  else
  {

    sub_2219EBE90(v34);
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  OUTLINED_FUNCTION_22();
}