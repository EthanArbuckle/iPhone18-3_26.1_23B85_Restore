uint64_t sub_23DE7BC24()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v1[124] = v0;
  v1[125] = v3;
  v1[126] = v4;
  OUTLINED_FUNCTION_164();
  v6 = *(v5 + 1432);
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 1440) = v9;

  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DE7BD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_54_0();
  v16 = *(v15 + 1440);
  if (v16)
  {
    v17 = *(v15 + 1000);
    v18 = *(v15 + 1400);
    *(v15 + 264) = MEMORY[0x277D837D0];
    *(v15 + 240) = v17;
    *(v15 + 248) = v16;
    sub_23DE36CA4((v15 + 240), (v15 + 304));
    swift_isUniquelyReferenced_nonNull_native();
    a11 = v18;
    sub_23DE47BE4(v15 + 304, v14, 0xE700000000000000);
    v38 = v18;
  }

  else
  {
    v19 = *(v15 + 1408);
    v20 = sub_23DF1E154(v14, 0xE700000000000000);
    if (v21)
    {
      v22 = v20;
      v23 = *(v15 + 1400);
      swift_isUniquelyReferenced_nonNull_native();
      a11 = v23;
      v24 = *(v23 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
      sub_23E1FE66C();
      OUTLINED_FUNCTION_167();
      sub_23DE36CA4((*(v23 + 56) + 32 * v22), (v15 + 272));
      v25 = v23;
      sub_23E1FE67C();
    }

    else
    {
      *(v15 + 272) = 0u;
      *(v15 + 288) = 0u;
      v25 = *(v15 + 1408);
    }

    v38 = v25;
    sub_23DE5CB68(v15 + 272, &qword_27E32C320, &unk_23E224B40);
  }

  v26 = *(v15 + 1192);
  v27 = *(v15 + 1184);
  OUTLINED_FUNCTION_6_5();
  v28 = *(v15 + 1072);

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_72_0();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, a11, a12, a13, a14);
}

uint64_t sub_23DE7BEEC(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    *(&v8 + 1) = swift_getObjectType();
    *&v7 = a2;
    sub_23DE36CA4(&v7, &v5);
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  swift_unknownObjectRetain();
  return sub_23DECD288(v3, &v7);
}

uint64_t sub_23DE7BF6C(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  return MEMORY[0x2822009F8](sub_23DE7BF94, 0, 0);
}

uint64_t sub_23DE7BF94()
{
  OUTLINED_FUNCTION_33_0();
  sub_23DE48110(*(v0 + 584), v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7A0, &qword_23E224B78);
  if (OUTLINED_FUNCTION_193())
  {
    v1 = *(v0 + 576);
    sub_23DE7E35C((v0 + 64), (v0 + 16));
    v2 = *(v0 + 40);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
    v1[3] = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v3, v2);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_3;
  }

  v7 = *(v0 + 584);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  sub_23DE5CB68(v0 + 64, &qword_27E32C7A8, &qword_23E224B80);
  sub_23DE48110(v7, v0 + 144);
  *(v0 + 600) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  if (OUTLINED_FUNCTION_193())
  {
    v8 = *(v0 + 528);
    *(v0 + 608) = v8;
    v9 = *(v8 + 16);
    *(v0 + 616) = v9;
    if (v9)
    {
      *(v0 + 632) = MEMORY[0x277D84F90];
      *(v0 + 624) = 0;
      sub_23DE48110(v8 + 32, v0 + 400);
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v0 + 640) = v10;
      *v10 = v11;
      OUTLINED_FUNCTION_70_0(v10);
      OUTLINED_FUNCTION_196();

      return sub_23DE7BF6C(v12);
    }

    v21 = *(v0 + 576);
    v21[3] = *(v0 + 600);
    *v21 = MEMORY[0x277D84F90];
LABEL_3:
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_196();

    __asm { BRAA            X1, X16 }
  }

  sub_23DE48110(*(v0 + 584), v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B8, &unk_23E224B90);
  if (!OUTLINED_FUNCTION_193())
  {
    sub_23DE48110(*(v0 + 584), v0 + 208);
    v18 = sub_23DE38DA8(0, &qword_27E32C7C0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 576);
      v20 = *(v0 + 544);
      v19[3] = v18;
      *v19 = v20;
      goto LABEL_3;
    }

    sub_23DE48110(*(v0 + 584), v0 + 240);
    v22 = MEMORY[0x277D839B0];
    if (swift_dynamicCast())
    {
      v23 = *(v0 + 576);
      v24 = *(v0 + 672);
      *(v23 + 24) = v22;
      *v23 = v24;
      goto LABEL_3;
    }

    sub_23DE48110(*(v0 + 584), v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7C8, &unk_23E224BA0);
    if (swift_dynamicCast())
    {
      v25 = [*(v0 + 552) wfName];
      if (v25)
      {
        v26 = v25;
        v27 = sub_23E1FDC1C();
        v29 = v28;

        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          v31 = *(v0 + 576);
          v31[3] = MEMORY[0x277D837D0];
          swift_unknownObjectRelease();
          *v31 = v27;
          v31[1] = v29;
          goto LABEL_3;
        }
      }

      swift_unknownObjectRelease();
    }

    sub_23DE48110(*(v0 + 584), v0 + 304);
    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    if (swift_dynamicCast())
    {
      v32 = *(v0 + 560);
      v33 = [v32 richListTitle];
      v34 = sub_23E1FDC1C();
      v36 = v35;

      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v38 = *(v0 + 576);
        v39 = [v32 richListTitle];
        v40 = sub_23E1FDC1C();
        v42 = v41;

        v38[3] = MEMORY[0x277D837D0];
        *v38 = v40;
        v38[1] = v42;
        goto LABEL_3;
      }
    }

    sub_23DE48110(*(v0 + 584), v0 + 336);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C7D0, &unk_23E224BB0);
    if (OUTLINED_FUNCTION_193())
    {
      v43 = [*(v0 + 568) wfSerializedRepresentation];
      v44 = *(v0 + 576);
      if (v43)
      {
        v45 = v43;
        v46 = sub_23E1FDAAC();

        *(v44 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
        swift_unknownObjectRelease();
        *v44 = v46;
      }

      else
      {
        swift_unknownObjectRelease();
        *v44 = 0u;
        *(v44 + 16) = 0u;
      }
    }

    else
    {
      v47 = *(v0 + 576);
      sub_23DE48110(*(v0 + 584), v0 + 368);
      v48 = sub_23E1FDC7C();
      v47[3] = MEMORY[0x277D837D0];
      *v47 = v48;
      v47[1] = v49;
    }

    goto LABEL_3;
  }

  *(v0 + 648) = *(v0 + 536);
  v15 = swift_task_alloc();
  *(v0 + 656) = v15;
  *v15 = v0;
  v15[1] = sub_23DE7C7D4;
  v16 = *(v0 + 592);
  OUTLINED_FUNCTION_196();

  return sub_23DE7C958();
}

uint64_t sub_23DE7C550()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 640);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 400));
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23DE7C638()
{
  OUTLINED_FUNCTION_4();
  if (*(v0 + 488))
  {
    v1 = *(v0 + 632);
    sub_23DE36CA4((v0 + 464), (v0 + 432));
    sub_23DE48110(v0 + 432, v0 + 496);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 632);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v3 + 16);
      OUTLINED_FUNCTION_6_1();
      sub_23DE4D024();
      v3 = v14;
    }

    v4 = *(v3 + 16);
    if (v4 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_103();
      sub_23DE4D024();
      v3 = v15;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 432));
    *(v3 + 16) = v4 + 1;
    sub_23DE36CA4((v0 + 496), (v3 + 32 * v4 + 32));
  }

  else
  {
    sub_23DE5CB68(v0 + 464, &qword_27E32C320, &unk_23E224B40);
    v3 = *(v0 + 632);
  }

  v5 = *(v0 + 624) + 1;
  if (v5 == *(v0 + 616))
  {
    v6 = *(v0 + 608);

    v7 = *(v0 + 576);
    v7[3] = *(v0 + 600);
    *v7 = v3;
    OUTLINED_FUNCTION_19();

    return v8();
  }

  else
  {
    *(v0 + 632) = v3;
    *(v0 + 624) = v5;
    sub_23DE48110(*(v0 + 608) + 32 * v5 + 32, v0 + 400);
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 640) = v10;
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_70_0();

    return sub_23DE7BF6C(v12);
  }
}

uint64_t sub_23DE7C7D4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 656);
  v5 = *(v3 + 648);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 664) = v8;

  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DE7C8D4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 664);
  v2 = *(v0 + 576);
  if (v1)
  {
    *(v2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
    *v2 = v1;
  }

  else
  {
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DE7C958(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v3 = sub_23E1FC0EC();
  v2[52] = v3;
  v4 = *(v3 - 8);
  v2[53] = v4;
  v5 = *(v4 + 64) + 15;
  v2[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE7CA18, 0, 0);
}

uint64_t sub_23DE7CA18()
{
  v1 = *(v0 + 400);
  v2 = *(v1 + 32);
  *(v0 + 552) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  result = sub_23E1FB7BC();
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F98];
  while (1)
  {
    *(v0 + 440) = v8;
    *(v0 + 448) = v9;
    if (!v5)
    {
      break;
    }

    v10 = *(v0 + 400);
LABEL_11:
    *(v0 + 456) = v5;
    *(v0 + 464) = v7;
    sub_23DE7E2AC(*(v10 + 48) + 40 * (__clz(__rbit64(v5)) | (v7 << 6)), v0 + 16);
    v12 = OUTLINED_FUNCTION_44_0();
    *(v0 + 472) = v12;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v27 = swift_task_alloc();
      v28 = OUTLINED_FUNCTION_78_0(v27);
      *v28 = v29;
      OUTLINED_FUNCTION_13_2(v28);
      OUTLINED_FUNCTION_191();

      return sub_23DE76E1C();
    }

    v13 = sub_23E1FE52C();
    v15 = v14;
    *(v0 + 496) = v13;
    *(v0 + 504) = v14;
    OUTLINED_FUNCTION_113();
    if (v16)
    {
      v17 = sub_23DF1E1CC();
      if (v18)
      {
        v19 = OUTLINED_FUNCTION_40_0(v17);
        sub_23DE48110(v19, v0 + 96);
        sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
        OUTLINED_FUNCTION_151();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_55_1();
          v37 = [&unk_280DAE750 cachingIdentifier];
          OUTLINED_FUNCTION_154();
          sub_23E1FC0CC();

          v38 = sub_23E1FC0AC();
          v40 = OUTLINED_FUNCTION_30_1(v38, v39);
          v41(v40);
          v42 = swift_task_alloc();
          v43 = OUTLINED_FUNCTION_176(v42);
          *v43 = v44;
          OUTLINED_FUNCTION_14_2(v43);
          OUTLINED_FUNCTION_53_0();
          OUTLINED_FUNCTION_191();

          return sub_23DE788B8();
        }
      }

      OUTLINED_FUNCTION_113();
      if (v20)
      {
        v21 = sub_23DF1E1CC();
        if (v22)
        {
          v31 = OUTLINED_FUNCTION_40_0(v21);
          sub_23DE48110(v31, v0 + 128);
          swift_task_alloc();
          OUTLINED_FUNCTION_31();
          *(v0 + 544) = v32;
          *v32 = v33;
          OUTLINED_FUNCTION_10_4(v32);
          OUTLINED_FUNCTION_191();

          return sub_23DE7BF6C(v34, v35);
        }
      }
    }

    sub_23DE7E308(v0 + 56);

    v8 = *(v0 + 440);
    v9 = *(v0 + 448);
    v7 = *(v0 + 464);
    v5 = (*(v0 + 456) - 1) & *(v0 + 456);
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= (((1 << *(v0 + 552)) + 63) >> 6))
    {
      v23 = *(v0 + 432);
      v24 = *(v0 + 400);

      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_191();

      __asm { BRAA            X2, X16 }
    }

    v10 = *(v0 + 400);
    v5 = *(v10 + 8 * v11 + 64);
    ++v7;
    if (v5)
    {
      v7 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DE7CD44()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v1[44] = v0;
  v1[45] = v3;
  v1[46] = v4;
  OUTLINED_FUNCTION_164();
  v6 = *(v5 + 480);
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 488) = v9;

  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_23DE7CE28()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *(v0 + 488);
  if (v2)
  {
    v3 = *(v0 + 360);
  }

  else
  {
    v4 = *(v0 + 472);
    v3 = v0 + 56;
    sub_23E1FE52C();
    OUTLINED_FUNCTION_174();
  }

  while (1)
  {
    *(v0 + 496) = v3;
    *(v0 + 504) = v2;
    OUTLINED_FUNCTION_113();
    if (v5)
    {
      v6 = sub_23DF1E1CC();
      if (v7)
      {
        v8 = OUTLINED_FUNCTION_40_0(v6);
        sub_23DE48110(v8, v0 + 96);
        sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_55_1();
          v35 = [v2 cachingIdentifier];
          OUTLINED_FUNCTION_154();
          sub_23E1FC0CC();

          v36 = sub_23E1FC0AC();
          v38 = OUTLINED_FUNCTION_30_1(v36, v37);
          v39(v38);
          v40 = swift_task_alloc();
          v41 = OUTLINED_FUNCTION_176(v40);
          *v41 = v42;
          OUTLINED_FUNCTION_14_2(v41);
          OUTLINED_FUNCTION_53_0();
          OUTLINED_FUNCTION_196();

          sub_23DE788B8();
          return;
        }
      }

      OUTLINED_FUNCTION_113();
      if (v9)
      {
        v10 = sub_23DF1E1CC();
        if (v11)
        {
          v29 = OUTLINED_FUNCTION_40_0(v10);
          sub_23DE48110(v29, v0 + 128);
          swift_task_alloc();
          OUTLINED_FUNCTION_31();
          *(v0 + 544) = v30;
          *v30 = v31;
          OUTLINED_FUNCTION_10_4();
          OUTLINED_FUNCTION_196();

          sub_23DE7BF6C(v32, v33);
          return;
        }
      }
    }

    sub_23DE7E308(v0 + 56);

    v12 = *(v0 + 464);
    if (((*(v0 + 456) - 1) & *(v0 + 456)) == 0)
    {
      break;
    }

    v13 = *(v0 + 400);
LABEL_17:
    OUTLINED_FUNCTION_74_1(v12);
    sub_23DE7E2AC(v20 + 40 * v19, v0 + 16);
    v2 = OUTLINED_FUNCTION_44_0();
    *(v0 + 472) = v2;
    objc_opt_self();
    OUTLINED_FUNCTION_38();
    if (swift_dynamicCastObjCClass())
    {
      v25 = swift_task_alloc();
      v26 = OUTLINED_FUNCTION_78_0(v25);
      *v26 = v27;
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_196();

      sub_23DE76E1C();
      return;
    }

    v3 = v0 + 56;
    sub_23E1FE52C();
    OUTLINED_FUNCTION_174();
  }

  v14 = *(v0 + 448);
  while (!__OFADD__(v12, 1))
  {
    OUTLINED_FUNCTION_156();
    if (v15 == v16)
    {
      v21 = *(v0 + 432);
      v22 = *(v0 + 400);

      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_196();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_94();
    if (v18)
    {
      v12 = v17;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_23DE7D108()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 528);
  v5 = *(v3 + 520);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 536) = v8;

  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_23DE7D208()
{
  v2 = *(v0 + 536);
  v3 = *(v0 + 496);
  v4 = *(v0 + 504);
  if (!v2)
  {
    v19 = *(v0 + 448);
    v20 = OUTLINED_FUNCTION_50();
    v22 = sub_23DF1E154(v20, v21);
    LOBYTE(v19) = v23;

    v24 = *(v0 + 512);
    if (v19)
    {
      v25 = *(v0 + 440);
      swift_isUniquelyReferenced_nonNull_native();
      v1 = v25[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
      OUTLINED_FUNCTION_189();
      OUTLINED_FUNCTION_167();
      sub_23DE36CA4((v25[7] + 32 * v22), (v0 + 288));
      sub_23E1FE67C();

      sub_23DE7E308(v0 + 56);
      v26 = v25;
    }

    else
    {
      sub_23DE7E308(v0 + 56);

      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      v25 = *(v0 + 440);
      v26 = *(v0 + 448);
    }

    sub_23DE5CB68(v0 + 288, &qword_27E32C320, &unk_23E224B40);
LABEL_18:
    while (1)
    {
      v34 = *(v0 + 456);
      v33 = *(v0 + 464);
      *(v0 + 440) = v25;
      *(v0 + 448) = v26;
      if (((v34 - 1) & v34) == 0)
      {
        break;
      }

      v35 = *(v0 + 400);
LABEL_25:
      OUTLINED_FUNCTION_74_1(v33);
      sub_23DE7E2AC(v40 + 40 * v39, v0 + 16);
      v41 = OUTLINED_FUNCTION_44_0();
      *(v0 + 472) = v41;
      objc_opt_self();
      OUTLINED_FUNCTION_38();
      if (swift_dynamicCastObjCClass())
      {
        v56 = swift_task_alloc();
        v57 = OUTLINED_FUNCTION_78_0(v56);
        *v57 = v58;
        OUTLINED_FUNCTION_13_2();
        OUTLINED_FUNCTION_171();

        sub_23DE76E1C();
        return;
      }

      v42 = sub_23E1FE52C();
      v44 = v43;
      *(v0 + 496) = v42;
      *(v0 + 504) = v43;
      OUTLINED_FUNCTION_113();
      if (v45)
      {
        v46 = sub_23DF1E1CC();
        if (v47)
        {
          v48 = OUTLINED_FUNCTION_40_0(v46);
          sub_23DE48110(v48, v0 + 96);
          sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
          OUTLINED_FUNCTION_151();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_55_1();
            v66 = [v44 cachingIdentifier];
            OUTLINED_FUNCTION_154();
            sub_23E1FC0CC();

            v67 = sub_23E1FC0AC();
            v69 = OUTLINED_FUNCTION_30_1(v67, v68);
            v70(v69);
            v71 = swift_task_alloc();
            v72 = OUTLINED_FUNCTION_176(v71);
            *v72 = v73;
            OUTLINED_FUNCTION_14_2();
            OUTLINED_FUNCTION_53_0();
            OUTLINED_FUNCTION_171();

            sub_23DE788B8();
            return;
          }
        }

        OUTLINED_FUNCTION_113();
        if (v49)
        {
          v50 = sub_23DF1E1CC();
          if (v51)
          {
            v60 = OUTLINED_FUNCTION_40_0(v50);
            sub_23DE48110(v60, v0 + 128);
            swift_task_alloc();
            OUTLINED_FUNCTION_31();
            *(v0 + 544) = v61;
            *v61 = v62;
            OUTLINED_FUNCTION_10_4();
            OUTLINED_FUNCTION_171();

            sub_23DE7BF6C(v63, v64);
            return;
          }
        }
      }

      sub_23DE7E308(v0 + 56);

      v25 = *(v0 + 440);
      v26 = *(v0 + 448);
    }

    while (!__OFADD__(v33, 1))
    {
      OUTLINED_FUNCTION_156();
      if (v36 == v12)
      {
        v52 = *(v0 + 432);
        v53 = *(v0 + 400);

        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_171();

        __asm { BRAA            X2, X16 }
      }

      OUTLINED_FUNCTION_94();
      if (v38)
      {
        v33 = v37;
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v5 = *(v0 + 440);
  *(v0 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(v0 + 256) = v2;
  sub_23DE36CA4((v0 + 256), (v0 + 320));
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 392) = v5;
  v6 = OUTLINED_FUNCTION_50();
  v8 = sub_23DF1E154(v6, v7);
  OUTLINED_FUNCTION_180(v8, v9);
  if (v12)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
  if ((sub_23E1FE66C() & 1) == 0)
  {
LABEL_13:
    v25 = *(v0 + 392);
    v1 = *(v0 + 504);
    if (v14)
    {
      v27 = (v25[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v27);
      sub_23DE36CA4((v0 + 320), v27);

LABEL_17:

      sub_23DE7E308(v0 + 56);
      v26 = v25;
      goto LABEL_18;
    }

    v28 = *(v0 + 496);
    OUTLINED_FUNCTION_104();
    *v30 = v29;
    v30[1] = v1;
    sub_23DE36CA4((v0 + 320), (v25[7] + 32 * v13));
    v31 = v25[2];
    v12 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v12)
    {
      v25[2] = v32;
      goto LABEL_17;
    }

LABEL_46:
    __break(1u);
    return;
  }

  v15 = *(v0 + 392);
  v16 = sub_23DF1E154(*(v0 + 496), *(v0 + 504));
  if ((v14 & 1) == (v17 & 1))
  {
    v13 = v16;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_171();

  sub_23E1FE7BC();
}

uint64_t sub_23DE7D6EC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 544);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_23DE7D7D0()
{
  OUTLINED_FUNCTION_140();
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  if (!*(v0 + 184))
  {
    v17 = *(v0 + 448);
    sub_23DE5CB68(v0 + 160, &qword_27E32C320, &unk_23E224B40);
    v18 = OUTLINED_FUNCTION_50();
    v20 = sub_23DF1E154(v18, v19);
    LOBYTE(v17) = v21;

    if (v17)
    {
      v22 = *(v0 + 440);
      swift_isUniquelyReferenced_nonNull_native();
      v23 = v22[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
      OUTLINED_FUNCTION_189();
      OUTLINED_FUNCTION_167();
      sub_23DE36CA4((v22[7] + 32 * v20), (v0 + 192));
      sub_23E1FE67C();
      OUTLINED_FUNCTION_185();
      v24 = v22;
    }

    else
    {
      OUTLINED_FUNCTION_185();
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0u;
      v22 = *(v0 + 440);
      v24 = *(v0 + 448);
    }

    sub_23DE5CB68(v0 + 192, &qword_27E32C320, &unk_23E224B40);
LABEL_18:
    while (1)
    {
      v34 = *(v0 + 456);
      v33 = *(v0 + 464);
      *(v0 + 440) = v22;
      *(v0 + 448) = v24;
      if (((v34 - 1) & v34) == 0)
      {
        break;
      }

      v35 = *(v0 + 400);
LABEL_24:
      OUTLINED_FUNCTION_74_1(v33);
      sub_23DE7E2AC(v39 + 40 * v38, v0 + 16);
      v40 = OUTLINED_FUNCTION_44_0();
      *(v0 + 472) = v40;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v55 = swift_task_alloc();
        v56 = OUTLINED_FUNCTION_78_0(v55);
        *v56 = v57;
        OUTLINED_FUNCTION_13_2(v56);
        OUTLINED_FUNCTION_124();

        sub_23DE76E1C();
        return;
      }

      v41 = sub_23E1FE52C();
      v43 = v42;
      *(v0 + 496) = v41;
      *(v0 + 504) = v42;
      OUTLINED_FUNCTION_113();
      if (v44)
      {
        v45 = sub_23DF1E1CC();
        if (v46)
        {
          v47 = OUTLINED_FUNCTION_40_0(v45);
          sub_23DE48110(v47, v0 + 96);
          sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
          OUTLINED_FUNCTION_151();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_55_1();
            v65 = [&unk_280DAE750 cachingIdentifier];
            OUTLINED_FUNCTION_154();
            sub_23E1FC0CC();

            v66 = sub_23E1FC0AC();
            v68 = OUTLINED_FUNCTION_30_1(v66, v67);
            v69(v68);
            v70 = swift_task_alloc();
            v71 = OUTLINED_FUNCTION_176(v70);
            *v71 = v72;
            OUTLINED_FUNCTION_14_2(v71);
            OUTLINED_FUNCTION_53_0();
            OUTLINED_FUNCTION_124();

            sub_23DE788B8();
            return;
          }
        }

        OUTLINED_FUNCTION_113();
        if (v48)
        {
          v49 = sub_23DF1E1CC();
          if (v50)
          {
            v59 = OUTLINED_FUNCTION_40_0(v49);
            sub_23DE48110(v59, v0 + 128);
            swift_task_alloc();
            OUTLINED_FUNCTION_31();
            *(v0 + 544) = v60;
            *v60 = v61;
            OUTLINED_FUNCTION_10_4();
            OUTLINED_FUNCTION_124();

            sub_23DE7BF6C(v62, v63);
            return;
          }
        }
      }

      sub_23DE7E308(v0 + 56);

      v22 = *(v0 + 440);
      v24 = *(v0 + 448);
    }

    while (!__OFADD__(v33, 1))
    {
      if (v33 + 1 >= (((1 << *(v0 + 552)) + 63) >> 6))
      {
        v51 = *(v0 + 432);
        v52 = *(v0 + 400);

        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_124();

        __asm { BRAA            X2, X16 }
      }

      OUTLINED_FUNCTION_94();
      if (v37)
      {
        v33 = v36;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v3 = *(v0 + 440);
  sub_23DE36CA4((v0 + 160), (v0 + 224));
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 376) = v3;
  v4 = OUTLINED_FUNCTION_50();
  v6 = sub_23DF1E154(v4, v5);
  OUTLINED_FUNCTION_180(v6, v7);
  if (v10)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
  if ((sub_23E1FE66C() & 1) == 0)
  {
LABEL_13:
    v25 = *(v0 + 504);
    if (v12)
    {

      v22 = *(v0 + 376);
      v26 = (v22[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v26);
      sub_23DE36CA4((v0 + 224), v26);
      OUTLINED_FUNCTION_185();
LABEL_17:
      v24 = v22;
      goto LABEL_18;
    }

    v27 = *(v0 + 496);
    v22 = *(v0 + 376);
    OUTLINED_FUNCTION_104();
    *v30 = v29;
    v30[1] = v28;
    sub_23DE36CA4((v0 + 224), (v22[7] + 32 * v11));
    OUTLINED_FUNCTION_185();
    v31 = v22[2];
    v10 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v10)
    {
      v22[2] = v32;
      goto LABEL_17;
    }

LABEL_45:
    __break(1u);
    return;
  }

  v13 = *(v0 + 376);
  v14 = sub_23DF1E154(*(v0 + 496), *(v0 + 504));
  if ((v12 & 1) == (v15 & 1))
  {
    v11 = v14;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_124();

  sub_23E1FE7BC();
}

id sub_23DE7DCB0()
{
  type metadata accessor for WFCoercionOptionName(0);
  sub_23DE7E23C(&qword_27E32BD60, type metadata accessor for WFCoercionOptionName);
  v0 = sub_23E1FDA9C();

  v1 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v1;
}

uint64_t sub_23DE7DD6C(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C740, &qword_23E224B10);
  v4 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_59();
  v39 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_23E1FD76C();
  v11 = OUTLINED_FUNCTION_6_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_59();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  v22 = *(v13 + 16);
  v37 = v2;
  v22(v18, v2, v10);
  v23 = MEMORY[0x277D73128];
  v35 = sub_23DE7E23C(&unk_280DAE590, MEMORY[0x277D73128]);
  sub_23E1FE4CC();
  v24 = v23;
  v25 = v38;
  sub_23DE7E23C(&unk_280DAE5A0, v24);
  v36 = a2;
  v26 = sub_23E1FDB2C();
  v27 = *(v25 + 48);
  *v9 = (v26 & 1) == 0;
  if (v26)
  {
    (*(v13 + 32))(&v9[v27], v21, v10);
  }

  else
  {
    v28 = *(v13 + 8);
    v29 = OUTLINED_FUNCTION_87_0();
    v30(v29);
    v31 = v36;
    v22(&v9[v27], v36, v10);
    v22(v18, v31, v10);
    sub_23E1FE4DC();
  }

  v32 = v39;
  sub_23DE7E1CC(v9, v39);
  v33 = *v32;
  (*(v13 + 32))(v40, &v32[*(v25 + 48)], v10);
  return v33;
}

uint64_t sub_23DE7E040(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23DE7E098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C730, &qword_23E224A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10ContentKit28WFGenerativeSessionProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23DE7E128(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_23DE7E168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DE7E1CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C740, &qword_23E224B10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE7E23C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_23DE7E35C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
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

unint64_t OUTLINED_FUNCTION_4_3()
{
  v2[58] = v0;
  v4 = v2[37];
  v5 = v2[33];
  v6 = v2[34];
  v7 = v2[19];
  *(v0 + 16) = v1;
  v8 = *(v6 + 32);
  return v0 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3;
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t result)
{
  *(result + 8) = sub_23DE7BC24;
  v2 = *(v1 + 1032);
  return result;
}

void OUTLINED_FUNCTION_6_5()
{
  v1 = v0[147];
  v2 = v0[146];
  v3 = v0[145];
  v4 = v0[144];
  v5 = v0[143];
  v6 = v0[140];
  v7 = v0[137];
}

void *OUTLINED_FUNCTION_9_2()
{
  v2 = v1[33];
  v4 = v1[11];
  return __swift_project_boxed_opaque_existential_0(v1 + 7, v0);
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1)
{
  *(a1 + 8) = sub_23DE7D6EC;
  v2 = *(v1 + 408);
  return v1 + 160;
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1)
{
  *(a1 + 8) = sub_23DE7B290;
  result = *(v1 + 1072);
  v3 = *(v1 + 1032);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t result)
{
  *(result + 8) = sub_23DE77E84;
  v2 = *(v1 + 256);
  v3 = *(v1 + 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t result)
{
  *(result + 8) = sub_23DE7D108;
  v2 = *(v1 + 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_3()
{
  v4 = v0[32];
  v5 = v0[31];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[26];
  v2 = v0[23];
  v9 = v0[20];

  return sub_23E1FBADC();
}

void OUTLINED_FUNCTION_17_3(uint64_t a1@<X8>)
{
  v1[12] = sub_23DE7BEEC;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_19_0()
{
  v1 = *(v0 + 152);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);

  return sub_23E1FBA3C();
}

uint64_t OUTLINED_FUNCTION_22_0()
{
  v2 = v0[42];
  result = v0[43];
  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  return result;
}

void OUTLINED_FUNCTION_27_1()
{
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v7 = v0[31];
  v6 = v0[32];
}

void OUTLINED_FUNCTION_28_1(unint64_t a1@<X8>)
{

  sub_23DE4D12C(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, uint64_t a2)
{
  *(v3 + 520) = a2;
  v5 = *(v4 + 8);
  return v2;
}

unint64_t OUTLINED_FUNCTION_32_0()
{
  *(v1 + 16) = v0;
  v4 = *(v3 + 32);
  return v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2;
}

void OUTLINED_FUNCTION_33_1()
{
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[33];
  v3 = v0[34];
}

void OUTLINED_FUNCTION_36_1()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23EF074C0);
}

uint64_t OUTLINED_FUNCTION_37_0()
{
  v2 = *(v0 + 264);
  v3 = *(*(v0 + 272) + 8);
  return v1;
}

void OUTLINED_FUNCTION_39_0()
{
  v2 = v0[27];
  v3 = v0[26];
  v1 = v0[23];
  v4 = v0[20];
}

void OUTLINED_FUNCTION_42_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_44_0()
{
  v2 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 72) = v2;
  *(v0 + 88) = *(v0 + 48);

  return MEMORY[0x28211F440]();
}

uint64_t OUTLINED_FUNCTION_45_1()
{
  v2 = v0[39];
  v3 = v0[29];
  v4 = v0[28];
  v6 = v0[30];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_1()
{
  v3 = v0[27];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[20];
}

void OUTLINED_FUNCTION_52_1(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = *(v1 + 424);
  v4 = *(v1 + 360);
}

void OUTLINED_FUNCTION_55_1()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v0[64] = v0[48];
}

uint64_t OUTLINED_FUNCTION_57_0()
{
  v2 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  v3 = *(v0 + 224);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return sub_23DE7E040(v0, v1);
}

uint64_t OUTLINED_FUNCTION_66_1()
{
  v2 = v0[39];
  v5 = v0[29];
  v3 = v0[28];
  v6 = v0[30];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_68_1()
{

  JUMPOUT(0x23EF074C0);
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1)
{
  *(a1 + 8) = sub_23DE7A824;
  v2 = *(v1 + 1064);
  return v1 + 848;
}

uint64_t OUTLINED_FUNCTION_70_0(uint64_t a1)
{
  *(a1 + 8) = sub_23DE7C550;
  v2 = *(v1 + 592);
  return v1 + 464;
}

void OUTLINED_FUNCTION_74_1(uint64_t a1@<X8>)
{
  *(v3 + 456) = v2;
  *(v3 + 464) = a1;
  v4 = *(v1 + 48);
}

uint64_t OUTLINED_FUNCTION_76_0(uint64_t result)
{
  *(result + 8) = sub_23DE779FC;
  v2 = *(v1 + 256);
  v3 = *(v1 + 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_82_0()
{
  v2 = *(v0 + 368);
  v3 = *(v0 + 240);

  return sub_23E1FCB9C();
}

uint64_t OUTLINED_FUNCTION_83_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_23DE79658;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_86_0()
{
  *(v0 + 24) = sub_23DE79658;

  return swift_continuation_init();
}

_OWORD *OUTLINED_FUNCTION_89_0()
{
  *(v0 + 560) = v1;
  *(v0 + 568) = v2;

  return sub_23DE36CA4((v0 + 560), (v0 + 592));
}

uint64_t OUTLINED_FUNCTION_90_0()
{
  v2 = v0[51];
  v5 = v0[49];
  v3 = v0[44];
}

unint64_t OUTLINED_FUNCTION_91_0()
{
  *(v0 + 16) = v1;
  v4 = *(v3 + 32);
  return v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2;
}

void OUTLINED_FUNCTION_92_0(__n128 a1)
{
  v3[25] = a1;
  v3[24].n128_u64[0] = v1;
  v3[24].n128_u64[1] = v2;
  v4 = v3[22].n128_u64[0];
}

uint64_t OUTLINED_FUNCTION_105(uint64_t result)
{
  v2[159] = result;
  v2[158] = v1;
  v3 = v2[154];
  return result;
}

uint64_t OUTLINED_FUNCTION_108()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_120()
{

  return swift_dynamicCastObjCClass();
}

void OUTLINED_FUNCTION_128(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_129(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_131(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_133()
{

  return sub_23DE467E8(v0, 0xE700000000000000, v1);
}

_OWORD *OUTLINED_FUNCTION_139(uint64_t a1)
{

  return sub_23DE47BE4(a1, v1, 0xEA00000000006570);
}

uint64_t OUTLINED_FUNCTION_143()
{

  return sub_23E1FBF9C();
}

id OUTLINED_FUNCTION_144(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_145(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * v2 + 32);

  return v4;
}

uint64_t OUTLINED_FUNCTION_147()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_149()
{
  *(v0 + 432) = v1;
  *(v0 + 440) = v2;
  sub_23DE36CA4((v0 + 432), (v0 + 464));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_152()
{

  return sub_23DE7E098(v1 + 40, v0 + 56);
}

__n128 *OUTLINED_FUNCTION_158(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684632949;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_166()
{
}

uint64_t OUTLINED_FUNCTION_167()
{
  v3 = *(*(v1 + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_168()
{

  return sub_23E1FDA9C();
}

uint64_t OUTLINED_FUNCTION_169()
{
  v2 = *(v0 + 168);

  return sub_23E1FBFDC();
}

uint64_t OUTLINED_FUNCTION_170()
{

  return sub_23E1FDC0C();
}

void OUTLINED_FUNCTION_172()
{
}

uint64_t OUTLINED_FUNCTION_175(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 1064);
  return v2;
}

void OUTLINED_FUNCTION_178()
{
  *(v2 + 1408) = v0;
  *(v2 + 1400) = v1;
  v3 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_185()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return sub_23DE7E308(v0 + 56);
}

void OUTLINED_FUNCTION_187()
{
  v2 = v0[66];
  v3 = v0[52];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
}

id OUTLINED_FUNCTION_188(uint64_t a1)
{

  return [v1 isKindOfClass_];
}

uint64_t OUTLINED_FUNCTION_189()
{

  return sub_23E1FE66C();
}

uint64_t OUTLINED_FUNCTION_190()
{
  v2[172] = v0;
  v2[171] = v1;
  v5 = v2[129];
  v6 = *(v3 + 1472);

  return objc_opt_self();
}

uint64_t OUTLINED_FUNCTION_193()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_194(float a1)
{
  *v1 = a1;

  return sub_23E1FB7BC();
}

void OUTLINED_FUNCTION_195()
{
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[28];
}

uint64_t sub_23DE7F394()
{
  sub_23E1FDECC();
  *(v0 + 16) = sub_23E1FDEBC();
  v2 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DE7F428, v2, v1);
}

uint64_t sub_23DE7F428()
{
  v1 = *(v0 + 16);

  SBSLockDevice();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23DE7F520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DE7F5BC, v5, v4);
}

uint64_t sub_23DE7F5BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23DE7F680;
  v8 = v0[4];
  v9 = v0[2];

  return sub_23DE7F394();
}

uint64_t sub_23DE7F680()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 48);
  if (v2)
  {
    v10 = sub_23E1FBEBC();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_23DE7F880()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LockScreenAction();
  v1 = objc_msgSendSuper2(&v7, sel_disabledOnPlatforms);
  type metadata accessor for WFExecutionPlatform(0);
  v2 = sub_23E1FDDEC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C560, &unk_23E2290D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v4 = *MEMORY[0x277D7CC80];
  *(inited + 32) = *MEMORY[0x277D7CC80];
  v5 = v4;
  sub_23DE571A8(inited);
  return v2;
}

id sub_23DE7F93C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for LockScreenAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DE7FAB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DE7FB14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DE7FB70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE662F0;

  return sub_23DE7F520(v2, v3, v4);
}

id sub_23DE7FC58()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v179 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  v9 = MEMORY[0x277D7CB18];
  *(inited + 16) = xmmword_23E222360;
  v10 = *v9;
  v11 = MEMORY[0x277D837D0];
  *(inited + 32) = v10;
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E24FB40;
  v12 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  v13 = v10;
  v14 = v12;
  sub_23E1FDCBC();
  v15 = v7;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v16 = qword_280DAE278;
  v17 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v18 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v20 = v19;
  v21 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v196 = v21;
  *(inited + 80) = v20;
  v22 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v21;
  *(inited + 112) = v22;
  v194 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222370;
  v24 = *MEMORY[0x277D7CC20];
  *(v23 + 32) = *MEMORY[0x277D7CC20];
  v25 = v22;
  v26 = v24;
  v193 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v197 = v16;
  v27 = [v16 bundleURL];
  v195 = v3;
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v23 + 40) = v29;
  v30 = *MEMORY[0x277D7CC30];
  v31 = v196;
  *(v23 + 64) = v196;
  *(v23 + 72) = v30;
  v32 = v30;
  v193 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  v183 = v15;
  sub_23E1FC14C();
  v33 = [v16 bundleURL];
  sub_23E1FBF9C();

  v34 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v23 + 104) = v31;
  *(v23 + 80) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v36 = sub_23E1FDABC();
  v37 = v194;
  v38 = sub_23DF3BE54(v36);
  v39 = MEMORY[0x277D7CB48];
  *(inited + 120) = v38;
  v40 = *v39;
  *(inited + 144) = v37;
  *(inited + 152) = v40;
  *(inited + 160) = 0x65676E61724FLL;
  *(inited + 168) = 0xE600000000000000;
  v41 = *MEMORY[0x277D7CB60];
  v42 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v41;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000023E24FCE0;
  v43 = *MEMORY[0x277D7CCC0];
  *(inited + 224) = v42;
  *(inited + 232) = v43;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v44 = swift_initStackObject();
  v192 = xmmword_23E222350;
  *(v44 + 16) = xmmword_23E222350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x277D839B0];
  *(v44 + 48) = 0;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x7475706E494657;
  *(v44 + 104) = 0xE700000000000000;
  *(v44 + 120) = v42;
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  v46 = v45;
  *(v44 + 184) = 0xE500000000000000;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v44 + 216) = v188;
  *(v44 + 192) = &unk_2850236F8;
  v47 = v40;
  v48 = v41;
  v49 = v43;
  v50 = sub_23E1FDABC();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v194 = v51;
  *(inited + 240) = v50;
  v52 = *MEMORY[0x277D7CCC8];
  *(inited + 264) = v51;
  *(inited + 272) = v52;
  *(inited + 280) = 0;
  v53 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v46;
  *(inited + 312) = v53;
  v54 = v52;
  v55 = v53;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v56 = v197;
  v57 = [v197 bundleURL];
  sub_23E1FBF9C();

  v58 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 320) = v59;
  v60 = *MEMORY[0x277D7CDD0];
  v61 = v196;
  *(inited + 344) = v196;
  *(inited + 352) = v60;
  v62 = swift_allocObject();
  *(v62 + 16) = v192;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x277D837D0];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  *(v62 + 96) = 1;
  *(v62 + 120) = MEMORY[0x277D839B0];
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v63 = v60;
  v193 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v64 = [v56 bundleURL];
  sub_23E1FBF9C();

  v65 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v62 + 144) = v66;
  *(v62 + 168) = v61;
  *(v62 + 176) = 0x7365707954;
  v67 = v188;
  *(v62 + 216) = v188;
  *(v62 + 184) = 0xE500000000000000;
  *(v62 + 192) = &unk_285023728;
  v68 = MEMORY[0x277D837D0];
  *(inited + 360) = sub_23E1FDABC();
  v69 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v194;
  *(inited + 392) = v69;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v193 = swift_allocObject();
  v191 = xmmword_23E224C00;
  *(v193 + 16) = xmmword_23E224C00;
  v194 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_23E224C10;
  v71 = *MEMORY[0x277D7CDF8];
  *(v70 + 32) = *MEMORY[0x277D7CDF8];
  *(v70 + 40) = 0xD000000000000016;
  *(v70 + 48) = 0x800000023E24FDA0;
  v72 = *MEMORY[0x277D7CE00];
  *(v70 + 64) = v68;
  *(v70 + 72) = v72;
  v73 = MEMORY[0x277D7CE20];
  *(v70 + 80) = 0x65756C6156;
  *(v70 + 88) = 0xE500000000000000;
  v74 = *v73;
  *(v70 + 104) = v68;
  *(v70 + 112) = v74;
  *(v70 + 120) = &unk_285023798;
  v75 = *MEMORY[0x277D7CE38];
  *(v70 + 144) = v67;
  *(v70 + 152) = v75;
  v187 = swift_allocObject();
  *(v187 + 16) = v191;
  v188 = v71;
  v76 = v69;
  v77 = v72;
  v78 = v74;
  v79 = v75;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v80 = v197;
  v81 = [v197 bundleURL];
  v190 = inited;
  sub_23E1FBF9C();

  v82 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v83 = v187;
  *(v187 + 32) = v84;
  sub_23E1FDCBC();
  v186 = v85;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v86 = [v80 bundleURL];
  sub_23E1FBF9C();

  v87 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v83 + 40) = v88;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v89 = [v80 bundleURL];
  sub_23E1FBF9C();

  v90 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v91 = v187;
  *(v187 + 48) = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v70 + 160) = v91;
  v94 = *MEMORY[0x277D7CE70];
  *(v70 + 184) = v93;
  *(v70 + 192) = v94;
  *(v70 + 200) = 0xD000000000000018;
  *(v70 + 208) = 0x800000023E24D6F0;
  v95 = *MEMORY[0x277D7CE80];
  *(v70 + 224) = MEMORY[0x277D837D0];
  *(v70 + 232) = v95;
  v96 = v94;
  v97 = v95;
  v98 = v96;
  v99 = v97;
  v184 = v98;
  v185 = v99;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v100 = v197;
  v101 = [v197 bundleURL];
  sub_23E1FBF9C();

  v102 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v70 + 264) = v196;
  *(v70 + 240) = v103;
  _s3__C3KeyVMa_0(0);
  v187 = v104;
  v186 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v105 = sub_23E1FDABC();
  v106 = sub_23DF3BE9C(v105);
  *(v193 + 32) = v106;
  v107 = swift_allocObject();
  v108 = MEMORY[0x277D7CDF0];
  *(v107 + 16) = xmmword_23E224420;
  v109 = *v108;
  *(v107 + 32) = v109;
  *(v107 + 40) = 1701736270;
  *(v107 + 48) = 0xE400000000000000;
  v110 = MEMORY[0x277D837D0];
  v111 = v188;
  *(v107 + 64) = MEMORY[0x277D837D0];
  *(v107 + 72) = v111;
  *(v107 + 80) = 0xD000000000000014;
  *(v107 + 88) = 0x800000023E24EAF0;
  v112 = *MEMORY[0x277D7CE18];
  *(v107 + 104) = v110;
  *(v107 + 112) = v112;
  *(v107 + 120) = 1;
  v113 = v184;
  *(v107 + 144) = MEMORY[0x277D839B0];
  *(v107 + 152) = v113;
  *(v107 + 160) = 0x6F69746369444657;
  *(v107 + 168) = 0xEF79654B7972616ELL;
  v114 = v185;
  *(v107 + 184) = v110;
  *(v107 + 192) = v114;
  v115 = v109;
  v116 = v112;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v117 = [v100 bundleURL];
  sub_23E1FBF9C();

  v118 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v107 + 200) = v119;
  v120 = *MEMORY[0x277D7CEA8];
  v121 = v196;
  *(v107 + 224) = v196;
  *(v107 + 232) = v120;
  v180 = v120;
  v179 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v122 = [v100 bundleURL];
  sub_23E1FBF9C();

  v123 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v107 + 240) = v124;
  v125 = *MEMORY[0x277D7CEE8];
  *(v107 + 264) = v121;
  *(v107 + 272) = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E0, &qword_23E224C28);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_23E222340;
  v127 = v125;
  v128 = MEMORY[0x277D837D0];
  *(v126 + 32) = sub_23E1FDABC();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E8, &unk_23E224C30);
  *(v107 + 280) = v126;
  v130 = *MEMORY[0x277D7CF10];
  *(v107 + 304) = v129;
  *(v107 + 312) = v130;
  *(v107 + 344) = v128;
  *(v107 + 320) = 0x7468676952;
  *(v107 + 328) = 0xE500000000000000;
  v131 = v130;
  v132 = sub_23E1FDABC();
  v133 = sub_23DF3BE9C(v132);
  *(v193 + 40) = v133;
  v134 = swift_allocObject();
  *(v134 + 16) = v192;
  *(v134 + 32) = v188;
  *(v134 + 40) = 0xD000000000000019;
  *(v134 + 48) = 0x800000023E24F180;
  v135 = v184;
  *(v134 + 64) = v128;
  *(v134 + 72) = v135;
  *(v134 + 80) = 0x7475706E494657;
  *(v134 + 88) = 0xE700000000000000;
  v136 = v185;
  *(v134 + 104) = v128;
  *(v134 + 112) = v136;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v137 = v197;
  v138 = [v197 bundleURL];
  sub_23E1FBF9C();

  v139 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v134 + 120) = v140;
  v141 = v196;
  v142 = v180;
  *(v134 + 144) = v196;
  *(v134 + 152) = v142;
  sub_23E1FDCBC();
  *&v192 = v143;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v144 = [v137 bundleURL];
  sub_23E1FBF9C();

  v145 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v134 + 184) = v141;
  *(v134 + 160) = v146;
  v147 = sub_23E1FDABC();
  v148 = sub_23DF3BE9C(v147);
  v149 = v193;
  *(v193 + 48) = v148;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v151 = v190;
  *(v190 + 400) = v149;
  v152 = *MEMORY[0x277D7CB98];
  *(v151 + 424) = v150;
  *(v151 + 432) = v152;
  v196 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v153 = swift_allocObject();
  *(v153 + 16) = v191;
  v194 = "Dictionary (WFInput)";
  v154 = v152;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v155 = v197;
  v156 = [v197 bundleURL];
  sub_23E1FBF9C();

  v157 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v159 = v158;
  v160 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v153 + 32) = sub_23DF34C40(0xD00000000000002ALL, v194 | 0x8000000000000000, v159);
  v194 = "onaryValueType} in ${WFInput}";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v161 = [v155 bundleURL];
  sub_23E1FBF9C();

  v162 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v164 = v163;
  v165 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v153 + 40) = sub_23DF34C40(0xD00000000000002CLL, v194 | 0x8000000000000000, v164);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v166 = [v197 bundleURL];
  sub_23E1FBF9C();

  v167 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v169 = v168;
  v170 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v153 + 48) = sub_23DF34C40(0xD000000000000037, 0x800000023E24FF50, v169);
  v171 = v196;
  v172 = sub_23DF333E0();
  v173 = MEMORY[0x277D7CB78];
  v174 = v190;
  *(v190 + 440) = v172;
  v175 = *v173;
  *(v174 + 464) = v171;
  *(v174 + 472) = v175;
  *(v174 + 504) = MEMORY[0x277D839B0];
  *(v174 + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v176 = v175;
  v177 = sub_23E1FDABC();
  return sub_23DF3BF9C(v177);
}

id sub_23DE81380()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x800000023E250020;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v132 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v131 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v129 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v21 = v3;
  v22 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v23 = v19;
  v24 = v22;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v25 = [v132 bundleURL];
  v130 = v21;
  sub_23E1FBF9C();

  v26 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v20 + 64) = v131;
  *(v20 + 40) = v27;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v28 = sub_23E1FDABC();
  v29 = v129;
  *(inited + 120) = sub_23DF3BE54(v28);
  v30 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v29;
  *(inited + 152) = v30;
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v31 = *MEMORY[0x277D7CB60];
  v32 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v31;
  *(inited + 200) = 0x65626F6C67;
  *(inited + 208) = 0xE500000000000000;
  v33 = v7;
  v34 = *MEMORY[0x277D7CB58];
  *(inited + 224) = v32;
  *(inited + 232) = v34;
  *(inited + 240) = 6579538;
  *(inited + 248) = 0xE300000000000000;
  v35 = *MEMORY[0x277D7CCC0];
  *(inited + 264) = v32;
  *(inited + 272) = v35;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v36 = swift_initStackObject();
  v126 = xmmword_23E222350;
  *(v36 + 16) = xmmword_23E222350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x277D839B0];
  *(v36 + 48) = 0;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 1702125892;
  *(v36 + 104) = 0xE400000000000000;
  *(v36 + 120) = v32;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v36 + 216) = v129;
  *(v36 + 192) = &unk_285023858;
  v38 = v30;
  v39 = v31;
  v40 = v34;
  v41 = v35;
  v42 = sub_23E1FDABC();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v128 = v43;
  *(inited + 280) = v42;
  v44 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v43;
  *(inited + 312) = v44;
  v45 = v44;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v46 = v132;
  v47 = [v132 bundleURL];
  sub_23E1FBF9C();

  v48 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v49 = v33;
  sub_23DE477A0();
  *(inited + 320) = v50;
  v51 = *MEMORY[0x277D7CDD0];
  v52 = v131;
  *(inited + 344) = v131;
  *(inited + 352) = v51;
  v53 = swift_initStackObject();
  *(v53 + 16) = v126;
  *(v53 + 32) = 0x75736F6C63736944;
  *(v53 + 40) = 0xEF6C6576654C6572;
  *(v53 + 48) = 0x63696C627550;
  *(v53 + 56) = 0xE600000000000000;
  *(v53 + 72) = MEMORY[0x277D837D0];
  *(v53 + 80) = 0x656C7069746C754DLL;
  *(v53 + 88) = 0xE800000000000000;
  *(v53 + 96) = 0;
  *(v53 + 120) = MEMORY[0x277D839B0];
  *(v53 + 128) = 0x614E74757074754FLL;
  *(v53 + 136) = 0xEA0000000000656DLL;
  v54 = v51;
  v127 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  v120 = v49;
  sub_23E1FC14C();
  v55 = [v46 bundleURL];
  sub_23E1FBF9C();

  v56 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v53 + 144) = v57;
  *(v53 + 168) = v52;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 216) = v129;
  *(v53 + 184) = 0xE500000000000000;
  *(v53 + 192) = &unk_285023898;
  v58 = MEMORY[0x277D837D0];
  *(inited + 360) = sub_23E1FDABC();
  v59 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v128;
  *(inited + 392) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_23E224C00;
  v128 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_23E224710;
  v61 = *MEMORY[0x277D7CDF8];
  *(v60 + 32) = *MEMORY[0x277D7CDF8];
  *(v60 + 40) = 0xD000000000000014;
  *(v60 + 48) = 0x800000023E250150;
  v62 = *MEMORY[0x277D7CE70];
  *(v60 + 64) = v58;
  *(v60 + 72) = v62;
  *(v60 + 80) = 1702125892;
  *(v60 + 88) = 0xE400000000000000;
  v63 = *MEMORY[0x277D7CE80];
  *(v60 + 104) = v58;
  *(v60 + 112) = v63;
  v64 = v61;
  v65 = v62;
  v66 = v63;
  v67 = v64;
  v68 = v65;
  v69 = v66;
  v125 = v67;
  v124 = v68;
  *&v126 = v69;
  v70 = v59;
  v123 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v71 = v132;
  v72 = [v132 bundleURL];
  sub_23E1FBF9C();

  v73 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v60 + 120) = v74;
  v75 = *MEMORY[0x277D7CEA8];
  v76 = v131;
  *(v60 + 144) = v131;
  *(v60 + 152) = v75;
  v77 = v75;
  sub_23E1FDCBC();
  v123 = v78;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v79 = [v71 bundleURL];
  sub_23E1FBF9C();

  v80 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v60 + 184) = v76;
  *(v60 + 160) = v81;
  v82 = sub_23E1FDBDC();
  v83 = MEMORY[0x277D837D0];
  *(v60 + 224) = MEMORY[0x277D837D0];
  *(v60 + 192) = v82;
  *(v60 + 200) = 0x6E6F5A20656D6954;
  *(v60 + 208) = 0xE900000000000065;
  _s3__C3KeyVMa_0(0);
  v123 = v84;
  v122 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v85 = sub_23E1FDABC();
  v86 = sub_23DF3BE9C(v85);
  *(v129 + 32) = v86;
  v87 = swift_allocObject();
  v119 = xmmword_23E222380;
  *(v87 + 16) = xmmword_23E222380;
  v117 = 0xD000000000000019;
  v118 = 0x800000023E2501D0;
  v88 = v124;
  *(v87 + 32) = v125;
  *(v87 + 40) = 0xD000000000000019;
  *(v87 + 48) = 0x800000023E2501D0;
  *(v87 + 64) = v83;
  *(v87 + 72) = v88;
  strcpy((v87 + 80), "SourceTimeZone");
  *(v87 + 95) = -18;
  v89 = v126;
  *(v87 + 104) = v83;
  *(v87 + 112) = v89;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v90 = [v132 bundleURL];
  sub_23E1FBF9C();

  v91 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v87 + 144) = v131;
  *(v87 + 120) = v92;
  v93 = sub_23E1FDABC();
  v94 = sub_23DF3BE9C(v93);
  *(v129 + 40) = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = v119;
  v97 = v117;
  v96 = v118;
  *(v95 + 32) = v125;
  *(v95 + 40) = v97;
  *(v95 + 48) = v96;
  v98 = MEMORY[0x277D837D0];
  v99 = v124;
  *(v95 + 64) = MEMORY[0x277D837D0];
  *(v95 + 72) = v99;
  *(v95 + 80) = 0xD000000000000013;
  *(v95 + 88) = 0x800000023E250210;
  v100 = v126;
  *(v95 + 104) = v98;
  *(v95 + 112) = v100;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v101 = [v132 bundleURL];
  sub_23E1FBF9C();

  v102 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v95 + 144) = v131;
  *(v95 + 120) = v103;
  v104 = sub_23E1FDABC();
  v105 = sub_23DF3BE9C(v104);
  v106 = v129;
  *(v129 + 48) = v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v106;
  v108 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v107;
  *(inited + 432) = v108;
  v109 = v108;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v110 = [v132 bundleURL];
  sub_23E1FBF9C();

  v111 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v113 = v112;
  v114 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  *(inited + 464) = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v114;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v115 = sub_23E1FDABC();
  return sub_23DF3BF9C(v115);
}

id sub_23DE82378()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v219 = v208 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208[2] = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v8 = *MEMORY[0x277D7CB18];
  v9 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x800000023E250370;
  v10 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v221 = inited;
  v11 = v8;
  v12 = v10;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v13 = v6;
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v14 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v220 = v19;
  v20 = v221;
  v221[10] = v18;
  v21 = *MEMORY[0x277D7CC18];
  v20[13] = v19;
  v20[14] = v21;
  *&v218 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222370;
  v23 = *MEMORY[0x277D7CC20];
  *(v22 + 32) = *MEMORY[0x277D7CC20];
  v24 = v21;
  v25 = v23;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v222 = v14;
  v26 = [v14 bundleURL];
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v28 = v13;
  sub_23DE477A0();
  *(v22 + 40) = v29;
  v30 = *MEMORY[0x277D7CC30];
  v31 = v220;
  *(v22 + 64) = v220;
  *(v22 + 72) = v30;
  v32 = v30;
  v217 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  v208[1] = v28;
  sub_23E1FC14C();
  v33 = [v14 bundleURL];
  sub_23E1FBF9C();

  v34 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v22 + 104) = v31;
  *(v22 + 80) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v36 = sub_23E1FDABC();
  v37 = v218;
  v38 = sub_23DF3BE54(v36);
  v39 = v221;
  v221[15] = v38;
  v40 = *MEMORY[0x277D7CB48];
  v39[18] = v37;
  v39[19] = v40;
  v41 = MEMORY[0x277D7CB60];
  v39[20] = 1953392980;
  v39[21] = 0xE400000000000000;
  v42 = *v41;
  v43 = MEMORY[0x277D837D0];
  v39[23] = MEMORY[0x277D837D0];
  v39[24] = v42;
  v39[25] = 0xD000000000000014;
  v39[26] = 0x800000023E250500;
  v44 = *MEMORY[0x277D7CB58];
  v39[28] = v43;
  v39[29] = v44;
  v39[30] = 6579538;
  v39[31] = 0xE300000000000000;
  v45 = *MEMORY[0x277D7CCC0];
  v39[33] = v43;
  v39[34] = v45;
  v46 = v43;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v47 = swift_initStackObject();
  v218 = xmmword_23E222380;
  *(v47 + 16) = xmmword_23E222380;
  strcpy((v47 + 32), "ParameterKey");
  *(v47 + 45) = 0;
  *(v47 + 46) = -5120;
  *(v47 + 48) = 0x7475706E494657;
  *(v47 + 56) = 0xE700000000000000;
  *(v47 + 72) = v46;
  *(v47 + 80) = 0x6465726975716552;
  *(v47 + 88) = 0xE800000000000000;
  v48 = MEMORY[0x277D839B0];
  *(v47 + 96) = 1;
  *(v47 + 120) = v48;
  *(v47 + 128) = 0x7365707954;
  *(v47 + 136) = 0xE500000000000000;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v47 + 168) = v217;
  *(v47 + 144) = &unk_2850238C8;
  v49 = v40;
  v50 = v42;
  v51 = v44;
  v52 = v45;
  v53 = sub_23E1FDABC();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v216 = v54;
  v55 = v39;
  v39[35] = v53;
  v56 = *MEMORY[0x277D7CCC8];
  v39[38] = v54;
  v39[39] = v56;
  *(v39 + 320) = 0;
  v57 = *MEMORY[0x277D7CB90];
  v39[43] = v48;
  v39[44] = v57;
  v58 = v56;
  v59 = v57;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v60 = v222;
  v61 = [v222 bundleURL];
  sub_23E1FBF9C();

  v62 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v55[45] = v63;
  v64 = *MEMORY[0x277D7CDD0];
  v55[48] = v220;
  v55[49] = v64;
  v65 = swift_initStackObject();
  *(v65 + 16) = v218;
  *(v65 + 32) = 0x75736F6C63736944;
  *(v65 + 40) = 0xEF6C6576654C6572;
  *(v65 + 48) = 0x63696C627550;
  *(v65 + 56) = 0xE600000000000000;
  *(v65 + 72) = MEMORY[0x277D837D0];
  *(v65 + 80) = 0x614E74757074754FLL;
  *(v65 + 88) = 0xEA0000000000656DLL;
  v66 = v64;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v67 = [v60 bundleURL];
  sub_23E1FBF9C();

  v68 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v65 + 96) = v69;
  v70 = v220;
  *(v65 + 120) = v220;
  *(v65 + 128) = 0x7365707954;
  *(v65 + 168) = v217;
  *(v65 + 136) = 0xE500000000000000;
  *(v65 + 144) = &unk_2850238F8;
  v71 = MEMORY[0x277D837D0];
  v72 = sub_23E1FDABC();
  v73 = v221;
  v221[50] = v72;
  v74 = *MEMORY[0x277D7CBA0];
  v73[53] = v216;
  v73[54] = v74;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_23E224C00;
  v213 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  *&v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v75 = swift_allocObject();
  *(v75 + 16) = v218;
  v76 = *MEMORY[0x277D7CDF8];
  v208[0] = 0x800000023E250150;
  *(v75 + 32) = v76;
  *(v75 + 40) = 0xD000000000000014;
  *(v75 + 48) = 0x800000023E250150;
  v77 = *MEMORY[0x277D7CE70];
  *(v75 + 64) = v71;
  *(v75 + 72) = v77;
  *(v75 + 80) = 0xD000000000000013;
  *(v75 + 88) = 0x800000023E2505C0;
  v78 = *MEMORY[0x277D7CE80];
  *(v75 + 104) = v71;
  *(v75 + 112) = v78;
  v79 = v76;
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v83 = v80;
  v84 = v81;
  v209 = v82;
  v215 = v83;
  v216 = v84;
  v85 = v74;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v86 = [v222 bundleURL];
  sub_23E1FBF9C();

  v87 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v75 + 144) = v70;
  *(v75 + 120) = v88;
  _s3__C3KeyVMa_0(0);
  v212 = v89;
  v214 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v90 = sub_23E1FDABC();
  v91 = sub_23DF3BE9C(v90);
  v92 = v211;
  *(v211 + 32) = v91;
  v93 = swift_allocObject();
  *(v93 + 16) = v218;
  *(v93 + 32) = v209;
  *(v93 + 40) = 0xD000000000000014;
  *(v93 + 48) = v208[0];
  v94 = MEMORY[0x277D837D0];
  v95 = v215;
  *(v93 + 64) = MEMORY[0x277D837D0];
  *(v93 + 72) = v95;
  *(v93 + 80) = 0x7475706E494657;
  *(v93 + 88) = 0xE700000000000000;
  v96 = v216;
  *(v93 + 104) = v94;
  *(v93 + 112) = v96;
  *&v218 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v97 = [v222 bundleURL];
  sub_23E1FBF9C();

  v98 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v93 + 144) = v220;
  *(v93 + 120) = v99;
  v100 = sub_23E1FDABC();
  *(v92 + 40) = sub_23DF3BE9C(v100);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_23E224710;
  *(v101 + 32) = v209;
  *(v101 + 40) = 0xD000000000000016;
  v102 = MEMORY[0x277D7CE00];
  *(v101 + 48) = 0x800000023E24FDA0;
  v103 = *v102;
  v104 = MEMORY[0x277D837D0];
  *(v101 + 64) = MEMORY[0x277D837D0];
  *(v101 + 72) = v103;
  *(v101 + 80) = 0x736574756E694DLL;
  *(v101 + 88) = 0xE700000000000000;
  v105 = *MEMORY[0x277D7CE38];
  *(v101 + 104) = v104;
  *(v101 + 112) = v105;
  *&v218 = swift_allocObject();
  v210 = xmmword_23E224C50;
  *(v218 + 16) = xmmword_23E224C50;
  v106 = v103;
  v107 = v105;
  sub_23E1FDCBC();
  v209 = v108;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v109 = v222;
  v110 = [v222 bundleURL];
  sub_23E1FBF9C();

  v111 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v112 = v218;
  *(v218 + 32) = v113;
  sub_23E1FDCBC();
  v209 = v114;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v115 = [v109 bundleURL];
  sub_23E1FBF9C();

  v116 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v112 + 40) = v117;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v118 = [v109 bundleURL];
  sub_23E1FBF9C();

  v119 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v120 = v218;
  *(v218 + 48) = v121;
  sub_23E1FDCBC();
  v209 = v122;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v123 = [v109 bundleURL];
  sub_23E1FBF9C();

  v124 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v120 + 56) = v125;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v126 = [v109 bundleURL];
  sub_23E1FBF9C();

  v127 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v128 = v218;
  *(v218 + 64) = v129;
  sub_23E1FDCBC();
  v209 = v130;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v131 = [v109 bundleURL];
  sub_23E1FBF9C();

  v132 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v128 + 72) = v133;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v134 = [v109 bundleURL];
  sub_23E1FBF9C();

  v135 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v136 = v218;
  *(v218 + 80) = v137;
  v209 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v138 = v222;
  v139 = [v222 bundleURL];
  sub_23E1FBF9C();

  v140 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v136 + 88) = v141;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v101 + 120) = v136;
  v143 = v215;
  *(v101 + 144) = v142;
  *(v101 + 152) = v143;
  *(v101 + 160) = 0x6E55656D69544657;
  *(v101 + 168) = 0xEF74696E556C6974;
  v144 = v216;
  *(v101 + 184) = MEMORY[0x277D837D0];
  *(v101 + 192) = v144;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v145 = [v138 bundleURL];
  sub_23E1FBF9C();

  v146 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v101 + 224) = v220;
  *(v101 + 200) = v147;
  v148 = sub_23E1FDABC();
  v149 = sub_23DF3BE9C(v148);
  v150 = v211;
  *(v211 + 48) = v149;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v152 = v221;
  v221[55] = v150;
  v153 = *MEMORY[0x277D7CB98];
  v152[58] = v151;
  v152[59] = v153;
  *&v218 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v220 = swift_allocObject();
  *(v220 + 16) = v210;
  v154 = v153;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v155 = [v138 bundleURL];
  sub_23E1FBF9C();

  v156 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v158 = v157;
  v159 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v160 = sub_23DF34C40(0xD000000000000037, 0x800000023E250780, v158);
  v161 = v220;
  *(v220 + 32) = v160;
  v217 = "Date} and ${WFInput}";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v162 = [v138 bundleURL];
  sub_23E1FBF9C();

  v163 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v165 = v164;
  v166 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v161[5] = sub_23DF34C40(0xD000000000000034, v217 | 0x8000000000000000, v165);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v167 = [v222 bundleURL];
  sub_23E1FBF9C();

  v168 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v170 = v169;
  v171 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v161[6] = sub_23DF34C40(0xD000000000000034, 0x800000023E250930, v170);
  v217 = "Summary - Minutes)";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v172 = v222;
  v173 = [v222 bundleURL];
  sub_23E1FBF9C();

  v174 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v176 = v175;
  v177 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v161[7] = sub_23DF34C40(0xD000000000000032, v217 | 0x8000000000000000, v176);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v178 = [v172 bundleURL];
  sub_23E1FBF9C();

  v179 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v181 = v180;
  v182 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v183 = sub_23DF34C40(0xD000000000000031, 0x800000023E250A90, v181);
  v184 = v220;
  *(v220 + 64) = v183;
  v217 = "put} (Parameter Summary - Days)";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v185 = [v172 bundleURL];
  sub_23E1FBF9C();

  v186 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v188 = v187;
  v189 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v184[9] = sub_23DF34C40(0xD000000000000032, v217 | 0x8000000000000000, v188);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v190 = [v222 bundleURL];
  sub_23E1FBF9C();

  v191 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v193 = v192;
  v194 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v184[10] = sub_23DF34C40(0xD000000000000033, 0x800000023E250BE0, v193);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v195 = [v222 bundleURL];
  sub_23E1FBF9C();

  v196 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v198 = v197;
  v199 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v184[11] = sub_23DF34C40(0xD000000000000032, 0x800000023E250C90, v198);
  v200 = v218;
  v201 = sub_23DF333E0();
  v202 = MEMORY[0x277D7CB78];
  v203 = v221;
  v221[60] = v201;
  v204 = *v202;
  v203[63] = v200;
  v203[64] = v204;
  v203[68] = MEMORY[0x277D839B0];
  *(v203 + 520) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v205 = v204;
  v206 = sub_23E1FDABC();
  return sub_23DF3BF9C(v206);
}

uint64_t sub_23DE83F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a1;
  v117 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D660, &qword_23E224C60);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v115 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v115 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v115 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v115 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v115 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v115 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v115 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v115 - v32;
  MEMORY[0x28223BE20](v31);
  v39 = &v115 - v35;
  if (!(!v61 & v40))
  {
    switch(a2)
    {
      case 0:
        sub_23DE847C8(v116, v24);
        v46 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v24);
        if (v61)
        {
          goto LABEL_49;
        }

        OUTLINED_FUNCTION_1_7();
        v48 = v117;
        (*(v47 + 32))(v117, v24, v46);
        v49 = MEMORY[0x277D73088];
        goto LABEL_35;
      case 1:
        sub_23DE847C8(v116, v21);
        v92 = sub_23E1FD3DC();
        if (__swift_getEnumTagSinglePayload(v21, 1, v92) == 1)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_21(v92);
        v48 = v117;
        (*(v93 + 32))(v117, v21, v92);
        v49 = MEMORY[0x277D73050];
LABEL_35:
        v94 = *v49;
        v95 = sub_23E1FD6FC();
        OUTLINED_FUNCTION_21(v95);
        return (*(v96 + 104))(v48, v94);
      case 2:
        sub_23DE847C8(v116, v30);
        v83 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v30);
        if (v61)
        {
          goto LABEL_50;
        }

        OUTLINED_FUNCTION_1_7();
        v85 = *(v84 + 32);
        v86 = OUTLINED_FUNCTION_4_4();
        v87(v86, v30, v83);
        v45 = MEMORY[0x277D73040];
        goto LABEL_42;
      case 3:
        sub_23DE847C8(v116, v27);
        v55 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v27);
        if (v61)
        {
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_1_7();
        v57 = *(v56 + 32);
        v58 = OUTLINED_FUNCTION_4_4();
        v59(v58, v27, v55);
        v45 = MEMORY[0x277D73058];
        goto LABEL_42;
      case 4:
        sub_23DE847C8(v116, &v115 - v35);
        v107 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v39);
        if (v61)
        {
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_1_7();
        v109 = *(v108 + 32);
        v110 = OUTLINED_FUNCTION_4_4();
        v111(v110, v39, v107);
        v45 = MEMORY[0x277D73060];
        goto LABEL_42;
      case 5:
        sub_23DE847C8(v116, v33);
        v97 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v33);
        if (v61)
        {
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_1_7();
        v99 = *(v98 + 32);
        v100 = OUTLINED_FUNCTION_4_4();
        v101(v100, v33, v97);
        v45 = MEMORY[0x277D73038];
        goto LABEL_42;
      case 6:
      case 7:
        goto LABEL_56;
      case 8:
        sub_23DE847C8(v116, v15);
        v102 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v15);
        if (v61)
        {
          goto LABEL_54;
        }

        OUTLINED_FUNCTION_1_7();
        v104 = *(v103 + 32);
        v105 = OUTLINED_FUNCTION_4_4();
        v106(v105, v15, v102);
        v45 = MEMORY[0x277D73028];
        goto LABEL_42;
      case 9:
        sub_23DE847C8(v116, v12);
        v70 = sub_23E1FD3DC();
        OUTLINED_FUNCTION_0_8(v12);
        if (v61)
        {
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_1_7();
        v72 = *(v71 + 32);
        v73 = OUTLINED_FUNCTION_4_4();
        v74(v73, v12, v70);
        v45 = MEMORY[0x277D73078];
        goto LABEL_42;
      default:
        goto LABEL_57;
    }
  }

  switch(a2)
  {
    case 999:
      a2 = v34;
      sub_23DE847C8(v116, v34);
      sub_23E1FD3DC();
      OUTLINED_FUNCTION_0_8(a2);
      if (v61)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_1_7();
      v42 = *(v41 + 32);
      v43 = OUTLINED_FUNCTION_2_8();
      v44(v43);
      v45 = MEMORY[0x277D73048];
      goto LABEL_42;
    case 1000:
      a2 = v38;
      sub_23DE847C8(v116, v38);
      sub_23E1FD3DC();
      OUTLINED_FUNCTION_0_8(a2);
      if (v61)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_1_7();
      v89 = *(v88 + 32);
      v90 = OUTLINED_FUNCTION_2_8();
      v91(v90);
      v45 = MEMORY[0x277D73098];
      goto LABEL_42;
    case 1001:
      a2 = v37;
      sub_23DE847C8(v116, v37);
      sub_23E1FD3DC();
      OUTLINED_FUNCTION_0_8(a2);
      if (v61)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_1_7();
      v67 = *(v66 + 32);
      v68 = OUTLINED_FUNCTION_2_8();
      v69(v68);
      v45 = MEMORY[0x277D73090];
      goto LABEL_42;
    case 1002:
      v50 = MEMORY[0x277D73068];
      goto LABEL_26;
    case 1003:
      a2 = v36;
      sub_23DE847C8(v116, v36);
      sub_23E1FD3DC();
      OUTLINED_FUNCTION_0_8(a2);
      if (!v61)
      {
        OUTLINED_FUNCTION_1_7();
        v52 = *(v51 + 32);
        v53 = OUTLINED_FUNCTION_2_8();
        v54(v53);
        v45 = MEMORY[0x277D730A0];
LABEL_42:
        v112 = *v45;
        v113 = sub_23E1FD6FC();
        OUTLINED_FUNCTION_21(v113);
        return (*(v114 + 104))(v24, v112);
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    default:
      switch(a2)
      {
        case 'c':
          sub_23DE847C8(v116, v18);
          v60 = sub_23E1FD3DC();
          OUTLINED_FUNCTION_0_8(v18);
          if (!v61)
          {
            OUTLINED_FUNCTION_1_7();
            v63 = *(v62 + 32);
            v64 = OUTLINED_FUNCTION_4_4();
            v65(v64, v18, v60);
            v45 = MEMORY[0x277D73070];
            goto LABEL_42;
          }

LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          type metadata accessor for WFContentOperator(0);
          v118 = a2;
          sub_23E1FE79C();
          __break(1u);
LABEL_57:
          JUMPOUT(0);
        case 'd':
          v50 = MEMORY[0x277D73080];
          break;
        case 'e':
          v50 = MEMORY[0x277D73030];
          break;
        default:
          goto LABEL_56;
      }

LABEL_26:
      v75 = *v50;
      v76 = sub_23E1FD6FC();
      OUTLINED_FUNCTION_21(v76);
      v78 = *(v77 + 104);
      v80 = v79;
      v81 = v117;

      return v78(v81, v75, v80);
  }
}

uint64_t sub_23DE847C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D660, &qword_23E224C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_23DE848BC()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v132 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E250D80;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v147 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v146 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v144 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v21 = v7;
  v22 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v23 = v19;
  v24 = v22;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v132[2] = v21;
  sub_23E1FC14C();
  v25 = [v147 bundleURL];
  v145 = v3;
  sub_23E1FBF9C();

  v26 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v20 + 64) = v146;
  *(v20 + 40) = v27;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v28 = sub_23E1FDABC();
  v29 = v144;
  v30 = sub_23DF3BE54(v28);
  v31 = MEMORY[0x277D7CB48];
  *(inited + 120) = v30;
  v32 = *v31;
  *(inited + 144) = v29;
  *(inited + 152) = v32;
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v33 = *MEMORY[0x277D7CB60];
  v34 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v33;
  v35 = MEMORY[0x277D7CB58];
  *(inited + 200) = 0x642E6E6F2E636F64;
  *(inited + 208) = 0xEF6C6C69662E636FLL;
  v36 = *v35;
  *(inited + 224) = v34;
  *(inited + 232) = v36;
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  v37 = *MEMORY[0x277D7CCC0];
  *(inited + 264) = v34;
  *(inited + 272) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v38 = swift_initStackObject();
  v134 = xmmword_23E222350;
  *(v38 + 16) = xmmword_23E222350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x277D839B0];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = v34;
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v38 + 216) = v135;
  *(v38 + 192) = &unk_285023928;
  v40 = v32;
  v41 = v33;
  v42 = v36;
  v43 = v37;
  v44 = sub_23E1FDABC();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 280) = v44;
  v46 = *MEMORY[0x277D7CCC8];
  *(inited + 304) = v45;
  *(inited + 312) = v46;
  *(inited + 320) = 1;
  v47 = *MEMORY[0x277D7CB90];
  *(inited + 344) = v39;
  *(inited + 352) = v47;
  v48 = v46;
  v49 = v47;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v50 = [v147 bundleURL];
  sub_23E1FBF9C();

  v51 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 360) = v52;
  v53 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v146;
  *(inited + 392) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_23E224C00;
  v143 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_23E224710;
  v55 = *MEMORY[0x277D7CDF8];
  *(v54 + 32) = *MEMORY[0x277D7CDF8];
  *(v54 + 40) = 0xD000000000000011;
  *(v54 + 48) = 0x800000023E250E40;
  v56 = *MEMORY[0x277D7CE00];
  *(v54 + 64) = MEMORY[0x277D837D0];
  *(v54 + 72) = v56;
  *(v54 + 80) = 0;
  v57 = *MEMORY[0x277D7CE08];
  *(v54 + 104) = v39;
  *(v54 + 112) = v57;
  v58 = v55;
  v59 = v57;
  v141 = v58;
  v133 = v59;
  v60 = v53;
  v61 = v56;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v62 = [v147 bundleURL];
  sub_23E1FBF9C();

  v63 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v54 + 120) = v64;
  v65 = *MEMORY[0x277D7CE70];
  v66 = v146;
  *(v54 + 144) = v146;
  *(v54 + 152) = v65;
  *(v54 + 160) = 0x4F6C61636F4C4657;
  *(v54 + 168) = 0xEB00000000796C6ELL;
  v67 = *MEMORY[0x277D7CE80];
  *(v54 + 184) = MEMORY[0x277D837D0];
  *(v54 + 192) = v67;
  v68 = v65;
  v69 = v67;
  v70 = v68;
  v71 = v69;
  v138 = v70;
  v137 = v71;
  v140 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v72 = [v147 bundleURL];
  sub_23E1FBF9C();

  v73 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v54 + 224) = v66;
  *(v54 + 200) = v74;
  _s3__C3KeyVMa_0(0);
  v140 = v75;
  v139 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v76 = sub_23E1FDABC();
  v77 = sub_23DF3BE9C(v76);
  *(v144 + 32) = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_23E224C10;
  *(v78 + 32) = v141;
  *(v78 + 40) = 0xD000000000000014;
  *(v78 + 48) = 0x800000023E250150;
  v79 = v133;
  *(v78 + 64) = MEMORY[0x277D837D0];
  *(v78 + 72) = v79;
  v133 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v80 = v147;
  v81 = [v147 bundleURL];
  sub_23E1FBF9C();

  v82 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v78 + 80) = v83;
  v84 = v138;
  *(v78 + 104) = v146;
  *(v78 + 112) = v84;
  *(v78 + 120) = 0xD000000000000010;
  *(v78 + 128) = 0x800000023E251070;
  v85 = v137;
  *(v78 + 144) = MEMORY[0x277D837D0];
  *(v78 + 152) = v85;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v86 = [v80 bundleURL];
  sub_23E1FBF9C();

  v87 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v78 + 160) = v88;
  v89 = *MEMORY[0x277D7CEA8];
  v90 = v146;
  *(v78 + 184) = v146;
  *(v78 + 192) = v89;
  v133 = v89;
  v132[1] = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v91 = [v147 bundleURL];
  sub_23E1FBF9C();

  v92 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v78 + 200) = v93;
  v94 = *MEMORY[0x277D7CF10];
  *(v78 + 224) = v90;
  *(v78 + 232) = v94;
  v95 = MEMORY[0x277D837D0];
  *(v78 + 264) = MEMORY[0x277D837D0];
  *(v78 + 240) = 0x7468676952;
  *(v78 + 248) = 0xE500000000000000;
  v96 = v94;
  v97 = sub_23E1FDABC();
  v98 = sub_23DF3BE9C(v97);
  *(v144 + 40) = v98;
  v99 = swift_allocObject();
  *(v99 + 16) = v134;
  *(v99 + 32) = v141;
  *(v99 + 40) = 0xD000000000000019;
  *(v99 + 48) = 0x800000023E24F180;
  v100 = v137;
  v101 = v138;
  *(v99 + 64) = v95;
  *(v99 + 72) = v101;
  *(v99 + 80) = 0x7475706E494657;
  *(v99 + 88) = 0xE700000000000000;
  *(v99 + 104) = v95;
  *(v99 + 112) = v100;
  v142 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v102 = v147;
  v103 = [v147 bundleURL];
  sub_23E1FBF9C();

  v104 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v99 + 120) = v105;
  v106 = v146;
  v107 = v133;
  *(v99 + 144) = v146;
  *(v99 + 152) = v107;
  v108 = sub_23E1FDCBC();
  v141 = v109;
  v142 = v108;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v110 = [v102 bundleURL];
  sub_23E1FBF9C();

  v111 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v99 + 184) = v106;
  *(v99 + 160) = v112;
  v113 = sub_23E1FDABC();
  v114 = sub_23DF3BE9C(v113);
  v115 = v144;
  *(v144 + 48) = v114;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v115;
  v117 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v116;
  *(inited + 432) = v117;
  v118 = v117;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v119 = [v147 bundleURL];
  sub_23E1FBF9C();

  v120 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v122 = v121;
  v123 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v124 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v123;
  v125 = *MEMORY[0x277D7CBB0];
  *(inited + 464) = v124;
  *(inited + 472) = v125;
  *(inited + 480) = &unk_285023958;
  v126 = *MEMORY[0x277D7CF20];
  v127 = v135;
  *(inited + 504) = v135;
  *(inited + 512) = v126;
  *(inited + 544) = v127;
  *(inited + 520) = &unk_285023988;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v128 = v125;
  v129 = v126;
  v130 = sub_23E1FDABC();
  return sub_23DF3BF9C(v130);
}

id sub_23DE859B0()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224420;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x800000023E2511B0;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v109 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v108 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v105 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v21 = v3;
  v22 = v7;
  v23 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v24 = v19;
  v25 = v23;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v26 = [v109 bundleURL];
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v28 = v21;
  sub_23DE477A0();
  v29 = v108;
  *(v20 + 64) = v108;
  *(v20 + 40) = v30;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v31 = sub_23E1FDABC();
  v32 = v105;
  *(inited + 120) = sub_23DF3BE54(v31);
  v33 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v32;
  *(inited + 152) = v33;
  *(inited + 160) = 0x6F6769646E49;
  *(inited + 168) = 0xE600000000000000;
  v34 = *MEMORY[0x277D7CB90];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v34;
  v35 = v33;
  v36 = v34;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v101 = v22;
  sub_23E1FC14C();
  v37 = [v109 bundleURL];
  sub_23E1FBF9C();

  v38 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 200) = v39;
  v40 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v29;
  *(inited + 232) = v40;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v42 = MEMORY[0x277D837D0];
  v43 = sub_23E1FDABC();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7F0, &qword_23E224C68);
  *(inited + 240) = v43;
  v45 = *MEMORY[0x277D7CBA0];
  *(inited + 264) = v44;
  *(inited + 272) = v45;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_23E2235B0;
  v104 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v46 = swift_initStackObject();
  v47 = MEMORY[0x277D7CDF8];
  *(v46 + 16) = xmmword_23E224710;
  v48 = *v47;
  *(v46 + 32) = *v47;
  *(v46 + 40) = 0xD000000000000016;
  *(v46 + 48) = 0x800000023E24FDA0;
  v49 = *MEMORY[0x277D7CE00];
  v50 = v42;
  *(v46 + 64) = v42;
  *(v46 + 72) = v49;
  *(v46 + 80) = 0x746E6572727543;
  *(v46 + 88) = 0xE700000000000000;
  v51 = *MEMORY[0x277D7CE38];
  *(v46 + 104) = v50;
  *(v46 + 112) = v51;
  v99 = swift_allocObject();
  v102 = xmmword_23E2246F0;
  *(v99 + 16) = xmmword_23E2246F0;
  v52 = v45;
  v53 = v48;
  v54 = v49;
  v55 = v51;
  v98 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v56 = v109;
  v57 = [v109 bundleURL];
  sub_23E1FBF9C();

  v58 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v59 = v99;
  *(v99 + 32) = v60;
  sub_23E1FDCBC();
  v98 = v61;
  sub_23E1FDCBC();
  v107 = inited;
  sub_23E1FC14C();
  v62 = [v56 bundleURL];
  sub_23E1FBF9C();

  v63 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v64 = v28;
  sub_23DE477A0();
  *(v59 + 40) = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v46 + 120) = v59;
  v67 = *MEMORY[0x277D7CE70];
  *(v46 + 144) = v66;
  *(v46 + 152) = v67;
  *(v46 + 160) = 0xD000000000000011;
  *(v46 + 168) = 0x800000023E2512A0;
  v68 = *MEMORY[0x277D7CE80];
  *(v46 + 184) = MEMORY[0x277D837D0];
  *(v46 + 192) = v68;
  v69 = v67;
  v70 = v68;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v71 = v109;
  v72 = [v109 bundleURL];
  v100 = v64;
  sub_23E1FBF9C();

  v73 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v46 + 224) = v108;
  *(v46 + 200) = v74;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v75 = sub_23E1FDABC();
  v76 = sub_23DF3BE9C(v75);
  v77 = v105;
  *(v105 + 32) = v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v79 = v107;
  *(v107 + 280) = v77;
  v80 = *MEMORY[0x277D7CB98];
  *(v79 + 304) = v78;
  *(v79 + 312) = v80;
  v108 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v81 = swift_allocObject();
  *(v81 + 16) = v102;
  v82 = v80;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v83 = [v71 bundleURL];
  sub_23E1FBF9C();

  v84 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v86 = v85;
  v87 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v81 + 32) = sub_23DF34C40(0xD00000000000001ALL, 0x800000023E2512E0, v86);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v88 = [v109 bundleURL];
  sub_23E1FBF9C();

  v89 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v91 = v90;
  v92 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v81 + 40) = sub_23DF34C40(0xD00000000000001ALL, 0x800000023E251360, v91);
  v93 = v108;
  v94 = sub_23DF333E0();
  v95 = v107;
  *(v107 + 344) = v93;
  *(v95 + 320) = v94;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v96 = sub_23E1FDABC();
  return sub_23DF3BF9C(v96);
}

id sub_23DE865F0()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v126 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x800000023E251410;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v134 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v132 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v131 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222380;
  v21 = *MEMORY[0x277D7CC20];
  *(v20 + 32) = *MEMORY[0x277D7CC20];
  v22 = v19;
  v23 = v21;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v24 = [v134 bundleURL];
  sub_23E1FBF9C();

  v25 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v26 = v3;
  sub_23DE477A0();
  *(v20 + 40) = v27;
  v28 = *MEMORY[0x277D7CC28];
  v29 = v132;
  *(v20 + 64) = v132;
  *(v20 + 72) = v28;
  v30 = v28;
  v31 = sub_23E1FDCBC();
  v128 = v32;
  v129 = v31;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v33 = v134;
  v34 = [v134 bundleURL];
  v133 = v26;
  sub_23E1FBF9C();

  v35 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v20 + 80) = v36;
  v37 = *MEMORY[0x277D7CC30];
  *(v20 + 104) = v29;
  *(v20 + 112) = v37;
  v38 = v37;
  sub_23E1FDCBC();
  v129 = v39;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v40 = [v33 bundleURL];
  sub_23E1FBF9C();

  v41 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v20 + 144) = v29;
  *(v20 + 120) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v43 = sub_23E1FDABC();
  v44 = v131;
  *(inited + 120) = sub_23DF3BE54(v43);
  v45 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v44;
  *(inited + 152) = v45;
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v46 = *MEMORY[0x277D7CB60];
  v47 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v46;
  v48 = MEMORY[0x277D7CB58];
  *(inited + 200) = 1802398060;
  *(inited + 208) = 0xE400000000000000;
  v49 = *v48;
  *(inited + 224) = v47;
  *(inited + 232) = v49;
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  v50 = *MEMORY[0x277D7CCC0];
  *(inited + 264) = v47;
  *(inited + 272) = v50;
  v51 = v47;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v52 = swift_initStackObject();
  v127 = xmmword_23E222350;
  *(v52 + 16) = xmmword_23E222350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x277D839B0];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  *(v52 + 96) = 5001813;
  *(v52 + 104) = 0xE300000000000000;
  *(v52 + 120) = v51;
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v52 + 216) = v131;
  *(v52 + 192) = &unk_285023A20;
  v54 = v45;
  v55 = v46;
  v56 = v49;
  v57 = v50;
  v58 = sub_23E1FDABC();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v129 = v59;
  *(inited + 280) = v58;
  v60 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v59;
  *(inited + 312) = v60;
  v61 = v60;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v62 = v134;
  v63 = [v134 bundleURL];
  sub_23E1FBF9C();

  v64 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v65 = v7;
  sub_23DE477A0();
  *(inited + 320) = v66;
  v67 = *MEMORY[0x277D7CDD0];
  v68 = v132;
  *(inited + 344) = v132;
  *(inited + 352) = v67;
  v69 = swift_allocObject();
  *(v69 + 16) = v127;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x277D837D0];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 1;
  *(v69 + 120) = MEMORY[0x277D839B0];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = v67;
  v128 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  v126[1] = v65;
  sub_23E1FC14C();
  v71 = [v62 bundleURL];
  sub_23E1FBF9C();

  v72 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v69 + 144) = v73;
  *(v69 + 168) = v68;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v131;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_285023A50;
  v74 = MEMORY[0x277D837D0];
  *(inited + 360) = sub_23E1FDABC();
  v75 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v129;
  *(inited + 392) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_23E2235B0;
  v128 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_23E224420;
  v77 = *MEMORY[0x277D7CDF0];
  *(v76 + 32) = *MEMORY[0x277D7CDF0];
  *(v76 + 40) = 1701736270;
  v78 = MEMORY[0x277D7CDF8];
  *(v76 + 48) = 0xE400000000000000;
  v79 = *v78;
  *(v76 + 64) = v74;
  *(v76 + 72) = v79;
  v80 = MEMORY[0x277D7CE18];
  *(v76 + 80) = 0xD000000000000014;
  *(v76 + 88) = 0x800000023E24EAF0;
  v81 = *v80;
  *(v76 + 104) = v74;
  *(v76 + 112) = v81;
  v82 = v74;
  v83 = MEMORY[0x277D7CE70];
  *(v76 + 120) = 1;
  v84 = *v83;
  *(v76 + 144) = MEMORY[0x277D839B0];
  *(v76 + 152) = v84;
  *(v76 + 160) = 5001813;
  *(v76 + 168) = 0xE300000000000000;
  v85 = *MEMORY[0x277D7CE78];
  *(v76 + 184) = v82;
  *(v76 + 192) = v85;
  *(v76 + 200) = 5001813;
  *(v76 + 208) = 0xE300000000000000;
  v86 = *MEMORY[0x277D7CE80];
  *(v76 + 224) = v82;
  *(v76 + 232) = v86;
  v87 = v75;
  v88 = v77;
  v89 = v79;
  v90 = v81;
  v91 = v84;
  v92 = v85;
  v93 = v86;
  sub_23E1FDCBC();
  *&v127 = v94;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v95 = v134;
  v96 = [v134 bundleURL];
  sub_23E1FBF9C();

  v97 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v76 + 240) = v98;
  v99 = *MEMORY[0x277D7CEA8];
  v100 = v132;
  *(v76 + 264) = v132;
  *(v76 + 272) = v99;
  v101 = v99;
  *&v127 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v102 = [v95 bundleURL];
  sub_23E1FBF9C();

  v103 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v76 + 280) = v104;
  v105 = *MEMORY[0x277D7CF18];
  *(v76 + 304) = v100;
  *(v76 + 312) = v105;
  *(v76 + 344) = MEMORY[0x277D837D0];
  *(v76 + 320) = 5001813;
  *(v76 + 328) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v106 = v105;
  v107 = sub_23E1FDABC();
  v108 = sub_23DF3BE9C(v107);
  v109 = v129;
  *(v129 + 32) = v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v109;
  v111 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v110;
  *(inited + 432) = v111;
  v112 = v111;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v113 = [v134 bundleURL];
  sub_23E1FBF9C();

  v114 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v116 = v115;
  v117 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v118 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v117;
  v119 = *MEMORY[0x277D7CF20];
  *(inited + 464) = v118;
  *(inited + 472) = v119;
  v120 = MEMORY[0x277D7CB78];
  *(inited + 480) = &unk_285023A80;
  v121 = *v120;
  *(inited + 504) = v131;
  *(inited + 512) = v121;
  *(inited + 544) = MEMORY[0x277D839B0];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v122 = v119;
  v123 = v121;
  v124 = sub_23E1FDABC();
  return sub_23DF3BF9C(v124);
}

uint64_t WFContentItem.isImage()()
{
  OUTLINED_FUNCTION_23();
  v1[2] = v0;
  v2 = sub_23E1FCC8C();
  v1[3] = v2;
  OUTLINED_FUNCTION_8(v2);
  v1[4] = v3;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v6 = sub_23E1FD03C();
  v1[6] = v6;
  OUTLINED_FUNCTION_8(v6);
  v1[7] = v7;
  v9 = *(v8 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DE87614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_126();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_165();
  a20 = v22;
  v26 = [*(v22 + 16) preferredFileType];
  *(v22 + 96) = v26;
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v27 = swift_dynamicCastObjCClass();
  if (v27 && [v27 outputsFileContent])
  {
    v28 = *(v22 + 88);
    v29 = *(v22 + 16);
    *(v22 + 104) = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v30 = v29;
    v31 = sub_23E1FD02C();
    sub_23E1FE1AC();

    v32 = OUTLINED_FUNCTION_44_1();
    v33 = *(v22 + 88);
    v35 = *(v22 + 48);
    v34 = *(v22 + 56);
    if (v32)
    {
      OUTLINED_FUNCTION_23_2();
      v36 = OUTLINED_FUNCTION_20_2();
      a11 = v36;
      *v33 = 136315138;
      v37 = [v23 name];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_21_3();

      OUTLINED_FUNCTION_33_2(v38, v39);
      OUTLINED_FUNCTION_43_1();
      *(v33 + 4) = v37;
      OUTLINED_FUNCTION_73_0(&dword_23DE30000, v40, v41, "Attempting to determine if link entity has an image '%s'");
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_21_0();

      v42 = *(v34 + 8);
      v42(a10, v35);
    }

    else
    {

      v42 = *(v34 + 8);
      v42(v33, v35);
    }

    *(v22 + 112) = v42;
    v85 = *(v22 + 40);
    sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
    sub_23E1FCC5C();
    *(v22 + 120) = sub_23DE8928C(v85);
    v86 = *(MEMORY[0x277CFC1E8] + 4);
    v87 = swift_task_alloc();
    *(v22 + 128) = v87;
    *v87 = v22;
    v87[1] = sub_23DE87B20;
    v88 = *(v22 + 16);
    OUTLINED_FUNCTION_72_0();

    return MEMORY[0x28214EF68](v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    if (v26)
    {
      v44 = *(v22 + 32);
      v43 = *(v22 + 40);
      OUTLINED_FUNCTION_36_2();
      sub_23E1FCC5C();
      v45 = sub_23E1FCC0C();
      v46 = *(v44 + 8);
      v47 = OUTLINED_FUNCTION_24_2();
      v46(v47);
      LODWORD(v43) = OUTLINED_FUNCTION_27_2();

      if (!v43)
      {
        goto LABEL_12;
      }

      v48 = *(v22 + 40);
      OUTLINED_FUNCTION_36_2();
      sub_23E1FCC2C();
      v49 = sub_23E1FCC0C();
      v50 = OUTLINED_FUNCTION_24_2();
      v46(v50);
      LOBYTE(v48) = OUTLINED_FUNCTION_27_2();

      if (v48)
      {
        v51 = *(v22 + 72);
        v52 = *(v22 + 16);
        v53 = *MEMORY[0x277D7A440];
        sub_23E1FCB9C();
        v54 = v52;
        v55 = sub_23E1FD02C();
        v56 = sub_23E1FE19C();

        v57 = os_log_type_enabled(v55, v56);
        v58 = *(v22 + 72);
        v60 = *(v22 + 48);
        v59 = *(v22 + 56);
        if (v57)
        {
          v61 = *(v22 + 16);
          OUTLINED_FUNCTION_38_0();
          v62 = OUTLINED_FUNCTION_42_1();
          a11 = v62;
          *v60 = 136315138;
          v63 = [v61 name];
          v64 = sub_23E1FDC1C();
          a9 = v58;
          v66 = v65;

          v67 = sub_23DE56B40(v64, v66, &a11);

          *(v60 + 4) = v67;
          OUTLINED_FUNCTION_41_2(&dword_23DE30000, v68, v69, "Ignoring SVG image with name '%s'");
          __swift_destroy_boxed_opaque_existential_0(v62);
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_11_1();

          (*(v59 + 8))(a9, a10);
        }

        else
        {

          (*(v59 + 8))(v58, v60);
        }
      }

      else
      {
LABEL_12:
      }
    }

    else
    {
      v70 = *(v22 + 64);
      v71 = *(v22 + 16);
      v72 = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      v73 = v71;
      v74 = sub_23E1FD02C();
      sub_23E1FE1AC();

      v75 = OUTLINED_FUNCTION_44_1();
      v76 = *(v22 + 56);
      v77 = *(v22 + 64);
      v78 = *(v22 + 48);
      if (v75)
      {
        OUTLINED_FUNCTION_23_2();
        v79 = OUTLINED_FUNCTION_20_2();
        a11 = v79;
        *v77 = 136315138;
        v80 = [v23 name];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_21_3();

        OUTLINED_FUNCTION_33_2(v81, v82);
        OUTLINED_FUNCTION_43_1();
        *(v77 + 4) = v80;
        OUTLINED_FUNCTION_73_0(&dword_23DE30000, v83, v84, "Could not determine preferred file type for content item '%s'");
        __swift_destroy_boxed_opaque_existential_0(v79);
        OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_21_0();

        (*(v76 + 8))(a10, v78);
      }

      else
      {

        (*(v76 + 8))(v77, v78);
      }
    }

    v98 = *(v22 + 80);
    v97 = *(v22 + 88);
    v100 = *(v22 + 64);
    v99 = *(v22 + 72);
    v101 = *(v22 + 40);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v104(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DE87B20(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  v7 = *(v4 + 128);
  *v6 = *v2;

  v8 = *(v4 + 120);
  if (v1)
  {
  }

  else
  {

    *(v5 + 136) = a1;
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE87C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_126();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_165();
  a20 = v22;
  v26 = v22[17];
  v27 = v22[12];
  v28 = [v26 wfType];

  if (v28)
  {
    v30 = v22[4];
    v29 = v22[5];
    OUTLINED_FUNCTION_36_2();
    sub_23E1FCC5C();
    v31 = sub_23E1FCC0C();
    v32 = *(v30 + 8);
    v33 = OUTLINED_FUNCTION_24_2();
    v32(v33);
    LODWORD(v29) = OUTLINED_FUNCTION_27_2();

    if (!v29)
    {
      goto LABEL_8;
    }

    v34 = v22[5];
    OUTLINED_FUNCTION_36_2();
    sub_23E1FCC2C();
    v35 = sub_23E1FCC0C();
    v36 = OUTLINED_FUNCTION_24_2();
    v32(v36);
    LOBYTE(v34) = OUTLINED_FUNCTION_27_2();

    if (v34)
    {
      v37 = v22[9];
      v38 = v22[2];
      v39 = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      v40 = v38;
      v41 = sub_23E1FD02C();
      v42 = sub_23E1FE19C();

      v43 = os_log_type_enabled(v41, v42);
      v44 = v22[9];
      v46 = v22[6];
      v45 = v22[7];
      if (v43)
      {
        v47 = v22[2];
        OUTLINED_FUNCTION_38_0();
        v48 = OUTLINED_FUNCTION_42_1();
        a11 = v48;
        *v46 = 136315138;
        v49 = [v47 name];
        v50 = sub_23E1FDC1C();
        a9 = v44;
        v52 = v51;

        v53 = sub_23DE56B40(v50, v52, &a11);

        *(v46 + 4) = v53;
        OUTLINED_FUNCTION_41_2(&dword_23DE30000, v54, v55, "Ignoring SVG image with name '%s'");
        __swift_destroy_boxed_opaque_existential_0(v48);
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_11_1();

        (*(v45 + 8))(a9, a10);
      }

      else
      {

        (*(v45 + 8))(v44, v46);
      }
    }

    else
    {
LABEL_8:
    }
  }

  else
  {
    v56 = v22[8];
    v57 = v22[2];
    v58 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v59 = v57;
    v60 = sub_23E1FD02C();
    sub_23E1FE1AC();

    v61 = OUTLINED_FUNCTION_44_1();
    v62 = v22[7];
    v63 = v22[8];
    v64 = v22[6];
    if (v61)
    {
      OUTLINED_FUNCTION_23_2();
      v65 = OUTLINED_FUNCTION_20_2();
      a11 = v65;
      *v63 = 136315138;
      v66 = [v23 name];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_21_3();

      OUTLINED_FUNCTION_33_2(v67, v68);
      OUTLINED_FUNCTION_43_1();
      *(v63 + 4) = v66;
      OUTLINED_FUNCTION_73_0(&dword_23DE30000, v69, v70, "Could not determine preferred file type for content item '%s'");
      __swift_destroy_boxed_opaque_existential_0(v65);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_21_0();

      (*(v62 + 8))(a10, v64);
    }

    else
    {

      (*(v62 + 8))(v63, v64);
    }
  }

  v72 = v22[10];
  v71 = v22[11];
  v74 = v22[8];
  v73 = v22[9];
  v75 = v22[5];

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_72_0();

  return v78(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23DE87FB0()
{
  v30 = v0;
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[2];
  sub_23E1FCB9C();
  v6 = v5;
  v7 = sub_23E1FD02C();
  sub_23E1FE1AC();

  v8 = OUTLINED_FUNCTION_44_1();
  v9 = v0[14];
  v10 = v0[12];
  v11 = v0[10];
  v13 = v0[6];
  v12 = v0[7];
  if (v8)
  {
    v28 = v0[6];
    v27 = v0[14];
    v14 = OUTLINED_FUNCTION_23_2();
    v26 = v11;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    v16 = [v13 name];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_21_3();

    sub_23DE56B40(v1, v2, &v29);
    OUTLINED_FUNCTION_43_1();
    *(v14 + 4) = v16;
    OUTLINED_FUNCTION_73_0(&dword_23DE30000, v17, v18, "Failed to create file from finder entity, unknown if an image: '%s'");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_21_0();

    v27(v26, v28);
  }

  else
  {

    v9(v11, v13);
  }

  v20 = v0[10];
  v19 = v0[11];
  v22 = v0[8];
  v21 = v0[9];
  v23 = v0[5];

  OUTLINED_FUNCTION_12_1();

  return v24(0);
}

uint64_t WFContentItem.imageFile()()
{
  OUTLINED_FUNCTION_23();
  v8 = *MEMORY[0x277D85DE8];
  *(v1 + 192) = v0;
  v2 = *(*(sub_23E1FCC8C() - 8) + 64) + 15;
  *(v1 + 200) = swift_task_alloc();
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DE88230()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  sub_23DE38DA8(0, &qword_27E32C7F8, 0x277CFC410);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_23DE883A4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C800, &qword_23E224C88);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DE891E4;
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v1 coerceToItemClass:ObjCClassFromMetadata completionHandler:v0 + 10];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DE883A4()
{
  OUTLINED_FUNCTION_23();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 208) = *(v4 + 48);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DE884D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  v77 = *MEMORY[0x277D85DE8];
  v16 = v14[21];
  if (!sub_23DE4D8B0(v16))
  {

LABEL_11:
    v38 = v14[24];
    v39 = sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_9();
    sub_23DE8B9FC(v40, v41);
    v42 = OUTLINED_FUNCTION_4_5();
    v44 = v43;
    v45 = [v38 name];
    v46 = sub_23E1FDC1C();
    v48 = v47;

    OUTLINED_FUNCTION_15_4();
    *v44 = v46;
    v44[1] = v48;
    OUTLINED_FUNCTION_22_1();
    v44[2] = v50;
    v44[3] = v49;
    v51 = *MEMORY[0x277CFBFE0];
    OUTLINED_FUNCTION_21(v39);
    (*(v52 + 104))(v44, v51, v39);
    swift_willThrow();
    goto LABEL_12;
  }

  sub_23DE59014(0, (v16 & 0xC000000000000001) == 0, v16);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x23EF04DD0](0, v16);
  }

  else
  {
    v17 = *(v16 + 32);
  }

  v18 = v17;

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    goto LABEL_11;
  }

  v20 = v19;
  v21 = v14[25];
  sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
  sub_23E1FCC4C();
  v22 = sub_23DE8928C(v21);
  sub_23DE38DA8(0, &qword_27E32C7C0, 0x277CCABB0);
  v23 = sub_23E1FE39C();
  v14[23] = 0;
  v24 = [v20 generateImageFileForType:v22 includingMetadata:1 compressionQuality:v23 error:v14 + 23];

  v25 = v14[23];
  if (v24)
  {
    v26 = v14[25];
    v27 = v25;

    OUTLINED_FUNCTION_12_1();
    v28 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_72_0();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, v77, a12, a13, a14);
  }

  v76 = v25;
  v42 = sub_23E1FBECC();

  swift_willThrow();
  v51 = *MEMORY[0x277CFBFE0];
LABEL_12:
  v53 = v14[24];
  v54 = v14[25];
  v55 = sub_23E1FB9FC();
  OUTLINED_FUNCTION_0_9();
  sub_23DE8B9FC(v56, v57);
  OUTLINED_FUNCTION_2_9();
  v59 = v58;
  v60 = [v53 name];
  sub_23E1FDC1C();
  OUTLINED_FUNCTION_21_3();

  swift_getErrorValue();
  v62 = v14[18];
  v61 = v14[19];
  v63 = v14[20];
  v64 = sub_23E1FE7EC();
  *v59 = &selRef_kilocalorieUnit;
  v59[1] = v15;
  v59[2] = v64;
  v59[3] = v65;
  OUTLINED_FUNCTION_1_8();
  (*(v66 + 104))(v59, v51, v55);
  swift_willThrow();

  OUTLINED_FUNCTION_19();
  v67 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_72_0();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, v77, a12, a13, a14);
}

uint64_t sub_23DE888A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_38_2();
  v42 = *MEMORY[0x277D85DE8];
  v13 = v12[26];
  swift_willThrow();
  v14 = v12[25];
  v15 = v12[26];
  v16 = v12[24];
  sub_23E1FB9FC();
  OUTLINED_FUNCTION_0_9();
  sub_23DE8B9FC(v17, v18);
  OUTLINED_FUNCTION_2_9();
  v20 = v19;
  v21 = [v16 name];
  v22 = sub_23E1FDC1C();
  v24 = v23;

  swift_getErrorValue();
  v26 = v12[18];
  v25 = v12[19];
  v27 = v12[20];
  v28 = sub_23E1FE7EC();
  *v20 = v22;
  v20[1] = v24;
  v20[2] = v28;
  v20[3] = v29;
  v30 = *MEMORY[0x277CFBFE0];
  OUTLINED_FUNCTION_1_8();
  (*(v31 + 104))(v20);
  swift_willThrow();

  OUTLINED_FUNCTION_19();
  v32 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_124();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, a11, a12);
}

uint64_t WFContentItem.imageComponent(model:)()
{
  OUTLINED_FUNCTION_23();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_23E1FD03C();
  v1[5] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_32_1(v8);
  *v9 = v10;
  v9[1] = sub_23DE88AFC;

  return sub_23DE899CC();
}

uint64_t sub_23DE88AFC()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v8;

  if (v0)
  {
    v9 = *(v3 + 56);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_22();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_23DE88C3C()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[4];
  if (sub_23DE8AB10())
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_23DE88D8C;
    v3 = v0[9];
    v4 = v0[3];
    v5 = v0[4];

    return sub_23DE8AC74(v4, v3);
  }

  else
  {
    v7 = v0[7];
    v8 = v0[2];
    v9 = v0[9];
    sub_23E1FDA7C();

    v10 = *MEMORY[0x277D42DB8];
    v11 = sub_23E1FDA8C();
    OUTLINED_FUNCTION_21(v11);
    (*(v12 + 104))(v8, v10);

    OUTLINED_FUNCTION_19();

    return v13();
  }
}

uint64_t sub_23DE88D8C()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v10 = v9;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3 & 1;
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DE88EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  if (*(v14 + 96))
  {
    v15 = *(v14 + 56);
    v16 = *(v14 + 16);
    v17 = *(v14 + 72);
    sub_23E1FDA7C();

    v18 = *MEMORY[0x277D42DB8];
    v19 = sub_23E1FDA8C();
    OUTLINED_FUNCTION_21(v19);
    (*(v20 + 104))(v16, v18);

    OUTLINED_FUNCTION_19();
  }

  else
  {
    v21 = *(v14 + 56);
    v22 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v23 = sub_23E1FD02C();
    v24 = sub_23E1FE1BC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23DE30000, v23, v24, "Image content is not safe for LLM input.", v25, 2u);
      OUTLINED_FUNCTION_56();
    }

    a10 = *(v14 + 72);
    v27 = *(v14 + 48);
    v26 = *(v14 + 56);
    v28 = *(v14 + 40);
    v29 = *(v14 + 24);

    (*(v27 + 8))(v26, v28);
    v30 = sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_9();
    sub_23DE8B9FC(v31, v32);
    OUTLINED_FUNCTION_40_1();
    v34 = v33;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C810, &qword_23E224CA8);
    v36 = v35[12];
    v37 = v35[16];
    v38 = v35[20];
    v39 = *MEMORY[0x277CFC088];
    v40 = sub_23E1FBB0C();
    OUTLINED_FUNCTION_21(v40);
    (*(v41 + 104))(v34, v39);
    v42 = v29[4];
    __swift_project_boxed_opaque_existential_0(v29, v29[3]);
    sub_23E1FBA4C();
    v43 = sub_23E1FBC1C();
    __swift_storeEnumTagSinglePayload(v34 + v36, 0, 1, v43);
    *(v34 + v37) = 0;
    v44 = sub_23E1FBAFC();
    __swift_storeEnumTagSinglePayload(v34 + v38, 1, 1, v44);
    v45 = *MEMORY[0x277CFBF78];
    OUTLINED_FUNCTION_21(v30);
    (*(v46 + 104))(v34);
    swift_willThrow();

    v47 = *(v14 + 56);

    OUTLINED_FUNCTION_19();
  }

  OUTLINED_FUNCTION_72_0();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23DE89180()
{
  OUTLINED_FUNCTION_23();

  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DE891E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_23DEEC878(v4, v5);
  }

  else
  {
    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    v7 = sub_23E1FDDEC();

    return sub_23DEEC87C(v4, v7);
  }
}

id sub_23DE8928C(uint64_t a1)
{
  v2 = sub_23E1FCC0C();
  v3 = [swift_getObjCClassFromMetadata() typeWithUTType_];

  v4 = sub_23E1FCC8C();
  OUTLINED_FUNCTION_21(v4);
  (*(v5 + 8))(a1);
  return v3;
}

void sub_23DE89334()
{
  OUTLINED_FUNCTION_23();
  v1 = [*(v0 + 16) items];
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_20();
  v2 = sub_23E1FDDEC();
  *(v0 + 24) = v2;

  v3 = sub_23DE4D8B0(v2);
  *(v0 + 32) = v3;
  if (v3)
  {
    *(v0 + 40) = 0;
    v4 = *(v0 + 24);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EF04DD0](0);
    }

    else
    {
      OUTLINED_FUNCTION_35_2(v3, v4);
      if (!v9)
      {
        __break(1u);
        return;
      }

      v5 = *(v8 + 32);
    }

    *(v0 + 48) = v5;
    *(v0 + 56) = 1;
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_32_1(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_6_6(v11);

    WFContentItem.isImage()();
  }

  else
  {
    v6 = *(v0 + 24);

    OUTLINED_FUNCTION_12_1();

    v7(0);
  }
}

uint64_t sub_23DE89468()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_23DE89554()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 72);

  v3 = *(v0 + 40);
  if (v1)
  {
    v4 = 1;
    if (v3 > 0)
    {
LABEL_6:
      v6 = *(v0 + 24);

      OUTLINED_FUNCTION_12_1();

      v7(v4);
      return;
    }

    v3 = 1;
  }

  v5 = *(v0 + 56);
  if (v5 == *(v0 + 32))
  {
    v4 = 0;
    goto LABEL_6;
  }

  *(v0 + 40) = v3;
  v8 = *(v0 + 24);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x23EF04DD0](v5);
  }

  else
  {
    OUTLINED_FUNCTION_35_2(v2, v8);
    if (v5 >= v11)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v9 = *(v10 + 8 * v5 + 32);
  }

  *(v0 + 48) = v9;
  *(v0 + 56) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_32_1(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_6_6();

  WFContentItem.isImage()();
}

void sub_23DE8968C()
{
  OUTLINED_FUNCTION_23();
  v1 = [*(v0 + 16) items];
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_20();
  v2 = sub_23E1FDDEC();
  *(v0 + 24) = v2;

  v3 = sub_23DE4D8B0(v2);
  *(v0 + 32) = v3;
  *(v0 + 40) = 0;
  v4 = *(v0 + 24);
  if (v3)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x23EF04DD0](0);
    }

    else
    {
      OUTLINED_FUNCTION_35_2(v3, v4);
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = *(v5 + 32);
    }

    *(v0 + 48) = v7;
    *(v0 + 56) = 1;
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_32_1(v8);
    *v9 = v10;
    OUTLINED_FUNCTION_7_3(v9);

    WFContentItem.isImage()();
  }

  else
  {
    v11 = *(v0 + 24);

    OUTLINED_FUNCTION_12_1();
    v13 = *(v0 + 40) != *(v0 + 32);

    v12(v13);
  }
}

uint64_t sub_23DE897C4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_23DE898B0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 72);

  if ((v1 & 1) != 0 || (v3 = *(v0 + 56), *(v0 + 40) = v3, v3 == *(v0 + 32)))
  {
    v4 = *(v0 + 24);

    OUTLINED_FUNCTION_12_1();
    v6 = *(v0 + 40) != *(v0 + 32);

    v5(v6);
    return;
  }

  v7 = *(v0 + 24);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x23EF04DD0](v3);
  }

  else
  {
    OUTLINED_FUNCTION_35_2(v2, v7);
    if (v3 >= v9)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v10 = *(v8 + 8 * v3 + 32);
  }

  *(v0 + 48) = v10;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 56) = v3 + 1;
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_32_1(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_7_3();

  WFContentItem.isImage()();
}

uint64_t sub_23DE899CC()
{
  v1[43] = v0;
  v2 = sub_23E1FD03C();
  v1[44] = v2;
  v3 = *(v2 - 8);
  v1[45] = v3;
  v4 = *(v3 + 64) + 15;
  v1[46] = swift_task_alloc();
  v5 = sub_23E1FBFBC();
  v1[47] = v5;
  v6 = *(v5 - 8);
  v1[48] = v6;
  v7 = *(v6 + 64) + 15;
  v1[49] = swift_task_alloc();
  v8 = *(*(sub_23E1FCC8C() - 8) + 64) + 15;
  v1[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE89B14, 0, 0);
}

uint64_t sub_23DE89B14()
{
  v1 = v0[43];
  sub_23DE38DA8(0, &qword_27E32C7F8, 0x277CFC410);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_23DE89C5C;
  v3 = swift_continuation_init();
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C800, &qword_23E224C88);
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_23DE891E4;
  v0[37] = &block_descriptor_15;
  v0[38] = v3;
  [v1 coerceToItemClass:ObjCClassFromMetadata completionHandler:v0 + 34];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DE89C5C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 408) = *(v3 + 48);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DE89D58()
{
  v1 = v0[42];
  if (!sub_23DE4D8B0(v1))
  {

    goto LABEL_10;
  }

  sub_23DE59014(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x23EF04DD0](0, v1);
  }

  else
  {
    v2 = *(v1 + 32);
  }

  v3 = v2;
  v0[52] = v2;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_10:
    v7 = v0[46];
    v8 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v9 = sub_23E1FD02C();
    v10 = sub_23E1FE1AC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23DE30000, v9, v10, "Failed to coerce attached content item to WFImageContentItem", v11, 2u);
      OUTLINED_FUNCTION_56();
    }

    v13 = v0[45];
    v12 = v0[46];
    v15 = v0[43];
    v14 = v0[44];

    (*(v13 + 8))(v12, v14);
    v16 = sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_9();
    sub_23DE8B9FC(v17, v18);
    OUTLINED_FUNCTION_40_1();
    v20 = v19;
    v21 = [v15 name];
    v22 = sub_23E1FDC1C();
    v24 = v23;

    OUTLINED_FUNCTION_15_4();
    *v20 = v22;
    v20[1] = v24;
    v20[2] = 0xD00000000000003CLL;
    v20[3] = v25;
    v26 = *MEMORY[0x277CFBFE0];
    OUTLINED_FUNCTION_21(v16);
    (*(v27 + 104))(v20);
    swift_willThrow();
    v29 = v0[49];
    v28 = v0[50];
    v30 = v0[46];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_171();

    __asm { BRAA            X1, X16 }
  }

  v4 = swift_task_alloc();
  v0[53] = v4;
  *v4 = v0;
  v4[1] = sub_23DE8A020;
  OUTLINED_FUNCTION_171();

  return WFContentItem.imageFile()();
}

uint64_t sub_23DE8A020()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  v8 = *(v7 + 424);
  v9 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v10 = v9;
  *(v5 + 432) = v0;

  if (!v0)
  {
    *(v5 + 440) = v3;
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DE8A134()
{
  v2 = v0[55];
  v3 = v0[50];
  sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
  sub_23E1FCC4C();
  v4 = sub_23DE8928C(v3);
  v5 = WFResizedImageFromImageFile();

  if (v5)
  {
    v6 = v0[49];
    sub_23DE38DA8(0, &qword_27E32C2B0, 0x277D79FC8);
    v7 = [v5 fileURL];
    sub_23E1FBF9C();

    v8 = sub_23DE8B748(v6);
    if (v8)
    {
      v9 = v8;
      v10 = [v8 CGImage];
      if (v10)
      {
        v11 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C828, &qword_23E224CC8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23E222350;
        v13 = *MEMORY[0x277CD2928];
        *(inited + 32) = *MEMORY[0x277CD2928];
        v14 = v13;
        Width = CGImageGetWidth(v11);
        v16 = MEMORY[0x277D83B88];
        *(inited + 40) = Width;
        v17 = *MEMORY[0x277CD28D0];
        *(inited + 64) = v16;
        *(inited + 72) = v17;
        v18 = v17;
        *(inited + 80) = CGImageGetHeight(v11);
        v19 = *MEMORY[0x277CD28B0];
        *(inited + 104) = v16;
        *(inited + 112) = v19;
        *(inited + 120) = 4;
        v20 = *MEMORY[0x277CD28D8];
        *(inited + 144) = v16;
        *(inited + 152) = v20;
        *(inited + 184) = MEMORY[0x277D84CC0];
        *(inited + 160) = 1111970369;
        type metadata accessor for IOSurfacePropertyKey(0);
        sub_23DE8B9FC(&qword_27E32BD70, type metadata accessor for IOSurfacePropertyKey);
        v21 = v19;
        v22 = v20;
        OUTLINED_FUNCTION_24_2();
        v23 = sub_23E1FDABC();
        sub_23DE38DA8(0, &qword_27E32C830, 0x277CD2930);
        sub_23DED20F0(v23);

        v24 = sub_23DE8B7E4();
        if (v24)
        {
          v25 = v24;
          IOSurfaceGetBaseAddress(v25);
          CGImageGetWidth(v11);
          Height = CGImageGetHeight(v11);
          BitsPerComponent = CGImageGetBitsPerComponent(v11);
          v117 = v25;
          BytesPerRow = IOSurfaceGetBytesPerRow(v25);
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v30 = OUTLINED_FUNCTION_24_2();
          v32 = __CGBitmapContextCreate(v30, v31, Height, BitsPerComponent, BytesPerRow, DeviceRGB);

          v33 = v0[52];
          if (v32)
          {
            v35 = v0[49];
            v34 = v0[50];
            v36 = v0[46];
            CGImageGetWidth(v11);
            CGImageGetHeight(v11);
            sub_23E1FE07C();

            OUTLINED_FUNCTION_12_1();

            return v37(v117);
          }

          v96 = v0[43];
          v116 = sub_23E1FB9FC();
          OUTLINED_FUNCTION_0_9();
          sub_23DE8B9FC(v97, v98);
          OUTLINED_FUNCTION_4_5();
          v100 = v99;
          v101 = [v96 name];
          v102 = sub_23E1FDC1C();
          v103 = v33;
          v105 = v104;

          OUTLINED_FUNCTION_15_4();
          *v100 = v102;
          v100[1] = v105;
          v39 = v103;
          OUTLINED_FUNCTION_22_1();
          v100[2] = v106 - 2;
          v100[3] = v107;
          v108 = *MEMORY[0x277CFBFE0];
          OUTLINED_FUNCTION_21(v116);
          (*(v109 + 104))(v100);
          swift_willThrow();
        }

        else
        {
          v119 = v0[52];
          v85 = v0[43];
          v86 = sub_23E1FB9FC();
          OUTLINED_FUNCTION_0_9();
          sub_23DE8B9FC(v87, v88);
          OUTLINED_FUNCTION_4_5();
          v90 = v89;
          v91 = [v85 name];
          sub_23E1FDC1C();
          OUTLINED_FUNCTION_21_3();

          OUTLINED_FUNCTION_15_4();
          *v90 = v20;
          v90[1] = v1;
          v39 = v119;
          OUTLINED_FUNCTION_22_1();
          v90[2] = v93;
          v90[3] = v92;
          v94 = *MEMORY[0x277CFBFE0];
          OUTLINED_FUNCTION_21(v86);
          (*(v95 + 104))(v90);
          swift_willThrow();
        }
      }

      else
      {
        v39 = v0[52];
        v71 = v0[43];
        v72 = sub_23E1FB9FC();
        OUTLINED_FUNCTION_0_9();
        sub_23DE8B9FC(v73, v74);
        OUTLINED_FUNCTION_4_5();
        v76 = v75;
        v77 = [v71 name];
        v78 = sub_23E1FDC1C();
        v80 = v79;

        OUTLINED_FUNCTION_15_4();
        *v76 = v78;
        v76[1] = v80;
        OUTLINED_FUNCTION_22_1();
        v76[2] = v82;
        v76[3] = v81;
        v83 = *MEMORY[0x277CFBFE0];
        OUTLINED_FUNCTION_21(v72);
        (*(v84 + 104))(v76);
        swift_willThrow();
      }
    }

    else
    {
      v118 = v0[52];
      v55 = v0[48];
      v54 = v0[49];
      v56 = v0[47];
      v57 = v0[43];
      sub_23E1FB9FC();
      OUTLINED_FUNCTION_0_9();
      sub_23DE8B9FC(v58, v59);
      OUTLINED_FUNCTION_2_9();
      v61 = v60;
      v62 = [v57 name];
      v63 = sub_23E1FDC1C();
      v114 = v64;
      v115 = v63;

      sub_23E1FE5CC();

      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_22_1();
      v120 = v66 + 1;
      v121 = v65;
      v67 = [v5 fileURL];
      sub_23E1FBF9C();

      sub_23DE8B9FC(&qword_27E32C820, MEMORY[0x277CC9260]);
      v68 = sub_23E1FE71C();
      MEMORY[0x23EF044F0](v68);

      (*(v55 + 8))(v54, v56);
      v39 = v118;
      *v61 = v115;
      v61[1] = v114;
      v61[2] = v120;
      v61[3] = v121;
      v69 = *MEMORY[0x277CFBFE0];
      OUTLINED_FUNCTION_1_8();
      (*(v70 + 104))(v61);
      swift_willThrow();
    }
  }

  else
  {
    v39 = v0[52];
    v40 = v0[43];
    v41 = sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_9();
    sub_23DE8B9FC(v42, v43);
    OUTLINED_FUNCTION_4_5();
    v45 = v44;
    v46 = [v40 name];
    v47 = sub_23E1FDC1C();
    v49 = v48;

    OUTLINED_FUNCTION_15_4();
    *v45 = v47;
    v45[1] = v49;
    OUTLINED_FUNCTION_22_1();
    v45[2] = v50 + 7;
    v45[3] = v51;
    v52 = *MEMORY[0x277CFBFE0];
    OUTLINED_FUNCTION_21(v41);
    (*(v53 + 104))(v45);
    swift_willThrow();
  }

  v111 = v0[49];
  v110 = v0[50];
  v112 = v0[46];

  OUTLINED_FUNCTION_19();

  return v113();
}

uint64_t sub_23DE8AA10()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[51];
  swift_willThrow();
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[49];
  v5 = v0[46];

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_23DE8AA90()
{
  OUTLINED_FUNCTION_4();

  v1 = *(v0 + 432);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 368);

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DE8AB10()
{
  v0 = *MEMORY[0x277D7A348];
  v1 = sub_23E1FDC1C();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_23DE3B02C(v1, v3);
  v6 = 1;
  if (v5)
  {
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E222340;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x800000023E251720;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    sub_23E1FDABC();
    v9 = sub_23E1FDA9C();

    [v7 registerDefaults_];

    v10 = sub_23E1FDBDC();
    v6 = [v7 BOOLForKey_];
  }

  return v6;
}

uint64_t sub_23DE8AC74(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[20] = a1;
  v2[21] = a2;
  v3 = sub_23E1FD03C();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23DE8AD78, 0, 0);
}

uint64_t sub_23DE8AD78()
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v2 = [objc_allocWithZone(MEMORY[0x277D4D340]) init];
  *(v0 + 216) = v2;
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  sub_23E1FBA5C();
  v4 = sub_23E1FDBDC();

  [v2 setModelManagerServicesUseCaseID_];

  [v2 setMode_];
  v5 = objc_allocWithZone(MEMORY[0x277D4D338]);
  v6 = v2;
  v7 = sub_23DE8B8B4(v2);
  *(v0 + 224) = v7;
  v14 = v7;
  v15 = *(v0 + 168);
  *(v0 + 144) = 0;
  CVPixelBufferCreateWithIOSurface(0, v15, 0, (v0 + 144));
  v16 = *(v0 + 144);
  if (!v16)
  {
    v23 = *(v0 + 200);
    v24 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v25 = sub_23E1FD02C();
    v26 = sub_23E1FE1BC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23DE30000, v25, v26, "Cannot process image input to feed into image guardrail", v27, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v28 = *(v0 + 200);
    v29 = *(v0 + 176);
    v30 = *(v0 + 184);

    (*(v30 + 8))(v28, v29);
    sub_23E1FB9FC();
    OUTLINED_FUNCTION_0_9();
    sub_23DE8B9FC(v31, v32);
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_15_4();
    *v33 = 0xD000000000000037;
    v33[1] = v34;
    v35 = *MEMORY[0x277CFBFA8];
    OUTLINED_FUNCTION_1_8();
    (*(v36 + 104))();
    swift_willThrow();

    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 192);

    OUTLINED_FUNCTION_12_1();
    v11 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_171();

    __asm { BRAA            X2, X16 }
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D4D348]) initWithPixelBuffer_];
  *(v0 + 232) = v18;

  [v18 setStyle_];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 152;
  *(v0 + 24) = sub_23DE8B300;
  v19 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C818, &qword_23E224CC0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23DE54D3C;
  *(v0 + 104) = &block_descriptor_11;
  *(v0 + 112) = v19;
  [v14 sanitizeRequestAsynchronously:v18 completionHandler:v0 + 80];
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x282200938](v21);
}

uint64_t sub_23DE8B300()
{
  OUTLINED_FUNCTION_23();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 240) = *(v4 + 48);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DE8B42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_38_2();
  v30 = *MEMORY[0x277D85DE8];
  v14 = v12[28];
  v13 = v12[29];
  v15 = v12[26];
  v16 = v12[27];
  v18 = v12[24];
  v17 = v12[25];
  v19 = v12[19];
  [v19 safe];

  OUTLINED_FUNCTION_12_1();
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_124();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, a11, a12);
}

uint64_t sub_23DE8B508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_38_2();
  v50 = *MEMORY[0x277D85DE8];
  v13 = v12[30];
  v14 = v12[24];
  swift_willThrow();
  v15 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v16 = v13;
  v17 = sub_23E1FD02C();
  v18 = sub_23E1FE1BC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v12[30];
    v20 = OUTLINED_FUNCTION_38_0();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v19;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_23DE30000, v17, v18, "SCMLImageSanitization.sanitizeRequest failed with error: %@", v20, 0xCu);
    sub_23DE8B994(v21);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_56();
  }

  v25 = v12[29];
  v24 = v12[30];
  v27 = v12[27];
  v26 = v12[28];
  v29 = v12[23];
  v28 = v12[24];
  v30 = v12[22];

  (*(v29 + 8))(v28, v30);
  sub_23E1FB9FC();
  OUTLINED_FUNCTION_0_9();
  sub_23DE8B9FC(v31, v32);
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_15_4();
  *v33 = 0xD00000000000002CLL;
  v33[1] = v34;
  v35 = *MEMORY[0x277CFBFA8];
  OUTLINED_FUNCTION_1_8();
  (*(v36 + 104))();
  swift_willThrow();

  v38 = v12[25];
  v37 = v12[26];
  v39 = v12[24];

  OUTLINED_FUNCTION_12_1();
  v40 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_124();

  return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, v50, a11, a12);
}

id sub_23DE8B748(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_23E1FBF6C();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_23E1FBFBC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_23DE8B7E4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for IOSurfacePropertyKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D220, &qword_23E228040);
  sub_23DE8B9FC(&qword_27E32BD70, type metadata accessor for IOSurfacePropertyKey);
  v1 = sub_23E1FDA9C();

  v2 = [v0 initWithProperties_];

  return v2;
}

id sub_23DE8B8B4(void *a1)
{
  v2 = v1;
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v4 = [v2 initWithConfiguration:a1 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_23E1FBECC();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_23DE8B994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C190, &qword_23E224B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DE8B9FC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_11_1()
{

  JUMPOUT(0x23EF074C0);
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23_2()
{
  v2 = *(v0 + 16);

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_27_2()
{

  return [v0 (v2 + 2865)];
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_23DE56B40(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_41_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_1()
{
}

BOOL OUTLINED_FUNCTION_44_1()
{

  return os_log_type_enabled(v0, v1);
}

id sub_23DE8BCDC()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23E1FC1DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x800000023E2518B0;
  v7 = *MEMORY[0x277D7CB80];
  v8 = v6;
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v9 = v5;
  v10 = v7;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v11 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v12 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v14 = v13;
  v15 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  v17 = v8;
  *(inited + 144) = v8;
  *(inited + 120) = 1954047316;
  *(inited + 128) = 0xE400000000000000;
  v18 = v16;
  *(inited + 152) = sub_23E1FDBDC();
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 160) = 1;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 200) = 0xD000000000000051;
  *(inited + 208) = 0x800000023E2518F0;
  v19 = *MEMORY[0x277D7CDD0];
  *(inited + 224) = v8;
  *(inited + 232) = v19;
  v20 = v19;
  v21 = sub_23E1FDABC();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 264) = v38;
  *(inited + 240) = v21;
  *(inited + 272) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_23E222370;
  *(v22 + 32) = 0x65536D6F74737563;
  *(v22 + 40) = 0xEF726F7461726170;
  sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222340;
  v24 = *MEMORY[0x277D7CE70];
  *(v23 + 64) = v17;
  *(v23 + 32) = v24;
  *(v23 + 40) = 0xD000000000000015;
  *(v23 + 48) = 0x800000023E251950;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0);
  v25 = v24;
  v26 = sub_23E1FDABC();
  *(v22 + 48) = sub_23DF3BE9C(v26);
  *(v22 + 56) = 0x6F74617261706573;
  *(v22 + 64) = 0xE900000000000072;
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_23E222370;
  v28 = *MEMORY[0x277D7CE58];
  *(v27 + 32) = *MEMORY[0x277D7CE58];
  v29 = v28;
  *(v27 + 40) = sub_23E1FDABC();
  *(v27 + 64) = v38;
  *(v27 + 72) = v25;
  *(v27 + 104) = v17;
  *(v27 + 80) = 0x6553747865544657;
  *(v27 + 88) = 0xEF726F7461726170;
  v30 = sub_23E1FDABC();
  *(v22 + 72) = sub_23DF3BE9C(v30);
  v31 = sub_23E1FDABC();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  *(inited + 280) = v31;
  v33 = *MEMORY[0x277D7CB78];
  *(inited + 304) = v32;
  *(inited + 312) = v33;
  *(inited + 344) = MEMORY[0x277D839B0];
  *(inited + 320) = 1;
  v34 = v33;
  v35 = sub_23E1FDBDC();
  *(inited + 384) = v17;
  *(inited + 352) = v35;
  *(inited + 360) = 0x656E69626D6F43;
  *(inited + 368) = 0xE700000000000000;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key);
  v36 = sub_23E1FDABC();
  return sub_23DF3BF9C(v36);
}

uint64_t getEnumTagSinglePayload for CellularActionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CellularActionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23DE8C4E4(char a1)
{
  v2 = sub_23E1FC1DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_15();
  v4 = sub_23E1FBEEC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v6 = sub_23E1FDBCC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_15();
  switch(a1)
  {
    case 3:
      OUTLINED_FUNCTION_3_4();
      sub_23E1FDB5C();
      if (qword_280DAE5D0 != -1)
      {
        goto LABEL_6;
      }

      break;
    default:
      OUTLINED_FUNCTION_3_4();
      sub_23E1FDB5C();
      if (qword_280DAE5D0 != -1)
      {
LABEL_6:
        OUTLINED_FUNCTION_1_9();
      }

      break;
  }

  __swift_project_value_buffer(v4, qword_280DB7710);
  v8 = OUTLINED_FUNCTION_4_6();
  v9(v8);
  sub_23E1FC19C();
  OUTLINED_FUNCTION_0_10();
  return sub_23E1FBF1C();
}

uint64_t sub_23DE8C790(unsigned __int8 a1)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](a1);
  return sub_23E1FE87C();
}

unint64_t sub_23DE8C800()
{
  result = qword_27E32C838;
  if (!qword_27E32C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C838);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return swift_once();
}

uint64_t sub_23DE8C8E8()
{
  v0 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v0, qword_27E32C840);
  __swift_project_value_buffer(v0, qword_27E32C840);
  return sub_23E1FB8DC();
}

uint64_t (*static ShortcutsContact.typeDisplayRepresentation.modify())()
{
  if (qword_27E32B8F8 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FB8FC();
  __swift_project_value_buffer(v0, qword_27E32C840);
  OUTLINED_FUNCTION_17_0();
  return j_j__swift_endAccess;
}

uint64_t sub_23DE8CA44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B8F8, MEMORY[0x277CBA3A0], qword_27E32C840);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DE8CAF4(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B8F8, MEMORY[0x277CBA3A0], qword_27E32C840);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t ShortcutsContact.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23E1FB7BC();
  return OUTLINED_FUNCTION_49();
}

uint64_t type metadata accessor for ShortcutsContact()
{
  result = qword_280DAF4E8;
  if (!qword_280DAF4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShortcutsContact.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v10);
  v11 = sub_23E1FBF0C();
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = sub_23E1FDBAC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  v19 = type metadata accessor for ShortcutsContact();
  v20 = (v0 + *(v19 + 24));
  v21 = *v20;
  v22 = v20[1];
  sub_23E1FDB7C();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v11);
  sub_23DE491B4(v0 + *(v19 + 20), v6);
  return sub_23E1FB76C();
}

uint64_t ShortcutsContact.encodedParameters.getter()
{
  v1 = (v0 + *(type metadata accessor for ShortcutsContact() + 32));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_49();
  sub_23DE48FA8(v4, v5);
  return OUTLINED_FUNCTION_49();
}

void sub_23DE8CE44(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a2;
  v65[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D0, &unk_23E225500);
  v6 = OUTLINED_FUNCTION_25(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = sub_23E1FB70C();
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v24 = a1;
  v25 = [v24 uniqueIdentifier];
  v26 = sub_23E1FDC1C();
  v28 = v27;

  *a3 = v26;
  a3[1] = v28;
  v61 = v28;
  v29 = [v24 person];
  v30 = [v29 image];

  if (v30)
  {
    v31 = v30;
    sub_23E1FB6FC();
    sub_23E1FB6EC();

    v32 = sub_23E1FB75C();
    v33 = 0;
  }

  else
  {
    v32 = sub_23E1FB75C();
    v33 = 1;
  }

  v34 = 1;
  __swift_storeEnumTagSinglePayload(v23, v33, 1, v32);
  v35 = type metadata accessor for ShortcutsContact();
  v60 = v35[5];
  sub_23DE900C0(v23, a3 + v60, &qword_27E32C208, &unk_23E2239B0);
  v36 = [v24 person];
  v37 = [v36 nameComponents];

  if (v37)
  {
    sub_23E1FBE9C();

    v34 = 0;
  }

  v38 = sub_23E1FBEAC();
  __swift_storeEnumTagSinglePayload(v11, v34, 1, v38);
  sub_23DE900C0(v11, v13, &qword_27E32C8D0, &unk_23E225500);
  if (__swift_getEnumTagSinglePayload(v13, 1, v38))
  {
    sub_23DE481FC(v13, &qword_27E32C8D0, &unk_23E225500);
LABEL_8:
    v39 = [v24 person];
    v40 = [v39 displayName];

    v41 = sub_23E1FDC1C();
    v43 = v42;

    goto LABEL_9;
  }

  v41 = sub_23E1FBE8C();
  v43 = v55;
  sub_23DE481FC(v13, &qword_27E32C8D0, &unk_23E225500);
  if (!v43)
  {
    goto LABEL_8;
  }

  v56 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v56 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {

    goto LABEL_8;
  }

LABEL_9:
  v44 = (a3 + v35[6]);
  *v44 = v41;
  v44[1] = v43;
  *(a3 + v35[7]) = v62;
  v65[0] = sub_23E1FDABC();
  v45 = sub_23DEC5988(v24);
  if (v45)
  {
    v46 = v63;
    sub_23DE8D35C(v45, v65);
    v63 = v46;
  }

  v47 = objc_opt_self();
  v48 = sub_23E1FDA9C();
  v64 = 0;
  v49 = [v47 archivedDataWithRootObject:v48 requiringSecureCoding:1 error:&v64];

  v50 = v64;
  if (v49)
  {
    v51 = sub_23E1FBFDC();
    v53 = v52;

    v54 = (a3 + v35[8]);
    *v54 = v51;
    v54[1] = v53;
  }

  else
  {
    v57 = v50;
    sub_23E1FBECC();

    swift_willThrow();

    sub_23DE481FC(a3 + v60, &qword_27E32C208, &unk_23E2239B0);
  }

  v58 = *MEMORY[0x277D85DE8];
}

void sub_23DE8D35C(uint64_t a1, void *a2)
{
  v4 = 0;
  v39 = a1 & 0xC000000000000001;
  v40 = sub_23DE4D8B0(a1);
  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = a1;
  while (v40 != v4)
  {
    if (v39)
    {
      v5 = MEMORY[0x23EF04DD0](v4, v38);
    }

    else
    {
      if (v4 >= *(v37 + 16))
      {
        goto LABEL_25;
      }

      v5 = *(v38 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      sub_23E1FE7BC();
      __break(1u);
      return;
    }

    v7 = [v5 wfParameterKey];
    v8 = sub_23E1FDC1C();
    v10 = v9;

    v11 = [v6 wfSerializedRepresentation];
    if (v11)
    {
      v12 = v11;
      v41 = v6;
      *(&v44 + 1) = swift_getObjectType();
      *&v43 = v12;
      sub_23DE36CA4(&v43, v42);
      v13 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v14 = a2;
      v45 = *a2;
      v15 = v45;
      v16 = v10;
      v17 = sub_23DF1E154(v8, v10);
      if (__OFADD__(v15[2], (v18 & 1) == 0))
      {
        goto LABEL_26;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
      if (sub_23E1FE66C())
      {
        v21 = sub_23DF1E154(v8, v10);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_28;
        }

        v19 = v21;
      }

      v23 = v45;
      if (v20)
      {
        v24 = (v45[7] + 32 * v19);
        __swift_destroy_boxed_opaque_existential_0(v24);
        sub_23DE36CA4(v42, v24);
      }

      else
      {
        v45[(v19 >> 6) + 8] |= 1 << v19;
        v33 = (v23[6] + 16 * v19);
        *v33 = v8;
        v33[1] = v16;
        sub_23DE36CA4(v42, (v23[7] + 32 * v19));
        v34 = v23[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_27;
        }

        v23[2] = v36;
      }

      a2 = v14;
      *v14 = v23;
    }

    else
    {
      v25 = *a2;
      v26 = sub_23DF1E154(v8, v10);
      if (v27)
      {
        v28 = v26;
        v29 = *a2;
        swift_isUniquelyReferenced_nonNull_native();
        *&v42[0] = *a2;
        v30 = *(*&v42[0] + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
        sub_23E1FE66C();
        v31 = *&v42[0];
        v32 = *(*(*&v42[0] + 48) + 16 * v28 + 8);

        sub_23DE36CA4((*(v31 + 56) + 32 * v28), &v43);
        sub_23E1FE67C();
        *a2 = v31;
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      sub_23DE481FC(&v43, &qword_27E32C320, &unk_23E224B40);
    }

    ++v4;
  }
}

uint64_t sub_23DE8D6BC@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsContact.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DE8D6E4(uint64_t a1)
{
  v2 = sub_23DE8FD30(&qword_280DAF000, type metadata accessor for ShortcutsContact);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DE8D760(uint64_t a1)
{
  v2 = sub_23DE8FD30(&qword_280DAE4B8, type metadata accessor for ShortcutsContact);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23DE8D7FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE4D8D0;

  return EmptyContactQuery.entities(for:)();
}

uint64_t sub_23DE8D888(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_23DE8F890();
  *v6 = v2;
  v6[1] = sub_23DE4D8A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_23DE8D93C()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E1FC1DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_23E1FDBCC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v9, qword_27E32C858);
  __swift_project_value_buffer(v9, qword_27E32C858);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t (*static StartCallTopHitAction.title.modify())()
{
  if (qword_27E32B900 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  __swift_project_value_buffer(v0, qword_27E32C858);
  OUTLINED_FUNCTION_17_0();
  return j_j__swift_endAccess;
}

uint64_t sub_23DE8DC24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B900, MEMORY[0x277CC9130], qword_27E32C858);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DE8DCD4(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B900, MEMORY[0x277CC9130], qword_27E32C858);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static StartCallTopHitAction.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_27E32C870;
  sub_23E1FB7BC();
  return v0;
}

uint64_t static StartCallTopHitAction.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27E32C870 = a1;
  off_27E32C878 = a2;
}

uint64_t sub_23DE8DE88@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27E32C878;
  *a1 = qword_27E32C870;
  a1[1] = v2;
  return sub_23E1FB7BC();
}

uint64_t sub_23DE8DED8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27E32C870 = v2;
  off_27E32C878 = v1;
  sub_23E1FB7BC();
}

uint64_t static StartCallTopHitAction.shortcutsMetadata.getter()
{
  v0 = sub_23E1FC7FC();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v12);
  sub_23E1FC81C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v18 = *MEMORY[0x277D7CB68];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v18;
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E251BA0;
  type metadata accessor for Key(0);
  sub_23DE8FD30(&qword_280DAEDE0, type metadata accessor for Key);
  v19 = v18;
  sub_23E1FDABC();
  (*(v3 + 104))(v8, *MEMORY[0x277D7BF40], v0);
  v20 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DE8E1AC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ShortcutsContact();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DE8E2D8(a1, v7);
  v9[1] = *a2;
  sub_23E1FB7CC();
  StartCallTopHitAction.person.setter(v7);
}

uint64_t StartCallTopHitAction.person.setter(uint64_t a1)
{
  v3 = type metadata accessor for ShortcutsContact();
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = *v1;
  sub_23DE8E2D8(a1, v9 - v8);
  sub_23E1FB5EC();
  return sub_23DE8E33C(a1);
}

uint64_t sub_23DE8E2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsContact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE8E33C(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutsContact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*StartCallTopHitAction.person.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_23E1FB5CC();
  return sub_23DE4ABC8;
}

uint64_t StartCallTopHitAction.init()@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v1 = sub_23E1FB84C();
  v2 = OUTLINED_FUNCTION_6_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v11 = OUTLINED_FUNCTION_25(v10);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C880, &qword_23E224DD0);
  OUTLINED_FUNCTION_25(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  v25 = sub_23E1FBF0C();
  v26 = OUTLINED_FUNCTION_12(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C888, &qword_23E224DD8);
  sub_23E1FBEDC();
  sub_23E1FBEDC();
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
  type metadata accessor for ShortcutsContact();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = sub_23E1FB51C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
  (*(v4 + 104))(v9, *MEMORY[0x277CBA308], v1);
  OUTLINED_FUNCTION_0_11();
  sub_23DE8FD30(v40, v41);
  result = sub_23E1FB61C();
  *v44 = result;
  return result;
}

uint64_t sub_23DE8E748(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE47040;

  return StartCallTopHitAction.perform()(a1);
}

uint64_t sub_23DE8E7E4(uint64_t a1)
{
  v2 = sub_23DE8FBC0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t FavoritesOptionsProvider.fetchResults()()
{
  OUTLINED_FUNCTION_23();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C880, &qword_23E224DD0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64) + 15;
  v0[20] = swift_task_alloc();
  v4 = type metadata accessor for ShortcutsContact();
  OUTLINED_FUNCTION_18_4(v4);
  v0[22] = v5;
  v7 = *(v6 + 64) + 15;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE8E92C, 0, 0);
}

uint64_t sub_23DE8E92C()
{
  v1 = [objc_allocWithZone(WFCallUtilities) init];
  v0[25] = v1;
  sub_23E1FDF0C();
  v0[26] = 0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DE8EAAC;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C890, &qword_23E224DF0);
  OUTLINED_FUNCTION_18_3(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_4_7();
  [v1 getFavoriteContactsWithLimit:4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DE8EAAC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 216) = v4;
  if (v4)
  {
    v5 = sub_23DE90170;
  }

  else
  {
    v5 = sub_23DE9016C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23DE8EBB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_23DEEC878(v4, v5);
  }

  else
  {
    sub_23DE9011C();
    v7 = sub_23E1FDDEC();

    return sub_23DEEC87C(v4, v7);
  }
}

uint64_t sub_23DE8EC84()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23DE4D8B4;

  return FavoritesOptionsProvider.fetchResults()();
}

uint64_t sub_23DE8ED10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4D8B4;

  return sub_23DEBF614();
}

uint64_t RecentsOptionsProvider.fetchResults()()
{
  OUTLINED_FUNCTION_23();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C880, &qword_23E224DD0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64) + 15;
  v0[20] = swift_task_alloc();
  v4 = type metadata accessor for ShortcutsContact();
  OUTLINED_FUNCTION_18_4(v4);
  v0[22] = v5;
  v7 = *(v6 + 64) + 15;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE8EEA8, 0, 0);
}

uint64_t sub_23DE8EEA8()
{
  v1 = [objc_allocWithZone(WFCallUtilities) init];
  v0[25] = v1;
  sub_23E1FDF0C();
  v0[26] = 0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DE8F02C;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C890, &qword_23E224DF0);
  OUTLINED_FUNCTION_18_3(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_4_7();
  [v1 getRecentsCallWithTelephony:1 limit:10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DE8F02C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 216) = v4;
  if (v4)
  {
    v5 = sub_23DE8F4F0;
  }

  else
  {
    v5 = sub_23DE8F134;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_23DE8F134()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  sub_23E1FDF0C();
  if (v1)
  {
    v3 = *(v0 + 200);

    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 160);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_26();

    __asm { BRAA            X1, X16 }
  }

  v44 = *(v0 + 176);
  result = sub_23DE4D8B0(v2);
  v10 = result;
  v11 = 0;
  v45 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      if (v10 == v11)
      {
        v33 = *(v0 + 192);
        v34 = *(v0 + 184);
        v35 = *(v0 + 160);

        v36 = *(v0 + 8);
        OUTLINED_FUNCTION_26();

        __asm { BRAA            X2, X16 }
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23EF04DD0](v11, v2);
      }

      else
      {
        if (v11 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        result = *(v2 + 8 * v11 + 32);
      }

      v12 = result;
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v14 = [result person];
      if (v14)
      {
        break;
      }

      v16 = *(v0 + 160);
      v15 = *(v0 + 168);

      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
      result = sub_23DE481FC(v16, &qword_27E32C880, &qword_23E224DD0);
      ++v11;
    }

    v20 = v14;
    v21 = [v12 callType];
    type metadata accessor for WFContextualCallType(0);
    if (v21 >= 4)
    {
      break;
    }

    v41 = *(v0 + 160);
    v43 = qword_23E225510[v21];
    v22 = v20;
    v23 = [v12 personSerializedRepresentation];
    v24 = [objc_allocWithZone(MEMORY[0x277D7A140]) initWithPerson:v22 serializedRepresentation:v23 namedQueryInfo:0];
    swift_unknownObjectRelease();

    sub_23DE8CE44(v24, v43, v41);
    v25 = *(v0 + 192);
    v26 = *(v0 + 160);
    v40 = *(v0 + 168);
    v42 = *(v0 + 184);

    __swift_storeEnumTagSinglePayload(v26, 0, 1, v40);
    sub_23DE8F6B0(v26, v25);
    sub_23DE8F6B0(v25, v42);
    v27 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4CAD8(0, *(v45 + 16) + 1, 1, v45);
      v27 = v31;
    }

    v29 = *(v27 + 16);
    v28 = *(v27 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_23DE4CAD8(v28 > 1, v29 + 1, 1, v27);
      v27 = v32;
    }

    v30 = *(v0 + 184);
    *(v27 + 16) = v29 + 1;
    v45 = v27;
    result = sub_23DE8F6B0(v30, v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v29);
    v11 = v13;
  }

  *(v0 + 152) = v21;
  OUTLINED_FUNCTION_26();

  return sub_23E1FE79C();
}

uint64_t sub_23DE8F4F0()
{
  v1 = v0[27];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_23DE8F580()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23DE4D8B4;

  return RecentsOptionsProvider.fetchResults()();
}

uint64_t sub_23DE8F60C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4BE7C;

  return sub_23DEBFDD8();
}

uint64_t sub_23DE8F6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsContact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE8F714(uint64_t a1)
{
  result = sub_23DE8FD30(&qword_280DAE4B8, type metadata accessor for ShortcutsContact);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DE8F890()
{
  result = qword_280DAE4A8;
  if (!qword_280DAE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE4A8);
  }

  return result;
}

unint64_t sub_23DE8F9BC()
{
  result = qword_280DAEF90;
  if (!qword_280DAEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF90);
  }

  return result;
}

unint64_t sub_23DE8FA14()
{
  result = qword_280DAEF88;
  if (!qword_280DAEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF88);
  }

  return result;
}

unint64_t sub_23DE8FAB4()
{
  result = qword_280DAEF98;
  if (!qword_280DAEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF98);
  }

  return result;
}

unint64_t sub_23DE8FB08()
{
  result = qword_280DAE3F8;
  if (!qword_280DAE3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32C8A8, qword_23E2250A8);
    sub_23DE8FD30(&qword_280DAF020, type metadata accessor for ShortcutsContact);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE3F8);
  }

  return result;
}

unint64_t sub_23DE8FBC0()
{
  result = qword_280DAF2B0;
  if (!qword_280DAF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2B0);
  }

  return result;
}

unint64_t sub_23DE8FC18()
{
  result = qword_280DAF2A8;
  if (!qword_280DAF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2A8);
  }

  return result;
}

unint64_t sub_23DE8FC70()
{
  result = qword_280DAF2B8;
  if (!qword_280DAF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2B8);
  }

  return result;
}

uint64_t sub_23DE8FD30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23DE8FD78(uint64_t a1)
{
  result = sub_23DE8FDA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DE8FDA0()
{
  result = qword_27E32C8C0;
  if (!qword_27E32C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C8C0);
  }

  return result;
}

unint64_t sub_23DE8FDF8()
{
  result = qword_280DAE470;
  if (!qword_280DAE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE470);
  }

  return result;
}

unint64_t sub_23DE8FE4C(uint64_t a1)
{
  result = sub_23DE8FE74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DE8FE74()
{
  result = qword_27E32C8C8;
  if (!qword_27E32C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C8C8);
  }

  return result;
}

unint64_t sub_23DE8FECC()
{
  result = qword_280DAE478;
  if (!qword_280DAE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE478);
  }

  return result;
}

void sub_23DE8FF48()
{
  sub_23DE4C83C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WFAppShortcutEntityBadge(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_23DE90014(_BYTE *result, int a2, int a3)
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

uint64_t sub_23DE900C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_49();
  v9(v8);
  return a2;
}

unint64_t sub_23DE9011C()
{
  result = qword_280DAE310;
  if (!qword_280DAE310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DAE310);
  }

  return result;
}

void OUTLINED_FUNCTION_4_7()
{
  v1[12] = sub_23DE8EBB4;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1)
{
  *(v1 + 168) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

id sub_23DE90224()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v174 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x800000023E251C20;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = inited;
  v13 = v9;
  v14 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v197 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v196 = v19;
  v12[10] = v18;
  v20 = *MEMORY[0x277D7CC18];
  v12[13] = v19;
  v12[14] = v20;
  v194 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v21 = swift_initStackObject();
  v179 = xmmword_23E222340;
  *(v21 + 16) = xmmword_23E222340;
  v22 = v7;
  v23 = *MEMORY[0x277D7CC30];
  *(v21 + 32) = *MEMORY[0x277D7CC30];
  v24 = v20;
  v25 = v23;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v181 = v22;
  sub_23E1FC14C();
  v26 = [v197 bundleURL];
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v21 + 64) = v196;
  *(v21 + 40) = v28;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v29 = sub_23E1FDABC();
  v30 = v194;
  v12[15] = sub_23DF3BE54(v29);
  v31 = *MEMORY[0x277D7CB48];
  v12[18] = v30;
  v12[19] = v31;
  v12[20] = 1851881795;
  v12[21] = 0xE400000000000000;
  v32 = *MEMORY[0x277D7CB60];
  v33 = MEMORY[0x277D837D0];
  v12[23] = MEMORY[0x277D837D0];
  v12[24] = v32;
  v12[25] = 0xD000000000000015;
  v12[26] = 0x800000023E251CD0;
  v34 = *MEMORY[0x277D7CCC0];
  v12[28] = v33;
  v12[29] = v34;
  v35 = v33;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v36 = swift_initStackObject();
  v187 = xmmword_23E224710;
  *(v36 + 16) = xmmword_23E224710;
  *(v36 + 32) = 0xD00000000000001DLL;
  *(v36 + 40) = 0x800000023E251CF0;
  v37 = MEMORY[0x277D839B0];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  *(v36 + 80) = 0x656C7069746C754DLL;
  *(v36 + 88) = 0xE800000000000000;
  *(v36 + 96) = 1;
  *(v36 + 120) = v37;
  strcpy((v36 + 128), "ParameterKey");
  *(v36 + 141) = 0;
  *(v36 + 142) = -5120;
  *(v36 + 144) = 0x7475706E494657;
  *(v36 + 152) = 0xE700000000000000;
  *(v36 + 168) = v35;
  *(v36 + 176) = 0x6465726975716552;
  *(v36 + 184) = 0xE800000000000000;
  *(v36 + 192) = 1;
  *(v36 + 216) = v37;
  *(v36 + 224) = 0x7365707954;
  *(v36 + 232) = 0xE500000000000000;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v36 + 264) = v192;
  *(v36 + 240) = &unk_285023B70;
  v38 = v31;
  v39 = v32;
  v40 = v34;
  v41 = sub_23E1FDABC();
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v12[33] = v194;
  v12[30] = v41;
  v12[34] = sub_23E1FDBDC();
  v12[35] = 0xD000000000000054;
  v12[36] = 0x800000023E251D10;
  v42 = *MEMORY[0x277D7CB90];
  v12[38] = v35;
  v12[39] = v42;
  v43 = v42;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v44 = v197;
  v45 = [v197 bundleURL];
  v195 = v3;
  sub_23E1FBF9C();

  v46 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v12[40] = v47;
  v48 = *MEMORY[0x277D7CDD0];
  v49 = v196;
  v12[43] = v196;
  v12[44] = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_23E222350;
  *(v50 + 32) = 0x75736F6C63736944;
  *(v50 + 40) = 0xEF6C6576654C6572;
  *(v50 + 48) = 0x63696C627550;
  *(v50 + 56) = 0xE600000000000000;
  *(v50 + 72) = MEMORY[0x277D837D0];
  *(v50 + 80) = 0x656C7069746C754DLL;
  *(v50 + 88) = 0xE800000000000000;
  *(v50 + 96) = 0;
  *(v50 + 120) = MEMORY[0x277D839B0];
  *(v50 + 128) = 0x614E74757074754FLL;
  *(v50 + 136) = 0xEA0000000000656DLL;
  v51 = v48;
  v193 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v52 = [v44 bundleURL];
  sub_23E1FBF9C();

  v53 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v50 + 144) = v54;
  *(v50 + 168) = v49;
  *(v50 + 176) = 0x7365707954;
  *(v50 + 216) = v192;
  *(v50 + 184) = 0xE500000000000000;
  *(v50 + 192) = &unk_285023BC0;
  v55 = MEMORY[0x277D837D0];
  v56 = sub_23E1FDABC();
  v178 = v12;
  v12[45] = v56;
  v57 = *MEMORY[0x277D7CBA0];
  v12[48] = v194;
  v12[49] = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_23E225530;
  v194 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v58 = swift_allocObject();
  v59 = MEMORY[0x277D7CDF8];
  *(v58 + 16) = v187;
  v60 = *v59;
  *(v58 + 32) = v60;
  *(v58 + 40) = 0xD000000000000019;
  *(v58 + 48) = 0x800000023E24F180;
  v61 = *MEMORY[0x277D7CE60];
  v62 = v55;
  *(v58 + 64) = v55;
  *(v58 + 72) = v61;
  *(v58 + 80) = 0x736D657469;
  *(v58 + 88) = 0xE500000000000000;
  v63 = *MEMORY[0x277D7CE70];
  *(v58 + 104) = v62;
  *(v58 + 112) = v63;
  *(v58 + 120) = 0x7475706E494657;
  *(v58 + 128) = 0xE700000000000000;
  v64 = *MEMORY[0x277D7CE80];
  *(v58 + 144) = v62;
  *(v58 + 152) = v64;
  v65 = v60;
  v66 = v63;
  v67 = v64;
  v68 = v65;
  v69 = v66;
  v70 = v67;
  v71 = v61;
  v186 = v68;
  v182 = v69;
  v183 = v70;
  v176 = v71;
  v72 = v57;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v73 = [v197 bundleURL];
  sub_23E1FBF9C();

  v74 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v58 + 160) = v75;
  v76 = *MEMORY[0x277D7CEA8];
  v77 = v196;
  *(v58 + 184) = v196;
  *(v58 + 192) = v76;
  v177 = v76;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v78 = [v197 bundleURL];
  sub_23E1FBF9C();

  v79 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v58 + 224) = v77;
  *(v58 + 200) = v80;
  _s3__C3KeyVMa_0(0);
  v190 = v81;
  v189 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v82 = sub_23E1FDABC();
  v83 = sub_23DF3BE9C(v82);
  *(v193 + 32) = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_23E2235A0;
  v85 = v186;
  *(v84 + 32) = v186;
  *(v84 + 40) = 0xD000000000000014;
  v86 = MEMORY[0x277D7CE00];
  *(v84 + 48) = 0x800000023E24EAF0;
  v87 = *v86;
  v88 = MEMORY[0x277D837D0];
  *(v84 + 64) = MEMORY[0x277D837D0];
  *(v84 + 72) = v87;
  *(v84 + 80) = 0;
  *(v84 + 88) = 0xE000000000000000;
  v89 = *MEMORY[0x277D7CE08];
  *(v84 + 104) = v88;
  *(v84 + 112) = v89;
  v90 = v88;
  v91 = v87;
  v92 = v89;
  v93 = v91;
  v94 = v92;
  v186 = v85;
  v185 = v93;
  v184 = v94;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v95 = [v197 bundleURL];
  sub_23E1FBF9C();

  v96 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v84 + 120) = v97;
  v98 = *MEMORY[0x277D7CE20];
  *(v84 + 144) = v196;
  *(v84 + 152) = v98;
  *(v84 + 160) = &unk_285023BF0;
  v99 = v176;
  *(v84 + 184) = v192;
  *(v84 + 192) = v99;
  *(v84 + 200) = 0x74706D6F7270;
  *(v84 + 208) = 0xE600000000000000;
  v100 = v182;
  v101 = v183;
  *(v84 + 224) = v90;
  *(v84 + 232) = v100;
  *(v84 + 240) = 0xD00000000000001CLL;
  *(v84 + 248) = 0x800000023E251EA0;
  *(v84 + 264) = v90;
  *(v84 + 272) = v101;
  v182 = v100;
  v183 = v101;
  v102 = v98;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v103 = v197;
  v104 = [v197 bundleURL];
  sub_23E1FBF9C();

  v105 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v84 + 280) = v106;
  v107 = v196;
  v108 = v177;
  *(v84 + 304) = v196;
  *(v84 + 312) = v108;
  v177 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v109 = [v103 bundleURL];
  sub_23E1FBF9C();

  v110 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v84 + 320) = v111;
  v112 = *MEMORY[0x277D7CF10];
  *(v84 + 344) = v107;
  *(v84 + 352) = v112;
  v113 = MEMORY[0x277D837D0];
  *(v84 + 384) = MEMORY[0x277D837D0];
  *(v84 + 360) = 0x7468676952;
  *(v84 + 368) = 0xE500000000000000;
  v114 = v112;
  v115 = sub_23E1FDABC();
  v116 = sub_23DF3BE9C(v115);
  *(v193 + 40) = v116;
  v117 = swift_allocObject();
  *(v117 + 16) = v187;
  *(v117 + 32) = v186;
  *(v117 + 40) = 0xD000000000000011;
  v175 = 0x800000023E250E40;
  v176 = 0xD000000000000011;
  *(v117 + 48) = 0x800000023E250E40;
  v118 = v185;
  *(v117 + 64) = v113;
  *(v117 + 72) = v118;
  *(v117 + 80) = 0;
  v119 = v184;
  *(v117 + 104) = MEMORY[0x277D839B0];
  *(v117 + 112) = v119;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v120 = v197;
  v121 = [v197 bundleURL];
  sub_23E1FBF9C();

  v122 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v117 + 120) = v123;
  v124 = v196;
  v125 = v182;
  *(v117 + 144) = v196;
  *(v117 + 152) = v125;
  *&v187 = 0x800000023E251FE0;
  v177 = 0xD000000000000024;
  *(v117 + 160) = 0xD000000000000024;
  *(v117 + 168) = 0x800000023E251FE0;
  v126 = v183;
  *(v117 + 184) = MEMORY[0x277D837D0];
  *(v117 + 192) = v126;
  v174[1] = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v127 = [v120 bundleURL];
  sub_23E1FBF9C();

  v128 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v117 + 224) = v124;
  *(v117 + 200) = v129;
  v130 = sub_23E1FDABC();
  v131 = sub_23DF3BE9C(v130);
  *(v193 + 48) = v131;
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_23E224C10;
  v133 = v175;
  v134 = v176;
  *(v132 + 32) = v186;
  *(v132 + 40) = v134;
  *(v132 + 48) = v133;
  v135 = v185;
  *(v132 + 64) = MEMORY[0x277D837D0];
  *(v132 + 72) = v135;
  *(v132 + 80) = 0;
  v136 = v184;
  *(v132 + 104) = MEMORY[0x277D839B0];
  *(v132 + 112) = v136;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v137 = v197;
  v138 = [v197 bundleURL];
  sub_23E1FBF9C();

  v139 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v132 + 120) = v140;
  v141 = v196;
  v142 = v182;
  *(v132 + 144) = v196;
  *(v132 + 152) = v142;
  *(v132 + 160) = 0xD00000000000001FLL;
  *(v132 + 168) = 0x800000023E252160;
  v143 = v183;
  *(v132 + 184) = MEMORY[0x277D837D0];
  *(v132 + 192) = v143;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v144 = [v137 bundleURL];
  sub_23E1FBF9C();

  v145 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v132 + 200) = v146;
  v147 = *MEMORY[0x277D7CEE8];
  *(v132 + 224) = v141;
  *(v132 + 232) = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v148 = swift_allocObject();
  *(v148 + 16) = v179;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_23E222380;
  strcpy((v149 + 32), "WFParameterKey");
  *(v149 + 47) = -18;
  v150 = v187;
  *(v149 + 48) = v177;
  *(v149 + 56) = v150;
  v151 = MEMORY[0x277D837D0];
  *(v149 + 72) = MEMORY[0x277D837D0];
  *(v149 + 80) = 0xD000000000000010;
  *(v149 + 88) = 0x800000023E24D710;
  *(v149 + 96) = 1;
  *(v149 + 120) = MEMORY[0x277D839B0];
  *(v149 + 128) = 0x72756F7365524657;
  *(v149 + 168) = v151;
  *(v149 + 136) = 0xEF7373616C436563;
  *(v149 + 144) = 0xD00000000000001BLL;
  *(v149 + 152) = 0x800000023E24D730;
  v152 = v147;
  *(v148 + 32) = sub_23E1FDABC();
  *(v132 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v132 + 240) = v148;
  v153 = sub_23E1FDABC();
  v154 = sub_23DF3BE9C(v153);
  v155 = v193;
  *(v193 + 56) = v154;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v157 = v178;
  v178[50] = v155;
  v158 = *MEMORY[0x277D7CB98];
  v157[53] = v156;
  v157[54] = v158;
  v159 = v158;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v160 = [v197 bundleURL];
  sub_23E1FBF9C();

  v161 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v163 = v162;
  v164 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v165 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v166 = MEMORY[0x277D7CF20];
  v157[55] = v164;
  v167 = *v166;
  v157[58] = v165;
  v157[59] = v167;
  v157[60] = &unk_285023C20;
  v168 = *MEMORY[0x277D7D028];
  v157[63] = v192;
  v157[64] = v168;
  v169 = v167;
  v170 = v168;
  v171 = sub_23E1FDABC();
  v157[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v157[65] = v171;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v172 = sub_23E1FDABC();
  return sub_23DF3BF9C(v172);
}

id sub_23DE91970()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  strcpy((inited + 40), "WFDelayAction");
  *(inited + 54) = -4864;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v95 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v94 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v92 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_23E222340;
  v19 = v3;
  v20 = *MEMORY[0x277D7CC30];
  *(v18 + 32) = *MEMORY[0x277D7CC30];
  v21 = v17;
  v22 = v20;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v23 = [v95 bundleURL];
  sub_23E1FBF9C();

  v24 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v25 = v94;
  *(v18 + 64) = v94;
  *(v18 + 40) = v26;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v27 = sub_23E1FDABC();
  v28 = v92;
  *(inited + 120) = sub_23DF3BE54(v27);
  v29 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v28;
  *(inited + 152) = v29;
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v30 = *MEMORY[0x277D7CB60];
  v31 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v30;
  *(inited + 200) = 0x73616C6772756F68;
  *(inited + 208) = 0xE900000000000073;
  v32 = *MEMORY[0x277D7CCC8];
  *(inited + 224) = v31;
  *(inited + 232) = v32;
  v33 = MEMORY[0x277D839B0];
  *(inited + 240) = 1;
  v34 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v33;
  *(inited + 272) = v34;
  v35 = v29;
  v36 = v30;
  v37 = v32;
  v38 = v34;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v39 = [v95 bundleURL];
  v91[1] = v19;
  sub_23E1FBF9C();

  v40 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 280) = v41;
  v42 = *MEMORY[0x277D7CBA0];
  *(inited + 304) = v25;
  *(inited + 312) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_23E2235B0;
  v91[2] = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_23E224710;
  v44 = *MEMORY[0x277D7CDF8];
  *(v43 + 32) = *MEMORY[0x277D7CDF8];
  *(v43 + 40) = 0xD000000000000012;
  *(v43 + 48) = 0x800000023E252300;
  v45 = *MEMORY[0x277D7CE00];
  v46 = MEMORY[0x277D837D0];
  *(v43 + 64) = MEMORY[0x277D837D0];
  *(v43 + 72) = v45;
  v47 = MEMORY[0x277D83B88];
  *(v43 + 80) = 1;
  v48 = *MEMORY[0x277D7CE70];
  *(v43 + 104) = v47;
  *(v43 + 112) = v48;
  *(v43 + 120) = 0x5479616C65444657;
  *(v43 + 128) = 0xEB00000000656D69;
  v49 = *MEMORY[0x277D7CEF0];
  *(v43 + 144) = v46;
  *(v43 + 152) = v49;
  v50 = v42;
  v51 = v44;
  v52 = v45;
  v53 = v48;
  v54 = v49;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v55 = [v95 bundleURL];
  sub_23E1FBF9C();

  v56 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v43 + 160) = v57;
  v58 = *MEMORY[0x277D7CEF8];
  *(v43 + 184) = v94;
  *(v43 + 192) = v58;
  v59 = v58;
  v60 = sub_23E1FDCBC();
  v62 = v61;
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_23E1FE5CC();

  v100 = v60;
  v101 = v62;
  v98 = 10;
  v99 = 0xE100000000000000;
  v96 = 32;
  v97 = 0xE100000000000000;
  sub_23DE655BC();
  v100 = sub_23E1FE46C();
  v101 = v63;
  MEMORY[0x23EF044F0](0xD000000000000010, 0x800000023E252360);
  sub_23E1FC14C();
  v64 = [v95 bundleURL];
  sub_23E1FBF9C();

  v65 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v43 + 224) = v94;
  *(v43 + 200) = v66;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v67 = sub_23E1FDABC();
  v68 = sub_23DF3BE9C(v67);
  v69 = v92;
  *(v92 + 32) = v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 320) = v69;
  v71 = *MEMORY[0x277D7CB98];
  *(inited + 344) = v70;
  *(inited + 352) = v71;
  v72 = v71;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v73 = [v95 bundleURL];
  sub_23E1FBF9C();

  v74 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v76 = v75;
  v77 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v78 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 360) = v77;
  v79 = *MEMORY[0x277D7CF20];
  *(inited + 384) = v78;
  *(inited + 392) = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v81 = MEMORY[0x277D7CB78];
  *(inited + 400) = &unk_285023C90;
  v82 = *v81;
  *(inited + 424) = v80;
  *(inited + 432) = v82;
  v83 = MEMORY[0x277D7CFF0];
  *(inited + 440) = 1;
  v84 = *v83;
  v85 = MEMORY[0x277D839B0];
  *(inited + 464) = MEMORY[0x277D839B0];
  *(inited + 472) = v84;
  *(inited + 504) = v85;
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v86 = v79;
  v87 = v82;
  v88 = v84;
  v89 = sub_23E1FDABC();
  return sub_23DF3BF9C(v89);
}

unint64_t sub_23DE9244C()
{
  result = qword_27E32C8E8;
  if (!qword_27E32C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C8E8);
  }

  return result;
}

unint64_t sub_23DE924A4()
{
  result = qword_27E32C8F0;
  if (!qword_27E32C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C8F0);
  }

  return result;
}

unint64_t sub_23DE924FC()
{
  result = qword_27E32C8F8;
  if (!qword_27E32C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C8F8);
  }

  return result;
}

uint64_t sub_23DE92550(_OWORD *a1)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return (*(v1 + 8))();
}

uint64_t sub_23DE92598()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE4D8D0;

  return sub_23DE92570();
}

uint64_t sub_23DE92624(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4BE7C;

  return sub_23DE92584();
}

unint64_t sub_23DE926B8()
{
  result = qword_27E32C900;
  if (!qword_27E32C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C900);
  }

  return result;
}

unint64_t sub_23DE9270C()
{
  result = qword_27E32C908;
  if (!qword_27E32C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C908);
  }

  return result;
}

unint64_t sub_23DE92764()
{
  result = qword_27E32C910;
  if (!qword_27E32C910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32C918, qword_23E2255C8);
    sub_23DE9270C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C910);
  }

  return result;
}

uint64_t sub_23DE927E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4D8B4;

  return sub_23DE92584();
}

uint64_t sub_23DE92878(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_23DE92910;

  return sub_23DE92550((v1 + 16));
}

uint64_t sub_23DE92910()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = v2[1];
  v8 = v2[3];
  v4[1] = v2[2];
  v4[2] = v8;
  *v4 = v7;
  v9 = *(v5 + 8);

  return v9();
}

unint64_t sub_23DE92A1C()
{
  result = qword_27E32C920;
  if (!qword_27E32C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C920);
  }

  return result;
}

unint64_t sub_23DE92A74()
{
  result = qword_27E32C928;
  if (!qword_27E32C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C928);
  }

  return result;
}

unint64_t sub_23DE92ACC()
{
  result = qword_27E32C930;
  if (!qword_27E32C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C930);
  }

  return result;
}

unint64_t sub_23DE92B24()
{
  result = qword_27E32C938;
  if (!qword_27E32C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C938);
  }

  return result;
}

void sub_23DE92B78()
{
  OUTLINED_FUNCTION_90();
  v44 = sub_23E1FDB4C();
  v0 = OUTLINED_FUNCTION_6_0(v44);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_15();
  v42 = v6 - v5;
  v7 = sub_23E1FDBAC();
  v8 = OUTLINED_FUNCTION_25(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_26_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v14);
  v41 = OUTLINED_FUNCTION_22_2(v15, v40);
  OUTLINED_FUNCTION_3_5();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v23 = v22 - v21;
  v24 = sub_23E1FC1DC();
  v25 = OUTLINED_FUNCTION_25(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_4();
  v28 = sub_23E1FDBCC();
  v29 = OUTLINED_FUNCTION_25(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_3();
  v43 = sub_23E1FBF0C();
  v32 = OUTLINED_FUNCTION_12(v43);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v35 = *MEMORY[0x277CC9110];
  v36 = *(v17 + 104);
  v36(v23, v35, v41);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  (*(v2 + 104))(v42, *MEMORY[0x277CC9BD8], v44);
  sub_23E1FDB6C();
  (*(v2 + 8))(v42, v44);
  sub_23E1FDB8C();
  sub_23E1FDBBC();
  sub_23E1FC19C();
  v36(v23, v35, v41);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v43);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE92F1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_4();
  v9 = sub_23E1FBF0C();
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v13 = sub_23E1FDBAC();
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_26_1();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  sub_23E1FDB7C();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v9);
  OUTLINED_FUNCTION_5();
  sub_23E1FB71C();
  sub_23E1FB75C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  return sub_23E1FB76C();
}

unint64_t sub_23DE930E0()
{
  result = qword_27E32C940;
  if (!qword_27E32C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C940);
  }

  return result;
}

unint64_t sub_23DE93134()
{
  result = qword_27E32C948;
  if (!qword_27E32C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C948);
  }

  return result;
}

unint64_t sub_23DE9318C()
{
  result = qword_27E32C950;
  if (!qword_27E32C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C950);
  }

  return result;
}

uint64_t sub_23DE931E0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_23E1FB7BC();
}

uint64_t sub_23DE93234(uint64_t a1)
{
  v2 = sub_23DE924FC();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_23DE93284()
{
  result = qword_27E32C968;
  if (!qword_27E32C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C968);
  }

  return result;
}

uint64_t sub_23DE932DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23DE933A0;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23DE933A0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_23DE93484(uint64_t a1)
{
  v2 = sub_23DE9318C();

  return MEMORY[0x28210C4B8](a1, v2);
}

void sub_23DE934D0()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26_1();
  v5 = sub_23E1FBEEC();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v11 = sub_23E1FC1DC();
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12_4();
  v15 = sub_23E1FDBCC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v19 = sub_23E1FBF0C();
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v8 + 104))(v0, *MEMORY[0x277CC9110], v5);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

void sub_23DE936C4()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27_3(v5, v43);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v9);
  v47 = OUTLINED_FUNCTION_22_2(v10, v44);
  OUTLINED_FUNCTION_3_5();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12_4();
  v16 = sub_23E1FC1DC();
  v17 = OUTLINED_FUNCTION_25(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v20 = sub_23E1FDBCC();
  v21 = OUTLINED_FUNCTION_25(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_17_4();
  v51 = sub_23E1FBF0C();
  v24 = OUTLINED_FUNCTION_12(v51);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA20, &qword_23E225E70);
  v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA28, &qword_23E225E78) - 8);
  v49 = *(*v27 + 72);
  v28 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_23E222370;
  v45 = v27[14];
  *(v52 + v28) = 0;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v46 = *MEMORY[0x277CC9110];
  v48 = *(v12 + 104);
  v48(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v51);
  v32 = sub_23E1FB75C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  sub_23E1FB76C();
  v36 = (v52 + v28 + v49);
  v50 = v27[14];
  *v36 = 1;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v48)(v0, v46, v47);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v51);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v32);
  sub_23E1FB76C();
  sub_23E1FB77C();
  sub_23DE94094();
  sub_23E1FDABC();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE93AD4()
{
  v0 = sub_23E1FE6EC();

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

uint64_t sub_23DE93B28(char a1)
{
  if (a1)
  {
    return 1886352499;
  }

  else
  {
    return 0x7472617473;
  }
}

unint64_t sub_23DE93B64()
{
  result = qword_280DAF378;
  if (!qword_280DAF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF378);
  }

  return result;
}

uint64_t sub_23DE93BD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23DE93AD4();
  *a2 = result;
  return result;
}

uint64_t sub_23DE93C00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE93B28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23DE93C84()
{
  result = qword_280DAF3B8;
  if (!qword_280DAF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF3B8);
  }

  return result;
}

unint64_t sub_23DE93CDC()
{
  result = qword_280DAF390;
  if (!qword_280DAF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF390);
  }

  return result;
}

unint64_t sub_23DE93D34()
{
  result = qword_280DAF370;
  if (!qword_280DAF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF370);
  }

  return result;
}

unint64_t sub_23DE93D98()
{
  result = qword_280DAF3A0;
  if (!qword_280DAF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF3A0);
  }

  return result;
}

unint64_t sub_23DE93DEC()
{
  result = qword_280DAF398;
  if (!qword_280DAF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF398);
  }

  return result;
}

unint64_t sub_23DE93E40()
{
  result = qword_280DAF3B0;
  if (!qword_280DAF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF3B0);
  }

  return result;
}

unint64_t sub_23DE93E98()
{
  result = qword_280DAF3A8;
  if (!qword_280DAF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF3A8);
  }

  return result;
}

unint64_t sub_23DE93F40()
{
  result = qword_27E32C980;
  if (!qword_27E32C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C980);
  }

  return result;
}

uint64_t sub_23DE93F94(uint64_t a1)
{
  v2 = sub_23DE93F40();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DE93FE4()
{
  result = qword_280DAF388;
  if (!qword_280DAF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF388);
  }

  return result;
}

unint64_t sub_23DE9403C()
{
  result = qword_280DAF368;
  if (!qword_280DAF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF368);
  }

  return result;
}

unint64_t sub_23DE94094()
{
  result = qword_280DAF380;
  if (!qword_280DAF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF380);
  }

  return result;
}

uint64_t sub_23DE940EC(uint64_t a1)
{
  v2 = sub_23DE93E98();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DE9413C()
{
  result = qword_27E32C988;
  if (!qword_27E32C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C988);
  }

  return result;
}

unint64_t sub_23DE94194()
{
  result = qword_27E32C990;
  if (!qword_27E32C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C990);
  }

  return result;
}

uint64_t sub_23DE94220()
{
  v0 = sub_23E1FBEEC();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = sub_23E1FC1DC();
  v10 = OUTLINED_FUNCTION_25(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v13 = sub_23E1FDBCC();
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v3 + 104))(v8, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

void sub_23DE94398()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27_3(v5, v33);
  v6 = sub_23E1FBEEC();
  v7 = OUTLINED_FUNCTION_6_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v12 = sub_23E1FC1DC();
  v13 = OUTLINED_FUNCTION_25(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12_4();
  v16 = sub_23E1FDBCC();
  v17 = OUTLINED_FUNCTION_25(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_5();
  v20 = sub_23E1FBF0C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v34 = *MEMORY[0x277CC9110];
  v23 = *(v9 + 104);
  v23(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  sub_23E1FBEDC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C600, &qword_23E224590);
  v27 = *(v21 + 72);
  v28 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_23E222380;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v23)(v0, v34, v6);
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v23)(v0, v34, v6);
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v23)(v0, v34, v6);
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  sub_23E1FB69C();
  sub_23E1FB67C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE94798()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_3();
  v5 = sub_23E1FC7FC();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_26_1();
  *v0 = 0xD000000000000019;
  v0[1] = 0x800000023E2523D0;
  (*(v9 + 104))(v0, *MEMORY[0x277D7BF38]);
  sub_23E1FC81C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v14 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DE94910()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9C0, &qword_23E225E00);
  v2 = sub_23DE95DE0();
  v3 = sub_23DE66434(&qword_27E32C9C8, &qword_27E32C9C0, &qword_23E225E00);

  return MEMORY[0x28210C568](KeyPath, sub_23DE94A08, 0, v1, v2, v3);
}

uint64_t sub_23DE949DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23DE702E8();
  *a2 = result;
  return result;
}

uint64_t sub_23DE94A08@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9D0, &qword_23E225E08);
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9D8, &qword_23E225E10);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v21 - v12;
  v32 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C9E0, &qword_23E225E18);
  v23 = sub_23DE95DE0();
  sub_23DE93E40();
  sub_23DE66434(&qword_27E32C9E8, &qword_27E32C9E0, &qword_23E225E18);
  v24 = v13;
  sub_23E1FB9AC();
  sub_23DE66434(&qword_27E32C9F0, &qword_27E32C9D8, &qword_23E225E10);
  v14 = v7;
  sub_23E1FB91C();
  v22 = *(v31 + 8);
  v31 += 8;
  v22(v11, v7);
  v15 = v26;
  sub_23E1FB9EC();
  sub_23DE66434(&qword_27E32C9F8, &qword_27E32C9D0, &qword_23E225E08);
  v16 = v27;
  v17 = v28;
  sub_23E1FB91C();
  v18 = *(v29 + 8);
  v18(v15, v17);
  v19 = v25;
  sub_23E1FB90C();
  v18(v16, v17);
  return (v22)(v19, v14);
}