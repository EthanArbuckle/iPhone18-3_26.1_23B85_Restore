uint64_t ConfigurationResolver.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ConfigurationResolver.init()();
  return v3;
}

uint64_t ConfigurationResolver.init()()
{
  v1 = *(*(_s5StateOMa(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state);
  swift_storeEnumTagMultiPayload();
  *v4 = 0;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80) + 28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D38, &qword_23DD6EE88);
  bzero(v4 + v5, *(*(v6 - 8) + 64));
  sub_23DD5A454(v3, v4 + v5);
  sub_23DD6E2D8();
  return v0;
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

uint64_t sub_23DD5A454(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConfigurationResolver.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80);
  sub_23DD5A544(v1 + *(v2 + 28));
  v3 = OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_logger;
  v4 = sub_23DD6E2E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_23DD5A544(uint64_t a1)
{
  v2 = _s5StateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConfigurationResolver.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80);
  sub_23DD5A544(v1 + *(v2 + 28));
  v3 = OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_logger;
  v4 = sub_23DD6E2E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23DD5A688()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_23DD5A75C;
  v3 = *(v0 + 32);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E010, v3, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5A75C()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23DD5A858, 0, 0);
}

uint64_t sub_23DD5A858()
{
  v1 = v0[3];
  v0[6] = v0[2];
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23DD5A97C;

  return v7(ObjectType, v1);
}

uint64_t sub_23DD5A97C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_23DD5AAF4;
  }

  else
  {
    v3 = sub_23DD5AA90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD5AA90()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23DD5AAF4()
{
  v1 = v0[6];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t ConfigurationResolver.validate(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23DD6E288();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_23DD6E2B8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D40, &qword_23DD6EEB8) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5ACB0, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23DD6E1C8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_23DD6E1D8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_23DD6E1B8();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_23DD6E208();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D80, &qword_23DD6EEF0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5BE54, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23DD6E1C8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_23DD6E228();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_23DD6E1D8();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_23DD6E1B8();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_23DD6E258();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311DC0, &qword_23DD6EF28) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5D21C, 0, 0);
}

uint64_t sub_23DD5ACB0()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  v3 = sub_23DD6E2A8();
  *(v0 + 112) = v3;
  v4 = MEMORY[0x277CE8708];
  sub_23DD5E574(&qword_27E311D48, MEMORY[0x277CE8708]);
  sub_23DD5E574(&qword_27E311D50, v4);
  *v2 = v0;
  v2[1] = sub_23DD5AE08;
  v5 = *(v0 + 88);

  return static CodableResult<>.logAndIgnoreErrors(closure:)(v5, &unk_23DD6EEC8, v1, v3);
}

uint64_t sub_23DD5AE08()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23DD5AF20, 0, 0);
}

uint64_t sub_23DD5AF20()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *(v1 - 8);
  v4 = *(v3 + 48);
  if (v4(v2, 1, v1) == 1)
  {
    v5 = v0[7];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[2];
    (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
    (*(v7 + 104))(v5, *MEMORY[0x277CE86F0], v6);
    sub_23DD6E298();
    if (v4(v2, 1, v1) != 1)
    {
      sub_23DD5E468(v0[11], &qword_27E311D40, &qword_23DD6EEB8);
    }
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);
  }

  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_23DD5B0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5B100, 0, 0);
}

uint64_t sub_23DD5B100()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_23DD5B1D4;
  v3 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v3, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5B1D4()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23DD5B2D0, 0, 0);
}

uint64_t sub_23DD5B2D0()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23DD5B400;
  v6 = v0[6];
  v7 = v0[4];

  return v9(v7, v6, ObjectType, v1);
}

uint64_t sub_23DD5B400()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_23DD5E79C;
  }

  else
  {
    v3 = sub_23DD5E7A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s17AccountsUISupport21ConfigurationResolverC7resolvey0aB6Shared22PreliminaryInformationV8NextStepOAGYaAG5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23DD6E268();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5B5D8, 0, 0);
}

uint64_t sub_23DD5B5D8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = sub_23DD6E278();
  v4 = MEMORY[0x277CE86C8];
  v5 = sub_23DD5E574(&qword_27E311D58, MEMORY[0x277CE86C8]);
  v6 = sub_23DD5E574(&qword_27E311D60, v4);
  v7 = MEMORY[0x277CE8698];
  v8 = sub_23DD5E574(&qword_27E311D68, MEMORY[0x277CE8698]);
  sub_23DD5E574(&qword_27E311D70, v7);
  sub_23DD5E574(&qword_27E311D78, v7);
  *v2 = v0;
  v2[1] = sub_23DD5B7DC;
  v9 = *(v0 + 48);
  v13 = *(v0 + 64);
  v10 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOAA0aB6Shared09ErrorWithC0R_rlE13captureAndGet7closurexACyxq_GyYaKXE_tYaq_YKFZ(v10, &unk_23DD6EEE0, v1, v3, v9, v5, v6, v8);
}

uint64_t sub_23DD5B7DC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23DD5E790, 0, 0);
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_23DD5B920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5B944, 0, 0);
}

uint64_t sub_23DD5B944()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_23DD5BA18;
  v3 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v3, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5BA18()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23DD5BB14, 0, 0);
}

uint64_t sub_23DD5BB14()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 56);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23DD5B400;
  v6 = v0[6];
  v7 = v0[4];

  return v9(v7, v6, ObjectType, v1);
}

uint64_t sub_23DD5BE54()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  v3 = sub_23DD6E1F8();
  *(v0 + 160) = v3;
  v4 = MEMORY[0x277CE8618];
  sub_23DD5E574(&qword_27E311D88, MEMORY[0x277CE8618]);
  sub_23DD5E574(&qword_27E311D90, v4);
  *v2 = v0;
  v2[1] = sub_23DD5BFAC;
  v5 = *(v0 + 136);

  return static CodableResult<>.logAndIgnoreErrors(closure:)(v5, &unk_23DD6EF00, v1, v3);
}

uint64_t sub_23DD5BFAC()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23DD5C0C4, 0, 0);
}

uint64_t sub_23DD5C0C4()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = *(v1 - 8);
  v4 = *(v3 + 48);
  if (v4(v2, 1, v1) == 1)
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    v8 = v0[9];
    v20 = v0[11];
    v21 = v0[10];
    v9 = v0[7];
    v22 = v0[8];
    v23 = v0[16];
    v10 = v0[5];
    v11 = v0[6];
    v12 = v0[3];
    v24 = v10;
    v25 = v0[2];
    (*(v0[15] + 16))();
    (*(v7 + 104))(v6, *MEMORY[0x277CE8600], v20);
    (*(v8 + 104))(v21, *MEMORY[0x277CE8610], v22);
    (*(v11 + 104))(v9, *MEMORY[0x277CE8608], v24);
    sub_23DD6E1E8();
    if (v4(v2, 1, v1) != 1)
    {
      sub_23DD5E468(v0[17], &qword_27E311D80, &qword_23DD6EEF0);
    }
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_23DD5C2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5C318, 0, 0);
}

uint64_t sub_23DD5C318()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_23DD5C3EC;
  v3 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v3, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5C3EC()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23DD5C4E8, 0, 0);
}

uint64_t sub_23DD5C4E8()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 72);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23DD5B400;
  v6 = v0[6];
  v7 = v0[4];

  return v9(v7, v6, ObjectType, v1);
}

uint64_t _s17AccountsUISupport21ConfigurationResolverC7resolvey0aB6Shared15PasswordAccountO08ResolvedH0VAG5KnownVYaAK5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23DD6E1A8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5C6DC, 0, 0);
}

uint64_t sub_23DD5C6DC()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = sub_23DD6E198();
  v4 = MEMORY[0x277CE85C8];
  v5 = sub_23DD5E574(&qword_27E311D98, MEMORY[0x277CE85C8]);
  v6 = sub_23DD5E574(&qword_27E311DA0, v4);
  v7 = MEMORY[0x277CE85E8];
  v8 = sub_23DD5E574(&qword_27E311DA8, MEMORY[0x277CE85E8]);
  sub_23DD5E574(&qword_27E311DB0, v7);
  sub_23DD5E574(&qword_27E311DB8, v7);
  *v2 = v0;
  v2[1] = sub_23DD5C8E0;
  v9 = *(v0 + 48);
  v13 = *(v0 + 64);
  v10 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOAA0aB6Shared09ErrorWithC0R_rlE13captureAndGet7closurexACyxq_GyYaKXE_tYaq_YKFZ(v10, &unk_23DD6EF18, v1, v3, v9, v5, v6, v8);
}

uint64_t sub_23DD5C8E0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23DD5CA24, 0, 0);
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_23DD5CA24()
{
  v1 = v0[9];
  (*(v0[7] + 32))(v0[5], v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_23DD5CAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5CAD4, 0, 0);
}

uint64_t sub_23DD5CAD4()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_23DD5CBA8;
  v3 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v3, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5CBA8()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23DD5CCA4, 0, 0);
}

uint64_t sub_23DD5CCA4()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 88);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23DD5CDD4;
  v6 = v0[6];
  v7 = v0[4];

  return v9(v7, v6, ObjectType, v1);
}

uint64_t sub_23DD5CDD4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_23DD5CF4C;
  }

  else
  {
    v3 = sub_23DD5CEE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD5CEE8()
{
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23DD5CF4C()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_23DD5D21C()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = sub_23DD6E248();
  *(v0 + 184) = v3;
  v4 = MEMORY[0x277CE8658];
  sub_23DD5E574(&qword_27E311DC8, MEMORY[0x277CE8658]);
  sub_23DD5E574(&qword_27E311DD0, v4);
  *v2 = v0;
  v2[1] = sub_23DD5D374;
  v5 = *(v0 + 160);

  return static CodableResult<>.logAndIgnoreErrors(closure:)(v5, &unk_23DD6EF38, v1, v3);
}

uint64_t sub_23DD5D374()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23DD5D48C, 0, 0);
}

uint64_t sub_23DD5D48C()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = *(v1 - 8);
  v4 = *(v3 + 48);
  if (v4(v2, 1, v1) == 1)
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    v8 = v0[12];
    v21 = v0[14];
    v22 = v0[13];
    v23 = v0[11];
    v24 = v0[10];
    v9 = v0[9];
    v25 = v0[8];
    v26 = v0[19];
    v11 = v0[6];
    v10 = v0[7];
    v27 = v10;
    v28 = v0[5];
    v12 = v0[3];
    v29 = v0[2];
    (*(v0[18] + 16))();
    (*(v7 + 104))(v6, *MEMORY[0x277CE8600], v21);
    (*(v8 + 104))(v22, *MEMORY[0x277CE8610], v23);
    (*(v9 + 104))(v24, *MEMORY[0x277CE8650], v25);
    (*(v11 + 104))(v27, *MEMORY[0x277CE8608], v28);
    sub_23DD6E238();
    if (v4(v2, 1, v1) != 1)
    {
      sub_23DD5E468(v0[20], &qword_27E311DC0, &qword_23DD6EF28);
    }
  }

  else
  {
    (*(v3 + 32))(v0[2], v2, v1);
  }

  v14 = v0[19];
  v13 = v0[20];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_23DD5D700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5D724, 0, 0);
}

uint64_t sub_23DD5D724()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_23DD5D7F8;
  v3 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v3, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5D7F8()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23DD5D8F4, 0, 0);
}

uint64_t sub_23DD5D8F4()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 104);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23DD5B400;
  v6 = v0[6];
  v7 = v0[4];

  return v9(v7, v6, ObjectType, v1);
}

uint64_t _s17AccountsUISupport21ConfigurationResolverC7resolvey0aB6Shared15PasswordAccountO08ResolvedH0VAG7UnknownVYaAK5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23DD6E218();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5DAE8, 0, 0);
}

uint64_t sub_23DD5DAE8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = sub_23DD6E198();
  v4 = MEMORY[0x277CE85C8];
  v5 = sub_23DD5E574(&qword_27E311D98, MEMORY[0x277CE85C8]);
  v6 = sub_23DD5E574(&qword_27E311DA0, v4);
  v7 = MEMORY[0x277CE8638];
  v8 = sub_23DD5E574(&qword_27E311DD8, MEMORY[0x277CE8638]);
  sub_23DD5E574(&qword_27E311DE0, v7);
  sub_23DD5E574(&qword_27E311DE8, v7);
  *v2 = v0;
  v2[1] = sub_23DD5B7DC;
  v9 = *(v0 + 48);
  v13 = *(v0 + 64);
  v10 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOAA0aB6Shared09ErrorWithC0R_rlE13captureAndGet7closurexACyxq_GyYaKXE_tYaq_YKFZ(v10, dword_23DD6EF50, v1, v3, v9, v5, v6, v8);
}

uint64_t sub_23DD5DCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23DD5DD10, 0, 0);
}

uint64_t sub_23DD5DD10()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_23DD5DDE4;
  v3 = *(v0 + 40);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0x7365636976726573, 0xE800000000000000, sub_23DD5E798, v3, &_s5StateO8ServicesVN);
}

uint64_t sub_23DD5DDE4()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23DD5DEE0, 0, 0);
}

uint64_t sub_23DD5DEE0()
{
  v1 = v0[3];
  v0[8] = v0[2];
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 120);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23DD5B400;
  v6 = v0[6];
  v7 = v0[4];

  return v9(v7, v6, ObjectType, v1);
}

uint64_t sub_23DD5E018(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD5B0DC(a1, v5, v4);
}

uint64_t sub_23DD5E0C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD5B920(a1, v5, v4);
}

uint64_t sub_23DD5E170(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD5C2F4(a1, v5, v4);
}

uint64_t sub_23DD5E21C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E2C8;

  return sub_23DD5CAB0(a1, v5, v4);
}

uint64_t sub_23DD5E2C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23DD5E3BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD5D700(a1, v5, v4);
}

uint64_t sub_23DD5E468(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23DD5E4C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD5DCEC(a1, v5, v4);
}

uint64_t sub_23DD5E574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ConfigurationResolver()
{
  result = qword_27E311DF0;
  if (!qword_27E311DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DD5E610()
{
  sub_23DD5E708();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_23DD6E2E8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DD5E708()
{
  if (!qword_27E311E00)
  {
    _s5StateOMa(255);
    v0 = sub_23DD6E178();
    if (!v1)
    {
      atomic_store(v0, &qword_27E311E00);
    }
  }
}

uint64_t sub_23DD5E760()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23DD5E7B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DD5E7F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23DD5E8B8()
{
  sub_23DD5E92C();
  if (v0 <= 0x3F)
  {
    _s5StateO4DoneVMa(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23DD5E92C()
{
  if (!qword_27E311E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E311E20, &qword_23DD6EFD0);
    v0 = sub_23DD6E338();
    if (!v1)
    {
      atomic_store(v0, &qword_27E311E18);
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

uint64_t sub_23DD5EA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DD6E148();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23DD5EADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23DD6E148();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23DD5EB94()
{
  result = sub_23DD6E148();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23DD5EC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  done = _s5StateO4DoneVMa(0);
  v6 = *(*(done - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E20, &qword_23DD6EFD0);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v29 - v12;
  v14 = *(*(_s5StateOMa(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23DD60874(v2, v16, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23DD60980(v16, v8);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
      v19 = *(v18 + 48);
      (*(v10 + 16))(a2, a1, v9);
      v29 = *&v8[*(done + 20)];
      swift_unknownObjectRetain();
      sub_23DD608DC(v8, _s5StateO4DoneVMa);
      *(a2 + v19) = v29;
      return (*(*(v18 - 8) + 56))(a2, 0, 2, v18);
    }

    else
    {
      sub_23DD608DC(v2, _s5StateOMa);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E58, &qword_23DD6F028);
      v25 = *(v10 + 72);
      v26 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_23DD6EF90;
      (*(v10 + 16))(v27 + v26, a1, v9);
      *v2 = v27;
      swift_storeEnumTagMultiPayload();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
      return (*(*(v28 - 8) + 56))(a2, 2, 2, v28);
    }
  }

  else
  {
    sub_23DD608DC(v2, _s5StateOMa);
    v21 = *v16;
    (*(v10 + 16))(v13, a1, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_23DD609E4(0, v21[2] + 1, 1, v21);
    }

    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = sub_23DD609E4(v22 > 1, v23 + 1, 1, v21);
    }

    v21[2] = v23 + 1;
    (*(v10 + 32))(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, v13, v9);
    *v2 = v21;
    swift_storeEnumTagMultiPayload();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
    return (*(*(v24 - 8) + 56))(a2, 1, 2, v24);
  }
}

uint64_t sub_23DD5F04C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E20, &qword_23DD6EFD0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v8 = v26 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E38, &qword_23DD6EFE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v11 = v26 - v10;
  v12 = *(*(_s5StateO14ServicesActionOMa(0) - 8) + 64);
  v13 = (MEMORY[0x28223BE20])();
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - v16;
  v18 = (a2 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state));
  v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80) + 28);
  sub_23DD5EC08(a1, v17);
  os_unfair_lock_unlock(v18);
  sub_23DD60874(v17, v15, _s5StateO14ServicesActionOMa);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
  v21 = (*(*(v20 - 8) + 48))(v15, 2, v20);
  if (v21)
  {
    if (v21 != 1)
    {
      v22 = sub_23DD6E378();
      (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = a2;

      sub_23DD5FB8C(0, 0, v11, &unk_23DD6EFF8, v23);
    }
  }

  else
  {
    v24 = *(v5 + 32);
    v26[0] = *&v15[*(v20 + 48)];
    v24(v8, v15, v4);
    v26[1] = v26[0];
    sub_23DD6E358();
    (*(v5 + 8))(v8, v4);
  }

  return sub_23DD608DC(v17, _s5StateO14ServicesActionOMa);
}

uint64_t sub_23DD5F3B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DD5F3F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5E2C8;

  return sub_23DD5F574();
}

uint64_t sub_23DD5F480()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DD5F4C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DD5E2C8;

  return sub_23DD5F3F0();
}

uint64_t sub_23DD5F574()
{
  v1[4] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E20, &qword_23DD6EFD0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = _s5StateOMa(0);
  v1[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  done = _s5StateO4DoneVMa(0);
  v1[10] = done;
  v8 = *(*(done - 8) + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD5F6A0, 0, 0);
}

uint64_t sub_23DD5F6A0()
{
  v1 = sub_23DD6E158();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[12] = sub_23DD6E168();
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_23DD5F794;
  v5 = v0[11];

  return sub_23DD5FF24(v5, 0xD000000000000028, 0x800000023DD70000);
}

uint64_t sub_23DD5F794(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_23DD5F894, 0, 0);
}

uint64_t sub_23DD5F894()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[4];

  v8 = sub_23DD6093C(&qword_27E311E48);
  v9 = (v3 + *(v5 + 20));
  *v9 = v1;
  v9[1] = v8;
  v10 = (v7 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state);
  os_unfair_lock_lock((v7 + OBJC_IVAR____TtC17AccountsUISupport21ConfigurationResolver_state));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311D30, &qword_23DD6EE80) + 28);
  sub_23DD60874(v10 + v11, v4, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23DD608DC(v0[9], _s5StateOMa);
    }

    return sub_23DD6E418();
  }

  else
  {
    v14 = v0[11];
    v16 = v0[8];
    v15 = v0[9];
    sub_23DD608DC(v10 + v11, _s5StateOMa);
    v17 = *v15;
    sub_23DD60874(v14, v10 + v11, _s5StateO4DoneVMa);
    swift_storeEnumTagMultiPayload();
    os_unfair_lock_unlock(v10);
    v18 = *(v17 + 16);
    if (v18)
    {
      v31 = v8;
      v19 = v0[6];
      v22 = *(v19 + 16);
      v20 = v19 + 16;
      v21 = v22;
      v23 = v17 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v24 = *(v20 + 56);
      do
      {
        v25 = v0[14];
        v26 = v0[7];
        v27 = v0[5];
        v21(v26, v23, v27);
        v0[2] = v25;
        v0[3] = v31;

        sub_23DD6E358();
        (*(v20 - 8))(v26, v27);
        v23 += v24;
        --v18;
      }

      while (v18);
    }

    v28 = v0[9];
    v29 = v0[7];
    sub_23DD608DC(v0[11], _s5StateO4DoneVMa);

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_23DD5FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E38, &qword_23DD6EFE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23DD5FE4C(a3, v26 - v10);
  v12 = sub_23DD6E378();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23DD5FEBC(v11);
  }

  else
  {
    sub_23DD6E368();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23DD6E348();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23DD6E318() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_23DD5FEBC(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DD5FEBC(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23DD5FE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E38, &qword_23DD6EFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DD5FEBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E38, &qword_23DD6EFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DD5FF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_23DD6E128();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_23DD6E148();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v11 = sub_23DD6E0D8();
  v4[16] = v11;
  v12 = *(v11 - 8);
  v4[17] = v12;
  v13 = *(v12 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[4] = type metadata accessor for $DistributedService();
  v4[5] = v14;

  return MEMORY[0x2822009F8](sub_23DD600C4, 0, 0);
}

uint64_t sub_23DD600C4()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  sub_23DD6E118();
  v4 = *(MEMORY[0x277D7E998] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_23DD60174;
  v6 = v0[19];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[9];

  return MEMORY[0x2821E7778](v7, v8, v6);
}

uint64_t sub_23DD60174()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v4 = sub_23DD603C0;
  }

  else
  {
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[10];
    v2[22] = v2[4];
    (*(v6 + 8))(v5, v7);
    v4 = sub_23DD602BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23DD602BC()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[12];
  (*(v0[14] + 32))(v0[6], v0[15], v0[13]);
  sub_23DD6093C(&qword_27E311E50);
  v6 = sub_23DD6E138();

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_23DD603C0()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  (*(v3 + 32))(v1, v0[19], v4);
  (*(v3 + 16))(v2, v1, v4);
  sub_23DD6E3D8();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x23EEFEBA0](0xD000000000000027, 0x800000023DD700D0);
  sub_23DD6E408();
  v5 = v0[2];
  v6 = v0[3];
  return sub_23DD6E418();
}

uint64_t sub_23DD604DC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD605D4;

  return v7(a1);
}

uint64_t sub_23DD605D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23DD606CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DD60704(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E794;

  return sub_23DD604DC(a1, v5);
}

uint64_t sub_23DD607BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DD5E2C8;

  return sub_23DD604DC(a1, v5);
}

uint64_t sub_23DD60874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DD608DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DD6093C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for $DistributedService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DD60980(uint64_t a1, uint64_t a2)
{
  done = _s5StateO4DoneVMa(0);
  (*(*(done - 8) + 32))(a2, a1, done);
  return a2;
}

size_t sub_23DD609E4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E58, &qword_23DD6F028);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E20, &qword_23DD6EFD0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E20, &qword_23DD6EFD0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23DD60BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DD60C78(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E40, &qword_23DD6EFE8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23DD60D08()
{
  sub_23DD60D60();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_23DD60D60()
{
  if (!qword_27E311E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E311E20, &qword_23DD6EFD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E311E70);
    }
  }
}

uint64_t sub_23DD60DD8()
{
  v0 = sub_23DD6E2E8();
  __swift_allocate_value_buffer(v0, qword_27E311E80);
  __swift_project_value_buffer(v0, qword_27E311E80);
  return sub_23DD6E2D8();
}

uint64_t sub_23DD60E48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_23DD6E4D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_23DD6E4D8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23DD60F4C(char a1)
{
  sub_23DD6E4E8();
  MEMORY[0x23EEFED70](a1 & 1);
  return sub_23DD6E508();
}

uint64_t sub_23DD60F94(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

BOOL sub_23DD60FC4(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  return sub_23DD60F14(*a1, *a2);
}

uint64_t sub_23DD61008(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_23DD60F4C(*v1);
}

uint64_t sub_23DD61024(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v10 = a2[8];
  return sub_23DD60F24(a1, *v2);
}

uint64_t sub_23DD61060(uint64_t a1, void *a2)
{
  sub_23DD6E4E8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = a2[8];
  sub_23DD60F24(v12, *v2);
  return sub_23DD6E508();
}

uint64_t sub_23DD610B8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_23DD60F94(*v1);
}

uint64_t sub_23DD610D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  result = sub_23DD60E48(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_23DD61128@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  result = sub_23DD645D4();
  *a2 = result;
  return result;
}

uint64_t sub_23DD61164(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23DD611B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23DD6120C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23DD6E4D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23DD612DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23DD61330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23DD61384()
{
  sub_23DD6E4E8();
  MEMORY[0x23EEFED70](0);
  return sub_23DD6E508();
}

uint64_t sub_23DD613C8()
{
  sub_23DD6E4E8();
  MEMORY[0x23EEFED70](0);
  return sub_23DD6E508();
}

uint64_t sub_23DD61408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  result = sub_23DD6120C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_23DD61454@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23DD6149C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23DD614F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableResult.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v68 = a2[2];
  v4 = v68;
  v69 = v3;
  v70 = v5;
  v71 = v6;
  v10 = v5;
  v65 = a1;
  v66 = v5;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v57 = type metadata accessor for CodableResult.FailureCodingKeys(255, &v68);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_23DD6E498();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v46 - v14;
  v58 = *(v3 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v13);
  v54 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v4;
  v69 = v3;
  v70 = v10;
  v71 = v6;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v17 = type metadata accessor for CodableResult.SuccessCodingKeys(255, &v68);
  v18 = swift_getWitnessTable();
  v50 = v17;
  v48 = v18;
  v53 = sub_23DD6E498();
  v52 = *(v53 - 8);
  v19 = *(v52 + 64);
  v20 = MEMORY[0x28223BE20](v53);
  v49 = &v46 - v21;
  v51 = *(v4 - 8);
  v22 = *(v51 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v47 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 - 1);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v6;
  v64 = v4;
  v68 = v4;
  v69 = v3;
  v61 = v3;
  v62 = v8;
  v70 = v66;
  v71 = v6;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  type metadata accessor for CodableResult.CodingKeys(255, &v68);
  swift_getWitnessTable();
  v29 = sub_23DD6E498();
  v66 = *(v29 - 8);
  v30 = *(v66 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v46 - v31;
  v33 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  sub_23DD6E528();
  (*(v25 + 16))(v28, v67, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v58;
    v35 = v54;
    v36 = v61;
    (*(v58 + 32))(v54, v28, v61);
    LOBYTE(v68) = 1;
    v37 = v56;
    v38 = v29;
    sub_23DD6E478();
    v39 = v60;
    sub_23DD6E488();
    (*(v59 + 8))(v37, v39);
    (*(v34 + 8))(v35, v36);
    v29 = v38;
  }

  else
  {
    v40 = v51;
    v41 = v47;
    v42 = v64;
    (*(v51 + 32))(v47, v28, v64);
    LOBYTE(v68) = 0;
    v43 = v49;
    sub_23DD6E478();
    v44 = v53;
    sub_23DD6E488();
    (*(v52 + 8))(v43, v44);
    (*(v40 + 8))(v41, v42);
  }

  return (*(v66 + 8))(v32, v29);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t CodableResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v93 = a1;
  v79 = a9;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v76 = type metadata accessor for CodableResult.FailureCodingKeys(255, &v88);
  WitnessTable = swift_getWitnessTable();
  v68 = sub_23DD6E468();
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v77 = &v62 - v17;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v18 = type metadata accessor for CodableResult.SuccessCodingKeys(255, &v88);
  v19 = swift_getWitnessTable();
  v73 = v18;
  v72 = v19;
  v66 = sub_23DD6E468();
  v65 = *(v66 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v74 = &v62 - v21;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  type metadata accessor for CodableResult.CodingKeys(255, &v88);
  v84 = swift_getWitnessTable();
  v80 = sub_23DD6E468();
  v83 = *(v80 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x28223BE20](v80);
  v24 = &v62 - v23;
  v69 = a2;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  v82 = a3;
  v71 = a4;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v70 = a6;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v25 = type metadata accessor for CodableResult(0, &v88);
  v78 = *(v25 - 8);
  v26 = *(v78 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v62 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v62 - v33;
  v35 = v93[4];
  __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  v81 = v24;
  v36 = v85;
  sub_23DD6E518();
  if (!v36)
  {
    v64 = v29;
    v84 = v32;
    v63 = v34;
    v85 = v25;
    v37 = v81;
    v38 = v80;
    *&v86 = sub_23DD6E458();
    sub_23DD6E338();
    swift_getWitnessTable();
    *&v88 = sub_23DD6E3C8();
    *(&v88 + 1) = v39;
    *&v89 = v40;
    *(&v89 + 1) = v41;
    sub_23DD6E3B8();
    swift_getWitnessTable();
    sub_23DD6E388();
    v42 = v86;
    if (v86 == 2 || (v62 = v88, v86 = v88, v87 = v89, (sub_23DD6E398() & 1) == 0))
    {
      v51 = sub_23DD6E3F8();
      swift_allocError();
      v53 = v52;
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311E98, &qword_23DD6F050) + 48);
      *v53 = v85;
      sub_23DD6E438();
      sub_23DD6E3E8();
      (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
      swift_willThrow();
      (*(v83 + 8))(v37, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v42)
      {
        LOBYTE(v86) = 1;
        v43 = v77;
        v44 = v38;
        sub_23DD6E428();
        v46 = v78;
        v45 = v79;
        v47 = v83;
        v48 = v68;
        sub_23DD6E448();
        (*(v67 + 8))(v43, v48);
        (*(v47 + 8))(v37, v44);
        swift_unknownObjectRelease();
        v49 = v64;
      }

      else
      {
        LOBYTE(v86) = 0;
        v55 = v74;
        v56 = v38;
        sub_23DD6E428();
        v46 = v78;
        v45 = v79;
        v57 = v83;
        v58 = v66;
        sub_23DD6E448();
        (*(v65 + 8))(v55, v58);
        (*(v57 + 8))(v37, v56);
        swift_unknownObjectRelease();
        v49 = v84;
      }

      v50 = v85;
      swift_storeEnumTagMultiPayload();
      v60 = *(v46 + 32);
      v61 = v63;
      v60(v63, v49, v50);
      v60(v45, v61, v50);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
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

uint64_t static CodableResult<>.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a7;
  v52 = a1;
  v53 = a2;
  v50 = *(a4 - 8);
  v8 = *(v50 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = v14;
  v54[1] = v15;
  v51 = v15;
  v54[2] = v16;
  v54[3] = v17;
  v54[4] = v18;
  v54[5] = v19;
  v54[6] = v20;
  v21 = type metadata accessor for CodableResult(0, v54);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v45 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v30 = *(v48 + 64);
  v31 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v33 = &v45 - v32;
  v34 = *(v31 + 48);
  v35 = *(v22 + 16);
  v35(&v45 - v32, v52, v21);
  v35(&v33[v34], v53, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35(v26, v33, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v50;
      v36 = v51;
      v38 = v46;
      (*(v50 + 32))(v46, &v33[v34], v51);
      v39 = sub_23DD6E308();
      v40 = *(v37 + 8);
      v40(v38, v36);
      v40(v26, v36);
      goto LABEL_10;
    }

    (*(v50 + 8))(v26, v51);
LABEL_7:
    v39 = 0;
    v22 = v48;
    v21 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  v35(v28, v33, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v49 + 8))(v28, a3);
    goto LABEL_7;
  }

  v41 = v49;
  v42 = v45;
  (*(v49 + 32))(v45, &v33[v34], a3);
  v39 = sub_23DD6E308();
  v43 = *(v41 + 8);
  v43(v42, a3);
  v43(v28, a3);
LABEL_10:
  (*(v22 + 8))(v33, v21);
  return v39 & 1;
}

uint64_t sub_23DD628F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[6];
  v7 = *(a4 - 16);
  v8 = a3[8];
  v6 = a3[7];
  return static CodableResult<>.__derived_enum_equals(_:_:)(a1, a2, a3[2], a3[3], a3[4], a3[5], *(a4 - 8)) & 1;
}

uint64_t _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a1;
  v8[10] = a5;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = a8;
  v8[7] = v23;
  v8[8] = v24;
  v11 = type metadata accessor for CodableResult(0, (v8 + 2));
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v8[13] = v14;
  v15 = *(a5 - 8);
  v8[14] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v8[15] = v17;
  v8[16] = swift_task_alloc();
  v21 = (a2 + *a2);
  v18 = a2[1];
  v19 = swift_task_alloc();
  v8[17] = v19;
  *v19 = v8;
  v19[1] = sub_23DD62B28;

  return v21(v14, v17);
}

uint64_t sub_23DD62B28()
{
  v2 = *(*v1 + 136);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_23DD62CEC;
  }

  else
  {
    v3 = sub_23DD62C38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD62C38()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_23DD62CEC()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[9];
  v4 = *(v0[14] + 32);
  v4(v1, v0[15], v2);
  v4(v3, v1, v2);
  swift_storeEnumTagMultiPayload();
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t _s20AccountsUISupportXPC13CodableResultO3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v14);
  }

  (*(v7 + 32))(v11, v14, v6);
  (*(v7 + 16))(a2, v11, v6);
  v16 = a1[8];
  swift_willThrowTypedImpl();
  return (*(v7 + 8))(v11, v6);
}

uint64_t _s20AccountsUISupportXPC13CodableResultOAA0aB6Shared09ErrorWithC0R_rlE13captureAndGet7closurexACyxq_GyYaKXE_tYaq_YKFZ(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v29;
  v8[14] = a1;
  v8[15] = a5;
  v15 = *(a5 - 8);
  v8[18] = v15;
  v16 = *(v15 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v17 = *(a8 + 8);
  v8[23] = v17;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = v27;
  v8[7] = v28;
  v8[8] = v17;
  v18 = type metadata accessor for CodableResult(0, (v8 + 2));
  v8[24] = v18;
  v19 = *(v18 - 8);
  v8[25] = v19;
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  v8[26] = v21;
  v25 = (a2 + *a2);
  v22 = a2[1];
  v23 = swift_task_alloc();
  v8[27] = v23;
  *v23 = v8;
  v23[1] = sub_23DD631EC;

  return v25(v21);
}

uint64_t sub_23DD631EC()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_23DD63710;
  }

  else
  {
    v3 = sub_23DD63300;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD63300()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  _s20AccountsUISupportXPC13CodableResultO3getxyq_YKF(*(v0 + 192), *(v0 + 176), *(v0 + 112));
  v3 = *(v0 + 200);
  if (v1)
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 120);
    (*(v3 + 8))(*(v0 + 208), *(v0 + 192));
    v9 = *(v7 + 32);
    v9(v6, v4, v8);
    v10 = sub_23DD6E4B8();
    if (v10)
    {
      v11 = v10;
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 120));
    }

    else
    {
      v18 = *(v0 + 184);
      v19 = *(v0 + 152);
      v20 = *(v0 + 120);
      v11 = swift_allocError();
      v9(v21, v19, v20);
    }

    v22 = *(v0 + 168);
    v23 = *(v0 + 120);
    *(v0 + 96) = v11;
    MEMORY[0x23EEFEFB0](v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311EA0, &qword_23DD6F068);
    if (swift_dynamicCast())
    {
      v24 = *(v0 + 184);
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = *(v0 + 136);
      v28 = *(v0 + 144);
      v29 = *(v0 + 120);
      MEMORY[0x23EEFEFA0](v11);
      (*(v28 + 32))(v26, v25, v29);
      (*(v28 + 16))(v27, v26, v29);
      swift_willThrowTypedImpl();
      (*(v28 + 8))(v26, v29);
      v30 = *(v0 + 96);
    }

    else
    {
      MEMORY[0x23EEFEFA0](*(v0 + 96));
      if (qword_27E311E78 != -1)
      {
        swift_once();
      }

      v31 = sub_23DD6E2E8();
      __swift_project_value_buffer(v31, qword_27E311E80);
      MEMORY[0x23EEFEFB0](v11);
      v32 = sub_23DD6E2C8();
      v33 = sub_23DD6E3A8();
      MEMORY[0x23EEFEFA0](v11);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        MEMORY[0x23EEFEFB0](v11);
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v36;
        *v35 = v36;
        _os_log_impl(&dword_23DD59000, v32, v33, "XPC failure: %@", v34, 0xCu);
        sub_23DD63EB0(v35);
        MEMORY[0x23EEFF0E0](v35, -1, -1);
        MEMORY[0x23EEFF0E0](v34, -1, -1);
      }

      v37 = *(v0 + 184);
      v39 = *(v0 + 128);
      v38 = *(v0 + 136);
      v40 = *(v0 + 120);

      swift_getErrorValue();
      v41 = *(v0 + 72);
      v42 = *(v0 + 80);
      sub_23DD6E4C8();
      sub_23DD6E188();

      swift_willThrowTypedImpl();
      v30 = v11;
    }

    MEMORY[0x23EEFEFA0](v30);
    v43 = *(v0 + 208);
    v44 = *(v0 + 168);
    v45 = *(v0 + 176);
    v47 = *(v0 + 152);
    v46 = *(v0 + 160);

    v17 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v16 = *(v0 + 208);
    (*(v3 + 8))();

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_23DD63710()
{
  v1 = v0[28];
  v0[12] = v1;
  v2 = v0[21];
  v3 = v0[15];
  MEMORY[0x23EEFEFB0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311EA0, &qword_23DD6F068);
  if (swift_dynamicCast())
  {
    v4 = v0[23];
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[17];
    v8 = v0[18];
    v9 = v0[15];
    MEMORY[0x23EEFEFA0](v1);
    (*(v8 + 32))(v6, v5, v9);
    (*(v8 + 16))(v7, v6, v9);
    swift_willThrowTypedImpl();
    (*(v8 + 8))(v6, v9);
    v10 = v0[12];
  }

  else
  {
    MEMORY[0x23EEFEFA0](v0[12]);
    if (qword_27E311E78 != -1)
    {
      swift_once();
    }

    v11 = sub_23DD6E2E8();
    __swift_project_value_buffer(v11, qword_27E311E80);
    MEMORY[0x23EEFEFB0](v1);
    v12 = sub_23DD6E2C8();
    v13 = sub_23DD6E3A8();
    MEMORY[0x23EEFEFA0](v1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      MEMORY[0x23EEFEFB0](v1);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_23DD59000, v12, v13, "XPC failure: %@", v14, 0xCu);
      sub_23DD63EB0(v15);
      MEMORY[0x23EEFF0E0](v15, -1, -1);
      MEMORY[0x23EEFF0E0](v14, -1, -1);
    }

    v17 = v0[23];
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[15];

    swift_getErrorValue();
    v21 = v0[9];
    v22 = v0[10];
    sub_23DD6E4C8();
    sub_23DD6E188();

    swift_willThrowTypedImpl();
    v10 = v1;
  }

  MEMORY[0x23EEFEFA0](v10);
  v23 = v0[26];
  v24 = v0[21];
  v25 = v0[22];
  v27 = v0[19];
  v26 = v0[20];

  v28 = v0[1];

  return v28();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static CodableResult<>.logAndIgnoreErrors(closure:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_23DD63B48;

  return v9(a1);
}

uint64_t sub_23DD63B48()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_23DD63CE8;
  }

  else
  {
    v3 = sub_23DD63C5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD63C5C()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23DD63CE8()
{
  if (qword_27E311E78 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_23DD6E2E8();
  __swift_project_value_buffer(v2, qword_27E311E80);
  MEMORY[0x23EEFEFB0](v1);
  v3 = sub_23DD6E2C8();
  v4 = sub_23DD6E3A8();
  MEMORY[0x23EEFEFA0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x23EEFEFB0](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_23DD59000, v3, v4, "XPC failure: %@", v7, 0xCu);
    sub_23DD63EB0(v8);
    MEMORY[0x23EEFF0E0](v8, -1, -1);
    MEMORY[0x23EEFF0E0](v7, -1, -1);
    MEMORY[0x23EEFEFA0](v6);
  }

  else
  {

    MEMORY[0x23EEFEFA0](v6);
  }

  (*(*(v0[3] - 8) + 56))(v0[2], 1, 1);
  v10 = v0[1];

  return v10();
}

uint64_t sub_23DD63EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E311EA8, &qword_23DD6F070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DD63F20(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23DD63F9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_23DD640C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_23DD642A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23DD64334(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23DD64408(unsigned int *a1, int a2)
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

_WORD *sub_23DD6445C(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
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

uint64_t $DistributedService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  v4 = sub_23DD6E108();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static $DistributedService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for $DistributedService();
  sub_23DD6E158();
  sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);
  sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
  result = sub_23DD6DF98();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
    v8 = sub_23DD6E108();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = a2;

    return v6;
  }

  return result;
}

uint64_t type metadata accessor for $DistributedService()
{
  result = qword_27E312110;
  if (!qword_27E312110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t $DistributedService.deinit()
{
  v1 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  v2 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem;
  sub_23DD6E158();
  sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);
  sub_23DD6DFB8();
  v3 = sub_23DD6E108();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedService.__deallocating_deinit()
{
  v1 = v0;
  is_remote = swift_distributed_actor_is_remote();
  v3 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  if (is_remote)
  {
    v4 = sub_23DD6E108();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
    v5 = (v0 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
  }

  else
  {
    v5 = (v0 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);
    sub_23DD6DFB8();
    v6 = sub_23DD6E108();
    (*(*(v6 - 8) + 8))(v1 + v3, v6);
  }

  v7 = *v5;

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v1);
}

uint64_t $DistributedService.hashValue.getter()
{
  sub_23DD6E4E8();
  type metadata accessor for $DistributedService();
  sub_23DD6DEDC(&qword_27E3120C0, type metadata accessor for $DistributedService);
  sub_23DD6E2F8();
  return sub_23DD6E508();
}

uint64_t $DistributedService.__allocating_init(actorSystem:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  $DistributedService.init(actorSystem:)(a1);
  return v5;
}

uint64_t $DistributedService.init(actorSystem:)(uint64_t a1)
{
  v9 = sub_23DD6E108();
  v3 = *(v9 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v9);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem;
  *(v1 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = a1;
  type metadata accessor for $DistributedService();
  v10 = a1;
  sub_23DD6E158();
  sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);
  sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);

  sub_23DD6DFA8();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id, v6, v9);
  v10 = *(v1 + v7);

  sub_23DD6DF58();

  return v1;
}

uint64_t $DistributedService.unownedExecutor.getter()
{
  if ((sub_23DD6E088() & 1) == 0)
  {
    type metadata accessor for $DistributedService();
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
    return sub_23DD6DF48();
  }

  return v0;
}

uint64_t sub_23DD64E08()
{
  if ((sub_23DD6E088() & 1) == 0)
  {
    type metadata accessor for $DistributedService();
    return sub_23DD6DF48();
  }

  return v0;
}

uint64_t sub_23DD64E5C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for $DistributedService();
  sub_23DD6E158();
  sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);
  result = sub_23DD6DF98();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
    v8 = sub_23DD6E108();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = v4;

    return v6;
  }

  return result;
}

uint64_t DistributedService<>.checkIsAvailable()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD65018, v4, v3);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_23DD6E098();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  v3[9] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD659AC, 0, 0);
}

uint64_t sub_23DD65034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DD5E2C8;

  return sub_23DD650D4();
}

uint64_t sub_23DD650D4()
{
  v1[3] = v0;
  v2 = sub_23DD6E098();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_23DD6E0E8();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD651F0, 0, 0);
}

uint64_t sub_23DD651F0()
{
  v1 = v0[3];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[9];
    v3 = v0[7];
    v4 = *(v0[3] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[10] = v4;
    v0[2] = v4;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);

    sub_23DD6DF88();
    v5 = type metadata accessor for $DistributedService();
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990]);
    sub_23DD6E018();
    v6 = v0[9];
    v7 = v0[7];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311EA0, &qword_23DD6F068);
    sub_23DD6DFF8();
    v9 = v0[9];
    v10 = v0[7];
    sub_23DD6DFD8();
    v12 = v0[6];
    sub_23DD6E0A8();
    v13 = *(MEMORY[0x277D85310] + 4);
    v14 = swift_task_alloc();
    v0[11] = v14;
    v15 = sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
    *v14 = v0;
    v14[1] = sub_23DD6552C;
    v16 = v0[9];
    v17 = v0[6];
    v18 = v0[3];
    v19 = MEMORY[0x277D84950];

    return MEMORY[0x2821FF450](v18, v17, v16, v8, v5, v8, v15, v19);
  }

  else
  {
    v11 = v0[3];

    return MEMORY[0x2822009F8](sub_23DD65018, v11, 0);
  }
}

uint64_t sub_23DD6552C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_23DD65700;
  }

  else
  {
    v3 = sub_23DD65640;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD65640()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23DD65700()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23DD659AC()
{
  v1 = v0[4];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[15];
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[9];
    v6 = v0[10];
    v7 = v0[8];
    v8 = v0[4];
    v9 = v0[2];
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    v10 = v0[12];
    v11 = v0[10];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E311EA0, &qword_23DD6F068);
    sub_23DD6DFF8();
    v13 = v0[12];
    v14 = v0[10];
    sub_23DD6DFD8();
    v21 = v0[7];
    sub_23DD6E0A8();
    v22 = *(MEMORY[0x277D85310] + 4);
    v23 = swift_task_alloc();
    v0[16] = v23;
    *v23 = v0;
    v23[1] = sub_23DD65D04;
    v24 = v0[15];
    v25 = v0[12];
    v26 = v0[8];
    v27 = v0[7];
    v28 = v0[4];
    v29 = v0[2];
    v34 = v0[13];
    v35 = v0[9];
    v30 = MEMORY[0x277D84950];

    return MEMORY[0x2821FF450](v28, v27, v25, v12, v29, v12, v26, v30);
  }

  else
  {
    v31 = (v0[3] + 16);
    v32 = (*v31 + **v31);
    v15 = (*v31)[1];
    v16 = swift_task_alloc();
    v0[18] = v16;
    *v16 = v0;
    v16[1] = sub_23DD65EF8;
    v17 = v0[3];
    v18 = v0[4];
    v19 = v0[2];

    return v32(v19, v17);
  }
}

uint64_t sub_23DD65D04()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_23DD66048;
  }

  else
  {
    v3 = sub_23DD65E18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD65E18()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_23DD65EF8()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v8 = *v0;

  v3 = v1[15];
  v4 = v1[12];
  v5 = v1[7];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_23DD66048()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[17];
  (*(v0[14] + 8))(v0[15], v0[13]);
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t DistributedService<>.validate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v6 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD6DF28, v6, v5);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_23DD6E2B8();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120C8, &qword_23DD6F578);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD66C00, 0, 0);
}

{
  v4 = *(a4 + 8);
  v6 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD67FB0, v6, v5);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_23DD6E208();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D8, &qword_23DD6F6B8);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD68918, 0, 0);
}

{
  v4 = *(a4 + 8);
  v6 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD6DF28, v6, v5);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_23DD6E258();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E8, &qword_23DD6F7F8);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD6AD04, 0, 0);
}

uint64_t sub_23DD661AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD66268(a1, a2);
}

uint64_t sub_23DD66268(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_23DD6E2B8();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120C8, &qword_23DD6F578);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_23DD6E0E8();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD6644C, 0, 0);
}

uint64_t sub_23DD6644C()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);

    sub_23DD6DF88();
    v5 = type metadata accessor for $DistributedService();
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990]);
    sub_23DD6E018();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v9 = v0[17];
    v10 = v0[15];
    v11 = sub_23DD6E2A8();
    sub_23DD6E008();
    v12 = v0[17];
    v13 = v0[15];
    sub_23DD6DFD8();
    v15 = v0[8];
    sub_23DD6E0A8();
    v16 = *(MEMORY[0x277D85308] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_23DD6682C;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = MEMORY[0x277D84A98];
    v22 = v0[3];
    v23 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v22, v20, v19, v18, v21, v11, v5, v23);
  }

  else
  {
    v14 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD6DF28, v14, 0);
  }
}

uint64_t sub_23DD6682C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_23DD6DF3C;
  }

  else
  {
    v3 = sub_23DD6DF30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD66C00()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v21 = v0[20];
    v22 = v0[18];
    v23 = sub_23DD6E2A8();
    sub_23DD6E008();
    v24 = v0[20];
    v25 = v0[18];
    sub_23DD6DFD8();
    v26 = v0[9];
    sub_23DD6E0A8();
    v27 = *(MEMORY[0x277D85308] + 4);
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_23DD67020;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v41 = v0[21];
    v42 = v0[17];
    v40 = v0[16];
    v35 = MEMORY[0x277D84A98];
    v36 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v34, v32, v31, v30, v35, v23, v33, v36);
  }

  else
  {
    v37 = (v0[5] + 32);
    v38 = (*v37 + **v37);
    v10 = (*v37)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_23DD6DF44;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v38(v16, v14, v15, v12);
  }
}

uint64_t sub_23DD67020()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_23DD6DF24;
  }

  else
  {
    v3 = sub_23DD6DF40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t DistributedService<>.resolve(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v6 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD6DF2C, v6, v5);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_23DD6E2B8();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120C8, &qword_23DD6F578);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD67B10, 0, 0);
}

{
  v4 = *(a4 + 8);
  v6 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD68DB4, v6, v5);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_23DD6E208();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D8, &qword_23DD6F6B8);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD69A30, 0, 0);
}

{
  v4 = *(a4 + 8);
  v6 = sub_23DD6E038();

  return MEMORY[0x2822009F8](sub_23DD6DF2C, v6, v5);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_23DD6E098();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_23DD6E258();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E8, &qword_23DD6F7F8);
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = swift_checkMetadataState();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD6BAF4, 0, 0);
}

uint64_t sub_23DD671C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD67280(a1, a2);
}

uint64_t sub_23DD67280(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_23DD6E2B8();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120C8, &qword_23DD6F578);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_23DD6E0E8();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD67464, 0, 0);
}

uint64_t sub_23DD67464()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);

    sub_23DD6DF88();
    v5 = type metadata accessor for $DistributedService();
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990]);
    sub_23DD6E018();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v9 = v0[17];
    v10 = v0[15];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D0, &qword_23DD6F608);
    sub_23DD6E008();
    v12 = v0[17];
    v13 = v0[15];
    sub_23DD6DFD8();
    v15 = v0[8];
    sub_23DD6E0A8();
    v16 = *(MEMORY[0x277D85308] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_23DD6682C;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = MEMORY[0x277D84A98];
    v22 = v0[3];
    v23 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v22, v20, v19, v18, v21, v11, v5, v23);
  }

  else
  {
    v14 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD6DF2C, v14, 0);
  }
}

uint64_t sub_23DD67B10()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v21 = v0[20];
    v22 = v0[18];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D0, &qword_23DD6F608);
    sub_23DD6E008();
    v24 = v0[20];
    v25 = v0[18];
    sub_23DD6DFD8();
    v26 = v0[9];
    sub_23DD6E0A8();
    v27 = *(MEMORY[0x277D85308] + 4);
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_23DD67020;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v41 = v0[21];
    v42 = v0[17];
    v40 = v0[16];
    v35 = MEMORY[0x277D84A98];
    v36 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v34, v32, v31, v30, v35, v23, v33, v36);
  }

  else
  {
    v37 = (v0[5] + 48);
    v38 = (*v37 + **v37);
    v10 = (*v37)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_23DD6DF44;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v38(v16, v14, v15, v12);
  }
}

uint64_t sub_23DD67FD0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD6808C(a1, a2);
}

uint64_t sub_23DD6808C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_23DD6E208();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D8, &qword_23DD6F6B8);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_23DD6E0E8();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD68270, 0, 0);
}

uint64_t sub_23DD68270()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);

    sub_23DD6DF88();
    v5 = type metadata accessor for $DistributedService();
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990]);
    sub_23DD6E018();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v9 = v0[17];
    v10 = v0[15];
    v11 = sub_23DD6E1F8();
    sub_23DD6E008();
    v12 = v0[17];
    v13 = v0[15];
    sub_23DD6DFD8();
    v15 = v0[8];
    sub_23DD6E0A8();
    v16 = *(MEMORY[0x277D85308] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_23DD6682C;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = MEMORY[0x277D84A98];
    v22 = v0[3];
    v23 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v22, v20, v19, v18, v21, v11, v5, v23);
  }

  else
  {
    v14 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD67FB0, v14, 0);
  }
}

uint64_t sub_23DD68918()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v21 = v0[20];
    v22 = v0[18];
    v23 = sub_23DD6E1F8();
    sub_23DD6E008();
    v24 = v0[20];
    v25 = v0[18];
    sub_23DD6DFD8();
    v26 = v0[9];
    sub_23DD6E0A8();
    v27 = *(MEMORY[0x277D85308] + 4);
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_23DD67020;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v41 = v0[21];
    v42 = v0[17];
    v40 = v0[16];
    v35 = MEMORY[0x277D84A98];
    v36 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v34, v32, v31, v30, v35, v23, v33, v36);
  }

  else
  {
    v37 = (v0[5] + 64);
    v38 = (*v37 + **v37);
    v10 = (*v37)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_23DD6DF44;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v38(v16, v14, v15, v12);
  }
}

uint64_t sub_23DD68DD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD68E90(a1, a2);
}

uint64_t sub_23DD68E90(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_23DD6E208();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120D8, &qword_23DD6F6B8);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_23DD6E0E8();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD69074, 0, 0);
}

uint64_t sub_23DD69074()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);

    sub_23DD6DF88();
    v5 = type metadata accessor for $DistributedService();
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990]);
    sub_23DD6E018();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v9 = v0[17];
    v10 = v0[15];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E0, &qword_23DD6F748);
    sub_23DD6E008();
    v12 = v0[17];
    v13 = v0[15];
    sub_23DD6DFD8();
    v15 = v0[8];
    sub_23DD6E0A8();
    v16 = *(MEMORY[0x277D85308] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_23DD69468;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = MEMORY[0x277D84A98];
    v22 = v0[3];
    v23 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v22, v20, v19, v18, v21, v11, v5, v23);
  }

  else
  {
    v14 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD68DB4, v14, 0);
  }
}

uint64_t sub_23DD69468()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_23DD6967C;
  }

  else
  {
    v3 = sub_23DD6957C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD6957C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23DD6967C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23DD69A30()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v21 = v0[20];
    v22 = v0[18];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E0, &qword_23DD6F748);
    sub_23DD6E008();
    v24 = v0[20];
    v25 = v0[18];
    sub_23DD6DFD8();
    v26 = v0[9];
    sub_23DD6E0A8();
    v27 = *(MEMORY[0x277D85308] + 4);
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_23DD69E64;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v41 = v0[21];
    v42 = v0[17];
    v40 = v0[16];
    v35 = MEMORY[0x277D84A98];
    v36 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v34, v32, v31, v30, v35, v23, v33, v36);
  }

  else
  {
    v37 = (v0[5] + 80);
    v38 = (*v37 + **v37);
    v10 = (*v37)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_23DD6A0A0;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v38(v16, v14, v15, v12);
  }
}

uint64_t sub_23DD69E64()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_23DD6A234;
  }

  else
  {
    v3 = sub_23DD69F78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DD69F78()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = v0[23];
  v11 = v0[20];
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_23DD6A0A0()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v10 = *v0;

  v3 = v1[23];
  v4 = v1[20];
  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[9];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_23DD6A234()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[25];
  v8 = v0[20];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_23DD6A3BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD6A478(a1, a2);
}

uint64_t sub_23DD6A478(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_23DD6E258();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E8, &qword_23DD6F7F8);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_23DD6E0E8();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD6A65C, 0, 0);
}

uint64_t sub_23DD6A65C()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);

    sub_23DD6DF88();
    v5 = type metadata accessor for $DistributedService();
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990]);
    sub_23DD6E018();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v9 = v0[17];
    v10 = v0[15];
    v11 = sub_23DD6E248();
    sub_23DD6E008();
    v12 = v0[17];
    v13 = v0[15];
    sub_23DD6DFD8();
    v15 = v0[8];
    sub_23DD6E0A8();
    v16 = *(MEMORY[0x277D85308] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_23DD6682C;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = MEMORY[0x277D84A98];
    v22 = v0[3];
    v23 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v22, v20, v19, v18, v21, v11, v5, v23);
  }

  else
  {
    v14 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD6DF28, v14, 0);
  }
}

uint64_t sub_23DD6AD04()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v21 = v0[20];
    v22 = v0[18];
    v23 = sub_23DD6E248();
    sub_23DD6E008();
    v24 = v0[20];
    v25 = v0[18];
    sub_23DD6DFD8();
    v26 = v0[9];
    sub_23DD6E0A8();
    v27 = *(MEMORY[0x277D85308] + 4);
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_23DD67020;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v41 = v0[21];
    v42 = v0[17];
    v40 = v0[16];
    v35 = MEMORY[0x277D84A98];
    v36 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v34, v32, v31, v30, v35, v23, v33, v36);
  }

  else
  {
    v37 = (v0[5] + 96);
    v38 = (*v37 + **v37);
    v10 = (*v37)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_23DD6DF44;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v38(v16, v14, v15, v12);
  }
}

uint64_t sub_23DD6B1A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD5E794;

  return sub_23DD6B25C(a1, a2);
}

uint64_t sub_23DD6B25C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23DD6E098();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_23DD6E258();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120E8, &qword_23DD6F7F8);
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = sub_23DD6E0E8();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD6B440, 0, 0);
}

uint64_t sub_23DD6B440()
{
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[17];
    v3 = v0[15];
    v4 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v4;
    v0[2] = v4;
    sub_23DD6E158();
    sub_23DD6DEDC(&qword_27E3120B0, MEMORY[0x277D7E9E0]);

    sub_23DD6DF88();
    v5 = type metadata accessor for $DistributedService();
    sub_23DD6DEDC(&qword_27E312130, MEMORY[0x277D7E990]);
    sub_23DD6E018();
    v6 = v0[17];
    v8 = v0[14];
    v7 = v0[15];
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v9 = v0[17];
    v10 = v0[15];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120F0, &unk_23DD6F890);
    sub_23DD6E008();
    v12 = v0[17];
    v13 = v0[15];
    sub_23DD6DFD8();
    v15 = v0[8];
    sub_23DD6E0A8();
    v16 = *(MEMORY[0x277D85308] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
    *v17 = v0;
    v17[1] = sub_23DD6682C;
    v18 = v0[17];
    v19 = v0[8];
    v20 = v0[5];
    v21 = MEMORY[0x277D84A98];
    v22 = v0[3];
    v23 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v22, v20, v19, v18, v21, v11, v5, v23);
  }

  else
  {
    v14 = v0[5];

    return MEMORY[0x2822009F8](sub_23DD6DF2C, v14, 0);
  }
}

uint64_t sub_23DD6BAF4()
{
  v1 = v0[6];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[23];
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[16];
    v8 = v0[6];
    v9 = v0[4];
    sub_23DD6E028();
    sub_23DD6DF88();
    swift_getAssociatedConformanceWitness();
    sub_23DD6E018();
    v18 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_23DD6E0B8();
    sub_23DD6DFE8();
    v21 = v0[20];
    v22 = v0[18];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3120F0, &unk_23DD6F890);
    sub_23DD6E008();
    v24 = v0[20];
    v25 = v0[18];
    sub_23DD6DFD8();
    v26 = v0[9];
    sub_23DD6E0A8();
    v27 = *(MEMORY[0x277D85308] + 4);
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_23DD67020;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[9];
    v32 = v0[6];
    v33 = v0[4];
    v34 = v0[2];
    v41 = v0[21];
    v42 = v0[17];
    v40 = v0[16];
    v35 = MEMORY[0x277D84A98];
    v36 = MEMORY[0x277D84A98];

    return MEMORY[0x2821FF448](v34, v32, v31, v30, v35, v23, v33, v36);
  }

  else
  {
    v37 = (v0[5] + 112);
    v38 = (*v37 + **v37);
    v10 = (*v37)[1];
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_23DD6DF44;
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];

    return v38(v16, v14, v15, v12);
  }
}

uint64_t sub_23DD6BF28()
{
  v2 = *v0;
  sub_23DD6E4E8();
  type metadata accessor for $DistributedService();
  sub_23DD6E2F8();
  return sub_23DD6E508();
}

uint64_t sub_23DD6BF88()
{
  v1 = *v0;
  type metadata accessor for $DistributedService();
  sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
  return sub_23DD6E058();
}

uint64_t sub_23DD6C004()
{
  v2 = *v0;
  sub_23DD6E4E8();
  type metadata accessor for $DistributedService();
  sub_23DD6E2F8();
  return sub_23DD6E508();
}

uint64_t sub_23DD6C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a4;
  v7 = *a5;
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_23DD5E2C8;

  return DistributedService<>.checkIsAvailable()(v6, v7);
}

uint64_t sub_23DD6C10C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_23DD6DFC8();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_23DD6DF38;

  return DistributedService<>.validate(_:)(a3, v12, v13, v14);
}

uint64_t sub_23DD6C29C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_23DD6DFC8();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_23DD6DF38;

  return DistributedService<>.resolve(_:)(a3, v12, v13, v14);
}

uint64_t sub_23DD6C42C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_23DD6DFC8();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_23DD6DF38;

  return DistributedService<>.validate(_:)(a3, v12, v13, v14);
}

uint64_t sub_23DD6C5BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_23DD6DFC8();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_23DD6C74C;

  return DistributedService<>.resolve(_:)(a3, v12, v13, v14);
}

uint64_t sub_23DD6C74C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_23DD6C8C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_23DD6DFC8();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_23DD6DF38;

  return DistributedService<>.validate(_:)(a3, v12, v13, v14);
}

uint64_t sub_23DD6CA54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a2;
  v5[2] = *a2;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v5[4] = v12;
  sub_23DD6DFC8();
  v13 = *a4;
  v14 = *a5;
  v15 = swift_task_alloc();
  v5[5] = v15;
  *v15 = v5;
  v15[1] = sub_23DD6DF38;

  return DistributedService<>.resolve(_:)(a3, v12, v13, v14);
}

uint64_t sub_23DD6CCBC(uint64_t a1)
{
  result = sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23DD6CDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  v5 = sub_23DD6E108();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23DD6CE68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for $DistributedService();
  v5 = sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);

  return MEMORY[0x2821FF4E0](v2, v3, v4, v5);
}

uint64_t sub_23DD6CEF4()
{
  v1 = *v0;
  type metadata accessor for $DistributedService();
  sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
  sub_23DD6DEDC(&qword_27E312128, MEMORY[0x277D7E9B8]);
  return sub_23DD6E068();
}

uint64_t sub_23DD6CFBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for $DistributedService();
  sub_23DD6DEDC(&qword_27E3120B8, type metadata accessor for $DistributedService);
  sub_23DD6DEDC(&qword_27E312120, MEMORY[0x277D7E9B8]);
  result = sub_23DD6E078();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_23DD6D094()
{
  result = sub_23DD6E108();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23DD6D13C(int a1, int a2, int a3, int a4, int a5, int a6, id a7)
{
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v10 = result;
    v13 = (*(result + 24) + **(result + 24));
    v11 = *(*(result + 24) + 4);
    v12 = swift_task_alloc();
    *(v7 + 16) = v12;
    *v12 = v7;
    v12[1] = sub_23DD5E794;

    return v13(a7, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6D27C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 40) + **(result + 40));
    v16 = *(*(result + 40) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_23DD6DF38;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6D48C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 56) + **(result + 56));
    v16 = *(*(result + 56) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_23DD6DF38;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6D69C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 72) + **(result + 72));
    v16 = *(*(result + 72) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_23DD6DF38;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6D8AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 88) + **(result + 88));
    v16 = *(*(result + 88) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_23DD6DF38;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6DABC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 104) + **(result + 104));
    v16 = *(*(result + 104) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_23DD6DF38;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6DCCC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v7[2] = *a2;
  v11 = *(v10 - 8);
  v7[3] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[4] = v13;
  sub_23DD6DFC8();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v18 = (*(result + 120) + **(result + 120));
    v16 = *(*(result + 120) + 4);
    v17 = swift_task_alloc();
    v7[5] = v17;
    *v17 = v7;
    v17[1] = sub_23DD6DF38;

    return v18(a3, v13, a7, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD6DEDC(unint64_t *a1, void (*a2)(uint64_t))
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