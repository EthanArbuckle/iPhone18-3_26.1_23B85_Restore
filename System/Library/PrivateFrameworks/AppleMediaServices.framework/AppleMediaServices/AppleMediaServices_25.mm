uint64_t sub_192CC797C()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_40();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_192CC7A70()
{
  OUTLINED_FUNCTION_3();
  v0[11] = v2;
  v0[12] = v3;
  v0[9] = v1;
  v0[10] = v4;
  v0[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_192CC7B00, v1, 0);
}

uint64_t sub_192CC7B00()
{
  OUTLINED_FUNCTION_178();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_63_9();
  v2 = *(v1 + 128);
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_91();
    v4 = sub_192F95B5C();
    *(v0 + 40) = 0;
    v5 = OUTLINED_FUNCTION_99_4();
    v7 = [v5 v6];

    v8 = *(v0 + 40);
    if (v8)
    {
      swift_willThrow();
      v8;

      OUTLINED_FUNCTION_43();
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1ED6DF160 != -1)
    {
      OUTLINED_FUNCTION_1_2();
    }

    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = qword_1ED6DF140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_53_11(v13, xmmword_192FBCD90);
    sub_192CC7DE4(v11, v14);
    v15._object = 0x8000000193022A10;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogInterpolation.init(stringLiteral:)(v15);
    sub_192F96E5C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v12, v16))
    {
      v17 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v18 = swift_allocObject();
      *(v18 + 16) = v10;
      *(v0 + 40) = v13;
      *(v0 + 48) = sub_1928FA5C4;
      *(v0 + 56) = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_30_0();

      objc_autoreleasePoolPop(v17);
      v19 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v20 = OUTLINED_FUNCTION_90();
      *(v20 + 16) = xmmword_192FBCD50;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      v21 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v21);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_29_12();

      objc_autoreleasePoolPop(v19);
    }

    v7 = 0;
  }

  **(v0 + 64) = v7;
  OUTLINED_FUNCTION_43();
LABEL_13:

  return v9();
}

uint64_t sub_192CC7DE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11[3] = swift_getObjectType();
  v11[0] = v2;
  swift_beginAccess();
  v6 = *(a1 + 152);
  v5 = *(a1 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_192FBCD50;
  sub_19286C588(v11, v10);

  v8 = v2;
  sub_19286CFC8(v10, v6, v5, v7 + 32);
  *a2 = v7;
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_192CC7F38(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_192F95B7C();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_192CC8014;

  return MescalFairplaySession.verifyPrimeSignature(_:)(v7, v9);
}

uint64_t sub_192CC8014()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_98_3();
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *(v2 + 16);
  v5 = *v1;
  *v3 = *v1;

  sub_19290CA6C(*(v2 + 32), *(v2 + 40));
  if (v0)
  {
    v6 = sub_192F958CC();

    v7 = OUTLINED_FUNCTION_75_7();
    v8(v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_76_7();
    v10(v9);
  }

  _Block_release(*(v2 + 24));
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_192CC8474()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 368) = v6;
  *(v7 + 376) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CC8588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  v15 = *(v13 + 376);
  OUTLINED_FUNCTION_94_3();
  sub_1929530C8(v16, &selRef_signData_error_, v17);
  if (v15)
  {
    v18 = *(v13 + 344);
    OUTLINED_FUNCTION_93_5();
    OUTLINED_FUNCTION_45_11();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_53_11(v19, xmmword_192FBED20);
    sub_192CC7DE4(v14, v20);
    OUTLINED_FUNCTION_79_7();
    static LogInterpolation.safe(_:)(v12, &v19[2].n128_i64[1]);
    sub_192907DE8(v12);
    OUTLINED_FUNCTION_9_34();
    v21._countAndFlagsBits = 0xD00000000000003ALL;
    LogInterpolation.init(stringLiteral:)(v21);
    v22 = sub_192F958CC();
    v23 = AMSLogableError(v22);

    v24 = sub_192F967CC();
    OUTLINED_FUNCTION_69_9();
    sub_192907DE8(v23);
    sub_192F96E5C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v18, v25))
    {
      v26 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      OUTLINED_FUNCTION_92_3(v27);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_86_3();
      OUTLINED_FUNCTION_21_5();

      objc_autoreleasePoolPop(v26);
      v29 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v30 = OUTLINED_FUNCTION_90();
      v30[4].n128_u64[0] = OUTLINED_FUNCTION_78_9(v30, xmmword_192FBCD50);
      v30[2].n128_u64[0] = v24;
      v30[2].n128_u64[1] = v28;
      OUTLINED_FUNCTION_60();
      sub_192F9622C();

      objc_autoreleasePoolPop(v29);
    }

    v31 = *(v13 + 368);
    v32 = *(v13 + 336);

    swift_willThrow();

    OUTLINED_FUNCTION_108_3();
    OUTLINED_FUNCTION_77_9();
    OUTLINED_FUNCTION_43();
  }

  else
  {
    v33 = *(v13 + 336);

    v34 = OUTLINED_FUNCTION_88();
    sub_19290CA6C(v34, v35);
    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_183();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_192CC880C()
{
  OUTLINED_FUNCTION_5();

  v1 = OUTLINED_FUNCTION_91();
  sub_19290CA6C(v1, v2);
  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CC8884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = v10;
  v8[38] = v11;
  v8[35] = a7;
  v8[36] = a8;
  v8[33] = a5;
  v8[34] = a6;
  v8[31] = a3;
  v8[32] = a4;
  v8[29] = a1;
  v8[30] = a2;
  return MEMORY[0x1EEE6DFA0](sub_192CC88B8, a2, 0);
}

uint64_t sub_192CC88B8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_84_3();

  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_53(v1);

  return sub_192908C2C(v2, v3);
}

uint64_t sub_192CC895C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 320) = v6;
  *(v7 + 328) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CC8A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_178();
  v15 = *(v12 + 328);
  OUTLINED_FUNCTION_94_3();
  sub_1929530C8(v16, &selRef_primingSignatureForData_error_, v17);
  v18 = *(v12 + 320);
  if (v15)
  {

    *(v12 + 216) = v15;
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
    OUTLINED_FUNCTION_65_7();
    sub_1929333B4();
    if (OUTLINED_FUNCTION_85_5())
    {
      if (OUTLINED_FUNCTION_104_2())
      {

        if (qword_1ED6DF160 != -1)
        {
          OUTLINED_FUNCTION_1_2();
        }

        v21 = *(v12 + 280);
        v20 = *(v12 + 288);
        OUTLINED_FUNCTION_93_5();
        v22 = qword_1ED6DF140;
        *(v12 + 344) = qword_1ED6DF140;
        *(v12 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
        OUTLINED_FUNCTION_45_11();
        v23 = swift_allocObject();
        OUTLINED_FUNCTION_53_11(v23, xmmword_192FBED20);
        sub_192CC7DE4(v14, v24);
        v25 = MEMORY[0x1E69E6158];
        *(v12 + 40) = MEMORY[0x1E69E6158];
        *(v12 + 16) = v21;
        *(v12 + 24) = v20;

        static LogInterpolation.safe(_:)(v12 + 16, &v23[2].n128_i64[1]);
        sub_192907DE8(v12 + 16);
        OUTLINED_FUNCTION_9_34();
        OUTLINED_FUNCTION_82_5(v26, v27);
        v28 = v13;
        v29 = sub_192F958CC();

        v30 = AMSLogableError(v29);
        sub_192F967CC();

        OUTLINED_FUNCTION_103_5();
        sub_192907DE8(v12 + 48);
        sub_192F96E5C();
        OUTLINED_FUNCTION_165();
        if (os_log_type_enabled(v22, v31))
        {
          v32 = objc_autoreleasePoolPush();
          if (qword_1ED6DF1A0 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_72();
          OUTLINED_FUNCTION_71();
          v33 = swift_allocObject();
          *(v33 + 16) = v30;
          OUTLINED_FUNCTION_40_0(v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
          sub_1928FD924();
          OUTLINED_FUNCTION_106();
          OUTLINED_FUNCTION_30_0();

          objc_autoreleasePoolPop(v32);
          v34 = objc_autoreleasePoolPush();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
          v35 = OUTLINED_FUNCTION_90();
          *(v35 + 16) = xmmword_192FBCD50;
          *(v35 + 56) = v25;
          v36 = sub_1928FDB30();
          OUTLINED_FUNCTION_137(v36);
          OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_29_12();

          objc_autoreleasePoolPop(v34);
        }

        OUTLINED_FUNCTION_109_2();
        OUTLINED_FUNCTION_89_5();
        v37 = swift_task_alloc();
        v38 = OUTLINED_FUNCTION_95_3(v37);
        *v38 = v39;
        OUTLINED_FUNCTION_4_53(v38);
        OUTLINED_FUNCTION_31();

        return sub_192908C2C(v40, v41);
      }
    }

    v46 = OUTLINED_FUNCTION_88();
    sub_19290CA6C(v46, v47);
    OUTLINED_FUNCTION_43();
  }

  else
  {

    v44 = OUTLINED_FUNCTION_88();
    sub_19290CA6C(v44, v45);
    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_31();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
}

uint64_t sub_192CC9094()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 368) = v6;
  *(v7 + 376) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CC91A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_178();
  v15 = *(v13 + 376);
  OUTLINED_FUNCTION_94_3();
  sub_1929530C8(v16, &selRef_primingSignatureForData_error_, v17);
  if (v15)
  {
    v18 = *(v13 + 344);
    OUTLINED_FUNCTION_93_5();
    OUTLINED_FUNCTION_45_11();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_53_11(v19, xmmword_192FBED20);
    sub_192CC7DE4(v14, v20);
    OUTLINED_FUNCTION_79_7();
    static LogInterpolation.safe(_:)(v12, &v19[2].n128_i64[1]);
    sub_192907DE8(v12);
    OUTLINED_FUNCTION_9_34();
    v21._countAndFlagsBits = 0xD00000000000003ALL;
    LogInterpolation.init(stringLiteral:)(v21);
    v22 = sub_192F958CC();
    v23 = AMSLogableError(v22);

    v24 = sub_192F967CC();
    OUTLINED_FUNCTION_69_9();
    sub_192907DE8(v23);
    sub_192F96E5C();
    OUTLINED_FUNCTION_165();
    if (os_log_type_enabled(v18, v25))
    {
      v26 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      OUTLINED_FUNCTION_92_3(v27);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_86_3();
      OUTLINED_FUNCTION_21_5();

      objc_autoreleasePoolPop(v26);
      v29 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v30 = OUTLINED_FUNCTION_90();
      v30[4].n128_u64[0] = OUTLINED_FUNCTION_78_9(v30, xmmword_192FBCD50);
      v30[2].n128_u64[0] = v24;
      v30[2].n128_u64[1] = v28;
      OUTLINED_FUNCTION_60();
      sub_192F9622C();

      objc_autoreleasePoolPop(v29);
    }

    v31 = *(v13 + 368);
    v32 = *(v13 + 336);

    swift_willThrow();

    OUTLINED_FUNCTION_108_3();
    OUTLINED_FUNCTION_77_9();
    OUTLINED_FUNCTION_43();
  }

  else
  {
    v33 = *(v13 + 336);

    v34 = OUTLINED_FUNCTION_88();
    sub_19290CA6C(v34, v35);
    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_183();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_192CC942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[39] = v11;
  v8[40] = v12;
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a5;
  v8[36] = a6;
  v8[33] = a3;
  v8[34] = a4;
  v8[31] = a1;
  v8[32] = a2;

  return MEMORY[0x1EEE6DFA0](sub_192CC94D8, a1, 0);
}

uint64_t sub_192CC94D8()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_84_3();

  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_192CC95BC;
  v2 = OUTLINED_FUNCTION_51(*(v0 + 248));

  return sub_192908C2C(v2, v3);
}

uint64_t sub_192CC95BC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 336) = v6;
  *(v7 + 344) = v0;

  OUTLINED_FUNCTION_29_2();
  v9 = *(v8 + 248);
  if (v0)
  {
    v10 = sub_192CC9AE0;
  }

  else
  {
    v10 = sub_192CC9704;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_192CC9704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  v54 = *MEMORY[0x1E69E9840];
  v15 = sub_192F95B5C();
  *(v14 + 240) = 0;
  v16 = OUTLINED_FUNCTION_99_4();
  [v16 v17];

  v18 = *(v14 + 240);
  v19 = *(v14 + 336);
  if (v18)
  {
    swift_willThrow();
    v20 = v18;

    *(v14 + 216) = v20;
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
    sub_1929333B4();
    if (swift_dynamicCast())
    {
      if (OUTLINED_FUNCTION_107_4())
      {
        v53 = v14 + 48;

        if (qword_1ED6DF160 != -1)
        {
          OUTLINED_FUNCTION_1_2();
        }

        v22 = *(v14 + 248);
        *(v14 + 360) = qword_1ED6DF140;
        *(v14 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
        OUTLINED_FUNCTION_45_11();
        v23 = swift_allocObject();
        OUTLINED_FUNCTION_53_11(v23, xmmword_192FBED20);
        sub_192CC7DE4(v22, v24);
        OUTLINED_FUNCTION_62_8();
        OUTLINED_FUNCTION_110_3();
        sub_192907DE8(v14 + 16);
        OUTLINED_FUNCTION_9_34();
        OUTLINED_FUNCTION_82_5(v25, v26);
        v27 = v19;
        v28 = sub_192F958CC();

        v29 = AMSLogableError(v28);
        sub_192F967CC();
        OUTLINED_FUNCTION_134();
        OUTLINED_FUNCTION_50_9();
        static LogInterpolation.safe(_:)(v53, v30);
        sub_192907DE8(v53);
        v31 = sub_192F96E5C();
        if (OUTLINED_FUNCTION_61_10(v31))
        {
          v32 = objc_autoreleasePoolPush();
          if (qword_1ED6DF1A0 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_97_4();
          OUTLINED_FUNCTION_71();
          v33 = swift_allocObject();
          OUTLINED_FUNCTION_37_13(v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
          sub_1928FD924();
          OUTLINED_FUNCTION_1_41();
          sub_192F9674C();
          OUTLINED_FUNCTION_30_0();

          objc_autoreleasePoolPop(v32);
          v34 = objc_autoreleasePoolPush();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
          v35 = OUTLINED_FUNCTION_90();
          v36 = OUTLINED_FUNCTION_78_9(v35, xmmword_192FBCD50);
          OUTLINED_FUNCTION_137(v36);
          OUTLINED_FUNCTION_20_24();

          objc_autoreleasePoolPop(v34);
        }

        OUTLINED_FUNCTION_89_5();
        v37 = swift_task_alloc();
        *(v14 + 376) = v37;
        *v37 = v14;
        OUTLINED_FUNCTION_25_19(v37);
        OUTLINED_FUNCTION_51(v38);
        OUTLINED_FUNCTION_94();

        return sub_192908C2C(v39, v40);
      }
    }

    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_77_9();

    OUTLINED_FUNCTION_14_25();
  }

  else
  {

    v43 = OUTLINED_FUNCTION_91();
    sub_19290CA6C(v43, v44);

    OUTLINED_FUNCTION_14_25();
  }

  OUTLINED_FUNCTION_94();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, v54, a12, a13, a14);
}

uint64_t sub_192CC9AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  v48 = *MEMORY[0x1E69E9840];
  v17 = v14[43];
  OUTLINED_FUNCTION_80_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
  OUTLINED_FUNCTION_65_7();
  sub_1929333B4();
  if (OUTLINED_FUNCTION_52_10())
  {
    if (OUTLINED_FUNCTION_107_4())
    {
      v47 = v15 - 168;

      if (qword_1ED6DF160 != -1)
      {
        OUTLINED_FUNCTION_1_2();
      }

      v18 = v14[31];
      v14[45] = qword_1ED6DF140;
      v14[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
      OUTLINED_FUNCTION_45_11();
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_53_11(v19, xmmword_192FBED20);
      sub_192CC7DE4(v18, v20);
      OUTLINED_FUNCTION_62_8();
      OUTLINED_FUNCTION_110_3();
      sub_192907DE8(v15 - 200);
      OUTLINED_FUNCTION_9_34();
      OUTLINED_FUNCTION_82_5(v21, v22);
      v23 = v16;
      v24 = sub_192F958CC();

      v25 = AMSLogableError(v24);
      sub_192F967CC();
      OUTLINED_FUNCTION_134();
      OUTLINED_FUNCTION_50_9();
      static LogInterpolation.safe(_:)(v47, v26);
      sub_192907DE8(v47);
      v27 = sub_192F96E5C();
      if (OUTLINED_FUNCTION_61_10(v27))
      {
        v28 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_97_4();
        OUTLINED_FUNCTION_71();
        v29 = swift_allocObject();
        OUTLINED_FUNCTION_37_13(v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        OUTLINED_FUNCTION_1_41();
        sub_192F9674C();
        OUTLINED_FUNCTION_30_0();

        objc_autoreleasePoolPop(v28);
        v30 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v31 = OUTLINED_FUNCTION_90();
        v32 = OUTLINED_FUNCTION_78_9(v31, xmmword_192FBCD50);
        OUTLINED_FUNCTION_137(v32);
        OUTLINED_FUNCTION_20_24();

        objc_autoreleasePoolPop(v30);
      }

      OUTLINED_FUNCTION_89_5();
      v33 = swift_task_alloc();
      v14[47] = v33;
      *v33 = v14;
      OUTLINED_FUNCTION_25_19(v33);
      OUTLINED_FUNCTION_51(v34);
      OUTLINED_FUNCTION_94();

      return sub_192908C2C(v35, v36);
    }
  }

  OUTLINED_FUNCTION_88_5();
  OUTLINED_FUNCTION_77_9();

  OUTLINED_FUNCTION_14_25();
  OUTLINED_FUNCTION_94();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, v48, a12, a13, a14);
}

uint64_t sub_192CC9E00()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 384) = v6;
  *(v7 + 392) = v0;

  OUTLINED_FUNCTION_29_2();
  v9 = *(v8 + 248);
  if (v0)
  {
    v10 = sub_192CCA2A4;
  }

  else
  {
    v10 = sub_192CC9F48;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_192CC9F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  v51 = *MEMORY[0x1E69E9840];
  v15 = sub_192F95B5C();
  *(v14 + 232) = 0;
  v16 = OUTLINED_FUNCTION_99_4();
  [v16 v17];

  v18 = *(v14 + 232);
  if (v18)
  {
    v19 = *(v14 + 360);
    v21 = *(v14 + 288);
    v20 = *(v14 + 296);
    v22 = *(v14 + 248);
    swift_willThrow();
    OUTLINED_FUNCTION_45_11();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_192FBED20;
    v18;
    sub_192CC7DE4(v22, (v23 + 32));
    v24 = MEMORY[0x1E69E6158];
    *(v14 + 104) = MEMORY[0x1E69E6158];
    *(v14 + 80) = v21;
    *(v14 + 88) = v20;

    static LogInterpolation.safe(_:)(v14 + 80, (v23 + 40));
    sub_192907DE8(v14 + 80);
    OUTLINED_FUNCTION_9_34();
    v25._countAndFlagsBits = 0xD00000000000003ALL;
    LogInterpolation.init(stringLiteral:)(v25);
    v26 = sub_192F958CC();
    v27 = AMSLogableError(v26);

    v28 = sub_192F967CC();
    v30 = v29;

    *(v14 + 112) = v28;
    *(v14 + 136) = v24;
    *(v14 + 120) = v30;
    static LogInterpolation.safe(_:)(v14 + 112, (v23 + 56));
    sub_192907DE8(v14 + 112);
    LOBYTE(v27) = sub_192F96E5C();
    if (os_log_type_enabled(v19, v27))
    {
      v31 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v32 = byte_1ED6DE5D8;
      OUTLINED_FUNCTION_71();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      OUTLINED_FUNCTION_92_3(v33);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      OUTLINED_FUNCTION_1_41();
      sub_192F9674C();
      OUTLINED_FUNCTION_21_5();

      objc_autoreleasePoolPop(v31);
      v35 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v36 = OUTLINED_FUNCTION_90();
      v36[4].n128_u64[0] = OUTLINED_FUNCTION_78_9(v36, xmmword_192FBCD50);
      v36[2].n128_u64[0] = v14 + 168;
      v36[2].n128_u64[1] = v34;
      OUTLINED_FUNCTION_60();
      sub_192F9622C();

      objc_autoreleasePoolPop(v35);
    }

    v37 = *(v14 + 384);
    v38 = *(v14 + 352);

    swift_willThrow();

    OUTLINED_FUNCTION_88_5();
    OUTLINED_FUNCTION_77_9();

    OUTLINED_FUNCTION_14_25();
  }

  else
  {
    v39 = *(v14 + 352);

    v40 = OUTLINED_FUNCTION_91();
    sub_19290CA6C(v40, v41);

    OUTLINED_FUNCTION_14_25();
  }

  OUTLINED_FUNCTION_94();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v51, a12, a13, a14);
}

uint64_t sub_192CCA2A4()
{
  OUTLINED_FUNCTION_65();

  v1 = *(v0 + 320);
  v2 = OUTLINED_FUNCTION_91();
  sub_19290CA6C(v2, v3);

  OUTLINED_FUNCTION_40();

  return v4(0);
}

uint64_t sub_192CCA35C()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CCA3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_120();
  v34 = *MEMORY[0x1E69E9840];
  v16 = v14[20];
  v17 = v14[15];
  v33 = v14[16];
  v19 = v14[12];
  v18 = v14[13];
  v20 = v14[10];
  v21 = OUTLINED_FUNCTION_70_5();
  v22 = sub_192F9679C();
  v23 = sub_192F958CC();
  OUTLINED_FUNCTION_81_8(v23);

  swift_willThrow();
  sub_19290CA6C(v19, v18);

  sub_19290CA6C(v33, v17);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, v34, a12, a13, a14);
}

uint64_t sub_192CCA4FC()
{
  v0 = sub_192F958CC();
  IsEqual = AMSErrorIsEqual(v0, @"AMSErrorDomain", 302);

  return IsEqual;
}

uint64_t sub_192CCA540()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 336) = v4;
  v5 = *(v3 + 288);
  if (v4)
  {
    v6 = sub_192CCAB74;
  }

  else
  {
    v6 = sub_192CCA650;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_192CCA650()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[41];
  v2 = v0[37];
  v0[43] = v0[34];

  v0[44] = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag_];
  swift_beginAccess();
  v3 = sub_19292C460();
  v0[45] = v3;
  swift_endAccess();
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_192CCA74C;
  v5 = OUTLINED_FUNCTION_91();

  return sub_192CCAD24(v5, v6, v3);
}

uint64_t sub_192CCA74C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 376) = v6;
  *(v7 + 384) = v0;

  OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192CCA860()
{
  if ([*(v0 + 376) object])
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  *(v0 + 144) = v30;
  *(v0 + 160) = v31;
  if (*(v0 + 168))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0);
    if (OUTLINED_FUNCTION_112_3())
    {
      sub_192952700(0xD000000000000013, 0x8000000193022C10, *(v0 + 280));

      if (*(v0 + 200))
      {
        if (OUTLINED_FUNCTION_112_3())
        {
          v1 = *(v0 + 376);
          v2 = *(v0 + 288);
          v3 = *(v0 + 264);
          v4 = *(v2 + 136);
          v5 = *(v2 + 144);
          *(v2 + 136) = *(v0 + 256);
          *(v2 + 144) = v3;
          v6 = OUTLINED_FUNCTION_102();
          sub_192907D90(v6, v7);
          v8 = OUTLINED_FUNCTION_102();
          sub_192907D90(v8, v9);
          sub_192915F68(v4, v5);
          v10 = [v1 response];
          if (v10)
          {
            v11 = v10;
            [v10 ams_expirationInterval];
          }

          v20 = *(v0 + 376);
          v22 = *(v0 + 352);
          v21 = *(v0 + 360);
          v23 = *(v0 + 344);
          v24 = OUTLINED_FUNCTION_102();
          v25(v24);

          v26 = OUTLINED_FUNCTION_102();
          sub_19290CA6C(v26, v27);
          sub_192915F80(*(v0 + 312), *(v0 + 320));
          v28 = OUTLINED_FUNCTION_102();

          return v29(v28);
        }
      }

      else
      {
        sub_192907DE8(v0 + 176);
      }
    }
  }

  else
  {
    sub_192907DE8(v0 + 144);
  }

  v12 = *(v0 + 376);
  v13 = *(v0 + 352);
  v14 = *(v0 + 360);
  v15 = *(v0 + 344);
  v16 = sub_192F9679C();
  v17 = sub_192F9679C();
  AMSError(8, v16, v17, 0);

  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v18();
}

uint64_t sub_192CCAB74()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 328);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192CCABDC()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CCAC44()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 360);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192CCACAC()
{
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CCAD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_192F95A8C();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192CCADE8, 0, 0);
}

uint64_t sub_192CCADE8()
{
  OUTLINED_FUNCTION_3();
  sub_192F959AC();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_192CCAE8C;
  v2 = *(v0 + 192);

  return sub_19292C6E4(2, v2, 0);
}

uint64_t sub_192CCAE8C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_6_0();
  *v6 = v5;
  *(v8 + 208) = v7;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_29_2();
  (*(*(v1 + 184) + 8))(*(v9 + 192), *(v1 + 176));
  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_192CCAFD8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_0();
  v3 = [*(v0 + 168) dataTaskPromiseWithRequest_];
  *(v0 + 224) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  OUTLINED_FUNCTION_39_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13AE0);
  OUTLINED_FUNCTION_4_4(v4);
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_36();
  [v3 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CCB0D4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = sub_192CCB2B0;
  }

  else
  {
    v5 = sub_192CCB1D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CCB1D4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 224);

  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_40();

  return v3(v2);
}

uint64_t sub_192CCB254()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CCB2B0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192CCB328()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CCB384()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

id MescalFairplaySession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MescalFairplaySession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192CCB5A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_192CCB5F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_192CCB654()
{
  OUTLINED_FUNCTION_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192919C40;
  v3 = OUTLINED_FUNCTION_30_3();

  return v4(v3);
}

uint64_t sub_192CCB6F8()
{
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192919C44;
  v3 = OUTLINED_FUNCTION_30_3();

  return v4(v3);
}

uint64_t sub_192CCB7BC()
{
  OUTLINED_FUNCTION_65();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_192919C40;
  v3 = OUTLINED_FUNCTION_30_3();

  return v4(v3);
}

uint64_t sub_192CCB884()
{
  OUTLINED_FUNCTION_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_19(v1);

  return sub_192C4CCA0(v3, v4, v5);
}

uint64_t sub_192CCB920()
{
  OUTLINED_FUNCTION_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_27_19(v1);

  return sub_192C4CCA0(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_77_9()
{

  return sub_19290CA6C(v1, v0);
}

unint64_t OUTLINED_FUNCTION_78_9(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;

  return sub_1928FDB30();
}

void OUTLINED_FUNCTION_88_5()
{
  v2 = *(v0 + 216);
}

uint64_t OUTLINED_FUNCTION_92_3(uint64_t a1)
{
  v3[21] = v2;
  v3[22] = v1;
  v3[23] = a1;
}

uint64_t OUTLINED_FUNCTION_103_5()
{
  v1[9] = v4;
  v1[6] = v2;
  v1[7] = v3;

  return static LogInterpolation.safe(_:)((v1 + 6), (v0 + 56));
}

uint64_t OUTLINED_FUNCTION_107_4()
{
  *(v0 + 352) = *(v0 + 224);

  return sub_192CCA4FC();
}

uint64_t sub_192CCBA90()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static AMSMescal.signature(fromRequest:type:bag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CCBB14()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = objc_opt_self();
  v4 = sub_192F9539C();
  v5 = [v3 signaturePromiseFromRequest:v4 type:v2 bag:v1];
  v0[22] = v5;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_192CCBC74;
  v6 = swift_continuation_init();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15590);
  OUTLINED_FUNCTION_1_56(v7);
  v0[11] = 1107296256;
  v0[12] = sub_1929550A8;
  v0[13] = &block_descriptor_4_0;
  v0[14] = v6;
  [v5 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CCBC74()
{
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_192CCBE30;
  }

  else
  {
    v5 = sub_192CCBD7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CCBD7C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 144);

  v2 = [v1 value];
  if (v2)
  {
    v3 = v2;
    sub_192F95B7C();
  }

  else
  {
  }

  v4 = OUTLINED_FUNCTION_4_54();

  return v5(v4);
}

uint64_t sub_192CCBE30()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static AMSMescal.verifyResponse(inTask:data:type:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CCBEB8()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  sub_192CCC250();
  sub_192907D90(v4, v3);
  v6 = sub_192CCC294(v4, v3);
  v0[23] = v6;
  v7 = [objc_opt_self() verificationPromiseForTask:v5 data:v6 type:v2 bag:v1];
  v0[24] = v7;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_192CCC044;
  v8 = swift_continuation_init();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DD0);
  OUTLINED_FUNCTION_1_56(v9);
  v0[11] = 1107296256;
  v0[12] = sub_19294E224;
  v0[13] = &block_descriptor_8;
  v0[14] = v8;
  [v7 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CCC044()
{
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_192CCC1DC;
  }

  else
  {
    v5 = sub_192CCC14C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CCC14C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 184);

  v2 = v1;
  v3 = sub_192F95B7C();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_192CCC1DC()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[24];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_192CCC250()
{
  result = qword_1EAE15598;
  if (!qword_1EAE15598)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAE15598);
  }

  return result;
}

id sub_192CCC294(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_192F95B5C();
  v6 = [v4 initWithData_];

  sub_19290CA6C(a1, a2);
  return v6;
}

uint64_t sub_192CCC31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a3)
  {
    return sub_192F95E4C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192CCC338(uint64_t a1, uint64_t a2)
{
  MEMORY[0x193B11C90](a2);

  return sub_192F95E5C();
}

uint64_t sub_192CCC37C(uint64_t a1)
{
  sub_192F9789C();
  MEMORY[0x193B11C90](a1);
  sub_192F95E5C();
  return sub_192F978DC();
}

id static MethodImplementationCache.implementation(of:forInstancesOf:)(uint64_t a1)
{
  if (qword_1ED6DED98 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v2 = off_1ED6DEDA0;
  os_unfair_lock_lock(off_1ED6DEDA0 + 6);
  v3 = *(v2 + 2);
  if (*(v3 + 16) && (v4 = OUTLINED_FUNCTION_91(), v6 = sub_1929113AC(v4, v5), (v7 & 1) != 0))
  {
    v8 = *(*(v3 + 56) + 8 * v6);
  }

  else
  {
    v8 = [swift_getObjCClassFromMetadata() instanceMethodForSelector_];
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_57();
      sub_192910974();
      *(v2 + 2) = v10;
    }

    else
    {
      OUTLINED_FUNCTION_91();
      sub_192C026AC();
    }
  }

  os_unfair_lock_unlock(v2 + 6);
  return v8;
}

id MethodImplementationCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MethodImplementationCache.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MethodImplementationCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static MethodImplementationCache.clear()()
{
  if (qword_1ED6DED98 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v0 = off_1ED6DEDA0;
  os_unfair_lock_lock(off_1ED6DEDA0 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE155A0);
  sub_192F966DC();

  os_unfair_lock_unlock(v0 + 6);
}

uint64_t getEnumTagSinglePayload for MethodImplementationCache.Key(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 16))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MethodImplementationCache.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

id MetricsEventAnomaliesDetector.__allocating_init(anomalyDetectors:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AMSMetricsEventAnomaliesDetector_anomalyDetectors] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MetricsEventAnomaliesDetector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetricsEventAnomaliesDetector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_192CCC900()
{
  v1 = objc_opt_self();
  v6 = sub_192F9679C();
  v2 = [v0 description];
  v3 = sub_192F967CC();
  v5 = v4;

  sub_192CCDBD8(v6, v3, v5, 5, 4, 0, v1);
}

id sub_192CCCAF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_192F9679C();

  return v3;
}

id sub_192CCCB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = &v7[OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_identifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_metricsEvent] = a3;
  v9 = &v7[OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtype];
  *v9 = a4;
  *(v9 + 1) = a5;
  v10 = &v7[OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtypeContext];
  *v10 = a6;
  *(v10 + 1) = a7;
  v12.receiver = v7;
  v12.super_class = type metadata accessor for AutoBugCaptureMetricsEventAnomaly();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_192CCCBE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - v4;
  v6 = [objc_opt_self() currentProcess];
  v7 = sub_19287A8E4(v6);
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = v0 + OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtype;
  v12 = *(v0 + OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtype);
  v13 = *(v11 + 8);
  v14 = *(v1 + OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtypeContext);
  v15 = *(v1 + OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_subtypeContext + 8);
  objc_allocWithZone(type metadata accessor for AutoBugCaptureReport());

  v16 = AutoBugCaptureReport.init(domain:type:subtype:subtypeContext:process:thresholdValues:)(0xD000000000000012, 0x8000000192FCD1B0, 0x7363697274654DLL, 0xE700000000000000, v12, v13, v14, v15, v9, v10, 0);
  v17 = [*(v1 + OBJC_IVAR____TtC18AppleMediaServices33AutoBugCaptureMetricsEventAnomaly_metricsEvent) dictionaryForPosting];
  v18 = sub_192F9669C();

  v19 = sub_192F96C6C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v9;
  v20[5] = v10;
  v20[6] = v16;
  v20[7] = v18;
  sub_192C68270();
}

uint64_t sub_192CCCDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[56] = a6;
  v7[57] = a7;
  v7[54] = a4;
  v7[55] = a5;
  return MEMORY[0x1EEE6DFA0](sub_192CCCE1C, 0, 0);
}

uint64_t sub_192CCCE1C()
{
  if (qword_1EAE121F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = qword_1EAE12200;
  *(v0 + 464) = qword_1EAE12200;
  *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v4 = OUTLINED_FUNCTION_47();
  *(v4 + 16) = xmmword_192FBCD50;
  sub_19287AEE0();
  v47 = v5;
  v6._object = 0x8000000193022E00;
  v6._countAndFlagsBits = 0xD000000000000027;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v6);
  v7 = MEMORY[0x1E69E6158];
  *(v0 + 160) = MEMORY[0x1E69E6158];
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  sub_192878268(v0 + 136, v0 + 168);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;

  sub_19286D180(v0 + 168, v0 + 16);
  *(v0 + 48) = 3;
  v8 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v8 = v45;
  }

  v9 = *(v8 + 16);
  if (v9 >= *(v8 + 24) >> 1)
  {
    OUTLINED_FUNCTION_142();
    v8 = v46;
  }

  *(v8 + 16) = v9 + 1;
  v10 = v8 + 40 * v9;
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  *(v10 + 64) = *(v0 + 48);
  *(v10 + 32) = v11;
  *(v10 + 48) = v12;
  sub_192907DE8(v0 + 136);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  *(v4 + 32) = v8;
  v14 = sub_192F96E7C();
  if (os_log_type_enabled(v3, v14))
  {
    v15 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v16 = byte_1ED6DE5D8;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v0 + 400) = v4;
    *(v0 + 408) = sub_192BB97CC;
    *(v0 + 416) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v18 = sub_192F9674C();
    v20 = v19;

    objc_autoreleasePoolPop(v15);
    v21 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_29_0(v22, v23, v24, v25, v26, v27, v28, v29, v30);
    *(v31 + 56) = v7;
    v22[4].n128_u64[0] = sub_1928FDB30();
    v22[2].n128_u64[0] = v18;
    v22[2].n128_u64[1] = v20;
    sub_192F9622C();

    objc_autoreleasePoolPop(v21);
  }

  v32 = *(v0 + 456);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15600);
  v33 = OUTLINED_FUNCTION_47();
  *(v0 + 480) = v33;
  OUTLINED_FUNCTION_29_0(v33, v34, v35, v36, v37, v38, v39, v40, v41);
  *(v42 + 32) = v32;

  v43 = swift_task_alloc();
  *(v0 + 488) = v43;
  *v43 = v0;
  v43[1] = sub_192CCD1D8;

  return _s18AppleMediaServices20AutoBugCaptureReportC7capture5delay6events7payload7actionsAC8ResponseCSd_SaySDys11AnyHashableVypGGSgAMSgAA23DiagnosticActionOptionsCSgtYaAA0defG5ErrorOYKF();
}

uint64_t sub_192CCD1D8(uint64_t a1)
{
  *(*v2 + 496) = a1;

  if (v1)
  {
    v3 = sub_192CCD610;
  }

  else
  {
    v3 = sub_192CCD30C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_192CCD30C()
{
  v1 = *(v0 + 496);
  v2 = OUTLINED_FUNCTION_47();
  *(v2 + 16) = xmmword_192FBCD50;
  sub_19287AEE0();
  v36 = v3;
  v4._object = 0x8000000193022E50;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 288) = type metadata accessor for AutoBugCaptureReport.Response();
  *(v0 + 264) = v1;
  sub_192878268(v0 + 264, v0 + 296);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  v5 = v1;
  sub_19286D180(v0 + 296, v0 + 96);
  *(v0 + 128) = 3;
  v6 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v6 = v34;
  }

  v7 = *(v6 + 16);
  if (v7 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_142();
    v6 = v35;
  }

  v8 = *(v0 + 464);
  *(v6 + 16) = v7 + 1;
  v9 = v6 + 40 * v7;
  v10 = *(v0 + 96);
  v11 = *(v0 + 112);
  *(v9 + 64) = *(v0 + 128);
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
  sub_192907DE8(v0 + 264);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  *(v2 + 32) = v6;
  v13 = sub_192F96E7C();
  if (os_log_type_enabled(v8, v13))
  {
    v14 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v15 = *(v0 + 496);
    v16 = byte_1ED6DE5D8;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v0 + 376) = v2;
    *(v0 + 384) = sub_192BB97CC;
    *(v0 + 392) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v18 = sub_192F9674C();
    v20 = v19;

    objc_autoreleasePoolPop(v14);
    v21 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_29_0(v22, v23, v24, v25, v26, v27, v28, v29, v30);
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v22[4].n128_u64[0] = sub_1928FDB30();
    v22[2].n128_u64[0] = v18;
    v22[2].n128_u64[1] = v20;
    sub_192F9622C();

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v15 = *(v0 + 496);
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_192CCD610()
{
  v1 = *(v0 + 496);
  sub_192C12944();
  v2 = swift_allocError();
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_47();
  *(v4 + 16) = xmmword_192FBCD50;
  v5 = v2;
  sub_19287AEE0();
  v40 = v6;
  v7._object = 0x8000000193022E30;
  v7._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 328);
  v9 = *(v0 + 336);
  *(v0 + 224) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 200));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v8, v9);
  sub_192878268(v0 + 200, v0 + 232);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_19286D180(v0 + 232, v0 + 56);
  *(v0 + 88) = 3;
  v11 = v40;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v11 = v38;
  }

  v12 = *(v11 + 16);
  if (v12 >= *(v11 + 24) >> 1)
  {
    sub_19287AEE0();
    v11 = v39;
  }

  v13 = *(v0 + 464);
  *(v11 + 16) = v12 + 1;
  v14 = v11 + 40 * v12;
  v15 = *(v0 + 56);
  v16 = *(v0 + 72);
  *(v14 + 64) = *(v0 + 88);
  *(v14 + 32) = v15;
  *(v14 + 48) = v16;
  sub_192907DE8(v0 + 200);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  *(v4 + 32) = v11;
  v18 = sub_192F96E7C();
  if (os_log_type_enabled(v13, v18))
  {
    v19 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v20 = byte_1ED6DE5D8;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v0 + 352) = v4;
    *(v0 + 360) = sub_1928FA5C4;
    *(v0 + 368) = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v22 = sub_192F9674C();
    v24 = v23;

    objc_autoreleasePoolPop(v19);
    v25 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_29_0(v26, v27, v28, v29, v30, v31, v32, v33, v34);
    *(v35 + 56) = MEMORY[0x1E69E6158];
    v26[4].n128_u64[0] = sub_1928FDB30();
    v26[2].n128_u64[0] = v22;
    v26[2].n128_u64[1] = v24;
    sub_192F9622C();

    objc_autoreleasePoolPop(v25);
  }

  v36 = *(v0 + 8);

  return v36();
}

id sub_192CCDA38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_192CCDB04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_192BCCED4;

  return sub_192CCCDF8(a1, v4, v5, v6, v7, v9, v8);
}

void sub_192CCDBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_192F9679C();

  [a7 openWithTitle:a1 description:v12 classification:a4 reproducibility:a5 keywordIds:a6];
}

uint64_t MockAccount.accountType.getter@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_1_58();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  return sub_192CCDCB0(v3, v4);
}

uint64_t sub_192CCDCB0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t MockAccount.accountType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  OUTLINED_FUNCTION_3_53();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return sub_192CCDD08(v4, v5);
}

uint64_t sub_192CCDD08(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t MockAccount.altDSID.getter()
{
  OUTLINED_FUNCTION_1_58();

  return OUTLINED_FUNCTION_88();
}

uint64_t MockAccount.altDSID.setter()
{
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3_53();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t MockAccount.dsid.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_3_53();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t MockAccount.firstName.getter()
{
  OUTLINED_FUNCTION_1_58();

  return OUTLINED_FUNCTION_88();
}

uint64_t MockAccount.firstName.setter()
{
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3_53();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t MockAccount.identifier.getter()
{
  OUTLINED_FUNCTION_1_58();

  return OUTLINED_FUNCTION_88();
}

uint64_t MockAccount.identifier.setter()
{
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3_53();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

uint64_t MockAccount.lastName.getter()
{
  OUTLINED_FUNCTION_1_58();

  return OUTLINED_FUNCTION_88();
}

uint64_t MockAccount.lastName.setter()
{
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3_53();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
}

uint64_t MockAccount.username.getter()
{
  OUTLINED_FUNCTION_1_58();

  return OUTLINED_FUNCTION_88();
}

uint64_t MockAccount.username.setter()
{
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3_53();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
}

uint64_t MockAccount.init(accountType:altDSID:dsid:firstName:identifier:lastName:username:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *a1;
  v14 = a1[1];
  *(v13 + 16) = xmmword_192FC04A0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 56) = 1;
  *(v13 + 112) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 128) = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_8_40();
  v16 = *(v13 + 16);
  v17 = *(v13 + 24);
  *(v13 + 16) = v15;
  *(v13 + 24) = v14;
  sub_192CCDD08(v16, v17);
  OUTLINED_FUNCTION_8_40();
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;

  OUTLINED_FUNCTION_8_40();
  *(v13 + 48) = a4;
  *(v13 + 56) = a5 & 1;
  OUTLINED_FUNCTION_8_40();
  *(v13 + 64) = a6;
  *(v13 + 72) = a7;

  OUTLINED_FUNCTION_8_40();
  *(v13 + 80) = a8;
  *(v13 + 88) = a9;

  OUTLINED_FUNCTION_8_40();
  *(v13 + 96) = a10;
  *(v13 + 104) = a11;

  OUTLINED_FUNCTION_8_40();
  *(v13 + 112) = a12;
  *(v13 + 120) = a13;

  return v13;
}

Swift::Bool __swiftcall MockAccount.isActive(for:)(__C::AMSAccountMediaType a1)
{
  OUTLINED_FUNCTION_1_58();

  v1 = OUTLINED_FUNCTION_88();
  v3 = sub_192C5848C(v1, v2);

  return v3 & 1;
}

Swift::Void __swiftcall MockAccount.setActive(_:for:)(Swift::Bool _, __C::AMSAccountMediaType a2)
{
  if (_)
  {
    OUTLINED_FUNCTION_22_23();
    sub_192CCF1E4(&v4, a2._rawValue);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_22_23();
    v3 = sub_192CD2464();
    swift_endAccess();
  }
}

uint64_t MockAccount.deinit()
{
  sub_192CCDD08(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t MockAccount.__deallocating_deinit()
{
  MockAccount.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_192CCE63C@<X0>(uint64_t *a1@<X8>)
{
  result = MockAccount.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static MockAccount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_39();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_5_39();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v5 == 1)
  {
    sub_192CCDCB0(v4, 1);
    if (v7 == 1)
    {
      sub_192CCDCB0(v6, 1);
      goto LABEL_27;
    }

    v12 = OUTLINED_FUNCTION_39();
    sub_192CCDCB0(v12, v13);
    goto LABEL_7;
  }

  if (v7 == 1)
  {
    v8 = OUTLINED_FUNCTION_0_47();
    sub_192CCDCB0(v8, v9);
    sub_192CCDCB0(v6, 1);
    v10 = OUTLINED_FUNCTION_0_47();
    sub_192CCDCB0(v10, v11);

LABEL_7:
    v14 = OUTLINED_FUNCTION_0_47();
    sub_192CCDD08(v14, v15);
    v16 = OUTLINED_FUNCTION_39();
LABEL_21:
    sub_192CCDD08(v16, v17);
    goto LABEL_22;
  }

  if (!v5)
  {
    sub_192CCDCB0(v4, 0);
    v28 = 0;
    if (!v7)
    {
      sub_192CCDCB0(v6, 0);
      sub_192CCDCB0(v4, 0);
      v29 = v6;
      v30 = 0;
      goto LABEL_25;
    }

LABEL_19:
    v33 = OUTLINED_FUNCTION_39();
    sub_192CCDCB0(v33, v34);
    sub_192CCDCB0(v4, v28);
    v35 = OUTLINED_FUNCTION_39();
    sub_192CCDD08(v35, v36);
    goto LABEL_20;
  }

  if (!v7)
  {
    v31 = OUTLINED_FUNCTION_0_47();
    sub_192CCDCB0(v31, v32);
    v28 = v5;
    goto LABEL_19;
  }

  if (v4 != v6 || v5 != v7)
  {
    v19 = sub_192F9775C();
    v20 = OUTLINED_FUNCTION_0_47();
    sub_192CCDCB0(v20, v21);
    v22 = OUTLINED_FUNCTION_39();
    sub_192CCDCB0(v22, v23);
    v24 = OUTLINED_FUNCTION_0_47();
    sub_192CCDCB0(v24, v25);
    v26 = OUTLINED_FUNCTION_39();
    sub_192CCDD08(v26, v27);
    if (v19)
    {
      goto LABEL_26;
    }

LABEL_20:

    v16 = OUTLINED_FUNCTION_0_47();
    goto LABEL_21;
  }

  sub_192CCDCB0(v4, v5);
  v39 = OUTLINED_FUNCTION_0_47();
  sub_192CCDCB0(v39, v40);
  v41 = OUTLINED_FUNCTION_0_47();
  sub_192CCDCB0(v41, v42);
  v29 = OUTLINED_FUNCTION_0_47();
LABEL_25:
  sub_192CCDD08(v29, v30);
LABEL_26:

LABEL_27:
  v43 = OUTLINED_FUNCTION_0_47();
  sub_192CCDD08(v43, v44);
  OUTLINED_FUNCTION_5_39();
  v45 = *(a1 + 32);
  v46 = *(a1 + 40);
  OUTLINED_FUNCTION_5_39();
  v47 = *(a2 + 40);
  if (v46)
  {
    if (!v47)
    {
      goto LABEL_22;
    }

    if (v45 != *(a2 + 32) || v46 != v47)
    {
      OUTLINED_FUNCTION_0_47();
      if ((sub_192F9775C() & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v47)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_5_39();
  v49 = *(a1 + 48);
  v50 = *(a1 + 56);
  OUTLINED_FUNCTION_5_39();
  v51 = *(a2 + 56);
  if (v50)
  {
    if (!*(a2 + 56))
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v49 != *(a2 + 48))
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_5_39();
  v52 = *(a1 + 64);
  v53 = *(a1 + 72);
  OUTLINED_FUNCTION_5_39();
  v54 = *(a2 + 72);
  if (v53)
  {
    if (!v54)
    {
      goto LABEL_22;
    }

    if (v52 != *(a2 + 64) || v53 != v54)
    {
      OUTLINED_FUNCTION_0_47();
      if ((sub_192F9775C() & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v54)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_5_39();
  v56 = *(a1 + 80);
  v57 = *(a1 + 88);
  OUTLINED_FUNCTION_5_39();
  v58 = *(a2 + 88);
  if (v57)
  {
    if (!v58)
    {
      goto LABEL_22;
    }

    if (v56 != *(a2 + 80) || v57 != v58)
    {
      OUTLINED_FUNCTION_0_47();
      if ((sub_192F9775C() & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v58)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_5_39();
  v60 = *(a1 + 96);
  v61 = *(a1 + 104);
  OUTLINED_FUNCTION_5_39();
  v62 = *(a2 + 104);
  if (!v61)
  {
    if (!v62)
    {
      goto LABEL_69;
    }

LABEL_22:
    v37 = 0;
    return v37 & 1;
  }

  if (!v62)
  {
    goto LABEL_22;
  }

  if (v60 != *(a2 + 96) || v61 != v62)
  {
    OUTLINED_FUNCTION_0_47();
    if ((sub_192F9775C() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_69:
  OUTLINED_FUNCTION_5_39();
  v65 = *(a1 + 112);
  v64 = *(a1 + 120);
  OUTLINED_FUNCTION_5_39();
  v66 = *(a2 + 120);
  v37 = (v64 | v66) == 0;
  if (v64 && v66)
  {
    if (v65 == *(a2 + 112) && v64 == v66)
    {
      v37 = 1;
    }

    else
    {
      v37 = sub_192F9775C();
    }
  }

  return v37 & 1;
}

uint64_t MockAccount.hash(into:)()
{
  OUTLINED_FUNCTION_5_39();
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v2 = *(v0 + 16);
    sub_192F978BC();
    sub_192F978BC();
    if (v1)
    {

      sub_192F968BC();
      v3 = OUTLINED_FUNCTION_0_47();
    }

    else
    {
      v3 = v2;
      v4 = 0;
    }

    sub_192CCDD08(v3, v4);
  }

  OUTLINED_FUNCTION_5_39();
  if (*(v0 + 40))
  {
    sub_192F978BC();

    OUTLINED_FUNCTION_11_36();
  }

  else
  {
    sub_192F978BC();
  }

  OUTLINED_FUNCTION_5_39();
  if (*(v0 + 56) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v5 = *(v0 + 48);
    sub_192F978BC();
    MEMORY[0x193B11CB0](v5);
  }

  OUTLINED_FUNCTION_5_39();
  if (*(v0 + 72))
  {
    sub_192F978BC();

    OUTLINED_FUNCTION_11_36();
  }

  else
  {
    sub_192F978BC();
  }

  OUTLINED_FUNCTION_5_39();
  if (*(v0 + 88))
  {
    sub_192F978BC();

    OUTLINED_FUNCTION_11_36();
  }

  else
  {
    sub_192F978BC();
  }

  OUTLINED_FUNCTION_5_39();
  if (*(v0 + 104))
  {
    sub_192F978BC();

    OUTLINED_FUNCTION_11_36();
  }

  else
  {
    sub_192F978BC();
  }

  OUTLINED_FUNCTION_1_58();
  if (!*(v0 + 120))
  {
    return sub_192F978BC();
  }

  sub_192F978BC();

  sub_192F968BC();
}

uint64_t MockAccount.hashValue.getter()
{
  sub_192F9789C();
  MockAccount.hash(into:)();
  return sub_192F978DC();
}

uint64_t sub_192CCED84()
{
  sub_192F9789C();
  MockAccount.hash(into:)();
  return sub_192F978DC();
}

void sub_192CCEDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_27();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *v9;
  if ((*v9 & 0xC000000000000001) == 0)
  {
    type metadata accessor for MockAccount();
    sub_192F9789C();
    MockAccount.hash(into:)();
    sub_192F978DC();
    OUTLINED_FUNCTION_6_43();
    v20 = ~v19;
    while (1)
    {
      v21 = v18 & v20;
      if (((*(v15 + 56 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v20)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *v9;

        sub_192CD03BC(v28, v21, isUniquelyReferenced_nonNull_native);
        *v9 = v29;
        goto LABEL_16;
      }

      v23 = static MockAccount.== infix(_:_:)(v22, v12);

      if (v23)
      {
        break;
      }

      v18 = v21 + 1;
    }

    *v14 = *(*(v15 + 48) + 8 * v21);

    goto LABEL_18;
  }

  if (v15 < 0)
  {
    v16 = *v9;
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v17 = sub_192F9720C();

  if (v17)
  {

    type metadata accessor for MockAccount();
    swift_dynamicCast();
    *v14 = a9;
LABEL_18:
    OUTLINED_FUNCTION_10_0();
    return;
  }

  v24 = sub_192F971FC();
  if (!__OFADD__(v24, 1))
  {
    v25 = sub_192CCF388(v16, v24 + 1);
    if (*(v25 + 24) <= *(v25 + 16))
    {
      sub_192CCF76C();
    }

    sub_192CD0318(v26, v25);

    *v10 = v25;
LABEL_16:
    *v14 = v12;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_192CCEFC0()
{
  OUTLINED_FUNCTION_12_27();
  sub_192F968BC();
  MEMORY[0x193B11C90](v1);
  sub_192F978DC();
  OUTLINED_FUNCTION_4_55();
  if (v3)
  {
    while (1)
    {
      OUTLINED_FUNCTION_19_22();
      v5 = v5 && v4 == v0;
      if (v5 || (sub_192F9775C()) && v2 == v1)
      {
        break;
      }

      OUTLINED_FUNCTION_14_26();
      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_7_39(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    return 0;
  }

  else
  {
LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_21_21();
    v7 = OUTLINED_FUNCTION_9_35();
    v12 = sub_192CD0520(v7, v8, v9, v10, v11);
    return OUTLINED_FUNCTION_18_25(v12, v13, v14, v15, v16, v17, v18, v19, v29, v30, v31, v32);
  }
}

uint64_t sub_192CCF0A0(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_20_25();
  if (a3)
  {
    MEMORY[0x193B11C90](1);
  }

  else
  {
    MEMORY[0x193B11C90](0);
    MEMORY[0x193B11CB0](a2);
  }

  v8 = sub_192F978DC();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v5 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = v13;
          goto LABEL_13;
        }
      }

      else if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_13;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  sub_192CD06D0(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v4 = v17;
  result = 1;
  v14 = a3;
LABEL_13:
  *v3 = a2;
  *(v3 + 8) = v14 & 1;
  return result;
}

BOOL sub_192CCF1E4(void *a1, void *a2)
{
  v4 = *v2;
  sub_192F967CC();
  sub_192F9789C();
  sub_192F968BC();
  v5 = sub_192F978DC();

  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v20;
      v16 = a2;
      sub_192CD0870(v16, v7, isUniquelyReferenced_nonNull_native);
      *v20 = v22;
      *a1 = v16;
      return v8 == 0;
    }

    v9 = sub_192F967CC();
    v11 = v10;
    if (v9 == sub_192F967CC() && v11 == v12)
    {

      goto LABEL_12;
    }

    v14 = sub_192F9775C();

    if (v14)
    {
      break;
    }

    v5 = v7 + 1;
  }

LABEL_12:
  v17 = *(*(v4 + 48) + 8 * v7);
  *a1 = v17;
  v18 = v17;
  return v8 == 0;
}

uint64_t sub_192CCF388(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13280);
    v2 = sub_192F9728C();
    v6 = v2;
    sub_192F971EC();
    while (sub_192F9721C())
    {
      type metadata accessor for MockAccount();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_192CCF76C();
      }

      v2 = v6;
      sub_192F9789C();
      MockAccount.hash(into:)();
      sub_192F978DC();
      v3 = sub_192F971DC();
      *(v6 + 56 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      *(*(v6 + 48) + 8 * v3) = v5;
      ++*(v6 + 16);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_192CCF4F0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14478);
  result = sub_192F9727C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      sub_192942B74(0, (v28 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 24 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    sub_192F9789C();
    sub_192F968BC();
    MEMORY[0x193B11CB0](v18);
    result = sub_192F978DC();
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v4 + 48) + 24 * v22);
    *v27 = v16;
    v27[1] = v17;
    v27[2] = v18;
    ++*(v4 + 16);
    v2 = v29;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v11 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_192CCF76C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13280);
  result = sub_192F9727C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    for (i = result + 56; v9; ++*(v4 + 16))
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_192F9789C();
      MockAccount.hash(into:)();
      sub_192F978DC();
      result = sub_192F971DC();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v4 + 48) + 8 * result) = v15;
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v16 = 1 << *(v2 + 32);
    if (v16 >= 64)
    {
      sub_192942B74(0, (v16 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v16;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_192CCF94C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15618);
  result = sub_192F9727C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v29 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      sub_192942B74(0, (v28 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 24 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    sub_192F9789C();
    sub_192F968BC();
    MEMORY[0x193B11C90](v18);
    result = sub_192F978DC();
    v19 = -1 << *(v4 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v4 + 48) + 24 * v22);
    *v27 = v16;
    v27[1] = v17;
    v27[2] = v18;
    ++*(v4 + 16);
    v2 = v29;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v11 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_192CCFBC8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15628);
  result = sub_192F9727C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_30:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_192942B74(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 16 * (v12 | (v5 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    sub_192F9789C();
    if (v17)
    {
      MEMORY[0x193B11C90](1);
    }

    else
    {
      MEMORY[0x193B11C90](0);
      MEMORY[0x193B11CB0](v16);
    }

    result = sub_192F978DC();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v4 + 48) + 16 * v21;
    *v26 = v16;
    *(v26 + 8) = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_192CCFE44()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE141E8);
  result = sub_192F9727C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_192942B74(0, (v25 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(v2 + 48) + 40 * (v12 | (v5 << 6));
    v26 = *v15;
    v27 = *(v15 + 16);
    v28 = *(v15 + 32);
    result = sub_192F9723C();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v4 + 48) + 40 * v19;
    *v24 = v26;
    *(v24 + 16) = v27;
    *(v24 + 32) = v28;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_192CD00A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15610);
  result = sub_192F9727C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v26 = v0;
  v27 = v2;
  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      sub_192942B74(0, (v25 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_192F967CC();
    sub_192F9789C();
    sub_192F968BC();
    v16 = sub_192F978DC();

    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v4 + 48) + 8 * v20) = v15;
    ++*(v4 + 16);
    v2 = v27;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v11 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_192CD0318(uint64_t a1, uint64_t a2)
{
  sub_192F9789C();
  MockAccount.hash(into:)();
  sub_192F978DC();
  result = sub_192F971DC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_192CD03BC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_192CCF76C();
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_192CD1618();
LABEL_10:
      v12 = *v3;
      sub_192F9789C();
      MockAccount.hash(into:)();
      result = sub_192F978DC();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for MockAccount();

        v15 = static MockAccount.== infix(_:_:)(v14, v5);

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_192CD0BA4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_192F977BC();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_192CD0520(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_192CCF94C();
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_192CD0CF4();
      goto LABEL_17;
    }

    sub_192CD17C0();
  }

  v13 = *v5;
  sub_192F9789C();
  sub_192F968BC();
  MEMORY[0x193B11C90](a3);
  result = sub_192F978DC();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    do
    {
      v18 = (v17 + 24 * a4);
      result = *v18;
      v19 = v18[2];
      v20 = *v18 == v10 && v18[1] == a2;
      if (v20 || (result = sub_192F9775C(), (result & 1) != 0))
      {
        if (v19 == a3)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v16;
    }

    while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = (*(v21 + 48) + 24 * a4);
  *v22 = v10;
  v22[1] = a2;
  v22[2] = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_20:
  result = sub_192F977BC();
  __break(1u);
  return result;
}

uint64_t sub_192CD06D0(uint64_t result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_192CCFBC8();
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_192CD0E58();
        goto LABEL_19;
      }

      sub_192CD1A14();
    }

    v10 = *v4;
    sub_192F9789C();
    if (a2)
    {
      MEMORY[0x193B11C90](1);
    }

    else
    {
      MEMORY[0x193B11C90](0);
      MEMORY[0x193B11CB0](v7);
    }

    result = sub_192F978DC();
    v11 = -1 << *(v10 + 32);
    a3 = result & ~v11;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v12 = ~v11;
      do
      {
        v13 = *(v10 + 48) + 16 * a3;
        if (*(v13 + 8))
        {
          if (a2)
          {
            goto LABEL_22;
          }
        }

        else if ((a2 & 1) == 0 && *v13 == v7)
        {
          goto LABEL_22;
        }

        a3 = (a3 + 1) & v12;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_19:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = v7;
  *(v15 + 8) = a2 & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15620);
    result = sub_192F977BC();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

uint64_t sub_192CD0870(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_192CD00A0();
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_192CD20BC();
LABEL_10:
      v13 = *v3;
      sub_192F967CC();
      sub_192F9789C();
      sub_192F968BC();
      v14 = sub_192F978DC();

      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for AMSAccountMediaType(0);
        v16 = sub_192F967CC();
        v18 = v17;
        if (v16 == sub_192F967CC() && v18 == v19)
        {
          goto LABEL_19;
        }

        v21 = sub_192F9775C();

        if (v21)
        {
          goto LABEL_20;
        }

        v14 = a2 + 1;
      }
    }

    result = sub_192CD1274();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_192F977BC();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

void *sub_192CD0A40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14478);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + 8 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_192CD0BA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13280);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_192CD0CF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15618);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + 8 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_192CD0E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15628);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(v4 + 48) + 16 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_192CD0FA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE141E8);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 5 * v17;
        result = sub_192948314(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_192CD111C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE132B8);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_192CD1274()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15610);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_192CD13C4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14478);
  result = sub_192F9727C();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v2 + 48) + 24 * (v12 | (v5 << 6)));
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        sub_192F9789C();

        sub_192F968BC();
        MEMORY[0x193B11CB0](v18);
        result = sub_192F978DC();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v4 + 48) + 24 * v22);
        *v27 = v16;
        v27[1] = v17;
        v27[2] = v18;
        ++*(v4 + 16);
        v2 = v28;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_192CD1618()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13280);
  result = sub_192F9727C();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    for (i = result + 56; v7; ++*(v3 + 16))
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v13 = *(*(v1 + 48) + 8 * (v10 | (v4 << 6)));
      sub_192F9789C();

      MockAccount.hash(into:)();
      sub_192F978DC();
      result = sub_192F971DC();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 48) + 8 * result) = v13;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_14;
      }

      v12 = *(v1 + 56 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_192CD17C0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15618);
  result = sub_192F9727C();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v2 + 48) + 24 * (v12 | (v5 << 6)));
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        sub_192F9789C();

        sub_192F968BC();
        MEMORY[0x193B11C90](v18);
        result = sub_192F978DC();
        v19 = -1 << *(v4 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v4 + 48) + 24 * v22);
        *v27 = v16;
        v27[1] = v17;
        v27[2] = v18;
        ++*(v4 + 16);
        v2 = v28;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_192CD1A14()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15628);
  result = sub_192F9727C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(v2 + 48) + 16 * (v11 | (v5 << 6));
        v15 = *v14;
        v16 = *(v14 + 8);
        sub_192F9789C();
        if (v16)
        {
          MEMORY[0x193B11C90](1);
        }

        else
        {
          MEMORY[0x193B11C90](0);
          MEMORY[0x193B11CB0](v15);
        }

        result = sub_192F978DC();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = *(v4 + 48) + 16 * v20;
        *v25 = v15;
        *(v25 + 8) = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_28;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_192CD1C60()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE141E8);
  result = sub_192F9727C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        sub_192948314(*(v2 + 48) + 40 * (v11 | (v5 << 6)), v25);
        result = sub_192F9723C();
        v14 = -1 << *(v4 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v10 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        v17 = __clz(__rbit64((-1 << v15) & ~*(v10 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v22 = *(v4 + 48) + 40 * v17;
        v23 = v25[0];
        v24 = v25[1];
        *(v22 + 32) = v26;
        *v22 = v23;
        *(v22 + 16) = v24;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v10 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_192CD1E88()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE132B8);
  result = sub_192F9727C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_192F9789C();

        sub_192F968BC();
        result = sub_192F978DC();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_192CD20BC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15610);
  result = sub_192F9727C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
        sub_192F967CC();
        sub_192F9789C();
        v16 = v15;
        sub_192F968BC();
        v17 = sub_192F978DC();

        v18 = -1 << *(v4 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v4 + 48) + 8 * v21) = v16;
        ++*(v4 + 16);
        v2 = v27;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v1 = v26;
          goto LABEL_25;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void sub_192CD230C()
{
  OUTLINED_FUNCTION_15_27();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v24 = v0;
  v9 = *v0;
  sub_192F9789C();
  sub_192F968BC();
  MEMORY[0x193B11CB0](v2);
  sub_192F978DC();
  v10 = v9 + 56;
  OUTLINED_FUNCTION_6_43();
  v13 = v12 & ~v11;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = (v15 + 24 * v13);
      v17 = v16[2];
      v18 = *v16 == v6 && v16[1] == v4;
      if (v18 || (sub_192F9775C()) && v17 == v2)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v24;
    v25 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_192CD0A40();
      v20 = v25;
    }

    v21 = *(v20 + 48) + 24 * v13;
    v22 = *v21;
    v23 = *(v21 + 16);
    *v8 = v22;
    *(v8 + 16) = v23;
    sub_192CD26B0(v13);
    *v24 = v25;
  }

  else
  {
LABEL_10:
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
  }

  OUTLINED_FUNCTION_10_0();
}

uint64_t sub_192CD2464()
{
  v1 = v0;
  v2 = *v0;
  sub_192F967CC();
  sub_192F9789C();
  sub_192F968BC();
  v3 = sub_192F978DC();

  v4 = ~(-1 << *(v2 + 32));
  while (1)
  {
    v5 = v3 & v4;
    if (((*(v2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v3 & v4)) & 1) == 0)
    {
      return 0;
    }

    v6 = sub_192F967CC();
    v8 = v7;
    if (v6 == sub_192F967CC() && v8 == v9)
    {
      break;
    }

    v11 = sub_192F9775C();

    if (v11)
    {
      goto LABEL_11;
    }

    v3 = v5 + 1;
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_192CD1274();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 8 * v5);
  sub_192CD288C(v5);
  *v1 = v16;
  return v12;
}

unint64_t sub_192CD25F0()
{
  result = qword_1EAE15608;
  if (!qword_1EAE15608)
  {
    type metadata accessor for MockAccount();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15608);
  }

  return result;
}

unint64_t sub_192CD26B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_192F971BC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 24 * v6 + 16);
        sub_192F9789C();

        sub_192F968BC();
        MEMORY[0x193B11CB0](v10);
        v11 = sub_192F978DC();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = v15 + 24 * v2;
            v17 = (v15 + 24 * v6);
            if (v2 != v6 || v16 >= v17 + 24)
            {
              v19 = *v17;
              *(v16 + 16) = *(v17 + 2);
              *v16 = v19;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_192CD288C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_192F971BC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_192F967CC();
        sub_192F9789C();
        v11 = v10;
        sub_192F968BC();
        v12 = sub_192F978DC();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_192CD2A60(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_192CD2AD8(v1);
}

void *sub_192CD2A94()
{
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_192CD2AD8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_192CD2B9C()
{
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
}

uint64_t sub_192CD2BD0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t MockAccountStore.__allocating_init(accounts:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MockAccountStore.init(accounts:)(a1);
  return v2;
}

void *MockAccountStore.init(accounts:)(uint64_t a1)
{
  v1[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
  v1[4] = sub_192F966CC();
  v1[2] = a1;
  return v1;
}

uint64_t sub_192CD2D0C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CD2D24()
{
  v1 = v0[10];
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v21 = MEMORY[0x1E69E7CC0];
  v6 = -1;
  v7 = -1 << *(*(v1 + 16) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v8 &= v8 - 1;

        result = sub_192BD077C(v13);
      }

      while (v8);
      continue;
    }
  }

  v14 = v0[9];

  result = sub_19295466C(v21);
  v15 = result;
  for (i = 0; v15 != i; ++i)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x193B116C0](i, v21);
      v17 = result;
    }

    else
    {
      if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v17 = *(v21 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_4_3();
    swift_beginAccess();
    v18 = *(v17 + 88);
    if (v18)
    {
      if (v14)
      {
        v19 = *(v17 + 80) == v0[8] && v18 == v0[9];
        if (v19 || (sub_192F9775C() & 1) != 0)
        {
LABEL_28:

          goto LABEL_30;
        }
      }
    }

    else if (!v14)
    {
      goto LABEL_28;
    }
  }

  v17 = 0;
LABEL_30:
  OUTLINED_FUNCTION_40();

  return v20(v17);
}

uint64_t sub_192CD2F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CD2F68()
{
  result = v0[4];
  if (result)
  {
    OUTLINED_FUNCTION_5();
    v2 = v0[2];
    *v2 = v0[3];
    v2[1] = v3;
    OUTLINED_FUNCTION_40();
    v5 = v4;

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_192CD2FDC(_OWORD *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CD2FF8()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[5];
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);

  if (v3 && (v4 = sub_192BD4464(v0[6], v0[7]), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + 8 * v4);
  }

  else if (sub_19295466C(MEMORY[0x1E69E7CC0]))
  {
    sub_192BE065C(MEMORY[0x1E69E7CC0]);
    v6 = v7;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  v8 = sub_192CD3DE0(v6);

  OUTLINED_FUNCTION_40();

  return v9(v8);
}

void sub_192CD30E0(void *a1@<X8>)
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_192F971FC())
  {
    sub_192BE065C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *a1 = v2;
}

uint64_t sub_192CD313C(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CD3150()
{
  v37 = v0;
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_4_3();
  result = swift_beginAccess();
  v3 = *(v1 + 88);
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v6 = *(v4 + 32);

  v7 = sub_192BD2ACC(v5, v3, v6);

  if (v7)
  {
LABEL_5:
    swift_willThrow();
    OUTLINED_FUNCTION_43();
LABEL_6:

    return v11();
  }

  v8 = *(v0 + 144);
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = v9;
    goto LABEL_5;
  }

  v12 = *(v0 + 136);
  OUTLINED_FUNCTION_4_3();
  result = swift_beginAccess();
  v13 = *(v12 + 24);
  if (v13 == 1)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v14 = *(v12 + 16);
  v15 = *(v0 + 144);
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v36[0] = *(v15 + 16);
  v16 = v36[0];
  *(v15 + 16) = 0x8000000000000000;
  v17 = OUTLINED_FUNCTION_91();
  result = sub_192BD4464(v17, v18);
  if (__OFADD__(*(v16 + 16), (v19 & 1) == 0))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = result;
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15630);
  v22 = v36[0];
  if ((sub_192F9741C() & 1) == 0)
  {
LABEL_17:
    *(v15 + 16) = v36[0];
    if (v21)
    {
      v27 = OUTLINED_FUNCTION_91();
      sub_192CCDD08(v27, v28);
    }

    else
    {
      sub_192CD30E0(v36);
      sub_1929119A0(v20, v14, v13, v36[0], v22);
    }

    v29 = *(v0 + 136);

    sub_192CCEDC4(v36, v29, v30, v31, v32, v33, v34, v35, v36[0]);
    swift_endAccess();

    OUTLINED_FUNCTION_43();
    goto LABEL_6;
  }

  v23 = OUTLINED_FUNCTION_91();
  v25 = sub_192BD4464(v23, v24);
  if ((v21 & 1) == (v26 & 1))
  {
    v20 = v25;
    goto LABEL_17;
  }

  return sub_192F977CC();
}

uint64_t MockAccountStore.deinit()
{

  return v0;
}

uint64_t MockAccountStore.__deallocating_deinit()
{
  MockAccountStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_192CD344C(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_192CD34F4;

  return sub_192CD2D0C(v3, v4);
}

uint64_t sub_192CD34F4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_40();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_192CD35F0()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  v3 = *v2;
  v4 = v2[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38(v5);
  *v6 = v7;
  v6[1] = sub_192CD4524;

  return sub_192CD2F50(v1, v3, v4);
}

uint64_t sub_192CD3694()
{
  OUTLINED_FUNCTION_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_0(v1);

  return sub_192CD2FDC(v3);
}

uint64_t sub_192CD371C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_40();
  v3 = *v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_192CD3804()
{
  OUTLINED_FUNCTION_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_0(v1);

  return sub_192CD313C(v3);
}

uint64_t sub_192CD3890()
{
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t MockAccountStore.account(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v5 = *(v2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v8 &= v8 - 1;

        result = sub_192BD077C(v13);
      }

      while (v8);
      continue;
    }
  }

  result = sub_19295466C(v19);
  v14 = result;
  for (i = 0; v14 != i; ++i)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x193B116C0](i, v19);
      v16 = result;
    }

    else
    {
      if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v16 = *(v19 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_4_3();
    swift_beginAccess();
    v17 = *(v16 + 88);
    if (v17)
    {
      if (a2)
      {
        v18 = *(v16 + 80) == a1 && v17 == a2;
        if (v18 || (sub_192F9775C() & 1) != 0)
        {
LABEL_28:

          return v16;
        }
      }
    }

    else if (!a2)
    {
      goto LABEL_28;
    }
  }

  return 0;
}

AppleMediaServices::MockAccountType_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MockAccountStore.accountType(withIdentifier:)(Swift::String_optional withIdentifier)
{
  if (withIdentifier.value._object)
  {
    *v1 = withIdentifier;
  }

  else
  {
    __break(1u);
  }

  result.value.identifier = withIdentifier;
  result.is_nil = v2;
  return result;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MockAccountStore.accounts(with:)(AppleMediaServices::MockAccountType with)
{
  v2 = *with.identifier.value._countAndFlagsBits;
  v3 = *(with.identifier.value._countAndFlagsBits + 8);
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);

  if (v5 && (v6 = sub_192BD4464(v2, v3), (v7 & 1) != 0))
  {
    v8 = *(*(v4 + 56) + 8 * v6);
  }

  else if (sub_19295466C(MEMORY[0x1E69E7CC0]))
  {
    sub_192BE065C(MEMORY[0x1E69E7CC0]);
    v8 = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  v10 = sub_192CD3DE0(v8);

  v12 = v10;
  result.value._rawValue = v12;
  result.is_nil = v11;
  return result;
}

uint64_t sub_192CD3C6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MockAccountStore.account(withIdentifier:)(*a1, a1[1]);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_192CD3CE8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

size_t sub_192CD3D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_192C38B68(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12D18) - 8);
  sub_192C38E5C(v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  OUTLINED_FUNCTION_8_41();
  OUTLINED_FUNCTION_13_25();
  if (!v5)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_192CD3DE0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_192F971FC();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_192C39684(v2, 0);

    v1 = sub_192C390B8(&v5, (v3 + 32), v2, v1);
    sub_1928FAA7C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t dispatch thunk of MockAccountStore.account(withIdentifier:)()
{
  OUTLINED_FUNCTION_39_4();
  v6 = (*(v0 + 184) + **(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_38(v1);
  *v2 = v3;
  v2[1] = sub_192CD40E0;
  v4 = OUTLINED_FUNCTION_91();

  return v6(v4);
}

uint64_t sub_192CD40E0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_40();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;

  OUTLINED_FUNCTION_40();

  return v4(v0);
}

uint64_t dispatch thunk of MockAccountStore.accountType(withIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_39_4();
  v11 = (*(v6 + 192) + **(v6 + 192));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_38(v7);
  *v8 = v9;
  v8[1] = sub_192CD4524;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MockAccountStore.accounts(with:)()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_39_4();
  v6 = (*(v0 + 200) + **(v0 + 200));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_38(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_0(v2);

  return v6(v4);
}

uint64_t dispatch thunk of MockAccountStore.saveAccount(_:doVerify:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_39_4();
  v9 = (*(v4 + 208) + **(v4 + 208));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38(v5);
  *v6 = v7;
  v6[1] = sub_192CD3890;

  return v9(a1, a2);
}

AppleMediaServices::MockAccountType __swiftcall MockAccountType.init(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.identifier.value._object = v6;
  result.identifier.value._countAndFlagsBits = v5;
  return result;
}

uint64_t MockAccountType.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MockAccountType.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static MockAccountType.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_192F9775C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t MockAccountType.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return sub_192F978BC();
  }

  sub_192F978BC();

  return sub_192F968BC();
}

uint64_t MockAccountType.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_192F9789C();
  sub_192F978BC();
  if (v1)
  {
    sub_192F968BC();
  }

  return sub_192F978DC();
}

uint64_t sub_192CD4738@<X0>(uint64_t *a1@<X8>)
{
  result = static MockAccountType.iTunesTypeIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static MockAccountType.iTunesTypeIdentifier.getter()
{
  if (qword_1EAE125C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED6DE318;

  return v0;
}

uint64_t sub_192CD47C8@<X0>(uint64_t *a1@<X8>)
{
  result = MockAccountType.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_192CD47FC()
{
  v1 = *(v0 + 8);
  sub_192F9789C();
  sub_192F978BC();
  if (v1)
  {
    sub_192F968BC();
  }

  return sub_192F978DC();
}

uint64_t sub_192CD4868()
{
  result = sub_192F967CC();
  qword_1ED6DE318 = result;
  unk_1ED6DE320 = v1;
  return result;
}

unint64_t sub_192CD489C()
{
  result = qword_1EAE15638;
  if (!qword_1EAE15638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15638);
  }

  return result;
}

uint64_t sub_192CD48F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_192CD4944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_192CD49AC@<X0>(uint64_t *a1@<X8>)
{
  result = MockAuthenticateResult.account.getter();
  *a1 = result;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void __swiftcall NSURL.ams_appending(queryParameters:)(NSURL_optional *__return_ptr retstr, Swift::OpaquePointer queryParameters)
{
  v53 = sub_192F9550C();
  OUTLINED_FUNCTION_4_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v12 = v11;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v42 - v19;
  v21 = *(queryParameters._rawValue + 2);
  if (v21)
  {
    v43 = v17;
    v44 = &v42 - v19;
    v45 = v12;
    v46 = v10;
    v47 = v2;
    v57 = MEMORY[0x1E69E7CC0];
    sub_192875310(0, v21, 0);
    v56 = v57;
    v24 = sub_19291E3C4();
    v25 = 0;
    v26 = queryParameters._rawValue + 64;
    v51 = v5 + 32;
    v52 = v5;
    v48 = queryParameters._rawValue + 72;
    v49 = v21;
    v50 = queryParameters._rawValue + 64;
    if ((v24 & 0x8000000000000000) == 0)
    {
      while (v24 < 1 << *(queryParameters._rawValue + 32))
      {
        v27 = v24 >> 6;
        if ((*&v26[8 * (v24 >> 6)] & (1 << v24)) == 0)
        {
          goto LABEL_25;
        }

        if (*(queryParameters._rawValue + 9) != v22)
        {
          goto LABEL_26;
        }

        v54 = v23;
        v55 = v22;
        rawValue = queryParameters._rawValue;

        sub_192F954DC();

        v29 = v56;
        v57 = v56;
        v31 = *(v56 + 16);
        v30 = *(v56 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_192875310(v30 > 1, v31 + 1, 1);
          v29 = v57;
        }

        *(v29 + 16) = v31 + 1;
        v32 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v56 = v29;
        (*(v52 + 32))(v29 + v32 + *(v52 + 72) * v31, v9, v53);
        v33 = 1 << rawValue[32];
        if (v24 >= v33)
        {
          goto LABEL_27;
        }

        queryParameters._rawValue = rawValue;
        v26 = v50;
        v34 = *&v50[8 * v27];
        if ((v34 & (1 << v24)) == 0)
        {
          goto LABEL_28;
        }

        if (*(queryParameters._rawValue + 9) != v55)
        {
          goto LABEL_29;
        }

        v35 = v34 & (-2 << (v24 & 0x3F));
        if (v35)
        {
          v33 = __clz(__rbit64(v35)) | v24 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v36 = v27 << 6;
          v37 = v27 + 1;
          v38 = &v48[8 * v27];
          while (v37 < (v33 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              sub_192935BBC(v24, v55, v54 & 1);
              v33 = __clz(__rbit64(v39)) + v36;
              goto LABEL_18;
            }
          }

          sub_192935BBC(v24, v55, v54 & 1);
        }

LABEL_18:
        if (++v25 == v49)
        {
          v10 = v46;
          v20 = v44;
          v12 = v45;
          v17 = v43;
          goto LABEL_23;
        }

        v23 = 0;
        v22 = *(queryParameters._rawValue + 9);
        v24 = v33;
        if (v33 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
LABEL_23:
    sub_192F959AC();
    sub_192F95A6C();

    v41 = *(v12 + 8);
    v41(v17, v10);
    sub_192F9596C();
    v41(v20, v10);
  }
}

id sub_192CD4EB0(void *a1)
{
  v2 = sub_192F9669C();
  v3 = a1;
  NSURL.ams_appending(queryParameters:)(v4, v2);
  v6 = v5;

  return v6;
}

const char *sub_192CD4F2C(char a1)
{
  result = "AppleMediaServices";
  switch(a1)
  {
    case 1:
      result = "MusicKit";
      break;
    case 2:
      result = "Sonic";
      break;
    case 3:
      result = "SwiftUI";
      break;
    default:
      return result;
  }

  return result;
}

const char *sub_192CD4F94(char a1)
{
  result = "Solarium";
  switch(a1)
  {
    case 1:
      result = "library_pins";
      break;
    case 2:
      result = "Alchemy";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_192CD4FEC()
{
  v0 = sub_192F9750C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_192CD5038(char a1)
{
  result = 0x6D756972616C6F73;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_192CD50E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CD4FEC();
  *a1 = result;
  return result;
}

unint64_t sub_192CD5114@<X0>(unint64_t *a1@<X8>)
{
  result = sub_192CD5038(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192CD5154()
{

  v0 = sub_192F9750C();

  v8 = &type metadata for FeatureFlags;
  v1 = sub_192CD5340();
  v9 = v1;
  v7[0] = v0;
  v2 = sub_192F95E6C();
  __swift_destroy_boxed_opaque_existential_0(v7);
  v3 = "fpdi-config";
  switch(v0)
  {
    case 0:
      goto LABEL_7;
    case 1:
      goto LABEL_4;
    case 2:
      v3 = "45-A32F-E8DB6C76CF02";
      goto LABEL_4;
    case 3:
      v3 = "E0-A68E-2F63BB18AB9B";
LABEL_4:
      if (0x8000000193017D60 == (v3 | 0x8000000000000000))
      {

        if ((v2 & 1) == 0)
        {
LABEL_6:
          v4 = 0;
          return v4 & 1;
        }

        goto LABEL_8;
      }

LABEL_7:
      v5 = sub_192F9775C();

      if (v5 & v2)
      {
LABEL_8:
        v8 = &type metadata for FeatureFlags;
        v9 = v1;
        v7[0] = 0;
        v4 = sub_192F95E6C();
        __swift_destroy_boxed_opaque_existential_0(v7);
        return v4 & 1;
      }

      v4 = (v5 ^ 1) & v2;
      return v4 & 1;
    default:
      goto LABEL_6;
  }
}

unint64_t sub_192CD5340()
{
  result = qword_1EAE11C48;
  if (!qword_1EAE11C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11C48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_192CD5474()
{
  result = qword_1EAE15640;
  if (!qword_1EAE15640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15640);
  }

  return result;
}

__n128 TSOnDeviceDataService.DatasetIdentifier.init(accountIdentity:datasetName:id:idDomain:idSource:idSuffix:namespace:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14)
{
  result = *a1;
  v15 = a1[1].n128_u64[0];
  a9[4] = *a1;
  a9[5].n128_u64[0] = v15;
  a9[5].n128_u64[1] = a2;
  a9[3].n128_u64[0] = a4;
  a9[3].n128_u64[1] = a5;
  a9[2].n128_u64[0] = a6;
  a9[2].n128_u64[1] = a7;
  a9[1].n128_u64[0] = a8;
  a9[1].n128_u64[1] = a10;
  a9[6].n128_u64[0] = a3;
  a9[6].n128_u64[1] = a11;
  a9[7].n128_u64[0] = a12;
  a9->n128_u64[0] = a13;
  a9->n128_u64[1] = a14;
  return result;
}

uint64_t static TSOnDeviceDataService.askToSync(dataset:afterDelay:)(uint64_t *a1, uint64_t a2, char a3)
{
  *(v3 + 312) = a3;
  v4 = *a1;
  v5 = a1[1];
  *(v3 + 152) = a2;
  *(v3 + 160) = v4;
  *(v3 + 168) = v5;
  *(v3 + 176) = *(a1 + 1);
  *(v3 + 192) = a1[4];
  *(v3 + 200) = *(a1 + 5);
  *(v3 + 216) = *(a1 + 7);
  *(v3 + 232) = a1[9];
  *(v3 + 240) = *(a1 + 5);
  *(v3 + 256) = a1[12];
  *(v3 + 264) = *(a1 + 13);
  return MEMORY[0x1EEE6DFA0](sub_192CD5570, 0, 0);
}

uint64_t sub_192CD5570()
{
  if (*(v0 + 312))
  {
    v1 = 0;
  }

  else
  {
    sub_192C3F6E4();
    v1 = sub_192F96FDC();
  }

  v25 = v1;
  *(v0 + 280) = v1;
  v2 = *(v0 + 240);
  v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v4 = [v3 initWithUnsignedLongLong_];
  objc_allocWithZone(AMSAccountIdentity);
  v5 = sub_192935B50(v4);
  if (v5)
  {
    v6 = v5;
    v7 = *(v0 + 272);
    v8 = *(v0 + 256);
    v19 = *(v0 + 248);
    v20 = *(v0 + 264);
    v23 = *(v0 + 208);
    v24 = *(v0 + 216);
    v21 = *(v0 + 192);
    v22 = *(v0 + 200);
    v10 = *(v0 + 176);
    v9 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = objc_allocWithZone(AMSOnDeviceDataSyncRequest);
    v14 = v25;

    v15 = sub_192CD5A30(v12, v11, v10, v9, v21, v22, v23, v24, v6, v19, v8, v20, v7, v25);
    *(v0 + 288) = v15;
    v16 = [objc_opt_self() recordSyncRequest_];
    *(v0 + 296) = v16;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_192CD5824;
    v17 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144E0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_19293A7A4;
    *(v0 + 104) = &block_descriptor_28;
    *(v0 + 112) = v17;
    [v16 resultWithCompletion_];
    v5 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_192CD5824()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_192CD59AC;
  }

  else
  {
    v2 = sub_192CD5934;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192CD5934()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_192CD59AC()
{
  v1 = v0[37];
  v3 = v0[35];
  v2 = v0[36];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

id sub_192CD5A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v21 = sub_192F9679C();

  v14 = sub_192F9679C();

  v15 = sub_192F9679C();

  v16 = sub_192F9679C();

  v17 = sub_192F9679C();

  if (a13)
  {
    v18 = sub_192F9679C();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v22 initWithNamespace:v21 idSource:v14 idDomain:v15 identifier:v16 accountID:a9 datasetName:v17 idSuffix:v18 afterDelay:a14];

  return v19;
}

_BYTE *storeEnumTagSinglePayload for TSOnDeviceDataService(_BYTE *result, int a2, int a3)
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

uint64_t sub_192CD5C4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_192CD5C8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for OpenURLAction()
{
  result = qword_1EAE11A68;
  if (!qword_1EAE11A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192CD5D6C()
{
  result = sub_192F95A8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_192CD5DD8()
{
  result = sub_192F967CC();
  qword_1ED6E3348 = result;
  unk_1ED6E3350 = v1;
  return result;
}

BOOL sub_192CD5E24@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192CD5E14(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_192CD5E5C()
{
  if (qword_1EAE125C8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED6E3348;

  return v0;
}

uint64_t sub_192CD5EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_192CD663C();
  v5 = sub_192BAB238();

  return MEMORY[0x1EEDC27F0](a1, a2, v4, v5);
}

uint64_t sub_192CD5F20(uint64_t a1)
{
  v2 = sub_192CD65E8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_192CD5F5C(uint64_t a1)
{
  v2 = sub_192CD65E8();
  v3 = sub_192CD663C();
  v4 = sub_192BAB238();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

uint64_t sub_192CD5FD8()
{
  v1 = objc_opt_self();
  v2 = sub_192F9596C();
  LOBYTE(v1) = [v1 openStandardURL_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_192FBCD50;
  *(inited + 32) = 0x737574617473;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = v1;
  v4 = sub_192F966CC();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_192CD60D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_192C45F38;

  return sub_192CD5FB8();
}

uint64_t sub_192CD6168@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v24[-v10];
  v12 = sub_192F95A8C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_192952700(7107189, 0xE300000000000000);

  if (!v25)
  {
    sub_1928FC07C(v24, &unk_1EAE131B0);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_192BD2718();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    v19 = &qword_1EAE14D20;
    v18 = a1;
    return sub_1928FC07C(v18, v19);
  }

  sub_192F95A3C();

  sub_192CD6490();
  v17 = swift_allocError();
  sub_192C44B08(v11, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_1928FC07C(v8, &unk_1EAE144B0);
    swift_willThrow();
    sub_1928FC07C(a1, &qword_1EAE14D20);
    v18 = v11;
    v19 = &unk_1EAE144B0;
    return sub_1928FC07C(v18, v19);
  }

  sub_1928FC07C(a1, &qword_1EAE14D20);
  sub_1928FC07C(v11, &unk_1EAE144B0);
  v22 = *(v13 + 32);
  v22(v16, v8, v12);

  return (v22)(a2, v16, v12);
}

unint64_t sub_192CD6490()
{
  result = qword_1EAE15648;
  if (!qword_1EAE15648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15648);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OpenURLAction.PerformError(_BYTE *result, int a2, int a3)
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

unint64_t sub_192CD6594()
{
  result = qword_1EAE15650;
  if (!qword_1EAE15650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15650);
  }

  return result;
}

unint64_t sub_192CD65E8()
{
  result = qword_1EAE15658;
  if (!qword_1EAE15658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15658);
  }

  return result;
}

unint64_t sub_192CD663C()
{
  result = qword_1EAE15660;
  if (!qword_1EAE15660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15660);
  }

  return result;
}

unint64_t *sub_192CD6694@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1] >> 14;
  for (i = *result; i >> 14 != v3; i = result)
  {
    OUTLINED_FUNCTION_0_48();
    sub_192F970AC();
    v5 = sub_192F9671C();

    if ((v5 & 1) == 0)
    {
      v3 = i >> 14;
      break;
    }

    OUTLINED_FUNCTION_0_48();
    result = sub_192F9706C();
  }

  if (v3 >= v2 >> 14)
  {
    v6 = sub_192F970BC();
    v10 = v9;
    if ((v6 ^ v7) >= 0x4000)
    {
      v11 = v6;
      v12 = v7;
      v13 = v8;
      v14 = sub_192CD6D94(v6, v7, v8, v9, 10);
      if ((v15 & 0x100) != 0)
      {
        v14 = sub_192CD6800(v11, v12, v13, v10, 10);
        if ((v19 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((v15 & 1) == 0)
      {
LABEL_10:
        v16 = v14;
        v17 = sub_192F9709C();

        result = sub_192CBB6A8(v17);
        v18 = 0;
LABEL_13:
        *a2 = v16;
        *(a2 + 8) = v18;
        return result;
      }
    }

    v16 = 0;
    v18 = 1;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_192CD6800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_192CD6E70();

  result = sub_192F969DC();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_192BC7BD4();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_192F9731C();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_192CD6D94(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_192F9731C();
  }

  result = sub_192CD6EC4(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_192CD6E70()
{
  result = qword_1EAE15668;
  if (!qword_1EAE15668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15668);
  }

  return result;
}

uint64_t sub_192CD6EC4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_192BC7FE4(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_192F9694C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_192BC7FE4(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_192BC7FE4(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_192F9694C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_192CD7300()
{
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_135();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CD732C()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 24) = sub_192F967CC();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CD7398()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_192CD744C;
  v3 = v0[3];

  return sub_192BAC030(0, 0, v3, v1);
}

uint64_t sub_192CD744C(uint64_t a1)
{
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 48) = a1;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else if (a1)
  {
    v11 = swift_task_alloc();
    *(v5 + 56) = v11;
    *v11 = v7;
    v11[1] = sub_192CD762C;

    return ACAccountStore.accounts(with:)(a1);
  }

  else
  {
    v12 = *(v7 + 8);

    return v12(0);
  }
}

uint64_t sub_192CD762C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CD773C()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_192CD779C()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CD7818()
{
  OUTLINED_FUNCTION_5();
  if (qword_1EAE125C0 != -1)
  {
    OUTLINED_FUNCTION_3_54();
  }

  v2 = qword_1ED6DE318;
  v1 = unk_1ED6DE320;
  *(v0 + 56) = unk_1ED6DE320;

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_192CD78F8;

  return sub_192CD2F50(v0 + 32, v2, v1);
}

uint64_t sub_192CD78F8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CD7A10()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v2 == 1)
  {
    sub_192CCDD08(v1, 1);
    OUTLINED_FUNCTION_40();

    return v3(0);
  }

  else
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_192CD7B18;

    return sub_192CD2FDC((v0 + 16));
  }
}

uint64_t sub_192CD7B18()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CD7C28()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_192CD7C88()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CD7CE4()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 72) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 16) = v6;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_192CD7D90;

  return sub_192CD7300();
}

uint64_t sub_192CD7D90()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_192CD7EB0()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = sub_19295466C(*(v0 + 64));
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        goto LABEL_29;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193B116C0](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v6 = *(v1 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v3)
      {
        v8 = sub_192BAAE84(v6);
        if (v9)
        {
          if (v8 == *(v0 + 16) && v9 == *(v0 + 24))
          {
LABEL_30:

LABEL_31:

            goto LABEL_32;
          }

          v11 = sub_192F9775C();

          if (v11)
          {
            goto LABEL_31;
          }
        }
      }

      if ((*(v0 + 72) & 1) == 0)
      {
        v12 = *(v0 + 32);
        v13 = ACAccount.dsid.getter();
        if ((v14 & 1) == 0 && v13 == v12)
        {
          goto LABEL_31;
        }
      }

      if (v2)
      {
        v15 = sub_192C97154(v7);
        if (v16)
        {
          if (v15 == *(v0 + 40) && v16 == *(v0 + 48))
          {
            goto LABEL_30;
          }

          v18 = sub_192F9775C();

          if (v18)
          {
            goto LABEL_31;
          }
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_29:
    v7 = 0;
LABEL_32:
    OUTLINED_FUNCTION_40();

    v19(v7);
  }
}

uint64_t sub_192CD8084(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 144) = a4;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  v7 = swift_task_alloc();
  *(v6 + 128) = v7;
  *v7 = v6;
  v7[1] = sub_192CD8134;

  return sub_192CD77F8();
}

uint64_t sub_192CD8134()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_192CD8254()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 96);
    result = sub_19295466C(*(v0 + 136));
    v5 = result;
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        goto LABEL_29;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x193B116C0](i, v1);
        v7 = result;
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v7 = *(v1 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v3 && (swift_beginAccess(), (v8 = *(v7 + 40)) != 0) && (*(v7 + 32) == *(v0 + 88) ? (v9 = v8 == *(v0 + 96)) : (v9 = 0), v9 || (sub_192F9775C() & 1) != 0) || (*(v0 + 144) & 1) == 0 && (swift_beginAccess(), (*(v7 + 56) & 1) == 0) && *(v7 + 48) == *(v0 + 104) || v2 && (swift_beginAccess(), (v10 = *(v7 + 120)) != 0) && (*(v7 + 112) == *(v0 + 112) ? (v11 = v10 == *(v0 + 120)) : (v11 = 0), v11 || (sub_192F9775C() & 1) != 0))
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_29:
    v7 = 0;
LABEL_30:
    OUTLINED_FUNCTION_40();

    return v12(v7);
  }

  return result;
}

uint64_t PassingMockAuthenticateTask.__allocating_init(authenticationResults:accountStore:options:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  PassingMockAuthenticateTask.init(authenticationResults:accountStore:options:)(a1, a2, a3);
  return v6;
}

uint64_t PassingMockAuthenticateTask.init(authenticationResults:accountStore:options:)(uint64_t a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v7 = [a3 clientInfo];
    v8 = [v7 accountMediaType];
  }

  else
  {
    v8 = 0;
  }

  *(v3 + 16) = v8;
  *(v3 + 24) = a2;
  v9 = sub_192F967CC();
  v11 = v10;

  v12 = sub_192BD2E60(v9, v11, a1);

  if (v12)
  {
    v32 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14420);
    v13 = swift_dynamicCast();
    v14 = v30;
    v15 = v31;
    if (!v13)
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *(v3 + 32) = v14;
  *(v3 + 40) = v15;
  if (a3)
  {
    v16 = [a3 canMakeAccountActive];
  }

  else
  {
    v16 = 0;
  }

  *(v3 + 48) = v16;
  v17 = sub_192F967CC();
  v19 = sub_192BD2E60(v17, v18, a1);

  if (v19)
  {
    v30 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14420);
    v20 = swift_dynamicCast();
    v21 = v32;
    if (!v20)
    {
      v21 = 0;
    }

    v22 = v20 ^ 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }

  *(v3 + 56) = v21;
  *(v3 + 64) = v22;
  v23 = sub_192F967CC();
  v25 = sub_192BD2E60(v23, v24, a1);

  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14420);
    v26 = swift_dynamicCast();
    v27 = v30;
    v28 = v31;
    if (!v26)
    {
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  *(v3 + 72) = v27;
  *(v3 + 80) = v28;
  return v3;
}

uint64_t PassingMockAuthenticateTask.performAuthentication()()
{
  OUTLINED_FUNCTION_3();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_192F95D3C();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CD8788()
{
  v1 = *(v0 + 96);
  *(v0 + 128) = *(v1 + 24);
  v2 = *(v1 + 32);
  *(v0 + 136) = v2;
  v3 = *(v1 + 40);
  *(v0 + 144) = v3;
  v4 = *(v1 + 56);
  *(v0 + 152) = v4;
  v5 = *(v1 + 64);
  *(v0 + 216) = v5;
  v6 = *(v1 + 72);
  *(v0 + 160) = v6;
  v7 = *(v1 + 80);
  *(v0 + 168) = v7;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_192CD8894;

  return sub_192CD8084(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_192CD8894()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 184) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_192CD89D4()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    if (qword_1EAE125C0 != -1)
    {
      OUTLINED_FUNCTION_3_54();
    }

    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v4 = *(v0 + 104);

    sub_192F95D2C();
    v5 = sub_192F95D0C();
    v7 = v6;
    (*(v3 + 8))(v2, v4);
    type metadata accessor for MockAccount();
    swift_allocObject();
    OUTLINED_FUNCTION_135();
    v1 = MockAccount.init(accountType:altDSID:dsid:firstName:identifier:lastName:username:)(v8, v9, v10, 0, 1, 0, 0, v5, v7, 0, 0, 0, 0);
  }

  *(v0 + 192) = v1;
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v13 = *(v0 + 216);
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);
  v16 = *(v0 + 136);
  v21 = *(v0 + 96);
  swift_beginAccess();
  *(v1 + 32) = v16;
  *(v1 + 40) = v14;

  swift_beginAccess();
  *(v1 + 48) = v15;
  *(v1 + 56) = v13;
  swift_beginAccess();
  *(v1 + 112) = v12;
  *(v1 + 120) = v11;

  if (*(v21 + 48) == 1)
  {
    v17 = *(*(v0 + 96) + 16);
    if (v17)
    {
      v18 = v17;
      MockAccount.setActive(_:for:)(1, v18);
    }
  }

  v19 = swift_task_alloc();
  *(v0 + 200) = v19;
  *v19 = v0;
  v19[1] = sub_192CD8C30;

  return sub_192CD313C(v1);
}

uint64_t sub_192CD8C30()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}