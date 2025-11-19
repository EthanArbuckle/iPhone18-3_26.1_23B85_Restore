uint64_t sub_23B4C83A0()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_23B4C8484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  if (v14[5])
  {
    OUTLINED_FUNCTION_107_1();
    do
    {
      if (v14[5] != 1)
      {
        v16 = *(v14[8] + v15);
      }

      OUTLINED_FUNCTION_118_0();
      v17 = v14[10];
      v18 = type metadata accessor for WeatherQuery();
      OUTLINED_FUNCTION_2(v18);
      v20 = *(v19 + 16);
      v21 = OUTLINED_FUNCTION_206_1();
      v22(v21);
      OUTLINED_FUNCTION_104_1();
    }

    while (!v23);
    v24 = v14[5];
  }

  v25 = v14[13];
  v26 = v14[10];
  v27 = v14[3];
  v28 = OUTLINED_FUNCTION_202_1();
  OUTLINED_FUNCTION_142_1(v28);
  v29 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v14[16] = v30;
  *v30 = v31;
  v30[1] = sub_23B4C85C8;
  v33 = v14[11];
  v32 = v14[12];
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822008A0](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4C85C8()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_169_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C86D0()
{
  OUTLINED_FUNCTION_188();
  if (v1[5])
  {
    OUTLINED_FUNCTION_220_1();
    do
    {
      if (v1[5] != 1)
      {
        v2 = *(v1[11] + v0);
      }

      v3 = OUTLINED_FUNCTION_139_1();
      (*(v4 + 32))(v3, v6 + v5);
      OUTLINED_FUNCTION_115_1();
    }

    while (!v7);
  }

  v8 = v1[15];
  v10 = v1[12];
  v9 = v1[13];
  v11 = v1[10];
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v9, v12);

  OUTLINED_FUNCTION_45_0();

  return v13();
}

uint64_t sub_23B4C87B4()
{
  OUTLINED_FUNCTION_188();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = OUTLINED_FUNCTION_214_1();
  v5(v4);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v2, v6);

  OUTLINED_FUNCTION_67_1();
  v8 = v0[17];

  return v7();
}

uint64_t WeatherService.dailyStatistics<each A>(for:forDaysIn:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_18_20(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    OUTLINED_FUNCTION_130_1();
    v14 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(v15);
    v0 = type metadata accessor for DailyWeatherStatisticsQuery();
  }

  else
  {
    OUTLINED_FUNCTION_101_1();
    OUTLINED_FUNCTION_24_13();
    while (v3 != v4)
    {
      OUTLINED_FUNCTION_4_37();
      v16 = type metadata accessor for DailyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_138_1(v16);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[24] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[25] = v17;
  v19 = *(v18 + 64);
  v1[26] = OUTLINED_FUNCTION_13_22();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v20);
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_141_1(v23);
  v24 = sub_23B50AEF4();
  v1[28] = v24;
  OUTLINED_FUNCTION_28_0(v24);
  v1[29] = v25;
  v27 = *(v26 + 64);
  v1[30] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4C89AC()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_56_4(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_45_6(v8);

  return sub_23B4C8D78(v10, v11, v12);
}

uint64_t sub_23B4C8A38()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *(v4 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v9 + 256) = v0;

  sub_23B4D7720(v6, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C8C70()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_108_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C8D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v4[6] = Options;
  v6 = *(*(Options - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4C8E54, 0, 0);
}

uint64_t sub_23B4C8E54()
{
  OUTLINED_FUNCTION_168();
  v1 = v0[9];
  sub_23B3EB900(v0[4], v1, &qword_27E131F68, &unk_23B50F2A0);
  v2 = sub_23B50AEF4();
  v0[10] = v2;
  OUTLINED_FUNCTION_51(v1, 1, v2);
  if (v3)
  {
    v4 = v0[5];
    sub_23B4D7720(v0[9], &qword_27E131F68, &unk_23B50F2A0);
    v5 = v4[12];
    __swift_project_boxed_opaque_existential_1(v4 + 8, v4[11]);
    v6 = *(OUTLINED_FUNCTION_120_1() + 8);
    OUTLINED_FUNCTION_71_2();
    v21 = (v7 + *v7);
    v9 = *(v8 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v0[11] = v10;
    *v10 = v11;
    v10[1] = sub_23B4C9058;
    v12 = v0[7];
    v13 = v0[3];
    OUTLINED_FUNCTION_112_1();

    return v21();
  }

  else
  {
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];
    v18 = v0[2];
    OUTLINED_FUNCTION_48(v2);
    (*(v19 + 32))();

    OUTLINED_FUNCTION_45_0();

    return v20();
  }
}

uint64_t sub_23B4C9058()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_23B4C913C()
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  v1 = v0[10];
  v2 = v0[8];
  sub_23B3EB900(v0[7] + *(v0[6] + 20), v2, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_51(v2, 1, v1);
  if (v3)
  {
    v4 = v0[9];
    v5 = v0[7];
    sub_23B4D7720(v0[8], &qword_27E131F68, &unk_23B50F2A0);
    sub_23B3E3D54();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_0_54();
    sub_23B393E24(v5, v7);

    OUTLINED_FUNCTION_67_1();
  }

  else
  {
    v8 = v0[7];
    OUTLINED_FUNCTION_0_54();
    sub_23B393E24(v9, v10);
    v11 = v0[9];
    v13 = v0[7];
    v12 = v0[8];
    OUTLINED_FUNCTION_25_11(v0[2], v14, v0[10]);
    (*(v15 + 32))();

    OUTLINED_FUNCTION_45_0();
  }

  OUTLINED_FUNCTION_232_1();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t WeatherService.dailyStatistics<each A>(for:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_47_5(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v13)
  {
    OUTLINED_FUNCTION_130_1();
    v14 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(v15);
    v0 = type metadata accessor for DailyWeatherStatisticsQuery();
  }

  else
  {
    v16 = v12;
    OUTLINED_FUNCTION_13_22();
    OUTLINED_FUNCTION_24_13();
    while (v16 != v3)
    {
      OUTLINED_FUNCTION_4_37();
      v17 = type metadata accessor for DailyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_138_1(v17);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[23] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[24] = v18;
  v20 = *(v19 + 64);
  v21 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_230_1(v21);
  v22 = sub_23B50AA24();
  v1[26] = v22;
  OUTLINED_FUNCTION_28_0(v22);
  v1[27] = v23;
  v25 = *(v24 + 64);
  v1[28] = OUTLINED_FUNCTION_13_22();
  v26 = sub_23B50AE64();
  v1[29] = v26;
  OUTLINED_FUNCTION_28_0(v26);
  v1[30] = v27;
  v29 = *(v28 + 64);
  v1[31] = OUTLINED_FUNCTION_13_22();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v30);
  v32 = *(v31 + 64);
  v1[32] = OUTLINED_FUNCTION_145_1();
  v1[33] = swift_task_alloc();
  v33 = sub_23B50AD24();
  v1[34] = v33;
  OUTLINED_FUNCTION_28_0(v33);
  v1[35] = v34;
  v36 = *(v35 + 64);
  v37 = OUTLINED_FUNCTION_145_1();
  v38 = OUTLINED_FUNCTION_247_1(v37);
  v1[38] = OUTLINED_FUNCTION_246_1(v38);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v39 = sub_23B50AE84();
  v1[41] = v39;
  OUTLINED_FUNCTION_28_0(v39);
  v1[42] = v40;
  v42 = *(v41 + 64);
  v1[43] = OUTLINED_FUNCTION_13_22();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v43);
  v45 = *(v44 + 64);
  v1[44] = OUTLINED_FUNCTION_13_22();
  v46 = sub_23B50AEF4();
  v1[45] = v46;
  OUTLINED_FUNCTION_28_0(v46);
  v1[46] = v47;
  v49 = *(v48 + 64);
  v1[47] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v50, v51, v52, v53, v54, v55, v56, v57);
}

uint64_t sub_23B4C959C()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[44];
  v2 = v0[45];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v0[48] = v7;
  *v7 = v8;
  v7[1] = sub_23B4C9638;
  v9 = v0[47];
  v10 = v0[44];
  OUTLINED_FUNCTION_170_1();

  return sub_23B4C8D78(v11, v12, v13);
}

uint64_t sub_23B4C9638()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *(v4 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v9 + 392) = v0;

  sub_23B4D7720(v6, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C975C()
{
  OUTLINED_FUNCTION_140_1();
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[34];
  v6 = v0[35];
  v59 = v0[33];
  v7 = v0[30];
  v8 = v0[31];
  v9 = v0[29];
  sub_23B50AE04();
  sub_23B50B9D4();
  sub_23B50B994();
  sub_23B50ADE4();
  v10 = *(v6 + 8);
  v0[50] = v10;
  v0[51] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v5);
  v60 = *MEMORY[0x277CC9968];
  v61 = *(v7 + 104);
  v61(v8);
  sub_23B50AE24();
  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_195();
  v11(v12);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v5);
  v15 = v0[33];
  v14 = v0[34];
  if (EnumTagSinglePayload == 1)
  {
    v16 = v0[40];
    v17 = v0[38];
    sub_23B50AC94();
    OUTLINED_FUNCTION_51(v15, 1, v14);
    if (!v18)
    {
      sub_23B4D7720(v0[33], &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    (*(v0[35] + 32))(v0[38], v0[33], v0[34]);
  }

  v19 = v0[43];
  v20 = v0[40];
  v21 = v0[34];
  v23 = v0[31];
  v22 = v0[32];
  (v61)(v23, v60, v0[29]);
  sub_23B50AE24();
  v24 = OUTLINED_FUNCTION_187_1();
  v11(v24);
  v25 = __swift_getEnumTagSinglePayload(v22, 1, v21);
  v26 = v0[34];
  v27 = v0[32];
  if (v25 == 1)
  {
    v28 = v0[40];
    v29 = v0[37];
    sub_23B50AC94();
    OUTLINED_FUNCTION_55_4();
    if (!v18)
    {
      sub_23B4D7720(v0[32], &qword_27E131E18, &unk_23B50F710);
    }
  }

  else
  {
    v30 = v0[37];
    OUTLINED_FUNCTION_178_1(v0[35]);
    v31();
  }

  v32 = v0[38];
  v33 = v0[39];
  v35 = v0[36];
  v34 = v0[37];
  v36 = v0[34];
  v37 = v0[35];
  OUTLINED_FUNCTION_166_1();
  v11(v33);
  v38 = OUTLINED_FUNCTION_226();
  v11(v38);
  OUTLINED_FUNCTION_25_4();
  sub_23B50AA04();
  v0[52] = OUTLINED_FUNCTION_197_1();
  if (v23)
  {
    v39 = OUTLINED_FUNCTION_159_1();
    memcpy(v39, v40, v34);
  }

  v62 = swift_task_alloc();
  v0[53] = v62;
  if (v23)
  {
    v41 = v0[19];
    v42 = v0[18] & 0xFFFFFFFFFFFFFFFELL;
    v44 = v0[20];
    v43 = v0[21];
    OUTLINED_FUNCTION_29_11();
    do
    {
      OUTLINED_FUNCTION_203_1();
      if (!v18)
      {
        v45 = *(v0[23] + v22);
      }

      OUTLINED_FUNCTION_28_10();
      v46 = v0[25];
      v47 = v0[16];
      OUTLINED_FUNCTION_3_45();
      v48 = type metadata accessor for DailyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_2(v48);
      v50 = *(v49 + 16);
      v51 = OUTLINED_FUNCTION_90_1();
      v52(v51);
      OUTLINED_FUNCTION_27_14(v62);
    }

    while (!v18);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v0[54] = v53;
  *v53 = v54;
  v53[1] = sub_23B4C9B18;
  v55 = v0[47];
  v56 = v0[28];
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_3_25();

  return sub_23B4BEF58();
}

uint64_t sub_23B4C9B18()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 440) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_165_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4C9C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_238_0();
  v50 = v26[53];
  v51 = v26[52];
  v28 = v26[50];
  v27 = v26[51];
  v29 = v26[46];
  v30 = v26[47];
  v31 = v26[42];
  v48 = v26[43];
  v49 = v26[45];
  v32 = v26[40];
  v47 = v26[41];
  v33 = v26[38];
  v52 = v26[44];
  v53 = v26[39];
  v34 = v26[37];
  v35 = v26[34];
  v54 = v26[36];
  v55 = v26[33];
  v57 = v26[32];
  v58 = v26[31];
  v56 = v26[28];
  v36 = v26[26];
  v59 = v26[25];
  (*(v26[27] + 8))();
  v28(v34, v35);
  v28(v33, v35);
  v37 = OUTLINED_FUNCTION_227_0();
  (v28)(v37);
  (*(v31 + 8))(v48, v47);
  (*(v29 + 8))(v30, v49);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_231_1();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, v47, v48, v49, v34, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, a24, a25, a26);
}

uint64_t sub_23B4C9DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_237_0();
  OUTLINED_FUNCTION_140_1();
  v17 = *(v16 + 392);
  OUTLINED_FUNCTION_128_1();
  v30 = v19;
  v31 = v18;
  v32 = *(v16 + 200);
  v33 = v20;

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_3_25();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, a14, a15, a16);
}

uint64_t sub_23B4C9E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_181_1();
  v51 = v20[53];
  v53 = v20[52];
  v21 = v20[50];
  v22 = v20[51];
  v23 = v20[46];
  v47 = v20[45];
  v49 = v20[47];
  v24 = v20[42];
  v25 = v20[40];
  v43 = v20[41];
  v44 = v20[43];
  v27 = v20[37];
  v26 = v20[38];
  v28 = v20[34];
  v29 = v20[24];
  v45 = v20[23];
  v46 = v20[25];
  (*(v20[27] + 8))(v20[28], v20[26]);
  v21(v27, v28);
  v21(v26, v28);
  v21(v25, v28);
  (*(v24 + 8))(v44, v43);
  (*(v23 + 8))(v49, v47);
  (*(v29 + 8))(v46, v45);

  v30 = v20[55];
  OUTLINED_FUNCTION_128_1();
  v48 = v32;
  v50 = v31;
  v52 = v20[25];
  v54 = v33;

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_144_1();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, v45, v46, v48, v50, v52, v54, a18, a19, a20);
}

uint64_t WeatherService.dailyStatistics<each A>(for:startDay:endDay:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_8_27(v7, v8, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    v16 = *(v1 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(*(v3 & 0xFFFFFFFFFFFFFFFELL));
    v0 = type metadata accessor for DailyWeatherStatisticsQuery();
  }

  else
  {
    OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_42_9();
    while (v4 != v5)
    {
      v17 = *(v1 + 8 * v5);
      v18 = *(v6 + 8 * v5);
      v19 = *(v0 + 8 * v5);
      OUTLINED_FUNCTION_9_30(*(v3 + 8 * v5));
      v20 = type metadata accessor for DailyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_193_1(v20);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    OUTLINED_FUNCTION_164_1();
  }

  v2[25] = v0;
  OUTLINED_FUNCTION_43_9();
  v2[26] = v21;
  v23 = *(v22 + 64);
  v2[27] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

void sub_23B4CA118()
{
  if ((v1[17] - 367) < 0xFFFFFFFFFFFFFE92 || (v1[16] - 367) < 0xFFFFFFFFFFFFFE92)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_129_1();
    v3 = OUTLINED_FUNCTION_241_1();
    v1[28] = v3;
    if (v0)
    {
      OUTLINED_FUNCTION_116_1();
    }

    v29 = swift_task_alloc();
    v1[29] = v29;
    if (v0)
    {
      v4 = v1[21];
      v5 = v1[20] & 0xFFFFFFFFFFFFFFFELL;
      v7 = v1[22];
      v6 = v1[23];
      OUTLINED_FUNCTION_29_11();
      do
      {
        if (v1[19] != 1)
        {
          v8 = *(v1[25] + v2);
        }

        OUTLINED_FUNCTION_28_10();
        OUTLINED_FUNCTION_188_1();
        OUTLINED_FUNCTION_3_45();
        v9 = type metadata accessor for DailyWeatherStatisticsQuery();
        OUTLINED_FUNCTION_2(v9);
        v11 = *(v10 + 16);
        v12 = OUTLINED_FUNCTION_90_1();
        v13(v12);
        OUTLINED_FUNCTION_27_14(v29);
      }

      while (!v14);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v1[30] = v15;
    *v15 = v16;
    v17 = OUTLINED_FUNCTION_78_2(v15);
    v18 = v1[16];
    v19 = v1[17];
    OUTLINED_FUNCTION_113_1(v17);
    OUTLINED_FUNCTION_217_1(v20, v21, v22, v23, v24, v25, v26, v27, v3);
    OUTLINED_FUNCTION_99_1();

    sub_23B4CA484();
  }
}

uint64_t sub_23B4CA280()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 248) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_73_2();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CA388()
{
  OUTLINED_FUNCTION_71();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  OUTLINED_FUNCTION_45_0();

  return v4();
}

uint64_t sub_23B4CA3F4()
{
  OUTLINED_FUNCTION_188();
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[25];
  v5 = OUTLINED_FUNCTION_216_0(v0[26]);
  v6(v5);

  OUTLINED_FUNCTION_67_1();
  v8 = v0[31];

  return v7();
}

uint64_t sub_23B4CA484()
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_89_0(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    v17 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(*(v0 & 0xFFFFFFFFFFFFFFFELL));
    v3 = type metadata accessor for DailyWeatherStatisticsQuery();
  }

  else
  {
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_160_0();
    OUTLINED_FUNCTION_229_1();
    while (v4 != v3)
    {
      v18 = *(v7 + 8 * v3);
      v19 = *(v6 + 8 * v3);
      OUTLINED_FUNCTION_227_1();
      OUTLINED_FUNCTION_9_30(v20);
      v21 = type metadata accessor for DailyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_157_1(v21);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_250_1();
  }

  v2[37] = v3;
  OUTLINED_FUNCTION_111_0();
  v2[38] = v22;
  v24 = *(v23 + 64);
  v2[39] = OUTLINED_FUNCTION_13_22();
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_39_9();
    OUTLINED_FUNCTION_77_2(v25);
    v1 = type metadata accessor for DailyWeatherStatistics();
  }

  else
  {
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_160_0();
    v26 = v0 & 0xFFFFFFFFFFFFFFFELL;
    v27 = v5 & 0xFFFFFFFFFFFFFFFELL;
    while (v4 != v3)
    {
      v28 = *(v26 + 8 * v3);
      v29 = *(v27 + 8 * v3);
      OUTLINED_FUNCTION_227_1();
      OUTLINED_FUNCTION_76_1(v30);
      v31 = type metadata accessor for DailyWeatherStatistics();
      OUTLINED_FUNCTION_157_1(v31);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_120_1();
  }

  v2[40] = v1;
  OUTLINED_FUNCTION_151_1();
  v33 = *(v32 + 64);
  v2[41] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_129_0();
  return OUTLINED_FUNCTION_240_1();
}

uint64_t sub_23B4CA744()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 352) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_168_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CA924()
{
  OUTLINED_FUNCTION_188();
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[37];
  v5 = OUTLINED_FUNCTION_216_0(v0[38]);
  v6(v5);

  OUTLINED_FUNCTION_67_1();
  v8 = v0[44];

  return v7();
}

uint64_t sub_23B4CA9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HIDWORD(v81) = a6;
  v82 = a4;
  v83 = a5;
  v78 = a1;
  v14 = a12;
  v15 = a9;
  v79 = a11;
  v80 = a3;
  v16 = 8 * a8;
  v86 = a12;
  v87 = a9;
  v88 = a10;
  v84 = a2;
  v90 = (a11 & 0xFFFFFFFFFFFFFFFELL);
  if (a8 == 1)
  {
    v17 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v18 = *(a11 & 0xFFFFFFFFFFFFFFFELL);
    v19 = *(a12 & 0xFFFFFFFFFFFFFFFELL);
    v91 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v92 = v17;
    v93 = v18;
    v94 = v19;
    type metadata accessor for DailyWeatherStatistics();
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v20 = 0;
    v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
    while (a8 != v20)
    {
      v23 = *(v22 + 8 * v20);
      v24 = v90[v20];
      v25 = *((a12 & 0xFFFFFFFFFFFFFFFELL) + 8 * v20);
      v91 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v20);
      v92 = v23;
      v93 = v24;
      v94 = v25;
      *(&v71 + 8 * v20++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for DailyWeatherStatistics();
    }

    swift_getTupleTypeMetadata();
    v14 = v86;
    v15 = v87;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v26 = sub_23B50D364();
  v76 = *(v26 - 8);
  v77 = v26;
  v74 = *(v76 + 64);
  MEMORY[0x28223BE20](v26);
  v75 = &v71 - v28;
  if (a8 == 1)
  {
    v29 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
    v30 = *v90;
    v31 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    v91 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    v92 = v29;
    v93 = v30;
    v94 = v31;
    TupleTypeMetadata = type metadata accessor for DailyWeatherStatisticsQuery();
  }

  else
  {
    MEMORY[0x28223BE20](v27);
    v33 = 0;
    v34 = v15 & 0xFFFFFFFFFFFFFFFELL;
    v35 = v88 & 0xFFFFFFFFFFFFFFFELL;
    v36 = v14 & 0xFFFFFFFFFFFFFFFELL;
    while (a8 != v33)
    {
      v37 = *(v35 + 8 * v33);
      v38 = v90[v33];
      v39 = *(v36 + 8 * v33);
      v91 = *(v34 + 8 * v33);
      v92 = v37;
      v93 = v38;
      v94 = v39;
      *(&v71 + 8 * v33++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for DailyWeatherStatisticsQuery();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v14 = v86;
    v15 = v87;
  }

  v73 = &v71;
  v72 = *(TupleTypeMetadata - 8);
  v40 = *(v72 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v89 = &v71 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = &v71;
  MEMORY[0x28223BE20](v42);
  v44 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v43;
  if (a8)
  {
    v45 = 0;
    v46 = (v43 + 32);
    do
    {
      if (a8 == 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = *v46;
      }

      *&v44[8 * v45++] = a7 + v47;
      v46 += 4;
    }

    while (a8 != v45);
    MEMORY[0x28223BE20](v43);
    v48 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = 0;
    v50 = v87 & 0xFFFFFFFFFFFFFFFELL;
    v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
    v53 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v54 = (v85 + 32);
    do
    {
      if (a8 == 1)
      {
        v55 = 0;
      }

      else
      {
        v55 = *v54;
      }

      v56 = *(v52 + 8 * v49);
      v57 = v90[v49];
      v58 = *(v53 + 8 * v49);
      v59 = *&v44[8 * v49];
      v60 = &v89[v55];
      v91 = *(v50 + 8 * v49);
      v92 = v56;
      v93 = v57;
      v94 = v58;
      v61 = type metadata accessor for DailyWeatherStatisticsQuery();
      (*(*(v61 - 8) + 16))(v60, v59, v61);
      *&v48[8 * v49++] = v60;
      v54 += 4;
    }

    while (a8 != v49);
    v62 = v48;
    v14 = v86;
    v15 = v87;
  }

  else
  {
    v62 = &v95;
  }

  v90 = v62;
  v63 = v75;
  v64 = v76;
  v65 = v77;
  (*(v76 + 16))(v75, v78, v77);
  v66 = (*(v64 + 80) + 56) & ~*(v64 + 80);
  v67 = swift_allocObject();
  *(v67 + 2) = a8;
  *(v67 + 3) = swift_allocateMetadataPack();
  v68 = v88;
  *(v67 + 4) = swift_allocateWitnessTablePack();
  v69 = v79;
  *(v67 + 5) = swift_allocateWitnessTablePack();
  *(v67 + 6) = swift_allocateWitnessTablePack();
  (*(v64 + 32))(&v67[v66], v63, v65);
  WeatherService.fetchDailyStatistics<each A>(for:start:end:shouldFilterOutLeapDay:including:completion:)(v80, v82, v83, BYTE4(v81) & 1, v90, sub_23B4D6E4C, v67, a8, v15, v68, v69, v14, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);

  return (*(v72 + 8))(v89, v85);
}

uint64_t WeatherService.dailySummary<each A>(for:forDaysIn:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_18_20(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    OUTLINED_FUNCTION_130_1();
    v14 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(v15);
    v0 = type metadata accessor for DailyWeatherSummaryQuery();
  }

  else
  {
    OUTLINED_FUNCTION_101_1();
    OUTLINED_FUNCTION_24_13();
    while (v3 != v4)
    {
      OUTLINED_FUNCTION_4_37();
      v16 = type metadata accessor for DailyWeatherSummaryQuery();
      OUTLINED_FUNCTION_138_1(v16);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[24] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[25] = v17;
  v19 = *(v18 + 64);
  v1[26] = OUTLINED_FUNCTION_13_22();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v20);
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_141_1(v23);
  v24 = sub_23B50AEF4();
  v1[28] = v24;
  OUTLINED_FUNCTION_28_0(v24);
  v1[29] = v25;
  v27 = *(v26 + 64);
  v1[30] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4CB108()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_56_4(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_45_6(v8);

  return sub_23B4C8D78(v10, v11, v12);
}

uint64_t sub_23B4CB194()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *(v4 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v9 + 256) = v0;

  sub_23B4D7720(v6, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CB3CC()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_108_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CB4D4()
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = OUTLINED_FUNCTION_216_0(v0[29]);
  v8(v7);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_232_1();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_23B4CB574()
{
  OUTLINED_FUNCTION_188();
  v1 = v0[32];
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];

  OUTLINED_FUNCTION_67_1();

  return v5();
}

uint64_t sub_23B4CB5EC()
{
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_168();
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  (*(v0[29] + 8))(v0[30], v0[28]);
  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_90_1();
  v8(v7);

  v9 = v0[36];
  v10 = v0[30];
  v12 = v0[26];
  v11 = v0[27];

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_232_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_23B4CB6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v92 = a8;
  v88 = a5;
  v89 = a6;
  v86 = a3;
  v87 = a4;
  v90 = a2;
  v16 = a15;
  v17 = a13;
  v84 = a1;
  v85 = a14;
  v18 = 8 * a11;
  v94 = a15;
  v95 = a13;
  v96 = a12;
  v98 = (a14 & 0xFFFFFFFFFFFFFFFELL);
  if (a11 == 1)
  {
    v19 = *(a13 & 0xFFFFFFFFFFFFFFFELL);
    v20 = *(a14 & 0xFFFFFFFFFFFFFFFELL);
    v21 = *(a15 & 0xFFFFFFFFFFFFFFFELL);
    v99 = *(a12 & 0xFFFFFFFFFFFFFFFELL);
    v100 = v19;
    v101 = v20;
    v102 = v21;
    type metadata accessor for DailyWeatherSummary();
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v22 = 0;
    v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
    while (a11 != v22)
    {
      v25 = *((a13 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v26 = v98[v22];
      v27 = *((a15 & 0xFFFFFFFFFFFFFFFELL) + 8 * v22);
      v99 = *(v24 + 8 * v22);
      v100 = v25;
      v101 = v26;
      v102 = v27;
      *(&v75 + 8 * v22++ - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for DailyWeatherSummary();
    }

    swift_getTupleTypeMetadata();
    v16 = v94;
    v17 = v95;
  }

  v83 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v82 = sub_23B50D364();
  v81 = *(v82 - 8);
  v28 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = (&v75 - v30);
  v79 = v31;
  if (a11 == 1)
  {
    v32 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    v33 = *v98;
    v34 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    v99 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
    v100 = v32;
    v101 = v33;
    v102 = v34;
    TupleTypeMetadata = type metadata accessor for DailyWeatherSummaryQuery();
  }

  else
  {
    MEMORY[0x28223BE20](v29);
    v36 = 0;
    v37 = v96 & 0xFFFFFFFFFFFFFFFELL;
    v38 = v17 & 0xFFFFFFFFFFFFFFFELL;
    v39 = v16 & 0xFFFFFFFFFFFFFFFELL;
    while (a11 != v36)
    {
      v40 = *(v38 + 8 * v36);
      v41 = v98[v36];
      v42 = *(v39 + 8 * v36);
      v99 = *(v37 + 8 * v36);
      v100 = v40;
      v101 = v41;
      v102 = v42;
      *(&v75 + 8 * v36++ - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for DailyWeatherSummaryQuery();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v16 = v94;
    v17 = v95;
  }

  v78 = &v75;
  v77 = *(TupleTypeMetadata - 8);
  v43 = *(v77 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v97 = &v75 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = &v75;
  MEMORY[0x28223BE20](v45);
  v47 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a7;
  v93 = v46;
  if (a11)
  {
    v48 = 0;
    v49 = (v46 + 32);
    do
    {
      if (a11 == 1)
      {
        v50 = 0;
      }

      else
      {
        v50 = *v49;
      }

      *&v47[8 * v48++] = a10 + v50;
      v49 += 4;
    }

    while (a11 != v48);
    MEMORY[0x28223BE20](v46);
    v51 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = 0;
    v54 = v53 & 0xFFFFFFFFFFFFFFFELL;
    v55 = v95 & 0xFFFFFFFFFFFFFFFELL;
    v56 = v16 & 0xFFFFFFFFFFFFFFFELL;
    v57 = (v93 + 32);
    do
    {
      if (a11 == 1)
      {
        v58 = 0;
      }

      else
      {
        v58 = *v57;
      }

      v59 = *(v55 + 8 * v52);
      v60 = v98[v52];
      v61 = *(v56 + 8 * v52);
      v62 = *&v47[8 * v52];
      v63 = &v97[v58];
      v99 = *(v54 + 8 * v52);
      v100 = v59;
      v101 = v60;
      v102 = v61;
      v64 = type metadata accessor for DailyWeatherSummaryQuery();
      (*(*(v64 - 8) + 16))(v63, v62, v64);
      *&v51[8 * v52++] = v63;
      v57 += 4;
    }

    while (a11 != v52);
    v65 = v51;
    v16 = v94;
    v17 = v95;
  }

  else
  {
    v65 = &v103;
  }

  v98 = v65;
  v66 = v81;
  v67 = v80;
  v68 = v82;
  (*(v81 + 16))(v80, v84, v82);
  v69 = (*(v66 + 80) + 56) & ~*(v66 + 80);
  v70 = swift_allocObject();
  *(v70 + 2) = a11;
  v71 = v96;
  *(v70 + 3) = swift_allocateMetadataPack();
  *(v70 + 4) = swift_allocateWitnessTablePack();
  v72 = v85;
  *(v70 + 5) = swift_allocateWitnessTablePack();
  *(v70 + 6) = swift_allocateWitnessTablePack();
  (*(v66 + 32))(&v70[v69], v67, v68);
  WeatherService.fetchDailySummary<each A>(for:start:end:startDate:timeZone:including:completion:)(v86, v87, v88, v89, v91, v92, v83, v98, sub_23B4D6C1C, v70, a11, v71, v17, v72, v16, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);

  return (*(v77 + 8))(v97, v93);
}

uint64_t WeatherService.dailySummary<each A>(for:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_47_5(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v13)
  {
    OUTLINED_FUNCTION_130_1();
    v14 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(v15);
    v0 = type metadata accessor for DailyWeatherSummaryQuery();
  }

  else
  {
    v16 = v12;
    OUTLINED_FUNCTION_13_22();
    OUTLINED_FUNCTION_24_13();
    while (v16 != v3)
    {
      OUTLINED_FUNCTION_4_37();
      v17 = type metadata accessor for DailyWeatherSummaryQuery();
      OUTLINED_FUNCTION_138_1(v17);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[23] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[24] = v18;
  v20 = *(v19 + 64);
  v21 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_230_1(v21);
  v22 = sub_23B50AA24();
  v1[26] = v22;
  OUTLINED_FUNCTION_28_0(v22);
  v1[27] = v23;
  v25 = *(v24 + 64);
  v1[28] = OUTLINED_FUNCTION_13_22();
  v26 = sub_23B50AE64();
  v1[29] = v26;
  OUTLINED_FUNCTION_28_0(v26);
  v1[30] = v27;
  v29 = *(v28 + 64);
  v1[31] = OUTLINED_FUNCTION_13_22();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v30);
  v32 = *(v31 + 64);
  v1[32] = OUTLINED_FUNCTION_13_22();
  v33 = sub_23B50AD24();
  v1[33] = v33;
  OUTLINED_FUNCTION_28_0(v33);
  v1[34] = v34;
  v36 = *(v35 + 64);
  v1[35] = OUTLINED_FUNCTION_145_1();
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_247_1(v37);
  v1[38] = OUTLINED_FUNCTION_246_1(v38);
  v39 = sub_23B50AE84();
  v1[39] = v39;
  OUTLINED_FUNCTION_28_0(v39);
  v1[40] = v40;
  v42 = *(v41 + 64);
  v1[41] = OUTLINED_FUNCTION_13_22();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v43);
  v45 = *(v44 + 64);
  v1[42] = OUTLINED_FUNCTION_13_22();
  v46 = sub_23B50AEF4();
  v1[43] = v46;
  OUTLINED_FUNCTION_28_0(v46);
  v1[44] = v47;
  v49 = *(v48 + 64);
  v1[45] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v50, v51, v52, v53, v54, v55, v56, v57);
}

uint64_t sub_23B4CBFB8()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[42];
  v2 = v0[43];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v0[46] = v7;
  *v7 = v8;
  v7[1] = sub_23B4CC054;
  v9 = v0[45];
  v10 = v0[42];
  OUTLINED_FUNCTION_170_1();

  return sub_23B4C8D78(v11, v12, v13);
}

uint64_t sub_23B4CC054()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *(v4 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v9 + 376) = v0;

  sub_23B4D7720(v6, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CC438()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 424) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_165_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CC540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_239_1();
  v45 = v22[51];
  v46 = v22[50];
  v23 = v22[48];
  v24 = v22[49];
  v26 = v22[44];
  v25 = v22[45];
  v27 = v22[40];
  v28 = v22[41];
  v29 = v22[38];
  v43 = v22[39];
  v44 = v22[43];
  v30 = v22[36];
  v47 = v22[42];
  v48 = v22[37];
  v31 = v22[32];
  v32 = v22[33];
  v51 = v31;
  v52 = v22[31];
  v49 = v22[35];
  v50 = v22[28];
  v33 = v22[26];
  v53 = v22[25];
  (*(v22[27] + 8))();
  v23(v30, v32);
  v23(v29, v32);
  (*(v27 + 8))(v28, v43);
  (*(v26 + 8))(v25, v44);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_234_1();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, a20, a21, a22);
}

uint64_t sub_23B4CC6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  v15 = *(v14 + 376);
  OUTLINED_FUNCTION_136_0();
  v27 = v16;
  v28 = v17;

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_129_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t sub_23B4CC760()
{
  v23 = v0[51];
  v24 = v0[50];
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[44];
  v21 = v0[43];
  v22 = v0[45];
  v9 = v0[40];
  v8 = v0[41];
  v10 = OUTLINED_FUNCTION_189_1();
  v20 = v11;
  v12 = v0[24];
  v18 = v13;
  v19 = v0[23];
  (*(v14 + 8))(v10);
  v6(v3, v4);
  v6(v2, v4);
  (*(v9 + 8))(v18, v1);
  (*(v7 + 8))(v22, v21);
  (*(v12 + 8))(v20, v19);

  v15 = v0[53];
  OUTLINED_FUNCTION_136_0();

  OUTLINED_FUNCTION_67_1();

  return v16();
}

uint64_t WeatherService.hourlyStatistics<each A>(for:forHoursIn:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_18_20(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    OUTLINED_FUNCTION_130_1();
    v14 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(v15);
    v0 = type metadata accessor for HourlyWeatherStatisticsQuery();
  }

  else
  {
    OUTLINED_FUNCTION_101_1();
    OUTLINED_FUNCTION_24_13();
    while (v3 != v4)
    {
      OUTLINED_FUNCTION_4_37();
      v16 = type metadata accessor for HourlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_138_1(v16);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[24] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[25] = v17;
  v19 = *(v18 + 64);
  v1[26] = OUTLINED_FUNCTION_13_22();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v20);
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_141_1(v23);
  v24 = sub_23B50AEF4();
  v1[28] = v24;
  OUTLINED_FUNCTION_28_0(v24);
  v1[29] = v25;
  v27 = *(v26 + 64);
  v1[30] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4CCA34()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_56_4(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_45_6(v8);

  return sub_23B4C8D78(v10, v11, v12);
}

uint64_t sub_23B4CCAC0()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *(v4 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v9 + 256) = v0;

  sub_23B4D7720(v6, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t WeatherService.hourlyStatistics<each A>(for:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_47_5(v4, v5, v6, v7, v8, v9, v10, v11);
  if (v13)
  {
    OUTLINED_FUNCTION_130_1();
    v14 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(v15);
    v0 = type metadata accessor for HourlyWeatherStatisticsQuery();
  }

  else
  {
    v16 = v12;
    OUTLINED_FUNCTION_13_22();
    OUTLINED_FUNCTION_24_13();
    while (v16 != v3)
    {
      OUTLINED_FUNCTION_4_37();
      v17 = type metadata accessor for HourlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_138_1(v17);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[23] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[24] = v18;
  v20 = *(v19 + 64);
  v21 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_230_1(v21);
  v22 = sub_23B50AA24();
  v1[26] = v22;
  OUTLINED_FUNCTION_28_0(v22);
  v1[27] = v23;
  v25 = *(v24 + 64);
  v1[28] = OUTLINED_FUNCTION_13_22();
  v26 = sub_23B50AE64();
  v1[29] = v26;
  OUTLINED_FUNCTION_28_0(v26);
  v1[30] = v27;
  v29 = *(v28 + 64);
  v1[31] = OUTLINED_FUNCTION_13_22();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v30);
  v32 = *(v31 + 64);
  v1[32] = OUTLINED_FUNCTION_13_22();
  v33 = sub_23B50AD24();
  v1[33] = v33;
  OUTLINED_FUNCTION_28_0(v33);
  v1[34] = v34;
  v36 = *(v35 + 64);
  v1[35] = OUTLINED_FUNCTION_145_1();
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_247_1(v37);
  v1[38] = OUTLINED_FUNCTION_246_1(v38);
  v39 = sub_23B50AE84();
  v1[39] = v39;
  OUTLINED_FUNCTION_28_0(v39);
  v1[40] = v40;
  v42 = *(v41 + 64);
  v1[41] = OUTLINED_FUNCTION_145_1();
  v1[42] = swift_task_alloc();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v43);
  v45 = *(v44 + 64);
  v1[43] = OUTLINED_FUNCTION_145_1();
  v1[44] = swift_task_alloc();
  v46 = sub_23B50AEF4();
  v1[45] = v46;
  OUTLINED_FUNCTION_28_0(v46);
  v1[46] = v47;
  v49 = *(v48 + 64);
  v1[47] = OUTLINED_FUNCTION_145_1();
  v1[48] = swift_task_alloc();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v50, v51, v52, v53, v54, v55, v56, v57);
}

uint64_t sub_23B4CCFF8()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[44];
  v2 = v0[45];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v0[49] = v7;
  *v7 = v8;
  v7[1] = sub_23B4CD094;
  v9 = v0[48];
  v10 = v0[44];
  OUTLINED_FUNCTION_170_1();

  return sub_23B4C8D78(v11, v12, v13);
}

uint64_t sub_23B4CD094()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *(v4 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v9 + 400) = v0;

  sub_23B4D7720(v6, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CD510()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 472);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 480) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_165_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CD618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_236_1();
  v51 = v28[55];
  v52 = v28[56];
  v29 = v28[54];
  v54 = v29;
  v55 = v28[58];
  v53 = v28[53];
  v30 = v28[51];
  v31 = v28[52];
  v32 = v28[48];
  v56 = v28[47];
  v57 = v28[57];
  v33 = v28[45];
  v34 = v28[42];
  v58 = v28[44];
  v59 = v28[43];
  v36 = v28[38];
  v35 = v28[39];
  v37 = v28[36];
  v60 = v28[41];
  v61 = v28[37];
  v62 = v28[35];
  v38 = v28[33];
  v64 = v28[32];
  v65 = v28[31];
  v63 = v28[28];
  v39 = v28[26];
  v66 = v28[25];
  (*(v28[27] + 8))();
  v40 = OUTLINED_FUNCTION_187_1();
  v30(v40);
  (v30)(v36, v38);
  v41 = OUTLINED_FUNCTION_25_4();
  v51(v41);
  v53(v32, v33);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_233_1();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, a26, a27, a28);
}

uint64_t sub_23B4CD798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_237_0();
  OUTLINED_FUNCTION_140_1();
  v17 = v16[50];
  OUTLINED_FUNCTION_155_1();
  v30 = v19;
  v31 = v18;
  v32 = v16[28];
  v33 = v16[25];
  v34 = v20;

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_3_25();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, a14, a15, a16);
}

uint64_t sub_23B4CD87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_181_1();
  v56 = v20[58];
  v58 = v20[57];
  v49 = v20[55];
  v50 = v20[56];
  v52 = v20[53];
  v54 = v20[54];
  v25 = v20[51];
  v24 = v20[52];
  v47 = v20[45];
  v48 = v20[48];
  v26 = v20[42];
  v27 = OUTLINED_FUNCTION_189_1();
  v46 = v28;
  v29 = v20[23];
  v30 = v20[24];
  (*(v31 + 8))(v27);
  v25(v22, v23);
  v25(v21, v23);
  v32 = OUTLINED_FUNCTION_195();
  v49(v32);
  v52(v48, v47);
  (*(v30 + 8))(v46, v29);

  v33 = v20[60];
  OUTLINED_FUNCTION_155_1();
  v51 = v35;
  v53 = v34;
  v55 = v20[28];
  v57 = v20[25];
  v59 = v36;

  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_144_1();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, v46, v47, v48, v49, v51, v53, v55, v57, v59, a18, a19, a20);
}

uint64_t WeatherService.hourlyStatistics<each A>(for:startHour:endHour:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_8_27(v7, v8, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    v16 = *(v1 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(*(v3 & 0xFFFFFFFFFFFFFFFELL));
    v0 = type metadata accessor for HourlyWeatherStatisticsQuery();
  }

  else
  {
    OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_42_9();
    while (v4 != v5)
    {
      v17 = *(v1 + 8 * v5);
      v18 = *(v6 + 8 * v5);
      v19 = *(v0 + 8 * v5);
      OUTLINED_FUNCTION_9_30(*(v3 + 8 * v5));
      v20 = type metadata accessor for HourlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_193_1(v20);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    OUTLINED_FUNCTION_164_1();
  }

  v2[25] = v0;
  OUTLINED_FUNCTION_43_9();
  v2[26] = v21;
  v23 = *(v22 + 64);
  v2[27] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

void sub_23B4CDB04()
{
  if ((v1[17] - 8785) >= 0xFFFFFFFFFFFFDDB0 && (v1[16] - 8785) >= 0xFFFFFFFFFFFFDDB0)
  {
    OUTLINED_FUNCTION_129_1();
    v4 = OUTLINED_FUNCTION_241_1();
    v1[28] = v4;
    if (v0)
    {
      OUTLINED_FUNCTION_116_1();
    }

    v30 = swift_task_alloc();
    v1[29] = v30;
    if (v0)
    {
      v5 = v1[21];
      v6 = v1[20] & 0xFFFFFFFFFFFFFFFELL;
      v8 = v1[22];
      v7 = v1[23];
      OUTLINED_FUNCTION_29_11();
      do
      {
        if (v1[19] != 1)
        {
          v9 = *(v1[25] + v2);
        }

        OUTLINED_FUNCTION_28_10();
        OUTLINED_FUNCTION_188_1();
        OUTLINED_FUNCTION_3_45();
        v10 = type metadata accessor for HourlyWeatherStatisticsQuery();
        OUTLINED_FUNCTION_2(v10);
        v12 = *(v11 + 16);
        v13 = OUTLINED_FUNCTION_90_1();
        v14(v13);
        OUTLINED_FUNCTION_27_14(v30);
      }

      while (!v15);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v1[30] = v16;
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_78_2(v16);
    v19 = v1[16];
    v20 = v1[17];
    OUTLINED_FUNCTION_113_1(v18);
    OUTLINED_FUNCTION_217_1(v21, v22, v23, v24, v25, v26, v27, v28, v4);
    OUTLINED_FUNCTION_99_1();

    sub_23B4CDD74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23B4CDC6C()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 248) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_73_2();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CDD74()
{
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_232_0();
  OUTLINED_FUNCTION_89_0(v8, v9, v10, v11, v12, v13, v14, v15);
  if (v16)
  {
    v17 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(*(v0 & 0xFFFFFFFFFFFFFFFELL));
    v3 = type metadata accessor for HourlyWeatherStatisticsQuery();
  }

  else
  {
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_160_0();
    OUTLINED_FUNCTION_229_1();
    while (v4 != v3)
    {
      v18 = *(v7 + 8 * v3);
      v19 = *(v6 + 8 * v3);
      OUTLINED_FUNCTION_227_1();
      OUTLINED_FUNCTION_9_30(v20);
      v21 = type metadata accessor for HourlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_157_1(v21);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_250_1();
  }

  v2[37] = v3;
  OUTLINED_FUNCTION_111_0();
  v2[38] = v22;
  v24 = *(v23 + 64);
  v2[39] = OUTLINED_FUNCTION_13_22();
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_39_9();
    OUTLINED_FUNCTION_77_2(v25);
    v1 = type metadata accessor for HourlyWeatherStatistics();
  }

  else
  {
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_160_0();
    v26 = v0 & 0xFFFFFFFFFFFFFFFELL;
    v27 = v5 & 0xFFFFFFFFFFFFFFFELL;
    while (v4 != v3)
    {
      v28 = *(v26 + 8 * v3);
      v29 = *(v27 + 8 * v3);
      OUTLINED_FUNCTION_227_1();
      OUTLINED_FUNCTION_76_1(v30);
      v31 = type metadata accessor for HourlyWeatherStatistics();
      OUTLINED_FUNCTION_157_1(v31);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_120_1();
  }

  v2[40] = v1;
  OUTLINED_FUNCTION_151_1();
  v33 = *(v32 + 64);
  v2[41] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_129_0();
  return OUTLINED_FUNCTION_240_1();
}

uint64_t sub_23B4CE034()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 352) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_168_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CE214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HIDWORD(v81) = a6;
  v82 = a4;
  v83 = a5;
  v78 = a1;
  v14 = a12;
  v15 = a9;
  v79 = a11;
  v80 = a3;
  v16 = 8 * a8;
  v86 = a12;
  v87 = a9;
  v88 = a10;
  v84 = a2;
  v90 = (a11 & 0xFFFFFFFFFFFFFFFELL);
  if (a8 == 1)
  {
    v17 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v18 = *(a11 & 0xFFFFFFFFFFFFFFFELL);
    v19 = *(a12 & 0xFFFFFFFFFFFFFFFELL);
    v91 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v92 = v17;
    v93 = v18;
    v94 = v19;
    type metadata accessor for HourlyWeatherStatistics();
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v20 = 0;
    v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
    while (a8 != v20)
    {
      v23 = *(v22 + 8 * v20);
      v24 = v90[v20];
      v25 = *((a12 & 0xFFFFFFFFFFFFFFFELL) + 8 * v20);
      v91 = *((a9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v20);
      v92 = v23;
      v93 = v24;
      v94 = v25;
      *(&v71 + 8 * v20++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for HourlyWeatherStatistics();
    }

    swift_getTupleTypeMetadata();
    v14 = v86;
    v15 = v87;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v26 = sub_23B50D364();
  v76 = *(v26 - 8);
  v77 = v26;
  v74 = *(v76 + 64);
  MEMORY[0x28223BE20](v26);
  v75 = &v71 - v28;
  if (a8 == 1)
  {
    v29 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
    v30 = *v90;
    v31 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    v91 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    v92 = v29;
    v93 = v30;
    v94 = v31;
    TupleTypeMetadata = type metadata accessor for HourlyWeatherStatisticsQuery();
  }

  else
  {
    MEMORY[0x28223BE20](v27);
    v33 = 0;
    v34 = v15 & 0xFFFFFFFFFFFFFFFELL;
    v35 = v88 & 0xFFFFFFFFFFFFFFFELL;
    v36 = v14 & 0xFFFFFFFFFFFFFFFELL;
    while (a8 != v33)
    {
      v37 = *(v35 + 8 * v33);
      v38 = v90[v33];
      v39 = *(v36 + 8 * v33);
      v91 = *(v34 + 8 * v33);
      v92 = v37;
      v93 = v38;
      v94 = v39;
      *(&v71 + 8 * v33++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for HourlyWeatherStatisticsQuery();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v14 = v86;
    v15 = v87;
  }

  v73 = &v71;
  v72 = *(TupleTypeMetadata - 8);
  v40 = *(v72 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v89 = &v71 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = &v71;
  MEMORY[0x28223BE20](v42);
  v44 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v43;
  if (a8)
  {
    v45 = 0;
    v46 = (v43 + 32);
    do
    {
      if (a8 == 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = *v46;
      }

      *&v44[8 * v45++] = a7 + v47;
      v46 += 4;
    }

    while (a8 != v45);
    MEMORY[0x28223BE20](v43);
    v48 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = 0;
    v50 = v87 & 0xFFFFFFFFFFFFFFFELL;
    v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
    v53 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v54 = (v85 + 32);
    do
    {
      if (a8 == 1)
      {
        v55 = 0;
      }

      else
      {
        v55 = *v54;
      }

      v56 = *(v52 + 8 * v49);
      v57 = v90[v49];
      v58 = *(v53 + 8 * v49);
      v59 = *&v44[8 * v49];
      v60 = &v89[v55];
      v91 = *(v50 + 8 * v49);
      v92 = v56;
      v93 = v57;
      v94 = v58;
      v61 = type metadata accessor for HourlyWeatherStatisticsQuery();
      (*(*(v61 - 8) + 16))(v60, v59, v61);
      *&v48[8 * v49++] = v60;
      v54 += 4;
    }

    while (a8 != v49);
    v62 = v48;
    v14 = v86;
    v15 = v87;
  }

  else
  {
    v62 = &v95;
  }

  v90 = v62;
  v63 = v75;
  v64 = v76;
  v65 = v77;
  (*(v76 + 16))(v75, v78, v77);
  v66 = (*(v64 + 80) + 56) & ~*(v64 + 80);
  v67 = swift_allocObject();
  *(v67 + 2) = a8;
  *(v67 + 3) = swift_allocateMetadataPack();
  v68 = v88;
  *(v67 + 4) = swift_allocateWitnessTablePack();
  v69 = v79;
  *(v67 + 5) = swift_allocateWitnessTablePack();
  *(v67 + 6) = swift_allocateWitnessTablePack();
  (*(v64 + 32))(&v67[v66], v63, v65);
  WeatherService.fetchHourlyStatistics<each A>(for:start:end:shouldFilterOutLeapDay:including:completion:)(v80, v82, v83, BYTE4(v81) & 1, v90, sub_23B4D6BAC, v67, a8, v15, v68, v69, v14, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);

  return (*(v72 + 8))(v89, v85);
}

uint64_t WeatherService.monthlyStatistics<each A>(for:including:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_129_1();
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v11[21] = v19;
  v11[22] = v10;
  v11[19] = v14;
  v11[20] = v15;
  v11[17] = v12;
  v11[18] = v13;
  v11[15] = v20;
  v11[16] = v21;
  v22 = (v19 & 0xFFFFFFFFFFFFFFFELL);
  v11[14] = v23;
  if (v12 == 1)
  {
    v24 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    v25 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    v26 = *v22;
    v11[2] = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    v11[3] = v24;
    v11[4] = v25;
    v11[5] = v26;
    TupleTypeMetadata = type metadata accessor for MonthlyWeatherStatisticsQuery();
    v28 = 8;
    v29 = 16;
  }

  else
  {
    v30 = v12;
    v28 = 8 * v12;
    v29 = (8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    v31 = swift_task_alloc();
    v32 = 0;
    v33 = v18 & 0xFFFFFFFFFFFFFFFELL;
    v34 = v17 & 0xFFFFFFFFFFFFFFFELL;
    v35 = v16 & 0xFFFFFFFFFFFFFFFELL;
    while (v30 != v32)
    {
      v36 = *(v34 + 8 * v32);
      v37 = *(v35 + 8 * v32);
      v38 = v22[v32];
      OUTLINED_FUNCTION_9_30(*(v33 + 8 * v32));
      *(v31 + 8 * v32++) = type metadata accessor for MonthlyWeatherStatisticsQuery();
    }

    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v11[23] = v29;
  v11[24] = v28;
  v11[25] = TupleTypeMetadata;
  v39 = *(TupleTypeMetadata - 8);
  v11[26] = v39;
  v40 = *(v39 + 64);
  v11[27] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_99_1();

  return MEMORY[0x2822009F8](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t WeatherService.monthlyStatistics<each A>(for:forMonthsIn:including:)()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_18_20(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v13)
  {
    OUTLINED_FUNCTION_130_1();
    v14 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(v15);
    v0 = type metadata accessor for MonthlyWeatherStatisticsQuery();
  }

  else
  {
    OUTLINED_FUNCTION_101_1();
    OUTLINED_FUNCTION_24_13();
    while (v3 != v4)
    {
      OUTLINED_FUNCTION_4_37();
      v16 = type metadata accessor for MonthlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_138_1(v16);
    }

    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_164_1();
  }

  v1[24] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[25] = v17;
  v19 = *(v18 + 64);
  v1[26] = OUTLINED_FUNCTION_13_22();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v20);
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_141_1(v23);
  v24 = sub_23B50AEF4();
  v1[28] = v24;
  OUTLINED_FUNCTION_28_0(v24);
  v1[29] = v25;
  v27 = *(v26 + 64);
  v1[30] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4CEC44()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_56_4(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_45_6(v8);

  return sub_23B4C8D78(v10, v11, v12);
}

uint64_t sub_23B4CECD0()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_50_3();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *(v4 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v9 + 256) = v0;

  sub_23B4D7720(v6, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CEF08()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_8_27(v7, v8, v9, v10, v11, v12, v13, v14);
  if (v15)
  {
    v16 = *(v1 & 0xFFFFFFFFFFFFFFFELL);
    OUTLINED_FUNCTION_1_39(*(v3 & 0xFFFFFFFFFFFFFFFELL));
    v0 = type metadata accessor for MonthlyWeatherStatisticsQuery();
  }

  else
  {
    OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_42_9();
    while (v4 != v5)
    {
      v17 = *(v1 + 8 * v5);
      v18 = *(v6 + 8 * v5);
      v19 = *(v0 + 8 * v5);
      OUTLINED_FUNCTION_9_30(*(v3 + 8 * v5));
      v20 = type metadata accessor for MonthlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_193_1(v20);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    OUTLINED_FUNCTION_164_1();
  }

  v2[25] = v0;
  OUTLINED_FUNCTION_43_9();
  v2[26] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_141_1(v24);
  v25 = type metadata accessor for StatisticsSpanFactory();
  OUTLINED_FUNCTION_3(v25);
  v27 = *(v26 + 64);
  v2[28] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4CF028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_140_1();
  v12 = OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_2(v12);
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_146();
  v16(v15);
  sub_23B4E6DD4();
  v17 = v11[19];
  v11[29] = swift_task_alloc();
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_159_1();
    memcpy(v18, v19, 8 * v17);
  }

  v58 = swift_task_alloc();
  v11[30] = v58;
  if (v17)
  {
    v20 = (v11[20] & 0xFFFFFFFFFFFFFFFELL);
    v21 = (v11[21] & 0xFFFFFFFFFFFFFFFELL);
    v22 = (v11[22] & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v11[23] & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      if (v11[19] != 1)
      {
        v24 = *(v11[25] + 32);
      }

      v25 = *v20;
      v26 = *v21;
      v27 = *v22;
      v28 = *v23;
      OUTLINED_FUNCTION_188_1();
      v31 = v30 + v29;
      v33 = *v32;
      OUTLINED_FUNCTION_12_25();
      v34 = type metadata accessor for MonthlyWeatherStatisticsQuery();
      OUTLINED_FUNCTION_2(v34);
      v36 = *(v35 + 16);
      v37 = OUTLINED_FUNCTION_195();
      v38(v37);
      *v58 = v31;
      OUTLINED_FUNCTION_115_1();
    }

    while (!v39);
  }

  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_56_4(v40);
  *v41 = v42;
  v41[1] = sub_23B4BEE50;
  v43 = v11[24];
  v44 = v11[21];
  v45 = v11[19];
  v46 = v11[20];
  v47 = v11[15];
  v59 = v11[22];
  v60 = v11[23];
  OUTLINED_FUNCTION_3_25();

  return WeatherService.monthlyStatistics<each A>(for:startMonth:endMonth:including:)(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11);
}

uint64_t sub_23B4CF250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v83 = a4;
  v84 = a5;
  v80 = a1;
  v15 = a11;
  v81 = a10;
  v82 = a3;
  v16 = 8 * a7;
  v88 = a9;
  v89 = a8;
  v87 = a11;
  v91 = (a10 & 0xFFFFFFFFFFFFFFFELL);
  if (a7 == 1)
  {
    v17 = *(a9 & 0xFFFFFFFFFFFFFFFELL);
    v18 = *(a10 & 0xFFFFFFFFFFFFFFFELL);
    v19 = *(a11 & 0xFFFFFFFFFFFFFFFELL);
    v92 = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    v93 = v17;
    v94 = v18;
    v95 = v19;
    type metadata accessor for MonthlyWeatherStatistics();
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v20 = 0;
    v21 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
    while (a7 != v20)
    {
      v24 = *(v23 + 8 * v20);
      v25 = v91[v20];
      v26 = *((a11 & 0xFFFFFFFFFFFFFFFELL) + 8 * v20);
      v92 = *(v21 + 8 * v20);
      v93 = v24;
      v94 = v25;
      v95 = v26;
      *(&v72 + 8 * v20++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for MonthlyWeatherStatistics();
    }

    swift_getTupleTypeMetadata();
    v11 = v89;
    v15 = v87;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v27 = sub_23B50D364();
  v78 = *(v27 - 8);
  v79 = v27;
  v76 = *(v78 + 64);
  MEMORY[0x28223BE20](v27);
  v77 = &v72 - v29;
  v85 = a2;
  if (a7 == 1)
  {
    v30 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
    v31 = *v91;
    v32 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    v92 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    v93 = v30;
    v94 = v31;
    v95 = v32;
    TupleTypeMetadata = type metadata accessor for MonthlyWeatherStatisticsQuery();
  }

  else
  {
    MEMORY[0x28223BE20](v28);
    v34 = 0;
    v35 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v36 = v88 & 0xFFFFFFFFFFFFFFFELL;
    v37 = v15 & 0xFFFFFFFFFFFFFFFELL;
    while (a7 != v34)
    {
      v38 = *(v36 + 8 * v34);
      v39 = v91[v34];
      v40 = *(v37 + 8 * v34);
      v92 = *(v35 + 8 * v34);
      v93 = v38;
      v94 = v39;
      v95 = v40;
      *(&v72 + 8 * v34++ - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = type metadata accessor for MonthlyWeatherStatisticsQuery();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v11 = v89;
    v15 = v87;
  }

  v75 = &v72;
  v74 = *(TupleTypeMetadata - 8);
  v41 = *(v74 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v90 = &v72 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = &v72;
  MEMORY[0x28223BE20](v43);
  v45 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v44;
  if (a7)
  {
    v46 = 0;
    v47 = (v44 + 32);
    do
    {
      if (a7 == 1)
      {
        v48 = 0;
      }

      else
      {
        v48 = *v47;
      }

      *&v45[8 * v46++] = a6 + v48;
      v47 += 4;
    }

    while (a7 != v46);
    MEMORY[0x28223BE20](v44);
    v49 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = 0;
    v51 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v53 = v52 & 0xFFFFFFFFFFFFFFFELL;
    v54 = v87 & 0xFFFFFFFFFFFFFFFELL;
    v55 = (v86 + 32);
    do
    {
      if (a7 == 1)
      {
        v56 = 0;
      }

      else
      {
        v56 = *v55;
      }

      v57 = *(v53 + 8 * v50);
      v58 = v91[v50];
      v59 = *(v54 + 8 * v50);
      v60 = *&v45[8 * v50];
      v61 = &v90[v56];
      v92 = *(v51 + 8 * v50);
      v93 = v57;
      v94 = v58;
      v95 = v59;
      v62 = type metadata accessor for MonthlyWeatherStatisticsQuery();
      (*(*(v62 - 8) + 16))(v61, v60, v62);
      *&v49[8 * v50++] = v61;
      v55 += 4;
    }

    while (a7 != v50);
    v15 = v87;
  }

  else
  {
    v49 = &v96;
  }

  v63 = v77;
  v64 = v78;
  v65 = v79;
  (*(v78 + 16))(v77, v80, v79);
  v66 = (*(v64 + 80) + 56) & ~*(v64 + 80);
  v67 = swift_allocObject();
  *(v67 + 2) = a7;
  *(v67 + 3) = swift_allocateMetadataPack();
  v68 = v88;
  *(v67 + 4) = swift_allocateWitnessTablePack();
  v69 = v81;
  *(v67 + 5) = swift_allocateWitnessTablePack();
  *(v67 + 6) = swift_allocateWitnessTablePack();
  (*(v64 + 32))(&v67[v66], v63, v65);
  WeatherService.fetchMonthlyStatistics<each A>(for:start:end:including:completion:)(v82, v83, v84, v49, sub_23B4D8110, v67, a7, v89, v68, v69, v15, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);

  return (*(v74 + 8))(v90, v86);
}

void sub_23B4CF880()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_207_0();
  v9 = (v8 & 0xFFFFFFFFFFFFFFFELL);
  if (v4 == 1)
  {
    v10 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    v11 = *v9;
    v12 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    v13 = OUTLINED_FUNCTION_44_5(*(v5 & 0xFFFFFFFFFFFFFFFELL));
    v2(v13);
    swift_checkMetadataState();
  }

  else
  {
    v14 = v4;
    v27[1] = v27;
    MEMORY[0x28223BE20](v3);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_171();
    v15 = 0;
    v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
    v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
    v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
    while (v14 != v15)
    {
      v22 = *(v19 + 8 * v15);
      v23 = v9[v15];
      v24 = *(v21 + 8 * v15);
      v25 = OUTLINED_FUNCTION_44_5(*(v17 + 8 * v15));
      *(v0 + 8 * v15++) = (v2)(v25);
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_65_0();
  v26 = sub_23B50D364();
  OUTLINED_FUNCTION_245_0(v26);
  OUTLINED_FUNCTION_20();
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G>(for:including:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_188();
  *(v1 + 240) = v36;
  *(v1 + 248) = v0;
  *(v1 + 224) = v34;
  *(v1 + 232) = v35;
  *(v1 + 208) = v32;
  *(v1 + 216) = v33;
  *(v1 + 192) = v30;
  *(v1 + 200) = v31;
  *(v1 + 184) = v29;
  *(v1 + 168) = v28;
  *(v1 + 152) = v27;
  *(v1 + 136) = v26;
  *(v1 + 120) = v2;
  *(v1 + 128) = v3;
  *(v1 + 104) = v4;
  *(v1 + 112) = v5;
  *(v1 + 88) = v6;
  *(v1 + 96) = v7;
  *(v1 + 72) = v8;
  *(v1 + 80) = v9;
  OUTLINED_FUNCTION_109_1();
  *(v1 + 40) = v10;
  *(v1 + 48) = v11;
  *(v1 + 56) = v12;
  *(v1 + 64) = v13;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 256) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  v16 = *(v15 + 64);
  *(v1 + 264) = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions();
  OUTLINED_FUNCTION_3(Options);
  v19 = *(v18 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 280) = v20;
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_12_23(v20);

  return sub_23B4C15EC(v22, v23);
}

uint64_t sub_23B4CFAF4()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v2 = *(v1 + 280);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_23B4CFBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = *(v14 + 272);
  v16 = swift_task_alloc();
  *(v14 + 288) = v16;
  v17 = *(v14 + 128);
  v18 = *(v14 + 144);
  v19 = *(v14 + 160);
  v20 = *(v14 + 176);
  v21 = OUTLINED_FUNCTION_184_1(v16, *(v14 + 192), *(v14 + 208), *(v14 + 224), *(v14 + 240));
  v21[5] = v22;
  v21[6] = v23;
  v21[7] = v24;
  v21[8] = v25;
  v21[9].n128_u64[0] = v15;
  v26 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 296) = v27;
  *v27 = v28;
  v27[1] = sub_23B4CFCC8;
  v30 = *(v14 + 256);
  v29 = *(v14 + 264);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4CFCC8()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 296);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 304) = v0;

  if (!v0)
  {
    v9 = *(v3 + 288);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4CFDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_239_1();
  v23 = v22[33];
  v24 = v22[32];
  v68 = v22[30];
  v65 = v22[29];
  v26 = v22[27];
  v25 = v22[28];
  v28 = v22[25];
  v27 = v22[26];
  v29 = v22[24];
  v69 = v22[15];
  v70 = v22[34];
  v66 = v22[14];
  v30 = v22[13];
  v31 = v22[10];
  v32 = v22[11];
  v33 = v22[9];
  v34 = v24[12];
  v35 = v24[16];
  v63 = v24[20];
  v64 = v22[12];
  OUTLINED_FUNCTION_219_1(v24);
  v67 = *(v36 + 128);
  OUTLINED_FUNCTION_25_11(v37, v38, v39);
  (*(v40 + 32))();
  OUTLINED_FUNCTION_48(v28);
  (*(v41 + 32))(v31, v23 + v34, v28);
  OUTLINED_FUNCTION_48(v27);
  (*(v42 + 32))(v32, v23 + v35, v27);
  OUTLINED_FUNCTION_48(v26);
  (*(v43 + 32))(v64, v23 + v63, v26);
  OUTLINED_FUNCTION_48(v25);
  v45 = (*(v44 + 32))(a12, v23 + a11, v25);
  OUTLINED_FUNCTION_25_11(v45, v46, v65);
  v49 = (*(v47 + 32))(v66, v23 + v48);
  OUTLINED_FUNCTION_25_11(v49, v50, v68);
  (*(v51 + 32))(v69, v23 + v52);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v70, v53);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_234_1();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, v63, v64, a11, a12, a13, v65, v66, v67, v68, v69, v70, a20, a21, a22);
}

uint64_t sub_23B4CFFD4()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v3, v4);

  OUTLINED_FUNCTION_67_1();
  v6 = v0[38];

  return v5();
}

uint64_t sub_23B4D0050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v45 = a7;
  v46 = a8;
  v42 = a5;
  v43 = a6;
  v38 = a3;
  v39 = a4;
  v44 = a2;
  v40 = a10;
  v41 = a9;
  v34 = a17;
  v35 = a18;
  v36 = a16;
  v37 = a11;
  v47 = a12;
  v48 = a13;
  v32 = a12;
  v49 = a14;
  v50 = a15;
  v51 = a16;
  v52 = a17;
  v53 = a18;
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v33 = sub_23B50D364();
  v19 = *(v33 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v33);
  v23 = &v31 - v22;
  (*(v19 + 16))(&v31 - v22, a1, v21);
  v24 = (*(v19 + 80) + 72) & ~*(v19 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = a12;
  *(v25 + 3) = a13;
  *(v25 + 4) = a14;
  *(v25 + 5) = a15;
  v26 = v35;
  v27 = v36;
  v28 = v33;
  v29 = v34;
  *(v25 + 6) = v36;
  *(v25 + 7) = v29;
  *(v25 + 8) = v26;
  (*(v19 + 32))(&v25[v24], v23, v28);
  WeatherService.fetchWeather<A, B, C, D, E, F, G>(for:including:_:_:_:_:_:_:options:completion:)(v38, v39, v42, v43, v45, v46, v41, v40, v37, sub_23B4D6AB0, v25, v32, a13, a14, a15, v27, v29, v26, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_23B4D027C(uint64_t a1)
{
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v2 = sub_23B50D364();
  return sub_23B4C4AF8(a1, v2);
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G, H>(for:including:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_188();
  *(v1 + 272) = v35;
  *(v1 + 280) = v0;
  *(v1 + 256) = v33;
  *(v1 + 264) = v34;
  *(v1 + 240) = v31;
  *(v1 + 248) = v32;
  *(v1 + 224) = v29;
  *(v1 + 232) = v30;
  *(v1 + 208) = v27;
  *(v1 + 216) = v28;
  *(v1 + 200) = v26;
  *(v1 + 184) = v25;
  *(v1 + 168) = v24;
  *(v1 + 152) = v23;
  *(v1 + 136) = v2;
  *(v1 + 144) = v22;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  *(v1 + 104) = v5;
  *(v1 + 112) = v6;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  *(v1 + 16) = v28;
  *(v1 + 24) = v29;
  *(v1 + 32) = v30;
  *(v1 + 40) = v31;
  *(v1 + 48) = v32;
  *(v1 + 56) = v33;
  *(v1 + 64) = v34;
  *(v1 + 72) = v35;
  *(v1 + 80) = v9;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 288) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  v12 = *(v11 + 64);
  *(v1 + 296) = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions();
  OUTLINED_FUNCTION_3(Options);
  v15 = *(v14 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 312) = v16;
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_12_23(v16);

  return sub_23B4C15EC(v18, v19);
}

uint64_t sub_23B4D0468()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v2 = *(v1 + 312);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_23B4D054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168();
  v15 = *(v14 + 304);
  v16 = *(v14 + 280);
  v17 = *(v14 + 208);
  v18 = swift_task_alloc();
  *(v14 + 320) = v18;
  v19 = *(v14 + 144);
  v20 = *(v14 + 160);
  v21 = *(v14 + 176);
  v22 = *(v14 + 192);
  v23 = OUTLINED_FUNCTION_184_1(v18, *(v14 + 216), *(v14 + 232), *(v14 + 248), *(v14 + 264));
  v23[5].n128_u64[0] = v16;
  *(v23 + 88) = v24;
  *(v23 + 104) = v25;
  *(v23 + 120) = v26;
  *(v23 + 136) = v27;
  v23[9].n128_u64[1] = v17;
  v23[10].n128_u64[0] = v15;
  v28 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 328) = v29;
  *v29 = v30;
  v29[1] = sub_23B4D0664;
  v32 = *(v14 + 288);
  v31 = *(v14 + 296);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D0664()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 336) = v0;

  if (!v0)
  {
    v9 = *(v3 + 320);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D0764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_238_0();
  v27 = v26[37];
  v86 = v26[38];
  v28 = v26[36];
  v84 = v26[34];
  v81 = v26[33];
  v29 = v26[31];
  v78 = v26[32];
  v31 = v26[29];
  v30 = v26[30];
  v32 = v26[27];
  v33 = v26[28];
  v85 = v26[17];
  v83 = v26[16];
  v35 = v26[14];
  v34 = v26[15];
  v36 = v26[12];
  v74 = v26[13];
  v37 = v26[10];
  v38 = v26[11];
  v39 = *(v28 + 48);
  v40 = *(v28 + 64);
  OUTLINED_FUNCTION_176_1(v28);
  v75 = v41;
  v76 = v42;
  v77 = v43[28];
  v79 = v44;
  v80 = v43[32];
  v82 = v43[36];
  OUTLINED_FUNCTION_25_11(v45, v46, v47);
  (*(v48 + 32))();
  OUTLINED_FUNCTION_48(v33);
  (*(v49 + 32))(v38, v27 + v39, v33);
  OUTLINED_FUNCTION_48(v31);
  (*(v50 + 32))(v36, v27 + v40, v31);
  OUTLINED_FUNCTION_48(v30);
  (*(v51 + 32))(v74, v27 + a10, v30);
  OUTLINED_FUNCTION_48(v29);
  v53 = (*(v52 + 32))(v76, v27 + v75, v29);
  OUTLINED_FUNCTION_25_11(v53, v54, v78);
  v57 = (*(v55 + 32))(v79, v27 + v56);
  OUTLINED_FUNCTION_25_11(v57, v58, v81);
  v61 = (*(v59 + 32))(v83, v27 + v60);
  OUTLINED_FUNCTION_25_11(v61, v62, v84);
  (*(v63 + 32))(v85, v27 + v82);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v86, v64);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_231_1();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, a24, a25, a26);
}

uint64_t sub_23B4D09B8()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v3, v4);

  OUTLINED_FUNCTION_67_1();
  v6 = v0[42];

  return v5();
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G, H>(for:including:_:_:_:_:_:_:_:with:)()
{
  OUTLINED_FUNCTION_71();
  *(v1 + 280) = v29;
  *(v1 + 288) = v0;
  *(v1 + 264) = v27;
  *(v1 + 272) = v28;
  *(v1 + 248) = v25;
  *(v1 + 256) = v26;
  *(v1 + 232) = v23;
  *(v1 + 240) = v24;
  *(v1 + 216) = v21;
  *(v1 + 224) = v22;
  *(v1 + 208) = v20;
  *(v1 + 176) = v18;
  *(v1 + 192) = v19;
  *(v1 + 144) = v16;
  *(v1 + 160) = v17;
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 96) = v6;
  *(v1 + 104) = v7;
  *(v1 + 80) = v8;
  *(v1 + 88) = v9;
  *(v1 + 16) = v22;
  *(v1 + 24) = v23;
  *(v1 + 32) = v24;
  *(v1 + 40) = v25;
  *(v1 + 48) = v26;
  *(v1 + 56) = v27;
  *(v1 + 64) = v28;
  *(v1 + 72) = v29;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 296) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  v12 = *(v11 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_13_22();
  v13 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_23B4D0B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = *(v14 + 288);
  v16 = swift_task_alloc();
  *(v14 + 312) = v16;
  v17 = *(v14 + 240);
  v18 = *(v14 + 256);
  v19 = *(v14 + 272);
  v20 = *(v14 + 144);
  v21 = *(v14 + 160);
  v22 = *(v14 + 176);
  v23 = *(v14 + 192);
  v24 = *(v14 + 208);
  *(v16 + 16) = *(v14 + 224);
  *(v16 + 32) = v17;
  *(v16 + 48) = v18;
  *(v16 + 64) = v19;
  *(v16 + 80) = v15;
  *(v16 + 88) = v20;
  *(v16 + 104) = v21;
  *(v16 + 120) = v22;
  *(v16 + 136) = v23;
  *(v16 + 152) = v24;
  v25 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 320) = v26;
  *v26 = v27;
  v26[1] = sub_23B4D0C20;
  v29 = *(v14 + 296);
  v28 = *(v14 + 304);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D0C20()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 328) = v0;

  if (!v0)
  {
    v9 = *(v3 + 312);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D0D20(uint64_t a1, uint64_t a2)
{
  v3 = v2[37];
  v4 = v2[38];
  v44 = v2[35];
  v41 = v2[34];
  v5 = v2[32];
  v38 = v2[33];
  v7 = v2[30];
  v6 = v2[31];
  v8 = v2[29];
  v45 = v2[17];
  v43 = v2[16];
  v9 = v2[12];
  v34 = v2[13];
  v10 = v2[11];
  v11 = v3[12];
  v12 = v3[16];
  v33 = v3[20];
  v35 = v3[24];
  v36 = v2[14];
  v37 = v3[28];
  v39 = v2[15];
  v40 = v3[32];
  v42 = v3[36];
  OUTLINED_FUNCTION_25_11(v2[10], a2, v2[28]);
  (*(v13 + 32))();
  OUTLINED_FUNCTION_48(v8);
  (*(v14 + 32))(v10, v4 + v11, v8);
  OUTLINED_FUNCTION_48(v7);
  (*(v15 + 32))(v9, v4 + v12, v7);
  OUTLINED_FUNCTION_26_16();
  v17 = *(v16 + 32);
  OUTLINED_FUNCTION_194_1();
  v18();
  OUTLINED_FUNCTION_48(v5);
  v20 = (*(v19 + 32))(v36, v4 + v35, v5);
  OUTLINED_FUNCTION_25_11(v20, v21, v38);
  v24 = (*(v22 + 32))(v39, v4 + v23);
  OUTLINED_FUNCTION_25_11(v24, v25, v41);
  v28 = (*(v26 + 32))(v43, v4 + v27);
  OUTLINED_FUNCTION_25_11(v28, v29, v44);
  (*(v30 + 32))(v45, v4 + v42);

  OUTLINED_FUNCTION_45_0();

  return v31();
}

uint64_t sub_23B4D0F6C()
{
  OUTLINED_FUNCTION_71();
  v2 = v0[38];
  v1 = v0[39];

  OUTLINED_FUNCTION_67_1();
  v4 = v0[41];

  return v3();
}

void sub_23B4D0FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_21();
  v57 = v35;
  v58 = v36;
  v55 = v37;
  v56 = v38;
  v53 = v39;
  v54 = v40;
  v42 = v41;
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v51 = sub_23B50D364();
  OUTLINED_FUNCTION_7_4();
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_27_3();
  (*(v44 + 16))(v34, v42);
  v48 = (*(v44 + 80) + 80) & ~*(v44 + 80);
  v49 = swift_allocObject();
  *(v49 + 2) = a25;
  *(v49 + 3) = a26;
  *(v49 + 4) = a27;
  *(v49 + 5) = a28;
  *(v49 + 6) = a29;
  *(v49 + 7) = a30;
  *(v49 + 8) = a31;
  *(v49 + 9) = a32;
  (*(v44 + 32))(&v49[v48], v34, v51);
  WeatherService.fetchWeather<A, B, C, D, E, F, G, H>(for:including:_:_:_:_:_:_:_:options:completion:)(v53, v54, v55, v56, v57, v58, a21, a22, a23, a24, a34, v49, a25, a26, a27, a28, a29, a30, a31, a32, v50, a27, v51, a31, a30, a32, a29, a34, a23, a24, v52, v53);

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4D1230()
{
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_65_0();
  v0 = sub_23B50D364();
  return OUTLINED_FUNCTION_245_0(v0);
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G, H, I>(for:including:_:_:_:_:_:_:_:_:)()
{
  OUTLINED_FUNCTION_188();
  *(v1 + 304) = v37;
  *(v1 + 312) = v0;
  *(v1 + 288) = v35;
  *(v1 + 296) = v36;
  *(v1 + 272) = v33;
  *(v1 + 280) = v34;
  *(v1 + 256) = v31;
  *(v1 + 264) = v32;
  *(v1 + 240) = v29;
  *(v1 + 248) = v30;
  *(v1 + 232) = v28;
  *(v1 + 216) = v27;
  *(v1 + 200) = v26;
  *(v1 + 184) = v25;
  *(v1 + 168) = v24;
  *(v1 + 152) = v22;
  *(v1 + 160) = v23;
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  *(v1 + 104) = v6;
  *(v1 + 112) = v7;
  *(v1 + 88) = v8;
  *(v1 + 96) = v9;
  *(v1 + 16) = v29;
  *(v1 + 24) = v30;
  *(v1 + 32) = v31;
  *(v1 + 40) = v32;
  *(v1 + 48) = v33;
  *(v1 + 56) = v34;
  *(v1 + 64) = v35;
  *(v1 + 72) = v36;
  *(v1 + 80) = v37;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 320) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  v12 = *(v11 + 64);
  *(v1 + 328) = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions();
  OUTLINED_FUNCTION_3(Options);
  v15 = *(v14 + 64);
  *(v1 + 336) = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 344) = v16;
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_12_23(v16);

  return sub_23B4C15EC(v18, v19);
}

uint64_t sub_23B4D1408()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v2 = *(v1 + 344);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_23B4D14EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = *(v14 + 336);
  v16 = swift_task_alloc();
  *(v14 + 352) = v16;
  v17 = *(v14 + 256);
  v18 = *(v14 + 272);
  v19 = *(v14 + 288);
  v20 = *(v14 + 304);
  v21 = *(v14 + 160);
  v22 = *(v14 + 176);
  v23 = *(v14 + 192);
  v24 = *(v14 + 208);
  v25 = *(v14 + 224);
  *(v16 + 16) = *(v14 + 240);
  *(v16 + 32) = v17;
  *(v16 + 48) = v18;
  *(v16 + 64) = v19;
  *(v16 + 80) = v20;
  *(v16 + 96) = v21;
  *(v16 + 112) = v22;
  *(v16 + 128) = v23;
  *(v16 + 144) = v24;
  *(v16 + 160) = v25;
  *(v16 + 176) = v15;
  v26 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 360) = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_218_1(v27);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D15E4()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 368) = v0;

  if (!v0)
  {
    v9 = *(v3 + 352);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D16E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_236_1();
  v29 = v28[41];
  v86 = v28[42];
  v30 = v28[40];
  v84 = v28[38];
  v82 = v28[37];
  v79 = v28[36];
  v75 = v28[35];
  v31 = v28[33];
  v32 = v28[34];
  v34 = v28[31];
  v33 = v28[32];
  v35 = v28[30];
  v85 = v28[19];
  v83 = v28[18];
  v36 = v28[16];
  v80 = v28[17];
  v37 = v28[15];
  v74 = v28[14];
  v38 = v28[12];
  v39 = v28[13];
  v40 = v28[11];
  v41 = v30[12];
  v42 = v30[16];
  v73 = v30[20];
  OUTLINED_FUNCTION_219_1(v30);
  v76 = v44;
  v77 = v43[32];
  v78 = v43[36];
  v81 = v43[40];
  OUTLINED_FUNCTION_25_11(v45, v46, v47);
  (*(v48 + 32))();
  OUTLINED_FUNCTION_48(v34);
  (*(v49 + 32))(v38, v29 + v41, v34);
  OUTLINED_FUNCTION_26_16();
  (*(v50 + 32))(v39, v29 + v42, v33);
  OUTLINED_FUNCTION_48(v31);
  (*(v51 + 32))(v74, v29 + v73, v31);
  OUTLINED_FUNCTION_48(v32);
  v53 = (*(v52 + 32))(a12, v29 + a11, v32);
  OUTLINED_FUNCTION_25_11(v53, v54, v75);
  (*(v55 + 32))(v76, v29 + v56);
  OUTLINED_FUNCTION_25_11(v80, v57, v79);
  (*(v58 + 32))();
  OUTLINED_FUNCTION_25_11(v83, v59, v82);
  (*(v60 + 32))();
  OUTLINED_FUNCTION_25_11(v85, v61, v84);
  (*(v62 + 32))();
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v86, v63);

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_233_1();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, v73, v74, a11, a12, a13, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, a26, a27, a28);
}

uint64_t sub_23B4D1970()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v3, v4);

  OUTLINED_FUNCTION_67_1();
  v6 = v0[46];

  return v5();
}

uint64_t WeatherService.weather<A, B, C, D, E, F, G, H, I>(for:including:_:_:_:_:_:_:_:_:with:)()
{
  OUTLINED_FUNCTION_71();
  *(v1 + 312) = v31;
  *(v1 + 320) = v0;
  *(v1 + 296) = v29;
  *(v1 + 304) = v30;
  *(v1 + 280) = v27;
  *(v1 + 288) = v28;
  *(v1 + 264) = v25;
  *(v1 + 272) = v26;
  *(v1 + 248) = v23;
  *(v1 + 256) = v24;
  *(v1 + 240) = v22;
  *(v1 + 208) = v20;
  *(v1 + 224) = v21;
  *(v1 + 176) = v18;
  *(v1 + 192) = v19;
  *(v1 + 168) = v17;
  *(v1 + 152) = v16;
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  *(v1 + 104) = v6;
  *(v1 + 112) = v7;
  *(v1 + 88) = v8;
  *(v1 + 96) = v9;
  *(v1 + 16) = v23;
  *(v1 + 24) = v24;
  *(v1 + 32) = v25;
  *(v1 + 40) = v26;
  *(v1 + 48) = v27;
  *(v1 + 56) = v28;
  *(v1 + 64) = v29;
  *(v1 + 72) = v30;
  *(v1 + 80) = v31;
  OUTLINED_FUNCTION_74_1();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *(v1 + 328) = TupleTypeMetadata;
  OUTLINED_FUNCTION_3(TupleTypeMetadata);
  v12 = *(v11 + 64);
  *(v1 + 336) = OUTLINED_FUNCTION_13_22();
  v13 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_23B4D1AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v15 = *(v14 + 240);
  v16 = swift_task_alloc();
  *(v14 + 344) = v16;
  v17 = *(v14 + 312);
  v18 = *(v14 + 160);
  v19 = *(v14 + 176);
  v20 = *(v14 + 192);
  v21 = *(v14 + 208);
  v22 = *(v14 + 224);
  v23 = OUTLINED_FUNCTION_184_1(v16, *(v14 + 248), *(v14 + 264), *(v14 + 280), *(v14 + 296));
  v23[5] = v24;
  v23[6] = v25;
  v23[7] = v26;
  v23[8] = v27;
  v23[9] = v28;
  v23[10] = v29;
  v23[11].n128_u64[0] = v15;
  v30 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 352) = v31;
  *v31 = v32;
  v31[1] = sub_23B4D1BEC;
  v34 = *(v14 + 328);
  v33 = *(v14 + 336);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D1BEC()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 360) = v0;

  if (!v0)
  {
    v9 = *(v3 + 344);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D1CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_236_1();
  v29 = v28[41];
  v30 = v28[42];
  v90 = v28[39];
  v88 = v28[38];
  v85 = v28[37];
  v81 = v28[36];
  v32 = v28[34];
  v31 = v28[35];
  v34 = v28[32];
  v33 = v28[33];
  v35 = v28[31];
  v91 = v28[19];
  v89 = v28[18];
  v36 = v28[16];
  v86 = v28[17];
  v37 = v28[15];
  v77 = v28[14];
  v39 = v28[12];
  v38 = v28[13];
  v40 = v28[11];
  v41 = *(v29 + 48);
  v42 = *(v29 + 64);
  OUTLINED_FUNCTION_176_1(v29);
  v78 = v43;
  v79 = v44;
  v80 = v45[28];
  v82 = v46;
  v83 = v45[32];
  v84 = v45[36];
  v87 = v45[40];
  OUTLINED_FUNCTION_25_11(v47, v48, v49);
  (*(v50 + 32))();
  OUTLINED_FUNCTION_48(v34);
  (*(v51 + 32))(v39, v30 + v41, v34);
  OUTLINED_FUNCTION_48(v33);
  (*(v52 + 32))(v38, v30 + v42, v33);
  OUTLINED_FUNCTION_48(v32);
  (*(v53 + 32))(v77, v30 + a10, v32);
  OUTLINED_FUNCTION_26_16();
  v55 = *(v54 + 32);
  OUTLINED_FUNCTION_194_1();
  v57 = v56();
  OUTLINED_FUNCTION_25_11(v57, v58, v81);
  (*(v59 + 32))(v82, v30 + v60);
  OUTLINED_FUNCTION_25_11(v86, v61, v85);
  v63 = (*(v62 + 32))();
  OUTLINED_FUNCTION_25_11(v63, v64, v88);
  (*(v65 + 32))(v89, v30 + v84);
  OUTLINED_FUNCTION_25_11(v91, v66, v90);
  (*(v67 + 32))();

  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_233_1();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, a26, a27, a28);
}

uint64_t sub_23B4D1F5C()
{
  OUTLINED_FUNCTION_71();
  v2 = v0[42];
  v1 = v0[43];

  OUTLINED_FUNCTION_67_1();
  v4 = v0[45];

  return v3();
}

void sub_23B4D1FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_21();
  v58 = v37;
  v59 = v38;
  v56 = v39;
  v57 = v40;
  v54 = v41;
  v55 = v42;
  v44 = v43;
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v52 = sub_23B50D364();
  OUTLINED_FUNCTION_7_4();
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27_3();
  (*(v46 + 16))(v36, v44);
  v50 = (*(v46 + 80) + 88) & ~*(v46 + 80);
  v51 = swift_allocObject();
  *(v51 + 2) = a26;
  *(v51 + 3) = a27;
  *(v51 + 4) = a28;
  *(v51 + 5) = a29;
  *(v51 + 6) = a30;
  *(v51 + 7) = a31;
  *(v51 + 8) = a32;
  *(v51 + 9) = a33;
  *(v51 + 10) = a34;
  (*(v46 + 32))(&v51[v50], v36, v52);
  WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I>(for:including:_:_:_:_:_:_:_:_:options:completion:)(v54, v55, v56, v57, v58, v59, a21, a22, a23, a24, a25, a36, v51, a26, a27, a28, a29, a30, a31, a32, a33, a34, a26, v52, a33, a32, a31, a34, a25, a36, a23, a24, v53, v54);

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4D225C()
{
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_65_0();
  v0 = sub_23B50D364();
  return OUTLINED_FUNCTION_245_0(v0);
}

uint64_t sub_23B4D2464()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v2 = *(v1 + 376);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_23B4D2548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168();
  v15 = *(v14 + 368);
  v16 = *(v14 + 344);
  v17 = *(v14 + 256);
  v18 = swift_task_alloc();
  *(v14 + 384) = v18;
  v19 = *(v14 + 328);
  v20 = *(v14 + 176);
  v21 = *(v14 + 192);
  v22 = *(v14 + 208);
  v23 = *(v14 + 224);
  v24 = *(v14 + 240);
  v25 = OUTLINED_FUNCTION_184_1(v18, *(v14 + 264), *(v14 + 280), *(v14 + 296), *(v14 + 312));
  v25[5] = v26;
  v25[6].n128_u64[0] = v16;
  *(v25 + 104) = v27;
  *(v25 + 120) = v28;
  *(v25 + 136) = v29;
  *(v25 + 152) = v30;
  *(v25 + 168) = v31;
  v25[11].n128_u64[1] = v17;
  v25[12].n128_u64[0] = v15;
  v32 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 392) = v33;
  *v33 = v34;
  v33[1] = sub_23B4D2668;
  v36 = *(v14 + 352);
  v35 = *(v14 + 360);
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D2668()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 400) = v0;

  if (!v0)
  {
    v9 = *(v3 + 384);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D2768()
{
  v1 = v0[45];
  v2 = v0[44];
  v57 = v0[42];
  v58 = v0[46];
  v55 = v0[41];
  v52 = v0[40];
  v49 = v0[39];
  v3 = v0[37];
  v45 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v56 = v0[21];
  v54 = v0[20];
  v8 = v0[18];
  v51 = v0[19];
  v9 = v0[17];
  v42 = v0[16];
  v10 = v0[14];
  v40 = v0[15];
  v11 = *(v2 + 48);
  v12 = *(v2 + 64);
  OUTLINED_FUNCTION_176_1(v2);
  v41 = v13;
  v43 = v14[28];
  v44 = v15;
  v46 = v14[32];
  v47 = v14[36];
  v48 = v16;
  v50 = v14[40];
  v53 = v14[44];
  v17 = v0[12];
  v18 = v0[13];
  OUTLINED_FUNCTION_48(v19);
  (*(v20 + 32))();
  OUTLINED_FUNCTION_48(v7);
  (*(v21 + 32))(v18, v1 + v11, v7);
  OUTLINED_FUNCTION_48(v5);
  (*(v22 + 32))(v10, v1 + v12, v5);
  OUTLINED_FUNCTION_26_16();
  v24 = *(v23 + 32);
  OUTLINED_FUNCTION_194_1();
  v25();
  OUTLINED_FUNCTION_48(v3);
  (*(v26 + 32))(v42, v1 + v41, v3);
  OUTLINED_FUNCTION_25_11(v44, v27, v45);
  (*(v28 + 32))();
  OUTLINED_FUNCTION_25_11(v48, v29, v49);
  (*(v30 + 32))();
  OUTLINED_FUNCTION_25_11(v51, v31, v52);
  (*(v32 + 32))();
  OUTLINED_FUNCTION_25_11(v54, v33, v55);
  (*(v34 + 32))();
  OUTLINED_FUNCTION_25_11(v56, v35, v57);
  (*(v36 + 32))();
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v58, v37);

  OUTLINED_FUNCTION_45_0();

  return v38();
}

uint64_t sub_23B4D2A48()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v3, v4);

  OUTLINED_FUNCTION_67_1();
  v6 = v0[50];

  return v5();
}

uint64_t sub_23B4D2AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A0, &qword_23B523818) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B4D2B64, 0, 0);
}

uint64_t sub_23B4D2B64()
{
  OUTLINED_FUNCTION_168();
  sub_23B3EB900(v0[3], v0[6], &qword_27E1353A0, &qword_23B523818);
  type metadata accessor for WeatherServiceFetchOptions();
  v1 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, v2, v3);
  v5 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    v6 = v0[4];
    sub_23B4D7720(v5, &qword_27E1353A0, &qword_23B523818);
    v7 = v6[12];
    __swift_project_boxed_opaque_existential_1(v6 + 8, v6[11]);
    v8 = *(OUTLINED_FUNCTION_120_1() + 8);
    OUTLINED_FUNCTION_71_2();
    v19 = (v9 + *v9);
    v11 = *(v10 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_108();
    v0[7] = v12;
    *v12 = v13;
    v12[1] = sub_23B4D2D2C;
    v14 = v0[5];
    v15 = v0[2];
    OUTLINED_FUNCTION_112_1();

    return v19();
  }

  else
  {
    sub_23B4D7504(v5, v0[2]);
    v17 = v0[6];

    OUTLINED_FUNCTION_67_1();

    return v18();
  }
}

uint64_t sub_23B4D2D2C()
{
  OUTLINED_FUNCTION_71();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  v5 = *(v1 + 48);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_23B4D2E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v50 = a7;
  v51 = a8;
  v47 = a5;
  v48 = a6;
  v44 = a4;
  v43 = a3;
  v49 = a2;
  v45 = a10;
  v46 = a9;
  v42 = a11;
  v41 = a12;
  v40 = a13;
  v38 = a23;
  v39 = a22;
  v52 = a17;
  v53 = a16;
  v54 = a15;
  v55 = a14;
  v56 = a14;
  v57 = a15;
  v58 = a16;
  v59 = a17;
  v60 = a18;
  v61 = a19;
  v62 = a20;
  v63 = a21;
  v64 = a22;
  v65 = a23;
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v37 = sub_23B50D364();
  v24 = *(v37 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v37);
  v28 = &v36 - v27;
  (*(v24 + 16))(&v36 - v27, a1, v26);
  v29 = (*(v24 + 80) + 96) & ~*(v24 + 80);
  v30 = swift_allocObject();
  v31 = v54;
  *(v30 + 2) = v55;
  *(v30 + 3) = v31;
  v32 = v52;
  *(v30 + 4) = v53;
  *(v30 + 5) = v32;
  *(v30 + 6) = a18;
  *(v30 + 7) = a19;
  *(v30 + 8) = a20;
  *(v30 + 9) = a21;
  v33 = v39;
  v34 = v38;
  *(v30 + 10) = v39;
  *(v30 + 11) = v34;
  (*(v24 + 32))(&v30[v29], v28, v37);
  WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:options:completion:)(v43, v44, v47, v48, v50, v51, v46, v45, v42, *(&v42 + 1), v41, v40, sub_23B4D6660, v30, v55, v54, v53, v52, a18, a19, a20, a21, v33, v34, v36, v37, v38, v39, v40, v41, v42, *(&v42 + 1), v43, v44, v45, v46);
}

uint64_t sub_23B4D3100(uint64_t a1)
{
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v2 = sub_23B50D364();
  return sub_23B4C4AF8(a1, v2);
}

uint64_t WeatherService.instantWeathers(for:spanning:stride:)()
{
  OUTLINED_FUNCTION_188();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 24) = v5;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  OUTLINED_FUNCTION_3(Options);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_13_22();
  v10 = *v3;
  *(v1 + 48) = v9;
  *(v1 + 56) = v10;
  *(v1 + 96) = *(v3 + 8);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v1 + 64) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_114_1(v11);

  return sub_23B4C15EC(v13, v14);
}

uint64_t sub_23B4D3270()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_23B4D3354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168();
  v15 = *(v14 + 96);
  v17 = *(v14 + 48);
  v16 = *(v14 + 56);
  v18 = *(v14 + 40);
  v19 = OUTLINED_FUNCTION_202_1();
  *(v14 + 72) = v19;
  v20 = *(v14 + 24);
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  *(v19 + 40) = v16;
  *(v19 + 48) = v15;
  *(v19 + 56) = v17;
  v21 = *(MEMORY[0x277D85A40] + 4);
  v22 = swift_task_alloc();
  *(v14 + 80) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F78, &unk_23B50F2B0);
  OUTLINED_FUNCTION_167_1();
  *v22 = v23;
  v22[1] = sub_23B4D3464;
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D3464()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D3564()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[6];
  v2 = v0[2];
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v3);

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_23B4D35DC()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[9];
  v2 = v0[6];

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v2, v3);

  OUTLINED_FUNCTION_67_1();
  v5 = v0[11];

  return v4();
}

uint64_t sub_23B4D3650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v19[1] = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135398, &qword_23B523810);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v19 - v14;
  v19[2] = a5;
  v20 = a6 & 1;
  (*(v11 + 16))(v19 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v15, v10);
  WeatherService.fetchInstantWeather(for:spanning:stride:with:completion:)();
}

uint64_t sub_23B4D37D4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135398, &qword_23B523810);
    return sub_23B50D344();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135398, &qword_23B523810);
    return sub_23B50D354();
  }
}

uint64_t WeatherService.instantWeather(for:at:)()
{
  OUTLINED_FUNCTION_188();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  OUTLINED_FUNCTION_3(Options);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_13_22();
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v1[7] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_12_23(v8);

  return sub_23B4C15EC(v10, v11);
}

uint64_t sub_23B4D3910()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_23B4D39F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v16 = *(v14 + 40);
  v15 = *(v14 + 48);
  v17 = swift_task_alloc();
  *(v14 + 64) = v17;
  v18 = *(v14 + 24);
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 40) = v15;
  v19 = *(MEMORY[0x277D85A40] + 4);
  v20 = swift_task_alloc();
  *(v14 + 72) = v20;
  type metadata accessor for InstantWeather();
  OUTLINED_FUNCTION_167_1();
  *v20 = v21;
  v20[1] = sub_23B4D3AE8;
  v22 = *(v14 + 16);
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D3AE8()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D3BE8()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_45_0();

  return v3();
}

uint64_t sub_23B4D3C50()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[8];
  v2 = v0[6];

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v2, v3);

  OUTLINED_FUNCTION_67_1();
  v5 = v0[10];

  return v4();
}

uint64_t sub_23B4D3CC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135390, &qword_23B523808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - v6;
  (*(v3 + 16))(&v11 - v6, a1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v7, v2);
  WeatherService.fetchInstantWeather(for:at:with:completion:)();
}

uint64_t sub_23B4D3E2C(uint64_t a1)
{
  v2 = type metadata accessor for InstantWeather();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133948, &qword_23B5194F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v11 - v8);
  sub_23B3EB900(a1, v11 - v8, &qword_27E133948, &qword_23B5194F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135390, &qword_23B523808);
    return sub_23B50D344();
  }

  else
  {
    sub_23B4D7504(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135390, &qword_23B523808);
    return sub_23B50D354();
  }
}

uint64_t WeatherService.weather(for:dataSets:)()
{
  OUTLINED_FUNCTION_188();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v5;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  OUTLINED_FUNCTION_3(Options);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_13_22();
  v10 = *v3;
  v1[5] = v9;
  v1[6] = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  v1[7] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_114_1(v11);

  return sub_23B4C15EC(v13, v14);
}

uint64_t sub_23B4D4068()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_23B4D414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_188();
  v16 = *(v14 + 40);
  v15 = *(v14 + 48);
  v17 = swift_task_alloc();
  *(v14 + 64) = v17;
  v17[1] = vextq_s8(*(v14 + 24), *(v14 + 24), 8uLL);
  v17[2].i64[0] = v15;
  v17[2].i64[1] = v16;
  v18 = *(MEMORY[0x277D85A40] + 4);
  v19 = swift_task_alloc();
  *(v14 + 72) = v19;
  type metadata accessor for WatchWeather();
  OUTLINED_FUNCTION_167_1();
  *v19 = v20;
  v19[1] = sub_23B4D4240;
  v21 = *(v14 + 16);
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822008A0](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D4240()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D4340()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v2);

  OUTLINED_FUNCTION_45_0();

  return v3();
}

uint64_t sub_23B4D43A8()
{
  OUTLINED_FUNCTION_71();
  v1 = v0[8];
  v2 = v0[5];

  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v2, v3);

  OUTLINED_FUNCTION_67_1();
  v5 = v0[10];

  return v4();
}

uint64_t sub_23B4D441C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135388, &qword_23B523800);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v18 - v13;
  v19 = a4;
  (*(v10 + 16))(&v18 - v13, a1, v9, v12);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);
  sub_23B481CD0(a3, &v19, a5, sub_23B4D6504, v16);
}

uint64_t sub_23B4D458C(uint64_t a1)
{
  v2 = type metadata accessor for WatchWeather();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v11 - v8);
  sub_23B3EB900(a1, v11 - v8, qword_27E133BE8, &unk_23B51A660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135388, &qword_23B523800);
    return sub_23B50D344();
  }

  else
  {
    sub_23B4D7504(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135388, &qword_23B523800);
    return sub_23B50D354();
  }
}

uint64_t WeatherService.weatherWithoutReverseGeocoding<each A>(for:dataSet:)()
{
  OUTLINED_FUNCTION_168();
  v4 = v3;
  v6 = v5;
  v1[6] = v3;
  v1[7] = v0;
  v1[4] = v7;
  v1[5] = v5;
  v8 = 8 * v5;
  v1[2] = v9;
  v1[3] = v10;
  if (v5 == 1)
  {
    v2 = OUTLINED_FUNCTION_198_1((v3 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    OUTLINED_FUNCTION_253_1();
    OUTLINED_FUNCTION_160_0();
    while (v6 != v2)
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8 * v2);
      v12 = type metadata accessor for WeatherQuery();
      OUTLINED_FUNCTION_157_1(v12);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_250_1();
  }

  v1[8] = v2;
  OUTLINED_FUNCTION_111_0();
  v1[9] = v13;
  v15 = *(v14 + 64);
  v1[10] = OUTLINED_FUNCTION_13_22();
  if (v6 == 1)
  {
    v8 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_253_1();
    for (i = 0; v6 != i; ++i)
    {
      *(v16 + 8 * i) = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_120_1();
  }

  v1[11] = v8;
  OUTLINED_FUNCTION_151_1();
  v19 = *(v18 + 64);
  v1[12] = OUTLINED_FUNCTION_13_22();
  Options = type metadata accessor for WeatherServiceFetchOptions();
  OUTLINED_FUNCTION_3(Options);
  v22 = *(v21 + 64);
  v1[13] = OUTLINED_FUNCTION_13_22();
  v23 = OUTLINED_FUNCTION_20_19();

  return MEMORY[0x2822009F8](v23);
}

uint64_t sub_23B4D4890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v15 = *(v14 + 104);
  v16 = *(v14 + 56);
  v17 = *(v14 + 40);
  v18 = *(v14 + 24);
  v19 = v16[11];
  v20 = v16[12];
  __swift_project_boxed_opaque_existential_1(v16 + 8, v19);
  (*(v20 + 16))(v18, v19, v20);
  if (v17)
  {
    OUTLINED_FUNCTION_107_1();
    do
    {
      if (*(v14 + 40) != 1)
      {
        v21 = *(*(v14 + 64) + v20);
      }

      OUTLINED_FUNCTION_118_0();
      v22 = *(v14 + 80);
      v23 = type metadata accessor for WeatherQuery();
      OUTLINED_FUNCTION_2(v23);
      v25 = *(v24 + 16);
      v26 = OUTLINED_FUNCTION_206_1();
      v27(v26);
      OUTLINED_FUNCTION_104_1();
    }

    while (!v28);
  }

  v29 = *(v14 + 104);
  v30 = *(v14 + 80);
  v31 = *(v14 + 40);
  v32 = *(v14 + 24);
  v33 = OUTLINED_FUNCTION_202_1();
  *(v14 + 112) = v33;
  v34 = *(v14 + 48);
  *(v33 + 16) = v31;
  *(v33 + 24) = v34;
  *(v33 + 40) = v32;
  *(v33 + 48) = v30;
  *(v33 + 56) = v29;
  v35 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_108();
  *(v14 + 120) = v36;
  *v36 = v37;
  v36[1] = sub_23B4D4A2C;
  v39 = *(v14 + 88);
  v38 = *(v14 + 96);
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822008A0](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23B4D4A2C()
{
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_106();
  v3 = v2;
  OUTLINED_FUNCTION_21_10();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_169_1();
    v10(v9);
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x2822009F8]();
}

uint64_t sub_23B4D4B34()
{
  OUTLINED_FUNCTION_188();
  if (v1[5])
  {
    OUTLINED_FUNCTION_220_1();
    do
    {
      if (v1[5] != 1)
      {
        v2 = *(v1[11] + v0);
      }

      v3 = OUTLINED_FUNCTION_139_1();
      (*(v4 + 32))(v3, v6 + v5);
      OUTLINED_FUNCTION_115_1();
    }

    while (!v7);
  }

  v8 = v1[13];
  v9 = v1[14];
  v10 = v1[12];
  v11 = v1[10];
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v8, v12);

  OUTLINED_FUNCTION_45_0();

  return v13();
}

uint64_t sub_23B4D4C18()
{
  OUTLINED_FUNCTION_188();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = OUTLINED_FUNCTION_214_1();
  v5(v4);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v6);

  OUTLINED_FUNCTION_67_1();
  v8 = v0[16];

  return v7();
}

void sub_23B4D4CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v96 = v30;
  v97 = v29;
  v94 = v32;
  v95 = v31;
  v93 = v22;
  if (v25 == 1)
  {
    OUTLINED_FUNCTION_249_0((v23 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    MEMORY[0x28223BE20](v22);
    OUTLINED_FUNCTION_110_1();
    v35 = v33 - v34;
      ;
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v37 = sub_23B50D364();
  v38 = OUTLINED_FUNCTION_5(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v91 = v43;
  v92 = a21;
  v89 = v45;
  v90 = &v83 - v44;
  if (v26 == 1)
  {
    TupleTypeMetadata = OUTLINED_FUNCTION_198_1((v24 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    MEMORY[0x28223BE20](v43);
    OUTLINED_FUNCTION_110_1();
    v47 = v24;
    v50 = v48 - v49;
    v51 = 0;
    v52 = v47;
    v21 = v47 & 0xFFFFFFFFFFFFFFFELL;
    while (v26 != v51)
    {
      v53 = *(v21 + 8 * v51);
      *(v50 + 8 * v51++) = type metadata accessor for WeatherQuery();
    }

    OUTLINED_FUNCTION_74_1();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v24 = v52;
  }

  v87 = &v83;
  v54 = OUTLINED_FUNCTION_5(TupleTypeMetadata);
  v86 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  v85 = &v83;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_110_1();
  v62 = v60 - v61;
  v88 = v59;
  if (v26)
  {
    v63 = 0;
    v64 = (v59 + 32);
    do
    {
      if (v26 == 1)
      {
        v65 = 0;
      }

      else
      {
        v65 = *v64;
      }

      *(v62 + 8 * v63++) = v28 + v65;
      v64 += 4;
    }

    while (v26 != v63);
    MEMORY[0x28223BE20](v59);
    OUTLINED_FUNCTION_110_1();
    v68 = (v66 - v67);
    v69 = 0;
    v84 = v24;
    v70 = v24 & 0xFFFFFFFFFFFFFFFELL;
    v72 = (v71 + 32);
    do
    {
      if (v26 == 1)
      {
        v73 = 0;
      }

      else
      {
        v73 = *v72;
      }

      v74 = *(v70 + 8 * v69);
      v75 = v21 + v73;
      v76 = *(v62 + 8 * v69);
      v77 = type metadata accessor for WeatherQuery();
      OUTLINED_FUNCTION_2(v77);
      (*(v78 + 16))(v75, v76);
      v68[v69++] = v75;
      v72 += 4;
    }

    while (v26 != v69);
    v24 = v84;
  }

  else
  {
    v68 = &v98;
  }

  v80 = v90;
  v79 = v91;
  (*(v40 + 16))(v90, v93, v91);
  v81 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = v26;
  *(v82 + 24) = swift_allocateMetadataPack();
  (*(v40 + 32))(v82 + v81, v80, v79);
  WeatherService.fetchWeather<each A>(for:including:options:completion:)(v95, v68, v96, v92, v82, v26, v24);

  (*(v86 + 8))(v21, v88);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4D50BC()
{
  OUTLINED_FUNCTION_207_0();
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_249_0((v1 & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    MEMORY[0x28223BE20](v0);
    OUTLINED_FUNCTION_27();
    v7 = v6 - v5;
    for (i = 0; v3 != i; ++i)
    {
      *(v7 + 8 * i) = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_65_0();
  v9 = sub_23B50D364();
  return OUTLINED_FUNCTION_245_0(v9);
}

Swift::Bool __swiftcall WeatherService.cachedLocation(_:representsRequestedLocation:)(CLLocation _, CLLocation representsRequestedLocation)
{
  internal = _._internal;
  isa = _.super.isa;
  [(objc_class *)_.super.isa coordinate:representsRequestedLocation.super.isa];
  v5 = v4;
  [(objc_class *)isa coordinate];
  v7 = v6;
  [internal coordinate];
  v9 = v8;
  [internal coordinate];
  v10 = vabdd_f64(v5, v9) <= 0.001;
  return vabdd_f64(v7, v11) <= 0.001 && v10;
}

void WeatherService.cachedWeather(for:dataSets:)()
{
  OUTLINED_FUNCTION_21();
  v82 = v1;
  v83 = v0;
  v3 = v2;
  v81 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135380, &qword_23B523780);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  v79 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v80 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_0();
  v19 = v17 - v18;
  v77 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v24 = OUTLINED_FUNCTION_3(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12_0();
  v29 = v27 - v28;
  v71 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v70 - v31;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v34 = (Options - 8);
  v35 = *(*(Options - 8) + 64);
  MEMORY[0x28223BE20](Options);
  OUTLINED_FUNCTION_27();
  v38 = (v37 - v36);
  v78 = *v3;
  sub_23B50AEE4();
  v39 = sub_23B50AEF4();
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v39);
  v40 = type metadata accessor for WeatherNetworkActivity();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  sub_23B3EB900(v32, v29, &qword_27E131F68, &unk_23B50F2A0);
  sub_23B3EB900(v22, v19, &qword_27E1338B0, &unk_23B519390);
  v89 = 1;
  WeatherServiceCaching.Options.cacheReadPolicy.getter(&v84);
  v74 = v84;
  v76 = v87;
  v75 = v86;
  v44 = v34[7];
  v72 = v88;
  v73 = v85;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v39);
  v48 = v38 + v34[8];
  *v48 = 0;
  *(v48 + 4) = 768;
  v49 = v34[11];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v40);
  v53 = v34[14];
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  v58 = v34[16];
  sub_23B4D7720(v22, &qword_27E1338B0, &unk_23B519390);
  sub_23B4D7720(v32, &qword_27E131F68, &unk_23B50F2A0);
  v59 = MEMORY[0x277D84F90];
  *(v38 + v58) = MEMORY[0x277D84F90];
  v60 = v79;
  *v38 = 0;
  v38[1] = 0;
  sub_23B3EB988(v71, v38 + v44, &qword_27E131F68, &unk_23B50F2A0);
  *v48 = 3;
  *(v48 + 4) = 512;
  v61 = 1;
  *(v38 + v34[9]) = 1;
  *(v38 + v34[10]) = v59;
  sub_23B3EB988(v77, v38 + v49, &qword_27E1338B0, &unk_23B519390);
  *(v38 + v34[12]) = 0;
  *(v38 + v34[13]) = 0;
  v62 = v38 + v34[15];
  *v62 = v74;
  v63 = v72;
  *(v62 + 2) = v73;
  v62[30] = v63;
  v64 = v75;
  *(v62 + 14) = v76;
  *(v62 + 6) = v64;
  *(v38 + v34[17]) = 0;
  *&v84 = v78;
  v65 = v80;
  sub_23B484A6C(v81, &v84, v38, v80);
  v66 = v82;
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v38, v67);
  sub_23B4D7774(v65, v60, &qword_27E135380, &qword_23B523780);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  OUTLINED_FUNCTION_55_4();
  if (!v68)
  {
    OUTLINED_FUNCTION_226();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23B4D7720(v60, qword_27E133BE8, &unk_23B51A660);
      v61 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_98_1();
      v61 = 0;
    }
  }

  v69 = type metadata accessor for WatchWeather();
  __swift_storeEnumTagSinglePayload(v66, v61, 1, v69);
  OUTLINED_FUNCTION_20();
}

void WeatherService.cachedWeather(for:dataSets:cacheReadPolicy:)()
{
  OUTLINED_FUNCTION_21();
  v72 = v2;
  v73 = v0;
  v4 = v3;
  v6 = v5;
  v75 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135380, &qword_23B523780);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v71 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  v28 = &v67 - v27;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v30 = OUTLINED_FUNCTION_6(Options);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_153();
  v33 = *v6;
  v34 = *v4;
  v35 = v4[1];
  v69 = v4[2];
  v70 = v33;
  v36 = *(v4 + 6) | ((*(v4 + 14) | (*(v4 + 30) << 16)) << 32);
  sub_23B50AEE4();
  v37 = sub_23B50AEF4();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v37);
  v74 = v14;
  v67 = v34;
  v68 = v35;
  if ((v36 & 0xFF00) == 0x200)
  {
    v38 = 8;
  }

  else
  {
    v38 = (v36 >> 7) & 2 | v35 & (v34 == 0) | (v36 >> 14) & 4;
  }

  v39 = type metadata accessor for WeatherNetworkActivity();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  v43 = Options[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v37);
  v47 = v1 + Options[6];
  *v47 = 0;
  *(v47 + 4) = 768;
  v48 = Options[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v39);
  v52 = Options[12];
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v57 = MEMORY[0x277D84F90];
  *(v1 + Options[14]) = MEMORY[0x277D84F90];
  *v1 = 0;
  v1[1] = 0;
  sub_23B3EB988(v28, v1 + v43, &qword_27E131F68, &unk_23B50F2A0);
  *v47 = 3;
  *(v47 + 4) = 512;
  *(v1 + Options[7]) = v38;
  *(v1 + Options[8]) = v57;
  v58 = 1;
  sub_23B3EB988(v22, v1 + v48, &qword_27E1338B0, &unk_23B519390);
  *(v1 + Options[10]) = 0;
  *(v1 + Options[11]) = 0;
  v59 = v1 + Options[13];
  v60 = v68;
  *v59 = v67;
  *(v59 + 1) = v60;
  *(v59 + 2) = v69;
  v59[30] = BYTE6(v36);
  *(v59 + 14) = WORD2(v36);
  *(v59 + 6) = v36;
  *(v1 + Options[15]) = 0;
  v61 = v71;
  v76 = v70;
  sub_23B484A6C(v72, &v76, v1, v71);
  OUTLINED_FUNCTION_0_54();
  sub_23B393E24(v1, v62);
  v63 = v74;
  sub_23B4D7774(v61, v74, &qword_27E135380, &qword_23B523780);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  OUTLINED_FUNCTION_55_4();
  v64 = v75;
  if (!v65)
  {
    OUTLINED_FUNCTION_226();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23B4D7720(v63, qword_27E133BE8, &unk_23B51A660);
    }

    else
    {
      OUTLINED_FUNCTION_98_1();
      v58 = 0;
    }
  }

  v66 = type metadata accessor for WatchWeather();
  __swift_storeEnumTagSinglePayload(v64, v58, 1, v66);
  OUTLINED_FUNCTION_20();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WeatherService.insertIntoCache(requestUrl:responseJson:)(Swift::String requestUrl, Swift::String responseJson)
{
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_23B50B6B4();
}

uint64_t *WeatherService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  OUTLINED_FUNCTION_6_25();
  sub_23B393E24(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC10WeatherKit14WeatherService_airQualityScaleService);

  v5 = *(v0 + OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory);

  return v0;
}

uint64_t WeatherService.__deallocating_deinit()
{
  WeatherService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_23B4D5BB4()
{
  result = qword_27E135378;
  if (!qword_27E135378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135378);
  }

  return result;
}

void *sub_23B4D5C08(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a5;
  v26 = a6;
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 16))(v18, a7, a9);
  v23 = sub_23B398F80(a1, a2, a3, a4, v25, v26, v18, v22, a9, a10);
  (*(v15 + 8))(a7, a9);
  return v23;
}

void *sub_23B4D5D50(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v49 = a5;
  v50 = a4;
  v51 = a2;
  v48 = a1;
  v47 = a11;
  v15 = type metadata accessor for WDSEndpoint();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a10 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v46 = &v42[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v42[-v25];
  (*(v19 + 32))(&v42[-v25], a6, a10, v24);
  v45 = *a3;
  v44 = a3[1];
  v43 = a3[2];
  if (qword_280B45430 != -1)
  {
    swift_once();
  }

  v55[0] = xmmword_280B4EA08;
  v55[1] = *&word_280B4EA18;
  v55[2] = unk_280B4EA28;
  v55[3] = *&qword_280B4EA38;
  type metadata accessor for StaticServiceConfigurationProvider();
  v27 = swift_allocObject();
  v28 = *&word_280B4EA18;
  *(v27 + 16) = xmmword_280B4EA08;
  *(v27 + 32) = v28;
  v29 = *&qword_280B4EA38;
  *(v27 + 48) = unk_280B4EA28;
  *(v27 + 64) = v29;
  *(v27 + 80) = a7;
  *(v27 + 88) = a8;
  v30 = v51;
  sub_23B3943E8(v51, v18);
  v31 = v50;
  sub_23B3923E8(v50, v54);
  v32 = v18;
  v33 = v49;
  sub_23B3923E8(v49, v53);
  v34 = *(a9 + 48);
  v35 = *(a9 + 52);
  v36 = swift_allocObject();
  v37 = v46;
  (*(v19 + 16))(v46, v26, a10);
  sub_23B3918CC(v55, v52);
  if (v43)
  {
    v38 = 0x10000;
  }

  else
  {
    v38 = 0;
  }

  if (v44)
  {
    v39 = 256;
  }

  else
  {
    v39 = 0;
  }

  v40 = sub_23B4D77BC(v48, v32, v39 | v45 | v38, v54, v53, v37, v27, v36, a10, v47);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_23B393E24(v30, type metadata accessor for WDSEndpoint);
  (*(v19 + 8))(v26, a10);
  return v40;
}

uint64_t sub_23B4D6498(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_23B4D3CC4(a1);
}

uint64_t sub_23B4D6554(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v6);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, v8);
}

uint64_t sub_23B4D65D8(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135398, &qword_23B523810);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 80);

  return sub_23B4D37D4(a1, a2 & 1);
}

uint64_t sub_23B4D6660(uint64_t a1)
{
  v11 = v1[3];
  v10 = v1[4];
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v13 = v1[2];
  v14 = v1[5];
  v15 = v1[6];
  v16 = v1[7];
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v6 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 80);
  return sub_23B4D3100(a1);
}

uint64_t objectdestroy_103Tm()
{
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v2 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 88) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B4D6818()
{
  v8 = v0[3];
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[10];
  v9 = v0[2];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[7];
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v4 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 80);
  return sub_23B4D225C();
}

uint64_t objectdestroy_109Tm()
{
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v1 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 80) & ~*(v2 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B4D69C4()
{
  v2 = v0[8];
  v1 = v0[9];
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[7];
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v3 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_54_3();
  return sub_23B4D1230();
}

uint64_t sub_23B4D6AB0()
{
  OUTLINED_FUNCTION_119_0();
  v1 = v0[8];
  v7 = v0[6];
  v8 = v0[7];
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v2 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_54_3();
  return sub_23B4D027C(v5);
}

void sub_23B4D6C48()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = (v8 & 0xFFFFFFFFFFFFFFFELL);
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_130_1();
    v11 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    v12 = *v10;
    v13 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    v15 = OUTLINED_FUNCTION_44_5(v14);
    v4(v15);
    swift_checkMetadataState();
  }

  else
  {
    v27[4] = v1;
    v27[5] = v2;
    v27[0] = v27;
    v27[1] = v8;
    MEMORY[0x28223BE20](v1);
    OUTLINED_FUNCTION_27();
    v18 = v17 - v16;
    v19 = 0;
    v27[2] = v7;
    v27[3] = v6;
    while (v5 != v19)
    {
      v20 = *((v7 & 0xFFFFFFFFFFFFFFFELL) + 8 * v19);
      v21 = v10[v19];
      v22 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v19);
      v23 = OUTLINED_FUNCTION_44_5(*((v6 & 0xFFFFFFFFFFFFFFFELL) + 8 * v19));
      *(v18 + 8 * v19++) = (v4)(v23);
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v24 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v24);
  v26 = *(v25 + 80);
  sub_23B4CF880();
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4D6E7C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_249_0((*(v1 + 24) & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_27();
    v5 = v4 - v3;
      ;
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v7 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_36_10();
  return sub_23B4D50BC();
}

uint64_t sub_23B4D6F80()
{
  OUTLINED_FUNCTION_119_0();
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v1 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_36_10();

  return sub_23B4C7544(v4);
}

uint64_t sub_23B4D705C()
{
  OUTLINED_FUNCTION_119_0();
  v6 = *(v0 + 48);
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v1 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_36_10();

  return sub_23B4C6C3C(v4);
}

uint64_t sub_23B4D7138()
{
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_96_1();
  v0 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_36_10();

  return sub_23B4C63C8(v3);
}

uint64_t sub_23B4D7200()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_226_1();
  swift_getTupleTypeMetadata3();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_84_0();
  v4 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 80);
  v7 = OUTLINED_FUNCTION_36_10();

  return sub_23B4C5BBC(v7);
}

uint64_t sub_23B4D72B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_74_1();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  v3 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_36_10();

  return sub_23B4C5410(v6);
}

uint64_t sub_23B4D7360(uint64_t a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_65_0();
  v4 = sub_23B50D364();
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 80);

  return sub_23B4C4A90(a1);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    OUTLINED_FUNCTION_249_0((*(v1 + 24) & 0xFFFFFFFFFFFFFFFELL));
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_27();
    v5 = v4 - v3;
      ;
    }

    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v7 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  (*(v8 + 8))(v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
  OUTLINED_FUNCTION_40_7();
  return swift_deallocObject();
}

uint64_t sub_23B4D7504(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return a2;
}

uint64_t objectdestroy_90Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
  OUTLINED_FUNCTION_40_7();

  return swift_deallocObject();
}

uint64_t sub_23B4D75F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_23B50AD24();
  OUTLINED_FUNCTION_28_0(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A8, &qword_23B523820);
  OUTLINED_FUNCTION_28_0(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v9 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v16 = v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_23B4BDD28(a1, a2, v2 + v7, *(v2 + v9), v2 + v15, *v16, *(v16 + 8));
}

uint64_t sub_23B4D7720(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_23B4D7774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_65();
  v9(v8);
  return v4;
}

void *sub_23B4D77BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v89 = a5;
  v87 = a4;
  v70 = a3;
  v15 = sub_23B50AB34();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_23B50BE34();
  v75 = *(v86 - 8);
  v19 = *(v75 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v82 = &v68 - v22;
  v85 = sub_23B50B774();
  v74 = *(v85 - 8);
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v85);
  v72 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v79 = &v68 - v26;
  v83 = sub_23B50B7C4();
  v73 = *(v83 - 8);
  v27 = *(v73 + 64);
  MEMORY[0x28223BE20](v83);
  v78 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v77 = &v68 - v30;
  v80 = sub_23B50B614();
  v71 = *(v80 - 8);
  v31 = *(v71 + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v68 - v34;
  v99[3] = a9;
  v99[4] = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v99);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0, a6, a9);
  v98[3] = type metadata accessor for StaticServiceConfigurationProvider();
  v98[4] = &off_284E0EE38;
  v98[0] = a7;
  v37 = OBJC_IVAR____TtC10WeatherKit14WeatherService_modelFactory;
  type metadata accessor for WeatherModelFactory();
  swift_allocObject();
  *(a8 + v37) = sub_23B39523C();
  v38 = OBJC_IVAR____TtC10WeatherKit14WeatherService_shouldShowSimulatedAlert;
  type metadata accessor for Automation();
  *(a8 + v38) = static Automation.shouldShowSimulatedAlert.getter() & 1;
  a8[7] = a1;
  sub_23B393B54(v99, (a8 + 8));
  v88 = a2;
  sub_23B3943E8(a2, a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_endpoint);
  sub_23B50AFE4();
  v81 = a1;

  sub_23B50AFD4();
  sub_23B50AF04();
  sub_23B50AFC4();

  if (v95 == 1)
  {
    v39 = sub_23B50B644();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = sub_23B50B634();
    v43 = MEMORY[0x277D7ABF0];
    a8[5] = v39;
    a8[6] = v43;
    a8[2] = v42;
    v44 = v87;
  }

  else
  {
    v45 = v70;
    v46 = v35;
    v69 = v35;
    sub_23B39530C(v70 & 0x10101, v35);
    v47 = v18;
    v48 = v77;
    sub_23B395450(v45 & 1, v77);
    v49 = v79;
    sub_23B39551C(v45 & 0x101, v79);
    v50 = v88;
    WDSEndpoint.url.getter(v47);
    v51 = (v50 + *(type metadata accessor for WDSEndpoint() + 20));
    v52 = v51[1];
    if (*v51)
    {
      v53 = v51[1];
    }

    sub_23B3943D8(*v51);
    v54 = v82;
    sub_23B50BE24();
    v55 = v75;
    (*(v75 + 16))(v84, v54, v86);
    v56 = v71;
    (*(v71 + 16))(v76, v46, v80);
    v57 = v73;
    (*(v73 + 16))(v78, v48, v83);
    v58 = v74;
    (*(v74 + 16))(v72, v49, v85);
    v44 = v87;
    sub_23B3923E8(v87, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353C8, &qword_23B523840);
    swift_dynamicCast();
    sub_23B3923E8(v89, &v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353D0, &qword_23B523848);
    swift_dynamicCast();
    sub_23B393B54(v98, &v90);
    v59 = type metadata accessor for WeatherServiceClientSettingsProvider();
    v60 = swift_allocObject();
    sub_23B399858(&v90, v60 + 16);
    v91 = v59;
    v92 = sub_23B391884(qword_280B45810, type metadata accessor for WeatherServiceClientSettingsProvider);
    *&v90 = v60;
    v61 = sub_23B50B764();
    v62 = objc_allocWithZone(v61);
    v63 = sub_23B50B754();
    v96 = v61;
    v97 = MEMORY[0x277D7AC40];
    *&v95 = v63;
    (*(v55 + 8))(v82, v86);
    (*(v58 + 8))(v79, v85);
    (*(v57 + 8))(v77, v83);
    (*(v56 + 8))(v69, v80);
    sub_23B399858(&v95, (a8 + 2));
  }

  v64 = v89;
  sub_23B393B54((a8 + 2), &v95);
  type metadata accessor for WeatherAQIScaleService();
  v65 = swift_allocObject();
  *(v65 + 16) = v81;
  sub_23B399858(&v95, v65 + 24);
  *(a8 + OBJC_IVAR____TtC10WeatherKit14WeatherService_airQualityScaleService) = v65;
  v66 = a8[7];

  sub_23B395624();

  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_23B393E24(v88, type metadata accessor for WDSEndpoint);
  __swift_destroy_boxed_opaque_existential_1(v99);
  __swift_destroy_boxed_opaque_existential_1(v98);
  return a8;
}

void objectdestroy_122Tm()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v0[2];
  v5 = (v0[5] & 0xFFFFFFFFFFFFFFFELL);
  if (v4 == 1)
  {
    v6 = *(v0[4] & 0xFFFFFFFFFFFFFFFELL);
    v7 = *v5;
    v8 = *(v0[6] & 0xFFFFFFFFFFFFFFFELL);
    v9 = OUTLINED_FUNCTION_44_5(*(v0[3] & 0xFFFFFFFFFFFFFFFELL));
    v3(v9);
    swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27_3();
    v10 = 0;
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
    while (v4 != v10)
    {
      v17 = *(v14 + 8 * v10);
      v18 = v5[v10];
      v19 = *(v16 + 8 * v10);
      v20 = OUTLINED_FUNCTION_44_5(*(v12 + 8 * v10));
      *(v1 + 8 * v10++) = (v3)(v20);
    }

    OUTLINED_FUNCTION_177_1();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133940, &qword_23B5194E8);
  OUTLINED_FUNCTION_63();
  v21 = sub_23B50D364();
  OUTLINED_FUNCTION_10(v21);
  v23 = *(v22 + 64);
  (*(v22 + 8))(v0 + ((*(v22 + 80) + 56) & ~*(v22 + 80)));
  OUTLINED_FUNCTION_40_7();
  swift_deallocObject();
  OUTLINED_FUNCTION_20();
}

uint64_t OUTLINED_FUNCTION_75_1()
{
  v4[18] = v0;
  v4[19] = v1;
  v4[20] = v2;
  v4[21] = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_80_2()
{
  v4 = v1 + *(v2 + 44);

  return __swift_getEnumTagSinglePayload(v4, 1, v0);
}

uint64_t OUTLINED_FUNCTION_81_2@<X0>(uint64_t a1@<X8>)
{

  return __swift_getEnumTagSinglePayload(v2 + a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v10[2];
  v11 = v10[3];
  *(v9 + 280) = v10[4];
  *(v9 + 288) = v8;
  *(v9 + 264) = v12;
  *(v9 + 272) = v11;
  *(v9 + 248) = a7;
  *(v9 + 256) = a8;
  *(v9 + 232) = a4;
  *(v9 + 240) = a6;
  *(v9 + 360) = a5;
  *(v9 + 216) = a2;
  *(v9 + 224) = a3;
  *(v9 + 208) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_100_0()
{
  v2 = 8 * *(v0 + 144) + 15;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_108_1()
{
  result = v0[26];
  v2 = v0[24];
  v3 = *(v0[25] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_139_1()
{
  result = *(*(v2 + 16) + 8 * v1);
  v4 = *(v2 + 96);
  v5 = *(*(v0 + 8 * v1) - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_143_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_145_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_164_1()
{
}

uint64_t OUTLINED_FUNCTION_165_1()
{
  result = v0[25];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_196_1()
{
  v3 = *(v1 + *(v0 + 24));
}

uint64_t OUTLINED_FUNCTION_199_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_201_0()
{

  return sub_23B50D364();
}

uint64_t OUTLINED_FUNCTION_202_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_241_1()
{
  v2 = 8 * *(v0 + 152) + 15;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_245_0(uint64_t a1)
{

  return sub_23B4C4AF8(v1, a1);
}

uint64_t OUTLINED_FUNCTION_246_1(uint64_t a1)
{
  *(v1 + 296) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_247_1(uint64_t a1)
{
  *(v1 + 288) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_249_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return swift_checkMetadataState();
}

uint64_t WeatherServicePeriodicRelativeRange.init(periodStart:periodEnd:periodLengths:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23B50AD24();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a1, v8);
  v10 = type metadata accessor for WeatherServicePeriodicRelativeRange();
  result = (v9)(a4 + *(v10 + 20), a2, v8);
  *(a4 + *(v10 + 24)) = a3;
  return result;
}

uint64_t Array<A>.dayWeather(for:timeZone:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_23B50AE84();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  sub_23B50ADF4();
  sub_23B4949A0(sub_23B4D8974, a1, a2);
  return (*(v7 + 8))(v12, v4);
}

uint64_t Array<A>.humidity(for:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = type metadata accessor for DayPartForecast();
  v5 = OUTLINED_FUNCTION_6(v34);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  v11 = sub_23B50AE84();
  v12 = OUTLINED_FUNCTION_5(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133828, &qword_23B518D00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v33 - v22;
  v24 = type metadata accessor for DayWeather();
  v25 = OUTLINED_FUNCTION_6(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_27();
  v30 = v29 - v28;
  sub_23B50ADF4();
  v35 = v19;
  v36 = a1;
  sub_23B4949A0(sub_23B4D8AD0, a3, v23);
  (*(v14 + 8))(v19, v11);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_23B4D89AC(v23);
    return 0;
  }

  else
  {
    sub_23B48945C(v23, v30);
    sub_23B4D8A14(v30 + *(v24 + 132), v10);
    sub_23B4D8A78(v30, type metadata accessor for DayWeather);
    v31 = *(v10 + *(v34 + 100));
    sub_23B4D8A78(v10, type metadata accessor for DayPartForecast);
  }

  return v31;
}

uint64_t sub_23B4D8974()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_23B50AE34() & 1;
}

uint64_t sub_23B4D89AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133828, &qword_23B518D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4D8A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayPartForecast();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4D8A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

double static TideEvents.mock()@<D0>(uint64_t a1@<X8>)
{
  sub_23B50B9D4();
  sub_23B50B994();
  if (qword_27E131C30 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1353D8;
  v3 = qword_27E131C38;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_27E1353E0;
  v5 = type metadata accessor for TideEvents();
  v6 = v5[8];

  static WeatherMetadata.mock()((a1 + v6));
  *(a1 + v5[5]) = v2;
  *(a1 + v5[6]) = v4;
  result = 36.55;
  *(a1 + v5[7]) = xmmword_23B523880;
  return result;
}

uint64_t sub_23B4D8BE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v47 = *(v0 - 8);
  v1 = *(v47 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - v2;
  v46 = sub_23B50AD24();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v46);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132A78, &qword_23B514118);
  v8 = (type metadata accessor for TideEvent() - 8);
  v9 = *v8;
  v41 = *(*v8 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v42 = v11;
  *(v11 + 16) = xmmword_23B523890;
  v12 = v11 + v10;
  v13 = v7;
  sub_23B50AB94();
  v44 = objc_opt_self();
  v14 = [v44 feet];
  v43 = sub_23B3E3A54();
  sub_23B50A9B4();
  v39 = *(v4 + 32);
  v40 = v4 + 32;
  v15 = v46;
  v39(v12, v7, v46);
  *(v12 + v8[7]) = 0;
  v16 = v8[8];
  v17 = *(v47 + 32);
  v37 = v0;
  v38 = v17;
  v47 += 32;
  v45 = v12;
  v17(v12 + v16, v3, v0);
  v18 = v41;
  v19 = v12 + v41;
  v20 = v13;
  sub_23B50AB94();
  v21 = v44;
  v22 = [v44 feet];
  v36 = v3;
  sub_23B50A9B4();
  v23 = v15;
  v24 = v39;
  v39(v19, v20, v23);
  *(v19 + v8[7]) = 1;
  v25 = v0;
  v26 = v38;
  v38(v19 + v8[8], v3, v25);
  v27 = v45 + 2 * v18;
  sub_23B50AB94();
  v28 = [v21 feet];
  v29 = v36;
  sub_23B50A9B4();
  v30 = v46;
  v24(v27, v20, v46);
  *(v27 + v8[7]) = 0;
  v31 = v27 + v8[8];
  v32 = v37;
  v26(v31, v29, v37);
  v33 = v45 + 3 * v18;
  sub_23B50AB94();
  v34 = [v44 feet];
  sub_23B50A9B4();
  v24(v33, v20, v30);
  *(v33 + v8[7]) = 1;
  result = (v26)(v33 + v8[8], v29, v32);
  qword_27E1353D8 = v42;
  return result;
}

uint64_t sub_23B4D9010()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v37 - v3;
  v50 = sub_23B50AD24();
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132A70, &qword_23B514110);
  v9 = type metadata accessor for HourTide();
  v10 = *(v9 - 8);
  v45 = *(v10 + 72);
  v11 = v9 - 8;
  v43 = v9 - 8;
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  v46 = v13;
  *(v13 + 16) = xmmword_23B523890;
  v14 = v13 + v12;
  sub_23B50AB94();
  v15 = objc_opt_self();
  v16 = [v15 feet];
  v48 = sub_23B3E3A54();
  sub_23B50A9B4();
  v44 = *(v5 + 32);
  v47 = v5 + 32;
  v49 = v14;
  v17 = v50;
  v44(v14, v8, v50);
  v18 = *(v11 + 28);
  v40 = *(v1 + 32);
  v41 = v1 + 32;
  v38 = v4;
  v39 = v0;
  v40(v14 + v18, v4, v0);
  v19 = v45;
  v20 = v14 + v45;
  v21 = v8;
  sub_23B50AB94();
  v42 = v15;
  v22 = [v15 feet];
  sub_23B50A9B4();
  v23 = v17;
  v24 = v44;
  v44(v14 + v19, v8, v23);
  v25 = v43;
  v26 = v0;
  v27 = v40;
  v40(v20 + *(v43 + 28), v4, v26);
  v28 = v49 + 2 * v19;
  sub_23B50AB94();
  v29 = [v15 feet];
  v30 = v38;
  sub_23B50A9B4();
  v31 = v50;
  v24(v28, v21, v50);
  v32 = v28 + *(v25 + 28);
  v33 = v39;
  v27(v32, v30, v39);
  v34 = v49 + 3 * v19;
  sub_23B50AB94();
  v35 = [v42 feet];
  sub_23B50A9B4();
  v24(v34, v21, v31);
  result = (v27)(v34 + *(v25 + 28), v30, v33);
  qword_27E1353E0 = v46;
  return result;
}

uint64_t LocationInfo.init(date:expiration:primaryName:secondaryName:preciseName:countryCode:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = type metadata accessor for LocationInfo();
  v17 = (a9 + v16[7]);
  v18 = (a9 + v16[8]);
  v19 = (a9 + v16[9]);
  v20 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v20);
  v22 = *(v21 + 32);
  v22(a9, a1, v20);
  result = (v22)(a9 + v16[5], a2, v20);
  v24 = (a9 + v16[6]);
  *v24 = a3;
  v24[1] = a4;
  *v17 = a5;
  v17[1] = a6;
  *v18 = a7;
  v18[1] = a8;
  *v19 = a10;
  v19[1] = a11;
  v25 = (a9 + v16[10]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

uint64_t LocationInfo.date.getter()
{
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_65();

  return v4(v3);
}

uint64_t LocationInfo.date.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t LocationInfo.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationInfo() + 20);
  v4 = sub_23B50AD24();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t LocationInfo.expiration.setter()
{
  OUTLINED_FUNCTION_19();
  v2 = *(type metadata accessor for LocationInfo() + 20);
  v3 = sub_23B50AD24();
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t LocationInfo.expiration.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for LocationInfo() + 20);
  return OUTLINED_FUNCTION_44();
}

uint64_t LocationInfo.primaryName.getter()
{
  v0 = type metadata accessor for LocationInfo();
  OUTLINED_FUNCTION_9_31(*(v0 + 24));
  return OUTLINED_FUNCTION_65();
}

uint64_t LocationInfo.primaryName.setter()
{
  v3 = OUTLINED_FUNCTION_10_24();
  result = OUTLINED_FUNCTION_18(*(v3 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LocationInfo.primaryName.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for LocationInfo() + 24);
  return OUTLINED_FUNCTION_44();
}

uint64_t LocationInfo.secondaryName.getter()
{
  v0 = type metadata accessor for LocationInfo();
  OUTLINED_FUNCTION_9_31(*(v0 + 28));
  return OUTLINED_FUNCTION_65();
}

uint64_t LocationInfo.secondaryName.setter()
{
  v3 = OUTLINED_FUNCTION_10_24();
  result = OUTLINED_FUNCTION_18(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LocationInfo.secondaryName.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for LocationInfo() + 28);
  return OUTLINED_FUNCTION_44();
}

uint64_t LocationInfo.preciseName.getter()
{
  v0 = type metadata accessor for LocationInfo();
  OUTLINED_FUNCTION_9_31(*(v0 + 32));
  return OUTLINED_FUNCTION_65();
}

uint64_t LocationInfo.preciseName.setter()
{
  v3 = OUTLINED_FUNCTION_10_24();
  result = OUTLINED_FUNCTION_18(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LocationInfo.preciseName.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for LocationInfo() + 32);
  return OUTLINED_FUNCTION_44();
}

uint64_t LocationInfo.countryCode.getter()
{
  v0 = type metadata accessor for LocationInfo();
  OUTLINED_FUNCTION_9_31(*(v0 + 36));
  return OUTLINED_FUNCTION_65();
}

uint64_t LocationInfo.countryCode.setter()
{
  v3 = OUTLINED_FUNCTION_10_24();
  result = OUTLINED_FUNCTION_18(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LocationInfo.countryCode.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for LocationInfo() + 36);
  return OUTLINED_FUNCTION_44();
}

uint64_t LocationInfo.timeZone.getter()
{
  v0 = type metadata accessor for LocationInfo();
  OUTLINED_FUNCTION_9_31(*(v0 + 40));
  return OUTLINED_FUNCTION_65();
}

uint64_t LocationInfo.timeZone.setter()
{
  v3 = OUTLINED_FUNCTION_10_24();
  result = OUTLINED_FUNCTION_18(*(v3 + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t LocationInfo.timeZone.modify()
{
  OUTLINED_FUNCTION_19();
  v0 = *(type metadata accessor for LocationInfo() + 40);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B4D9A7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4E7972616D697270 && a2 == 0xEB00000000656D61;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7261646E6F636573 && a2 == 0xED0000656D614E79;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4E65736963657270 && a2 == 0xEB00000000656D61;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_23B50D834();

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

uint64_t sub_23B4D9CC4(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6974617269707865;
      break;
    case 2:
      result = 0x4E7972616D697270;
      break;
    case 3:
      result = 0x7261646E6F636573;
      break;
    case 4:
      result = 0x4E65736963657270;
      break;
    case 5:
      result = 0x437972746E756F63;
      break;
    case 6:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4D9DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4D9A7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4D9DD8(uint64_t a1)
{
  v2 = sub_23B4DA1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4D9E14(uint64_t a1)
{
  v2 = sub_23B4DA1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static LocationInfo.== infix(_:_:)()
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for LocationInfo();
  v1 = v0[5];
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_27(v0[6]);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v5 = v0[7];
  OUTLINED_FUNCTION_8_28();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_13_23(v7);
    v11 = v4 && v9 == v10;
    if (!v11 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v12 = v0[8];
  OUTLINED_FUNCTION_8_28();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_13_23(v14);
    v18 = v4 && v16 == v17;
    if (!v18 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v19 = v0[9];
  OUTLINED_FUNCTION_8_28();
  if (v22)
  {
    if (v20)
    {
      OUTLINED_FUNCTION_13_23(v21);
      v25 = v4 && v23 == v24;
      if (v25 || (sub_23B50D834() & 1) != 0)
      {
        goto LABEL_33;
      }
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_33:
  OUTLINED_FUNCTION_14_27(v0[10]);
  if (v4 && v26 == v27)
  {
    return 1;
  }

  return sub_23B50D834();
}

uint64_t LocationInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353E8, &qword_23B5238A0);
  v4 = OUTLINED_FUNCTION_5(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4DA1C8();
  sub_23B50D974();
  v22 = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50);
  OUTLINED_FUNCTION_16_17();
  if (!v1)
  {
    v12 = type metadata accessor for LocationInfo();
    v13 = v12[5];
    v21 = 1;
    OUTLINED_FUNCTION_16_17();
    OUTLINED_FUNCTION_15(v12[6]);
    v20 = 2;
    OUTLINED_FUNCTION_2_46();
    sub_23B50D7A4();
    OUTLINED_FUNCTION_15(v12[7]);
    v19 = 3;
    OUTLINED_FUNCTION_2_46();
    sub_23B50D774();
    OUTLINED_FUNCTION_15(v12[8]);
    v18 = 4;
    OUTLINED_FUNCTION_2_46();
    sub_23B50D774();
    OUTLINED_FUNCTION_15(v12[9]);
    v17 = 5;
    OUTLINED_FUNCTION_2_46();
    sub_23B50D774();
    OUTLINED_FUNCTION_15(v12[10]);
    v16 = 6;
    OUTLINED_FUNCTION_2_46();
    sub_23B50D7A4();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_23B4DA1C8()
{
  result = qword_27E1353F0;
  if (!qword_27E1353F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1353F0);
  }

  return result;
}

uint64_t LocationInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = sub_23B50AD24();
  v5 = OUTLINED_FUNCTION_5(v4);
  v52 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353F8, &qword_23B5238A8);
  v14 = OUTLINED_FUNCTION_5(v47);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v46 - v19;
  v49 = type metadata accessor for LocationInfo();
  v21 = OUTLINED_FUNCTION_6(v49);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v53 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v25 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_23B4DA1C8();
  sub_23B50D964();
  v50 = v4;
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    v46 = v16;
    v60 = 0;
    sub_23B402DA8(&qword_27E132008);
    v27 = v47;
    OUTLINED_FUNCTION_17_20();
    v28 = v13;
    v29 = *(v52 + 32);
    v29(v53, v28, v4);
    v59 = 1;
    OUTLINED_FUNCTION_17_20();
    v30 = v49;
    v29(&v53[v49[5]], v10, v4);
    v58 = 2;
    OUTLINED_FUNCTION_1_40();
    v31 = sub_23B50D6E4();
    OUTLINED_FUNCTION_3_46(v31, v32, v30[6]);
    v57 = 3;
    OUTLINED_FUNCTION_1_40();
    v33 = sub_23B50D6B4();
    v34 = v46;
    OUTLINED_FUNCTION_3_46(v33, v35, v30[7]);
    v56 = 4;
    OUTLINED_FUNCTION_1_40();
    v36 = sub_23B50D6B4();
    OUTLINED_FUNCTION_3_46(v36, v37, v30[8]);
    v55 = 5;
    OUTLINED_FUNCTION_1_40();
    v38 = sub_23B50D6B4();
    OUTLINED_FUNCTION_3_46(v38, v39, v30[9]);
    v54 = 6;
    OUTLINED_FUNCTION_1_40();
    v40 = sub_23B50D6E4();
    v42 = v41;
    (*(v34 + 8))(v20, v27);
    v43 = v53;
    v44 = &v53[v30[10]];
    *v44 = v40;
    v44[1] = v42;
    sub_23B4DA77C(v43, v48);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_23B4DA7E0(v43);
  }
}

uint64_t sub_23B4DA77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4DA7E0(uint64_t a1)
{
  v2 = type metadata accessor for LocationInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for LocationInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4DA94C()
{
  result = qword_27E135400;
  if (!qword_27E135400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135400);
  }

  return result;
}

unint64_t sub_23B4DA9A4()
{
  result = qword_27E135408;
  if (!qword_27E135408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135408);
  }

  return result;
}

unint64_t sub_23B4DA9FC()
{
  result = qword_27E135410;
  if (!qword_27E135410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135410);
  }

  return result;
}

uint64_t static WeatherAlert.mock(flavor:)@<X0>(uint64_t a1@<X8>, _BYTE *a2@<X0>)
{
  switch(*a2)
  {
    case 1:
      result = sub_23B4DAFA0(a1);
      break;
    case 2:
      result = sub_23B4DB438(a1);
      break;
    case 3:
      result = sub_23B4DB8D0(a1);
      break;
    default:
      result = sub_23B4DAB18(a1);
      break;
  }

  return result;
}

uint64_t WeatherAlert.Flavor.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t sub_23B4DAB18@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMetadata();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - v14;
  sub_23B50AB04();
  v16 = sub_23B50AB34();
  result = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_27E131C20 != -1)
    {
      swift_once();
    }

    v18 = sub_23B50AD24();
    v19 = __swift_project_value_buffer(v18, qword_27E15A748);
    v20 = type metadata accessor for WeatherAlert();
    v21 = *(v18 - 8);
    v22 = *(v21 + 16);
    v23 = v21 + 16;
    v22(a1 + v20[7], v19, v18);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    v54 = v15;
    v24 = __swift_project_value_buffer(v18, qword_27E15A730);
    v22(a1 + v20[8], v24, v18);
    if (qword_27E131C28 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v18, qword_27E15A760);
    v22(v11, v25, v18);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    v22(v8, v19, v18);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    v26 = v55;
    static WeatherMetadata.mock()(v55);
    v27 = a1 + v20[18];
    sub_23B50AD54();
    v53 = v23;
    v28 = v26;
    v29 = v20[9];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v18);
    v51 = v8;
    v33 = v20[10];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v18);
    v37 = v20[13];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v16);
    v41 = v20[14];
    v52 = v22;
    v42 = v16;
    v43 = (a1 + v41);
    (*(*(v42 - 8) + 32))(a1, v54, v42);
    v44 = (a1 + v20[5]);
    *v44 = 0;
    v44[1] = 0xE000000000000000;
    sub_23B3CF890(v11, a1 + v29);
    sub_23B3CF890(v51, a1 + v33);
    v45 = a1 + v20[11];
    strcpy(v45, "Tornado Watch");
    *(v45 + 14) = -4864;
    *v43 = 0;
    v43[1] = 0;
    *(a1 + v20[15]) = 3;
    *(a1 + v20[16]) = 0;
    sub_23B3CA078(v28, a1 + v20[17]);
    v52(a1 + v20[6], v28, v18);
    sub_23B3E79F4(v28);
    v46 = a1 + v20[12];
    strcpy(v46, "Tornado Watch");
    *(v46 + 14) = -4864;
    sub_23B4DBEA4(a1 + v37);
    OUTLINED_FUNCTION_1();
    return __swift_storeEnumTagSinglePayload(v47, v48, v49, v42);
  }

  return result;
}

uint64_t sub_23B4DAFA0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMetadata();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v38 - v14;
  sub_23B50AB04();
  v16 = sub_23B50AB34();
  result = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_27E131C20 != -1)
    {
      swift_once();
    }

    v18 = sub_23B50AD24();
    v19 = __swift_project_value_buffer(v18, qword_27E15A748);
    v20 = type metadata accessor for WeatherAlert();
    v21 = *(v18 - 8);
    v22 = *(v21 + 16);
    v23 = v21 + 16;
    v22(a1 + v20[7], v19, v18);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    v41 = v15;
    v24 = __swift_project_value_buffer(v18, qword_27E15A730);
    v22(a1 + v20[8], v24, v18);
    if (qword_27E131C28 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v18, qword_27E15A760);
    v22(v11, v25, v18);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    v22(v8, v19, v18);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    v40 = 0x800000023B5389E0;
    v26 = v42;
    static WeatherMetadata.mock()(v42);
    v27 = a1 + v20[18];
    sub_23B50AD54();
    v38[0] = v8;
    v28 = v20[9];
    __swift_storeEnumTagSinglePayload(a1 + v28, 1, 1, v18);
    v29 = v20[10];
    __swift_storeEnumTagSinglePayload(a1 + v29, 1, 1, v18);
    v39 = v22;
    v30 = v20[13];
    __swift_storeEnumTagSinglePayload(a1 + v30, 1, 1, v16);
    v31 = v20[14];
    v38[1] = v23;
    v32 = v16;
    v33 = (a1 + v31);
    (*(*(v32 - 8) + 32))(a1, v41, v32);
    v34 = (a1 + v20[5]);
    *v34 = 0;
    v34[1] = 0xE000000000000000;
    sub_23B3CF890(v11, a1 + v28);
    sub_23B3CF890(v38[0], a1 + v29);
    v35 = (a1 + v20[11]);
    v36 = v40;
    *v35 = 0xD000000000000013;
    v35[1] = v36;
    *v33 = 0;
    v33[1] = 0;
    *(a1 + v20[15]) = 3;
    *(a1 + v20[16]) = 0;
    sub_23B3CA078(v26, a1 + v20[17]);
    v39(a1 + v20[6], v26, v18);
    sub_23B3E79F4(v26);
    v37 = (a1 + v20[12]);
    *v37 = 0xD000000000000013;
    v37[1] = v36;
    sub_23B4DBEA4(a1 + v30);
    return __swift_storeEnumTagSinglePayload(a1 + v30, 1, 1, v32);
  }

  return result;
}

uint64_t sub_23B4DB438@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMetadata();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v38 - v14;
  sub_23B50AB04();
  v16 = sub_23B50AB34();
  result = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_27E131C20 != -1)
    {
      swift_once();
    }

    v18 = sub_23B50AD24();
    v19 = __swift_project_value_buffer(v18, qword_27E15A748);
    v20 = type metadata accessor for WeatherAlert();
    v21 = *(v18 - 8);
    v22 = *(v21 + 16);
    v23 = v21 + 16;
    v22(a1 + v20[7], v19, v18);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    v41 = v15;
    v24 = __swift_project_value_buffer(v18, qword_27E15A730);
    v22(a1 + v20[8], v24, v18);
    if (qword_27E131C28 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v18, qword_27E15A760);
    v22(v11, v25, v18);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    v22(v8, v19, v18);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    v40 = 0x800000023B538A00;
    v26 = v42;
    static WeatherMetadata.mock()(v42);
    v27 = a1 + v20[18];
    sub_23B50AD54();
    v38[0] = v8;
    v28 = v20[9];
    __swift_storeEnumTagSinglePayload(a1 + v28, 1, 1, v18);
    v29 = v20[10];
    __swift_storeEnumTagSinglePayload(a1 + v29, 1, 1, v18);
    v39 = v22;
    v30 = v20[13];
    __swift_storeEnumTagSinglePayload(a1 + v30, 1, 1, v16);
    v31 = v20[14];
    v38[1] = v23;
    v32 = v16;
    v33 = (a1 + v31);
    (*(*(v32 - 8) + 32))(a1, v41, v32);
    v34 = (a1 + v20[5]);
    *v34 = 0;
    v34[1] = 0xE000000000000000;
    sub_23B3CF890(v11, a1 + v28);
    sub_23B3CF890(v38[0], a1 + v29);
    v35 = (a1 + v20[11]);
    v36 = v40;
    *v35 = 0xD000000000000013;
    v35[1] = v36;
    *v33 = 0;
    v33[1] = 0;
    *(a1 + v20[15]) = 3;
    *(a1 + v20[16]) = 0;
    sub_23B3CA078(v26, a1 + v20[17]);
    v39(a1 + v20[6], v26, v18);
    sub_23B3E79F4(v26);
    v37 = (a1 + v20[12]);
    *v37 = 0xD000000000000013;
    v37[1] = v36;
    sub_23B4DBEA4(a1 + v30);
    return __swift_storeEnumTagSinglePayload(a1 + v30, 1, 1, v32);
  }

  return result;
}

uint64_t sub_23B4DB8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMetadata();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - v14;
  sub_23B50AB04();
  v16 = sub_23B50AB34();
  result = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_27E131C20 != -1)
    {
      swift_once();
    }

    v18 = sub_23B50AD24();
    v19 = __swift_project_value_buffer(v18, qword_27E15A748);
    v20 = type metadata accessor for WeatherAlert();
    v21 = *(v18 - 8);
    v22 = *(v21 + 16);
    v23 = v21 + 16;
    v22(a1 + v20[7], v19, v18);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    v41 = v15;
    v24 = __swift_project_value_buffer(v18, qword_27E15A730);
    v22(a1 + v20[8], v24, v18);
    if (qword_27E131C28 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v18, qword_27E15A760);
    v22(v11, v25, v18);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    v22(v8, v19, v18);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
    v39 = 0x800000023B538A20;
    v26 = v42;
    static WeatherMetadata.mock()(v42);
    v27 = a1 + v20[18];
    sub_23B50AD54();
    v37 = v8;
    v28 = v20[9];
    __swift_storeEnumTagSinglePayload(a1 + v28, 1, 1, v18);
    v40 = v23;
    v29 = v11;
    v30 = v20[10];
    __swift_storeEnumTagSinglePayload(a1 + v30, 1, 1, v18);
    v38 = v22;
    v31 = v20[13];
    __swift_storeEnumTagSinglePayload(a1 + v31, 1, 1, v16);
    v32 = (a1 + v20[14]);
    (*(*(v16 - 8) + 32))(a1, v41, v16);
    v33 = (a1 + v20[5]);
    *v33 = 0;
    v33[1] = 0xE000000000000000;
    sub_23B3CF890(v29, a1 + v28);
    sub_23B3CF890(v37, a1 + v30);
    v34 = (a1 + v20[11]);
    v35 = v39;
    *v34 = 0xD000000000000010;
    v34[1] = v35;
    *v32 = 0;
    v32[1] = 0;
    *(a1 + v20[15]) = 0;
    *(a1 + v20[16]) = 1;
    sub_23B3CA078(v26, a1 + v20[17]);
    v38(a1 + v20[6], v26, v18);
    sub_23B3E79F4(v26);
    v36 = (a1 + v20[12]);
    *v36 = 0xD000000000000010;
    v36[1] = v35;
    sub_23B4DBEA4(a1 + v31);
    return __swift_storeEnumTagSinglePayload(a1 + v31, 1, 1, v16);
  }

  return result;
}

unint64_t sub_23B4DBD74()
{
  result = qword_27E135418;
  if (!qword_27E135418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135418);
  }

  return result;
}

_BYTE *_s6FlavorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B4DBEA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Wind.mock()@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = [objc_opt_self() degrees];
  v7 = type metadata accessor for Wind();
  v8 = v7[5];
  sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
  sub_23B50A9B4();
  v9 = objc_opt_self();
  v10 = [v9 kilometersPerHour];
  v11 = v7[6];
  sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
  sub_23B50A9B4();
  v12 = [v9 kilometersPerHour];
  sub_23B50A9B4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v13);
  v14 = v7[7];
  __swift_storeEnumTagSinglePayload(&a1[v14], 1, 1, v13);
  *a1 = 4;
  return sub_23B4983E4(v5, &a1[v14]);
}

WeatherKit::WeatherServiceMarineHourlyRelativeRange::RelativeTo_optional __swiftcall WeatherServiceMarineHourlyRelativeRange.RelativeTo.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherServiceMarineHourlyRelativeRange.RelativeTo.rawValue.getter()
{
  if (*v0)
  {
    return 7827310;
  }

  else
  {
    return 7954788;
  }
}

unint64_t sub_23B4DC178()
{
  result = qword_27E135420;
  if (!qword_27E135420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135420);
  }

  return result;
}

uint64_t sub_23B4DC1D8@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherServiceMarineHourlyRelativeRange.RelativeTo.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceMarineHourlyRelativeRange.RelativeTo(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4DC3A0()
{
  result = qword_27E135428;
  if (!qword_27E135428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135428);
  }

  return result;
}

uint64_t AirQualitySource.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AirQualitySource.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_23B4DC4DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

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

uint64_t sub_23B4DC5A8(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_23B4DC5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4DC4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4DC610(uint64_t a1)
{
  v2 = sub_23B4DCA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DC64C(uint64_t a1)
{
  v2 = sub_23B4DCA48();

  return MEMORY[0x2821FE720](a1, v2);
}

WeatherKit::AirQualitySourceKind_optional __swiftcall AirQualitySourceKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23B4DC718@<X0>(uint64_t *a1@<X8>)
{
  result = AirQualitySourceKind.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t static AirQualitySource.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (*&aModeled_4[8 * *a1] == *&aModeled_4[8 * *a2])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = sub_23B50D834();
    swift_bridgeObjectRelease_n();
    result = 0;
    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_23B50D834();
}

uint64_t AirQualitySource.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135430, &qword_23B523C70);
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v13 = *(v1 + 1);
  v16[0] = *(v1 + 2);
  v16[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4DCA48();
  sub_23B50D974();
  v19 = v12;
  v18 = 0;
  sub_23B4DCA9C();
  sub_23B50D7F4();
  if (!v2)
  {
    v17 = 1;
    sub_23B50D7A4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_23B4DCA48()
{
  result = qword_280B423E8;
  if (!qword_280B423E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423E8);
  }

  return result;
}

unint64_t sub_23B4DCA9C()
{
  result = qword_280B42370;
  if (!qword_280B42370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42370);
  }

  return result;
}

uint64_t AirQualitySource.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135438, &qword_23B523C78);
  v6 = OUTLINED_FUNCTION_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4DCA48();
  sub_23B50D964();
  if (!v2)
  {
    v21 = 0;
    sub_23B4DCCA4();
    sub_23B50D734();
    v14 = v22;
    v20 = 1;
    v16 = sub_23B50D6E4();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23B4DCCA4()
{
  result = qword_27E135440;
  if (!qword_27E135440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135440);
  }

  return result;
}

uint64_t AirQualitySource.hash(into:)()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *&aModeled_4[8 * v1];
  sub_23B50D1C4();

  return sub_23B50D1C4();
}

uint64_t AirQualitySource.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_23B50D8C4();
  v4 = *&aModeled_4[8 * v1];
  sub_23B50D1C4();

  sub_23B50D1C4();
  return sub_23B50D914();
}

uint64_t sub_23B4DCE10()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_23B50D8C4();
  AirQualitySource.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B4DCE64()
{
  result = qword_27E135448;
  if (!qword_27E135448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135448);
  }

  return result;
}

unint64_t sub_23B4DCEBC()
{
  result = qword_27E135450;
  if (!qword_27E135450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135450);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualitySourceKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AirQualitySource.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4DD0DC()
{
  result = qword_27E135458;
  if (!qword_27E135458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135458);
  }

  return result;
}

unint64_t sub_23B4DD134()
{
  result = qword_280B423D8;
  if (!qword_280B423D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423D8);
  }

  return result;
}

unint64_t sub_23B4DD18C()
{
  result = qword_280B423E0;
  if (!qword_280B423E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423E0);
  }

  return result;
}

unint64_t sub_23B4DD1E0()
{
  result = qword_280B42368;
  if (!qword_280B42368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceLocationOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 10))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 9);
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

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

uint64_t sub_23B4DD28C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v194 = a2;
  v5 = sub_23B50C254();
  v6 = OUTLINED_FUNCTION_5(v5);
  v197 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v11);
  v12 = sub_23B50C1F4();
  v202 = OUTLINED_FUNCTION_5(v12);
  v203 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v202);
  OUTLINED_FUNCTION_27();
  v201 = v17 - v16;
  v18 = type metadata accessor for HistoricalFact.Argument(0);
  v200 = *(v18 - 8);
  v19 = *(v200 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_27();
  v212 = (v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v27);
  v185 = sub_23B50AB34();
  v28 = OUTLINED_FUNCTION_5(v185);
  v178 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v35);
  v36 = sub_23B50AD24();
  v37 = OUTLINED_FUNCTION_5(v36);
  v192 = v38;
  v193 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v42);
  v182 = sub_23B50CCA4();
  v43 = OUTLINED_FUNCTION_5(v182);
  v181 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v50);
  v199 = sub_23B50C194();
  v51 = OUTLINED_FUNCTION_5(v199);
  v204 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_12();
  v195 = v55;
  MEMORY[0x28223BE20](v56);
  v58 = v177 - v57;
  v59 = sub_23B50C224();
  v60 = OUTLINED_FUNCTION_5(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v65);
  v67 = v177 - v66;
  sub_23B50C244();
  sub_23B50C214();
  v68 = v67;
  v69 = *(v62 + 8);
  v69(v68, v59);
  v70 = sub_23B50D664();

  if (!v70)
  {
    v198 = v5;
    v71 = 0;
LABEL_5:
    v72 = v199;
    sub_23B50C1A4();
    sub_23B50C184();
    v74 = v204 + 8;
    v73 = *(v204 + 8);
    (v73)(v58, v72);
    v75 = sub_23B50D664();

    if (v75 > 2)
    {
      if (qword_280B43440 == -1)
      {
LABEL_15:
        v212 = v73;
        v92 = sub_23B50CDF4();
        __swift_project_value_buffer(v92, qword_280B4E9D8);
        v93 = v197;
        v94 = *(v197 + 16);
        v95 = OUTLINED_FUNCTION_40_8();
        v96(v95);
        v97 = sub_23B50CDD4();
        v98 = sub_23B50D4B4();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v204 = v74;
          v100 = v93;
          v101 = v99;
          v203 = swift_slowAlloc();
          v208 = v203;
          *v101 = 136446210;
          v102 = v195;
          LODWORD(v202) = v98;
          sub_23B50C1A4();
          v201 = sub_23B50C184();
          v103 = v58;
          v105 = v104;
          v106 = v212;
          (v212)(v102, v199);
          v107 = *(v100 + 8);
          v107(v103, v198);
          v108 = sub_23B391F1C(v201, v105, &v208);

          *(v101 + 4) = v108;
          _os_log_impl(&dword_23B38D000, v97, v202, "Encountered an unknown historical fact period. period=%{public}s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v203);
          v72 = v199;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();
        }

        else
        {

          v124 = v58;
          v107 = *(v93 + 8);
          v107(v124, v198);
          v102 = v195;
          v106 = v212;
        }

        v125 = v196;
        sub_23B50C1A4();
        v126 = sub_23B50C184();
        v128 = v127;
        (v106)(v102, v72);
        sub_23B4E349C();
        swift_allocError();
        *v129 = v126;
        *(v129 + 8) = v128;
        *(v129 + 16) = 1;
        swift_willThrow();
        return (v107)(v125, v198);
      }

LABEL_33:
      OUTLINED_FUNCTION_0_1();
      goto LABEL_15;
    }

    v72 = v194;
    *v194 = v71;
    *(v72 + 1) = v75;
    v76 = sub_23B50C174();
    v78 = v77;
    *(v72 + 8) = v76;
    *(v72 + 16) = v77;
    *(v72 + 24) = sub_23B50C164();
    *(v72 + 32) = v79;
    v195 = v79;
    v208 = sub_23B50C1B4();
    v209 = v80;
    v207[0] = 29477;
    v207[1] = 0xE200000000000000;
    v205 = 16421;
    v206 = 0xE200000000000000;
    sub_23B3B6C10();
    v81 = sub_23B50D524();
    v58 = v82;

    *(v72 + 40) = v81;
    *(v72 + 48) = v58;
    v187 = v58;
    v73 = sub_23B50C234();
    v74 = *(v73 + 16);
    if (v74)
    {
      v186 = v78;
      v196 = a1;
      v208 = MEMORY[0x277D84F90];
      sub_23B41B2E4(0, v74, 0);
      v72 = 0;
      v83 = v208;
      v199 = v73 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
      v84 = v203 + 1;
      while (v72 < *(v73 + 16))
      {
        v85 = v3;
        v86 = v201;
        (v203[2])(v201, v199 + v203[9] * v72, v202);
        sub_23B4E1624(v86, v207, v212);
        if (v85)
        {

          (*(v197 + 8))(v196, v198);
          v138 = *v84;
          v139 = OUTLINED_FUNCTION_43_10();
          v140(v139);
        }

        v204 = 0;
        v87 = *v84;
        v88 = OUTLINED_FUNCTION_43_10();
        v89(v88);
        v208 = v83;
        v91 = *(v83 + 16);
        v90 = *(v83 + 24);
        v58 = (v91 + 1);
        if (v91 >= v90 >> 1)
        {
          sub_23B41B2E4(v90 > 1, v91 + 1, 1);
          v83 = v208;
        }

        ++v72;
        *(v83 + 16) = v58;
        sub_23B4E20E8(v212, v83 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v91, type metadata accessor for HistoricalFact.Argument);
        v3 = v204;
        if (v74 == v72)
        {

          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v204 = v2;

    v83 = MEMORY[0x277D84F90];
LABEL_27:
    v141 = v194;
    *(v194 + 56) = v83;
    v142 = v180;
    sub_23B50C204();
    v143 = v190;
    sub_23B50CC84();
    v144 = *(v181 + 8);
    v145 = v142;
    v146 = v182;
    v144(v145, v182);
    OUTLINED_FUNCTION_37_11(&v209);
    v147 = v191;
    sub_23B50CC14();
    v144(v72, v146);
    OUTLINED_FUNCTION_37_11(v210);
    sub_23B50CC74();
    v149 = v148;
    v144(v72, v146);
    OUTLINED_FUNCTION_37_11(&v211);
    sub_23B50CC94();
    v151 = v150;
    v144(v72, v146);
    v152 = v141 + *(type metadata accessor for HistoricalFact(0) + 40);
    v153 = type metadata accessor for WeatherMetadata();
    v154 = v153[8];
    *(v154 + v152) = 0;
    v155 = *(v192 + 16);
    v156 = v143;
    v157 = v193;
    v155(v152, v156, v193);
    v155(v152 + v153[5], v147, v157);
    *(v152 + v153[6]) = v149;
    *(v152 + v153[7]) = v151;
    v158 = v183;
    sub_23B50AB04();
    v159 = v185;
    result = __swift_getEnumTagSinglePayload(v158, 1, v185);
    v160 = v184;
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v161 = *(v178 + 32);
      v161(v189, v158, v159);
      OUTLINED_FUNCTION_32_10();
      v162 = v177[4];
      sub_23B50AB04();
      result = OUTLINED_FUNCTION_4_19(v162);
      v163 = v179;
      if (!v164)
      {
        v212 = v154;
        v161(v188, v162, v159);
        OUTLINED_FUNCTION_32_10();
        sub_23B50AB04();
        result = OUTLINED_FUNCTION_4_19(v160);
        if (!v164)
        {
          v161(v163, v160, v159);
          OUTLINED_FUNCTION_32_10();
          v165 = v177[3];
          sub_23B50AB04();
          result = OUTLINED_FUNCTION_4_19(v165);
          if (!v164)
          {
            v166 = OUTLINED_FUNCTION_67_0();
            v167(v166);
            v168 = v193;
            v169 = *(v192 + 8);
            v169(v191, v193);
            v169(v190, v168);
            v161(v177[2], v165, v159);
            v170 = type metadata accessor for WeatherAttribution.Storage();
            v171 = *(v170 + 48);
            v172 = *(v170 + 52);
            swift_allocObject();
            sub_23B42E3E8();
            v174 = v173;
            v175 = v212;
            v176 = *(v212 + v152);

            *(v175 + v152) = v174;
            return result;
          }

          goto LABEL_37;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (v70 == 1)
  {
    v198 = v5;
    v71 = 1;
    goto LABEL_5;
  }

  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v109 = sub_23B50CDF4();
  __swift_project_value_buffer(v109, qword_280B4E9D8);
  v110 = v197;
  v111 = *(v197 + 16);
  v112 = OUTLINED_FUNCTION_40_8();
  v113(v112);
  v114 = v5;
  v115 = sub_23B50CDD4();
  v116 = sub_23B50D4B4();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v198 = v114;
    v212 = v118;
    v208 = v118;
    *v117 = 136446210;
    OUTLINED_FUNCTION_163(&v203);
    LODWORD(v203) = v116;
    sub_23B50C244();
    v202 = sub_23B50C214();
    v119 = v58;
    v121 = v120;
    v69(v114, v59);
    v122 = *(v110 + 8);
    v122(v119, v198);
    v123 = sub_23B391F1C(v202, v121, &v208);

    *(v117 + 4) = v123;
    _os_log_impl(&dword_23B38D000, v115, v203, "Encountered an unknown historical fact condition. condition=%{public}s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v212);
    v114 = v198;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v122 = *(v110 + 8);
    v122(v58, v114);
  }

  v131 = v196;
  sub_23B50C1A4();
  v132 = sub_23B50C184();
  v134 = v133;
  v135 = OUTLINED_FUNCTION_41_7();
  v136(v135, v199);
  sub_23B4E349C();
  swift_allocError();
  *v137 = v132;
  *(v137 + 8) = v134;
  *(v137 + 16) = 0;
  swift_willThrow();
  return (v122)(v131, v114);
}

WeatherKit::HistoricalFact::Condition_optional __swiftcall HistoricalFact.Condition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t HistoricalFact.Condition.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7469706963657270;
  }

  else
  {
    result = 0x74617265706D6574;
  }

  *v0;
  return result;
}

uint64_t sub_23B4DE3AC@<X0>(uint64_t *a1@<X8>)
{
  result = HistoricalFact.Condition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

WeatherKit::HistoricalFact::Period_optional __swiftcall HistoricalFact.Period.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HistoricalFact.Period.rawValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_48_6();
  v4 = 0x68746E6F6DLL;
  if (!v5)
  {
    v4 = 0x6B6165727473;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23B4DE544@<X0>(uint64_t *a1@<X8>)
{
  result = HistoricalFact.Period.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static HistoricalFact.Argument.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v4 = OUTLINED_FUNCTION_5(v3);
  v76 = v5;
  v77 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12();
  v73 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_76();
  v72 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  v12 = OUTLINED_FUNCTION_5(v11);
  v74 = v13;
  v75 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - v17;
  v19 = type metadata accessor for HistoricalFact.Argument(0);
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v72 - v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v32);
  v34 = (&v72 - v33);
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135460, &qword_23B524040) - 8) + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v36);
  v38 = &v72 - v37;
  v40 = &v72 + *(v39 + 56) - v37;
  sub_23B4E2144(v78, &v72 - v37, type metadata accessor for HistoricalFact.Argument);
  sub_23B4E2144(v79, v40, type metadata accessor for HistoricalFact.Argument);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_55();
      sub_23B4E2144(v38, v2, v63);
      if (OUTLINED_FUNCTION_39_10() == 1)
      {
        v65 = v74;
        v64 = v75;
        (*(v74 + 32))(v18, v40, v75);
        OUTLINED_FUNCTION_4_4(&qword_280B42B78, &qword_27E131E30, &qword_23B511AC0);
        v42 = sub_23B50D134();
        v66 = *(v65 + 8);
        v66(v18, v64);
        v66(v2, v64);
        goto LABEL_18;
      }

      v67 = OUTLINED_FUNCTION_67_0();
      goto LABEL_24;
    case 2u:
      OUTLINED_FUNCTION_0_55();
      sub_23B4E2144(v38, v30, v51);
      if (OUTLINED_FUNCTION_39_10() == 2)
      {
        v53 = v76;
        v52 = v77;
        OUTLINED_FUNCTION_45_7();
        v54 = v72;
        v55(v72, v40, v52);
        OUTLINED_FUNCTION_4_4(&qword_280B42BC0, &qword_27E131E28, &qword_23B50EFB0);
        OUTLINED_FUNCTION_43_10();
        v42 = sub_23B50D134();
        v56 = *(v53 + 8);
        v56(v54, v52);
        v56(v30, v52);
        goto LABEL_18;
      }

      v67 = OUTLINED_FUNCTION_41_7();
      goto LABEL_22;
    case 3u:
      OUTLINED_FUNCTION_0_55();
      sub_23B4E2144(v38, v27, v57);
      if (OUTLINED_FUNCTION_39_10() == 3)
      {
        v59 = v76;
        v58 = v77;
        OUTLINED_FUNCTION_45_7();
        v60 = v73;
        v61(v73, v40, v58);
        OUTLINED_FUNCTION_4_4(&qword_280B42BC0, &qword_27E131E28, &qword_23B50EFB0);
        v42 = sub_23B50D134();
        v62 = *(v59 + 8);
        v62(v60, v58);
        v62(v27, v58);
LABEL_18:
        OUTLINED_FUNCTION_6_27();
        return v42 & 1;
      }

      v68 = *(v76 + 8);
      v67 = v27;
LABEL_22:
      v69 = v77;
LABEL_24:
      v68(v67, v69);
      goto LABEL_25;
    case 4u:
      OUTLINED_FUNCTION_0_55();
      v43 = OUTLINED_FUNCTION_65();
      sub_23B4E2144(v43, v44, v45);
      v47 = *(v24 + 1);
      v46 = *(v24 + 2);
      if (OUTLINED_FUNCTION_39_10() != 4)
      {

LABEL_25:
        sub_23B4DEC0C(v38);
        goto LABEL_26;
      }

      if (*v24 != *v40)
      {

LABEL_29:
        OUTLINED_FUNCTION_6_27();
LABEL_26:
        v42 = 0;
        return v42 & 1;
      }

      if (v47 != *(v40 + 1) || v46 != *(v40 + 2))
      {
        v49 = *(v40 + 2);
        v50 = sub_23B50D834();

        if (v50)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      v71 = *(v40 + 2);

LABEL_31:
      OUTLINED_FUNCTION_6_27();
      v42 = 1;
      return v42 & 1;
    default:
      OUTLINED_FUNCTION_0_55();
      sub_23B4E2144(v38, v34, v41);
      if (OUTLINED_FUNCTION_39_10())
      {
        goto LABEL_25;
      }

      v42 = *v34 == *v40;
      goto LABEL_18;
  }
}

uint64_t sub_23B4DEC0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135460, &qword_23B524040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4DEC74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656765746E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000023B5282C0 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1702125924 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_23B50D834();

          if (v10)
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

unint64_t sub_23B4DEE28(char a1)
{
  result = 0x72656765746E69;
  switch(a1)
  {
    case 1:
      result = 0x74617265706D6574;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6C6C6166776F6E73;
      break;
    case 4:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4DEED4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

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

uint64_t sub_23B4DEF94(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_23B4DEFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4DEC74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4DEFDC(uint64_t a1)
{
  v2 = sub_23B4DFA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF018(uint64_t a1)
{
  v2 = sub_23B4DFA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4DF05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4DEED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4DF084(uint64_t a1)
{
  v2 = sub_23B4DFAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF0C0(uint64_t a1)
{
  v2 = sub_23B4DFAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4DF0FC(uint64_t a1)
{
  v2 = sub_23B4DFC40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF138(uint64_t a1)
{
  v2 = sub_23B4DFC40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4DF174(uint64_t a1)
{
  v2 = sub_23B4DFB98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF1B0(uint64_t a1)
{
  v2 = sub_23B4DFB98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4DF1EC(uint64_t a1)
{
  v2 = sub_23B4DFB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF228(uint64_t a1)
{
  v2 = sub_23B4DFB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4DF264(uint64_t a1)
{
  v2 = sub_23B4DFBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF2A0(uint64_t a1)
{
  v2 = sub_23B4DFBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HistoricalFact.Argument.encode(to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135468, &qword_23B524048);
  v3 = OUTLINED_FUNCTION_5(v2);
  v109 = v4;
  v110 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52();
  v108 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135470, &qword_23B524050);
  v10 = OUTLINED_FUNCTION_5(v9);
  v106 = v11;
  v107 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52();
  v105 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135478, &qword_23B524058);
  v17 = OUTLINED_FUNCTION_5(v16);
  v103 = v18;
  v104 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_52();
  v102 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v24 = OUTLINED_FUNCTION_5(v23);
  v111 = v25;
  v112 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12();
  v101 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_76();
  v100 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135480, &qword_23B524060);
  v32 = OUTLINED_FUNCTION_5(v31);
  v98 = v33;
  v99 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_52();
  v97 = v37;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5(v96);
  v95 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v41);
  v43 = &v93 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135488, &qword_23B524068);
  OUTLINED_FUNCTION_5(v44);
  v94 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v48);
  v50 = &v93 - v49;
  v51 = type metadata accessor for HistoricalFact.Argument(0);
  v52 = OUTLINED_FUNCTION_6(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_27();
  v57 = (v56 - v55);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135490, &qword_23B524070);
  v59 = OUTLINED_FUNCTION_5(v58);
  v114 = v60;
  v115 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v63);
  v65 = *(a1 + 24);
  v64 = *(a1 + 32);
  v66 = OUTLINED_FUNCTION_230();
  __swift_project_boxed_opaque_existential_1(v66, v67);
  sub_23B4DFA9C();
  sub_23B50D974();
  OUTLINED_FUNCTION_0_55();
  sub_23B4E2144(v113, v57, v68);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v88 = v95;
      v89 = v96;
      (*(v95 + 32))(v43, v57, v96);
      v118 = 1;
      sub_23B4DFBEC();
      OUTLINED_FUNCTION_26_17();
      OUTLINED_FUNCTION_2_10(&qword_280B42B88, &qword_27E131E30, &qword_23B511AC0);
      sub_23B50D7F4();
      v90 = OUTLINED_FUNCTION_29_12();
      v91(v90);
      (*(v88 + 8))(v43, v89);
      goto LABEL_11;
    case 2u:
      v81 = v111;
      v80 = v112;
      OUTLINED_FUNCTION_45_7();
      v82 = v100;
      v83(v100, v57, v80);
      v119 = 2;
      sub_23B4DFB98();
      OUTLINED_FUNCTION_26_17();
      OUTLINED_FUNCTION_2_10(&qword_280B42BD0, &qword_27E131E28, &qword_23B50EFB0);
      v84 = v104;
      OUTLINED_FUNCTION_47_6();
      goto LABEL_9;
    case 3u:
      v81 = v111;
      v80 = v112;
      OUTLINED_FUNCTION_45_7();
      v82 = v101;
      v85(v101, v57, v80);
      v120 = 3;
      sub_23B4DFB44();
      OUTLINED_FUNCTION_26_17();
      OUTLINED_FUNCTION_2_10(&qword_280B42BD0, &qword_27E131E28, &qword_23B50EFB0);
      v84 = v107;
      OUTLINED_FUNCTION_47_6();
LABEL_9:
      v86 = OUTLINED_FUNCTION_67_0();
      v87(v86, v84);
      (*(v81 + 8))(v82, v80);
LABEL_11:
      v77 = OUTLINED_FUNCTION_41_7();
      v79 = v50;
      return v78(v77, v79);
    case 4u:
      v70 = *v57;
      v72 = v57[1];
      v71 = v57[2];
      v123 = 4;
      sub_23B4DFAF0();
      OUTLINED_FUNCTION_31_10();
      sub_23B50D764();
      v122 = 0;
      v73 = v110;
      v74 = v116;
      sub_23B50D7C4();
      if (!v74)
      {
        v121 = 1;
        sub_23B50D7A4();
      }

      v75 = OUTLINED_FUNCTION_67_0();
      v76(v75, v73);
      goto LABEL_6;
    default:
      v69 = *v57;
      v117 = 0;
      sub_23B4DFC40();
      OUTLINED_FUNCTION_31_10();
      sub_23B50D764();
      sub_23B50D7E4();
      (*(v94 + 8))(v50, v44);
LABEL_6:
      v77 = OUTLINED_FUNCTION_41_7();
      v79 = v65;
      return v78(v77, v79);
  }
}

unint64_t sub_23B4DFA9C()
{
  result = qword_27E135498;
  if (!qword_27E135498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135498);
  }

  return result;
}

unint64_t sub_23B4DFAF0()
{
  result = qword_27E1354A0;
  if (!qword_27E1354A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1354A0);
  }

  return result;
}

unint64_t sub_23B4DFB44()
{
  result = qword_27E1354A8;
  if (!qword_27E1354A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1354A8);
  }

  return result;
}

unint64_t sub_23B4DFB98()
{
  result = qword_27E1354B0;
  if (!qword_27E1354B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1354B0);
  }

  return result;
}

unint64_t sub_23B4DFBEC()
{
  result = qword_27E1354B8;
  if (!qword_27E1354B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1354B8);
  }

  return result;
}

unint64_t sub_23B4DFC40()
{
  result = qword_27E1354C0;
  if (!qword_27E1354C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1354C0);
  }

  return result;
}

uint64_t HistoricalFact.Argument.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354C8, &qword_23B524078);
  v143 = OUTLINED_FUNCTION_5(v4);
  v144 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v153 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354D0, &qword_23B524080);
  v11 = OUTLINED_FUNCTION_5(v10);
  v141 = v12;
  v142 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52();
  v148 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354D8, &qword_23B524088);
  v18 = OUTLINED_FUNCTION_5(v17);
  v139 = v19;
  v140 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_52();
  v147 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354E0, &qword_23B524090);
  v25 = OUTLINED_FUNCTION_5(v24);
  v137 = v26;
  v138 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_52();
  v146 = v30;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354E8, &qword_23B524098);
  OUTLINED_FUNCTION_5(v136);
  v135 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_52();
  v145 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354F0, &unk_23B5240A0);
  v37 = OUTLINED_FUNCTION_5(v36);
  v151 = v38;
  v152 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v41);
  v43 = &v128 - v42;
  v150 = type metadata accessor for HistoricalFact.Argument(0);
  v44 = OUTLINED_FUNCTION_6(v150);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v47);
  v49 = &v128 - v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v51);
  v53 = &v128 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v128 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v128 - v58;
  v61 = a1[3];
  v60 = a1[4];
  v154 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v61);
  sub_23B4DFA9C();
  v62 = v155;
  sub_23B50D964();
  if (v62)
  {
    goto LABEL_10;
  }

  v129 = v56;
  v130 = v53;
  v131 = v2;
  v132 = v49;
  v63 = v152;
  v155 = v59;
  v64 = sub_23B50D744();
  result = sub_23B40D8C8(v64, 0);
  if (v67 == v68 >> 1)
  {
    v69 = v150;
LABEL_9:
    v80 = sub_23B50D5F4();
    swift_allocError();
    v82 = v81;
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0) + 48);
    *v82 = v69;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v80 - 8) + 104))(v82, *MEMORY[0x277D84160], v80);
    swift_willThrow();
    swift_unknownObjectRelease();
    v84 = OUTLINED_FUNCTION_27_15();
    v85(v84, v63);
LABEL_10:
    v86 = v154;
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v133 = v43;
  v128 = 0;
  if (v67 < (v68 >> 1))
  {
    v70 = *(v66 + v67);
    sub_23B40D8C4(v67 + 1);
    v72 = v71;
    v74 = v73;
    swift_unknownObjectRelease();
    v75 = v155;
    if (v72 == v74 >> 1)
    {
      v76 = v128;
      v77 = v149;
      switch(v70)
      {
        case 1:
          v157 = 1;
          sub_23B4DFBEC();
          v92 = v146;
          OUTLINED_FUNCTION_10_25();
          v94 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v94, v95);
          OUTLINED_FUNCTION_4_38();
          sub_23B3F1C50(v96, &qword_27E131E30, &qword_23B511AC0);
          OUTLINED_FUNCTION_163(&v163);
          v97 = v138;
          sub_23B50D734();
          swift_unknownObjectRelease();
          (*(v137 + 8))(v92, v97);
          v117 = OUTLINED_FUNCTION_9_32();
          v118(v117);
          OUTLINED_FUNCTION_34_12();
          goto LABEL_16;
        case 2:
          v158 = 2;
          sub_23B4DFB98();
          OUTLINED_FUNCTION_10_25();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
          OUTLINED_FUNCTION_4_38();
          sub_23B3F1C50(v93, &qword_27E131E28, &qword_23B50EFB0);
          OUTLINED_FUNCTION_163(&v164);
          sub_23B50D734();
          swift_unknownObjectRelease();
          v102 = OUTLINED_FUNCTION_29_12();
          v103(v102);
          v104 = OUTLINED_FUNCTION_9_32();
          v105(v104);
          OUTLINED_FUNCTION_34_12();
          goto LABEL_16;
        case 3:
          v159 = 3;
          sub_23B4DFB44();
          OUTLINED_FUNCTION_10_25();
          v88 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
          OUTLINED_FUNCTION_4_38();
          sub_23B3F1C50(v90, &qword_27E131E28, &qword_23B50EFB0);
          OUTLINED_FUNCTION_163(&v165);
          v91 = v142;
          sub_23B50D734();
          swift_unknownObjectRelease();
          v106 = OUTLINED_FUNCTION_27_15();
          v107(v106, v91);
          v108 = OUTLINED_FUNCTION_9_32();
          v109(v108);
          OUTLINED_FUNCTION_34_12();
          swift_storeEnumTagMultiPayload();
          v116 = v154;
          break;
        case 4:
          v162 = 4;
          sub_23B4DFAF0();
          OUTLINED_FUNCTION_10_25();
          v161 = 0;
          sub_23B50D704();
          v87 = v151;
          v99 = v98;
          v160 = 1;
          v100 = sub_23B50D6E4();
          v101 = v144;
          v119 = v100;
          v121 = v120;
          swift_unknownObjectRelease();
          v122 = *(v101 + 8);
          v123 = OUTLINED_FUNCTION_230();
          v124(v123);
          v125 = *(v87 + 8);
          v126 = OUTLINED_FUNCTION_18_21();
          v127(v126);
          v76 = v134;
          *v134 = v99;
          *(v76 + 8) = v119;
          *(v76 + 16) = v121;
          OUTLINED_FUNCTION_34_12();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          v116 = v154;
          v75 = v155;
          break;
        default:
          v156 = 0;
          sub_23B4DFC40();
          OUTLINED_FUNCTION_10_25();
          v78 = sub_23B50D724();
          v79 = v151;
          v110 = v78;
          swift_unknownObjectRelease();
          v111 = OUTLINED_FUNCTION_33_9();
          v112(v111);
          v113 = *(v79 + 8);
          v114 = OUTLINED_FUNCTION_18_21();
          v115(v114);
          v76 = v129;
          *v129 = v110;
          OUTLINED_FUNCTION_34_12();
          swift_storeEnumTagMultiPayload();
          v116 = v154;
          v77 = v149;
          break;
      }

      sub_23B4E20E8(v76, v75, type metadata accessor for HistoricalFact.Argument);
      sub_23B4E20E8(v75, v77, type metadata accessor for HistoricalFact.Argument);
      v86 = v116;
      return __swift_destroy_boxed_opaque_existential_1(v86);
    }

    v69 = v150;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}