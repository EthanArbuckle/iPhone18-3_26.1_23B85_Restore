uint64_t sub_221B41A28()
{
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_353_0();
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v40 = *(v0 + 600);
  v3 = *(v0 + 592);
  v41 = *(v0 + 584);
  v4 = *(v0 + 576);
  v39 = *(v0 + 212);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  v10 = *(v0 + 520);
  v11 = OUTLINED_FUNCTION_308_0(*(v0 + 528));
  v12(v11);
  sub_221B62018(v0 + 352, v0 + 392, qword_27CFB7A80, &unk_221BD2800);
  v13 = OUTLINED_FUNCTION_17_6();
  sub_221B62018(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_312_0();
  sub_221B62018(v17, v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8040, &qword_221BD2900);
  OUTLINED_FUNCTION_174_2(v21);
  swift_allocObject();
  OUTLINED_FUNCTION_252_2();

  OUTLINED_FUNCTION_247_1();
  v22 = OUTLINED_FUNCTION_112_5();
  v23 = sub_2219CB588(v22);
  *(v0 + 632) = v23;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93();
  }

  v24 = *(v0 + 624);
  *(v0 + 456) = v21;
  *(v0 + 464) = &off_28351D968;
  *(v0 + 432) = v23;
  v25 = swift_task_alloc();
  *(v0 + 640) = v25;
  OUTLINED_FUNCTION_304_0(v25);
  v26 = *(MEMORY[0x277D85A70] + 4);

  v27 = swift_task_alloc();
  *(v0 + 648) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  *v27 = v0;
  v27[1] = sub_221B41CA0;
  v28 = *(v0 + 472);
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_246_2();

  return MEMORY[0x282200908](v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_221B41CA0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 648);
  v7 = *(v5 + 640);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 656) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 432, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B41DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_399_0();
  v12 = v11[70];
  v13 = v11[69];
  v14 = v11[68];
  v15 = v11[67];

  sub_2219EC58C(v13, &qword_27CFB7F58);
  sub_2219EC58C(v10, &qword_27CFB7F60);
  sub_2219EC58C((v11 + 44), qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_221B41EC4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_399_0();
  v2 = *(v1 + 552);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_338_0(v1 + 352);
  OUTLINED_FUNCTION_338_0(v1 + 432);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B41F8C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];

  OUTLINED_FUNCTION_25();
  v7 = v0[82];

  return v6();
}

uint64_t sub_221B42020(char a1, uint64_t a2, const void *a3, uint64_t a4)
{
  __dst[1] = 0xE000000000000000;
  sub_221BCDE68();

  v20 = 0x696D726F66726550;
  v21 = 0xEB0000000020676ELL;
  __dst[3] = &type metadata for AppIntentSpecification;
  __dst[4] = sub_2219EB9A8();
  __dst[0] = swift_allocObject();
  sub_2219EB748(a2, __dst[0] + 16);
  __swift_project_boxed_opaque_existential_0(__dst, &type metadata for AppIntentSpecification);
  LOBYTE(v17) = a1 & 1;
  v8 = sub_2219B5AFC(&v17);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_0(__dst);
  MEMORY[0x223DA31F0](v8, v10);

  MEMORY[0x223DA31F0](0x736E6F6974706F20, 0xEA0000000000203ALL);
  memcpy(__dst, a3, 0xC4uLL);
  sub_2219EB864(a3, &v17);
  v11 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v11);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  sub_2219EBEE4(a4 + 136, __dst);
  v12 = __dst[7];
  if (__dst[7])
  {
    v13 = __dst[6];
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_221BCDE68();

    v17 = 0xD00000000000001ALL;
    v18 = 0x8000000221BF0BB0;
    MEMORY[0x223DA31F0](v13, v12);
    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    v15 = v17;
    v14 = v18;
  }

  else
  {
    v14 = 0xED00003E72657355;
    v15 = 0x746E65727275433CLL;
  }

  sub_2219EBE90(__dst);
  MEMORY[0x223DA31F0](v15, v14);

  return v20;
}

uint64_t sub_221B4224C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[37] = a6;
  v7[38] = a7;
  v7[35] = a4;
  v7[36] = a5;
  v7[33] = a2;
  v7[34] = a3;
  v7[32] = a1;
  v8 = sub_221BCC558();
  v7[39] = v8;
  v9 = *(v8 - 8);
  v7[40] = v9;
  v7[41] = *(v9 + 64);
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B4232C, 0, 0);
}

uint64_t sub_221B4232C()
{
  OUTLINED_FUNCTION_353_0();
  v49 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  sub_221B42830(*(v0 + 272), &unk_283519AA0, sub_221B603F0, &unk_283519AC8, sub_221B62F40);
  sub_221B707F8();
  sub_221B25E10();

  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = OUTLINED_FUNCTION_103_2();
  __swift_project_boxed_opaque_existential_0(v6, v7);
  v8 = *(v5 + 8);
  v9 = OUTLINED_FUNCTION_27();
  v10(v9);
  v47[0] = v44;
  v47[1] = v45;
  v48 = v46;
  sub_221B3C800(v47);
  v12 = *(v0 + 336);
  v11 = *(v0 + 344);
  v13 = *(v0 + 320);
  v14 = *(v0 + 328);
  v15 = *(v0 + 312);
  v16 = *(v0 + 288);
  v17 = *(v0 + 280);
  v42 = *(v0 + 304);
  v43 = *(v0 + 272);
  __src = *(v0 + 296);
  v41 = *(v0 + 264);

  v18 = OUTLINED_FUNCTION_70();
  sub_2219982C4(v18, v19);
  sub_221BCC548();
  sub_2219EB748(v17, v0 + 216);
  v20 = *(v13 + 16);
  v21 = OUTLINED_FUNCTION_221();
  v22(v21);
  v23 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 203) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v0 + 352) = v26;
  v27 = *(v0 + 232);
  *(v26 + 16) = *(v0 + 216);
  *(v26 + 32) = v27;
  *(v26 + 48) = *(v0 + 248);
  *(v26 + 56) = v16;
  (*(v13 + 32))(v26 + v23, v12, v15);
  memcpy((v26 + v24), __src, 0xC4uLL);
  *(v26 + v25) = v41;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;

  sub_2219EB864(__src, v0 + 16);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 360) = v28;
  *v28 = v29;
  v28[1] = sub_221B42618;
  v30 = *(v0 + 288);
  v31 = *(v0 + 256);
  v32 = *(v0 + 264);
  OUTLINED_FUNCTION_246_2();

  return sub_221B3B654(v33, v34, v35, v36, v37);
}

uint64_t sub_221B42618()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *(v2 + 360);
  *v4 = *v1;
  *(v3 + 368) = v0;

  v6 = *(v2 + 352);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B42738()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[42];
  (*(v0[40] + 8))(v0[43], v0[39]);

  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B427B4()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[40] + 8))(v0[43], v0[39]);
  v1 = v0[46];
  v3 = v0[42];
  v2 = v0[43];

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221B42830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_10();
  v8 = swift_allocObject();
  swift_weakInit();

  sub_221B56B00(a3, v8, a4, a5);
}

uint64_t sub_221B428B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[26] = a3;
  v8[27] = a4;
  v8[24] = a1;
  v8[25] = a2;
  v9 = sub_221BCC558();
  v8[32] = v9;
  v10 = *(v9 - 8);
  v8[33] = v10;
  v11 = *(v10 + 64) + 15;
  v8[34] = swift_task_alloc();
  v12 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
  v8[35] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[36] = swift_task_alloc();
  v14 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.Response(0) - 8) + 64) + 15;
  v8[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B429DC, 0, 0);
}

uint64_t sub_221B429DC()
{
  v54 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  sub_2219EB748(*(v0 + 208), v0 + 16);
  sub_2219A1B08(v7 + 56, v0 + 56);
  (*(v2 + 16))(v1, v6, v3);
  v38 = v4[1];
  v39 = *v4;
  v43 = *(v4 + 3);
  v44 = v4[32];
  *(v0 + 96) = *(v4 + 40);
  v45 = *(v4 + 7);
  v46 = *(v4 + 8);
  *(v0 + 112) = *(v4 + 72);
  v47 = v4[89];
  v48 = *(v7 + 200);
  v49[14] = v4[16];
  *&v49[6] = *(v4 + 1);
  *&v50[5] = *(v4 + 40);
  *&v51[7] = *(v4 + 72);
  memcpy(&__src[7], v4 + 96, 0x64uLL);
  __src[110] = 0;
  v8 = *(v5 + qword_27CFDED20 + 8);
  v42 = *(v5 + qword_27CFDED20);
  v40 = *(v5 + qword_27CFDED20 + 17);
  v41 = *(v5 + qword_27CFDED20 + 16);
  v9 = *(v7 + 128);
  OUTLINED_FUNCTION_387();
  sub_221B62018(v10, v11, v12, v13);
  OUTLINED_FUNCTION_387();
  sub_221B62018(v14, v15, v16, v17);

  if (v9 == 10)
  {
    static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter(v53);
    LOBYTE(v9) = v53[0];
  }

  v19 = *(v0 + 280);
  v18 = *(v0 + 288);
  v21 = *(v0 + 264);
  v20 = *(v0 + 272);
  v22 = *(v0 + 256);
  v23 = *(v0 + 16);
  v24 = *(v0 + 32);
  *(v18 + 32) = *(v0 + 48);
  *v18 = v23;
  *(v18 + 16) = v24;
  sub_22198B358((v0 + 56), v18 + 40);
  v25 = v19[6];
  v26 = *(v21 + 32);
  OUTLINED_FUNCTION_145_3();
  v27();
  v28 = v18 + v19[7];
  *v28 = v39;
  *(v28 + 1) = v38;
  *(v28 + 2) = *v49;
  *(v28 + 9) = *&v49[7];
  v29 = *(v0 + 344);
  *(v28 + 20) = *(v0 + 347);
  *(v28 + 17) = v29;
  *(v28 + 24) = v43;
  *(v28 + 32) = 0;
  *(v28 + 33) = 1;
  *(v28 + 34) = v44;
  *(v28 + 48) = *&v50[13];
  *(v28 + 35) = *v50;
  *(v28 + 56) = v45;
  *(v28 + 64) = 0;
  v30 = *(v0 + 354);
  *(v28 + 65) = *(v0 + 351);
  *(v28 + 68) = v30;
  *(v28 + 72) = v46;
  *(v28 + 80) = 0;
  *(v28 + 81) = *v51;
  *(v28 + 96) = *&v51[15];
  *(v28 + 104) = v47;
  memcpy((v28 + 105), __src, 0x6BuLL);
  *(v28 + 212) = v48;
  *(v28 + 214) = 0;
  v31 = v18 + v19[8];
  *v31 = v42;
  *(v31 + 8) = v8;
  *(v31 + 16) = v41;
  *(v31 + 17) = v40;
  *(v18 + v19[9]) = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 304) = v32;
  *v32 = v33;
  v32[1] = sub_221B42D40;
  v35 = *(v0 + 288);
  v34 = *(v0 + 296);
  v36 = *(v0 + 200);

  return sub_221A3583C();
}

uint64_t sub_221B42D40()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *(v4 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v9 + 312) = v0;

  sub_221B62E44(v6, type metadata accessor for AppIntentsProtocol.PerformAction.Request);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B42E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = *(v10 + 296);
  v13 = *(v10 + 240);
  v12 = *(v10 + 248);
  v14 = *(v10 + 216);
  v15 = *(v10 + 200);
  v16 = swift_task_alloc();
  *(v10 + 320) = v16;
  v17 = *(v10 + 224);
  *(v16 + 16) = v14;
  *(v16 + 24) = v11;
  *(v16 + 32) = v15;
  *(v16 + 40) = v12;
  *(v16 + 48) = v17;
  *(v16 + 64) = v13;
  v18 = *(MEMORY[0x277D85A40] + 4);
  v19 = swift_task_alloc();
  *(v10 + 328) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  OUTLINED_FUNCTION_35_3();
  *v19 = v20;
  v19[1] = sub_221B42F78;
  v21 = *(v10 + 192);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x2822008A0](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_221B42F78()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 336) = v0;

  if (!v0)
  {
    v9 = *(v3 + 320);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B43078()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  OUTLINED_FUNCTION_3_25();
  sub_221B62E44(v2, v4);

  OUTLINED_FUNCTION_4_3();

  return v5();
}

uint64_t sub_221B430FC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[34];

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_221B43174()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[40];
  v2 = v0[37];

  OUTLINED_FUNCTION_3_25();
  sub_221B62E44(v2, v3);
  v4 = v0[42];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[34];

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_221B43204(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{

  sub_221B59FDC(a3, a4, a1, a5, a6, a7, a8, a2);
}

void sub_221B43298(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA58, &qword_221BE5488);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  a5[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB28, &qword_221BE56E0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_221B58E88(a1);
  v18 = sub_221B56BD8(a1);
  *a5 = v18;
  a5[3] = a2;
  v19 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = v18;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = v18;
  swift_retain_n();
  sub_2219F7E3C();
  a5[2] = v21;
}

void sub_221B43418(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA58, &qword_221BE5488);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  a5[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAC0, &qword_221BE5520);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_221B58E88(a1);
  v18 = sub_221B56F04(a1);
  *a5 = v18;
  a5[3] = a2;
  v19 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = v18;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = v18;
  swift_retain_n();
  sub_2219F7E3C();
  a5[2] = v21;
}

void sub_221B43598(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA58, &qword_221BE5488);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  a5[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAF8, &qword_221BE5680);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_221B58E88(a1);
  sub_221B57224();
  v19 = v18;
  *a5 = v18;
  a5[3] = a2;
  v20 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a1;
  v21[5] = v19;
  v21[6] = a3;
  v21[7] = a4;
  v21[8] = v19;
  swift_retain_n();
  sub_2219F7E3C();
  a5[2] = v22;
}

void sub_221B43728(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA58, &qword_221BE5488);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  a5[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA60, &qword_221BE5490);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_221B58E88(a1);
  sub_221B57224();
  v19 = v18;
  *a5 = v18;
  a5[3] = a2;
  v20 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a1;
  v21[5] = v19;
  v21[6] = a3;
  v21[7] = a4;
  v21[8] = v19;
  swift_retain_n();
  sub_2219F7E3C();
  a5[2] = v22;
}

uint64_t sub_221B438B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1088) = v12;
  *(v8 + 1080) = v11;
  *(v8 + 1064) = v10;
  *(v8 + 1056) = a8;
  *(v8 + 1048) = a7;
  *(v8 + 1040) = a6;
  *(v8 + 1032) = a5;
  *(v8 + 1024) = a4;
  return MEMORY[0x2822009F8](sub_221B43904, 0, 0);
}

uint64_t sub_221B43904()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 1024);
  memcpy((v0 + 768), *(v0 + 1048), 0xC4uLL);
  *(v0 + 964) = *(v1 + 129);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 1096) = v2;
  *v2 = v3;
  v2[1] = sub_221B439C0;
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 1024);

  return sub_221B43CD0(v0 + 544, v5, v4, v0 + 768, (v0 + 964));
}

uint64_t sub_221B439C0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 1096);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 1104) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B43AB8()
{
  OUTLINED_FUNCTION_104();
  v21 = v0;
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[128];
  *&v18 = v0[132];
  *(&v18 + 1) = v4;
  v19 = v3;
  v20 = v2;

  swift_bridgeObjectRetain_n();
  v6 = OUTLINED_FUNCTION_118();
  sub_221998178(v6, v7);

  _IntentValueConversionContext.init(origin:dispatcher:)(&v18, v5, &off_2835191E0, (v0 + 121));
  v8 = OUTLINED_FUNCTION_14();
  sub_221B44344(v8, v9, v3, v2, v10);

  v11 = OUTLINED_FUNCTION_118();
  sub_2219982C4(v11, v12);
  v0[5] = &type metadata for _IntentValueConversionContext;
  v0[6] = &protocol witness table for _IntentValueConversionContext;
  OUTLINED_FUNCTION_49();
  v13 = swift_allocObject();
  v0[2] = v13;
  sub_2219EB180((v0 + 121), v13 + 16);
  sub_221B62018((v0 + 2), (v0 + 35), &qword_27CFB8048, &qword_221BE5700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  sub_221BCD798();
  v14 = OUTLINED_FUNCTION_103_2();
  sub_2219EC58C(v14, v15);
  sub_22199C274((v0 + 121));
  sub_2219EC58C((v0 + 68), &unk_27CFBB7A0);
  OUTLINED_FUNCTION_25();

  return v16();
}

uint64_t sub_221B43C54()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[136];
  v0[127] = v0[138];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  sub_221BCD788();
  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221B43CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 72) = a3;
  *(v6 + 80) = v5;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 88) = *(a4 + 40);
  *(v6 + 161) = *a5;
  return MEMORY[0x2822009F8](sub_221B43D04, 0, 0);
}

uint64_t sub_221B43D04()
{
  OUTLINED_FUNCTION_67();
  v37 = v0;
  v1 = *(*(v0 + 64) + 216);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = [v1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_2219A1D20(0, &unk_27CFBB9D0, 0x277D23780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 48);
  *(v0 + 104) = v3;
  v4 = [v1 valueType];
  *(v0 + 112) = v4;
  if (!v4)
  {
LABEL_8:

LABEL_9:
    sub_221B62018(*(v0 + 64), *(v0 + 56), &unk_27CFBB7A0, &qword_221BD2930);
    goto LABEL_10;
  }

  v5 = v4;
  objc_opt_self();
  OUTLINED_FUNCTION_25_1();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_8;
  }

  if (([v6 capabilities] & 1) == 0)
  {
    sub_221B62018(*(v0 + 64), *(v0 + 56), &unk_27CFBB7A0, &qword_221BD2930);

LABEL_10:
    OUTLINED_FUNCTION_4_3();

    return v7();
  }

  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v9 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v9, qword_27CFDEE88);
  v10 = sub_221BCCD68();
  v11 = sub_221BCDA98();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_74_0();
    v13 = OUTLINED_FUNCTION_68();
    v36 = v13;
    *v12 = 136315138;
    v14 = static Instrumentation.currentActivityId.getter();
    v16 = sub_2219A6360(v14, v15, &v36);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_221989000, v10, v11, "%sIntent returned an AsyncSequence, retrieving content", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v17 = OUTLINED_FUNCTION_74_3();
    MEMORY[0x223DA4C00](v17);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00](v18);
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 80);
  v21 = *(v20 + 32);
  v22 = *(v20 + 40);
  if (v19)
  {
    v23 = *(v0 + 88);
    sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);
    OUTLINED_FUNCTION_316_0();

    v24 = sub_221AE94F4(v23, v19);
    v19 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v24 preferredExtractionType:1];
  }

  *(v0 + 120) = v19;
  *(v0 + 160) = *(v0 + 161);
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  sub_221BCBC4C(qword_27CFDEDA8);
  v25 = swift_task_alloc();
  *(v0 + 128) = v25;
  *v25 = v0;
  v25[1] = sub_221B4409C;
  v26 = *(v0 + 72);
  v40 = 1;
  v39 = v0 + 160;
  OUTLINED_FUNCTION_236_1(v26);
  OUTLINED_FUNCTION_152();

  return sub_221B4E004(v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_221B4409C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_17_3();
  *v8 = v7;
  v10 = *(v9 + 128);
  v11 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v12 = v11;
  *(v7 + 136) = v0;

  if (v0)
  {
  }

  else
  {
    v13 = *(v7 + 120);
    *(v7 + 144) = v3;
    *(v7 + 152) = v5;
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221B441BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v14 = v12[18];
  v13 = v12[19];
  v16 = v12[13];
  v15 = v12[14];
  v17 = v12[7];
  v18 = v12[8];
  v19 = OUTLINED_FUNCTION_420();
  sub_221B62018(v19, v20, v21, v22);
  sub_221B62018(v18 + 40, v17 + 40, &qword_27CFB8320, &unk_221BD1D60);
  sub_221B62018(v18 + 80, v17 + 80, &unk_27CFBB7C0, &qword_221BE4C20);
  v23 = *(v18 + 120);
  sub_221B62018(v18 + 128, v17 + 128, &unk_27CFBB7C0, &qword_221BE4C20);
  v24 = *(v18 + 168);
  sub_221B62018(v18 + 176, v17 + 176, &unk_27CFB93B0, &qword_221BD1D70);
  v25 = objc_allocWithZone(MEMORY[0x277D23958]);
  v26 = OUTLINED_FUNCTION_284_0();
  v27 = sub_221B58B8C(v26, v14);

  *(v17 + 216) = v27;
  *(v17 + 120) = v23;
  *(v17 + 168) = v24;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_95_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_221B442E4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_25();
  v3 = *(v0 + 136);

  return v2();
}

id sub_221B44344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  sub_221B62018(v5, v53, &unk_27CFBB7B0, &unk_221BE4C10);
  sub_221B62018(v5 + 40, v51, &qword_27CFB8320, &unk_221BD1D60);
  sub_221B62018(v5 + 80, v48, &unk_27CFBB7C0, &qword_221BE4C20);
  v12 = v49;
  v46 = a1;
  v47 = a2;
  if (v49)
  {
    v13 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    v14 = *(v13 + 16);

    sub_221998178(a3, a4);
    v15 = v14(v12, v13);
    v16 = a4;
    v18 = v17;
    v20 = v49;
    v19 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    v21 = (*(v19 + 24))(v20, v19);
    v12 = swift_allocObject();
    v12[2] = v46;
    v12[3] = a2;
    v22 = a3;
    v12[4] = a3;
    v12[5] = v16;
    v23 = v16;
    v12[6] = v15;
    v12[7] = v18;
    v12[8] = v21;
    sub_2219B397C(v48);
    v24 = &off_283513928;
    v45 = &type metadata for AnyAppIntentSpecification;
  }

  else
  {
    v22 = a3;
    v23 = a4;
    sub_2219EC58C(v48, &unk_27CFBB7C0);
    v45 = 0;
    v24 = 0;
  }

  v44 = *(v6 + 120);
  sub_221B62018(v6 + 128, v48, &unk_27CFBB7C0, &qword_221BE4C20);
  v25 = v49;
  if (v49)
  {
    v26 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    v43 = v24;
    v27 = *(v26 + 16);

    sub_221998178(v22, v23);
    v28 = v27(v25, v26);
    v30 = v29;
    v32 = v49;
    v31 = v50;
    __swift_project_boxed_opaque_existential_0(v48, v49);
    v33 = v32;
    v24 = v43;
    v34 = (*(v31 + 24))(v33, v31);
    v35 = swift_allocObject();
    v35[2] = v46;
    v35[3] = v47;
    v35[4] = v22;
    v35[5] = v23;
    v35[6] = v28;
    v35[7] = v30;
    v35[8] = v34;
    sub_2219B397C(v48);
    v36 = &type metadata for AnyAppIntentSpecification;
    v37 = &off_283513928;
  }

  else
  {
    sub_2219EC58C(v48, &unk_27CFBB7C0);
    v37 = 0;
    v36 = 0;
    v35 = 0;
  }

  v38 = *(v6 + 168);
  sub_221B62018(v6 + 176, a5 + 176, &unk_27CFB93B0, &qword_221BD1D70);
  v39 = v53[1];
  *a5 = v53[0];
  *(a5 + 16) = v39;
  v40 = v51[1];
  *(a5 + 40) = v51[0];
  v41 = *(v6 + 216);
  *(a5 + 216) = v41;
  *(a5 + 32) = v54;
  *(a5 + 56) = v40;
  *(a5 + 72) = v52;
  *(a5 + 80) = v12;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = v45;
  *(a5 + 112) = v24;
  *(a5 + 120) = v44;
  *(a5 + 128) = v35;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = v36;
  *(a5 + 160) = v37;
  *(a5 + 168) = v38;

  return v41;
}

uint64_t sub_221B446A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v20;
  *(v8 + 272) = v19;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 232) = a4;
  v9 = sub_221BCCD88();
  *(v8 + 296) = v9;
  v10 = *(v9 - 8);
  *(v8 + 304) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  v14 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 352) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v16 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.UnknownRequestResponse(0) - 8) + 64) + 15;
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B44860, 0, 0);
}

uint64_t sub_221B44860()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[46];
  v2 = v0[29];
  v3 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_70();
  v7(v6);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v8 = __swift_project_value_buffer(v0[37], qword_27CFDEE88);
  v0[47] = v8;
  if (qword_27CFB72C0 != -1)
  {
    v8 = swift_once();
  }

  v9 = v0[46];
  v10 = v0[43];
  v11 = v0[41];
  v12 = v0[30];
  v13 = v0[31];
  OUTLINED_FUNCTION_194_0(v8, &qword_27CFDE970);
  v14 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v14, v15);
  v16 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v10, v17, v18, v16);
  v19 = sub_221BCCCD8();
  v20 = OUTLINED_FUNCTION_98_5(v19);
  v0[48] = v20;
  *(v20 + 16) = v13;
  *(v20 + 24) = v9;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_221B44B54()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *(v5 + 400);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 416) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B44C88()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[43];
  v4 = v0[41];

  sub_2219EC58C(v4, &qword_27CFB7F58);
  sub_2219EC58C(v3, &qword_27CFB7F60);
  sub_2219EC58C((v0 + 14), qword_27CFB7A80);
  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B44E70()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[43];
  v4 = v0[41];

  sub_2219EC58C(v4, &qword_27CFB7F58);
  sub_2219EC58C(v3, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v5, v6);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v7, v8);

  v9 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B44F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_224_2();
  sub_221B62E44(v10, v12);

  OUTLINED_FUNCTION_25();
  v13 = *(v11 + 416);
  OUTLINED_FUNCTION_152();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_221B44FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B45004, 0, 0);
}

uint64_t sub_221B45004()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_368_0();
  v1 = OUTLINED_FUNCTION_226_3();
  v2 = OUTLINED_FUNCTION_256_1(v1);
  v3 = OUTLINED_FUNCTION_146_3(v2);
  OUTLINED_FUNCTION_81_7(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *(MEMORY[0x277D85A70] + 4);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v13);
  OUTLINED_FUNCTION_234_2();
  *v0 = v14;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v15);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B450CC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = v4[7];
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v11 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v15();
  }
}

uint64_t sub_221B45258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3EDA0();
}

uint64_t sub_221B45308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v25;
  *(v8 + 288) = v26;
  *(v8 + 264) = v24;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v11 = sub_221BCCD88();
  *(v8 + 296) = v11;
  v12 = *(v11 - 8);
  *(v8 + 304) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  v16 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 352) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v18 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(0) - 8) + 64) + 15;
  v19 = swift_task_alloc();
  *(v8 + 368) = v19;
  ObjectType = swift_getObjectType();
  *(v8 + 376) = ObjectType;
  v21 = swift_task_alloc();
  *(v8 + 384) = v21;
  *v21 = v8;
  v21[1] = sub_221B45538;

  return sub_221B240E4(v19, a6, ObjectType, a5);
}

uint64_t sub_221B45538()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B4561C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  *(v1 + 392) = __swift_project_value_buffer(*(v1 + 296), qword_27CFDEE88);
  if (qword_27CFB7290 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDE730);
  v3 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v3, v4);
  v5 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v6, v7, v5);
  v8 = sub_221BCCCD8();
  v9 = OUTLINED_FUNCTION_98_5(v8);
  OUTLINED_FUNCTION_352_0(v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B458A8()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *(v5 + 416);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B459DC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B45B48()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B45C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_221_4();
  sub_221B62E44(v10, v12);

  OUTLINED_FUNCTION_25();
  v13 = *(v11 + 432);
  OUTLINED_FUNCTION_152();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_221B45CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B45CD0, 0, 0);
}

uint64_t sub_221B45CD0()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_368_0();
  v1 = OUTLINED_FUNCTION_226_3();
  v2 = OUTLINED_FUNCTION_256_1(v1);
  v3 = OUTLINED_FUNCTION_146_3(v2);
  OUTLINED_FUNCTION_81_7(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *(MEMORY[0x277D85A70] + 4);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v13);
  OUTLINED_FUNCTION_234_2();
  *v0 = v14;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v15);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B45D98()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = v4[7];
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v11 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v15();
  }
}

uint64_t sub_221B45F0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3A6D8();
}

uint64_t sub_221B45FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v25;
  *(v8 + 288) = v26;
  *(v8 + 264) = v24;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v11 = sub_221BCCD88();
  *(v8 + 296) = v11;
  v12 = *(v11 - 8);
  *(v8 + 304) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  v16 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 352) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v18 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(0) - 8) + 64) + 15;
  v19 = swift_task_alloc();
  *(v8 + 368) = v19;
  ObjectType = swift_getObjectType();
  *(v8 + 376) = ObjectType;
  v21 = swift_task_alloc();
  *(v8 + 384) = v21;
  *v21 = v8;
  v21[1] = sub_221B461EC;

  return sub_221B24510(v19, a6, ObjectType, a5);
}

uint64_t sub_221B461EC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B462D0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  *(v1 + 392) = __swift_project_value_buffer(*(v1 + 296), qword_27CFDEE88);
  if (qword_27CFB72A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDE7F0);
  v3 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v3, v4);
  v5 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v6, v7, v5);
  v8 = sub_221BCCCD8();
  v9 = OUTLINED_FUNCTION_98_5(v8);
  OUTLINED_FUNCTION_352_0(v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4655C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *(v5 + 416);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B46690()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B467FC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B468BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_220_4();
  sub_221B62E44(v10, v12);

  OUTLINED_FUNCTION_25();
  v13 = *(v11 + 432);
  OUTLINED_FUNCTION_152();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_221B46960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B46984, 0, 0);
}

uint64_t sub_221B46984()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_368_0();
  v1 = OUTLINED_FUNCTION_226_3();
  v2 = OUTLINED_FUNCTION_256_1(v1);
  v3 = OUTLINED_FUNCTION_146_3(v2);
  OUTLINED_FUNCTION_81_7(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *(MEMORY[0x277D85A70] + 4);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v13);
  OUTLINED_FUNCTION_234_2();
  *v0 = v14;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v15);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B46A4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3B3F8();
}

uint64_t sub_221B46AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v25;
  *(v8 + 288) = v26;
  *(v8 + 264) = v24;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v11 = sub_221BCCD88();
  *(v8 + 296) = v11;
  v12 = *(v11 - 8);
  *(v8 + 304) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  v16 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 352) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v18 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0) - 8) + 64) + 15;
  v19 = swift_task_alloc();
  *(v8 + 368) = v19;
  ObjectType = swift_getObjectType();
  *(v8 + 376) = ObjectType;
  v21 = swift_task_alloc();
  *(v8 + 384) = v21;
  *v21 = v8;
  v21[1] = sub_221B46D2C;

  return sub_221B25358(v19, a6, ObjectType, a5);
}

uint64_t sub_221B46D2C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B46E10()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  *(v1 + 392) = __swift_project_value_buffer(*(v1 + 296), qword_27CFDEE88);
  if (qword_27CFB72A8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDE850);
  v3 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v3, v4);
  v5 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v6, v7, v5);
  v8 = sub_221BCCCD8();
  v9 = OUTLINED_FUNCTION_98_5(v8);
  OUTLINED_FUNCTION_352_0(v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4709C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *(v5 + 416);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B471D0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B4733C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B473FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_219_4();
  sub_221B62E44(v10, v12);

  OUTLINED_FUNCTION_25();
  v13 = *(v11 + 432);
  OUTLINED_FUNCTION_152();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_221B474A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B474C4, 0, 0);
}

uint64_t sub_221B474C4()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_368_0();
  v1 = OUTLINED_FUNCTION_226_3();
  v2 = OUTLINED_FUNCTION_256_1(v1);
  v3 = OUTLINED_FUNCTION_146_3(v2);
  OUTLINED_FUNCTION_81_7(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *(MEMORY[0x277D85A70] + 4);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v13);
  OUTLINED_FUNCTION_234_2();
  *v0 = v14;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v15);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B4758C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3BEDC();
}

uint64_t sub_221B4763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v25;
  *(v8 + 288) = v26;
  *(v8 + 264) = v24;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v11 = sub_221BCCD88();
  *(v8 + 296) = v11;
  v12 = *(v11 - 8);
  *(v8 + 304) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  v16 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 352) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v18 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0) - 8) + 64) + 15;
  v19 = swift_task_alloc();
  *(v8 + 368) = v19;
  ObjectType = swift_getObjectType();
  *(v8 + 376) = ObjectType;
  v21 = swift_task_alloc();
  *(v8 + 384) = v21;
  *v21 = v8;
  v21[1] = sub_221B4786C;

  return sub_221B24998(v19, a6, ObjectType, a5);
}

uint64_t sub_221B4786C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B47950()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  *(v1 + 392) = __swift_project_value_buffer(*(v1 + 296), qword_27CFDEE88);
  if (qword_27CFB72B0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDE8B0);
  v3 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v3, v4);
  v5 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v6, v7, v5);
  v8 = sub_221BCCCD8();
  v9 = OUTLINED_FUNCTION_98_5(v8);
  OUTLINED_FUNCTION_352_0(v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B47BDC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *(v5 + 416);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B47D10()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B47E7C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B47F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_218_3();
  sub_221B62E44(v10, v12);

  OUTLINED_FUNCTION_25();
  v13 = *(v11 + 432);
  OUTLINED_FUNCTION_152();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_221B47FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B48004, 0, 0);
}

uint64_t sub_221B48004()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_368_0();
  v1 = OUTLINED_FUNCTION_226_3();
  v2 = OUTLINED_FUNCTION_256_1(v1);
  v3 = OUTLINED_FUNCTION_146_3(v2);
  OUTLINED_FUNCTION_81_7(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *(MEMORY[0x277D85A70] + 4);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v13);
  OUTLINED_FUNCTION_234_2();
  *v0 = v14;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v15);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B480CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3CCF0();
}

uint64_t sub_221B4817C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v25;
  *(v8 + 288) = v26;
  *(v8 + 264) = v24;
  *(v8 + 248) = a7;
  *(v8 + 256) = a8;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v11 = sub_221BCCD88();
  *(v8 + 296) = v11;
  v12 = *(v11 - 8);
  *(v8 + 304) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  v16 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 352) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v18 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0) - 8) + 64) + 15;
  v19 = swift_task_alloc();
  *(v8 + 368) = v19;
  ObjectType = swift_getObjectType();
  *(v8 + 376) = ObjectType;
  v21 = swift_task_alloc();
  *(v8 + 384) = v21;
  *v21 = v8;
  v21[1] = sub_221B483AC;

  return sub_221B24DEC(v19, a6, ObjectType, a5);
}

uint64_t sub_221B483AC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 384);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B48490()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  *(v1 + 392) = __swift_project_value_buffer(*(v1 + 296), qword_27CFDEE88);
  if (qword_27CFB7298 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDE790);
  v3 = OUTLINED_FUNCTION_285_1();
  sub_2219A1B08(v3, v4);
  v5 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v6, v7, v5);
  v8 = sub_221BCCCD8();
  v9 = OUTLINED_FUNCTION_98_5(v8);
  OUTLINED_FUNCTION_352_0(v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4871C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *(v5 + 416);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B48850()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B489BC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_179_2();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B48A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_217_4();
  sub_221B62E44(v10, v12);

  OUTLINED_FUNCTION_25();
  v13 = *(v11 + 432);
  OUTLINED_FUNCTION_152();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_221B48B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B48B44, 0, 0);
}

uint64_t sub_221B48B44()
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_368_0();
  v1 = OUTLINED_FUNCTION_226_3();
  v2 = OUTLINED_FUNCTION_256_1(v1);
  v3 = OUTLINED_FUNCTION_146_3(v2);
  OUTLINED_FUNCTION_81_7(v3, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *(MEMORY[0x277D85A70] + 4);
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_260_1(v13);
  OUTLINED_FUNCTION_234_2();
  *v0 = v14;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v15);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B48C0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A3D7D4();
}

uint64_t sub_221B48CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1080) = v29;
  *(v8 + 1072) = v28;
  *(v8 + 1056) = v27;
  *(v8 + 1040) = v26;
  *(v8 + 1032) = a8;
  *(v8 + 1024) = a7;
  *(v8 + 1016) = a6;
  *(v8 + 1008) = a5;
  *(v8 + 1000) = a4;
  v9 = sub_221BCCD88();
  *(v8 + 1088) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1096) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 1104) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 1112) = swift_task_alloc();
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  *(v8 + 1144) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 1168) = swift_task_alloc();
  *(v8 + 1176) = swift_task_alloc();
  *(v8 + 1184) = swift_task_alloc();
  v14 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *(v8 + 1192) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 1200) = swift_task_alloc();
  *(v8 + 1208) = swift_task_alloc();
  *(v8 + 1216) = swift_task_alloc();
  *(v8 + 1224) = swift_task_alloc();
  v16 = sub_221BCC558();
  *(v8 + 1232) = v16;
  v17 = *(v16 - 8);
  *(v8 + 1240) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 1248) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  *(v8 + 1256) = v19;
  v20 = *(v19 - 8);
  *(v8 + 1264) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 1272) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  *(v8 + 1280) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v8 + 1288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B48FCC, 0, 0);
}

uint64_t sub_221B48FCC()
{
  OUTLINED_FUNCTION_353_0();
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1256);
  v48 = *(v0 + 1248);
  v49 = *(v0 + 1280);
  v5 = *(v0 + 1240);
  v47 = *(v0 + 1232);
  v52 = *(v0 + 1072);
  v53 = *(v0 + 1080);
  v6 = *(v0 + 1056);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1032);
  v50 = *(v0 + 1024);
  v51 = *(v0 + 1048);
  v9 = *(v0 + 1016);
  sub_2219A1B08(*(v0 + 1000), v0 + 400);
  v10 = OUTLINED_FUNCTION_85_2();
  sub_221B62018(v10, v11, v12, v13);
  (*(v3 + 16))(v2, v8, v4);
  (*(v5 + 16))(v48, v6, v47);
  ObjectType = swift_getObjectType();
  *(v0 + 1296) = ObjectType;
  v15 = (v9 + *(v49 + 28));
  v17 = v15[13];
  v16 = v15[14];
  *(v0 + 464) = &type metadata for AnyEntityQueryDispatching;
  *(v0 + 472) = &protocol witness table for AnyEntityQueryDispatching;
  OUTLINED_FUNCTION_49();
  v18 = swift_allocObject();
  *(v0 + 440) = v18;
  v18[2] = v50;
  v18[3] = &off_2835191E0;
  v18[4] = v17;
  v18[5] = v16;
  v18[6] = v52;
  v18[7] = v53;
  v19 = *(v51 + 24);

  v19(v15 + 2, v15 + 7, v0 + 440, ObjectType, v51);
  __swift_destroy_boxed_opaque_existential_0((v0 + 440));
  v20 = v15[12];
  v21 = OUTLINED_FUNCTION_0_0();
  sub_2219C0C28(v21, v22, v23);

  *(v0 + 1304) = v55;
  *(v0 + 1320) = v56;
  *(v0 + 1328) = v57;
  *(v0 + 1336) = v58;
  if (v57)
  {
    v54 = v57 + *v57;
    v24 = v57[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 1344) = v25;
    *v25 = v26;
    v25[1] = sub_221B49384;
    OUTLINED_FUNCTION_246_2();

    __asm { BRAA            X1, X16 }
  }

  sub_2219A1218();
  OUTLINED_FUNCTION_15_0();
  *(v0 + 1360) = swift_allocError();
  *v29 = v20;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 2;
  v30 = v20;
  v31 = sub_221BCC328();
  *(v0 + 1368) = v31;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v32 = __swift_project_value_buffer(*(v0 + 1088), qword_27CFDEE88);
  *(v0 + 1376) = v32;
  if (qword_27CFB72B8 != -1)
  {
    v32 = OUTLINED_FUNCTION_36_9();
  }

  v33 = *(v0 + 1288);
  v34 = *(v0 + 1184);
  v35 = *(v0 + 1144);
  v36 = *(v0 + 1008);
  OUTLINED_FUNCTION_194_0(v32, &qword_27CFDE910);
  sub_2219A1B08(v0 + 400, v0 + 480);
  v37 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v34, v38, v39, v37);
  v40 = sub_221BCCCD8();
  v41 = OUTLINED_FUNCTION_97_6(v40);
  *(v0 + 1384) = v41;
  *(v41 + 16) = v36;
  *(v41 + 24) = v33;
  *(v41 + 32) = v31;
  *(v41 + 40) = 1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_246_2();

  return MEMORY[0x2822009F8](v42, v43, v44);
}

uint64_t sub_221B49384()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 1344);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 1352) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B49664()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 1408);
  v7 = *(v5 + 1400);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 1416) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 560, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B49798()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_435();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 480, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B49A50()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_435();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B49B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_230();
  v21 = *(v20 + 1360);
  v22 = *(v20 + 1288);
  v23 = *(v20 + 1272);
  v24 = *(v20 + 1264);
  v25 = *(v20 + 1256);
  v26 = *(v20 + 1248);
  v27 = *(v20 + 1240);
  v28 = *(v20 + 1232);

  (*(v27 + 8))(v26, v28);
  v29 = *(v24 + 8);
  v30 = OUTLINED_FUNCTION_103_2();
  v31(v30);
  sub_2219EC58C(v22, &unk_27CFB93E0);
  __swift_destroy_boxed_opaque_existential_0((v20 + 400));

  v32 = *(v20 + 1416);
  OUTLINED_FUNCTION_159_2();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_109();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_221B49C78()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[79];
  __swift_project_boxed_opaque_existential_0(v0 + 75, v0[78]);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_97_1();
  v5 = v4(v3, v1);
  v0[178] = v5;
  if (v5)
  {
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_0(v0 + 75);
    v7 = qword_27CFB73C0;
    v8 = v6;
    if (v7 != -1)
    {
      OUTLINED_FUNCTION_4_22();
    }

    v0[187] = __swift_project_value_buffer(v0[136], qword_27CFDEE88);
    if (qword_27CFB72B8 != -1)
    {
      OUTLINED_FUNCTION_36_9();
    }

    v9 = v0[161];
    v10 = v0[145];
    v11 = v0[140];
    v12 = v0[126];
    memcpy(v0 + 26, &qword_27CFDE910, 0x59uLL);
    sub_2219A1B08((v0 + 50), (v0 + 110));
    v13 = sub_221BCCD08();
    OUTLINED_FUNCTION_21_6(v10, v14, v15, v13);
    v16 = sub_221BCCCD8();
    v17 = OUTLINED_FUNCTION_97_6(v16);
    v0[188] = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v9;
    *(v17 + 32) = v6;
    *(v17 + 40) = 0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 75);
    sub_2219A1218();
    OUTLINED_FUNCTION_15_0();
    v0[179] = swift_allocError();
    *v18 = 10;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 5;
    v19 = sub_221BCC328();
    v0[180] = v19;
    if (qword_27CFB73C0 != -1)
    {
      OUTLINED_FUNCTION_4_22();
    }

    v0[181] = __swift_project_value_buffer(v0[136], qword_27CFDEE88);
    if (qword_27CFB72B8 != -1)
    {
      OUTLINED_FUNCTION_36_9();
    }

    v20 = v0[161];
    v21 = v0[146];
    v22 = v0[141];
    v23 = v0[126];
    memcpy(v0 + 14, &qword_27CFDE910, 0x59uLL);
    sub_2219A1B08((v0 + 50), (v0 + 95));
    v24 = sub_221BCCD08();
    OUTLINED_FUNCTION_21_6(v21, v25, v26, v24);
    v27 = sub_221BCCCD8();
    v28 = OUTLINED_FUNCTION_97_6(v27);
    v0[182] = v28;
    *(v28 + 16) = v23;
    *(v28 + 24) = v20;
    *(v28 + 32) = v19;
    *(v28 + 40) = 1;
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_221B49ED8()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1[193] = v1[169];
  v1[194] = sub_221BCC328();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v1[195] = __swift_project_value_buffer(v1[136], qword_27CFDEE88);
  if (qword_27CFB72B8 != -1)
  {
    OUTLINED_FUNCTION_36_9();
  }

  OUTLINED_FUNCTION_248_2();
  memcpy(v1 + 38, &qword_27CFDE910, 0x59uLL);
  sub_2219A1B08((v1 + 50), (v1 + 80));
  v2 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v3, v4, v2);
  v5 = sub_221BCCCD8();
  v6 = OUTLINED_FUNCTION_97_6(v5);
  OUTLINED_FUNCTION_60_8(v6);
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221B4A1C4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 1480);
  v7 = *(v5 + 1472);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 1488) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 840, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4A2F8()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_434();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 760, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B4A3A8()
{
  v46 = v2[180];
  v67 = v2[166];
  v70 = v2[167];
  v64 = v2[165];
  v58 = v2[179];
  v61 = v2[164];
  v52 = v2[161];
  v55 = v2[163];
  v39 = v2[162];
  v41 = v2[159];
  v3 = v2[158];
  v49 = v2[157];
  OUTLINED_FUNCTION_405();
  v4 = v2[152];
  OUTLINED_FUNCTION_294_1(v5, v6, v7, v8, v9, v10, v11, v12, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v72);
  v13 = v2[54];
  v14 = __swift_project_boxed_opaque_existential_0(v2 + 50, v2[53]);
  OUTLINED_FUNCTION_261_1(v14, v15, v16, v17, v18, v19, v20, v21, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v73);

  OUTLINED_FUNCTION_3_25();
  sub_221B62E44(v4, v22);
  (*(v0 + 8))(v1, v45);
  (*(v3 + 8))(v13, v51);
  sub_2219EC58C(v54, &unk_27CFB93E0);
  __swift_destroy_boxed_opaque_existential_0(v2 + 50);

  sub_2219F6ED0(v57, v63, v66, v69);
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_263();

  OUTLINED_FUNCTION_4_3();

  return v23();
}

uint64_t sub_221B4A594()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_434();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B4A654()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = *(v1 + 1432);

  *(v1 + 1544) = *(v1 + 1488);
  *(v1 + 1552) = sub_221BCC328();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  *(v1 + 1560) = __swift_project_value_buffer(*(v1 + 1088), qword_27CFDEE88);
  if (qword_27CFB72B8 != -1)
  {
    OUTLINED_FUNCTION_36_9();
  }

  OUTLINED_FUNCTION_248_2();
  memcpy((v1 + 304), &qword_27CFDE910, 0x59uLL);
  sub_2219A1B08(v1 + 400, v1 + 640);
  v3 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v4, v5, v3);
  v6 = sub_221BCCCD8();
  v7 = OUTLINED_FUNCTION_97_6(v6);
  OUTLINED_FUNCTION_60_8(v7);
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221B4A954()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 1528);
  v7 = *(v5 + 1520);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 1536) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 960, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4AA88()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_431();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 880, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B4AB38()
{
  v39 = v0;
  v1 = *(v0 + 1424);
  v34 = *(v0 + 1328);
  v36 = *(v0 + 1336);
  v30 = *(v0 + 1312);
  v32 = *(v0 + 1320);
  v2 = *(v0 + 1304);
  OUTLINED_FUNCTION_351();
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1248);
  v5 = *(v0 + 1240);
  v24 = *(v0 + 1232);
  v25 = *(v0 + 1256);
  v6 = *(v0 + 1208);
  v7 = *(v0 + 1048);
  v8 = *(v0 + 1040);
  v20 = *(v0 + 1024);
  v21 = v9;
  v10 = *(v0 + 1008);
  memcpy(__dst, *(v0 + 1064), sizeof(__dst));
  v12 = *(v0 + 424);
  v11 = *(v0 + 432);
  __swift_project_boxed_opaque_existential_0((v0 + 400), v12);
  v13 = OUTLINED_FUNCTION_190_1();
  sub_221B5B7C4(v13, v14, v22, v8, v4, v15, v16, v20, v12, v21, v11, v7);

  OUTLINED_FUNCTION_3_25();
  sub_221B62E44(v6, v17);
  (*(v5 + 8))(v4, v24);
  (*(v3 + 8))(v22, v25);
  sub_2219EC58C(v26, &unk_27CFB93E0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 400));
  sub_2219F6ED0(v28, v30, v32, v34);

  OUTLINED_FUNCTION_41_5();
  v27 = *(v0 + 1144);
  v29 = *(v0 + 1136);
  v31 = *(v0 + 1128);
  v33 = *(v0 + 1120);
  v35 = *(v0 + 1112);
  v37 = *(v0 + 1104);

  OUTLINED_FUNCTION_4_3();

  return v18();
}

uint64_t sub_221B4AD7C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_431();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B4AE3C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = v1[178];

  v1[193] = v1[192];
  v1[194] = sub_221BCC328();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v1[195] = __swift_project_value_buffer(v1[136], qword_27CFDEE88);
  if (qword_27CFB72B8 != -1)
  {
    OUTLINED_FUNCTION_36_9();
  }

  OUTLINED_FUNCTION_248_2();
  memcpy(v1 + 38, &qword_27CFDE910, 0x59uLL);
  sub_2219A1B08((v1 + 50), (v1 + 80));
  v3 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v0, v4, v5, v3);
  v6 = sub_221BCCCD8();
  v7 = OUTLINED_FUNCTION_97_6(v6);
  OUTLINED_FUNCTION_60_8(v7);
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221B4B134()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 1592);
  v7 = *(v5 + 1584);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 1600) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 720, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4B268()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_430();

  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v2 + 640, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B4B318()
{
  v46 = v2[194];
  v67 = v2[167];
  v69 = v2[193];
  v61 = v2[165];
  v64 = v2[166];
  v55 = v2[163];
  v58 = v2[164];
  v39 = v2[162];
  v41 = v2[159];
  v3 = v2[158];
  v49 = v2[157];
  v52 = v2[161];
  OUTLINED_FUNCTION_405();
  v4 = v2[150];
  OUTLINED_FUNCTION_294_1(v5, v6, v7, v8, v9, v10, v11, v12, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v46, v49, v52, v55, v58, v61, v64, v67, v69, v72);
  v13 = v2[54];
  v14 = __swift_project_boxed_opaque_existential_0(v2 + 50, v2[53]);
  OUTLINED_FUNCTION_261_1(v14, v15, v16, v17, v18, v19, v20, v21, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v47, v50, v53, v56, v59, v62, v65, v68, v70, v73);

  OUTLINED_FUNCTION_3_25();
  sub_221B62E44(v4, v22);
  (*(v0 + 8))(v1, v45);
  (*(v3 + 8))(v13, v51);
  sub_2219EC58C(v54, &unk_27CFB93E0);
  __swift_destroy_boxed_opaque_existential_0(v2 + 50);
  sub_2219F6ED0(v57, v60, v63, v66);

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_263();

  OUTLINED_FUNCTION_4_3();

  return v23();
}

uint64_t sub_221B4B500()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_430();
  sub_2219EC58C(v1, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v2, v3);
  OUTLINED_FUNCTION_145_3();
  sub_2219EC58C(v4, v5);

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B4B5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_230();
  v21 = *(v20 + 1544);
  v45 = *(v20 + 1328);
  v46 = *(v20 + 1336);
  v43 = *(v20 + 1312);
  v44 = *(v20 + 1320);
  v22 = *(v20 + 1304);
  v23 = *(v20 + 1288);
  v24 = *(v20 + 1272);
  v25 = *(v20 + 1264);
  v26 = *(v20 + 1256);
  v27 = *(v20 + 1248);
  v28 = *(v20 + 1240);
  v29 = *(v20 + 1232);

  v30 = *(v28 + 8);
  v31 = OUTLINED_FUNCTION_4();
  v32(v31);
  (*(v25 + 8))(v24, v26);
  sub_2219EC58C(v23, &unk_27CFB93E0);
  __swift_destroy_boxed_opaque_existential_0((v20 + 400));

  sub_2219F6ED0(v22, v43, v44, v45);
  v33 = *(v20 + 1600);
  OUTLINED_FUNCTION_159_2();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_109();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, v43, v44, v45, v46, a18, a19, a20);
}

uint64_t sub_221B4B754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x2822009F8](sub_221B4B780, 0, 0);
}

uint64_t sub_221B4B780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_67();
  v10 = *(v9 + 104);
  v11 = *(v9 + 56);
  OUTLINED_FUNCTION_368_0();
  *(v9 + 64) = OUTLINED_FUNCTION_226_3();
  v12 = sub_221B25D60();
  *(v9 + 72) = v12;
  OUTLINED_FUNCTION_160_2(v12);
  v13 = swift_task_alloc();
  *(v9 + 80) = v13;
  *(v13 + 16) = a9;
  *(v13 + 32) = v11;
  *(v13 + 40) = v10 & 1;
  v14 = *(MEMORY[0x277D85A70] + 4);
  v15 = swift_task_alloc();
  *(v9 + 88) = v15;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_234_2();
  *v15 = v16;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_13_15(v17);
  OUTLINED_FUNCTION_324_0();

  return MEMORY[0x282200908](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_221B4B88C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  v8 = v4[8];
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v11 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v15();
  }
}

uint64_t sub_221B4BA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(0);
  *(v5 + 48) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B4BA9C, 0, 0);
}

uint64_t sub_221B4BA9C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_70();
  v10(v9);
  v11 = v1 + *(v2 + 20);
  *v11 = v5;
  *(v11 + 8) = v3 & 1;
  v12 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 64) = v13;
  *v13 = v14;
  v13[1] = sub_221B4BB88;
  v15 = *(v0 + 56);
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);
  OUTLINED_FUNCTION_253();

  return sub_221A3E2B4();
}

uint64_t sub_221B4BB88()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *(v5 + 56);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 72) = v0;

  sub_221B62E44(v7, type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse);
  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 56);

    OUTLINED_FUNCTION_25();

    return v14();
  }
}

void sub_221B4BCE0(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *a3;
  v12 = *(a3 + 1);
  v11 = *(a3 + 2);
  sub_2219AC930(a2, __src);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  memcpy((v13 + 24), __src, 0x82uLL);
  *(v13 + 160) = v7;
  *(v13 + 168) = v6;
  *(v13 + 176) = v8;
  *(v13 + 184) = v9;
  *(v13 + 192) = v10;
  *(v13 + 200) = v12;
  *(v13 + 208) = v11;

  sub_221998178(v8, v9);

  sub_221B43418(0, 0, &unk_221BE5518, v13, a4);
}

id sub_221B4BDD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a2[1];
  v16 = *a2;
  v7 = sub_2219A69A0(v5);

  v9 = 0;
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v9)
    {

      sub_2219982C4(v3, v4);
      a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8030, &qword_221BD28E0);
      result = sub_221B61E70(&qword_27CFB8038, &qword_27CFB8030);
      a3[4] = result;
      *a3 = v15;
      return result;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x223DA3BF0](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      result = *(v5 + 8 * v9 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      break;
    }

    v18[0] = v16;
    v18[1] = v6;
    v18[2] = v3;
    v18[3] = v4;

    sub_221998178(v3, v4);
    sub_22199BCCC();
    memcpy(__dst, __src, 0x80uLL);
    if (sub_2219A1200(__dst) == 1)
    {
      memcpy(v18, __src, sizeof(v18));
      result = sub_2219EC58C(v18, &qword_27CFB7698);
      ++v9;
    }

    else
    {
      memcpy(v18, __src, sizeof(v18));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v15 + 16);
        sub_2219B3CC4();
        v15 = v12;
      }

      v10 = *(v15 + 16);
      if (v10 >= *(v15 + 24) >> 1)
      {
        sub_2219B3CC4();
        v15 = v13;
      }

      memcpy(v17, v18, sizeof(v17));
      *(v15 + 16) = v10 + 1;
      result = memcpy((v15 + (v10 << 7) + 32), v17, 0x80uLL);
      ++v9;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_221B4C054@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8010, &qword_221BD28C8);
  a2[4] = sub_221B61E70(&qword_27CFB8018, &qword_27CFB8010);
  *a2 = v3;
}

uint64_t sub_221B4C0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 432) = v17;
  *(v8 + 440) = v18;
  *(v8 + 146) = v16;
  *(v8 + 416) = a7;
  *(v8 + 424) = a8;
  *(v8 + 400) = a5;
  *(v8 + 408) = a6;
  *(v8 + 384) = a3;
  *(v8 + 392) = a4;
  *(v8 + 368) = a1;
  *(v8 + 376) = a2;
  v9 = sub_221BCCD88();
  *(v8 + 448) = v9;
  v10 = *(v9 - 8);
  *(v8 + 456) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 464) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B4C24C, 0, 0);
}

uint64_t sub_221B4C24C()
{
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_200_0();
  v29[0] = *(*(v0 + 384) + 129);
  *(v0 + 147) = v29[0];
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  *(v0 + 504) = __swift_project_value_buffer(*(v0 + 448), qword_27CFDEE88);
  if (qword_27CFB72C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 432);
  v25 = *(v0 + 440);
  v26 = *(v0 + 496);
  v2 = *(v0 + 146);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);
  v7 = *(v0 + 384);
  v8 = *(v0 + 392);
  v27 = *(v0 + 480);
  v28 = *(v0 + 376);
  memcpy((v0 + 152), &qword_27CFDE9D0, 0x59uLL);
  *(v0 + 512) = v7[12];
  *(v0 + 520) = v7[13];
  *(v0 + 528) = v7[4];
  *(v0 + 536) = v7[5];
  sub_2219AC930(v8, v0 + 16);
  v9 = swift_allocObject();
  *(v0 + 544) = v9;
  *(v9 + 16) = v29[0];
  memcpy((v9 + 24), (v0 + 16), 0x82uLL);
  *(v9 + 160) = v5;
  *(v9 + 168) = v6;
  *(v9 + 176) = v4;
  *(v9 + 184) = v3;
  *(v9 + 192) = v2;
  *(v9 + 200) = v1;
  *(v9 + 208) = v25;
  *(v9 + 216) = v7;
  v10 = sub_221BCCD08();
  *(v0 + 280) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  OUTLINED_FUNCTION_21_6(v26, v11, v12, v10);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = swift_task_alloc();
  *(v0 + 552) = v17;
  *(v17 + 16) = v28;
  *(v17 + 24) = v7;
  *(v17 + 32) = v5;
  *(v17 + 40) = v6;
  *(v17 + 48) = v4;
  *(v17 + 56) = v3;
  *(v17 + 64) = v2;
  *(v17 + 72) = v1;
  *(v17 + 80) = v25;
  *(v17 + 88) = v8;
  *(v17 + 96) = v29[0];

  v18 = OUTLINED_FUNCTION_118();
  sub_221998178(v18, v19);

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_67_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_221B4C6C0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *(v5 + 568);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 584) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 328, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = v10[70];
  v12 = v10[69];
  v13 = v10[68];
  v15 = v10[61];
  v14 = v10[62];
  v17 = v10[59];
  v16 = v10[60];
  v18 = v10[58];

  sub_2219EC58C(v16, &qword_27CFB7F58);
  sub_2219EC58C(v14, &qword_27CFB7F60);
  sub_2219EC58C((v10 + 31), qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_221B4C8E8()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[62];
  v5 = v0[60];

  sub_2219EC58C(v5, &qword_27CFB7F58);
  sub_2219EC58C(v4, &qword_27CFB7F60);
  OUTLINED_FUNCTION_338_0((v0 + 31));
  OUTLINED_FUNCTION_338_0((v0 + 41));

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B4C9BC()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[61];
  v1 = v0[62];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[58];

  OUTLINED_FUNCTION_25();
  v7 = v0[73];

  return v6();
}

unint64_t sub_221B4CA48(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = 0xE000000000000000;
  sub_221BCDE68();

  v39 = 0xD000000000000011;
  v40 = 0x8000000221BF0B90;
  v35 = &type metadata for QuerySpecification;
  v36 = sub_2219EB6D8();
  v32 = swift_allocObject();
  sub_2219AC930(a2, v32 + 16);
  __swift_project_boxed_opaque_existential_0(&v32, &type metadata for QuerySpecification);
  LOBYTE(v30) = a1 & 1;
  v17 = sub_221A22514(&v30);
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_0(&v32);
  MEMORY[0x223DA31F0](v17, v19);

  MEMORY[0x223DA31F0](0x203A6E69202CLL, 0xE600000000000000);
  v32 = a3;
  v33 = a4;
  if (a6 == 2)
  {
  }

  else
  {
    v30 = 32;
    v31 = 0xE100000000000000;

    sub_221998178(a5, a6);
    v20 = sub_2219988C4(a5, a6);
    MEMORY[0x223DA31F0](v20);

    MEMORY[0x223DA31F0](v30, v31);

    a3 = v32;
    a4 = v33;
  }

  MEMORY[0x223DA31F0](a3, a4);

  MEMORY[0x223DA31F0](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  LOBYTE(v32) = a7 & 1;
  v33 = a8;
  v34 = a9;

  Request = QueryRequestOptions.description.getter();
  v23 = v22;

  MEMORY[0x223DA31F0](Request, v23);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  sub_2219EBEE4(a10 + 136, &v32);
  v24 = v38;
  if (v38)
  {
    v25 = v37;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_221BCDE68();

    v30 = 0xD00000000000001ALL;
    v31 = 0x8000000221BF0BB0;
    MEMORY[0x223DA31F0](v25, v24);
    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    v27 = v30;
    v26 = v31;
  }

  else
  {
    v26 = 0xED00003E72657355;
    v27 = 0x746E65727275433CLL;
  }

  sub_2219EBE90(&v32);
  MEMORY[0x223DA31F0](v27, v26);

  return v39;
}

uint64_t sub_221B4CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 147) = v13;
  *(v8 + 232) = v12;
  *(v8 + 216) = v11;
  *(v8 + 146) = v10;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 168) = a3;
  *(v8 + 176) = a4;
  *(v8 + 152) = a1;
  *(v8 + 160) = a2;
  return MEMORY[0x2822009F8](sub_221B4CDAC, 0, 0);
}

uint64_t sub_221B4CDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_170();
  a26 = v28;
  a27 = v29;
  OUTLINED_FUNCTION_230();
  a25 = v27;
  v31 = *(v27 + 200);
  v30 = *(v27 + 208);
  v59 = *(v27 + 184);
  v32 = *(v27 + 176);
  v33 = *(v27 + 160);
  sub_221B42830(*(v27 + 168), &unk_283519500, sub_221B5D5F0, &unk_283519528, sub_221B62F40);
  a13 = v59;
  a14 = v31;
  a15 = v30;
  sub_221B3C800(&a13);
  v58 = *(v27 + 147);
  v34 = *(v27 + 224);
  v35 = *(v27 + 146);
  v36 = *(v27 + 208);
  v57 = *(v27 + 216);
  v38 = *(v27 + 192);
  v37 = *(v27 + 200);
  v39 = *(v27 + 176);
  v40 = *(v27 + 184);
  v41 = *(v27 + 160);
  *&v59 = *(v27 + 168);
  sub_2219AC930(*(v27 + 232), v27 + 16);
  v42 = swift_allocObject();
  *(v27 + 240) = v42;
  *(v42 + 16) = v35;
  *(v42 + 24) = v57;
  *(v42 + 32) = v34;
  *(v42 + 40) = v40;
  *(v42 + 48) = v38;
  *(v42 + 56) = v37;
  *(v42 + 64) = v36;
  *(v42 + 72) = v41;
  memcpy((v42 + 80), (v27 + 16), 0x82uLL);
  *(v42 + 216) = v39;
  *(v42 + 224) = v58 & 1;

  v43 = OUTLINED_FUNCTION_14();
  sub_221998178(v43, v44);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v27 + 248) = v45;
  *v45 = v46;
  v45[1] = sub_221B4CFB4;
  v47 = *(v27 + 176);
  v48 = *(v27 + 152);
  v49 = *(v27 + 160);
  OUTLINED_FUNCTION_109();

  return sub_221B3B814(v50, v51, v52, v53, v54);
}

uint64_t sub_221B4CFB4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 256) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 240);

    OUTLINED_FUNCTION_25();

    return v13();
  }
}

uint64_t sub_221B4D0D0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 240);

  v2 = *(v0 + 256);
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B4D12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 227) = v17;
  *(v8 + 424) = v15;
  *(v8 + 432) = v16;
  *(v8 + 408) = v14;
  *(v8 + 392) = a7;
  *(v8 + 400) = a8;
  *(v8 + 376) = a5;
  *(v8 + 384) = a6;
  *(v8 + 360) = a2;
  *(v8 + 368) = a4;
  *(v8 + 352) = a1;
  v9 = sub_221BCCEE8();
  *(v8 + 440) = v9;
  v10 = *(v9 - 8);
  *(v8 + 448) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B4D218, 0, 0);
}

uint64_t sub_221B4D218()
{
  OUTLINED_FUNCTION_57_2();
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 416) + qword_27CFDED20;
  v14 = *(v0 + 368);
  v15 = *v5;
  v6 = *(v5 + 16);
  v7 = *(v5 + 17);
  sub_2219AC930(*(v0 + 424), v0 + 96);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 1;
  *(v0 + 72) = v15;
  *(v0 + 56) = v14;
  *(v0 + 88) = v6;
  *(v0 + 89) = v7;

  v8 = OUTLINED_FUNCTION_118_0();
  sub_221998178(v8, v9);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 464) = v10;
  *v10 = v11;
  v10[1] = sub_221B4D360;
  v12 = *(v0 + 360);

  return sub_221A40D48();
}

uint64_t sub_221B4D360()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 464);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  v3[59] = v0;

  if (v0)
  {
    v9 = v3[47];
    sub_221A00F98((v3 + 2));
  }

  else
  {
    v3[60] = v3[29];
    sub_221A00F98((v3 + 2));
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4D47C()
{
  OUTLINED_FUNCTION_200_0();
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  *(v0 + 488) = v2;
  *(v0 + 496) = v1;
  *(v0 + 504) = v3;
  *(v0 + 512) = v4;
  if (*(v0 + 264))
  {
    v5 = *(v0 + 480);
    v6 = *(v0 + 416);
    v7 = *(v0 + 424);
    v9 = *(v0 + 400);
    v8 = *(v0 + 408);
    v11 = *(v0 + 384);
    v10 = *(v0 + 392);
    v12 = *(v0 + 376);

    swift_willThrow();
    v13 = v5;
    sub_221B5329C(v11, v10, v9, v8, v7, 0);
    sub_221A01040(v0 + 232);
LABEL_29:
    v61 = *(v0 + 456);

    OUTLINED_FUNCTION_25();
LABEL_30:

    return v80();
  }

  v14 = v2;
  v15 = OUTLINED_FUNCTION_258_1();
  sub_2219EC3F4(v15, v16);
  v17 = [v14 valueType];
  *(v0 + 520) = v17;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v49 = *(v0 + 376);

      sub_221A00FEC();
      OUTLINED_FUNCTION_15_0();
      swift_allocError();
      OUTLINED_FUNCTION_86_0(v50, &type metadata for AnyQueryOutput);
      sub_221A01040(v0 + 232);
LABEL_28:
      v59 = OUTLINED_FUNCTION_258_1();
      sub_2219EC49C(v59, v60);

      goto LABEL_29;
    }

    v31 = [v14 value];
    sub_221BCDCF8();
    swift_unknownObjectRelease();
    sub_2219A1D20(0, &unk_27CFBB9D0, 0x277D23780);
    if (swift_dynamicCast())
    {
      v32 = *(v0 + 432);
      v33 = *(v0 + 376);
      *(v0 + 528) = *(v0 + 336);
      v35 = *(v32 + 32);
      v34 = *(v32 + 40);
      if (v33)
      {
        v36 = *(v0 + 368);
        sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);

        v37 = sub_221AE94F4(v36, v33);
        v33 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v37 preferredExtractionType:1];
      }

      *(v0 + 536) = v33;
      *(v0 + 226) = *(v0 + 227) & 1;
      if (qword_27CFB7368 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_35;
    }

LABEL_27:
    v57 = *(v0 + 376);

    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_86_0(v58, &type metadata for AnyQueryOutput);
    sub_221A01040(v0 + 232);

    goto LABEL_28;
  }

  v18 = [v14 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = *(v0 + 344);
  v20 = *(v0 + 472);
  v21 = sub_2219A69A0(v19);
  if (!v21)
  {
    v51 = *(v0 + 376);

    v30 = MEMORY[0x277D84F90];
LABEL_24:
    v52 = *(v0 + 456);
    v53 = *(*(v0 + 360) + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);
    type metadata accessor for RemoteAppIntentsActor();
    OUTLINED_FUNCTION_28_8();
    sub_221B62E9C(v54, v55);

    sub_221BCCFD8();
    v83 = v30;
    if (v20)
    {
    }

    else
    {
      v62 = *(v0 + 448);
      v63 = *(v0 + 456);
      v64 = *(v0 + 440);
      sub_221BCCEB8();
      OUTLINED_FUNCTION_197_1();
      (*(v62 + 8))(v63, v64);
    }

    v65 = *(v0 + 496);
    v66 = *(v0 + 416);
    v67 = *(v0 + 424);
    v69 = *(v0 + 400);
    v68 = *(v0 + 408);
    v70 = *(v0 + 384);
    v71 = *(v0 + 392);
    v79 = OUTLINED_FUNCTION_369_0(v56, v72, v73, v74, v75, v76, v77, v78, *(v0 + 504), *(v0 + 512), *(v0 + 488), *(v0 + 456), v83);
    sub_221B5329C(v70, v71, v69, v68, v67, v79);

    sub_2219EC49C(v65, v81);
    sub_221A01040(v0 + 232);

    OUTLINED_FUNCTION_4_3();
    goto LABEL_30;
  }

  v22 = v21;
  v84 = MEMORY[0x277D84F90];

  sub_221BCDF28();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v24 = OUTLINED_FUNCTION_258_1();
        MEMORY[0x223DA3BF0](v24);
      }

      else
      {
        v25 = *(v19 + 8 * v23 + 32);
      }

      ++v23;
      v26 = objc_allocWithZone(type metadata accessor for RemoteLNValue());
      v27 = OUTLINED_FUNCTION_25_1();
      sub_221B8267C(v27);
      sub_221BCDEF8();
      v28 = *(v84 + 16);
      sub_221BCDF38();
      OUTLINED_FUNCTION_17_6();
      sub_221BCDF48();
      sub_221BCDF08();
    }

    while (v22 != v23);
    v29 = *(v0 + 376);
    swift_bridgeObjectRelease_n();

    v30 = v84;
    goto LABEL_24;
  }

  __break(1u);
LABEL_35:
  OUTLINED_FUNCTION_1_33();
LABEL_18:
  sub_221BCBC4C(qword_27CFDEDA8);
  v38 = swift_task_alloc();
  *(v0 + 544) = v38;
  *v38 = v0;
  v38[1] = sub_221B4DB50;
  OUTLINED_FUNCTION_236_1(*(v0 + 360));
  OUTLINED_FUNCTION_67_0();

  return sub_221B4E004(v39, v40, v41, v42, v43, v44, v45, v46);
}

uint64_t sub_221B4DB50()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_17_3();
  *v8 = v7;
  v10 = *(v9 + 544);
  v11 = *(v9 + 536);
  v12 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v13 = v12;
  v7[69] = v0;

  if (v0)
  {
    v14 = v7[47];
  }

  else
  {
    v7[70] = v5;
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_221B4DF14()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B4DF70()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 496);

  v6 = OUTLINED_FUNCTION_118_0();
  sub_2219EC49C(v6, v7);

  sub_221A01040(v0 + 232);
  v8 = *(v0 + 552);
  v9 = *(v0 + 456);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_221B4E004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 184) = a8;
  *(v9 + 192) = v8;
  *(v9 + 82) = v14;
  *(v9 + 168) = a6;
  *(v9 + 176) = a7;
  *(v9 + 152) = a4;
  *(v9 + 160) = a5;
  *(v9 + 136) = a2;
  *(v9 + 144) = a3;
  *(v9 + 128) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40) - 8) + 64) + 15;
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 83) = *v13;

  return MEMORY[0x2822009F8](sub_221B4E0C8, 0, 0);
}

uint64_t sub_221B4E0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_1();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_200_0();
  a24 = v26;
  v29 = *(v26 + 168);
  if (v29)
  {
    v30 = *(v26 + 176);
    v31 = *(v26 + 160);
    v32 = v29;
    v33 = MEMORY[0x277D84FA0];
    *(v26 + 112) = v30;
    *(v26 + 120) = v33;
    v117 = v31;
    v34 = OUTLINED_FUNCTION_0_0();
    sub_2219EC3F4(v34, v35);

    sub_221B25A5C(v36);
    if (qword_27CFB73C0 != -1)
    {
      OUTLINED_FUNCTION_4_22();
    }

    v37 = *(v26 + 192);
    v116 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v116, qword_27CFDEE88);
    v38 = v37;
    v39 = sub_221BCCD68();
    v40 = sub_221BCDA98();

    v41 = off_278482000;
    if (os_log_type_enabled(v39, v40))
    {
      v42 = *(v26 + 192);
      HIDWORD(a10) = *(v26 + 160);
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_6();
      a11 = v32;
      a14 = swift_slowAlloc();
      *v43 = 136315906;
      v44 = static Instrumentation.currentActivityId.getter();
      v46 = sub_2219A6360(v44, v45, &a14);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2048;
      *(v43 + 14) = sub_2219A69A0(v30);
      *(v43 + 22) = 2080;
      v47 = v42;
      v48 = [v47 description];
      v49 = sub_221BCD388();
      v41 = v50;

      v51 = sub_2219A6360(v49, v41, &a14);

      *(v43 + 24) = v51;
      *(v43 + 32) = 1024;
      *(v43 + 34) = BYTE4(a10) & 1;
      OUTLINED_FUNCTION_328_0();
      _os_log_impl(v52, v53, v54, v55, v56, 0x26u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v57 = OUTLINED_FUNCTION_9_10();
      MEMORY[0x223DA4C00](v57);
    }

    if (v117)
    {
      if (*(v26 + 82) == 1)
      {
        v58 = *(v26 + 83);
        v60 = *(v26 + 192);
        v59 = *(v26 + 200);
        v62 = *(v26 + 136);
        v61 = *(v26 + 144);
        v63 = *(v26 + 128);
        v64 = sub_221BCD7F8();
        OUTLINED_FUNCTION_102_5(v64);
        v65 = swift_allocObject();
        *(v65 + 16) = 0;
        *(v65 + 24) = 0;
        *(v65 + 32) = v60;
        *(v65 + 40) = v63;
        *(v65 + 48) = v62;
        *(v65 + 56) = v61;
        *(v65 + 64) = v58;

        v66 = v60;

        OUTLINED_FUNCTION_153();
        sub_2219F8C64();
      }

      v67 = *(v26 + 120);
      v68 = sub_2219A280C(v67);
      if (v68)
      {
        v69 = v68;
        if (sub_221BB954C(v67) >= 2)
        {
          sub_2219A1D20(0, &qword_27CFBBAF0, 0x277D23750);
          v70 = OUTLINED_FUNCTION_75();
          sub_221BB9DCC(v70);
          sub_221BB956C();
        }
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x277D238A0]) init];
      }

      v105 = *(v26 + 200);

      OUTLINED_FUNCTION_237_2();
      swift_beginAccess();
      v106 = *(v26 + 112);

      v107 = *(v26 + 8);
      OUTLINED_FUNCTION_67_0();

      return v111(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, v116, v117, a14, a15, a16, a17, a18);
    }

    else
    {
      *(v26 + 240) = v32;
      if (qword_27CFB73C0 != -1)
      {
        OUTLINED_FUNCTION_4_22();
        v32 = *(v26 + 240);
      }

      *(v26 + 248) = OUTLINED_FUNCTION_178(v116, qword_27CFDEE88);
      v86 = v32;
      v87 = sub_221BCCD68();
      sub_221BCDA98();

      if (OUTLINED_FUNCTION_104_0())
      {
        v88 = *(v26 + 240);
        v89 = *(v26 + 184);
        v86 = OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_19_6();
        v41 = swift_slowAlloc();
        a14 = v41;
        *v86 = 136315650;
        v90 = static Instrumentation.currentActivityId.getter();
        sub_2219A6360(v90, v91, &a14);
        OUTLINED_FUNCTION_277();

        v92 = OUTLINED_FUNCTION_206_3();
        [v92 description];
        sub_221BCD388();
        OUTLINED_FUNCTION_441();

        v93 = OUTLINED_FUNCTION_3_4();
        sub_2219A6360(v93, v94, v95);
        OUTLINED_FUNCTION_442();
        v86[3] = v92;
        OUTLINED_FUNCTION_242_3();
        _os_log_impl(v96, v97, v98, v99, v100, 0x20u);
        OUTLINED_FUNCTION_443();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      OUTLINED_FUNCTION_333_0();
      objc_opt_self();
      OUTLINED_FUNCTION_66_2();

      v101 = [v86 sharedInstance];
      [v101 optInApple];

      OUTLINED_FUNCTION_169_3();
      v102 = v41;
      v103 = swift_task_alloc();
      *(v26 + 256) = v103;
      *v103 = v26;
      OUTLINED_FUNCTION_61_7(v103);
      OUTLINED_FUNCTION_67_0();

      return sub_221A4CDF0();
    }
  }

  else
  {
    v71 = *(v26 + 152);
    v72 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v73 = [objc_allocWithZone(MEMORY[0x277D23B38]) initWithPageSize_];
    *(v26 + 208) = v73;

    if (v71)
    {
      [v73 setExportConfiguration_];
    }

    v74 = *(v26 + 83);
    v75 = *(v26 + 192);
    v77 = *(v26 + 136);
    v76 = *(v26 + 144);
    objc_opt_self();
    OUTLINED_FUNCTION_55_1();

    v78 = [v71 sharedInstance];
    v79 = [v78 optInApple];

    *(v26 + 16) = v77;
    *(v26 + 24) = v76;
    *(v26 + 32) = v79;
    *(v26 + 33) = v74;
    *(v26 + 40) = v75;
    *(v26 + 48) = v73;
    v80 = v73;
    v81 = v75;
    v82 = swift_task_alloc();
    *(v26 + 216) = v82;
    *v82 = v26;
    v82[1] = sub_221B4E768;
    v83 = *(v26 + 128);
    OUTLINED_FUNCTION_67_0();

    return sub_221A4BC0C();
  }
}

uint64_t sub_221B4E768()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v8 = *(v7 + 216);
  *v6 = *v1;
  *(v5 + 224) = v9;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 84) = v3;
  }

  v10 = *(v5 + 24);
  v11 = *(v5 + 40);
  v12 = *(v5 + 48);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_221B4E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_237();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_104();
  a18 = v20;
  if (*(v20 + 84))
  {
    v24 = *(v20 + 224);
    v25 = *(v20 + 208);
    swift_willThrow();

    v26 = *(v20 + 200);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_238();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  else
  {
    v36 = *(v20 + 224);

    v37 = MEMORY[0x277D84FA0];
    *(v20 + 112) = MEMORY[0x277D84F90];
    *(v20 + 120) = v37;
    *(v20 + 240) = v36;
    if (qword_27CFB73C0 != -1)
    {
      OUTLINED_FUNCTION_4_22();
      v36 = *(v20 + 240);
    }

    v38 = sub_221BCCD88();
    *(v20 + 248) = OUTLINED_FUNCTION_178(v38, qword_27CFDEE88);
    v39 = v36;
    v40 = sub_221BCCD68();
    sub_221BCDA98();

    if (OUTLINED_FUNCTION_104_0())
    {
      v41 = *(v20 + 240);
      v42 = *(v20 + 184);
      v39 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_19_6();
      v21 = swift_slowAlloc();
      a9 = v21;
      *v39 = 136315650;
      v43 = static Instrumentation.currentActivityId.getter();
      sub_2219A6360(v43, v44, &a9);
      OUTLINED_FUNCTION_277();

      v45 = OUTLINED_FUNCTION_206_3();
      [v45 description];
      sub_221BCD388();
      OUTLINED_FUNCTION_441();

      v46 = OUTLINED_FUNCTION_3_4();
      sub_2219A6360(v46, v47, v48);
      OUTLINED_FUNCTION_442();
      v39[3] = v45;
      OUTLINED_FUNCTION_242_3();
      _os_log_impl(v49, v50, v51, v52, v53, 0x20u);
      OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    OUTLINED_FUNCTION_333_0();
    objc_opt_self();
    OUTLINED_FUNCTION_66_2();

    v54 = [v39 sharedInstance];
    [v54 optInApple];

    OUTLINED_FUNCTION_169_3();
    v55 = v21;
    v56 = swift_task_alloc();
    *(v20 + 256) = v56;
    *v56 = v20;
    OUTLINED_FUNCTION_61_7(v56);
    OUTLINED_FUNCTION_238();

    return sub_221A4CDF0();
  }
}

uint64_t sub_221B4EB14()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v8 = *(v7 + 256);
  *v6 = *v1;
  *(v5 + 264) = v9;
  *(v5 + 272) = v0;

  if (!v0)
  {
    *(v5 + 85) = v3;
  }

  v10 = *(v5 + 72);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B4EC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_143_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_57_2();
  a20 = v22;
  v25 = *(v22 + 264);
  if (*(v22 + 85))
  {
    v26 = *(v22 + 240);
    v27 = *(v22 + 264);
    swift_willThrow();

    v28 = *(v22 + 120);

    v29 = *(v22 + 112);

    v30 = *(v22 + 200);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_75_4();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v41 = *(v22 + 240);
    v40 = *(v22 + 248);
    sub_2219EBF40(*(v22 + 264), 0);
    sub_2219EBF40(v25, 0);
    v42 = v41;
    sub_2219EBF40(v25, 0);
    v43 = sub_221BCCD68();
    v44 = sub_221BCDA98();

    v45 = OUTLINED_FUNCTION_104_0();
    v46 = *(v22 + 264);
    if (v45)
    {
      v47 = *(v22 + 240);
      v48 = OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_19_6();
      a9 = swift_slowAlloc();
      a10 = a9;
      *v48 = 136315650;
      v49 = static Instrumentation.currentActivityId.getter();
      v51 = sub_2219A6360(v49, v50, &a10);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v52 = v47;
      v53 = [v52 0x1FB7FC4F8];
      v54 = sub_221BCD388();
      v56 = v55;

      v57 = sub_2219A6360(v54, v56, &a10);

      *(v48 + 14) = v57;
      *(v48 + 22) = 2048;
      sub_2219A69A0(v25);
      v58 = OUTLINED_FUNCTION_277();
      sub_2219EBF4C(v58, 0);
      *(v48 + 24) = v56;
      sub_2219EBF4C(v46, 0);
      _os_log_impl(&dword_221989000, v43, v44, "%s%s returned %ld results", v48, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
      sub_2219EBF4C(*(v22 + 264), 0);
      sub_2219EBF4C(v46, 0);
    }

    v59 = *(v22 + 264);
    v60 = *(v22 + 272);
    v61 = *(v22 + 184);
    sub_221B25B3C(v25, (v22 + 112), v22 + 120);
    sub_2219A69A0(v25);
    v62 = OUTLINED_FUNCTION_66_2();
    sub_2219EBF4C(v62, 0);
    sub_2219EBF4C(v59, 0);
    if (v25 >= v61)
    {
      if (qword_27CFB73C0 != -1)
      {
        OUTLINED_FUNCTION_4_22();
      }

      v74 = *(v22 + 240);
      v75 = sub_221BCCD88();
      *(v22 + 248) = OUTLINED_FUNCTION_178(v75, qword_27CFDEE88);
      v76 = v74;
      v77 = sub_221BCCD68();
      sub_221BCDA98();

      if (OUTLINED_FUNCTION_104_0())
      {
        v78 = *(v22 + 240);
        v79 = *(v22 + 184);
        v76 = OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_19_6();
        v61 = swift_slowAlloc();
        a10 = v61;
        *v76 = 136315650;
        v80 = static Instrumentation.currentActivityId.getter();
        sub_2219A6360(v80, v81, &a10);
        OUTLINED_FUNCTION_277();

        v82 = OUTLINED_FUNCTION_206_3();
        [v82 description];
        sub_221BCD388();
        OUTLINED_FUNCTION_441();

        v83 = OUTLINED_FUNCTION_3_4();
        sub_2219A6360(v83, v84, v85);
        OUTLINED_FUNCTION_442();
        v76[3] = v82;
        OUTLINED_FUNCTION_242_3();
        _os_log_impl(v86, v87, v88, v89, v90, 0x20u);
        OUTLINED_FUNCTION_443();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      OUTLINED_FUNCTION_333_0();
      objc_opt_self();
      OUTLINED_FUNCTION_66_2();

      v91 = [v76 sharedInstance];
      [v91 optInApple];

      OUTLINED_FUNCTION_169_3();
      v92 = v61;
      v93 = swift_task_alloc();
      *(v22 + 256) = v93;
      *v93 = v22;
      OUTLINED_FUNCTION_61_7();
      OUTLINED_FUNCTION_75_4();

      return sub_221A4CDF0();
    }

    else
    {
      v63 = *(v22 + 240);
      if (*(v22 + 82) == 1)
      {
        v64 = *(v22 + 83);
        v66 = *(v22 + 192);
        v65 = *(v22 + 200);
        v68 = *(v22 + 136);
        v67 = *(v22 + 144);
        v60 = *(v22 + 128);
        v69 = sub_221BCD7F8();
        OUTLINED_FUNCTION_102_5(v69);
        v70 = swift_allocObject();
        *(v70 + 16) = 0;
        *(v70 + 24) = 0;
        *(v70 + 32) = v66;
        *(v70 + 40) = v60;
        *(v70 + 48) = v68;
        *(v70 + 56) = v67;
        *(v70 + 64) = v64;

        v71 = v66;

        OUTLINED_FUNCTION_153();
        sub_2219F8C64();
      }

      if (sub_2219A280C(*(v22 + 120)))
      {
        v72 = OUTLINED_FUNCTION_55_1();
        if (sub_221BB954C(v72) >= 2)
        {
          sub_2219A1D20(0, &qword_27CFBBAF0, 0x277D23750);
          v73 = OUTLINED_FUNCTION_97_1();
          sub_221BB9DCC(v73);
          sub_221BB956C();
        }
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x277D238A0]) init];
      }

      v95 = *(v22 + 200);

      OUTLINED_FUNCTION_237_2();
      swift_beginAccess();
      v96 = *(v22 + 112);

      v97 = *(v22 + 8);
      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_75_4();

      return v101(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_221B4F1E8()
{
  OUTLINED_FUNCTION_1_5();

  v1 = *(v0 + 232);
  v2 = *(v0 + 200);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B4F24C()
{
  OUTLINED_FUNCTION_1_5();

  v1 = *(v0 + 120);

  v2 = *(v0 + 112);

  v3 = *(v0 + 272);
  v4 = *(v0 + 200);

  OUTLINED_FUNCTION_25();

  return v5();
}

unint64_t sub_221B4F2C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_221BCDE68();

  v20 = 0xD00000000000001DLL;
  v21 = 0x8000000221BF0C00;
  v12 = sub_2219C1C00(a2, a3, a4, a5, a1 & 1);
  MEMORY[0x223DA31F0](v12);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  sub_2219EBEE4(a6 + 136, v18);
  v13 = v19;
  if (v19)
  {
    v14 = v18[6];
    sub_221BCDE68();

    MEMORY[0x223DA31F0](v14, v13);
    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    v16 = 0xD00000000000001ALL;
    v15 = 0x8000000221BF0BB0;
  }

  else
  {
    v15 = 0xED00003E72657355;
    v16 = 0x746E65727275433CLL;
  }

  sub_2219EBE90(v18);
  MEMORY[0x223DA31F0](v16, v15);

  return v20;
}

uint64_t sub_221B4F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_221B4F478, 0, 0);
}

uint64_t sub_221B4F478()
{
  OUTLINED_FUNCTION_57_2();
  v25 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v23[0] = *(v0 + 32);
  v23[1] = v2;
  v24 = *(v0 + 48);
  sub_221B3C800(v23);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = swift_allocObject();
  *(v0 + 72) = v8;
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v7;

  v9 = OUTLINED_FUNCTION_0_0();
  sub_221998178(v9, v10);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v11;
  *v11 = v12;
  v11[1] = sub_221B4F5D8;
  v13 = *(v0 + 64);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  OUTLINED_FUNCTION_243_2();
  OUTLINED_FUNCTION_432();

  return sub_221B3B9B4(v16, v17, v18, v19, v20);
}

uint64_t sub_221B4F5D8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B4F6D8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_4_3();

  return v0();
}

uint64_t sub_221B4F72C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B4F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  v8 = sub_221BCCEE8();
  v7[35] = v8;
  v9 = *(v8 - 8);
  v7[36] = v9;
  v10 = *(v9 + 64) + 15;
  v7[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B4F85C, 0, 0);
}

uint64_t sub_221B4F85C()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 248);
  v2 = *(v0 + 272) + qword_27CFDED20;
  v3 = *v2;
  v4 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 17);
  *(v0 + 16) = *(v0 + 240);
  v9 = *(v0 + 256);
  *(v0 + 24) = v1;
  *(v0 + 32) = v9;
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  *(v0 + 65) = v2;

  sub_221998178(v9, *(&v9 + 1));

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 304) = v5;
  *v5 = v6;
  v5[1] = sub_221B4F960;
  v7 = *(v0 + 232);

  return sub_221A46D8C();
}

uint64_t sub_221B4F960()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 312) = v0;

  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  v11 = *(v3 + 48);
  if (v0)
  {
    *(v3 + 120) = *(v3 + 64);
    *(v3 + 104) = v11;
    *(v3 + 88) = v10;
    *(v3 + 72) = v9;
    sub_221A020D8(v3 + 72);
  }

  else
  {
    *(v3 + 176) = *(v3 + 64);
    *(v3 + 144) = v10;
    *(v3 + 160) = v11;
    *(v3 + 128) = v9;
    sub_221A020D8(v3 + 128);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221B4FA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_57_2();
  v15 = *(v14 + 184);
  v16 = *(v14 + 216);
  if (v16 < 0)
  {
    v27 = *(v14 + 184);
    swift_willThrow();
    v28 = *(v14 + 296);

    OUTLINED_FUNCTION_25();
  }

  else
  {
    v17 = *(v14 + 192);
    v18 = *(v14 + 200);
    v19 = *(v14 + 208);
    v20 = *(v14 + 312);
    v21 = *(v14 + 296);
    v22 = *(*(v14 + 232) + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);

    a10 = v18;
    v23 = OUTLINED_FUNCTION_120();
    sub_221998178(v23, v24);
    type metadata accessor for RemoteAppIntentsActor();
    OUTLINED_FUNCTION_28_8();
    sub_221B62E9C(v25, v26);
    sub_221BCCFD8();
    if (v20)
    {
    }

    else
    {
      v30 = *(v14 + 288);
      v29 = *(v14 + 296);
      v31 = *(v14 + 280);
      sub_221BCCEB8();
      OUTLINED_FUNCTION_197_1();
      (*(v30 + 8))(v29, v31);
    }

    v32 = *(v14 + 296);
    v33 = *(v14 + 224);

    v34 = OUTLINED_FUNCTION_190_1();
    sub_221A0212C(v34, v35, a10, v19, v16);
    v36 = OUTLINED_FUNCTION_190_1();
    sub_221A0212C(v36, v37, a10, v19, v16);
    *v33 = v15;
    *(v33 + 8) = v17;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0xE000000000000000;
    *(v33 + 32) = v16 & 1;
    *(v33 + 33) = BYTE1(v16) & 1;

    OUTLINED_FUNCTION_4_3();
  }

  OUTLINED_FUNCTION_75_4();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_221B4FC48()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B4FCA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[1] = 0xE000000000000000;
  sub_221BCDE68();
  v28 = 0;
  v29 = 0xE000000000000000;
  MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BECE30);
  v26[3] = &type metadata for AppIntentSpecification;
  v26[4] = sub_2219EB9A8();
  v26[0] = swift_allocObject();
  sub_2219EB748(a2, v26[0] + 16);
  __swift_project_boxed_opaque_existential_0(v26, &type metadata for AppIntentSpecification);
  a1 &= 1u;
  LOBYTE(v24) = a1;
  v13 = sub_2219B5AFC(&v24);
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_0(v26);
  MEMORY[0x223DA31F0](v13, v15);

  MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BECE50);
  v16 = sub_2219C0D58(a3, a4, a1);
  MEMORY[0x223DA31F0](v16);

  MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECE70);
  if (a6)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (a6)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v17, v18);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  sub_2219EBEE4(a7 + 136, v26);
  v19 = v27;
  if (v27)
  {
    v20 = v26[6];
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_221BCDE68();

    v24 = 0xD00000000000001ALL;
    v25 = 0x8000000221BF0BB0;
    MEMORY[0x223DA31F0](v20, v19);
    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    v22 = v24;
    v21 = v25;
  }

  else
  {
    v21 = 0xED00003E72657355;
    v22 = 0x746E65727275433CLL;
  }

  sub_2219EBE90(v26);
  MEMORY[0x223DA31F0](v22, v21);

  return v28;
}

uint64_t sub_221B4FF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  return MEMORY[0x2822009F8](sub_221B4FF54, 0, 0);
}

uint64_t sub_221B4FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_170();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_230();
  a24 = v26;
  v29 = *(v26 + 112);
  v30 = *(v26 + 72);
  v31 = v30[4];
  __swift_project_boxed_opaque_existential_0(v30, v30[3]);
  v32 = *(v31 + 8);
  v33 = OUTLINED_FUNCTION_75();
  v34(v33, v31);
  a12 = a9;
  a13 = a10;
  a14 = a11;
  sub_221B3C800(&a12);
  v35 = *(v26 + 104);
  v36 = *(v26 + 112);
  v37 = *(v26 + 88);
  v38 = *(v26 + 96);
  v39 = *(v26 + 72);
  v40 = *(v26 + 80);
  v41 = *(v26 + 64);

  v42 = OUTLINED_FUNCTION_120();
  sub_2219982C4(v42, v43);
  sub_2219EB748(v39, v26 + 16);
  OUTLINED_FUNCTION_206_0();
  v44 = swift_allocObject();
  *(v26 + 120) = v44;
  v45 = *(v26 + 32);
  *(v44 + 16) = *(v26 + 16);
  *(v44 + 32) = v45;
  *(v44 + 48) = *(v26 + 48);
  *(v44 + 56) = v36;
  *(v44 + 64) = v40;
  *(v44 + 72) = v37;
  *(v44 + 80) = v41;
  *(v44 + 88) = v38;
  *(v44 + 96) = v35;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v26 + 128) = v46;
  *v46 = v47;
  v46[1] = sub_221B50148;
  v48 = *(v26 + 112);
  v49 = *(v26 + 56);
  v50 = *(v26 + 64);
  OUTLINED_FUNCTION_243_2();
  OUTLINED_FUNCTION_109();

  return sub_221B3BEF0(v51, v52, v53, v54, v55);
}

uint64_t sub_221B50148()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = *(v3 + 120);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B50248()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[8];
  sub_221B714A0(v0[9], v0[10], v0[11], v0[13] != 0);
  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B502B0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];

  v7 = OUTLINED_FUNCTION_118_0();
  sub_221B714A0(v7, v8, v4, v9);
  v10 = v0[17];
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_221B50334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[47] = a8;
  v8[48] = v14;
  v8[45] = a6;
  v8[46] = a7;
  v8[43] = a4;
  v8[44] = a5;
  v8[41] = a2;
  v8[42] = a3;
  v8[40] = a1;
  v8[49] = *a7;
  v9 = sub_221BCCEE8();
  v8[50] = v9;
  v10 = *(v9 - 8);
  v8[51] = v10;
  v11 = *(v10 + 64) + 15;
  v8[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B50434, 0, 0);
}

uint64_t sub_221B50434()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 344);
  v5 = *(v0 + 352);
  sub_2219EB748(*(v0 + 336), v0 + 16);
  sub_2219A1B08(v6 + 56, v0 + 56);
  v7 = v4 + qword_27CFDED20;
  v8 = *(v4 + qword_27CFDED20);
  v9 = *(v4 + qword_27CFDED20 + 8);
  v10 = *(v7 + 16);
  LOBYTE(v7) = *(v7 + 17);
  *(v0 + 96) = v5;
  *(v0 + 104) = v3;
  *(v0 + 112) = v8;
  *(v0 + 120) = v9;
  *(v0 + 128) = v10;
  *(v0 + 129) = v7;
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 424) = v11;
  *v11 = v12;
  v11[1] = sub_221B50540;
  v13 = *(v0 + 328);
  OUTLINED_FUNCTION_125_1();

  return sub_221A49190();
}

uint64_t sub_221B50540()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 432) = v0;

  sub_221A02084(v3 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B50640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_170();
  a26 = v28;
  a27 = v29;
  OUTLINED_FUNCTION_230();
  a25 = v27;
  v31 = *(v27 + 240);
  v30 = *(v27 + 248);
  *(v27 + 440) = v31;
  *(v27 + 448) = v30;
  v33 = *(v27 + 256);
  v32 = *(v27 + 264);
  *(v27 + 456) = v33;
  *(v27 + 464) = v32;
  v34 = *(v27 + 272);
  *(v27 + 273) = *(v27 + 272);
  if ((v34 & 0x80000000) == 0)
  {
    v80 = v34;
    v82 = v30;
    v35 = *(v27 + 432);
    v36 = *(v27 + 416);
    v37 = *(*(v27 + 328) + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);
    type metadata accessor for RemoteAppIntentsActor();
    OUTLINED_FUNCTION_28_8();
    sub_221B62E9C(v38, v39);
    v81 = v31;

    sub_221BCCFD8();
    if (v35)
    {
    }

    else
    {
      v53 = *(v27 + 408);
      v52 = *(v27 + 416);
      v54 = *(v27 + 400);
      v40 = sub_221BCCEB8();
      v41 = v55;
      v56 = *(v53 + 8);
      v57 = OUTLINED_FUNCTION_142_4();
      v58(v57);
      if (v41)
      {
        goto LABEL_9;
      }
    }

    v40 = 0;
    v41 = 0xE000000000000000;
LABEL_9:
    v59 = *(v27 + 392);
    v60 = *(v27 + 336);
    v61 = *(v27 + 344);
    v62 = v60[4];
    __swift_project_boxed_opaque_existential_0(v60, v60[3]);
    v63 = *(v62 + 8);
    v64 = OUTLINED_FUNCTION_223_4();
    v65(v64, v62);
    v66 = a13;
    sub_2219982C4(a14, a15);
    a13 = v66;
    a14 = v40;
    a15 = v41;
    swift_unknownObjectRetain();
    _IntentValueConversionContext.init(origin:dispatcher:)(&a13, v61, &off_2835191E0, v27 + 152);
    *(v27 + 280) = v81;
    *(v27 + 288) = v82;
    *(v27 + 296) = v33;
    *(v27 + 304) = v32;
    *(v27 + 312) = v80 & 1;
    v67 = *(v59 + 80);
    v68 = *(v67 + 16);
    *(v27 + 224) = &type metadata for _IntentValueConversionContext;
    *(v27 + 232) = &protocol witness table for _IntentValueConversionContext;
    OUTLINED_FUNCTION_49();
    v69 = swift_allocObject();
    *(v27 + 200) = v69;
    sub_2219EB180(v27 + 152, v69 + 16);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v27 + 472) = v70;
    v71 = *(v67 + 24);
    *v70 = v72;
    v70[1] = sub_221B508E4;
    v73 = *(v27 + 320);
    OUTLINED_FUNCTION_145_3();
    OUTLINED_FUNCTION_109();

    return sub_2219B01E4(v74, v75, v76, v77, v78);
  }

  swift_willThrow();
  v42 = *(v27 + 416);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_109();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, *(&a13 + 1), a14, a15, a16, a17, a18, a19);
}

uint64_t sub_221B508E4()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 472);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 480) = v0;

  if (!v0)
  {
    v10 = *(v3 + 456);
    v9 = *(v3 + 464);
    v12 = *(v3 + 440);
    v11 = *(v3 + 448);
    v13 = *(v3 + 273);
    __swift_destroy_boxed_opaque_existential_0((v3 + 200));
    sub_2219EC114(v12, v11, v10, v9, v13);
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221B50A10()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 416);
  sub_2219EC114(*(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 464), *(v0 + 273));
  sub_22199C274(v0 + 152);

  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B50A84()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B50AE0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 440);
  v3 = *(v0 + 448);
  v5 = *(v0 + 273);
  v6 = OUTLINED_FUNCTION_118();
  sub_2219EC114(v6, v7, v1, v2, v5);
  sub_22199C274(v0 + 152);
  __swift_destroy_boxed_opaque_existential_0((v0 + 200));
  v8 = OUTLINED_FUNCTION_118();
  sub_2219EC114(v8, v9, v1, v2, v5);
  v10 = *(v0 + 480);
  v11 = *(v0 + 416);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_221B50B88(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_221BCDE68();

  v9 = 0x676E696863746546;
  v10 = 0xE900000000000020;
  sub_2219EAFE0(a1, v8);
  v7 = 0;
  v2 = sub_2219A7A50(&v7);
  v4 = v3;
  sub_221B58D98(v8);
  MEMORY[0x223DA31F0](v2, v4);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  v5 = UserInternal.description.getter();
  MEMORY[0x223DA31F0](v5);

  return v9;
}

uint64_t sub_221B50C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return MEMORY[0x2822009F8](sub_221B50C94, 0, 0);
}

uint64_t sub_221B50C94()
{
  OUTLINED_FUNCTION_57_2();
  v28 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v27[0] = v1[7];
  v27[1] = v3;
  v27[2] = v4;
  v27[3] = v5;

  v6 = OUTLINED_FUNCTION_4();
  sub_221998178(v6, v7);
  sub_221B3C800(v27);
  v8 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v10 = v0[15];

  v12 = OUTLINED_FUNCTION_27();
  sub_2219982C4(v12, v13);
  sub_2219EAFE0(v10, (v0 + 2));
  v14 = swift_allocObject();
  v0[18] = v14;
  v14[2] = v9;
  memcpy(v14 + 3, v0 + 2, 0x58uLL);
  v14[14] = v11;
  v14[15] = v8;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[19] = v15;
  *v15 = v16;
  v15[1] = sub_221B50E3C;
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[14];
  OUTLINED_FUNCTION_243_2();
  OUTLINED_FUNCTION_432();

  return sub_221B3BEF0(v20, v21, v22, v23, v24);
}

uint64_t sub_221B50E3C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (!v0)
  {
    v9 = *(v3 + 144);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B50F3C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 112);
  sub_221B71358(*(v0 + 120));
  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B50F94()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];

  sub_221B71358(v2);
  v4 = v0[20];
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_221B50FFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  v6[33] = *a4;
  v7 = sub_221BCCEE8();
  v6[34] = v7;
  v8 = *(v7 - 8);
  v6[35] = v8;
  v9 = *(v8 + 64) + 15;
  v6[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B510EC, 0, 0);
}

uint64_t sub_221B510EC()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = v1[7];
  *(v0 + 296) = v3;
  v4 = v1[8];
  *(v0 + 304) = v4;
  v5 = v1[9];
  v6 = v1[10];
  sub_2219A1B08((v1 + 2), v0 + 48);
  v7 = *v1;
  v8 = v1[1];
  v9 = v2 + qword_27CFDED20;
  v10 = *(v2 + qword_27CFDED20);
  v11 = *(v2 + qword_27CFDED20 + 8);
  v12 = *(v9 + 16);
  LOBYTE(v9) = *(v9 + 17);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v10;
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  *(v0 + 121) = v9;

  v13 = OUTLINED_FUNCTION_4();
  sub_221998178(v13, v14);

  v15 = swift_task_alloc();
  *(v0 + 312) = v15;
  *v15 = v0;
  v15[1] = sub_221B5120C;
  v16 = *(v0 + 224);
  OUTLINED_FUNCTION_152();

  return sub_221A47B0C();
}

uint64_t sub_221B5120C()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v8 = *(v7 + 312);
  *v6 = *v1;
  *(v5 + 320) = v9;
  *(v5 + 328) = v0;

  if (!v0)
  {
    *(v5 + 122) = v3;
  }

  sub_221A00E80(v5 + 16);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B5132C()
{
  OUTLINED_FUNCTION_113_0();
  v33 = v0;
  if (*(v0 + 122))
  {
    v1 = *(v0 + 320);
    swift_willThrow();
    v2 = *(v0 + 288);

    OUTLINED_FUNCTION_25();
    goto LABEL_8;
  }

  v4 = *(v0 + 328);
  v5 = *(v0 + 288);
  v6 = *(*(v0 + 224) + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_28_8();
  sub_221B62E9C(v7, v8);
  OUTLINED_FUNCTION_190_1();
  sub_221BCCFD8();
  if (v4)
  {
  }

  else
  {
    v12 = *(v0 + 280);
    v11 = *(v0 + 288);
    v13 = *(v0 + 272);
    v9 = sub_221BCCEB8();
    v10 = v14;
    v15 = *(v12 + 8);
    v16 = OUTLINED_FUNCTION_4();
    v17(v16);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
  v10 = 0xE000000000000000;
LABEL_7:
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  v23 = *(v0 + 248);
  v24 = *(v0 + 216);
  *&v30 = *(v0 + 296);
  *(&v30 + 1) = v19;
  v31 = v9;
  v32 = v10;

  _IntentValueConversionContext.init(origin:dispatcher:)(&v30, v23, &off_2835191E0, v0 + 128);
  v25 = *(*(v22 + 80) + 16);
  *(v0 + 200) = &type metadata for _IntentValueConversionContext;
  *(v0 + 208) = &protocol witness table for _IntentValueConversionContext;
  OUTLINED_FUNCTION_49();
  v26 = swift_allocObject();
  *(v0 + 176) = v26;
  sub_2219EB180(v0 + 128, v26 + 16);
  v27 = OUTLINED_FUNCTION_103_2();
  sub_221B8BC18(v27, v25, v21, v28);

  sub_22199C274(v0 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  OUTLINED_FUNCTION_4_3();
LABEL_8:

  return v3();
}

uint64_t sub_221B5152C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 328);
  v2 = *(v0 + 288);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B51588()
{
  OUTLINED_FUNCTION_1_5();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v5 = sub_221BCCD88();
  v1[35] = v5;
  OUTLINED_FUNCTION_18_4(v5);
  v1[36] = v6;
  v8 = *(v7 + 64);
  v1[37] = OUTLINED_FUNCTION_210();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  v1[38] = OUTLINED_FUNCTION_372();
  v1[39] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  v1[40] = OUTLINED_FUNCTION_372();
  v1[41] = swift_task_alloc();
  v15 = sub_221BCC418();
  v1[42] = v15;
  OUTLINED_FUNCTION_18_4(v15);
  v1[43] = v16;
  v1[44] = *(v17 + 64);
  v1[45] = OUTLINED_FUNCTION_210();
  v18 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_221B516F4()
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v1 = __swift_project_value_buffer(v0[35], qword_27CFDEE88);
  v0[46] = v1;
  if (qword_27CFB72D0 != -1)
  {
    v1 = swift_once();
  }

  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[34];
  v28 = v0[33];
  v29 = v0[41];
  v7 = v0[31];
  v27 = v0[32];
  v30 = v0[39];
  OUTLINED_FUNCTION_194_0(v1, &qword_27CFDEA30);
  v0[47] = v6[12];
  v0[48] = v6[13];
  v0[49] = v6[4];
  v0[50] = v6[5];
  v8 = OUTLINED_FUNCTION_308_0(v4);
  v9(v8, v7, v5);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[51] = v13;
  (*(v4 + 32))(v13 + v10, v2, v5);
  *(v13 + v11) = v27;
  *(v13 + v12) = v28;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_21_6(v29, v14, v15, v16);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = swift_task_alloc();
  v0[52] = v21;
  v21[2] = v28;
  v21[3] = v6;
  v21[4] = v7;
  v21[5] = v27;

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_221B518E0()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[48];
  v4 = v0[46];
  v36 = v0[49];
  v37 = v0[47];
  v6 = v0[40];
  v5 = v0[41];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[37];
  v10 = v0[35];
  v11 = OUTLINED_FUNCTION_308_0(v0[36]);
  v12(v11);
  sub_221B62018((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  v13 = OUTLINED_FUNCTION_3_4();
  sub_221B62018(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_312_0();
  sub_221B62018(v17, v18, v19, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9268, &qword_221BD7FC8);
  OUTLINED_FUNCTION_174_2(v21);
  swift_allocObject();
  OUTLINED_FUNCTION_55_1();

  v0[53] = sub_2219CBEFC(v37, v3, v0 + 2, v9, sub_221B6226C, v1, 0, 0, 0, 0, v0 + 19);
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93();
  }

  v22 = v0[52];
  v0[27] = v21;
  v0[28] = &off_28351D968;
  v23 = OUTLINED_FUNCTION_305_0();
  v0[54] = v23;
  OUTLINED_FUNCTION_395_0(v23);
  v24 = *(MEMORY[0x277D85A70] + 4);

  v25 = swift_task_alloc();
  v0[55] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
  OUTLINED_FUNCTION_234_2();
  *v25 = v26;
  v25[1] = sub_221B51B58;
  OUTLINED_FUNCTION_35_9();

  return MEMORY[0x282200908](v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_221B51B58()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *(v5 + 432);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 448) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B51C8C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_433();

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  sub_2219EC58C(v1 + 112, qword_27CFB7A80);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B51D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_401();
  v11 = v10[29];
  v12 = v10[30];

  v13 = v10[1];
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_152();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_221B51DDC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_433();

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v0, &qword_27CFB7F60);
  OUTLINED_FUNCTION_338_0(v1 + 112);
  OUTLINED_FUNCTION_338_0(v1 + 192);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B51E9C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_401();

  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 448);
  OUTLINED_FUNCTION_253();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_221B51F28()
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BF0D00);
  sub_221BCC418();
  sub_221B62E9C(&qword_27CFB9278, MEMORY[0x277CC9260]);
  v0 = sub_221BCE168();
  MEMORY[0x223DA31F0](v0);

  MEMORY[0x223DA31F0](0x74657366666F202CLL, 0xEA0000000000203ALL);
  v1 = sub_221BCE168();
  MEMORY[0x223DA31F0](v1);

  MEMORY[0x223DA31F0](0x3A746E756F63202CLL, 0xE900000000000020);
  v2 = sub_221BCE168();
  MEMORY[0x223DA31F0](v2);

  MEMORY[0x223DA31F0](0x20726F662029, 0xE600000000000000);
  v3 = UserInternal.description.getter();
  MEMORY[0x223DA31F0](v3);

  return 0;
}

uint64_t sub_221B520E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_221BCC418();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B521B4, 0, 0);
}

uint64_t sub_221B521B4()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_57_2();
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[3];
  v21 = v0[4];
  v22 = v0[7];
  (*(v2 + 16))(v0[11], v0[6], v0[8]);
  v4 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_allocObject();
  v0[12] = v6;
  v7 = *(v2 + 32);
  OUTLINED_FUNCTION_207_4();
  v8();
  *(v6 + v4) = v22;
  *(v6 + v5) = v21;
  *(v6 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[13] = v9;
  *v9 = v10;
  v9[1] = sub_221B52308;
  v11 = v0[5];
  v12 = v0[2];
  v13 = v0[3];
  OUTLINED_FUNCTION_243_2();
  OUTLINED_FUNCTION_75_4();

  return sub_221B3BB54(v14, v15, v16, v17, v18);
}

uint64_t sub_221B52308()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 96);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B52408()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[11];
  v2 = v0[3];
  sub_221B53130(v0[4]);

  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_221B5246C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[3];
  v4 = v0[4];

  sub_221B53130(v4);

  OUTLINED_FUNCTION_25();
  v6 = v0[14];

  return v5();
}

uint64_t sub_221B524E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
  v6[8] = File;
  v8 = *(*(File - 8) + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B52580, 0, 0);
}

uint64_t sub_221B52580()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = sub_221BCC418();
  OUTLINED_FUNCTION_0_29(v7);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_70();
  v11(v10);
  v13 = *(v3 + qword_27CFDED20);
  v12 = *(v3 + qword_27CFDED20 + 8);
  v14 = *(v3 + qword_27CFDED20 + 16);
  v15 = *(v3 + qword_27CFDED20 + 17);
  *(v1 + v2[5]) = v6;
  *(v1 + v2[6]) = v4;
  v16 = v1 + v2[7];
  *v16 = v13;
  *(v16 + 8) = v12;
  *(v16 + 16) = v14;
  *(v16 + 17) = v15;

  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_221B52698;
  v18 = v0[3];
  OUTLINED_FUNCTION_236_1(v0[9]);
  OUTLINED_FUNCTION_125_1();

  return sub_221A4ACCC();
}

uint64_t sub_221B52698()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  v9 = v6[10];
  *v8 = *v1;
  v7[11] = v0;

  v10 = v6[9];
  if (!v0)
  {
    v7[12] = v3;
    v7[13] = v5;
  }

  sub_221B62E44(v10, type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_125_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B527F4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[4].i64[1];
  *v0[1].i64[0] = vextq_s8(v0[6], v0[6], 8uLL);

  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B5285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 96) = a8;
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  return MEMORY[0x2822009F8](sub_221B52884, 0, 0);
}

uint64_t sub_221B52884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_237();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_104();
  a18 = v20;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v24 = *(v20 + 48);
  v25 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v25, qword_27CFDEE88);
  v26 = v24;
  v27 = sub_221BCCD68();
  sub_221BCDA98();

  if (OUTLINED_FUNCTION_104_0())
  {
    v28 = *(v20 + 48);
    OUTLINED_FUNCTION_20_6();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_6();
    a10 = swift_slowAlloc();
    *v26 = 136315394;
    v29 = static Instrumentation.currentActivityId.getter();
    sub_2219A6360(v29, v30, &a10);
    OUTLINED_FUNCTION_277();

    *(v26 + 1) = v21;
    *(v26 + 6) = 2080;
    v31 = v28;
    v32 = [v31 description];
    sub_221BCD388();
    OUTLINED_FUNCTION_441();

    v33 = OUTLINED_FUNCTION_3_4();
    sub_2219A6360(v33, v34, v35);
    OUTLINED_FUNCTION_442();
    *(v26 + 14) = v31;
    OUTLINED_FUNCTION_242_3();
    _os_log_impl(v36, v37, v38, v39, v40, 0x16u);
    OUTLINED_FUNCTION_443();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v41 = *(v20 + 96);
  v43 = *(v20 + 64);
  v42 = *(v20 + 72);
  v44 = *(v20 + 48);
  objc_opt_self();
  OUTLINED_FUNCTION_66_2();

  v45 = [v26 sharedInstance];
  v46 = [v45 optInApple];

  *(v20 + 16) = v43;
  *(v20 + 24) = v42;
  *(v20 + 32) = v46;
  *(v20 + 33) = v41 & 1;
  *(v20 + 40) = v44;
  v47 = v44;
  v48 = swift_task_alloc();
  *(v20 + 80) = v48;
  *v48 = v20;
  v48[1] = sub_221B52AC4;
  v49 = *(v20 + 56);
  OUTLINED_FUNCTION_238();

  return sub_221A4E068();
}

uint64_t sub_221B52AC4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *(v2 + 80);
  *v4 = *v1;
  *(v3 + 88) = v0;

  v6 = *(v2 + 24);

  if (v0)
  {
    OUTLINED_FUNCTION_99();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_166();

    return v10();
  }
}

double sub_221B52C20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F98, &qword_221BD2828);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_221BD6DE0;
  *(v0 + 56) = &type metadata for Entitlement.IsTrue;
  *(v0 + 64) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 32) = 0xD00000000000002CLL;
  *(v0 + 40) = 0x8000000221BEBFE0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_221BCF7F0;
  *(v1 + 56) = &type metadata for Entitlement.IsTrue;
  *(v1 + 64) = &protocol witness table for Entitlement.IsTrue;
  *(v1 + 32) = 0xD000000000000023;
  *(v1 + 40) = 0x8000000221BEC2F0;
  *(v1 + 96) = &type metadata for Entitlement.IsTrue;
  *(v1 + 104) = &protocol witness table for Entitlement.IsTrue;
  *(v1 + 72) = 0xD000000000000029;
  *(v1 + 80) = 0x8000000221BEC320;
  *(v0 + 96) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 104) = &protocol witness table for Entitlement.PlatformFilter;
  v2 = sub_221BC2240(&unk_283511F38);
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = 0;
  v3[4] = v1;
  *(v0 + 72) = sub_2219EB270;
  *(v0 + 80) = v3;
  *(v0 + 136) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 144) = &protocol witness table for Entitlement.PlatformFilter;
  v4 = sub_221BC2240(&unk_283511F90);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  result = 0.0;
  *(v5 + 24) = xmmword_221BD26B0;
  *(v5 + 40) = 0x8000000221BEC2B0;
  *(v5 + 48) = &unk_283511F60;
  *(v0 + 112) = sub_2219EB27C;
  *(v0 + 120) = v5;
  qword_27CFBBA28 = v0;
  return result;
}

uint64_t sub_221B52DCC()
{
  v0 = sub_221BCCD88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Entitlement.Validator();
  __swift_allocate_value_buffer(v5, qword_27CFBBA30);
  v6 = __swift_project_value_buffer(v5, qword_27CFBBA30);
  if (qword_27CFB73C0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_27CFDEE88);
  (*(v1 + 16))(v4, v7, v0);
  if (qword_27CFB7260 != -1)
  {
    swift_once();
  }

  v8 = qword_27CFBBA28;
  (*(v1 + 32))(v6, v4, v0);
  *(v6 + *(v5 + 20)) = MEMORY[0x277D84F90];
  *(v6 + *(v5 + 24)) = v8;
}

uint64_t sub_221B52F74(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221B3100C(a1);
  }

  return result;
}

uint64_t sub_221B52FD4()
{
  v1 = sub_221BCCE88();
  v2 = v0;
  if (v0)
  {
    v3 = v0;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  if (v2)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0x656369766544;
  }

  sub_221A0E704();
  v5 = swift_allocError();
  *v6 = v4;
  *(v6 + 8) = v3;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;

  sub_221B31344(v5);
}

uint64_t sub_221B530C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_237_2();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_221B53130(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 0x7A69536B6E756863;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 48) = a1;
  sub_221BCD2C8();
  sub_221B25E10();
}

uint64_t sub_221B531DC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_221BCD2C8();
  sub_221B25E10();
}

uint64_t sub_221B5329C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v9 = sub_221B70A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  v11 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_221BCF7F0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = v11;
  *(inited + 80) = 0x6F43746C75736572;
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 88) = 0xEB00000000746E75;
  *(inited + 96) = a6;
  v12 = sub_221BCD2C8();
  sub_221BB5788(v12, v9);
  sub_221B25E10();
}

BOOL sub_221B533A0()
{
  os_unfair_lock_lock(v0 + 4);
  sub_221B62018(&v0[8], v3, &qword_27CFBBB30, &qword_221BE5708);
  v1 = v3[264] != 255;
  sub_2219EC58C(v3, &qword_27CFBBB30);
  os_unfair_lock_unlock(v0 + 4);
  return v1;
}

BOOL sub_221B53420()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 56) != 255;
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

BOOL sub_221B5345C()
{
  OUTLINED_FUNCTION_130_4();
  os_unfair_lock_lock(v1 + 4);
  sub_221B62018(&v1[8], v5, v2, v0);
  v3 = v5[40] != 255;
  sub_2219EC58C(v5, v2);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_221B534D0(uint64_t a1)
{
  sub_221B62018(a1, v2, &qword_27CFB8048, &qword_221BE5700);
  v2[264] = 0;
  sub_221B53670(v2);
  return sub_2219EC58C(v2, &qword_27CFB8090);
}

uint64_t sub_221B53540(uint64_t a1)
{
  sub_2219A1B08(a1, v2);
  v2[40] = 0;
  sub_221B53834(v2, sub_221B53CE0);
  return sub_2219EC58C(v2, &qword_27CFBBB00);
}

uint64_t sub_221B535D8(uint64_t a1)
{
  sub_2219A1B08(a1, v2);
  v2[40] = 0;
  sub_221B53834(v2, sub_221B53E14);
  return sub_2219EC58C(v2, &qword_27CFB8000);
}

void sub_221B53670(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  sub_221B53AA4((v1 + 24), a1);
  os_unfair_lock_unlock((v1 + 16));
  if (!v2)
  {
    MEMORY[0x28223BE20](v4);
    sub_221B25998();
  }
}

void sub_221B53738(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = a4 & 1;
  os_unfair_lock_lock((v4 + 16));
  sub_221B53BE0((v4 + 24), a1, a2, a3, v9);
  os_unfair_lock_unlock((v4 + 16));
  if (!v5)
  {
    MEMORY[0x28223BE20](v10);
    sub_221B25998();
  }
}

void sub_221B53834(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t))
{
  os_unfair_lock_lock(v2 + 4);
  a2(v2 + 6, a1);
  os_unfair_lock_unlock(v2 + 4);
  if (!v3)
  {
    MEMORY[0x28223BE20](v6);
    sub_221B25998();
  }
}

uint64_t sub_221B53908(void *a1)
{
  v3[0] = a1;
  v4 = 1;
  v1 = a1;
  sub_221B53670(v3);
  return sub_2219EC58C(v3, &qword_27CFB8090);
}

uint64_t sub_221B5396C(void *a1)
{
  v3[0] = a1;
  v4 = 1;
  v1 = a1;
  sub_221B53834(v3, sub_221B53CE0);
  return sub_2219EC58C(v3, &qword_27CFBBB00);
}

uint64_t sub_221B53A08(void *a1)
{
  v3[0] = a1;
  v4 = 1;
  v1 = a1;
  sub_221B53834(v3, sub_221B53E14);
  return sub_2219EC58C(v3, &qword_27CFB8000);
}

uint64_t sub_221B53AA4(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), v6, &qword_27CFBBB30, &qword_221BE5708);
  v4 = v6[264];
  sub_2219EC58C(v6, &qword_27CFBBB30);
  if (v4 == 255)
  {
    sub_2219EC58C((a1 + 1), &qword_27CFBBB30);
    sub_221B62018(a2, (a1 + 1), &qword_27CFB8090, &unk_221BD2960);
    result = *a1;
    *a1 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB38, &qword_221BE5710);
    sub_221B61E70(&qword_27CFBBB40, &qword_27CFBBB38);
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221B53BE0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 32) == 255)
  {
    sub_221B59788(a1[1], a1[2], a1[3], 255);
    a1[2] = a3;
    a1[3] = a4;
    v11 = a5 & 1;
    *(a1 + 32) = a5 & 1;
    v5 = *a1;
    *a1 = MEMORY[0x277D84F90];
    a1[1] = a2;
    sub_2219EBD1C(a2, a3, a4, v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAB0, &unk_221BE5500);
    sub_221B61E70(&qword_27CFBBAB8, &qword_27CFBBAB0);
    swift_allocError();
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_221B53CE0(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), v6, &qword_27CFBBB08, &qword_221BE56B0);
  v4 = v6[40];
  sub_2219EC58C(v6, &qword_27CFBBB08);
  if (v4 == 255)
  {
    sub_2219EC58C((a1 + 1), &qword_27CFBBB08);
    sub_221B62018(a2, (a1 + 1), &qword_27CFBBB00, &unk_221BE56A0);
    result = *a1;
    *a1 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB10, &qword_221BE56B8);
    sub_221B61E70(&qword_27CFBBB18, &qword_27CFBBB10);
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221B53E14(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), v6, &qword_27CFBBA78, &qword_221BE54C0);
  v4 = v6[40];
  sub_2219EC58C(v6, &qword_27CFBBA78);
  if (v4 == 255)
  {
    sub_2219EC58C((a1 + 1), &qword_27CFBBA78);
    sub_221B62018(a2, (a1 + 1), &qword_27CFB8000, &unk_221BD28B0);
    result = *a1;
    *a1 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA80, &qword_221BE54C8);
    sub_221B61E70(&qword_27CFBBA88, &qword_27CFBBA80);
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221B53F48(uint64_t a1, uint64_t a2)
{
  sub_221B62018(a2, __src, &qword_27CFB8090, &unk_221BD2960);
  if (v5)
  {
    __dst[0] = __src[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
    return sub_221BCD788();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
    return sub_221BCD798();
  }
}

uint64_t sub_221B54004(int a1, id a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
    return sub_221BCD788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
    return sub_221BCD798();
  }
}

uint64_t sub_221B540A4(uint64_t a1, uint64_t a2)
{
  sub_221B62018(a2, v4, &qword_27CFBBB00, &unk_221BE56A0);
  if (v5)
  {
    v3[0] = *&v4[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F0, &qword_221BD0E10);
    return sub_221BCD788();
  }

  else
  {
    sub_22198B358(v4, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F0, &qword_221BD0E10);
    return sub_221BCD798();
  }
}

uint64_t sub_221B54154(uint64_t a1, uint64_t a2)
{
  sub_221B62018(a2, v4, &qword_27CFB8000, &unk_221BD28B0);
  if (v5)
  {
    v3[0] = *&v4[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E8, &unk_221BD19A0);
    return sub_221BCD788();
  }

  else
  {
    sub_22198B358(v4, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E8, &unk_221BD19A0);
    return sub_221BCD798();
  }
}

uint64_t sub_221B54204(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B54218()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_414(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  OUTLINED_FUNCTION_335_0();
  *v0 = v4;
  v0[1] = sub_221B542C8;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_92_5();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_221B542C8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_221B543DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B543FC, 0, 0);
}

uint64_t sub_221B543FC()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[4] = v2;
  *v2 = v3;
  v2[1] = sub_221B544B8;
  v4 = v0[2];
  v5 = v0[3];
  OUTLINED_FUNCTION_65_7();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_221B544B8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_221B545CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B545E0()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_414(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBCA0, &qword_221BE5E08);
  OUTLINED_FUNCTION_335_0();
  *v0 = v4;
  v0[1] = sub_221B542C8;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_92_5();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_221B54690(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B546A4()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_414(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FB8, &qword_221BD2870);
  OUTLINED_FUNCTION_335_0();
  *v0 = v4;
  v0[1] = sub_221B542C8;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_92_5();

  return MEMORY[0x2822008A0]();
}

void sub_221B54754(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 16));
  sub_221B54864((a2 + 24), a1);
  os_unfair_lock_unlock((a2 + 16));
}

void sub_221B547AC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 16));
  sub_221B549BC((a2 + 24), a1);
  os_unfair_lock_unlock((a2 + 16));
}

void sub_221B54804(uint64_t a1, os_unfair_lock_s *a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t *))
{
  os_unfair_lock_lock(a2 + 4);
  a3(a2 + 6, a1, &v6);
  os_unfair_lock_unlock(a2 + 4);
}

uint64_t sub_221B54864(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), v8, &qword_27CFBBB30, &qword_221BE5708);
  if (v8[264] == 255)
  {
    sub_2219EC58C(v8, &qword_27CFBBB30);
    sub_221B58CC4(sub_2219B4364);
    v5 = *(*a1 + 16);
    sub_221B58D50(v5, sub_2219B4364);
    v6 = *a1;
    *(*a1 + 16) = v5 + 1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
    result = (*(*(v7 - 8) + 16))(v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v5, a2, v7);
    *a1 = v6;
  }

  else
  {
    memcpy(__dst, v8, 0x109uLL);
    sub_221B2BDE0(__dst);
    return sub_2219EC58C(__dst, &qword_27CFB8090);
  }

  return result;
}

void sub_221B549BC(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4 == 255)
  {
    sub_221B58CC4(sub_2219B43A0);
    v8 = *(*a1 + 16);
    sub_221B58D50(v8, sub_2219B43A0);
    v9 = *a1;
    *(*a1 + 16) = v8 + 1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
    (*(*(v10 - 8) + 16))(v9 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v8, a2, v10);
    *a1 = v9;
  }

  else
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = a1[1];
    sub_2219EBD1C(v7, v6, v5, v4 & 1);
    sub_221B2BE80(v7, v6, v5, v4 & 1);
    sub_221B59788(v7, v6, v5, v4);
  }
}

uint64_t sub_221B54AF4(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), &v8, &qword_27CFBBB08, &qword_221BE56B0);
  if (v9[24] == 255)
  {
    sub_2219EC58C(&v8, &qword_27CFBBB08);
    sub_221B58CC4(sub_2219B43DC);
    v5 = *(*a1 + 16);
    sub_221B58D50(v5, sub_2219B43DC);
    v6 = *a1;
    *(*a1 + 16) = v5 + 1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F0, &qword_221BD0E10);
    result = (*(*(v7 - 8) + 16))(v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v5, a2, v7);
    *a1 = v6;
  }

  else
  {
    v10 = v8;
    v11[0] = *v9;
    *(v11 + 9) = *&v9[9];
    sub_221B2BF10(&v10);
    return sub_2219EC58C(&v10, &qword_27CFBBB00);
  }

  return result;
}

uint64_t sub_221B54C4C(uint64_t *a1, uint64_t a2)
{
  sub_221B62018((a1 + 1), &v8, &qword_27CFBBA78, &qword_221BE54C0);
  if (v9[24] == 255)
  {
    sub_2219EC58C(&v8, &qword_27CFBBA78);
    sub_221B58CC4(sub_2219B4418);
    v5 = *(*a1 + 16);
    sub_221B58D50(v5, sub_2219B4418);
    v6 = *a1;
    *(*a1 + 16) = v5 + 1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E8, &unk_221BD19A0);
    result = (*(*(v7 - 8) + 16))(v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v5, a2, v7);
    *a1 = v6;
  }

  else
  {
    v10 = v8;
    v11[0] = *v9;
    *(v11 + 9) = *&v9[9];
    sub_221B2BFA4(&v10);
    return sub_2219EC58C(&v10, &qword_27CFB8000);
  }

  return result;
}

uint64_t sub_221B54DA4(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 20) = 0;
  v3 = *(*v1 + 96);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC08, &qword_221BE5CD8);
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_221B54E34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = v1;

  sub_2219F7E3C();
}

uint64_t sub_221B54F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a5;
  v7 = *(MEMORY[0x277D857D0] + 4);
  v8 = swift_task_alloc();
  *(v5 + 40) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  *v8 = v5;
  v8[1] = sub_221B54FF4;
  v10 = MEMORY[0x277D84950];
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v5 + 16, a4, v11, v9, v10);
}

uint64_t sub_221B54FF4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B550D8()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  sub_221B55290(sub_221B619A4);

  sub_2219EBE10(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B55178(uint64_t a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC08, &qword_221BE5CD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v13 - v10;
  (*(v7 + 16))(&v13 - v10, a1 + *(*a1 + 96), v6, v9);
  sub_221B2BCF4(a2, a3 & 1);
  return (*(v7 + 8))(v11, v6);
}

void sub_221B55290(void (*a1)(void))
{
  os_unfair_lock_lock((v1 + 16));
  if (*(v1 + 20))
  {

    os_unfair_lock_unlock((v1 + 16));
  }

  else
  {
    *(v1 + 20) = 1;
    os_unfair_lock_unlock((v1 + 16));
    a1();
  }
}

uint64_t sub_221B5530C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;

  sub_2219F8C64();
  sub_221B54E34(v10);
}

uint64_t sub_221B5540C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2219EC5F0;

  return v9(a1);
}

uint64_t sub_221B55504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = a7;
  v8[39] = a8;
  v8[36] = a5;
  v8[37] = a6;
  v8[35] = a4;
  return MEMORY[0x2822009F8](sub_221B5552C, 0, 0);
}

uint64_t sub_221B5552C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 280);
  if (v1 != 1)
  {
    v2 = *(v0 + 288);
    sub_221B56240(v1);
  }

  OUTLINED_FUNCTION_27_11(*(v0 + 296));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 320) = v5;
  *v5 = v6;
  v5[1] = sub_221B555F8;
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = OUTLINED_FUNCTION_244_3();

  return v10(v9);
}

uint64_t sub_221B555F8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 328) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B556F0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 328);
  sub_221BCD8B8();
  if (v1)
  {
    sub_2219EC58C(v0 + 16, &qword_27CFB8048);
    v3 = *(v0 + 288);
    v4 = OUTLINED_FUNCTION_270_1();
    sub_221B565A0(v4);
  }

  else
  {
    v2 = *(v0 + 288);
    sub_221B56344(v0 + 16);
    sub_2219EC58C(v0 + 16, &qword_27CFB8048);
  }

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_221B557C4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 328);
  v3 = *(v1 + 288);
  v4 = OUTLINED_FUNCTION_270_1();
  sub_221B565A0(v4);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_221B55840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](sub_221B55868, 0, 0);
}

uint64_t sub_221B55868()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 40);
  if (v1 != 1)
  {
    v2 = *(v0 + 48);
    sub_221B56240(v1);
  }

  OUTLINED_FUNCTION_27_11(*(v0 + 56));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v5;
  *v5 = v6;
  v5[1] = sub_221B55934;
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = OUTLINED_FUNCTION_244_3();

  return v10(v9);
}

uint64_t sub_221B55934()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B55A2C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 88);
  sub_221BCD8B8();
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);

    v7 = *(v0 + 48);
    v8 = OUTLINED_FUNCTION_270_1();
    sub_221B56658(v8);
  }

  else
  {
    v4 = *(v0 + 48);
    sub_221B563F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_25();

  return v9();
}

uint64_t sub_221B55AF4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 88);
  v3 = *(v1 + 48);
  v4 = OUTLINED_FUNCTION_270_1();
  sub_221B56658(v4);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_221B55B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return MEMORY[0x2822009F8](sub_221B55B98, 0, 0);
}

uint64_t sub_221B55B98()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 56);
  if (v1 != 1)
  {
    v2 = *(v0 + 64);
    sub_221B56240(v1);
  }

  OUTLINED_FUNCTION_27_11(*(v0 + 72));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 96) = v5;
  *v5 = v6;
  v5[1] = sub_221B55C64;
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = OUTLINED_FUNCTION_244_3();

  return v10(v9);
}

uint64_t sub_221B55C64()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B55D5C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[13];
  sub_221BCD8B8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v3 = v0[8];
    OUTLINED_FUNCTION_107_6();
    v4 = OUTLINED_FUNCTION_270_1();
    sub_221B5672C(v4, v5, v6, v7);
  }

  else
  {
    v2 = v0[8];
    sub_221B564E0((v0 + 2), &qword_27CFBBB08, &qword_221BE56B0, sub_221B53540);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_221B55E48()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_107_6();
  v4 = OUTLINED_FUNCTION_270_1();
  sub_221B5672C(v4, v5, v6, v7);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_221B55ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return MEMORY[0x2822009F8](sub_221B55F00, 0, 0);
}

uint64_t sub_221B55F00()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 56);
  if (v1 != 1)
  {
    v2 = *(v0 + 64);
    sub_221B56240(v1);
  }

  OUTLINED_FUNCTION_27_11(*(v0 + 72));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 96) = v5;
  *v5 = v6;
  v5[1] = sub_221B55FCC;
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = OUTLINED_FUNCTION_244_3();

  return v10(v9);
}

uint64_t sub_221B55FCC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B560C4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[13];
  sub_221BCD8B8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v3 = v0[8];
    OUTLINED_FUNCTION_106_4();
    v4 = OUTLINED_FUNCTION_270_1();
    sub_221B5672C(v4, v5, v6, v7);
  }

  else
  {
    v2 = v0[8];
    sub_221B564E0((v0 + 2), &qword_27CFBBA78, &qword_221BE54C0, sub_221B535D8);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_221B561B0()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_106_4();
  v4 = OUTLINED_FUNCTION_270_1();
  sub_221B5672C(v4, v5, v6, v7);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_25();

  return v8();
}

uint64_t sub_221B56240(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA68, &qword_221BE54B0);
  OUTLINED_FUNCTION_0_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  OUTLINED_FUNCTION_1_6();
  v11 = *(v10 + 104);
  v14[1] = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
  sub_221BCD8F8();
  return (*(v4 + 8))(v9, v2);
}

uint64_t sub_221B56344(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 112));
  result = sub_221B533A0();
  if ((result & 1) == 0)
  {
    v5 = *(*v1 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();
    return sub_221B534D0(a1);
  }

  return result;
}

uint64_t sub_221B563F4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + *(*v3 + 112));
  result = sub_221B53420();
  if ((result & 1) == 0)
  {
    v9 = *(*v3 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();

    sub_221B53738(a1, a2, a3, 0);
  }

  return result;
}

uint64_t sub_221B564E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_1_6();
  v8 = *(v4 + *(v7 + 112));
  OUTLINED_FUNCTION_234(v9, v10);
  result = sub_221B5345C();
  if ((result & 1) == 0)
  {
    v12 = *(*v4 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();
    return a4(a1);
  }

  return result;
}

uint64_t sub_221B565A0(void *a1)
{
  v3 = *(v1 + *(*v1 + 112));
  result = sub_221B533A0();
  if ((result & 1) == 0)
  {
    v5 = *(*v1 + 104);
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();
    return sub_221B53908(a1);
  }

  return result;
}

void sub_221B56658(void *a1)
{
  v3 = *(v1 + *(*v1 + 112));
  if (!sub_221B53420())
  {
    v4 = *(*v1 + 104);
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();
    v6 = a1;
    sub_221B53738(a1, 0, 0, 1);
  }
}

uint64_t sub_221B5672C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  OUTLINED_FUNCTION_1_6();
  v8 = *(v4 + *(v7 + 112));
  OUTLINED_FUNCTION_234(v9, v10);
  result = sub_221B5345C();
  if ((result & 1) == 0)
  {
    v12 = *(*v4 + 104);
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
    sub_221BCD908();
    return a4(a1);
  }

  return result;
}

void sub_221B5680C()
{
  OUTLINED_FUNCTION_130_4();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    sub_221BCD7B8();
    OUTLINED_FUNCTION_76_4();
    sub_221B62E9C(v5, v6);
    OUTLINED_FUNCTION_15_0();
    v4 = swift_allocError();
    sub_221BCD268();
  }

  v7 = v2;
  v0(v4);
  v8 = (v1 + *(*v1 + 128));
  os_unfair_lock_lock(v8);
  sub_221BA977C(&v8[2], v4);
  os_unfair_lock_unlock(v8);
}

void sub_221B56950(id a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    sub_221BCD7B8();
    OUTLINED_FUNCTION_76_4();
    sub_221B62E9C(v10, v11);
    OUTLINED_FUNCTION_15_0();
    v9 = swift_allocError();
    sub_221BCD268();
  }

  v12 = a1;
  sub_221B5672C(v9, a2, a3, a4);
  v13 = (v4 + *(*v4 + 128));
  os_unfair_lock_lock(v13);
  sub_221BA977C(&v13[2], v9);
  os_unfair_lock_unlock(v13);
}

void sub_221B56A60(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  if (*(a1 + 16))
  {
    sub_221BCE058();
    __break(1u);
  }

  else
  {
    *(a1 + 16) = 1;

    os_unfair_lock_unlock((a1 + 24));
  }
}

void sub_221B56B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_6();
  v9 = v4 + *(v8 + 128);
  os_unfair_lock_lock(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_221B58CC4(sub_2219B429C);
  v11 = *(*(v9 + 8) + 16);
  sub_221B58D50(v11, sub_2219B429C);
  v12 = *(v9 + 8);
  *(v12 + 16) = v11 + 1;
  v13 = v12 + 16 * v11;
  *(v13 + 32) = a4;
  *(v13 + 40) = v10;

  os_unfair_lock_unlock(v9);
}

uint64_t sub_221B56BD8(uint64_t a1)
{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA90, &unk_221BE54D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v21 - v16;
  v18 = v1 + *(*v1 + 128);
  *v18 = 0;
  *(v18 + 8) = MEMORY[0x277D84F90];
  (*(v3 + 104))(v6, *MEMORY[0x277D858A0], v2, v15);
  sub_221BCD8C8();
  (*(v3 + 8))(v6, v2);
  (*(v13 + 32))(v1 + *(*v1 + 96), v17, v12);
  (*(v8 + 32))(v1 + *(*v1 + 104), v11, v7);
  *(v1 + *(*v1 + 120)) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB48, &qword_221BE5718);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = MEMORY[0x277D84F90];
  bzero((v19 + 32), 0x108uLL);
  *(v19 + 296) = -1;
  *(v1 + *(*v1 + 112)) = v19;
  return v1;
}

uint64_t sub_221B56F04(uint64_t a1)
{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA90, &unk_221BE54D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v21 - v16;
  v18 = v1 + *(*v1 + 128);
  *v18 = 0;
  *(v18 + 8) = MEMORY[0x277D84F90];
  (*(v3 + 104))(v6, *MEMORY[0x277D858A0], v2, v15);
  sub_221BCD8C8();
  (*(v3 + 8))(v6, v2);
  (*(v13 + 32))(v1 + *(*v1 + 96), v17, v12);
  (*(v8 + 32))(v1 + *(*v1 + 104), v11, v7);
  *(v1 + *(*v1 + 120)) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAC8, &qword_221BE5540);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = MEMORY[0x277D84F90];
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = 0;
  *(v19 + 56) = -1;
  *(v1 + *(*v1 + 112)) = v19;
  return v1;
}

void sub_221B57224()
{
  OUTLINED_FUNCTION_21();
  v41 = v2;
  v42 = v3;
  v40 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA90, &unk_221BE54D0);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA70, &qword_221BE54B8);
  OUTLINED_FUNCTION_0_2(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_156();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  OUTLINED_FUNCTION_0_2(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v24);
  v26 = &v39 - v25;
  OUTLINED_FUNCTION_1_6();
  v28 = v0 + *(v27 + 128);
  *v28 = 0;
  *(v28 + 8) = MEMORY[0x277D84F90];
  (*(v7 + 104))(v12, *MEMORY[0x277D858A0], v5);
  sub_221BCD8C8();
  v29 = *(v7 + 8);
  v30 = OUTLINED_FUNCTION_258_1();
  v31(v30);
  OUTLINED_FUNCTION_1_6();
  (*(v21 + 32))(v0 + *(v32 + 96), v26, v19);
  OUTLINED_FUNCTION_1_6();
  (*(v15 + 32))(v0 + *(v33 + 104), v1, v13);
  OUTLINED_FUNCTION_1_6();
  v35 = v41;
  *(v0 + *(v34 + 120)) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(v35, v42);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = MEMORY[0x277D84F90];
  *(v36 + 32) = 0u;
  *(v36 + 48) = 0u;
  *(v36 + 64) = 0;
  *(v36 + 72) = -1;
  OUTLINED_FUNCTION_1_6();
  *(v0 + *(v37 + 112)) = v38;
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221B57510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAA8, &qword_221BE54E8);
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B575E8, 0, 0);
}

uint64_t sub_221B575E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_398_0();
  OUTLINED_FUNCTION_268_1();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_437(v13);

  sub_221B56B00(sub_221B5D85C, v12, &unk_283519618, sub_221B62F40);

  sub_221B56A60(v11);
  OUTLINED_FUNCTION_37_2();
  v15 = *(v14 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  sub_221BCD838();
  v16 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v10 + 144) = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_190_3(v17);
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x2822005A8](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_221B57714()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B57810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v12 = *(v11 + 40);
  if (v12 == 1)
  {
    v13 = OUTLINED_FUNCTION_397_0();
    v14(v13);
    OUTLINED_FUNCTION_1_6();
    *(v11 + 152) = *(v10 + *(v15 + 112));
    v32 = OUTLINED_FUNCTION_109_4(dword_221BE54F0);

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v11 + 160) = v16;
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_346_0(v16);

    return (v32)(v18);
  }

  else
  {
    v20 = *(v11 + 64);
    sub_221B56240(*(v11 + 40));
    sub_221B59770(v12);
    v21 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v11 + 144) = v22;
    *v22 = v23;
    OUTLINED_FUNCTION_190_3();
    OUTLINED_FUNCTION_65_7();

    return MEMORY[0x2822005A8](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

uint64_t sub_221B57960()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[6];
  v2 = v0[17];

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B579D4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B57ACC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[7];

  v4(v0 + 2);
  v6 = v0[3];
  v7 = v0[4];

  OUTLINED_FUNCTION_4_3();

  return v8();
}

uint64_t sub_221B57B60()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[17];

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221B57BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAA8, &qword_221BE54E8);
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B57C9C, 0, 0);
}

uint64_t sub_221B57C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_398_0();
  OUTLINED_FUNCTION_268_1();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_437(v13);

  sub_221B56B00(sub_221B62EF4, v12, &unk_283519320, sub_221B597A0);

  sub_221B56A60(v11);
  OUTLINED_FUNCTION_37_2();
  v15 = *(v14 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  sub_221BCD838();
  v16 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v10 + 144) = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_191_4(v17);
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_152();

  return MEMORY[0x2822005A8](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_221B57DC8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B57EC4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v1 + 40);
  if (v2 == 1)
  {
    v3 = OUTLINED_FUNCTION_397_0();
    v4(v3);
    OUTLINED_FUNCTION_1_6();
    *(v1 + 152) = *(v0 + *(v5 + 112));
    v14 = OUTLINED_FUNCTION_109_4(dword_221BE54F0);

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v1 + 160) = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_346_0(v6);

    return (v14)(v8);
  }

  else
  {
    v10 = *(v1 + 64);
    sub_221B56240(*(v1 + 40));
    sub_221B59770(v2);
    v11 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v1 + 144) = v12;
    *v12 = v13;
    OUTLINED_FUNCTION_191_4();
    OUTLINED_FUNCTION_65_7();

    return MEMORY[0x2822005A8]();
  }
}

uint64_t sub_221B58014()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_221B5810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_221BCD878();
  }

  sub_221B5680C();
}

uint64_t sub_221B58174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC08, &qword_221BE5CD8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  (*(v15 + 16))(&v21 - v13, a1, v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC10, &qword_221BE5CE0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_221B54DA4(v14);
  sub_221B5530C(a2, a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  sub_221B5530C(&unk_221BE5CF0, v19);
}

uint64_t sub_221B582D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_221BCDFC8();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B58394, 0, 0);
}

uint64_t sub_221B58394()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[6];
  sub_221BCE258();
  OUTLINED_FUNCTION_58_4(&dword_221BE91A8);
  v7 = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_221B58440;
  v4 = v0[6];
  v5 = v0[3];
  OUTLINED_FUNCTION_236_1(v0[2]);
  OUTLINED_FUNCTION_237_2();

  return v7();
}

uint64_t sub_221B58440()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = v4[4];
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v11 + 64) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_4();
  v14(v13);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_221B58590()
{
  OUTLINED_FUNCTION_8_0();
  sub_221B61830();
  if (!sub_221BCE198())
  {
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
  }

  swift_willThrow();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221B5862C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B58688(uint64_t *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_221B58CC4(sub_2219B41D4);
  v2 = *(*a1 + 16);
  sub_221B58D50(v2, sub_2219B41D4);
  v3 = *a1;
  *(v3 + 16) = v2 + 1;
  result = sub_221B61EB0(v5, v3 + 8 * v2 + 32, &qword_27CFB78D8, &unk_221BE94B0);
  *a1 = v3;
  return result;
}

uint64_t sub_221B58734(void (*a1)(uint64_t))
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v3 + 32;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v7)
    {

      swift_beginAccess();
      v11 = *(v2 + 16);
      *(v2 + 16) = v8;

      a1(v2 + 16);
      return swift_endAccess();
    }

    if (v7 >= *(v3 + 16))
    {
      break;
    }

    sub_221B62018(v5, v14, &qword_27CFB78D8, &unk_221BE94B0);
    swift_unknownObjectWeakLoadStrong();
    type metadata accessor for RemoteAppIntentsDispatcherFacade();
    if (swift_dynamicCastClass())
    {

      sub_221B61EB0(v14, v13, &qword_27CFB78D8, &unk_221BE94B0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2219A35EC(0, *(v8 + 16) + 1, 1);
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2219A35EC((v9 > 1), v10 + 1, 1);
      }

      *(v8 + 16) = v10 + 1;
      result = sub_221B61EB0(v13, v8 + 8 * v10 + 32, &qword_27CFB78D8, &unk_221BE94B0);
    }

    else
    {
      swift_unknownObjectRelease();
      result = sub_2219EC58C(v14, &qword_27CFB78D8);
    }

    v5 += 8;
    ++v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_221B5899C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_167();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_50_2(v3);
  OUTLINED_FUNCTION_253();

  return sub_221B50C6C(v5, v6, v7, v8, v9);
}

uint64_t sub_221B58A38()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_130_4();
  v1 = v0[2];
  v2 = v0[14];
  v3 = v0[15];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2_15(v4);
  *v5 = v6;
  v5[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_125_1();

  return sub_221B50FFC(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_221B58AE0()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_59_8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v3[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_125_1();

  return sub_221B3CDD4(v5, v6, v7, v8, v9, v10);
}

id sub_221B58B8C(uint64_t a1, void *a2)
{
  sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  v4 = sub_221BCD658();

  v5 = [v2 initWithValues:v4 memberValueType:a2];

  return v5;
}

uint64_t sub_221B58C10()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_221B58CC4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_221B58D50(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_221B58DEC()
{
  OUTLINED_FUNCTION_271_1();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_167();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_14_16(v6);
  OUTLINED_FUNCTION_284_1();
  OUTLINED_FUNCTION_272_0();

  return sub_221B57BC4(v8, v9, v10, v11, v12, v13, v14, v15);
}

id sub_221B58E88(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_221B58E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_221B582D4(a1, a2, a3);
}

uint64_t sub_221B58F58(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return v9(a1, v5);
}

uint64_t sub_221B59064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2219EC5F0;

  return sub_221B2741C(a1, a2, a3, a4, v10);
}

uint64_t sub_221B5912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2219EC5F0;

  return sub_221B27AD8(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_221B591FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2219EC5F0;

  return sub_221B2C16C(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_221B592E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2219EC5F0;

  return sub_221B55504(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_221B593CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2219EC5F0;

  return sub_221B55840(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_221B594DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2219EC5F0;

  return sub_221B55B70(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_221B595C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2219EC5F0;

  return sub_221B55ED8(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_221B596AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_394_0();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_2_15(v12);
  *v13 = v14;
  v13[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_80_6();
  OUTLINED_FUNCTION_95_0();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

void sub_221B59770(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_221B59788(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_2219EBD6C(a1, a2, a3, a4 & 1);
  }
}

uint64_t sub_221B597A0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_221B597E8()
{
  OUTLINED_FUNCTION_104();
  v21 = *(v0 + 16);
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2_15(v8);
  *v9 = v10;
  v9[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_80_6();
  OUTLINED_FUNCTION_95_0();

  return sub_221B4C0E4(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_221B598C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_394_0();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_2_15(v12);
  *v13 = v14;
  v13[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_80_6();
  OUTLINED_FUNCTION_95_0();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_221B599A8()
{
  OUTLINED_FUNCTION_57_2();
  v1 = *(v0 + 24);
  v23 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v22 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_15(v9);
  *v10 = v11;
  v10[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_284_1();
  OUTLINED_FUNCTION_75_4();

  return sub_221B4CD5C(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_221B59AA0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_20(v1);

  return sub_2219EA388(v3, v4, v5, v6);
}

uint64_t sub_221B59B2C()
{
  OUTLINED_FUNCTION_57_2();
  v23 = *(v0 + 16);
  v21 = *(v0 + 32);
  v22 = *(v0 + 24);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2_15(v8);
  *v9 = v10;
  v9[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_284_1();
  OUTLINED_FUNCTION_75_4();

  return sub_221B4D12C(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_221B59C1C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_9_18(v1);
  OUTLINED_FUNCTION_267_1();
  OUTLINED_FUNCTION_253();

  return sub_221B3CB40(v3, v4, v5, v6, v7);
}

uint64_t sub_221B59CAC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_59_8();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v3[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_125_1();

  return sub_221B344EC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221B59D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2219EC5F0;

  return sub_221B274E8(a1, a2, a3, a4, v10);
}

uint64_t sub_221B59E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2219EC5F0;

  return sub_221B28424(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_221B59EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2219EC5F0;

  return sub_221B2C88C(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_221B59FDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v191 = a8;
  v193 = a6;
  v187 = a5;
  v196 = a3;
  v197 = a4;
  v195 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  v172 = *(v10 - 8);
  v11 = *(v172 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v173 = v12;
  v174 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v185 = (&v162 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  v170 = *(v15 - 8);
  v16 = *(v170 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v182 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = v17;
  MEMORY[0x28223BE20](v18);
  v184 = (&v162 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
  v168 = *(v20 - 8);
  v21 = *(v168 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v180 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v22;
  MEMORY[0x28223BE20](v23);
  v183 = (&v162 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
  v166 = *(v25 - 8);
  v26 = *(v166 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v178 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = v27;
  MEMORY[0x28223BE20](v28);
  v181 = (&v162 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  v164 = *(v30 - 8);
  v31 = *(v164 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v176 = &v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v32;
  MEMORY[0x28223BE20](v33);
  v179 = (&v162 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18);
  v162 = *(v35 - 8);
  v36 = *(v162 + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v175 = &v162 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v37;
  MEMORY[0x28223BE20](v38);
  v177 = (&v162 - v39);
  v199 = sub_221BCC558();
  v188 = *(v199 - 8);
  v40 = *(v188 + 64);
  MEMORY[0x28223BE20](v199);
  v186 = v41;
  v198 = &v162 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  v190 = *(v201 - 8);
  v189 = *(v190 + 64);
  MEMORY[0x28223BE20](v201);
  v200 = &v162 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v202 = &v162 - v45;
  v194 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v46 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v48 = (&v162 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_221BCCEE8();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v162 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8040, &qword_221BD2900);
  v205[4] = &off_28351D968;
  v205[0] = a7;
  v54 = *(a2 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);
  type metadata accessor for RemoteAppIntentsActor();
  sub_221B62E9C(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);

  v192 = a2;
  sub_221BCCFD8();
  v55 = sub_221BCCEB8();
  v57 = v56;
  (*(v50 + 8))(v53, v49);
  if (!v57)
  {

    v55 = 0;
    v57 = 0xE000000000000000;
  }

  sub_221A0150C(v195, v48);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      *&v204[0] = *v48;
      sub_221BCD788();
      return __swift_destroy_boxed_opaque_existential_0(v205);
    case 2u:

      v83 = v177;
      sub_221B61EB0(v48, v177, &qword_27CFB8348, &qword_221BD2E18);
      v84 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v202, 1, 1, v84);
      sub_221B62018(v83, v175, &qword_27CFB8348, &qword_221BD2E18);
      sub_2219A1B08(v205, v204);
      v85 = v190;
      (*(v190 + 16))(v200, v196, v201);
      v86 = v188;
      (*(v188 + 16))(v198, v187, v199);
      v87 = (*(v162 + 80) + 48) & ~*(v162 + 80);
      v88 = (v163 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v88 + 47) & 0xFFFFFFFFFFFFFFF8;
      v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
      v91 = (*(v85 + 80) + v90 + 8) & ~*(v85 + 80);
      v92 = (v189 + *(v86 + 80) + v91) & ~*(v86 + 80);
      v196 = (v186 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      *(v93 + 2) = 0;
      *(v93 + 3) = 0;
      *(v93 + 4) = v197;
      *(v93 + 5) = &off_2835191A8;
      sub_221B61EB0(v175, &v93[v87], &qword_27CFB8348, &qword_221BD2E18);
      sub_22198B358(v204, &v93[v88]);
      v94 = v191;
      *&v93[v89] = v192;
      *&v93[v90] = v94;
      (*(v85 + 32))(&v93[v91], v200, v201);
      (*(v86 + 32))(&v93[v92], v198, v199);
      v95 = v193;
      memcpy(&v93[v196], v193, 0xC4uLL);

      sub_2219EB864(v95, v204);

      sub_2219F8C64();

      v68 = v177;
      v69 = &qword_27CFB8348;
      goto LABEL_12;
    case 3u:

      v96 = v184;
      sub_221B61EB0(v48, v184, &unk_27CFB93F0, &unk_221BD2E00);
      v97 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v202, 1, 1, v97);
      sub_221B62018(v96, v182, &unk_27CFB93F0, &unk_221BD2E00);
      sub_2219A1B08(v205, v204);
      v98 = v190;
      (*(v190 + 16))(v200, v196, v201);
      v99 = v188;
      (*(v188 + 16))(v198, v187, v199);
      v100 = (*(v170 + 80) + 48) & ~*(v170 + 80);
      v101 = (v171 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
      v102 = (v101 + 47) & 0xFFFFFFFFFFFFFFF8;
      v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
      v104 = (*(v98 + 80) + v103 + 8) & ~*(v98 + 80);
      v105 = (v189 + *(v99 + 80) + v104) & ~*(v99 + 80);
      v196 = (v186 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v106 = swift_allocObject();
      *(v106 + 2) = 0;
      *(v106 + 3) = 0;
      *(v106 + 4) = v197;
      *(v106 + 5) = &off_2835191A8;
      sub_221B61EB0(v182, &v106[v100], &unk_27CFB93F0, &unk_221BD2E00);
      sub_22198B358(v204, &v106[v101]);
      v107 = v191;
      *&v106[v102] = v192;
      *&v106[v103] = v107;
      (*(v98 + 32))(&v106[v104], v200, v201);
      (*(v99 + 32))(&v106[v105], v198, v199);
      v108 = v193;
      memcpy(&v106[v196], v193, 0xC4uLL);

      sub_2219EB864(v108, v204);

      sub_2219F8C64();

      v68 = v184;
      v69 = &unk_27CFB93F0;
      goto LABEL_12;
    case 4u:

      v70 = v179;
      sub_221B61EB0(v48, v179, &unk_27CFB93D0, &qword_221BD2E10);
      v71 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v202, 1, 1, v71);
      sub_221B62018(v70, v176, &unk_27CFB93D0, &qword_221BD2E10);
      sub_2219A1B08(v205, v204);
      v72 = v190;
      (*(v190 + 16))(v200, v196, v201);
      v73 = v188;
      (*(v188 + 16))(v198, v187, v199);
      v74 = (*(v164 + 80) + 48) & ~*(v164 + 80);
      v75 = (v165 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = (v75 + 47) & 0xFFFFFFFFFFFFFFF8;
      v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
      v78 = (*(v72 + 80) + v77 + 8) & ~*(v72 + 80);
      v79 = (v189 + *(v73 + 80) + v78) & ~*(v73 + 80);
      v196 = (v186 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      *(v80 + 2) = 0;
      *(v80 + 3) = 0;
      *(v80 + 4) = v197;
      *(v80 + 5) = &off_2835191A8;
      sub_221B61EB0(v176, &v80[v74], &unk_27CFB93D0, &qword_221BD2E10);
      sub_22198B358(v204, &v80[v75]);
      v81 = v191;
      *&v80[v76] = v192;
      *&v80[v77] = v81;
      (*(v72 + 32))(&v80[v78], v200, v201);
      (*(v73 + 32))(&v80[v79], v198, v199);
      v82 = v193;
      memcpy(&v80[v196], v193, 0xC4uLL);

      sub_2219EB864(v82, v204);

      sub_2219F8C64();

      v68 = v179;
      v69 = &unk_27CFB93D0;
      goto LABEL_12;
    case 5u:

      v122 = v181;
      sub_221B61EB0(v48, v181, &unk_27CFB93A0, &unk_221BE4F60);
      v123 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v202, 1, 1, v123);
      sub_221B62018(v122, v178, &unk_27CFB93A0, &unk_221BE4F60);
      sub_2219A1B08(v205, v204);
      v124 = v190;
      (*(v190 + 16))(v200, v196, v201);
      v125 = v188;
      (*(v188 + 16))(v198, v187, v199);
      v126 = (*(v166 + 80) + 48) & ~*(v166 + 80);
      v127 = (v167 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
      v128 = (v127 + 47) & 0xFFFFFFFFFFFFFFF8;
      v129 = (v128 + 15) & 0xFFFFFFFFFFFFFFF8;
      v130 = (*(v124 + 80) + v129 + 8) & ~*(v124 + 80);
      v131 = (v189 + *(v125 + 80) + v130) & ~*(v125 + 80);
      v196 = (v186 + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
      v132 = swift_allocObject();
      *(v132 + 2) = 0;
      *(v132 + 3) = 0;
      *(v132 + 4) = v197;
      *(v132 + 5) = &off_2835191A8;
      sub_221B61EB0(v178, &v132[v126], &unk_27CFB93A0, &unk_221BE4F60);
      sub_22198B358(v204, &v132[v127]);
      v133 = v191;
      *&v132[v128] = v192;
      *&v132[v129] = v133;
      (*(v124 + 32))(&v132[v130], v200, v201);
      (*(v125 + 32))(&v132[v131], v198, v199);
      v134 = v193;
      memcpy(&v132[v196], v193, 0xC4uLL);

      sub_2219EB864(v134, v204);

      sub_2219F8C64();

      v68 = v181;
      v69 = &unk_27CFB93A0;
      goto LABEL_12;
    case 6u:

      v135 = v183;
      sub_221B61EB0(v48, v183, &qword_27CFB8340, &unk_221BE57E0);
      v136 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v202, 1, 1, v136);
      sub_221B62018(v135, v180, &qword_27CFB8340, &unk_221BE57E0);
      sub_2219A1B08(v205, v204);
      v137 = v190;
      (*(v190 + 16))(v200, v196, v201);
      v138 = v188;
      (*(v188 + 16))(v198, v187, v199);
      v139 = (*(v168 + 80) + 48) & ~*(v168 + 80);
      v140 = (v169 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
      v141 = (v140 + 47) & 0xFFFFFFFFFFFFFFF8;
      v142 = (v141 + 15) & 0xFFFFFFFFFFFFFFF8;
      v143 = (*(v137 + 80) + v142 + 8) & ~*(v137 + 80);
      v144 = (v189 + *(v138 + 80) + v143) & ~*(v138 + 80);
      v196 = (v186 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
      v145 = swift_allocObject();
      *(v145 + 2) = 0;
      *(v145 + 3) = 0;
      *(v145 + 4) = v197;
      *(v145 + 5) = &off_2835191A8;
      sub_221B61EB0(v180, &v145[v139], &qword_27CFB8340, &unk_221BE57E0);
      sub_22198B358(v204, &v145[v140]);
      v146 = v191;
      *&v145[v141] = v192;
      *&v145[v142] = v146;
      (*(v137 + 32))(&v145[v143], v200, v201);
      (*(v138 + 32))(&v145[v144], v198, v199);
      v147 = v193;
      memcpy(&v145[v196], v193, 0xC4uLL);

      sub_2219EB864(v147, v204);

      sub_2219F8C64();

      v68 = v183;
      v69 = &qword_27CFB8340;
      goto LABEL_12;
    case 7u:
      v109 = v185;
      sub_221B61EB0(v48, v185, &unk_27CFB93E0, &unk_221BD2DF0);
      v110 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v202, 1, 1, v110);
      sub_2219A1B08(v205, v204);
      v195 = v55;
      v111 = v174;
      sub_221B62018(v109, v174, &unk_27CFB93E0, &unk_221BD2DF0);
      v112 = v190;
      (*(v190 + 16))(v200, v196, v201);
      v113 = v188;
      (*(v188 + 16))(v198, v187, v199);
      v114 = (*(v172 + 80) + 80) & ~*(v172 + 80);
      v115 = (v173 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
      v116 = (*(v112 + 80) + v115 + 8) & ~*(v112 + 80);
      v187 = (v189 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
      v189 = (*(v113 + 80) + v187 + 16) & ~*(v113 + 80);
      v194 = (v186 + v189 + 7) & 0xFFFFFFFFFFFFFFF8;
      v196 = (v194 + 203) & 0xFFFFFFFFFFFFFFF8;
      v117 = swift_allocObject();
      *(v117 + 2) = 0;
      *(v117 + 3) = 0;
      sub_22198B358(v204, (v117 + 32));
      *(v117 + 9) = v192;
      sub_221B61EB0(v111, &v117[v114], &unk_27CFB93E0, &unk_221BD2DF0);
      *&v117[v115] = v191;
      (*(v112 + 32))(&v117[v116], v200, v201);
      v118 = &v117[v187];
      v119 = v198;
      *v118 = v197;
      *(v118 + 1) = &off_2835191A8;
      (*(v113 + 32))(&v117[v189], v119, v199);
      v120 = v193;
      memcpy(&v117[v194], v193, 0xC4uLL);
      v121 = &v117[v196];
      *v121 = v195;
      *(v121 + 1) = v57;

      sub_2219EB864(v120, v204);

      sub_2219F8C64();

      v68 = v185;
      v69 = &unk_27CFB93E0;
      goto LABEL_12;
    case 8u:

      v149 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v202, 1, 1, v149);
      v150 = v188;
      (*(v188 + 16))(v198, v187, v199);
      sub_2219A1B08(v205, v204);
      v151 = v190;
      (*(v190 + 16))(v200, v196, v201);
      v152 = (*(v150 + 80) + 32) & ~*(v150 + 80);
      v153 = (v186 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
      v154 = (v153 + 47) & 0xFFFFFFFFFFFFFFF8;
      v155 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
      v156 = (*(v151 + 80) + v155 + 8) & ~*(v151 + 80);
      v157 = (v189 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
      v196 = (v157 + 23) & 0xFFFFFFFFFFFFFFF8;
      v158 = swift_allocObject();
      *(v158 + 16) = 0;
      *(v158 + 24) = 0;
      (*(v150 + 32))(v158 + v152, v198, v199);
      sub_22198B358(v204, v158 + v153);
      v159 = v191;
      *(v158 + v154) = v192;
      *(v158 + v155) = v159;
      (*(v151 + 32))(v158 + v156, v200, v201);
      v160 = (v158 + v157);
      *v160 = v197;
      v160[1] = &off_2835191A8;
      v161 = v193;
      memcpy((v158 + v196), v193, 0xC4uLL);

      sub_2219EB864(v161, v204);

      sub_2219F8C64();

      return __swift_destroy_boxed_opaque_existential_0(v205);
    default:
      v58 = v48[28];
      v198 = v48[29];
      v199 = v58;
      memcpy(v204, v48, sizeof(v204));
      v59 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v202, 1, 1, v59);
      sub_221B62018(v204, v203, &unk_27CFBB7A0, &qword_221BD2930);
      v60 = v190;
      v61 = *(v190 + 16);
      v195 = v55;
      v62 = v200;
      v63 = v201;
      v61(v200, v196, v201);
      v64 = (*(v60 + 80) + 504) & ~*(v60 + 80);
      v65 = swift_allocObject();
      *(v65 + 2) = 0;
      *(v65 + 3) = 0;
      *(v65 + 4) = v191;
      memcpy(v65 + 40, v203, 0xE0uLL);
      v66 = v193;
      *(v65 + 33) = v192;
      memcpy(v65 + 272, v66, 0xC4uLL);
      v67 = v198;
      *(v65 + 59) = v199;
      *(v65 + 60) = v67;
      *(v65 + 61) = v195;
      *(v65 + 62) = v57;
      (*(v60 + 32))(&v65[v64], v62, v63);

      sub_2219EB864(v66, v203);
      sub_2219F7E3C();

      v68 = v204;
      v69 = &unk_27CFBB7A0;
LABEL_12:
      sub_2219EC58C(v68, v69);
      return __swift_destroy_boxed_opaque_existential_0(v205);
  }
}

uint64_t sub_221B5B7C4(unint64_t a1, char *a2, unint64_t a3, uint64_t a4, unint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v188 = a8;
  v189 = a7;
  v190 = a6;
  v191 = a1;
  v184 = a5;
  v192 = a3;
  v193 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  v173 = *(v13 - 8);
  v14 = *(v173 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v180 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v15;
  MEMORY[0x28223BE20](v16);
  v182 = (&v159 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  v171 = *(v18 - 8);
  v19 = *(v171 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v175 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v20;
  MEMORY[0x28223BE20](v21);
  v181 = (&v159 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
  v168 = *(v23 - 8);
  v24 = *(v168 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v169 = v25;
  v170 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v179 = (&v159 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
  v165 = *(v28 - 8);
  v29 = *(v165 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v166 = v30;
  v167 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v178 = (&v159 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  v163 = *(v33 - 8);
  v34 = *(v163 + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v164 = &v159 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v35;
  MEMORY[0x28223BE20](v36);
  v177 = (&v159 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18);
  v160 = *(v38 - 8);
  v39 = *(v160 + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v162 = &v159 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v176 = (&v159 - v41);
  v195 = sub_221BCC558();
  v185 = *(v195 - 8);
  v42 = *(v185 + 64);
  MEMORY[0x28223BE20](v195);
  v183 = v43;
  v194 = &v159 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  v187 = *(v197 - 8);
  v186 = *(v187 + 64);
  MEMORY[0x28223BE20](v197);
  v196 = &v159 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v198 = &v159 - v47;
  v48 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = (&v159 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_221BCCEE8();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v159 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201[3] = a9;
  v201[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v201);
  (*(*(a9 - 8) + 16))(boxed_opaque_existential_1, v189, a9);
  memcpy(v202, v190, 0xC4uLL);
  v58 = *&a2[OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem];
  type metadata accessor for RemoteAppIntentsActor();
  sub_221B62E9C(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);
  v190 = a2;
  sub_221BCCFD8();
  v59 = sub_221BCCEB8();
  v61 = v60;
  (*(v53 + 8))(v56, v52);
  if (!v61)
  {

    v59 = 0;
    v61 = 0xE000000000000000;
  }

  v189 = a12;
  sub_221A0150C(v191, v51);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      *&v200[0] = *v51;
      sub_221BCD788();
      return __swift_destroy_boxed_opaque_existential_0(v201);
    case 2u:

      v85 = v176;
      sub_221B61EB0(v51, v176, &qword_27CFB8348, &qword_221BD2E18);
      v86 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v86);
      v87 = v162;
      sub_221B62018(v85, v162, &qword_27CFB8348, &qword_221BD2E18);
      sub_2219A1B08(v201, v200);
      v88 = v187;
      (*(v187 + 16))(v196, v192, v197);
      v89 = v185;
      (*(v185 + 16))(v194, v184, v195);
      v90 = (*(v160 + 80) + 48) & ~*(v160 + 80);
      v91 = (v39 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = (v91 + 47) & 0xFFFFFFFFFFFFFFF8;
      v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
      v94 = (*(v88 + 80) + v93 + 8) & ~*(v88 + 80);
      v191 = (v186 + *(v89 + 80) + v94) & ~*(v89 + 80);
      v192 = (v183 + v191 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      *(v95 + 2) = 0;
      *(v95 + 3) = 0;
      v96 = v189;
      *(v95 + 4) = v193;
      *(v95 + 5) = v96;
      sub_221B61EB0(v87, &v95[v90], &qword_27CFB8348, &qword_221BD2E18);
      sub_22198B358(v200, &v95[v91]);
      *&v95[v92] = v190;
      *&v95[v93] = v188;
      (*(v88 + 32))(&v95[v94], v196, v197);
      (*(v89 + 32))(&v95[v191], v194, v195);
      memcpy(&v95[v192], v202, 0xC4uLL);

      sub_2219EB864(v202, v200);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v71 = v176;
      v72 = &qword_27CFB8348;
      goto LABEL_12;
    case 3u:

      v97 = v181;
      sub_221B61EB0(v51, v181, &unk_27CFB93F0, &unk_221BD2E00);
      v98 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v98);
      v99 = v175;
      sub_221B62018(v97, v175, &unk_27CFB93F0, &unk_221BD2E00);
      sub_2219A1B08(v201, v200);
      v100 = v187;
      (*(v187 + 16))(v196, v192, v197);
      v101 = v185;
      (*(v185 + 16))(v194, v184, v195);
      v102 = (*(v171 + 80) + 48) & ~*(v171 + 80);
      v103 = (v172 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = (v103 + 47) & 0xFFFFFFFFFFFFFFF8;
      v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
      v106 = (*(v100 + 80) + v105 + 8) & ~*(v100 + 80);
      v191 = (v186 + *(v101 + 80) + v106) & ~*(v101 + 80);
      v192 = (v183 + v191 + 7) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      *(v107 + 2) = 0;
      *(v107 + 3) = 0;
      v108 = v189;
      *(v107 + 4) = v193;
      *(v107 + 5) = v108;
      sub_221B61EB0(v99, &v107[v102], &unk_27CFB93F0, &unk_221BD2E00);
      sub_22198B358(v200, &v107[v103]);
      *&v107[v104] = v190;
      *&v107[v105] = v188;
      (*(v100 + 32))(&v107[v106], v196, v197);
      (*(v101 + 32))(&v107[v191], v194, v195);
      memcpy(&v107[v192], v202, 0xC4uLL);

      sub_2219EB864(v202, v200);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v71 = v181;
      v72 = &unk_27CFB93F0;
      goto LABEL_12;
    case 4u:

      v73 = v177;
      sub_221B61EB0(v51, v177, &unk_27CFB93D0, &qword_221BD2E10);
      v74 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v74);
      v75 = v164;
      sub_221B62018(v73, v164, &unk_27CFB93D0, &qword_221BD2E10);
      sub_2219A1B08(v201, v200);
      v76 = v187;
      (*(v187 + 16))(v196, v192, v197);
      v77 = v185;
      (*(v185 + 16))(v194, v184, v195);
      v78 = (*(v163 + 80) + 48) & ~*(v163 + 80);
      v79 = (v161 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v79 + 47) & 0xFFFFFFFFFFFFFFF8;
      v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
      v82 = (*(v76 + 80) + v81 + 8) & ~*(v76 + 80);
      v191 = (v186 + *(v77 + 80) + v82) & ~*(v77 + 80);
      v192 = (v183 + v191 + 7) & 0xFFFFFFFFFFFFFFF8;
      v83 = swift_allocObject();
      *(v83 + 2) = 0;
      *(v83 + 3) = 0;
      v84 = v189;
      *(v83 + 4) = v193;
      *(v83 + 5) = v84;
      sub_221B61EB0(v75, &v83[v78], &unk_27CFB93D0, &qword_221BD2E10);
      sub_22198B358(v200, &v83[v79]);
      *&v83[v80] = v190;
      *&v83[v81] = v188;
      (*(v76 + 32))(&v83[v82], v196, v197);
      (*(v77 + 32))(&v83[v191], v194, v195);
      memcpy(&v83[v192], v202, 0xC4uLL);

      sub_2219EB864(v202, v200);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v71 = v177;
      v72 = &unk_27CFB93D0;
      goto LABEL_12;
    case 5u:

      v122 = v178;
      sub_221B61EB0(v51, v178, &unk_27CFB93A0, &unk_221BE4F60);
      v123 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v123);
      v124 = v167;
      sub_221B62018(v122, v167, &unk_27CFB93A0, &unk_221BE4F60);
      sub_2219A1B08(v201, v200);
      v125 = v187;
      (*(v187 + 16))(v196, v192, v197);
      v126 = v185;
      (*(v185 + 16))(v194, v184, v195);
      v127 = (*(v165 + 80) + 48) & ~*(v165 + 80);
      v128 = (v166 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
      v129 = (v128 + 47) & 0xFFFFFFFFFFFFFFF8;
      v130 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
      v131 = (*(v125 + 80) + v130 + 8) & ~*(v125 + 80);
      v191 = (v186 + *(v126 + 80) + v131) & ~*(v126 + 80);
      v192 = (v183 + v191 + 7) & 0xFFFFFFFFFFFFFFF8;
      v132 = swift_allocObject();
      *(v132 + 2) = 0;
      *(v132 + 3) = 0;
      v133 = v189;
      *(v132 + 4) = v193;
      *(v132 + 5) = v133;
      sub_221B61EB0(v124, &v132[v127], &unk_27CFB93A0, &unk_221BE4F60);
      sub_22198B358(v200, &v132[v128]);
      *&v132[v129] = v190;
      *&v132[v130] = v188;
      (*(v125 + 32))(&v132[v131], v196, v197);
      (*(v126 + 32))(&v132[v191], v194, v195);
      memcpy(&v132[v192], v202, 0xC4uLL);

      sub_2219EB864(v202, v200);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v71 = v178;
      v72 = &unk_27CFB93A0;
      goto LABEL_12;
    case 6u:

      v134 = v179;
      sub_221B61EB0(v51, v179, &qword_27CFB8340, &unk_221BE57E0);
      v135 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v135);
      v136 = v170;
      sub_221B62018(v134, v170, &qword_27CFB8340, &unk_221BE57E0);
      sub_2219A1B08(v201, v200);
      v137 = v187;
      (*(v187 + 16))(v196, v192, v197);
      v138 = v185;
      (*(v185 + 16))(v194, v184, v195);
      v139 = (*(v168 + 80) + 48) & ~*(v168 + 80);
      v140 = (v169 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
      v141 = (v140 + 47) & 0xFFFFFFFFFFFFFFF8;
      v142 = (v141 + 15) & 0xFFFFFFFFFFFFFFF8;
      v143 = (*(v137 + 80) + v142 + 8) & ~*(v137 + 80);
      v191 = (v186 + *(v138 + 80) + v143) & ~*(v138 + 80);
      v192 = (v183 + v191 + 7) & 0xFFFFFFFFFFFFFFF8;
      v144 = swift_allocObject();
      *(v144 + 2) = 0;
      *(v144 + 3) = 0;
      v145 = v189;
      *(v144 + 4) = v193;
      *(v144 + 5) = v145;
      sub_221B61EB0(v136, &v144[v139], &qword_27CFB8340, &unk_221BE57E0);
      sub_22198B358(v200, &v144[v140]);
      *&v144[v141] = v190;
      *&v144[v142] = v188;
      (*(v137 + 32))(&v144[v143], v196, v197);
      (*(v138 + 32))(&v144[v191], v194, v195);
      memcpy(&v144[v192], v202, 0xC4uLL);

      sub_2219EB864(v202, v200);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v71 = v179;
      v72 = &qword_27CFB8340;
      goto LABEL_12;
    case 7u:
      v109 = v182;
      sub_221B61EB0(v51, v182, &unk_27CFB93E0, &unk_221BD2DF0);
      v110 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v110);
      sub_2219A1B08(v201, v200);
      sub_221B62018(v109, v180, &unk_27CFB93E0, &unk_221BD2DF0);
      v191 = v59;
      v111 = v187;
      (*(v187 + 16))(v196, v192, v197);
      v112 = v185;
      (*(v185 + 16))(v194, v184, v195);
      v113 = (*(v173 + 80) + 80) & ~*(v173 + 80);
      v114 = (v174 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
      v115 = (*(v111 + 80) + v114 + 8) & ~*(v111 + 80);
      v116 = (v186 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
      v184 = (*(v112 + 80) + v116 + 16) & ~*(v112 + 80);
      v192 = (v183 + v184 + 7) & 0xFFFFFFFFFFFFFFF8;
      v186 = (v192 + 203) & 0xFFFFFFFFFFFFFFF8;
      v117 = swift_allocObject();
      *(v117 + 2) = 0;
      *(v117 + 3) = 0;
      sub_22198B358(v200, (v117 + 32));
      *(v117 + 9) = v190;
      sub_221B61EB0(v180, &v117[v113], &unk_27CFB93E0, &unk_221BD2DF0);
      *&v117[v114] = v188;
      (*(v111 + 32))(&v117[v115], v196, v197);
      v118 = &v117[v116];
      v119 = v194;
      v120 = v189;
      *v118 = v193;
      *(v118 + 1) = v120;
      (*(v112 + 32))(&v117[v184], v119, v195);
      memcpy(&v117[v192], v202, 0xC4uLL);
      v121 = &v117[v186];
      *v121 = v191;
      v121[1] = v61;

      sub_2219EB864(v202, v200);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      v71 = v182;
      v72 = &unk_27CFB93E0;
      goto LABEL_12;
    case 8u:

      v147 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v147);
      v148 = v185;
      (*(v185 + 16))(v194, v184, v195);
      sub_2219A1B08(v201, v200);
      v149 = v187;
      (*(v187 + 16))(v196, v192, v197);
      v150 = (*(v148 + 80) + 32) & ~*(v148 + 80);
      v151 = (v183 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
      v152 = (v151 + 47) & 0xFFFFFFFFFFFFFFF8;
      v153 = (v152 + 15) & 0xFFFFFFFFFFFFFFF8;
      v154 = (*(v149 + 80) + v153 + 8) & ~*(v149 + 80);
      v155 = (v186 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
      v192 = (v155 + 23) & 0xFFFFFFFFFFFFFFF8;
      v156 = swift_allocObject();
      *(v156 + 16) = 0;
      *(v156 + 24) = 0;
      (*(v148 + 32))(v156 + v150, v194, v195);
      sub_22198B358(v200, v156 + v151);
      *(v156 + v152) = v190;
      *(v156 + v153) = v188;
      (*(v149 + 32))(v156 + v154, v196, v197);
      v157 = (v156 + v155);
      v158 = v189;
      *v157 = v193;
      v157[1] = v158;
      memcpy((v156 + v192), v202, 0xC4uLL);

      sub_2219EB864(v202, v200);
      swift_unknownObjectRetain();
      sub_2219F8C64();

      return __swift_destroy_boxed_opaque_existential_0(v201);
    default:
      v62 = v51[28];
      v194 = v51[29];
      v195 = v62;
      memcpy(v200, v51, sizeof(v200));
      v63 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v198, 1, 1, v63);
      sub_221B62018(v200, v199, &unk_27CFBB7A0, &qword_221BD2930);
      v64 = v59;
      v65 = v187;
      v67 = v196;
      v66 = v197;
      (*(v187 + 16))(v196, v192, v197);
      v68 = (*(v65 + 80) + 504) & ~*(v65 + 80);
      v69 = swift_allocObject();
      *(v69 + 2) = 0;
      *(v69 + 3) = 0;
      *(v69 + 4) = v188;
      memcpy(v69 + 40, v199, 0xE0uLL);
      *(v69 + 33) = v190;
      memcpy(v69 + 272, v202, 0xC4uLL);
      v70 = v194;
      *(v69 + 59) = v195;
      *(v69 + 60) = v70;
      *(v69 + 61) = v64;
      *(v69 + 62) = v61;
      (*(v65 + 32))(&v69[v68], v67, v66);

      sub_2219EB864(v202, v199);
      sub_2219F7E3C();

      v71 = v200;
      v72 = &unk_27CFBB7A0;
LABEL_12:
      sub_2219EC58C(v71, v72);
      return __swift_destroy_boxed_opaque_existential_0(v201);
  }
}

uint64_t sub_221B5CFC4()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_221B5D0A4(void *a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_221B5D0C8(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_221B5D0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2219EC5F0;

  return sub_221B275B4(a1, a2, a3, a4, v10);
}

uint64_t sub_221B5D1B4()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_115_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v3[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_125_1();

  return v10(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_221B5D258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2219EC5F0;

  return sub_221B28E04(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_221B5D328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_59_8();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_2_15(v10);
  *v11 = v12;
  v11[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_152();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_221B5D3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2219EC5F0;

  return sub_221B2CFA0(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_221B5D4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_271_1();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_59_8();
  v11 = *(v10 + 48);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_2_15(v12);
  *v13 = v14;
  v13[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_272_0();

  return v22(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_221B5D550()
{
  OUTLINED_FUNCTION_271_1();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_59_8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2_15(v4);
  *v5 = v6;
  v5[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_284_1();
  OUTLINED_FUNCTION_272_0();

  return sub_221B5285C(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t objectdestroy_36Tm_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[7];

  v6 = OUTLINED_FUNCTION_175_2();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_221B5D6B0()
{
  OUTLINED_FUNCTION_271_1();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_167();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_14_16(v6);
  OUTLINED_FUNCTION_284_1();
  OUTLINED_FUNCTION_272_0();

  return sub_221B57510(v8, v9, v10, v11, v12, v13, v14, v15);
}