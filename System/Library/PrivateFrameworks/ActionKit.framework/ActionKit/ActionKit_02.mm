uint64_t sub_23DE60E70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23DE60EA8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DE60F40;

  return sub_23DE5E808(a1);
}

uint64_t sub_23DE60F40()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_23DE61038()
{
  v0 = sub_23E1FC08C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = sub_23E1FC23C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E1FC20C();
  sub_23E1FC2CC();
  sub_23E1FC43C();
  v13 = sub_23E1FC1FC();
  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);
  (*(v9 + 8))(v12, v8);
  return v13 & 1;
}

uint64_t sub_23DE61230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double OUTLINED_FUNCTION_2_4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t sub_23DE612B8()
{
  v0 = sub_23E1FDC1C();
  v2 = v1;
  if (v0 == sub_23E1FDC1C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_0_4();
  }

  return v5 & 1;
}

uint64_t sub_23DE61330(unsigned __int8 a1, char a2)
{
  v2 = 2003789939;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1701079400;
    }

    else
    {
      v4 = 0x656C67676F74;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 2003789939;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1701079400;
    }

    else
    {
      v2 = 0x656C67676F74;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4();
  }

  return v8 & 1;
}

uint64_t sub_23DE61404(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E55;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E776F6E6B6E55;
  switch(v4)
  {
    case 1:
      v5 = 0x616E6F6974617453;
      v3 = 0xEA00000000007972;
      break;
    case 2:
      v6 = 1802264919;
      goto LABEL_6;
    case 3:
      v6 = 1852732754;
      goto LABEL_6;
    case 4:
      v6 = 1818458435;
LABEL_6:
      v5 = v6 | 0x676E6900000000;
      break;
    case 5:
      v3 = 0x800000023E24DB00;
      v5 = 0xD000000000000017;
      break;
    case 6:
      v5 = 0xD000000000000013;
      v3 = 0x800000023E24DB20;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x676E69766F4DLL;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x616E6F6974617453;
      v7 = 0xEA00000000007972;
      break;
    case 2:
      v8 = 1802264919;
      goto LABEL_15;
    case 3:
      v8 = 1852732754;
      goto LABEL_15;
    case 4:
      v8 = 1818458435;
LABEL_15:
      v2 = v8 | 0x676E6900000000;
      break;
    case 5:
      v7 = 0x800000023E24DB00;
      v2 = 0xD000000000000017;
      break;
    case 6:
      v2 = 0xD000000000000013;
      v7 = 0x800000023E24DB20;
      break;
    case 7:
      v7 = 0xE600000000000000;
      v2 = 0x676E69766F4DLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_4();
  }

  return v10 & 1;
}

uint64_t sub_23DE615E4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 0x6563696F76;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1635017060;
  }

  else
  {
    v5 = 0x6563696F76;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4();
  }

  return v8 & 1;
}

uint64_t sub_23DE6166C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x74726174736552;
  }

  else
  {
    v3 = 0x776F442074756853;
  }

  if (v2)
  {
    v4 = 0xE90000000000006ELL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x74726174736552;
  }

  else
  {
    v5 = 0x776F442074756853;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE90000000000006ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4();
  }

  return v8 & 1;
}

uint64_t sub_23DE61704(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656C67676F74;
  }

  else
  {
    v3 = 1852994932;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x656C67676F74;
  }

  else
  {
    v5 = 1852994932;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4();
  }

  return v8 & 1;
}

uint64_t sub_23DE6178C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1886352499;
  }

  else
  {
    v3 = 0x7472617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1886352499;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_4();
  }

  return v8 & 1;
}

uint64_t sub_23DE618A4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_23DE62210(a4, a5);
  sub_23E1FDDAC();
  sub_23E1FDDAC();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23E1FE75C();
  }

  return v8 & 1;
}

uint64_t sub_23DE61A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v20[3] = a2;
  v20[4] = a3;
  v22 = sub_23E1FE29C();
  v23 = sub_23DE62210(&unk_280DAE350, MEMORY[0x277CC9D68]);
  v24 = *(MEMORY[0x277D856D0] + 4);
  v30 = swift_task_alloc();
  v20[5] = v30;
  *v30 = v20;
  v30[1] = sub_23DE61B00;

  return MEMORY[0x282200308](a1, v22, v23, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_23DE61B00()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v15 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_23E1FDE6C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v13 = sub_23DE61C9C;
  }

  else
  {
    if (v4)
    {
      v10 = *(v2 + 24);
      v11 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_23E1FDE6C();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v13 = sub_23DE61C84;
  }

  return MEMORY[0x2822009F8](v13, v7, v9);
}

uint64_t sub_23DE61C9C()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t WFActionRegistry.fillAndWait()()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C530, &qword_23E224390) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = sub_23E1FE29C();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE61E3C, 0, 0);
}

uint64_t sub_23DE61E3C()
{
  if ([*(v0 + 24) state] == 2)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 32);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 24);
    v7 = [objc_opt_self() defaultCenter];
    v8 = *MEMORY[0x277D7CBA8];
    *(v0 + 64) = sub_23E1FE2AC();

    [v6 fill];
    sub_23E1FB7CC();
    sub_23E1FE28C();
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_23DE61FD4;
    v10 = *(v0 + 56);
    v11 = *(v0 + 32);

    return (sub_23DE61A0C)(v11, 0, 0, v0 + 16);
  }
}

uint64_t sub_23DE61FD4()
{
  v2 = *(*v1 + 72);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_23DE620E4, 0, 0);
  }

  return result;
}

uint64_t sub_23DE620E4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];

  (*(v4 + 8))(v2, v3);
  v6 = sub_23E1FBDDC();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    sub_23DE621A8(v0[4]);
  }

  v7 = v0[7];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_23DE621A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C530, &qword_23E224390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DE62210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_23E1FE75C();
}

uint64_t sub_23DE622E4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetCellularDataAction();
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

id sub_23DE6239C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v16 = sub_23E1FDA9C();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v8;
  v19.super_class = type metadata accessor for SetCellularDataAction();
  v17 = objc_msgSendSuper2(&v19, sel_initWithIdentifier_definition_serializedParameters_schema_intent_resolvedIntentDescriptor_stringLocalizer_, v15, a3, v16, a5, a6, a7, a8);

  if (v17)
  {
  }

  return v17;
}

id sub_23DE62598()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCellularDataAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DE625F0(uint64_t *a1)
{
  v2 = *(sub_23E1FBD5C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23DF21860(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_23DE64114(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_23DE62698()
{
  v0 = sub_23E1FBD5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v22 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  result = sub_23E1FBD4C();
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  v24 = v1 + 16;
  v21 = (v1 + 32);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v10 == v9)
    {

      qword_27E33E128 = v23;
      return result;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v12 = *(v1 + 72);
    (*(v1 + 16))(v6, v8 + v11 + v12 * v9, v0);
    if (sub_23E1FBCCC())
    {
      v20 = *v21;
      v20(v22, v6, v0);
      v13 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = *(v13 + 16);
        sub_23DE63E6C();
        v13 = v25;
      }

      v16 = *(v13 + 16);
      v17 = v16 + 1;
      if (v16 >= *(v13 + 24) >> 1)
      {
        v23 = v16 + 1;
        v19 = v16;
        sub_23DE63E6C();
        v17 = v23;
        v16 = v19;
        v13 = v25;
      }

      ++v9;
      *(v13 + 16) = v17;
      v23 = v13;
      result = (v20)(v13 + v11 + v16 * v12, v22, v0);
    }

    else
    {
      result = (*(v1 + 8))(v6, v0);
      ++v9;
    }
  }

  __break(1u);
  return result;
}

void sub_23DE628F4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_23DE6296C(v2);
}

void sub_23DE6296C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_23DE629C8(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFSpotlightSearchResultTypePickerParameter_action;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_23DE62A4C;
}

void sub_23DE62A4C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_23DE62AC8(void *a1)
{
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFSpotlightSearchResultTypePickerParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithDefinition_, a1);
  [v3 setDataSource_];

  return v3;
}

uint64_t sub_23DE62B70()
{
  v0 = sub_23E1FD03C();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = sub_23E1FBD5C();
  v10 = OUTLINED_FUNCTION_6_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v20 = sub_23E1FC9CC();
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = [v20 value];
  if (!v22 || (v23 = v22, v43 = 0, v44 = 0, sub_23E1FDC0C(), v23, !v44))
  {

    return 0;
  }

  sub_23E1FB7BC();
  sub_23E1FBD2C();
  (*(v12 + 16))(v17, v19, v9);
  v24 = (*(v12 + 88))(v17, v9);
  if (v24 == *MEMORY[0x277CFC170])
  {

    v25 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v26 = sub_23E1FD02C();
    v27 = sub_23E1FE1CC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23DE30000, v26, v27, "WFSpotlightSearchResultTypePickerParameter: Tried to get accessoryImage for deprecated 'any' type", v28, 2u);
      MEMORY[0x23EF074C0](v28, -1, -1);
    }

    (*(v3 + 8))(v8, v0);
    (*(v12 + 8))(v19, v9);
    return 0;
  }

  if (v24 == *MEMORY[0x277CFC1B0])
  {

    v31 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v32 = 0x7261646E656C6163;
LABEL_13:
    v33 = 0xE800000000000000;
LABEL_16:
    v29 = sub_23DE63D1C(v32, v33, 0, 2);

    (*(v12 + 8))(v19, v9);
    return v29;
  }

  if (v24 == *MEMORY[0x277CFC198])
  {

    v34 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v33 = 0x800000023E24ECF0;
    v32 = 0xD000000000000012;
    goto LABEL_16;
  }

  if (v24 == *MEMORY[0x277CFC178])
  {

    v35 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v32 = 0x746E656D75636F64;
    goto LABEL_13;
  }

  if (v24 == *MEMORY[0x277CFC180])
  {

    v36 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v32 = 0x65706F6C65766E65;
    goto LABEL_13;
  }

  if (v24 == *MEMORY[0x277CFC1A0])
  {

    v37 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v32 = 0x6567617373656DLL;
    v33 = 0xE700000000000000;
    goto LABEL_16;
  }

  if (v24 == *MEMORY[0x277CFC188])
  {

    v38 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v32 = 0x7865742E65746F6ELL;
LABEL_25:
    v33 = 0xE900000000000074;
    goto LABEL_16;
  }

  if (v24 == *MEMORY[0x277CFC190])
  {

    v39 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v32 = 0x6F746F6870;
    v33 = 0xE500000000000000;
    goto LABEL_16;
  }

  if (v24 == *MEMORY[0x277CFC1B8])
  {

    v40 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v32 = 0x73696C6B63656863;
    goto LABEL_25;
  }

  if (v24 == *MEMORY[0x277CFC1C0])
  {

    v41 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v32 = 0x6D726F6665766177;
    goto LABEL_13;
  }

  if (v24 == *MEMORY[0x277CFC1A8])
  {

    v42 = objc_allocWithZone(MEMORY[0x277D79FC8]);
    v32 = 0x697261666173;
    v33 = 0xE600000000000000;
    goto LABEL_16;
  }

  result = sub_23E1FE74C();
  __break(1u);
  return result;
}

id sub_23DE63198()
{
  v0 = sub_23E1FBD5C();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v4 = sub_23E1FC9CC();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 value];
  if (v6)
  {
    sub_23E1FDC0C();

    return 0;
  }

  return v6;
}

id sub_23DE633B0()
{
  v0 = sub_23E1FBD5C();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  if (qword_27E32B8E8 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  v25 = qword_27E33E128;
  sub_23E1FB7BC();
  sub_23DE625F0(&v25);
  v10 = v25;
  v11 = *(v25 + 16);
  if (v11)
  {
    v25 = v9;
    sub_23E1FE63C();
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v23 = *(v12 + 56);
    v24 = v13;
    do
    {
      v24(v8, v14, v0);
      sub_23E1FBD3C();
      v15 = sub_23E1FDBDC();

      v16 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

      sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
      sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
      sub_23E1FC98C();

      (*(v12 - 8))(v8, v0);
      sub_23E1FE61C();
      v17 = *(v25 + 16);
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
      v14 += v23;
      --v11;
    }

    while (v11);
  }

  v18 = objc_allocWithZone(MEMORY[0x277CD3E30]);
  sub_23DE63D90(0, 0);
  MEMORY[0x23EF045A0]();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23E1FDE0C();
  }

  sub_23E1FDE3C();
  v19 = objc_allocWithZone(MEMORY[0x277CD3E28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32DB40, &unk_23E2243C0);
  v20 = sub_23E1FDDCC();

  v21 = [v19 initWithSections_];

  return v21;
}

BOOL sub_23DE636D4()
{
  sub_23E1FBCDC();
  sub_23E1FBCDC();
  sub_23DE655BC();
  v0 = sub_23E1FE47C();

  return v0 == -1;
}

uint64_t sub_23DE637D8@<X0>(unint64_t *a1@<X8>)
{
  v40 = a1;
  v1 = sub_23E1FBD5C();
  v2 = OUTLINED_FUNCTION_6_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  if (qword_27E32B8E8 != -1)
  {
LABEL_21:
    OUTLINED_FUNCTION_1_3();
  }

  v13 = 0;
  v14 = qword_27E33E128;
  v45 = *(qword_27E33E128 + 16);
  v15 = v4 + 16;
  v42 = (v4 + 32);
  v41 = MEMORY[0x277D84F90];
  while (v45 != v13)
  {
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = *(v4 + 72);
    (*(v4 + 16))(v12, v14 + v16 + v17 * v13, v1);
    if (sub_23E1FBCCC())
    {
      v38 = *v42;
      v38(v43, v12, v1);
      v18 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v18;
      v39 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = *(v18 + 16);
        sub_23DE63E6C();
        v18 = v46;
      }

      v21 = *(v18 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v18 + 24) >> 1)
      {
        v41 = v21 + 1;
        sub_23DE63E6C();
        v22 = v41;
        v18 = v46;
      }

      ++v13;
      *(v18 + 16) = v22;
      v41 = v18;
      v38(v18 + v16 + v21 * v17, v43, v1);
      v15 = v39;
    }

    else
    {
      (*(v4 + 8))(v12, v1);
      ++v13;
    }
  }

  v23 = v41;
  v24 = *(v41 + 16);
  if (v24)
  {
    v45 = (v4 + 8);
    v46 = MEMORY[0x277D84F90];
    sub_23DE63E2C();
    v25 = v46;
    v26 = v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v27 = *(v4 + 72);
    v42 = *(v4 + 16);
    v43 = v27;
    do
    {
      v28 = v44;
      v29 = v15;
      v42(v44, v26, v1);
      v30 = sub_23E1FBD3C();
      v32 = v31;
      (*v45)(v28, v1);
      v46 = v25;
      v33 = *(v25 + 16);
      if (v33 >= *(v25 + 24) >> 1)
      {
        sub_23DE63E2C();
        v25 = v46;
      }

      *(v25 + 16) = v33 + 1;
      v34 = v25 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v32;
      v26 += v43;
      --v24;
      v15 = v29;
    }

    while (v24);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v36 = v40;
  v40[3] = result;
  *v36 = v25;
  return result;
}

id WFSpotlightSearchResultTypePickerParameter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSpotlightSearchResultTypePickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23DE63D1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  v8 = [v4 initWithSymbolName:v7 configuration:a3 renderingMode:a4];

  return v8;
}

id sub_23DE63D90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_23E1FDBDC();
  }

  else
  {
    v3 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C5E0, &qword_23E2265D0);
  v4 = sub_23E1FDDCC();

  v5 = [v2 initWithTitle:v3 items:v4];

  return v5;
}

void sub_23DE63E2C()
{
  v1 = *v0;
  sub_23DF1E74C();
  *v0 = v2;
}

void sub_23DE63E4C()
{
  v1 = *v0;
  sub_23DF1E810();
  *v0 = v2;
}

void sub_23DE63E6C()
{
  v1 = *v0;
  sub_23DF1E84C();
  *v0 = v2;
}

void sub_23DE64034()
{
  v1 = *v0;
  sub_23DF1E888();
  *v0 = v2;
}

void sub_23DE64074()
{
  v1 = *v0;
  sub_23DF1E978();
  *v0 = v2;
}

void sub_23DE64094()
{
  v1 = *v0;
  sub_23DF1EA38();
  *v0 = v2;
}

void sub_23DE640B4()
{
  v1 = *v0;
  sub_23DF1EB00();
  *v0 = v2;
}

void sub_23DE640D4()
{
  v1 = *v0;
  sub_23DF1EBB8();
  *v0 = v2;
}

void sub_23DE640F4()
{
  v1 = *v0;
  sub_23DF1EBF4();
  *v0 = v2;
}

uint64_t sub_23DE64114(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E1FE70C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23E1FBD5C();
        v6 = sub_23E1FDE2C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23E1FBD5C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23DE64514(v8, v9, a1, v4);
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
    return sub_23DE64244(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23DE64244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23E1FBD5C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v53 = &v34 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v15 + 16);
    v18 = v15 + 16;
    v20 = *(v18 + 56);
    v45 = (v18 - 8);
    v46 = v19;
    v47 = v18;
    v21 = v17 + v20 * (a3 - 1);
    v41 = -v20;
    v42 = (v18 + 16);
    v22 = a1 - a3;
    v43 = v17;
    v35 = v20;
    v23 = v17 + v20 * a3;
    while (2)
    {
      v39 = v21;
      v40 = a3;
      v37 = v23;
      v38 = v22;
      do
      {
        v24 = v48;
        v25 = v46;
        v46(v48, v23, v8);
        v26 = v53;
        v25(v53, v21, v8);
        v51 = sub_23E1FBCDC();
        v52 = v27;
        v49 = sub_23E1FBCDC();
        v50 = v28;
        sub_23DE655BC();
        v29 = sub_23E1FE47C();

        v30 = *v45;
        (*v45)(v26, v8);
        result = v30(v24, v8);
        if (v29 != -1)
        {
          break;
        }

        if (!v43)
        {
          __break(1u);
          return result;
        }

        v31 = *v42;
        v32 = v44;
        (*v42)(v44, v23, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v31)(v21, v32, v8);
        v21 += v41;
        v23 += v41;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v40 + 1;
      v21 = v39 + v35;
      v22 = v38 - 1;
      v23 = v37 + v35;
      if (v40 + 1 != v36)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23DE64514(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v8 = sub_23E1FBD5C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v139 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v131 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v153 = &v131 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v152 = &v131 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v131 - v19;
  MEMORY[0x28223BE20](v18);
  v23 = &v131 - v21;
  v144 = v22;
  v145 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_101:
    v160 = *v135;
    if (!v160)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_103;
    }

    goto LABEL_139;
  }

  v132 = a4;
  v25 = 0;
  v154 = v22 + 16;
  v155 = (v22 + 8);
  v151 = (v22 + 32);
  v26 = MEMORY[0x277D84F90];
  v160 = v8;
  v133 = v20;
  v134 = &v131 - v21;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v140 = v25;
    if (v25 + 1 < v24)
    {
      v147 = v25 + 1;
      v148 = v24;
      v146 = v26;
      v29 = v23;
      v30 = v25;
      v31 = *v145;
      v32 = *(v22 + 72);
      v33 = *v145 + v32 * v28;
      v34 = v8;
      v35 = *(v22 + 16);
      v35(v29, v33, v34);
      v36 = v31 + v32 * v30;
      v37 = v134;
      v142 = v35;
      v35(v20, v36, v34);
      LODWORD(v143) = sub_23DE636D4();
      if (v5)
      {
        v130 = *v155;
        (*v155)(v20, v34);
        (v130)(v37, v34);
LABEL_114:

        return;
      }

      v136 = 0;
      v26 = v155;
      v38 = *v155;
      (*v155)(v20, v34);
      v141 = v38;
      (v38)(v37, v34);
      v39 = v140 + 2;
      v40 = v31 + v32 * (v140 + 2);
      v150 = v32;
      v41 = v148;
      while (1)
      {
        v5 = v39;
        if (++v147 >= v41)
        {
          break;
        }

        v42 = v152;
        v43 = v160;
        v44 = v142;
        (v142)(v152, v40, v160);
        v26 = v153;
        v44(v153, v33, v43);
        v158 = sub_23E1FBCDC();
        v159 = v45;
        v156 = sub_23E1FBCDC();
        v157 = v46;
        sub_23DE655BC();
        v47 = sub_23E1FE47C();

        v48 = v141;
        (v141)(v26, v43);
        v48(v42, v43);
        v41 = v148;
        v32 = v150;
        v40 += v150;
        v33 += v150;
        v39 = v5 + 1;
        if (((v143 ^ (v47 != -1)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v147 = v41;
LABEL_10:
      if (v143)
      {
        v28 = v147;
        v27 = v140;
        v22 = v144;
        v8 = v160;
        if (v147 < v140)
        {
          goto LABEL_138;
        }

        if (v140 >= v147)
        {
          v5 = v136;
          v26 = v146;
        }

        else
        {
          if (v41 >= v5)
          {
            v49 = v5;
          }

          else
          {
            v49 = v41;
          }

          v50 = v32 * (v49 - 1);
          v51 = v147;
          v52 = v32 * v49;
          v53 = v140 * v32;
          v54 = v140;
          v5 = v136;
          do
          {
            if (v54 != --v51)
            {
              v55 = *v145;
              if (!*v145)
              {
                goto LABEL_143;
              }

              v56 = *v151;
              (*v151)(v139, v55 + v53, v8);
              v57 = v53 < v50 || v55 + v53 >= v55 + v52;
              if (v57)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v53 != v50)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v56((v55 + v50), v139, v8);
              v5 = v136;
              v27 = v140;
              v32 = v150;
            }

            ++v54;
            v50 -= v32;
            v52 -= v32;
            v53 += v32;
          }

          while (v54 < v51);
          v22 = v144;
          v26 = v146;
          v28 = v147;
        }
      }

      else
      {
        v5 = v136;
        v22 = v144;
        v26 = v146;
        v28 = v147;
        v8 = v160;
        v27 = v140;
      }
    }

    v58 = v145[1];
    if (v28 < v58)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_135;
      }

      if (v28 - v27 < v132)
      {
        break;
      }
    }

LABEL_48:
    if (v28 < v27)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23DE4CE18(0, *(v26 + 2) + 1, 1, v26);
      v26 = v121;
    }

    v79 = *(v26 + 2);
    v78 = *(v26 + 3);
    v80 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      sub_23DE4CE18(v78 > 1, v79 + 1, 1, v26);
      v26 = v122;
    }

    *(v26 + 2) = v80;
    v81 = v26 + 32;
    v82 = &v26[16 * v79 + 32];
    v83 = v147;
    *v82 = v140;
    *(v82 + 1) = v83;
    v150 = *v135;
    if (!v150)
    {
      goto LABEL_144;
    }

    if (v79)
    {
      v146 = v26;
      while (1)
      {
        v84 = v80 - 1;
        v85 = &v81[16 * v80 - 16];
        v86 = &v26[16 * v80];
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v87 = *(v26 + 4);
          v88 = *(v26 + 5);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_121;
          }

          v102 = *v86;
          v101 = *(v86 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_124;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_129;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v80 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v80 < 2)
        {
          goto LABEL_123;
        }

        v109 = *v86;
        v108 = *(v86 + 1);
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_126;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_128;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v80)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v145)
        {
          goto LABEL_141;
        }

        v116 = &v81[16 * v84 - 16];
        v26 = *v116;
        v117 = v84;
        v118 = &v81[16 * v84];
        v119 = *(v118 + 1);
        sub_23DE6502C(*v145 + *(v144 + 72) * *v116, *v145 + *(v144 + 72) * *v118, *v145 + *(v144 + 72) * v119, v150);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v119 < v26)
        {
          goto LABEL_116;
        }

        v5 = *(v146 + 2);
        if (v117 > v5)
        {
          goto LABEL_117;
        }

        *v116 = v26;
        *(v116 + 1) = v119;
        if (v117 >= v5)
        {
          goto LABEL_118;
        }

        v80 = v5 - 1;
        sub_23DF20C0C(v118 + 16, v5 - 1 - v117, v118);
        v26 = v146;
        *(v146 + 2) = v5 - 1;
        v120 = v5 > 2;
        v5 = 0;
        if (!v120)
        {
          goto LABEL_98;
        }
      }

      v91 = &v81[16 * v80];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_119;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_120;
      }

      v98 = *(v86 + 1);
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_122;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_125;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_133;
        }

        if (v89 < v115)
        {
          v84 = v80 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v144;
    v24 = v145[1];
    v25 = v147;
    v20 = v133;
    v23 = v134;
    if (v147 >= v24)
    {
      goto LABEL_101;
    }
  }

  v59 = v27 + v132;
  if (__OFADD__(v27, v132))
  {
    goto LABEL_136;
  }

  if (v59 >= v58)
  {
    v59 = v145[1];
  }

  if (v59 < v27)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v26 = sub_23DF20AE8(v26);
LABEL_103:
    v123 = v26 + 16;
    v124 = *(v26 + 2);
    while (v124 >= 2)
    {
      if (!*v145)
      {
        goto LABEL_142;
      }

      v125 = v26;
      v26 += 16 * v124;
      v126 = *v26;
      v127 = &v123[2 * v124];
      v128 = *(v127 + 1);
      sub_23DE6502C(*v145 + *(v144 + 72) * *v26, *v145 + *(v144 + 72) * *v127, *v145 + *(v144 + 72) * v128, v160);
      if (v5)
      {
        break;
      }

      if (v128 < v126)
      {
        goto LABEL_130;
      }

      if (v124 - 2 >= *v123)
      {
        goto LABEL_131;
      }

      *v26 = v126;
      *(v26 + 1) = v128;
      v129 = *v123 - v124;
      if (*v123 < v124)
      {
        goto LABEL_132;
      }

      v124 = *v123 - 1;
      sub_23DF20C0C(v127 + 16, v129, v127);
      *v123 = v124;
      v26 = v125;
    }

    goto LABEL_114;
  }

  if (v28 == v59)
  {
    goto LABEL_48;
  }

  v146 = v26;
  v136 = v5;
  v60 = *v145;
  v61 = *(v22 + 72);
  v150 = *(v22 + 16);
  v62 = v60 + v61 * (v28 - 1);
  v63 = -v61;
  v64 = (v27 - v28);
  v148 = v60;
  v137 = v61;
  v65 = (v60 + v28 * v61);
  v138 = v59;
LABEL_41:
  v147 = v28;
  v141 = v65;
  v142 = v64;
  v66 = v65;
  v143 = v62;
  while (1)
  {
    v67 = v152;
    v68 = v150;
    (v150)(v152, v66, v8);
    v69 = v153;
    v68(v153, v62, v160);
    v158 = sub_23E1FBCDC();
    v159 = v70;
    v156 = sub_23E1FBCDC();
    v157 = v71;
    sub_23DE655BC();
    v72 = sub_23E1FE47C();

    v73 = *v155;
    v74 = v69;
    v8 = v160;
    (*v155)(v74, v160);
    (v73)(v67, v8);
    if (v72 != -1)
    {
LABEL_46:
      v28 = v147 + 1;
      v62 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if (v147 + 1 == v138)
      {
        v28 = v138;
        v5 = v136;
        v26 = v146;
        v27 = v140;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v148)
    {
      break;
    }

    v75 = *v151;
    v76 = v149;
    (*v151)(v149, v66, v8);
    swift_arrayInitWithTakeFrontToBack();
    v75(v62, v76, v8);
    v62 += v63;
    v66 += v63;
    v57 = __CFADD__(v64++, 1);
    if (v57)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_23DE6502C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a4;
  v71 = sub_23E1FBD5C();
  v7 = *(*(v71 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v71);
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v68 = &v59 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v14;
  v79 = a1;
  v78 = v72;
  v66 = (v11 + 8);
  v67 = (v11 + 16);
  v19 = v16 / v14;
  if (v18 >= v16 / v14)
  {
    v65 = a1;
    v36 = v72;
    sub_23DF317F4(a2, v16 / v14, v72);
    v37 = v36 + v19 * v14;
    v38 = -v14;
    v39 = v37;
    v62 = -v14;
LABEL_36:
    v40 = a2 + v38;
    v41 = a3;
    v60 = v39;
    v42 = v39;
    v63 = a2 + v38;
    v64 = a2;
    while (1)
    {
      if (v37 <= v72)
      {
        v79 = a2;
        v77 = v42;
        goto LABEL_58;
      }

      if (a2 <= v65)
      {
        break;
      }

      v61 = v42;
      v70 = v41 + v38;
      v43 = v37 + v38;
      v44 = v68;
      v45 = *v67;
      v46 = v37 + v38;
      v47 = v71;
      (*v67)(v68, v46, v71);
      v48 = v37;
      v49 = v69;
      v45(v69, v40, v47);
      v75 = sub_23E1FBCDC();
      v76 = v50;
      v73 = sub_23E1FBCDC();
      v74 = v51;
      sub_23DE655BC();
      v52 = sub_23E1FE47C();

      v53 = *v66;
      (*v66)(v49, v47);
      v53(v44, v47);
      if (v52 == -1)
      {
        v37 = v48;
        a3 = v70;
        if (v41 < v64 || v70 >= v64)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          v39 = v61;
          v38 = v62;
        }

        else
        {
          v57 = v61;
          v39 = v61;
          v38 = v62;
          v58 = v63;
          a2 = v63;
          if (v41 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v58;
            v39 = v57;
          }
        }

        goto LABEL_36;
      }

      v54 = v70;
      if (v41 < v48 || v70 >= v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        v41 = v54;
        v37 = v43;
        v42 = v43;
        v40 = v63;
        a2 = v64;
        v38 = v62;
      }

      else
      {
        v42 = v43;
        v15 = v48 == v41;
        v41 = v70;
        v37 = v43;
        v40 = v63;
        a2 = v64;
        v38 = v62;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v41 = v54;
          v37 = v43;
          v42 = v43;
        }
      }
    }

    v79 = a2;
    v77 = v60;
  }

  else
  {
    v20 = v72;
    sub_23DF317F4(a1, (a2 - a1) / v14, v72);
    v65 = v20 + v18 * v14;
    v77 = v65;
    v21 = a1;
    v70 = a3;
    while (v72 < v65 && a2 < a3)
    {
      v23 = v14;
      v24 = v68;
      v25 = *v67;
      v26 = v71;
      (*v67)(v68, a2, v71);
      v27 = a2;
      v28 = v69;
      v25(v69, v72, v26);
      v75 = sub_23E1FBCDC();
      v76 = v29;
      v73 = sub_23E1FBCDC();
      v74 = v30;
      sub_23DE655BC();
      v31 = sub_23E1FE47C();

      v32 = *v66;
      (*v66)(v28, v26);
      v32(v24, v26);
      if (v31 == -1)
      {
        v14 = v23;
        a2 = v27 + v23;
        if (v21 < v27 || v21 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v70;
        }

        else
        {
          a3 = v70;
          if (v21 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v27;
        v14 = v23;
        v33 = v72 + v23;
        if (v21 < v72 || v21 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v70;
        }

        else
        {
          a3 = v70;
          if (v21 != v72)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v78 = v33;
        v72 = v33;
      }

      v21 += v14;
      v79 = v21;
    }
  }

LABEL_58:
  sub_23DF20B14(&v79, &v78, &v77);
  return 1;
}

unint64_t sub_23DE655BC()
{
  result = qword_27E32C5E8;
  if (!qword_27E32C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C5E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_once();
}

unint64_t sub_23DE65634()
{
  result = qword_280DAF130;
  if (!qword_280DAF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF130);
  }

  return result;
}

unint64_t sub_23DE6568C()
{
  result = qword_280DAF140;
  if (!qword_280DAF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF140);
  }

  return result;
}

uint64_t sub_23DE65718()
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
  v13 = sub_23E1FDBCC();
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v3 + 104))(v8, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_8_1();
  return sub_23E1FBF1C();
}

uint64_t sub_23DE65894@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v2 = OUTLINED_FUNCTION_25(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v41 - v5;
  v6 = sub_23E1FBEEC();
  v7 = OUTLINED_FUNCTION_6_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = sub_23E1FC1DC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v19 = sub_23E1FDBCC();
  v20 = OUTLINED_FUNCTION_25(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v23 = sub_23E1FBF0C();
  v48 = *(v23 - 8);
  v24 = v48;
  v25 = *(v48 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  v45 = v27 - v26;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v42 = *MEMORY[0x277CC9110];
  v28 = *(v9 + 104);
  v28(v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C600, &qword_23E224590);
  v29 = *(v24 + 72);
  v30 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v43 = 8 * v29;
  v31 = swift_allocObject();
  v44 = v31;
  *(v31 + 16) = xmmword_23E224420;
  v32 = v31 + v30;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v33 = v42;
  v41 = v6;
  (v28)(v14, v42, v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_3();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v28)(v14, v33, v6);
  v48 = v32;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_3();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v28)(v14, v33, v41);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v34 = OUTLINED_FUNCTION_7_1();
  v28(v34);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v35 = OUTLINED_FUNCTION_7_1();
  v28(v35);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v36 = OUTLINED_FUNCTION_7_1();
  v28(v36);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v37 = OUTLINED_FUNCTION_7_1();
  v28(v37);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v38 = OUTLINED_FUNCTION_7_1();
  v28(v38);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3();
  sub_23E1FB69C();
  v39 = sub_23E1FB67C();
  return OUTLINED_FUNCTION_9_0(v39);
}

uint64_t sub_23DE65E1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C608, &qword_23E224598);
  v1 = OUTLINED_FUNCTION_25(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_23DE6647C();
  sub_23E1FB82C();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_8_1();
  return sub_23E1FB7DC();
}

uint64_t sub_23DE65EE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  v1 = OUTLINED_FUNCTION_25(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = sub_23E1FC7FC();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v13 = *MEMORY[0x277D7A2B8];
  *v12 = sub_23E1FDC1C();
  v12[1] = v14;
  (*(v7 + 104))(v12, *MEMORY[0x277D7BF38], v4);
  sub_23E1FC82C();
  v15 = sub_23E1FC81C();
  OUTLINED_FUNCTION_9_0(v15);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v16 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DE66094(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 24) = a1;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23DE66124, 0, 0);
}

uint64_t sub_23DE66124()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(WFCellularPlansManager) init];
  v0[2] = 0;
  v2 = [v1 resetCellularDataStatisticsWithError_];

  v3 = v0[2];
  if (v2)
  {
    v4 = v0[3];
    v5 = v3;
    sub_23E1FB54C();
  }

  else
  {
    v8 = v3;
    sub_23E1FBECC();

    swift_willThrow();
  }

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_23DE66258(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE662F0;

  return sub_23DE66094(a1);
}

uint64_t sub_23DE662F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23DE663E8(uint64_t a1)
{
  v2 = sub_23DE6647C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23DE66434(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23DE6647C()
{
  result = qword_280DAF138;
  if (!qword_280DAF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF138);
  }

  return result;
}

unint64_t sub_23DE664D0()
{
  result = qword_280DAEDE0;
  if (!qword_280DAEDE0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEDE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_23E1FBF1C();
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t GetWeatherForecastAction.provider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___WFGetWeatherForecastAction____lazy_storage___provider;
  swift_beginAccess();
  sub_23DE6B980(v1 + v3, &v7, &unk_27E32C618, &qword_23E2245A0);
  if (v8)
  {
    return sub_23DE36C8C(&v7, a1);
  }

  sub_23DE58BD0(&v7, &unk_27E32C618, &qword_23E2245A0);
  v5 = type metadata accessor for WFWeatherForecastService();
  v6 = swift_allocObject();
  sub_23E1FC52C();
  *(v6 + 16) = sub_23E1FC4FC();
  a1[3] = v5;
  a1[4] = &off_285026930;
  *a1 = v6;
  sub_23DE5DA0C(a1, &v7);
  swift_beginAccess();
  sub_23DE6670C(&v7, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_23DE6670C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C618, &qword_23E2245A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE6677C(uint64_t a1, uint64_t *a2)
{
  sub_23DE5DA0C(a1, v5);
  v3 = *a2;
  return GetWeatherForecastAction.provider.setter(v5);
}

uint64_t GetWeatherForecastAction.provider.setter(__int128 *a1)
{
  sub_23DE36C8C(a1, v4);
  v2 = OBJC_IVAR___WFGetWeatherForecastAction____lazy_storage___provider;
  swift_beginAccess();
  sub_23DE6670C(v4, v1 + v2);
  return swift_endAccess();
}

void (*GetWeatherForecastAction.provider.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  GetWeatherForecastAction.provider.getter(v3);
  return sub_23DE66878;
}

void sub_23DE66878(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_23DE5DA0C(*a1, v2 + 40);
    GetWeatherForecastAction.provider.setter((v2 + 40));
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    GetWeatherForecastAction.provider.setter(*a1);
  }

  free(v2);
}

uint64_t GetWeatherForecastAction.run(withInput:location:locationDisclosureLevel:)()
{
  OUTLINED_FUNCTION_23();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  sub_23E1FDECC();
  v1[21] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();
  v1[22] = v5;
  v1[23] = v4;

  return MEMORY[0x2822009F8](sub_23DE66978, v5, v4);
}

uint64_t sub_23DE66978()
{
  v1 = v0[20];
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v2 = sub_23E1FE3FC();
  if (v2)
  {
    v3 = v2;
    sub_23E1FDC0C();
  }

  v4 = v0[20];
  GetWeatherForecastAction.provider.getter(v0 + 2);
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v6 = *(OUTLINED_FUNCTION_14_1() + 16);
  OUTLINED_FUNCTION_15_2();
  v14 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_5_3(v10);

  return v12(v11);
}

uint64_t sub_23DE66C24()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v0;
  OUTLINED_FUNCTION_24();
  v7 = *(v6 + 192);
  *v8 = *v1;
  *(v9 + 200) = v0;

  OUTLINED_FUNCTION_24();
  v11 = *(v10 + 184);
  v12 = *(v2 + 176);
  if (v0)
  {
    v13 = sub_23DE6744C;
  }

  else
  {
    v13 = sub_23DE66D58;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

id sub_23DE66D58()
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  v35 = v1;
  v3 = v1[13];
  v32 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  sub_23DE4D8B0(v3);
  OUTLINED_FUNCTION_9_1();
  v4 = *MEMORY[0x277D7A328];
  while (v36 != v2)
  {
    if (v34)
    {
      v5 = MEMORY[0x23EF04DD0](v2, v3);
    }

    else
    {
      if (v2 >= *(v33 + 16))
      {
        goto LABEL_19;
      }

      v5 = *(v3 + 8 * v2 + 32);
    }

    v0 = v5;
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = v35[19];
    sub_23DE38DA8(0, &qword_27E32C628, off_278C01908);
    sub_23DE38DA8(0, &unk_27E32C630, off_278C01900);
    sub_23DE38DA8(0, &unk_27E32C4A0, 0x277CFC238);
    sub_23E1FDC1C();
    v0 = v0;
    v8 = sub_23DE5E134();
    v16 = OUTLINED_FUNCTION_21_1(v8, v9, v10, v11, v12, v13, v14, v15);

    ++v2;
    if (v16)
    {
      v17 = MEMORY[0x23EF045A0]();
      OUTLINED_FUNCTION_18_2(v17, v18, v19, v20, v21, v22, v23, v24, v31, v32, v33, v34, v35, v36, v37);
      if (v25)
      {
        OUTLINED_FUNCTION_10_2();
      }

      sub_23E1FDE3C();
      v32 = v37;
      v2 = v6;
    }
  }

  v26 = v35[20];

  result = [v26 output];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v0 = result;
  v28 = v35[21];

  if (!(v32 >> 62))
  {
    sub_23E1FB7BC();
    sub_23E1FE76C();
    v29 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    goto LABEL_15;
  }

LABEL_20:
  v29 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  sub_23E1FB7BC();
  OUTLINED_FUNCTION_36_0();
  sub_23E1FE69C();

LABEL_15:

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_36_0();
  sub_23E1FDDCC();
  OUTLINED_FUNCTION_14_1();

  [v0 addItems_];

  OUTLINED_FUNCTION_19();

  return v30();
}

uint64_t sub_23DE67038()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v3[15] = v1;
  v3[16] = v5;
  v3[17] = v0;
  OUTLINED_FUNCTION_24();
  v7 = *(v6 + 208);
  *v8 = *v1;
  *(v9 + 216) = v0;

  OUTLINED_FUNCTION_24();
  v11 = *(v10 + 184);
  v12 = *(v2 + 176);
  if (v0)
  {
    v13 = sub_23DE674B0;
  }

  else
  {
    v13 = sub_23DE6716C;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

id sub_23DE6716C()
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  v35 = v1;
  v3 = v1[16];
  v32 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  sub_23DE4D8B0(v3);
  OUTLINED_FUNCTION_9_1();
  v4 = *MEMORY[0x277D7A328];
  while (v36 != v2)
  {
    if (v34)
    {
      v5 = MEMORY[0x23EF04DD0](v2, v3);
    }

    else
    {
      if (v2 >= *(v33 + 16))
      {
        goto LABEL_19;
      }

      v5 = *(v3 + 8 * v2 + 32);
    }

    v0 = v5;
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = v35[19];
    sub_23DE38DA8(0, &qword_27E32C628, off_278C01908);
    sub_23DE38DA8(0, &unk_27E32C630, off_278C01900);
    sub_23DE38DA8(0, &unk_27E32C4A0, 0x277CFC238);
    sub_23E1FDC1C();
    v0 = v0;
    v8 = sub_23DE5E134();
    v16 = OUTLINED_FUNCTION_21_1(v8, v9, v10, v11, v12, v13, v14, v15);

    ++v2;
    if (v16)
    {
      v17 = MEMORY[0x23EF045A0]();
      OUTLINED_FUNCTION_18_2(v17, v18, v19, v20, v21, v22, v23, v24, v31, v32, v33, v34, v35, v36, v37);
      if (v25)
      {
        OUTLINED_FUNCTION_10_2();
      }

      sub_23E1FDE3C();
      v32 = v37;
      v2 = v6;
    }
  }

  v26 = v35[20];

  result = [v26 output];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v0 = result;
  v28 = v35[21];

  if (!(v32 >> 62))
  {
    sub_23E1FB7BC();
    sub_23E1FE76C();
    v29 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    goto LABEL_15;
  }

LABEL_20:
  v29 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  sub_23E1FB7BC();
  OUTLINED_FUNCTION_36_0();
  sub_23E1FE69C();

LABEL_15:

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_36_0();
  sub_23E1FDDCC();
  OUTLINED_FUNCTION_14_1();

  [v0 addItems_];

  OUTLINED_FUNCTION_19();

  return v30();
}

uint64_t sub_23DE6744C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[21];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v0[25];
  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DE674B0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[21];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[27];
  OUTLINED_FUNCTION_19();

  return v3();
}

id GetWeatherForecastAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id GetWeatherForecastAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_2_4(OBJC_IVAR___WFGetWeatherForecastAction____lazy_storage___provider);
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithIdentifier_definition_serializedParameters_, v8, a3, v9);

  if (v10)
  {
  }

  return v10;
}

id GetWeatherForecastAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetWeatherForecastAction.init()()
{
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_2_4(OBJC_IVAR___WFGetWeatherForecastAction____lazy_storage___provider);
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init, v1);
}

id GetWeatherForecastAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DE678B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C668, &unk_23E2246A8) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C648, &qword_23E224678) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4B0, &qword_23E2246D0);
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4B8, &unk_23E224320);
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4C0, &unk_23E2246E0);
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C690, &unk_23E224330);
  v2[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4D0, &unk_23E224680);
  v2[17] = v16;
  v17 = *(v16 - 8);
  v2[18] = v17;
  v18 = *(v17 + 64) + 15;
  v2[19] = swift_task_alloc();
  v19 = sub_23E1FC4AC();
  v2[20] = v19;
  v20 = *(v19 - 8);
  v2[21] = v20;
  v21 = *(v20 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE67BBC, 0, 0);
}

uint64_t sub_23DE67BBC()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[8];
  v7 = *(v0[3] + 16);
  sub_23E1FC4EC();
  sub_23E1FC4CC();
  sub_23E1FC4BC();
  v8 = *(MEMORY[0x277CE3200] + 4);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_23DE67CBC;
  v10 = v0[22];
  v11 = v0[19];
  v12 = v0[20];
  v13 = v0[16];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[2];
  v20 = v0[17];
  v21 = v0[15];

  return MEMORY[0x282135620](v10, v11, v13, v17, v14, v15, v16, v12);
}

uint64_t sub_23DE67CBC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = v4[23];
  v19 = v4[14];
  v6 = v4[13];
  v18 = v4[12];
  v7 = v4[11];
  v8 = v4[10];
  v9 = v4[9];
  v10 = v4[8];
  v11 = v4[7];
  v12 = v4[6];
  v13 = *v1;
  OUTLINED_FUNCTION_2();
  *v14 = v13;
  *(v15 + 192) = v0;

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v19, v18);
  if (v0)
  {
    v16 = sub_23DE680F0;
  }

  else
  {
    v16 = sub_23DE67EE4;
  }

  return MEMORY[0x2822009F8](v16, 0, 0);
}

uint64_t sub_23DE67EE4()
{
  v22 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v16 = v0[16];
  v17 = v3;
  v18 = v0[14];
  v19 = v0[11];
  v20 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v9 = v0[3];
  (*(v6 + 16))(v8);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v5);
  (*(v1 + 16))(v7, v2, v4);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v4);
  v11 = sub_23DE69BBC(v8, v7, v10);
  sub_23DE58BD0(v7, &qword_27E32C668, &unk_23E2246A8);
  sub_23DE58BD0(v8, &qword_27E32C648, &qword_23E224678);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v12 = v11;
  }

  v21 = v12;
  sub_23DE6885C(&v21, v16);
  sub_23DE58BD0(v16, &qword_27E32C690, &unk_23E224330);
  (*(v6 + 8))(v17, v5);
  (*(v1 + 8))(v2, v4);
  v13 = v21;

  OUTLINED_FUNCTION_12_1();

  return v14(v13);
}

uint64_t sub_23DE680F0()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  v8 = v0[4];
  v7 = v0[5];

  OUTLINED_FUNCTION_19();
  v10 = v0[24];

  return v9();
}

uint64_t sub_23DE681B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C678, &qword_23E2246B8) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4B0, &qword_23E2246D0);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C688, &qword_23E2246D8);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C690, &unk_23E224330);
  v2[11] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C680, &unk_23E2246C0);
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE683C8, 0, 0);
}

uint64_t sub_23DE683C8()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = *(v0[3] + 16);
  sub_23E1FC4DC();
  sub_23E1FC4BC();
  v6 = *(MEMORY[0x277CE3208] + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_23DE68498;
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[7];
  v14 = v0[2];

  return MEMORY[0x282135628](v8, v9, v14, v11, v13, v10, v12);
}

uint64_t sub_23DE68498()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = v4[16];
  v6 = v4[10];
  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  v10 = v4[6];
  v11 = v4[5];
  v12 = *v1;
  OUTLINED_FUNCTION_2();
  *v13 = v12;
  *(v14 + 136) = v0;

  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v15 = sub_23DE687C8;
  }

  else
  {
    v15 = sub_23DE6865C;
  }

  return MEMORY[0x2822009F8](v15, 0, 0);
}

uint64_t sub_23DE6865C()
{
  v15 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[2];
  (*(v2 + 16))(v7, v1, v4);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v4);
  v9 = sub_23DE68940(v7, v8);
  sub_23DE58BD0(v7, &qword_27E32C678, &qword_23E2246B8);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v10 = v9;
  }

  v14 = v10;
  sub_23DE6885C(&v14, v3);
  sub_23DE58BD0(v3, &qword_27E32C690, &unk_23E224330);
  (*(v2 + 8))(v1, v4);
  v11 = v14;

  OUTLINED_FUNCTION_12_1();

  return v12(v11);
}

uint64_t sub_23DE687C8()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[4];

  OUTLINED_FUNCTION_19();
  v7 = v0[17];

  return v6();
}

void sub_23DE6885C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a1 >> 62;
  if (!v5)
  {
    if (!*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_3;
  }

  if (v4 < 0)
  {
    v11 = *a1;
  }

  else
  {
    v11 = *a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_23E1FE6AC())
  {
LABEL_3:
    sub_23DE59014(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x23EF04DD0](0, v4);
    }

    else
    {
      v6 = *(v4 + 32);
    }

    v7 = v6;
    v8 = sub_23DEBBBE0(a2);

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v5 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v4 = sub_23DF31CF4(v4);
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x20);
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x20) = v8;

      *a1 = v4;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23DE68940(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = sub_23E1FC3DC();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C678, &qword_23E2246B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  sub_23DE6B980(a1, v18 - v9, &qword_27E32C678, &qword_23E2246B8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C680, &unk_23E2246C0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_23DE58BD0(v10, &qword_27E32C678, &qword_23E2246B8);
    return 0;
  }

  else
  {
    v13 = sub_23E1FC67C();
    (*(*(v11 - 8) + 8))(v10, v11);
    v14 = *(v13 + 16);
    if (v14)
    {
      v23 = MEMORY[0x277D84F90];
      sub_23E1FE63C();
      v15 = 0;
      v19 = v13 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
      v18[1] = v21 + 16;
      v16 = (v21 + 8);
      while (v15 < *(v13 + 16))
      {
        (*(v21 + 16))(v6, v19 + *(v21 + 72) * v15, v3);
        sub_23DE68C28(v6, v20, &v22);
        ++v15;
        (*v16)(v6, v3);
        sub_23E1FE61C();
        v17 = *(v23 + 16);
        sub_23E1FE64C();
        sub_23E1FE65C();
        sub_23E1FE62C();
        if (v14 == v15)
        {

          return v23;
        }
      }

      __break(1u);
      (*v16)(v6, v3);

      __break(1u);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

id sub_23DE68C28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v148 = a3;
  v147 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v146 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v145 = &v115 - v8;
  v9 = sub_23E1FC66C();
  v143 = *(v9 - 8);
  v144 = v9;
  v10 = *(v143 + 64);
  MEMORY[0x28223BE20](v9);
  v142 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E0, &unk_23E224690);
  v141 = *(v140 - 8);
  v12 = *(v141 + 64);
  MEMORY[0x28223BE20](v140);
  v139 = &v115 - v13;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E8, &qword_23E224350);
  v162 = *(v138 - 8);
  v14 = *(v162 + 64);
  v15 = MEMORY[0x28223BE20](v138);
  v137 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v133 = &v115 - v17;
  v135 = sub_23E1FC64C();
  v134 = *(v135 - 8);
  v18 = *(v134 + 64);
  v19 = MEMORY[0x28223BE20](v135);
  v136 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v132 = &v115 - v21;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4F0, &qword_23E224358);
  v127 = *(v126 - 8);
  v22 = *(v127 + 64);
  v23 = MEMORY[0x28223BE20](v126);
  v125 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v124 = &v115 - v25;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C650, &qword_23E224360);
  v161 = *(v154 - 8);
  v26 = *(v161 + 8);
  v27 = MEMORY[0x28223BE20](v154);
  v153 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v151 = &v115 - v29;
  v121 = sub_23E1FC56C();
  v120 = *(v121 - 8);
  v30 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C500, &qword_23E224368);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v115 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C660, &qword_23E2246A0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v129 = &v115 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v157 = &v115 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v155 = &v115 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v152 = &v115 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v156 = &v115 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v158 = &v115 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v159 = &v115 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v160 = &v115 - v57;
  MEMORY[0x28223BE20](v56);
  v59 = &v115 - v58;
  v130 = sub_23E1FC08C();
  v60 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v131 = &v115 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E1FC36C();
  sub_23E1FC32C();
  sub_23E1FBDCC();
  v62 = *(v33 + 8);
  v62(v39, v32);
  v150 = v37;
  sub_23E1FC32C();
  sub_23E1FBDAC();
  v62(v37, v32);
  v63 = sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
  v128 = v59;
  v149 = v63;
  sub_23E1FBDBC();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v64);
  __swift_storeEnumTagSinglePayload(v160, 1, 1, v64);
  __swift_storeEnumTagSinglePayload(v159, 1, 1, v64);
  sub_23E1FC33C();
  sub_23E1FBDCC();
  v117 = v62;
  v118 = v33 + 8;
  v62(v39, v32);
  v65 = v150;
  sub_23E1FC33C();
  sub_23E1FBDAC();
  v62(v65, v32);
  v66 = v158;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v64);
  v67 = v119;
  sub_23E1FC3CC();
  v123 = sub_23E1FC55C();
  v122 = v68;
  (*(v120 + 8))(v67, v121);
  v69 = v151;
  sub_23E1FC31C();
  v70 = v154;
  sub_23E1FBDCC();
  v72 = v161 + 8;
  v71 = *(v161 + 1);
  v71(v69, v70);
  v161 = v72;
  v73 = v153;
  sub_23E1FC31C();
  sub_23E1FBDAC();
  v71(v73, v70);
  v74 = v156;
  sub_23E1FBDBC();
  v75 = v74;
  v76 = v64;
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v64);
  sub_23E1FC39C();
  sub_23E1FBDCC();
  v77 = v117;
  v117(v39, v32);
  v78 = v150;
  sub_23E1FC39C();
  sub_23E1FBDAC();
  v77(v78, v32);
  v79 = v152;
  sub_23E1FBDBC();
  v80 = v76;
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v76);
  sub_23E1FC3AC();
  v150 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v82 = v124;
  sub_23E1FC3BC();
  v83 = v126;
  sub_23E1FBDCC();
  v84 = *(v127 + 8);
  v84(v82, v83);
  v85 = v125;
  sub_23E1FC3BC();
  sub_23E1FBDAC();
  v84(v85, v83);
  v86 = v155;
  sub_23E1FBDBC();
  v87 = v80;
  v116 = v80;
  __swift_storeEnumTagSinglePayload(v86, 0, 1, v80);
  v88 = v151;
  sub_23E1FC34C();
  v89 = v154;
  sub_23E1FBDCC();
  v71(v88, v89);
  v90 = v153;
  sub_23E1FC34C();
  sub_23E1FBDAC();
  v71(v90, v89);
  v91 = v157;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v91, 0, 1, v87);
  sub_23E1FC35C();
  v161 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v93 = v132;
  v115 = a1;
  sub_23E1FC37C();
  v94 = v133;
  sub_23E1FC62C();
  v95 = *(v134 + 8);
  v96 = v135;
  v95(v93, v135);
  v97 = v138;
  sub_23E1FBDCC();
  v98 = *(v162 + 8);
  v162 += 8;
  v98(v94, v97);
  v99 = v136;
  sub_23E1FC37C();
  v100 = v137;
  sub_23E1FC62C();
  v95(v99, v96);
  sub_23E1FBDAC();
  v98(v100, v97);
  v101 = v129;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v101, 0, 1, v116);
  sub_23E1FC37C();
  v102 = v139;
  sub_23E1FC63C();
  v95(v93, v96);
  v103 = v140;
  sub_23E1FBDCC();
  v105 = v104;
  (*(v141 + 8))(v102, v103);
  v106 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v107 = v142;
  sub_23E1FC38C();
  v108 = sub_23E1FC65C();
  (*(v143 + 8))(v107, v144);
  v109 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v110 = v145;
  v111 = v130;
  __swift_storeEnumTagSinglePayload(v145, 1, 1, v130);
  v112 = v146;
  __swift_storeEnumTagSinglePayload(v146, 1, 1, v111);
  objc_allocWithZone(WFWeatherData);
  v113 = v147;
  result = sub_23DE6B050(v131, v113, 0, 0, v128, v160, v159, v158, v123, v122, v156, v152, v150, v155, v157, v161, v101, v106, v109, v110, v112, 0, 0, 0, 0);
  *v148 = result;
  return result;
}

uint64_t sub_23DE69BBC(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v30 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C640, &qword_23E224670);
  v4 = *(*(v28 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v28);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C648, &qword_23E224678);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - v12;
  sub_23DE6B980(a1, v25 - v12, &qword_27E32C648, &qword_23E224678);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4D0, &unk_23E224680);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_23DE58BD0(v13, &qword_27E32C648, &qword_23E224678);
    return 0;
  }

  else
  {
    v16 = sub_23E1FC67C();
    (*(*(v14 - 8) + 8))(v13, v14);
    v17 = *(v16 + 16);
    if (v17)
    {
      v31 = MEMORY[0x277D84F90];
      sub_23E1FE63C();
      v27 = *(v16 + 16);
      result = sub_23E1FC30C();
      v18 = result;
      v19 = 0;
      v20 = *(result - 8);
      v26 = v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v25[0] = v20 + 32;
      v25[1] = v20 + 16;
      while (v27 != v19)
      {
        if (v19 >= *(v16 + 16))
        {
          goto LABEL_12;
        }

        v21 = v28;
        v22 = *(v28 + 48);
        (*(v20 + 16))(&v9[v22], v26 + *(v20 + 72) * v19, v18);
        *v7 = v19;
        v23 = *(v21 + 48);
        (*(v20 + 32))(v7 + v23, &v9[v22], v18);
        sub_23DE69EEC(v19, v7 + v23, v29, v30);
        sub_23DE58BD0(v7, &qword_27E32C640, &qword_23E224670);
        sub_23E1FE61C();
        v24 = *(v31 + 16);
        sub_23E1FE64C();
        sub_23E1FE65C();
        result = sub_23E1FE62C();
        if (v17 == ++v19)
        {

          return v31;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

id sub_23DE69EEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v147 = a4;
  v122 = a3;
  v156 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v146 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v145 = &v114 - v8;
  v9 = sub_23E1FC6AC();
  v143 = *(v9 - 8);
  v144 = v9;
  v10 = *(v143 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v142 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v141 = &v114 - v13;
  v14 = sub_23E1FC66C();
  v139 = *(v14 - 8);
  v140 = v14;
  v15 = *(v139 + 64);
  MEMORY[0x28223BE20](v14);
  v138 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E0, &unk_23E224690);
  v136 = *(v137 - 8);
  v17 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v135 = &v114 - v18;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E8, &qword_23E224350);
  v133 = *(v134 - 8);
  v19 = *(v133 + 64);
  v20 = MEMORY[0x28223BE20](v134);
  v131 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v114 - v22;
  v155 = sub_23E1FC64C();
  v132 = *(v155 - 8);
  v23 = *(v132 + 64);
  v24 = MEMORY[0x28223BE20](v155);
  v128 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v127 = &v114 - v26;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C650, &qword_23E224360);
  v125 = *(v126 - 1);
  v27 = *(v125 + 64);
  v28 = MEMORY[0x28223BE20](v126);
  v124 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v123 = &v114 - v30;
  v121 = sub_23E1FC56C();
  v120 = *(v121 - 8);
  v31 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C500, &qword_23E224368);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v114 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C660, &qword_23E2246A0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v130 = &v114 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v154 = &v114 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v153 = &v114 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v152 = &v114 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v150 = &v114 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v151 = &v114 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v149 = &v114 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v59 = &v114 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v114 - v60;
  v62 = sub_23E1FC08C();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8);
  v65 = &v114 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C668, &unk_23E2246A8);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66 - 8);
  v69 = &v114 - v68;
  v70 = 0;
  v148 = v65;
  if (!v156)
  {
    sub_23DE6B980(v122, v69, &qword_27E32C668, &unk_23E2246A8);
    v71 = sub_23E1FC4AC();
    if (__swift_getEnumTagSinglePayload(v69, 1, v71) == 1)
    {
      sub_23DE58BD0(v69, &qword_27E32C668, &unk_23E2246A8);
      v70 = 0;
    }

    else
    {
      sub_23E1FC47C();
      v73 = v72;
      (*(*(v71 - 8) + 8))(v69, v71);
      v70 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }
  }

  v122 = v70;
  sub_23E1FC2CC();
  sub_23E1FC29C();
  sub_23E1FBDCC();
  v74 = *(v34 + 8);
  v74(v40, v33);
  sub_23E1FC29C();
  sub_23E1FBDAC();
  v74(v38, v33);
  v156 = sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
  v118 = v61;
  sub_23E1FBDBC();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v75);
  sub_23E1FC29C();
  sub_23E1FBDCC();
  v74(v40, v33);
  sub_23E1FC29C();
  sub_23E1FBDAC();
  v74(v38, v33);
  v117 = v59;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v75);
  sub_23E1FC27C();
  sub_23E1FBDCC();
  v74(v40, v33);
  sub_23E1FC27C();
  sub_23E1FBDAC();
  v74(v38, v33);
  v76 = v149;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v75);
  __swift_storeEnumTagSinglePayload(v151, 1, 1, v75);
  v77 = v119;
  sub_23E1FC2FC();
  v116 = sub_23E1FC55C();
  v115 = v78;
  (*(v120 + 8))(v77, v121);
  __swift_storeEnumTagSinglePayload(v150, 1, 1, v75);
  __swift_storeEnumTagSinglePayload(v152, 1, 1, v75);
  v114 = v75;
  v79 = __swift_storeEnumTagSinglePayload(v153, 1, 1, v75);
  v80 = v123;
  MEMORY[0x23EF02A70](v79);
  v81 = v126;
  sub_23E1FBDCC();
  v82 = *(v125 + 8);
  v83 = v82(v80, v81);
  v84 = v124;
  MEMORY[0x23EF02A70](v83);
  sub_23E1FBDAC();
  v82(v84, v81);
  v85 = v154;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v85, 0, 1, v75);
  sub_23E1FC2AC();
  v126 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v87 = v127;
  sub_23E1FC2DC();
  v88 = v129;
  sub_23E1FC62C();
  v89 = *(v132 + 8);
  v89(v87, v155);
  v90 = v134;
  sub_23E1FBDCC();
  v91 = *(v133 + 8);
  v91(v88, v90);
  v92 = v128;
  sub_23E1FC2DC();
  v93 = v131;
  sub_23E1FC62C();
  v94 = v92;
  v95 = v155;
  v89(v94, v155);
  sub_23E1FBDAC();
  v91(v93, v90);
  v96 = v130;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v96, 0, 1, v114);
  sub_23E1FC2DC();
  v97 = v135;
  sub_23E1FC63C();
  v89(v87, v95);
  v98 = v137;
  sub_23E1FBDCC();
  v100 = v99;
  (*(v136 + 8))(v97, v98);
  v101 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v102 = v138;
  sub_23E1FC2EC();
  v103 = sub_23E1FC65C();
  (*(v139 + 8))(v102, v140);
  v104 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v105 = v141;
  sub_23E1FC2BC();
  v106 = v145;
  sub_23E1FC69C();
  v107 = v144;
  v108 = *(v143 + 8);
  v108(v105, v144);
  v109 = v142;
  sub_23E1FC2BC();
  v110 = v146;
  sub_23E1FC68C();
  v108(v109, v107);
  v111 = objc_allocWithZone(WFWeatherData);
  v112 = v147;
  return sub_23DE6B050(v148, v112, 0, 0, v118, v117, v149, v151, v116, v115, v150, v152, v122, v153, v154, v126, v96, v101, v104, v106, v110, 0, 0, 0, 0);
}

uint64_t sub_23DE6AE34(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DE6AECC;

  return sub_23DE678B0(a1);
}

uint64_t sub_23DE6AECC()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_12_1();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_23DE6AFB8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DE6B9E8;

  return sub_23DE681B8(a1);
}

id sub_23DE6B050(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v56 = sub_23E1FC02C();
  if (a4)
  {
    v55 = sub_23E1FDBDC();
  }

  else
  {
    v55 = 0;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  OUTLINED_FUNCTION_0_6(a5);
  if (v31)
  {
    v51 = 0;
  }

  else
  {
    v51 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v32 + 8))(a5, v30);
  }

  OUTLINED_FUNCTION_0_6(a6);
  if (v31)
  {
    v50 = 0;
  }

  else
  {
    v50 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v33 + 8))(a6, v30);
  }

  OUTLINED_FUNCTION_0_6(a7);
  if (v31)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v34 + 8))(a7, v30);
  }

  OUTLINED_FUNCTION_0_6(a8);
  if (v31)
  {
    v64 = 0;
  }

  else
  {
    v64 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v35 + 8))(a8, v30);
  }

  if (a10)
  {
    v63 = sub_23E1FDBDC();
  }

  else
  {
    v63 = 0;
  }

  OUTLINED_FUNCTION_0_6(a11);
  if (v31)
  {
    v62 = 0;
  }

  else
  {
    v62 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v36 + 8))(a11, v30);
  }

  OUTLINED_FUNCTION_0_6(a12);
  if (v31)
  {
    v60 = 0;
  }

  else
  {
    v60 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v37 + 8))(a12, v30);
  }

  OUTLINED_FUNCTION_0_6(a14);
  if (v31)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v38 + 8))(a14, v30);
  }

  OUTLINED_FUNCTION_0_6(a15);
  if (v31)
  {
    v61 = 0;
  }

  else
  {
    v61 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v39 + 8))(a15, v30);
  }

  OUTLINED_FUNCTION_0_6(a17);
  if (v31)
  {
    v59 = 0;
  }

  else
  {
    v59 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v40 + 8))(a17, v30);
  }

  v41 = sub_23E1FC08C();
  v65 = 0;
  if (__swift_getEnumTagSinglePayload(a20, 1, v41) != 1)
  {
    v65 = sub_23E1FC02C();
    OUTLINED_FUNCTION_21(v41);
    (*(v42 + 8))(a20, v41);
  }

  if (__swift_getEnumTagSinglePayload(a21, 1, v41) == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_23E1FC02C();
    OUTLINED_FUNCTION_21(v41);
    (*(v44 + 8))(a21, v41);
  }

  if (a24)
  {
    v45 = sub_23E1FDBDC();
  }

  else
  {
    v45 = 0;
  }

  if (a25)
  {
    sub_23DE38DA8(0, &qword_27E32C670, off_278C018F0);
    v46 = sub_23E1FDDCC();
  }

  else
  {
    v46 = 0;
  }

  v53 = [v52 initWithDate:v56 location:a2 userTemperatureUnitString:v55 temperature:v51 highTemperature:v50 lowTemperature:v49 feelsLikeTemperature:v64 localizedConditionString:v63 visibility:v62 dewpoint:v60 humidity:a13 pressure:v58 precipitationAmount:v61 precipitationChance:a16 windSpeed:v59 windDirection:a18 uvIndex:a19 sunriseTime:v65 sunsetTime:v43 localizedAirQualityIndex:a22 localizedAirQualityCategory:v45 pollutants:v46];

  OUTLINED_FUNCTION_21(v41);
  (*(v47 + 8))(a1);
  return v53;
}

uint64_t dispatch thunk of WFWeatherForecastProvider.fetchDailyForecast(location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(OUTLINED_FUNCTION_17_2(a1, a2, a3) + 8);
  OUTLINED_FUNCTION_15_2();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v9 = OUTLINED_FUNCTION_6_4(v8);

  return v10(v9);
}

uint64_t sub_23DE6B794()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  OUTLINED_FUNCTION_28();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  OUTLINED_FUNCTION_12_1();

  return v7(v2);
}

uint64_t dispatch thunk of WFWeatherForecastProvider.fetchHourlyForecast(location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(OUTLINED_FUNCTION_17_2(a1, a2, a3) + 16);
  OUTLINED_FUNCTION_15_2();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v9 = OUTLINED_FUNCTION_6_4(v8);

  return v10(v9);
}

uint64_t sub_23DE6B980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_21(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return sub_23E1FDE0C();
}

id OUTLINED_FUNCTION_21_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_23DE5E198(va, a1, v8);
}

id sub_23DE6BB34()
{
  v0 = sub_23E1FCC8C();
  v158 = *(v0 - 8);
  v159 = v0;
  v1 = *(v158 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v157 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v156 = &v148 - v5;
  MEMORY[0x28223BE20](v4);
  v155 = &v148 - v6;
  v7 = sub_23E1FBFBC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23E1FC1DC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v16 = *MEMORY[0x277D7CB18];
  v17 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x800000023E24EF80;
  v18 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  v19 = v16;
  v20 = v18;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v166 = qword_280DAE278;
  v21 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v22 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v23 = v14;
  sub_23DE477A0();
  v25 = v24;
  v26 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v165 = v26;
  *(inited + 80) = v25;
  v27 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v26;
  *(inited + 112) = v27;
  v164 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_23E222340;
  v29 = v10;
  v30 = *MEMORY[0x277D7CC30];
  *(v28 + 32) = *MEMORY[0x277D7CC30];
  v31 = v27;
  v32 = v30;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v161 = v23;
  sub_23E1FC14C();
  v33 = [v166 bundleURL];
  v167 = v29;
  sub_23E1FBF9C();

  v34 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v28 + 64) = v165;
  *(v28 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v36 = sub_23E1FDABC();
  v37 = v164;
  *(inited + 120) = sub_23DF3BE54(v36);
  v38 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v37;
  *(inited + 152) = v38;
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  v39 = *MEMORY[0x277D7CB60];
  v40 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v39;
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x800000023E24F030;
  v41 = *MEMORY[0x277D7CCC0];
  *(inited + 224) = v40;
  *(inited + 232) = v41;
  v42 = v40;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v43 = swift_initStackObject();
  v154 = xmmword_23E222350;
  *(v43 + 16) = xmmword_23E222350;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  v44 = MEMORY[0x277D839B0];
  *(v43 + 48) = 1;
  *(v43 + 72) = v44;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  *(v43 + 96) = 0x6567616D494657;
  *(v43 + 104) = 0xE700000000000000;
  *(v43 + 120) = v42;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v44;
  *(v43 + 176) = 0x7365707954;
  v45 = v44;
  *(v43 + 184) = 0xE500000000000000;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v43 + 216) = v164;
  *(v43 + 192) = &unk_285023538;
  v46 = v38;
  v47 = v39;
  v48 = v41;
  v49 = sub_23E1FDABC();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v163 = v50;
  *(inited + 240) = v49;
  v51 = *MEMORY[0x277D7CCC8];
  *(inited + 264) = v50;
  *(inited + 272) = v51;
  *(inited + 280) = 0;
  v52 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v45;
  *(inited + 312) = v52;
  v53 = v51;
  v54 = v52;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v55 = v166;
  v56 = [v166 bundleURL];
  sub_23E1FBF9C();

  v57 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 320) = v58;
  v59 = *MEMORY[0x277D7CDD0];
  *(inited + 344) = v165;
  *(inited + 352) = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = v154;
  *(v60 + 32) = 0x75736F6C63736944;
  *(v60 + 40) = 0xEF6C6576654C6572;
  *(v60 + 48) = 0x63696C627550;
  *(v60 + 56) = 0xE600000000000000;
  *(v60 + 72) = MEMORY[0x277D837D0];
  *(v60 + 80) = 0x656C7069746C754DLL;
  *(v60 + 88) = 0xE800000000000000;
  *(v60 + 96) = 1;
  *(v60 + 120) = MEMORY[0x277D839B0];
  *(v60 + 128) = 0x614E74757074754FLL;
  *(v60 + 136) = 0xEA0000000000656DLL;
  v61 = v59;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v62 = [v55 bundleURL];
  sub_23E1FBF9C();

  v63 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v60 + 144) = v64;
  *(v60 + 168) = v165;
  *(v60 + 176) = 0x7365707954;
  *(v60 + 216) = v164;
  *(v60 + 184) = 0xE500000000000000;
  *(v60 + 192) = &unk_285023578;
  v65 = MEMORY[0x277D837D0];
  *(inited + 360) = sub_23E1FDABC();
  v66 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v163;
  *(inited + 392) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_23E2246F0;
  v162 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  *&v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_23E224700;
  v68 = *MEMORY[0x277D7CDD8];
  *(v67 + 32) = *MEMORY[0x277D7CDD8];
  v69 = MEMORY[0x277D7CDF8];
  *(v67 + 40) = 1;
  v70 = *v69;
  *(v67 + 64) = MEMORY[0x277D839B0];
  *(v67 + 72) = v70;
  v71 = MEMORY[0x277D7CE00];
  *(v67 + 80) = 0xD000000000000016;
  *(v67 + 88) = 0x800000023E24F0F0;
  v72 = *v71;
  *(v67 + 104) = v65;
  *(v67 + 112) = v72;
  v73 = MEMORY[0x277D83B88];
  *(v67 + 120) = 90;
  v74 = *MEMORY[0x277D7CE70];
  *(v67 + 144) = v73;
  *(v67 + 152) = v74;
  *(v67 + 160) = 0xD000000000000013;
  *(v67 + 168) = 0x800000023E24F110;
  v75 = *MEMORY[0x277D7CE80];
  *(v67 + 184) = v65;
  *(v67 + 192) = v75;
  v76 = v70;
  v77 = v74;
  v78 = v75;
  v151 = v76;
  v150 = v77;
  v149 = v78;
  v79 = v66;
  v80 = v68;
  v81 = v72;
  v153 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v82 = v166;
  v83 = [v166 bundleURL];
  sub_23E1FBF9C();

  v84 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v67 + 200) = v85;
  v86 = *MEMORY[0x277D7CEA8];
  v87 = v165;
  *(v67 + 224) = v165;
  *(v67 + 232) = v86;
  v148 = v86;
  v88 = sub_23E1FDCBC();
  v152 = v89;
  v153 = v88;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v90 = [v82 bundleURL];
  sub_23E1FBF9C();

  v91 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v67 + 240) = v92;
  v93 = *MEMORY[0x277D7CF10];
  *(v67 + 264) = v87;
  *(v67 + 272) = v93;
  v94 = MEMORY[0x277D837D0];
  *(v67 + 304) = MEMORY[0x277D837D0];
  *(v67 + 280) = 0x7468676952;
  *(v67 + 288) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v153 = v95;
  v152 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v96 = v93;
  v97 = sub_23E1FDABC();
  v98 = sub_23DF3BE9C(v97);
  *(v163 + 32) = v98;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_23E224710;
  *(v99 + 32) = v151;
  *(v99 + 40) = 0xD000000000000019;
  *(v99 + 48) = 0x800000023E24F180;
  v100 = v149;
  v101 = v150;
  *(v99 + 64) = v94;
  *(v99 + 72) = v101;
  *(v99 + 80) = 0x6567616D494657;
  *(v99 + 88) = 0xE700000000000000;
  *(v99 + 104) = v94;
  *(v99 + 112) = v100;
  *&v154 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v102 = v166;
  v103 = [v166 bundleURL];
  sub_23E1FBF9C();

  v104 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  *&v154 = inited;
  sub_23DE477A0();
  *(v99 + 120) = v105;
  v106 = v165;
  v107 = v148;
  *(v99 + 144) = v165;
  *(v99 + 152) = v107;
  sub_23E1FDCBC();
  v151 = v108;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v109 = [v102 bundleURL];
  sub_23E1FBF9C();

  v110 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v99 + 160) = v111;
  v112 = *MEMORY[0x277D7CEB8];
  *(v99 + 184) = v106;
  *(v99 + 192) = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_23E222380;
  v114 = v112;
  v115 = v155;
  sub_23E1FCC5C();
  v116 = sub_23E1FCBEC();
  v118 = v117;
  v119 = *(v158 + 8);
  v120 = v115;
  v121 = v159;
  v119(v120, v159);
  *(v113 + 32) = v116;
  *(v113 + 40) = v118;
  v122 = v156;
  sub_23E1FCC7C();
  v123 = sub_23E1FCBEC();
  v125 = v124;
  v119(v122, v121);
  *(v113 + 48) = v123;
  *(v113 + 56) = v125;
  v126 = v157;
  sub_23E1FCC6C();
  v127 = sub_23E1FCBEC();
  v129 = v128;
  v119(v126, v121);
  *(v113 + 64) = v127;
  *(v113 + 72) = v129;
  *(v99 + 224) = v164;
  *(v99 + 200) = v113;
  v130 = sub_23E1FDABC();
  v131 = sub_23DF3BE9C(v130);
  v132 = v163;
  *(v163 + 40) = v131;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v134 = v154;
  *(v154 + 400) = v132;
  v135 = *MEMORY[0x277D7CB98];
  *(v134 + 424) = v133;
  *(v134 + 432) = v135;
  v136 = v135;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v137 = [v166 bundleURL];
  sub_23E1FBF9C();

  v138 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v140 = v139;
  v141 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v142 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v143 = MEMORY[0x277D7CB78];
  *(v134 + 440) = v141;
  v144 = *v143;
  *(v134 + 464) = v142;
  *(v134 + 472) = v144;
  *(v134 + 504) = MEMORY[0x277D839B0];
  *(v134 + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v145 = v144;
  v146 = sub_23E1FDABC();
  return sub_23DF3BF9C(v146);
}

id sub_23DE6CCB4()
{
  v65 = sub_23E1FC77C();
  v62 = *(v65 - 8);
  v0 = *(v62 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = (&v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_23E1FBFBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E1FC1DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x800000023E24F270;
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

  v67 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v66 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v60 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v21 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v22 = v19;
  v23 = v21;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v24 = [v67 bundleURL];
  v61 = v5;
  sub_23E1FBF9C();

  v25 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v20 + 64) = v66;
  *(v20 + 40) = v26;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v27 = sub_23E1FDABC();
  v28 = v60;
  *(inited + 120) = sub_23DF3BE54(v27);
  v29 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v28;
  *(inited + 152) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 160) = &unk_2850235B8;
  v31 = *MEMORY[0x277D7CB48];
  *(inited + 184) = v30;
  *(inited + 192) = v31;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v32 = *MEMORY[0x277D7CB60];
  v33 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v32;
  *(inited + 240) = 0x656C737265776F70;
  *(inited + 248) = 0xEA00000000007065;
  v34 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v33;
  *(inited + 272) = v34;
  v35 = v29;
  v36 = v31;
  v37 = v32;
  v38 = v34;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v39 = v67;
  v40 = [v67 bundleURL];
  sub_23E1FBF9C();

  v41 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 280) = v42;
  v43 = *MEMORY[0x277D7CB98];
  *(inited + 304) = v66;
  *(inited + 312) = v43;
  v44 = v43;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v45 = [v39 bundleURL];
  sub_23E1FBF9C();

  v46 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v48 = v47;
  v49 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v50 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 320) = v49;
  v51 = *MEMORY[0x277D7CF20];
  *(inited + 344) = v50;
  *(inited + 352) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_23E2235B0;
  v54 = v64;
  v53 = v65;
  *v64 = 2;
  (*(v62 + 104))(v54, *MEMORY[0x277D7BEE0], v53);
  v55 = objc_allocWithZone(sub_23E1FC79C());
  v56 = v51;
  *(v52 + 32) = sub_23E1FC78C();
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(inited + 360) = v52;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key);
  v57 = sub_23E1FDABC();
  return sub_23DF3BF9C(v57);
}

id sub_23DE6D4A4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setMaxConcurrentOperationCount_];
  result = [v0 setQualityOfService_];
  qword_27E33E130 = v0;
  return result;
}

uint64_t sub_23DE6D508(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23E1FD03C();
  v2[4] = v3;
  OUTLINED_FUNCTION_8(v3);
  v2[5] = v4;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v7 = sub_23E1FC08C();
  v2[8] = v7;
  OUTLINED_FUNCTION_8(v7);
  v2[9] = v8;
  v10 = *(v9 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE6D638, v1, 0);
}

uint64_t sub_23DE6D638()
{
  v52 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_23E1FC06C();
  sub_23E1FC01C();
  v5 = *(v4 + 8);
  *(v0 + 104) = v5;
  *(v0 + 112) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if ([objc_opt_self() isActivityAvailable])
  {
    v6 = *(v0 + 96);
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v50 = [objc_allocWithZone(MEMORY[0x277CC1CD0]) init];
    *(v0 + 120) = v50;
    v11 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    (*(v8 + 16))(v7, v6, v9);
    v12 = sub_23E1FD02C();
    v13 = sub_23E1FE1AC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 80);
    v16 = *(v0 + 56);
    v17 = *(v0 + 64);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);
    if (v14)
    {
      v49 = v13;
      v20 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v51 = v48;
      *v20 = 136315138;
      sub_23DE6E984(&qword_27E32C6A0, 255, MEMORY[0x277CC9578]);
      v46 = v16;
      v47 = v18;
      v21 = sub_23E1FE71C();
      v23 = v22;
      v5(v15, v17);
      v24 = sub_23DE56B40(v21, v23, &v51);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_23DE30000, v12, v49, "Result due at %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23EF074C0](v48, -1, -1);
      MEMORY[0x23EF074C0](v20, -1, -1);

      (*(v19 + 8))(v46, v47);
    }

    else
    {

      v5(v15, v17);
      (*(v19 + 8))(v16, v18);
    }

    v40 = *(v0 + 96);
    v41 = *(v0 + 24);
    v42 = sub_23DE6E984(&qword_27E32C698, v25, type metadata accessor for ActivityMonitor);
    v43 = swift_task_alloc();
    *(v0 + 128) = v43;
    *(v43 + 16) = v50;
    *(v43 + 24) = v40;
    v44 = *(MEMORY[0x277D859E0] + 4);
    v45 = swift_task_alloc();
    *(v0 + 136) = v45;
    *v45 = v0;
    v45[1] = sub_23DE6DAE0;

    return MEMORY[0x2822007B8](v0 + 144, v41, v42, 0xD000000000000011, 0x800000023E24F350, sub_23DE6E97C, v43, &type metadata for PhysicalActivity);
  }

  else
  {
    v26 = *(v0 + 48);
    v27 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v28 = sub_23E1FD02C();
    v29 = sub_23E1FE1AC();
    v30 = os_log_type_enabled(v28, v29);
    v32 = *(v0 + 40);
    v31 = *(v0 + 48);
    v33 = *(v0 + 32);
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_23DE30000, v28, v29, "The Core Motion Activity Manager isn't available, returning .unknown.", v34, 2u);
      MEMORY[0x23EF074C0](v34, -1, -1);
    }

    (*(v32 + 8))(v31, v33);
    v36 = *(v0 + 104);
    v35 = *(v0 + 112);
    OUTLINED_FUNCTION_2_6();
    **(v0 + 16) = 0;
    v37(v28);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_23DE6DAE0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23DE6DC0C, v3, 0);
}

uint64_t sub_23DE6DC0C()
{
  v2 = *(v1 + 144);
  v4 = *(v1 + 104);
  v3 = *(v1 + 112);
  OUTLINED_FUNCTION_2_6();
  **(v1 + 16) = v5;
  v6(v0);

  v7 = *(v1 + 8);

  return v7();
}

void sub_23DE6DCC0(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a2;
  v34 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6A8, &qword_23E224768);
  v4 = *(v37 - 8);
  v35 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v5;
  v6 = sub_23E1FC08C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = v9;
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E1FD03C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v16 = sub_23E1FD02C();
  v17 = sub_23E1FE1AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = a3;
    v19 = v18;
    *v18 = 0;
    _os_log_impl(&dword_23DE30000, v16, v17, "Starting activity updates.", v18, 2u);
    v20 = v19;
    a3 = v31;
    MEMORY[0x23EF074C0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  if (qword_27E32B8F0 != -1)
  {
    swift_once();
  }

  v31 = qword_27E33E130;
  v21 = v33;
  (*(v7 + 16))(v33, a3, v6);
  v22 = v36;
  v23 = v37;
  (*(v4 + 16))(v36, v34, v37);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = (v32 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v4 + 80) + v25 + 8) & ~*(v4 + 80);
  v27 = swift_allocObject();
  (*(v7 + 32))(v27 + v24, v21, v6);
  v28 = v38;
  *(v27 + v25) = v38;
  (*(v4 + 32))(v27 + v26, v22, v23);
  aBlock[4] = sub_23DE6E9CC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DE6E894;
  aBlock[3] = &block_descriptor_2;
  v29 = _Block_copy(aBlock);
  v30 = v28;

  [v30 startActivityUpdatesToQueue:v31 withHandler:v29];
  _Block_release(v29);
}

void sub_23DE6E0D4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v78 = a3;
  v79 = a4;
  v76 = a2;
  v77 = sub_23E1FC08C();
  v75 = *(v77 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E1FD03C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v71 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v81 = &v71 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v73 = &v71 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v71 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v71 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  v27 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v28 = sub_23E1FD02C();
  v29 = sub_23E1FE1AC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v72 = v24;
    v31 = v15;
    v32 = v12;
    v33 = v8;
    v34 = v7;
    v35 = v30;
    *v30 = 0;
    _os_log_impl(&dword_23DE30000, v28, v29, "Received current activity.", v30, 2u);
    v36 = v35;
    v7 = v34;
    v8 = v33;
    v12 = v32;
    v15 = v31;
    v24 = v72;
    MEMORY[0x23EF074C0](v36, -1, -1);
  }

  v39 = *(v8 + 8);
  v37 = (v8 + 8);
  v38 = v39;
  v39(v26, v7);
  if (!a1)
  {
    sub_23E1FCB9C();
    v67 = sub_23E1FD02C();
    v68 = sub_23E1FE1BC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_23DE30000, v67, v68, "The CheckMotionActivity action received a nil-value activity. Waiting to see if we get a valid value.", v69, 2u);
      MEMORY[0x23EF074C0](v69, -1, -1);
    }

    v70 = v24;
    goto LABEL_25;
  }

  v40 = a1;
  if (CMMotionActivity.isEmpty.getter())
  {
    sub_23E1FCB9C();
    v41 = sub_23E1FD02C();
    v42 = sub_23E1FE1AC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_23DE30000, v41, v42, "Received empty activity info.", v43, 2u);
      MEMORY[0x23EF074C0](v43, -1, -1);
    }

    v38(v80, v7);
    v44 = v74;
    sub_23E1FC06C();
    v45 = sub_23E1FC04C();
    (*(v75 + 8))(v44, v77);
    if (v45)
    {
      v46 = v73;
      sub_23E1FCB9C();
      v47 = sub_23E1FD02C();
      v48 = sub_23E1FE1AC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_23DE30000, v47, v48, "Waiting for a better answer.", v49, 2u);
        MEMORY[0x23EF074C0](v49, -1, -1);
      }

      else
      {
      }

      v70 = v46;
LABEL_25:
      v38(v70, v7);
      return;
    }
  }

  [v78 stopActivityUpdates];
  sub_23E1FCB9C();
  v50 = sub_23E1FD02C();
  v51 = sub_23E1FE1AC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_23DE30000, v50, v51, "Stopped activity updates.", v52, 2u);
    MEMORY[0x23EF074C0](v52, -1, -1);
  }

  v38(v81, v7);
  if (qword_27E32B8F0 != -1)
  {
    swift_once();
  }

  [qword_27E33E130 cancelAllOperations];
  sub_23E1FCB9C();
  v53 = sub_23E1FD02C();
  v54 = sub_23E1FE1AC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_23DE30000, v53, v54, "Cancelled activity monitor queue.", v55, 2u);
    MEMORY[0x23EF074C0](v55, -1, -1);
  }

  v38(v15, v7);
  v56.super.super.isa = v40;
  isa = v56.super.super.isa;
  PhysicalActivity.init(motionActivity:)(v56);
  v58 = v85;
  sub_23E1FCB9C();
  v59 = sub_23E1FD02C();
  v60 = sub_23E1FE1AC();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v81 = v7;
    v63 = v62;
    v83 = v62;
    *v61 = 136315138;
    v82 = v58;
    v64 = sub_23E1FDC7C();
    v80 = v37;
    v66 = sub_23DE56B40(v64, v65, &v83);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_23DE30000, v59, v60, "Resolved activity: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x23EF074C0](v63, -1, -1);
    MEMORY[0x23EF074C0](v61, -1, -1);

    v38(v12, v81);
  }

  else
  {

    v38(v12, v7);
  }

  v84 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6A8, &qword_23E224768);
  sub_23E1FDE8C();
}

void sub_23DE6E894(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_23E1FB7CC();
  v5 = a2;
  v4(a2);
}

uint64_t sub_23DE6E900()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23DE6E984(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23DE6E9CC(void *a1)
{
  v3 = sub_23E1FC08C();
  OUTLINED_FUNCTION_8(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6A8, &qword_23E224768) - 8);
  v9 = *(v1 + v7);
  v10 = v1 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_23DE6E0D4(a1, v1 + v5, v9, v10);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

void OUTLINED_FUNCTION_2_6()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
}

id sub_23DE6EB14()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v115 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x800000023E24F3C0;
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

  v127 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  v125 = v3;
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v126 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = v19;
  v21 = sub_23E1FDABC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v21;
  v23 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v22;
  *(inited + 152) = v23;
  v124 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222370;
  v25 = *MEMORY[0x277D7CC20];
  *(v24 + 32) = *MEMORY[0x277D7CC20];
  v26 = v23;
  v27 = v25;
  sub_23E1FDCBC();
  v123 = v28;
  sub_23E1FDCBC();
  v29 = v7;
  sub_23E1FC14C();
  v30 = v127;
  v31 = [v127 bundleURL];
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v24 + 40) = v33;
  v34 = *MEMORY[0x277D7CC30];
  v35 = v126;
  *(v24 + 64) = v126;
  *(v24 + 72) = v34;
  v36 = v34;
  v123 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  v122 = v29;
  sub_23E1FC14C();
  v37 = [v30 bundleURL];
  sub_23E1FBF9C();

  v38 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v24 + 104) = v35;
  *(v24 + 80) = v39;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v40 = sub_23E1FDABC();
  v41 = v124;
  *(inited + 160) = sub_23DF3BE54(v40);
  v42 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v41;
  *(inited + 192) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 200) = &unk_285023628;
  v44 = *MEMORY[0x277D7CB48];
  *(inited + 224) = v43;
  *(inited + 232) = v44;
  *(inited + 240) = 0x65676E61724FLL;
  *(inited + 248) = 0xE600000000000000;
  v45 = *MEMORY[0x277D7CB60];
  v46 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = v45;
  *(inited + 280) = 0x6D726F6665766177;
  *(inited + 288) = 0xE800000000000000;
  v47 = *MEMORY[0x277D7CCC0];
  *(inited + 304) = v46;
  *(inited + 312) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_23E222350;
  *(v48 + 32) = 0x656C7069746C754DLL;
  *(v48 + 40) = 0xE800000000000000;
  v49 = MEMORY[0x277D839B0];
  *(v48 + 48) = 1;
  *(v48 + 72) = v49;
  strcpy((v48 + 80), "ParameterKey");
  *(v48 + 93) = 0;
  *(v48 + 94) = -5120;
  *(v48 + 96) = 0x7475706E494657;
  *(v48 + 104) = 0xE700000000000000;
  *(v48 + 120) = v46;
  *(v48 + 128) = 0x6465726975716552;
  *(v48 + 136) = 0xE800000000000000;
  *(v48 + 144) = 1;
  *(v48 + 168) = v49;
  *(v48 + 176) = 0x7365707954;
  *(v48 + 216) = v43;
  *(v48 + 184) = 0xE500000000000000;
  *(v48 + 192) = &unk_285023658;
  v50 = v42;
  v51 = v44;
  v52 = v45;
  v53 = v47;
  v54 = sub_23E1FDABC();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 320) = v54;
  v56 = *MEMORY[0x277D7CB90];
  *(inited + 344) = v55;
  *(inited + 352) = v56;
  v57 = v56;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v58 = [v127 bundleURL];
  sub_23E1FBF9C();

  v59 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 360) = v60;
  v61 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v126;
  *(inited + 392) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_23E2246F0;
  v123 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_23E222380;
  v63 = *MEMORY[0x277D7CDF8];
  *(v62 + 32) = *MEMORY[0x277D7CDF8];
  *(v62 + 40) = 0xD000000000000019;
  v64 = MEMORY[0x277D7CE70];
  *(v62 + 48) = 0x800000023E24F5C0;
  v65 = *v64;
  *(v62 + 64) = v46;
  *(v62 + 72) = v65;
  *(v62 + 80) = 0x656D6F484657;
  *(v62 + 88) = 0xE600000000000000;
  v66 = *MEMORY[0x277D7CE80];
  *(v62 + 104) = v46;
  *(v62 + 112) = v66;
  v67 = v63;
  v68 = v65;
  v69 = v66;
  v115 = v67;
  v118 = v68;
  v117 = v69;
  v70 = v61;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v71 = [v127 bundleURL];
  sub_23E1FBF9C();

  v72 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v62 + 144) = v126;
  *(v62 + 120) = v73;
  _s3__C3KeyVMa_0(0);
  v120 = v74;
  v119 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v75 = sub_23E1FDABC();
  v76 = sub_23DF3BE9C(v75);
  *(v124 + 32) = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_23E224700;
  *(v77 + 32) = v115;
  *(v77 + 40) = 0xD000000000000014;
  *(v77 + 48) = 0x800000023E24EAF0;
  v78 = *MEMORY[0x277D7CE08];
  *(v77 + 64) = MEMORY[0x277D837D0];
  *(v77 + 72) = v78;
  v79 = v78;
  v116 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v80 = [v127 bundleURL];
  sub_23E1FBF9C();

  v81 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v77 + 80) = v82;
  v83 = v126;
  v84 = v118;
  *(v77 + 104) = v126;
  *(v77 + 112) = v84;
  *(v77 + 120) = 0x7475706E494657;
  *(v77 + 128) = 0xE700000000000000;
  v85 = v117;
  *(v77 + 144) = MEMORY[0x277D837D0];
  *(v77 + 152) = v85;
  v86 = sub_23E1FDCBC();
  v117 = v87;
  v118 = v86;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v88 = v127;
  v89 = [v127 bundleURL];
  sub_23E1FBF9C();

  v90 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v77 + 160) = v91;
  v92 = *MEMORY[0x277D7CDE0];
  *(v77 + 184) = v83;
  *(v77 + 192) = v92;
  *(v77 + 200) = 1;
  v93 = *MEMORY[0x277D7CEA8];
  *(v77 + 224) = MEMORY[0x277D839B0];
  *(v77 + 232) = v93;
  v94 = v92;
  v95 = v93;
  v118 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v96 = [v88 bundleURL];
  sub_23E1FBF9C();

  v97 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v98 = MEMORY[0x277D7CEC0];
  *(v77 + 240) = v99;
  v100 = *v98;
  *(v77 + 264) = v126;
  *(v77 + 272) = v100;
  *(v77 + 304) = MEMORY[0x277D839B0];
  *(v77 + 280) = 1;
  v101 = v100;
  v102 = sub_23E1FDABC();
  v103 = sub_23DF3BE9C(v102);
  v104 = v124;
  *(v124 + 40) = v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v104;
  v106 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v105;
  *(inited + 432) = v106;
  v107 = v106;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v108 = [v127 bundleURL];
  sub_23E1FBF9C();

  v109 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v111 = v110;
  v112 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  *(inited + 464) = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v112;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v113 = sub_23E1FDABC();
  return sub_23DF3BF9C(v113);
}

unint64_t sub_23DE6F9A0()
{
  result = qword_280DAF298;
  if (!qword_280DAF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF298);
  }

  return result;
}

uint64_t sub_23DE6F9F4(char a1)
{
  v3 = sub_23E1FC1DC();
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = sub_23E1FBEEC();
  v8 = OUTLINED_FUNCTION_6_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_3();
  v13 = sub_23E1FDBCC();
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_23E1FDB5C();
  if (qword_280DAE5D0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_280DB7710);
  (*(v10 + 16))(v1, v17, v7);
  sub_23E1FC19C();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

uint64_t sub_23DE6FC14(char a1)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](a1 & 1);
  return sub_23E1FE87C();
}

uint64_t sub_23DE6FC78()
{
  v1 = *v0;
  sub_23E1FE84C();
  MEMORY[0x23EF05040](v1);
  return sub_23E1FE87C();
}

uint64_t sub_23DE6FCC4()
{
  v1 = sub_23E1FBEEC();
  v2 = OUTLINED_FUNCTION_6_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_3();
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v11 = sub_23E1FDBCC();
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v4 + 104))(v0, *MEMORY[0x277CC9110], v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

uint64_t sub_23DE6FE40@<X0>(uint64_t a1@<X8>)
{
  v40[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v2 = OUTLINED_FUNCTION_25(v1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v40[1] = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v40 - v7;
  v9 = sub_23E1FBEEC();
  v10 = OUTLINED_FUNCTION_6_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  v18 = sub_23E1FC1DC();
  v19 = OUTLINED_FUNCTION_25(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  v22 = sub_23E1FDBCC();
  v23 = OUTLINED_FUNCTION_25(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  v26 = sub_23E1FBF0C();
  v27 = OUTLINED_FUNCTION_12(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v30 = *MEMORY[0x277CC9110];
  v31 = *(v12 + 104);
  v31(v17, v30, v9);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v26);
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v31(v17, v30, v9);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v26);
  sub_23E1FB68C();
  sub_23E1FB67C();
  OUTLINED_FUNCTION_64();
  return __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
}

uint64_t sub_23DE70150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C700, &qword_23E224928);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C708, &qword_23E224930);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v7);
  sub_23DE6F9A0();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C710, &unk_23E224960);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FB7DC();
}

uint64_t sub_23DE7030C()
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
  OUTLINED_FUNCTION_10_3();
  sub_23E1FC82C();
  sub_23E1FC81C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  (*(v3 + 104))(v8, *MEMORY[0x277D7BF40], v0);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v17 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DE704A4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6E0, &qword_23E224920);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_23E1FB4DC();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_23E1FBFBC();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE705F4, 0, 0);
}

uint64_t sub_23DE705F4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  sub_23E1FB5DC();
  sub_23E1FB4CC();
  (*(v4 + 8))(v2, v3);
  if (__swift_getEnumTagSinglePayload(v6, 1, v1) == 1)
  {
    sub_23DE711D4(v0[7]);
    sub_23DE7123C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[13];
    v9 = v0[10];
    v10 = v0[7];

    OUTLINED_FUNCTION_19();

    return v11();
  }

  else
  {
    v13 = v0[6];
    (*(v0[12] + 32))(v0[13], v0[7], v0[11]);
    v0[4] = v13;
    sub_23DE71290();
    v14 = sub_23E1FB87C();
    v0[14] = v14;
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_23DE707C0;
    v16 = v0[13];

    return sub_23DEB5660(v16, v14);
  }
}

uint64_t sub_23DE707C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = sub_23DE709E8;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v9 = sub_23DE70904;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_23DE70904()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  v7 = v0[5];
  v0[2] = v0[18];
  v0[3] = v1;
  sub_23DE712E4();
  sub_23E1FB53C();
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_19();

  return v8();
}

uint64_t sub_23DE709E8()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DE70A80()
{
  v0 = sub_23E1FB84C();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v55 = v2;
  v56 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v54 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v10);
  v53 = v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6D0, &unk_23E224900);
  OUTLINED_FUNCTION_25(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v15);
  v52 = v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v20);
  v51[1] = v51 - v21;
  v22 = sub_23E1FBEEC();
  v23 = OUTLINED_FUNCTION_6_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  v30 = v29 - v28;
  v31 = sub_23E1FC1DC();
  v32 = OUTLINED_FUNCTION_25(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15();
  v35 = sub_23E1FDBCC();
  v36 = OUTLINED_FUNCTION_25(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_15();
  v39 = sub_23E1FBF0C();
  v40 = OUTLINED_FUNCTION_12(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15();
  v51[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6D8, &qword_23E224910);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v43 = *MEMORY[0x277CC9110];
  v44 = *(v25 + 104);
  v44(v30, v43, v22);
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v44(v30, v43, v22);
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v39);
  v48 = sub_23E1FB4DC();
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v48);
  v49 = sub_23E1FB51C();
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v49);
  (*(v55 + 104))(v54, *MEMORY[0x277CBA308], v56);
  return sub_23E1FB62C();
}

unint64_t sub_23DE70EC8()
{
  result = qword_280DAF290;
  if (!qword_280DAF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF290);
  }

  return result;
}

unint64_t sub_23DE70F20()
{
  result = qword_280DAF2A0;
  if (!qword_280DAF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2A0);
  }

  return result;
}

uint64_t sub_23DE70FD0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DE71070;

  return sub_23DE704A4(a1, v4);
}

uint64_t sub_23DE71070()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DE71160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE70A80();
  *a1 = result;
  return result;
}

uint64_t sub_23DE71188(uint64_t a1)
{
  v2 = sub_23DE6F9A0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23DE711D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6E0, &qword_23E224920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DE7123C()
{
  result = qword_27E32C6E8;
  if (!qword_27E32C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C6E8);
  }

  return result;
}

unint64_t sub_23DE71290()
{
  result = qword_27E32C6F0;
  if (!qword_27E32C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C6F0);
  }

  return result;
}

unint64_t sub_23DE712E4()
{
  result = qword_27E32C6F8;
  if (!qword_27E32C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C6F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscribeAudioError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TranscribeAudioError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DE714C0()
{
  result = qword_27E32C718;
  if (!qword_27E32C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C718);
  }

  return result;
}

id sub_23DE71560()
{
  v67 = sub_23E1FC77C();
  v64 = *(v67 - 8);
  v0 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = (&v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_23E1FBFBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224700;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x800000023E24F9B0;
  v11 = *MEMORY[0x277D7CB28];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 80) = &unk_2850236C8;
  v13 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  *(inited + 120) = 0x706F7244726941;
  *(inited + 128) = 0xE700000000000000;
  v14 = *MEMORY[0x277D7CB90];
  *(inited + 144) = v10;
  *(inited + 152) = v14;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  v18 = v14;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v19 = v7;
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v68 = qword_280DAE278;
  v20 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v21 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v58 = v19;
  sub_23DE477A0();
  v23 = v22;
  v24 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v59 = v24;
  *(inited + 160) = v23;
  v25 = *MEMORY[0x277D7CBA0];
  *(inited + 184) = v24;
  *(inited + 192) = v25;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v61 = swift_allocObject();
  v62 = xmmword_23E2235B0;
  *(v61 + 16) = xmmword_23E2235B0;
  v60 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v26 = swift_initStackObject();
  v27 = MEMORY[0x277D7CDF8];
  *(v26 + 16) = xmmword_23E222380;
  v28 = *v27;
  *(v26 + 32) = *v27;
  *(v26 + 40) = 0xD00000000000001CLL;
  *(v26 + 48) = 0x800000023E24FA20;
  v29 = *MEMORY[0x277D7CE70];
  *(v26 + 64) = v10;
  *(v26 + 72) = v29;
  strcpy((v26 + 80), "WFAirDropState");
  *(v26 + 95) = -18;
  v30 = *MEMORY[0x277D7CE80];
  *(v26 + 104) = v10;
  *(v26 + 112) = v30;
  v31 = v25;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v35 = [v68 bundleURL];
  sub_23E1FBF9C();

  v36 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v26 + 144) = v59;
  *(v26 + 120) = v37;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0);
  v38 = sub_23E1FDABC();
  v39 = sub_23DF3BE9C(v38);
  v40 = v61;
  *(v61 + 32) = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 200) = v40;
  v42 = *MEMORY[0x277D7CB98];
  *(inited + 224) = v41;
  *(inited + 232) = v42;
  v43 = v42;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v44 = [v68 bundleURL];
  sub_23E1FBF9C();

  v45 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v47 = v46;
  v48 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v49 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 240) = v48;
  v50 = *MEMORY[0x277D7CF20];
  *(inited + 264) = v49;
  *(inited + 272) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = v62;
  v53 = v66;
  v52 = v67;
  *v66 = 3;
  (*(v64 + 104))(v53, *MEMORY[0x277D7BED8], v52);
  v54 = objc_allocWithZone(sub_23E1FC79C());
  v55 = v50;
  *(v51 + 32) = sub_23E1FC78C();
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(inited + 280) = v51;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key);
  v56 = sub_23E1FDABC();
  return sub_23DF3BF9C(v56);
}

uint64_t sub_23DE71CF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DE71D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E1FBBDC();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59();
  v12 = (v10 - v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v30 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = v30 - v18;
  v20 = 0;
  v31 = a1;
  v32 = a2;
  v23 = *(a1 + 56);
  v22 = a1 + 56;
  v21 = v23;
  v24 = 1 << *(v22 - 24);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v30[2] = v7 + 32;
  v30[3] = v7 + 16;
  v30[1] = v7 + 8;
  if ((v25 & v21) != 0)
  {
    do
    {
      v28 = v20;
LABEL_9:
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      (*(v7 + 16))(v19, *(v31 + 48) + *(v7 + 72) * (v29 | (v28 << 6)), v4);
      (*(v7 + 32))(v12, v19, v4);
      sub_23DF0342C(v16, v12);
      result = (*(v7 + 8))(v16, v4);
    }

    while (v26);
  }

  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      return v32;
    }

    v26 = *(v22 + 8 * v28);
    ++v20;
    if (v26)
    {
      v20 = v28;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DE71F48(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    sub_23E1FB7BC();
    sub_23DF036C4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

__n128 WFGenerativePromptProvider.init(model:session:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23DE36C8C(a1, a3);
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v6;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

uint64_t WFGenerativePromptProvider.getUserPrompt(input:)()
{
  OUTLINED_FUNCTION_23();
  v29 = *MEMORY[0x277D85DE8];
  v1[18] = v2;
  v1[19] = v0;
  v3 = *(*(sub_23E1FDC6C() - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v4 = sub_23E1FC0EC();
  v1[21] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[22] = v5;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  v8 = sub_23E1FDA8C();
  v1[24] = v8;
  OUTLINED_FUNCTION_8(v8);
  v1[25] = v9;
  v11 = *(v10 + 64);
  v1[26] = OUTLINED_FUNCTION_91();
  v1[27] = swift_task_alloc();
  v12 = sub_23E1FD03C();
  v1[28] = v12;
  OUTLINED_FUNCTION_8(v12);
  v1[29] = v13;
  v15 = *(v14 + 64);
  v1[30] = OUTLINED_FUNCTION_91();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v16 = sub_23E1FBFBC();
  v1[33] = v16;
  OUTLINED_FUNCTION_8(v16);
  v1[34] = v17;
  v19 = *(v18 + 64);
  v1[35] = OUTLINED_FUNCTION_91();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v20 = sub_23E1FBA9C();
  v1[39] = v20;
  OUTLINED_FUNCTION_8(v20);
  v1[40] = v21;
  v23 = *(v22 + 64);
  v1[41] = OUTLINED_FUNCTION_91();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_23DE722C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_135();
  v134 = *MEMORY[0x277D85DE8];
  v24 = [*(v22 + 144) items];
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_38();
  v25 = sub_23E1FDDEC();
  *(v22 + 352) = v25;

  v26 = sub_23DE4D8B0(v25);
  *(v22 + 360) = v26;
  v27 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D7A440];
  if (v26)
  {
    v29 = 0;
    v30 = 0;
    *(v22 + 608) = *MEMORY[0x277D42DD0];
    *(v22 + 612) = *MEMORY[0x277CFC050];
    *(v22 + 616) = *MEMORY[0x277CFC058];
    *(v22 + 368) = *v28;
    v31 = (v22 + 392);
    v32 = vdupq_n_s64(v27);
    v33 = v27;
    v131 = (v22 + 368);
    v132 = (v22 + 392);
    while (1)
    {
      *(v22 + 408) = v33;
      *v31 = v32;
      *(v22 + 376) = v29;
      *(v22 + 384) = v27;
      OUTLINED_FUNCTION_95();
      if (v36)
      {
        OUTLINED_FUNCTION_34_0(v34, v35);
        if (v39)
        {
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_145(v37, v38);
      }

      else
      {
        MEMORY[0x23EF04DD0](v30);
      }

      OUTLINED_FUNCTION_110();
      *(v22 + 416) = v40;
      *(v22 + 424) = v41;
      if (v42)
      {
        __break(1u);
LABEL_43:
        __break(1u);
      }

      objc_opt_self();
      if (OUTLINED_FUNCTION_120())
      {
        break;
      }

      ObjectType = swift_getObjectType();
      v44 = OUTLINED_FUNCTION_35_1(ObjectType);
      if (v30 != sub_23DE38DA8(v44, &unk_280DAE680, 0x277CFC3F0))
      {
        objc_opt_self();
        if (!OUTLINED_FUNCTION_120())
        {
          v126 = swift_task_alloc();
          v127 = OUTLINED_FUNCTION_100(v126);
          *v127 = v128;
          OUTLINED_FUNCTION_3_3(v127);
          v129 = *MEMORY[0x277D85DE8];
          OUTLINED_FUNCTION_48_1();
          OUTLINED_FUNCTION_43_0();

          return WFContentItem.isImage()();
        }
      }

      if ((OUTLINED_FUNCTION_19_0() & 1) == 0)
      {
        goto LABEL_33;
      }

      v45 = [v33 preferredFileType];
      if (!v45)
      {
        goto LABEL_33;
      }

      v30 = v45;
      if (!OUTLINED_FUNCTION_144(v45, sel_fileRepresentationForType_))
      {

LABEL_33:
        v104 = swift_task_alloc();
        v105 = OUTLINED_FUNCTION_99(v104);
        *v105 = v106;
        OUTLINED_FUNCTION_2_7(v105);
        v107 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_43_0();

        return sub_23DE77084();
      }

      OUTLINED_FUNCTION_33_1();
      v47 = [v46 fileURL];
      OUTLINED_FUNCTION_143();

      v48 = OUTLINED_FUNCTION_21_2();
      (v31)(v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v27 + 16);
        v57 = OUTLINED_FUNCTION_6_1();
        sub_23DE4D12C(v57, v58, v59, v27);
        v27 = v60;
      }

      OUTLINED_FUNCTION_38_1();
      if (v39)
      {
        OUTLINED_FUNCTION_28_1(v49);
        v27 = v61;
      }

      v50 = OUTLINED_FUNCTION_4_3();
      v51(v50);
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_111();
      if (v27)
      {
        OUTLINED_FUNCTION_9_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C738, &qword_23E224A88);
        v109 = OUTLINED_FUNCTION_147();
        v110 = OUTLINED_FUNCTION_112(v109);
        v111 = OUTLINED_FUNCTION_20_1(v110, xmmword_23E222340);
        (v31)(v111);
        v112 = *(MEMORY[0x277CFC1D8] + 4);
        v113 = swift_task_alloc();
        v114 = OUTLINED_FUNCTION_78_0(v113);
        *v114 = v115;
        OUTLINED_FUNCTION_1_6(v114);
        v116 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_43_0();

        return MEMORY[0x28214EF48](v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, a13, a14, a15, v131, v132, a18, v134, a20, a21, a22);
      }

      v52 = OUTLINED_FUNCTION_37_0();
      v53(v52);

      sub_23DE5CB68(v22 + 56, &qword_27E32C730, &qword_23E224A80);
      v27 = *(v22 + 464);
      v33 = *(v22 + 408);
      v31 = (v22 + 392);
      v54 = *v132;
      v55 = *(v22 + 376);
      OUTLINED_FUNCTION_109();
      if (v36)
      {
        v125 = *(v22 + 352);
        v133 = v32.i64[0];
        goto LABEL_23;
      }
    }

    v99 = swift_task_alloc();
    v100 = OUTLINED_FUNCTION_101(v99);
    *v100 = v101;
    OUTLINED_FUNCTION_0_7(v100);
    v102 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_43_0();

    return sub_23DE76E1C();
  }

  else
  {
    v131 = MEMORY[0x277D7A440];
    v133 = MEMORY[0x277D84F90];
LABEL_23:

    v62 = *v131;
    v63 = *(v22 + 240);
    sub_23E1FCB9C();
    v64 = sub_23E1FD02C();
    sub_23E1FE1AC();
    OUTLINED_FUNCTION_106();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = *(v22 + 312);
      v68 = *(v22 + 232);
      v67 = *(v22 + 240);
      OUTLINED_FUNCTION_58_1();
      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_141();
      *v23 = 136315138;
      v69 = sub_23E1FB7BC();
      MEMORY[0x23EF045E0](v69, v66);
      OUTLINED_FUNCTION_115();

      v70 = OUTLINED_FUNCTION_87_0();
      sub_23DE56B40(v70, v71, v72);
      OUTLINED_FUNCTION_88_0();

      *(v23 + 1) = v66;
      OUTLINED_FUNCTION_42_0(&dword_23DE30000, v73, v74, "WFAskLLMAction user prompt: %s");
      OUTLINED_FUNCTION_36_1();
      OUTLINED_FUNCTION_68_1();

      (*(v68 + 8))(v131, a15);
    }

    else
    {
      v75 = *(v22 + 232);
      v76 = *(v22 + 240);
      v77 = *(v22 + 224);

      v78 = *(v75 + 8);
      v79 = OUTLINED_FUNCTION_66();
      v81(v79, v80);
    }

    v83 = *(v22 + 336);
    v82 = *(v22 + 344);
    v84 = *(v22 + 328);
    v86 = *(v22 + 296);
    v85 = *(v22 + 304);
    v87 = *(v22 + 280);
    v88 = *(v22 + 288);
    objc_allocWithZone(OUTLINED_FUNCTION_15_3());
    OUTLINED_FUNCTION_77_0();
    sub_23E1FBAAC();
    OUTLINED_FUNCTION_132();

    OUTLINED_FUNCTION_49_1();
    v89 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_43_0();

    return v92(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14, a15, v131, v133, a18, v134, a20, a21, a22);
  }
}

uint64_t sub_23DE7290C()
{
  OUTLINED_FUNCTION_23();
  v13 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 432);
  *v3 = *v0;
  *(v2 + 440) = v6;
  *(v2 + 448) = v7;

  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE73098()
{
  OUTLINED_FUNCTION_33_0();
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[60];
  *v4 = *v1;
  v3[61] = v0;

  v6 = v2[59];
  if (v0)
  {
    v7 = v3[58];
    v8 = v3[49];
    v9 = v3[44];
  }

  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DE7376C()
{
  OUTLINED_FUNCTION_23();
  v17 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v2[12] = v0;
  v2[13] = v4;
  v2[14] = v5;
  OUTLINED_FUNCTION_164();
  v7 = *(v6 + 496);
  v8 = *v0;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v11 + 504) = v10;

  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_23DE73FB4()
{
  OUTLINED_FUNCTION_23();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 512);
  *v3 = *v0;
  *(v2 + 620) = v6;

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23DE748F8()
{
  OUTLINED_FUNCTION_4();
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 520);
  *v3 = *v1;
  v2[66] = v6;
  v2[67] = v0;

  if (v0)
  {
    v8 = v2[48];
    v7 = v2[49];
    v9 = v2[44];
  }

  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DE75158()
{
  OUTLINED_FUNCTION_33_0();
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[69];
  *v4 = *v1;
  v3[70] = v0;

  v6 = v2[68];
  if (v0)
  {
    v8 = v3[48];
    v7 = v3[49];
    v9 = v3[44];
  }

  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DE758A8()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 568);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v2[72] = v0;

  if (v0)
  {
    v9 = v2[48];
    v8 = v2[49];
    v10 = v2[44];
  }

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23DE759F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_135();
  v140 = *MEMORY[0x277D85DE8];
  v24 = *(v22 + 392);
  (*(*(v22 + 200) + 16))(*(v22 + 208), *(v22 + 216), *(v22 + 192));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v22 + 392);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_44:
    v133 = v26[2];
    v134 = OUTLINED_FUNCTION_6_1();
    sub_23DE4D0EC(v134, v135, v136, v26);
    v26 = v137;
  }

  v28 = v26[2];
  v27 = v26[3];
  v29 = (v28 + 1);
  if (v28 >= v27 >> 1)
  {
    sub_23DE4D0EC(v27 > 1, v28 + 1, 1, v26);
    v26 = v138;
  }

  v31 = *(v22 + 208);
  v30 = *(v22 + 216);
  v32 = *(v22 + 192);
  v33 = *(v22 + 200);

  (*(v33 + 8))(v30, v32);
  v26[2] = v29;
  (*(v33 + 32))(v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, v31, v32);
  v34 = (v22 + 384);
  v35 = *(v22 + 376) + 1;
  while (1)
  {
    v36 = *v34;
    OUTLINED_FUNCTION_109();
    if (v38)
    {
      break;
    }

    *(v22 + 384) = v36;
    *(v22 + 392) = v26;
    *(v22 + 376) = v37;
    OUTLINED_FUNCTION_95();
    if (v38)
    {
      OUTLINED_FUNCTION_34_0(v39, v40);
      if (v43)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_145(v41, v42);
    }

    else
    {
      MEMORY[0x23EF04DD0](v29);
    }

    OUTLINED_FUNCTION_110();
    *(v22 + 416) = v44;
    *(v22 + 424) = v45;
    if (v46)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    objc_opt_self();
    if (OUTLINED_FUNCTION_120())
    {
      v78 = swift_task_alloc();
      v79 = OUTLINED_FUNCTION_101(v78);
      *v79 = v80;
      OUTLINED_FUNCTION_0_7();
      v81 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_43_0();

      return sub_23DE76E1C();
    }

    ObjectType = swift_getObjectType();
    v48 = OUTLINED_FUNCTION_35_1(ObjectType);
    if (v29 != sub_23DE38DA8(v48, &unk_280DAE680, 0x277CFC3F0))
    {
      objc_opt_self();
      if (!OUTLINED_FUNCTION_120())
      {
        v105 = swift_task_alloc();
        v106 = OUTLINED_FUNCTION_100(v105);
        *v106 = v107;
        OUTLINED_FUNCTION_3_3();
        v108 = *MEMORY[0x277D85DE8];
        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_43_0();

        return WFContentItem.isImage()();
      }
    }

    if ((OUTLINED_FUNCTION_19_0() & 1) == 0)
    {
      goto LABEL_29;
    }

    v49 = [v26 preferredFileType];
    if (!v49)
    {
      goto LABEL_29;
    }

    v29 = v49;
    if (!OUTLINED_FUNCTION_144(v49, sel_fileRepresentationForType_))
    {

LABEL_29:
      v84 = swift_task_alloc();
      v85 = OUTLINED_FUNCTION_99(v84);
      *v85 = v86;
      OUTLINED_FUNCTION_2_7();
      v87 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_43_0();

      return sub_23DE77084();
    }

    OUTLINED_FUNCTION_33_1();
    v51 = [v50 fileURL];
    OUTLINED_FUNCTION_143();

    v52 = OUTLINED_FUNCTION_21_2();
    (v31)(v52);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = *(v36 + 16);
      v60 = OUTLINED_FUNCTION_6_1();
      sub_23DE4D12C(v60, v61, v62, v36);
      v36 = v63;
    }

    OUTLINED_FUNCTION_38_1();
    if (v43)
    {
      OUTLINED_FUNCTION_28_1(v53);
      v36 = v64;
    }

    v54 = OUTLINED_FUNCTION_4_3();
    v55(v54);
    OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_111();
    if (v36)
    {
      OUTLINED_FUNCTION_9_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C738, &qword_23E224A88);
      v89 = OUTLINED_FUNCTION_147();
      v90 = OUTLINED_FUNCTION_112(v89);
      v91 = OUTLINED_FUNCTION_20_1(v90, xmmword_23E222340);
      (v31)(v91);
      v92 = *(MEMORY[0x277CFC1D8] + 4);
      v93 = swift_task_alloc();
      v94 = OUTLINED_FUNCTION_78_0(v93);
      *v94 = v95;
      OUTLINED_FUNCTION_1_6();
      v96 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_43_0();

      return MEMORY[0x28214EF48](v97, v98, v99, v100, v101, v102, v103, v104, a9, a10, a11, a12, a13, a14, a15, a16, v22 + 464, a18, v140, a20, a21, a22);
    }

    v56 = OUTLINED_FUNCTION_37_0();
    v57(v56);

    sub_23DE5CB68(v22 + 56, &qword_27E32C730, &qword_23E224A80);
    v26 = *(v22 + 392);
    v58 = *(v22 + 376);
    v34 = (v22 + 464);
  }

  v65 = *(v22 + 408);
  v66 = *(v22 + 352);

  OUTLINED_FUNCTION_82_0();
  v67 = sub_23E1FD02C();
  sub_23E1FE1AC();
  OUTLINED_FUNCTION_106();
  v139 = v65;
  if (os_log_type_enabled(v67, v68))
  {
    v69 = *(v22 + 312);
    v71 = *(v22 + 232);
    v70 = *(v22 + 240);
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_141();
    *v23 = 136315138;
    v72 = sub_23E1FB7BC();
    MEMORY[0x23EF045E0](v72, v69);
    OUTLINED_FUNCTION_88_0();

    v73 = OUTLINED_FUNCTION_87_0();
    sub_23DE56B40(v73, v74, v75);
    OUTLINED_FUNCTION_88_0();

    *(v23 + 1) = v69;
    OUTLINED_FUNCTION_42_0(&dword_23DE30000, v76, v77, "WFAskLLMAction user prompt: %s");
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_68_1();

    (*(v71 + 8))(a16, a15);
  }

  else
  {
    v110 = *(v22 + 232);
    v111 = *(v22 + 240);
    v112 = *(v22 + 224);

    v113 = *(v110 + 8);
    v114 = OUTLINED_FUNCTION_66();
    v116(v114, v115);
  }

  v118 = *(v22 + 336);
  v117 = *(v22 + 344);
  v119 = *(v22 + 328);
  v121 = *(v22 + 296);
  v120 = *(v22 + 304);
  v122 = *(v22 + 280);
  v123 = *(v22 + 288);
  objc_allocWithZone(OUTLINED_FUNCTION_15_3());
  sub_23E1FBAAC();
  OUTLINED_FUNCTION_132();

  OUTLINED_FUNCTION_49_1();
  v124 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_43_0();

  return v127(v125, v126, v127, v128, v129, v130, v131, v132, a9, a10, a11, a12, a13, a14, a15, a16, v139, a18, v140, a20, a21, a22);
}

uint64_t sub_23DE76044()
{
  OUTLINED_FUNCTION_23();
  v16 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 592);
  v6 = *(v4 + 584);
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 600) = v9;

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23DE769D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_142();
  v20 = v18[38];
  v21 = v18[33];
  v22 = v18[34];

  v24 = *(v22 + 8);
  v25 = OUTLINED_FUNCTION_50();
  v26(v25);
  __swift_destroy_boxed_opaque_existential_0(v18 + 7);

  v27 = v18[61];
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_108();
  v28 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_26();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE76AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_142();

  v21 = *(v18 + 536);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_108();
  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_26();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE76BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v32 = *MEMORY[0x277D85DE8];
  v19 = *(v18 + 528);
  v20 = *(v18 + 400);

  __swift_destroy_boxed_opaque_existential_0((v18 + 16));

  v21 = *(v18 + 560);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_108();
  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_26();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, v32, a16, a17, a18);
}

uint64_t sub_23DE76D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_142();

  v21 = *(v18 + 576);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_108();
  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_26();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE76E1C()
{
  v1 = sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v2 = *(MEMORY[0x277CFC1F0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_23DE76ED4;

  return MEMORY[0x28214EF70](v1, 0, v1);
}

uint64_t sub_23DE76ED4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 16);
  *v3 = *v1;
  *(v2 + 24) = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_116();

    return v7(0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_22();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_23DE77000()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 24);
  if (v1)
  {
    sub_23E1FDC0C();
  }

  OUTLINED_FUNCTION_116();

  return v2();
}

uint64_t sub_23DE77084()
{
  v12 = *MEMORY[0x277D85DE8];
  v1[20] = v0;
  v2 = *(*(sub_23E1FDC6C() - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v3 = *(*(sub_23E1FCC8C() - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v4 = sub_23E1FD03C();
  v1[23] = v4;
  v5 = *(v4 - 8);
  v1[24] = v5;
  v6 = *(v5 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v7 = sub_23E1FC0EC();
  v1[28] = v7;
  v8 = *(v7 - 8);
  v1[29] = v8;
  v9 = *(v8 + 64) + 15;
  v1[30] = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23DE7723C, 0, 0);
}

uint64_t sub_23DE7723C()
{
  OUTLINED_FUNCTION_140();
  v24 = *MEMORY[0x277D85DE8];
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C750, &qword_23E224B18);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_158(inited, xmmword_23E222340);
  v6 = [v4 cachingIdentifier];
  sub_23E1FC0CC();

  v7 = sub_23E1FC0AC();
  v9 = v8;
  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_54();
  v12(v11);
  inited[3].n128_u64[0] = v7;
  inited[3].n128_u64[1] = v9;
  v0[31] = sub_23E1FDABC();
  v13 = sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v0[32] = v13;
  sub_23DE38DA8(0, &qword_27E32C758, 0x277CFC298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C760, &qword_23E224B20);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_23E222340;
  v15 = *MEMORY[0x277CFC5F8];
  *(v14 + 32) = *MEMORY[0x277CFC5F8];
  *(v14 + 64) = MEMORY[0x277D839B0];
  *(v14 + 40) = 1;
  type metadata accessor for WFCoercionOptionName(0);
  sub_23DE7E23C(&qword_27E32BD60, type metadata accessor for WFCoercionOptionName);
  v16 = v15;
  sub_23E1FDABC();
  v0[33] = sub_23DE7DCB0();
  v17 = *(MEMORY[0x277CFC1F0] + 4);
  v18 = swift_task_alloc();
  v0[34] = v18;
  *v18 = v0;
  v18[1] = sub_23DE774B8;
  v19 = v0[20];
  v20 = *MEMORY[0x277D85DE8];
  v21 = OUTLINED_FUNCTION_50();

  return MEMORY[0x28214EF70](v21, v22, v13);
}

uint64_t sub_23DE774B8()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *(v2 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v9 + 280) = v8;

  v10 = *(v2 + 264);
  if (v0)
  {
  }

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23DE77618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_161();
  v80 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_54_0();
  v18 = *(v17 + 280);
  if (v18 && (OUTLINED_FUNCTION_170(), v18, (v16 = a12) != 0))
  {
    v19 = a11;
    v20 = *(v17 + 216);
    v21 = *MEMORY[0x277D7A440];
    sub_23E1FB7BC();
    sub_23E1FCB9C();
    sub_23E1FB7BC();
    v22 = sub_23E1FD02C();
    v23 = sub_23E1FE1AC();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v17 + 216);
    v27 = *(v17 + 184);
    v26 = *(v17 + 192);
    if (v24)
    {
      OUTLINED_FUNCTION_38_0();
      v79 = OUTLINED_FUNCTION_67_0();
      *v19 = 136315138;
      v28 = OUTLINED_FUNCTION_50();
      *(v19 + 4) = sub_23DE56B40(v28, v29, v30);
      OUTLINED_FUNCTION_42_0(&dword_23DE30000, v31, v32, "Found meaningful string representation using that %s");
      __swift_destroy_boxed_opaque_existential_0(v79);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_54_0();
      OUTLINED_FUNCTION_56();
    }

    v33 = *(v26 + 8);
    v34 = OUTLINED_FUNCTION_66();
    v35(v34);
    v36 = *(v17 + 248);

    swift_isUniquelyReferenced_nonNull_native();
    a11 = v36;
    sub_23DE47AB4();
  }

  else
  {
    v36 = *(v17 + 248);
  }

  *(v17 + 288) = v36;
  OUTLINED_FUNCTION_133();
  if (v37)
  {

    *(v17 + 320) = v36;
    OUTLINED_FUNCTION_133();
    if (v38)
    {

      objc_opt_self();
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_184();
      v39 = OUTLINED_FUNCTION_41_1();
      v41 = [v39 v40];

      v42 = *(v17 + 152);
      if (v41)
      {
        OUTLINED_FUNCTION_169();
        OUTLINED_FUNCTION_68();

        sub_23E1FDC5C();
        OUTLINED_FUNCTION_30_0();
        sub_23E1FDC3C();
        OUTLINED_FUNCTION_59_1();

        OUTLINED_FUNCTION_134();
      }

      else
      {
        v67 = v42;
        v68 = sub_23E1FBECC();

        swift_willThrow();

        OUTLINED_FUNCTION_130();
      }

      OUTLINED_FUNCTION_57_0();

      OUTLINED_FUNCTION_116();
      v69 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_56_1();

      return v73(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, v80, a14, a15, a16);
    }

    else
    {
      v55 = *(MEMORY[0x277CFC1F0] + 4);
      v56 = swift_task_alloc();
      v57 = OUTLINED_FUNCTION_177(v56);
      *v57 = v58;
      v59 = OUTLINED_FUNCTION_12_2(v57);
      v60 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_98(v59, v61, v62);
      OUTLINED_FUNCTION_56_1();

      return MEMORY[0x28214EF70](v63, v64, v65);
    }
  }

  else
  {
    v43 = *(v17 + 176);
    sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
    sub_23E1FCC3C();
    *(v17 + 296) = sub_23DE8928C(v43);
    v44 = *(MEMORY[0x277CFC1E0] + 4);
    v45 = swift_task_alloc();
    *(v17 + 304) = v45;
    *v45 = v17;
    OUTLINED_FUNCTION_76_0(v45);
    v46 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_56_1();

    return MEMORY[0x28214EF60](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, v80, a14, a15, a16);
  }
}

uint64_t sub_23DE779FC()
{
  OUTLINED_FUNCTION_4();
  v16 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *(v2 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v9 + 312) = v8;

  v10 = *(v2 + 296);
  if (v0)
  {
  }

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23DE77B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_127();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_161();
  a22 = v25;
  a13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_173();
  v29 = *(v25 + 312);
  if (v29 && (OUTLINED_FUNCTION_170(), v29, (v24 = a12) != 0))
  {
    v30 = a11;
    v31 = *(v25 + 208);
    v32 = *MEMORY[0x277D7A440];
    sub_23E1FB7BC();
    sub_23E1FCB9C();
    sub_23E1FB7BC();
    v33 = sub_23E1FD02C();
    v34 = sub_23E1FE1AC();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v25 + 208);
    v38 = *(v25 + 184);
    v37 = *(v25 + 192);
    if (v35)
    {
      OUTLINED_FUNCTION_38_0();
      v39 = OUTLINED_FUNCTION_67_0();
      a11 = v39;
      *v26 = 136315138;
      *(v26 + 4) = sub_23DE56B40(v30, v24, &a11);
      OUTLINED_FUNCTION_42_0(&dword_23DE30000, v40, v41, "Found file representation representable as a string using that %s");
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_173();
      OUTLINED_FUNCTION_56();
    }

    v42 = *(v37 + 8);
    v43 = OUTLINED_FUNCTION_66();
    v44(v43);

    v45 = *(v25 + 288);
    swift_isUniquelyReferenced_nonNull_native();
    a11 = v45;
    sub_23DE47AB4();
    v46 = a11;
  }

  else
  {
    v46 = *(v25 + 288);
  }

  *(v25 + 320) = v46;
  sub_23DE467E8(v26, 0xE700000000000000, v46);
  if (v47)
  {

    objc_opt_self();
    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_184();
    v48 = OUTLINED_FUNCTION_41_1();
    v50 = [v48 v49];

    v51 = *(v25 + 152);
    if (v50)
    {
      OUTLINED_FUNCTION_169();
      OUTLINED_FUNCTION_68();

      sub_23E1FDC5C();
      OUTLINED_FUNCTION_30_0();
      sub_23E1FDC3C();
      OUTLINED_FUNCTION_59_1();

      OUTLINED_FUNCTION_134();
    }

    else
    {
      v64 = v51;
      v65 = sub_23E1FBECC();

      swift_willThrow();

      OUTLINED_FUNCTION_130();
    }

    OUTLINED_FUNCTION_57_0();

    OUTLINED_FUNCTION_116();
    v66 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_56_1();

    return v70(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v52 = *(MEMORY[0x277CFC1F0] + 4);
    v53 = swift_task_alloc();
    v54 = OUTLINED_FUNCTION_177(v53);
    *v54 = v55;
    v56 = OUTLINED_FUNCTION_12_2(v54);
    v57 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_98(v56, v58, v59);
    OUTLINED_FUNCTION_56_1();

    return MEMORY[0x28214EF70](v60, v61, v62);
  }
}

uint64_t sub_23DE77E84()
{
  OUTLINED_FUNCTION_23();
  v13 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v6 = *(v5 + 328);
  *v4 = *v1;
  *(v3 + 336) = v7;

  if (v0)
  {
  }

  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE77FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_161();
  v53 = *MEMORY[0x277D85DE8];
  v18 = *(v17 + 336);
  if (v18 && (OUTLINED_FUNCTION_170(), v18, a12))
  {
    v16 = a11;
    v19 = *(v17 + 200);
    v20 = *MEMORY[0x277D7A440];
    sub_23E1FB7BC();
    sub_23E1FCB9C();
    sub_23E1FB7BC();
    v21 = sub_23E1FD02C();
    v22 = sub_23E1FE1AC();

    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v17 + 192);
    v24 = *(v17 + 200);
    v26 = *(v17 + 184);
    if (v23)
    {
      v27 = OUTLINED_FUNCTION_38_0();
      v52 = OUTLINED_FUNCTION_49_0();
      *v27 = 136315138;
      v28 = OUTLINED_FUNCTION_35_0();
      *(v27 + 4) = sub_23DE56B40(v28, v29, v30);
      _os_log_impl(&dword_23DE30000, v21, v22, "Falling back to string representation %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      OUTLINED_FUNCTION_68_1();
      OUTLINED_FUNCTION_56();
    }

    v31 = *(v25 + 8);
    v32 = OUTLINED_FUNCTION_30_0();
    v33(v32);

    v34 = *(v17 + 320);
    swift_isUniquelyReferenced_nonNull_native();
    a11 = v34;
    OUTLINED_FUNCTION_35_0();
    sub_23DE47AB4();
  }

  else
  {
    v35 = *(v17 + 320);
  }

  objc_opt_self();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_184();
  v36 = OUTLINED_FUNCTION_41_1();
  v38 = [v36 v37];

  v39 = *(v17 + 152);
  if (v38)
  {
    OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_68();

    sub_23E1FDC5C();
    OUTLINED_FUNCTION_30_0();
    sub_23E1FDC3C();
    OUTLINED_FUNCTION_59_1();

    OUTLINED_FUNCTION_134();
  }

  else
  {
    v40 = v39;
    v41 = sub_23E1FBECC();

    swift_willThrow();

    OUTLINED_FUNCTION_130();
  }

  OUTLINED_FUNCTION_57_0();

  OUTLINED_FUNCTION_116();
  v42 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_56_1();

  return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, v53, a14, a15, a16);
}

uint64_t sub_23DE78268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_140();
  v55 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_54_0();
  v18 = *(v17 + 248);
  *(v17 + 288) = v18;
  OUTLINED_FUNCTION_133();
  if (v19)
  {

    *(v17 + 320) = v18;
    OUTLINED_FUNCTION_133();
    if (v20)
    {

      objc_opt_self();
      OUTLINED_FUNCTION_168();
      OUTLINED_FUNCTION_184();
      v21 = OUTLINED_FUNCTION_41_1();
      v23 = [v21 v22];

      v24 = *(v17 + 152);
      if (v23)
      {
        OUTLINED_FUNCTION_169();
        OUTLINED_FUNCTION_68();

        sub_23E1FDC5C();
        OUTLINED_FUNCTION_30_0();
        sub_23E1FDC3C();
        OUTLINED_FUNCTION_59_1();

        OUTLINED_FUNCTION_134();
      }

      else
      {
        v49 = v24;
        v50 = sub_23E1FBECC();

        swift_willThrow();

        OUTLINED_FUNCTION_130();
      }

      OUTLINED_FUNCTION_57_0();

      OUTLINED_FUNCTION_116();
      v51 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_162();

      __asm { BRAA            X3, X16 }
    }

    v37 = *(MEMORY[0x277CFC1F0] + 4);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_177(v38);
    *v39 = v40;
    v41 = OUTLINED_FUNCTION_12_2(v39);
    v42 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_98(v41, v43, v44);
    OUTLINED_FUNCTION_162();

    return MEMORY[0x28214EF70](v45, v46, v47);
  }

  else
  {
    v25 = *(v17 + 176);
    sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
    sub_23E1FCC3C();
    *(v17 + 296) = sub_23DE8928C(v25);
    v26 = *(MEMORY[0x277CFC1E0] + 4);
    v27 = swift_task_alloc();
    *(v17 + 304) = v27;
    *v27 = v17;
    OUTLINED_FUNCTION_76_0(v27);
    v28 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_162();

    return MEMORY[0x28214EF60](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_23DE78524()
{
  OUTLINED_FUNCTION_140();
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 288);
  *(v0 + 320) = v1;
  sub_23DE467E8(0x746E65746E6F63, 0xE700000000000000, v1);
  if (v2)
  {

    objc_opt_self();
    v3 = OUTLINED_FUNCTION_168();
    *(v0 + 152) = 0;
    v4 = OUTLINED_FUNCTION_41_1();
    v6 = [v4 v5];

    v7 = *(v0 + 152);
    if (v6)
    {
      OUTLINED_FUNCTION_169();
      OUTLINED_FUNCTION_68();

      sub_23E1FDC5C();
      OUTLINED_FUNCTION_30_0();
      sub_23E1FDC3C();
      OUTLINED_FUNCTION_59_1();

      OUTLINED_FUNCTION_134();
    }

    else
    {
      v20 = v7;
      v21 = sub_23E1FBECC();

      swift_willThrow();

      OUTLINED_FUNCTION_130();
    }

    OUTLINED_FUNCTION_57_0();

    OUTLINED_FUNCTION_116();
    v22 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_162();

    __asm { BRAA            X3, X16 }
  }

  v8 = *(MEMORY[0x277CFC1F0] + 4);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_177(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_12_2(v10);
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_98(v12, v14, v15);
  OUTLINED_FUNCTION_162();

  return MEMORY[0x28214EF70](v16, v17, v18);
}

void sub_23DE78738()
{
  OUTLINED_FUNCTION_140();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 320);
  objc_opt_self();
  v2 = OUTLINED_FUNCTION_168();
  *(v0 + 152) = 0;
  v3 = OUTLINED_FUNCTION_41_1();
  v5 = [v3 v4];

  v6 = *(v0 + 152);
  if (v5)
  {
    OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_68();

    sub_23E1FDC5C();
    OUTLINED_FUNCTION_30_0();
    sub_23E1FDC3C();
    OUTLINED_FUNCTION_59_1();

    OUTLINED_FUNCTION_134();
  }

  else
  {
    v7 = v6;
    v8 = sub_23E1FBECC();

    swift_willThrow();

    OUTLINED_FUNCTION_130();
  }

  OUTLINED_FUNCTION_57_0();

  OUTLINED_FUNCTION_116();
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_162();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_23DE788B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[133] = v4;
  v5[132] = a4;
  v5[131] = a3;
  v5[130] = a2;
  v5[129] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C778, &unk_23E224B28) - 8) + 64) + 15;
  v5[134] = swift_task_alloc();
  v7 = sub_23E1FD81C();
  v5[135] = v7;
  v8 = *(v7 - 8);
  v5[136] = v8;
  v9 = *(v8 + 64) + 15;
  v5[137] = swift_task_alloc();
  v10 = sub_23E1FC0EC();
  v5[138] = v10;
  v11 = *(v10 - 8);
  v5[139] = v11;
  v12 = *(v11 + 64) + 15;
  v5[140] = swift_task_alloc();
  v13 = sub_23E1FD03C();
  v5[141] = v13;
  v14 = *(v13 - 8);
  v5[142] = v14;
  v15 = *(v14 + 64) + 15;
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE78AC0, 0, 0);
}

uint64_t sub_23DE78AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_126();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_165();
  a20 = v22;
  v26 = *(v22 + 1032);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = *(v22 + 1192);
    v30 = *MEMORY[0x277D7A440];
    v31 = *(v22 + 1032);
    OUTLINED_FUNCTION_154();
    sub_23E1FCB9C();
    v32 = v23;
    v33 = sub_23E1FD02C();
    v34 = sub_23E1FE1AC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v22 + 1032);
      v36 = OUTLINED_FUNCTION_38_0();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v28;
      *v37 = v28;
      v38 = v35;
      _os_log_impl(&dword_23DE30000, v33, v34, "Taking serialization special-case for dictionary content item %@", v36, 0xCu);
      sub_23DE5CB68(v37, &unk_27E32C190, &qword_23E224B70);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_56();
    }

    v39 = *(v22 + 1192);
    v40 = *(v22 + 1136);
    v41 = *(v22 + 1128);

    (*(v40 + 8))(v39, v41);
    v42 = [v28 dictionary];
    *(v22 + 1200) = sub_23E1FDAAC();

    v43 = swift_task_alloc();
    *(v22 + 1208) = v43;
    *v43 = v22;
    OUTLINED_FUNCTION_175(v43);
    OUTLINED_FUNCTION_72_0();

    return sub_23DE7C958(v44);
  }

  v47 = sub_23DF114B4(*(v22 + 1040), *(v22 + 1048), *(v22 + 1056));
  v48 = *(v22 + 1048);
  if (v47)
  {
    v49 = *(v22 + 1144);
    v50 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    sub_23E1FB7BC();
    v51 = sub_23E1FD02C();
    v52 = sub_23E1FE1AC();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v22 + 1144);
    v55 = *(v22 + 1136);
    v56 = *(v22 + 1128);
    if (v53)
    {
      v57 = *(v22 + 1048);
      v58 = *(v22 + 1040);
      v59 = OUTLINED_FUNCTION_38_0();
      v60 = OUTLINED_FUNCTION_49_0();
      a11 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_23DE56B40(v58, v57, &a11);
      _os_log_impl(&dword_23DE30000, v51, v52, "Item with UUID '%s' has already been encoded. Skipping.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_68_1();
      OUTLINED_FUNCTION_56();
    }

    v61 = *(v55 + 8);
    v62 = OUTLINED_FUNCTION_50();
    v63(v62);
    v149 = 0;
    goto LABEL_11;
  }

  v75 = *(v22 + 1184);
  v76 = *(v22 + 1032);
  ObjCClassFromObject = swift_getObjCClassFromObject();
  *(v22 + 1224) = ObjCClassFromObject;
  v78 = [ObjCClassFromObject properties];
  sub_23DE38DA8(0, &qword_280DAE730, 0x277CFC330);
  v79 = sub_23E1FDDEC();
  *(v22 + 1232) = v79;

  *(v22 + 1240) = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  sub_23E1FB7BC();
  sub_23E1FB7BC();
  v80 = sub_23E1FD02C();
  v81 = sub_23E1FE1AC();

  v82 = os_log_type_enabled(v80, v81);
  v83 = *(v22 + 1184);
  v84 = *(v22 + 1136);
  v85 = *(v22 + 1128);
  if (v82)
  {
    v86 = *(v22 + 1048);
    v87 = *(v22 + 1040);
    a10 = *(v22 + 1184);
    v83 = swift_slowAlloc();
    v88 = OUTLINED_FUNCTION_49_0();
    a11 = v88;
    *v83 = 136315394;
    *(v83 + 4) = sub_23DE56B40(v87, v86, &a11);
    *(v83 + 12) = 2048;
    *(v83 + 14) = sub_23DE4D8B0(v79);

    OUTLINED_FUNCTION_128(&dword_23DE30000, v89, v90, "Encoding content item with UUID '%s' into JSON representation with %ld properties");
    __swift_destroy_boxed_opaque_existential_0(v88);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();

    v91 = *(v84 + 8);
    v91(a10, v85);
  }

  else
  {

    v91 = *(v84 + 8);
    v91(v83, v85);
  }

  *(v22 + 1248) = v91;
  v92 = *(v22 + 1048);
  v93 = *(v22 + 1040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v94 = swift_allocObject();
  v95 = OUTLINED_FUNCTION_158(v94, xmmword_23E222340);
  v96 = MEMORY[0x277D837D0];
  v95[4].n128_u64[1] = MEMORY[0x277D837D0];
  v95[3].n128_u64[0] = v93;
  v95[3].n128_u64[1] = v92;
  sub_23E1FB7BC();
  v97 = sub_23E1FDABC();
  v98 = sub_23DE4D8B0(v79);
  *(v22 + 1256) = v98;
  if (v98)
  {
    if (v98 >= 1)
    {
      *(v22 + 1280) = v97;
      *(v22 + 1272) = 0;
      *(v22 + 1264) = v97;
      v106 = *(v22 + 1232);
      if ((v106 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EF04DD0](0);
      }

      else
      {
        v128 = *(v106 + 32);
      }

      OUTLINED_FUNCTION_97();
      *(v22 + 1288) = v129;
      v130 = *(v22 + 1032);
      *(v22 + 16) = v131;
      *(v22 + 56) = v22 + 912;
      OUTLINED_FUNCTION_86_0();
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C780, &qword_23E224B38);
      OUTLINED_FUNCTION_18_3(v132);
      *(v22 + 88) = 1107296256;
      OUTLINED_FUNCTION_17_3(&block_descriptor_3);
      OUTLINED_FUNCTION_131(v133, sel_getValueForObject_completionHandler_);
      OUTLINED_FUNCTION_72_0();

      return MEMORY[0x282200938](v134);
    }

    __break(1u);
    return MEMORY[0x2821E48A8](v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v107 = *(v22 + 1032);
  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  if (([v107 isKindOfClass_] & 1) != 0 || (v107 = *(v22 + 1032), sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8), objc_msgSend(v107, sel_isKindOfClass_, swift_getObjCClassFromMetadata())))
  {
    v108 = OUTLINED_FUNCTION_50_0();
    sub_23DE4682C(v108, v109, v97, v110);
    v111 = *(v22 + 424);
    sub_23DE5CB68(v22 + 400, &qword_27E32C320, &unk_23E224B40);
    if (!v111)
    {
      [*(v22 + 1032) richListTitle];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_172();

      OUTLINED_FUNCTION_102();
      if (v112)
      {
        [*(v22 + 1032) richListTitle];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_172();
        *(v22 + 456) = v96;
        *(v22 + 432) = v93;
        *(v22 + 440) = v83;
        sub_23DE36CA4((v22 + 432), (v22 + 464));
        swift_isUniquelyReferenced_nonNull_native();
        a11 = v97;
        sub_23DE47BE4(v22 + 464, v107, 0xE500000000000000);
        v97 = a11;
      }
    }

    *(v22 + 1352) = v97;
    *(v22 + 1344) = v97;
    v113 = OUTLINED_FUNCTION_31_1();
    sub_23DE4682C(v113, v114, v97, v115);
    v116 = *(v22 + 520);
    sub_23DE5CB68(v22 + 496, &qword_27E32C320, &unk_23E224B40);
    if (!v116)
    {
      v142 = *(MEMORY[0x277D7C030] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v22 + 1360) = v143;
      *v143 = v144;
      OUTLINED_FUNCTION_11_0(v143);
      OUTLINED_FUNCTION_72_0();

      return MEMORY[0x2821E48A8](v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    v117 = OUTLINED_FUNCTION_23_1();
    sub_23DE4682C(v117, v118, v97, v119);
    v120 = *(v22 + 552);
    sub_23DE5CB68(v22 + 528, &qword_27E32C320, &unk_23E224B40);
    if (!v120)
    {
      [*(v22 + 1224) localizedTypeDescription];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_172();
      *(v22 + 584) = v96;
      *(v22 + 560) = v93;
      *(v22 + 568) = v83;
      sub_23DE36CA4((v22 + 560), (v22 + 592));
      swift_isUniquelyReferenced_nonNull_native();
      a11 = v97;
      OUTLINED_FUNCTION_139(v22 + 592);
      v97 = a11;
    }

    *(v22 + 1376) = v97;
    *(v22 + 1368) = v97;
    v121 = *(v22 + 1032);
    objc_opt_self();
    OUTLINED_FUNCTION_38();
    v122 = swift_dynamicCastObjCClass();
    if (v122)
    {
      if ([v122 outputsFileContent])
      {
        v123 = swift_task_alloc();
        v124 = OUTLINED_FUNCTION_160(v123);
        *v124 = v125;
        OUTLINED_FUNCTION_8_2();
LABEL_40:
        *(v126 + 8) = v127;
        OUTLINED_FUNCTION_81_0();
        OUTLINED_FUNCTION_72_0();

        return sub_23DE77084();
      }
    }
  }

  *(v22 + 1408) = v97;
  *(v22 + 1400) = v97;
  if (*(v97 + 16) != 1)
  {
    v149 = v97;
LABEL_11:
    v64 = *(v22 + 1192);
    v65 = *(v22 + 1184);
    OUTLINED_FUNCTION_6_5();
    v66 = *(v22 + 1072);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, v149, a11, a12, a13, a14);
  }

  v136 = *(v22 + 1032);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v137 = swift_dynamicCastObjCClass();
  if (v137 && [v137 outputsFileContent])
  {
    v138 = swift_task_alloc();
    v139 = OUTLINED_FUNCTION_138(v138);
    *v139 = v140;
    OUTLINED_FUNCTION_7_2();
    goto LABEL_40;
  }

  v145 = swift_task_alloc();
  v146 = OUTLINED_FUNCTION_121(v145);
  *v146 = v147;
  OUTLINED_FUNCTION_5_4(v146);
  OUTLINED_FUNCTION_72_0();

  return sub_23DE76E1C();
}

uint64_t sub_23DE79478()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = *(v3 + 1208);
  v5 = *(v3 + 1200);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 1216) = v8;

  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DE79578()
{
  OUTLINED_FUNCTION_140();

  v6 = *(v0 + 1216);
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1184);
  OUTLINED_FUNCTION_6_5();
  v3 = *(v0 + 1072);

  OUTLINED_FUNCTION_12_1();

  return v4(v6);
}

uint64_t sub_23DE79658()
{
  OUTLINED_FUNCTION_23();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DE79728(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, void (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_27();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_32();
  a24 = v26;
  v29 = *(v26 + 928);
  *(v26 + 208) = *(v26 + 912);
  *(v26 + 224) = v29;
  if (*(v26 + 232))
  {
    sub_23DE36CA4((v26 + 208), (v26 + 144));
    sub_23DE48110(v26 + 144, v26 + 752);
    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    if (swift_dynamicCast())
    {
      v30 = *(v26 + 1120);
      v31 = *(v26 + 1112);
      v32 = *(v26 + 1104);
      v33 = *(v26 + 1056);
      v34 = *(v26 + 1048);
      v35 = *(v26 + 1040);
      v36 = *(v26 + 1024);
      *(v26 + 1296) = v36;
      v37 = [v36 cachingIdentifier];
      sub_23E1FC0CC();

      v151 = sub_23E1FC0AC();
      *(v26 + 1304) = v38;
      (*(v31 + 8))(v30, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_23E222340;
      *(v39 + 32) = v35;
      *(v39 + 40) = v34;
      sub_23E1FB7BC();
      sub_23E1FB7BC();
      *(v26 + 1312) = sub_23DE71F48(v39, v33);
      v40 = swift_task_alloc();
      *(v26 + 1320) = v40;
      *v40 = v26;
      OUTLINED_FUNCTION_175(v40);
      OUTLINED_FUNCTION_26();

      return sub_23DE788B8(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, v151, a15, a16, a17, a18);
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v26 + 1336) = v76;
      *v76 = v77;
      OUTLINED_FUNCTION_69_1(v76);
      OUTLINED_FUNCTION_26();

      return sub_23DE7BF6C(v78, v79);
    }
  }

  v50 = *(v26 + 1288);
  v51 = *(v26 + 1240);
  v52 = *(v26 + 1152);
  v53 = *(v26 + 1032);
  sub_23DE5CB68(v26 + 208, &qword_27E32C320, &unk_23E224B40);
  sub_23E1FCB9C();
  v54 = v53;
  v55 = v50;
  v56 = sub_23E1FD02C();
  v57 = sub_23E1FE1BC();

  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v26 + 1288);
  v60 = *(v26 + 1248);
  v61 = *(v26 + 1152);
  v62 = *(v26 + 1128);
  if (v58)
  {
    a10 = *(v26 + 1032);
    a14 = *(v26 + 1136) + 8;
    a13 = *(v26 + 1152);
    v63 = swift_slowAlloc();
    a12 = v62;
    a15 = swift_slowAlloc();
    *v63 = 136315394;
    v64 = [v59 name];
    sub_23E1FDC1C();
    a11 = v60;

    v65 = OUTLINED_FUNCTION_50();
    v68 = sub_23DE56B40(v65, v66, v67);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2080;
    v69 = [a10 name];
    v70 = sub_23E1FDC1C();
    v72 = v71;

    v73 = sub_23DE56B40(v70, v72, &a15);

    *(v63 + 14) = v73;
    OUTLINED_FUNCTION_128(&dword_23DE30000, v74, v75, "Could not get value of property with name '%s' for content item %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();

    a11(a13, v62);
  }

  else
  {

    v60(v61, v62);
  }

  v81 = *(v26 + 1264);
  v82 = OUTLINED_FUNCTION_107();
  if (!v109)
  {
    v110 = OUTLINED_FUNCTION_105(v82);
    if (v109)
    {
      v118 = *(v111 + 8 * v110 + 32);
    }

    else
    {
      MEMORY[0x23EF04DD0](v110);
    }

    OUTLINED_FUNCTION_97();
    *(v26 + 1288) = v119;
    v120 = *(v26 + 1032);
    *(v26 + 16) = v121;
    *(v26 + 56) = v26 + 912;
    OUTLINED_FUNCTION_86_0();
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C780, &qword_23E224B38);
    OUTLINED_FUNCTION_18_3(v122);
    *(v26 + 88) = 1107296256;
    OUTLINED_FUNCTION_17_3(&block_descriptor_3);
    OUTLINED_FUNCTION_131(v123, sel_getValueForObject_completionHandler_);
    OUTLINED_FUNCTION_26();

    return MEMORY[0x282200938](v124);
  }

  v83 = *(v26 + 1280);
  v84 = *(v26 + 1232);

  v85 = *(v26 + 1032);
  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ((OUTLINED_FUNCTION_188(ObjCClassFromMetadata) & 1) != 0 || (v85 = *(v26 + 1032), sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8), [v85 v59 + 1528]))
  {
    v87 = OUTLINED_FUNCTION_50_0();
    sub_23DE4682C(v87, v88, v83, v89);
    v90 = *(v26 + 424);
    sub_23DE5CB68(v26 + 400, &qword_27E32C320, &unk_23E224B40);
    v91 = MEMORY[0x277D837D0];
    if (!v90)
    {
      [*(v26 + 1032) richListTitle];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_172();

      OUTLINED_FUNCTION_102();
      if (v92)
      {
        v93 = [*(v26 + 1032) richListTitle];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_68();

        *(v26 + 456) = v91;
        OUTLINED_FUNCTION_149();
        a15 = v81;
        sub_23DE47BE4(v26 + 464, v85, 0xE500000000000000);
        v81 = a15;
        v83 = a15;
      }
    }

    *(v26 + 1352) = v83;
    *(v26 + 1344) = v81;
    v94 = OUTLINED_FUNCTION_31_1();
    sub_23DE4682C(v94, v95, v83, v96);
    v97 = *(v26 + 520);
    sub_23DE5CB68(v26 + 496, &qword_27E32C320, &unk_23E224B40);
    if (!v97)
    {
      v136 = *(MEMORY[0x277D7C030] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v26 + 1360) = v137;
      *v137 = v138;
      OUTLINED_FUNCTION_11_0(v137);
      OUTLINED_FUNCTION_26();

      return MEMORY[0x2821E48A8](v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    v98 = OUTLINED_FUNCTION_23_1();
    sub_23DE4682C(v98, v99, v83, v100);
    v101 = *(v26 + 552);
    sub_23DE5CB68(v26 + 528, &qword_27E32C320, &unk_23E224B40);
    if (!v101)
    {
      v102 = [*(v26 + 1224) localizedTypeDescription];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_68();

      *(v26 + 584) = v91;
      OUTLINED_FUNCTION_89_0();
      swift_isUniquelyReferenced_nonNull_native();
      a15 = v81;
      OUTLINED_FUNCTION_139(v26 + 592);
    }

    OUTLINED_FUNCTION_190();
    v103 = OUTLINED_FUNCTION_120();
    if (v103 && [v103 outputsFileContent])
    {
      v104 = swift_task_alloc();
      v105 = OUTLINED_FUNCTION_160(v104);
      *v105 = v106;
      OUTLINED_FUNCTION_8_2();
LABEL_32:
      *(v107 + 8) = v108;
      OUTLINED_FUNCTION_81_0();
      OUTLINED_FUNCTION_26();

      return sub_23DE77084();
    }
  }

  OUTLINED_FUNCTION_178();
  if (v109)
  {
    v112 = *(v26 + 1032);
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v113 = swift_dynamicCastObjCClass();
    if (v113 && [v113 outputsFileContent])
    {
      v114 = swift_task_alloc();
      v115 = OUTLINED_FUNCTION_138(v114);
      *v115 = v116;
      OUTLINED_FUNCTION_7_2();
      goto LABEL_32;
    }

    v147 = swift_task_alloc();
    v148 = OUTLINED_FUNCTION_121(v147);
    *v148 = v149;
    OUTLINED_FUNCTION_5_4(v148);
    OUTLINED_FUNCTION_26();

    return sub_23DE76E1C();
  }

  else
  {
    v126 = *(v26 + 1192);
    v127 = *(v26 + 1184);
    OUTLINED_FUNCTION_6_5();
    v152 = *(v26 + 1072);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_26();

    return v130(v128, v129, v130, v131, v132, v133, v134, v135, a9, a10, a11, a12, a13, v152, a15, a16, a17, a18);
  }
}

uint64_t sub_23DE79FB0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v4 = v3[165];
  v5 = v3[164];
  v6 = v3[163];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 1328) = v9;

  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DE7A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_127();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_161();
  a22 = v24;
  v27 = *(v24 + 1328);
  if (v27)
  {
    v28 = *(v24 + 1288);
    v29 = *(v24 + 1240);
    v30 = *(v24 + 1176);
    sub_23E1FCB9C();
    v31 = v28;
    v32 = sub_23E1FD02C();
    v33 = sub_23E1FE1AC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v27;
      v35 = *(v24 + 1288);
      a11 = *(v24 + 1176);
      a12 = *(v24 + 1248);
      a9 = *(v24 + 1136) + 8;
      a10 = *(v24 + 1128);
      v36 = OUTLINED_FUNCTION_38_0();
      v37 = OUTLINED_FUNCTION_49_0();
      a13 = v37;
      *v36 = 136315138;
      v38 = [v35 name];
      v39 = sub_23E1FDC1C();
      v41 = v40;

      v42 = sub_23DE56B40(v39, v41, &a13);

      *(v36 + 4) = v42;
      v27 = v34;
      OUTLINED_FUNCTION_148();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_21_0();

      a12(a11, a10);
    }

    else
    {
      v33 = *(v24 + 1248);
      v54 = *(v24 + 1176);
      v36 = *(v24 + 1136);
      v55 = *(v24 + 1128);

      v56 = OUTLINED_FUNCTION_50();
      (v33)(v56);
    }

    v57 = *(v24 + 1296);
    v58 = *(v24 + 1288);
    v59 = *(v24 + 1264);
    v60 = [v58 name];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_68();

    *(v24 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
    *(v24 + 176) = v27;
    sub_23DE36CA4((v24 + 176), (v24 + 784));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_159();
    sub_23DE47BE4(v24 + 784, v33, v36);

    v61 = a13;
    __swift_destroy_boxed_opaque_existential_0((v24 + 144));
    v62 = OUTLINED_FUNCTION_107();
    if (!v84)
    {
      *(v24 + 1280) = v61;
      v85 = OUTLINED_FUNCTION_105(v62);
      if (v84)
      {
        v93 = *(v86 + 8 * v85 + 32);
      }

      else
      {
        MEMORY[0x23EF04DD0](v85);
      }

      OUTLINED_FUNCTION_97();
      *(v24 + 1288) = v94;
      v95 = *(v24 + 1032);
      *(v24 + 16) = v96;
      OUTLINED_FUNCTION_83_0(v24 + 912);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C780, &qword_23E224B38);
      OUTLINED_FUNCTION_18_3(v97);
      *(v24 + 88) = 1107296256;
      OUTLINED_FUNCTION_17_3(&block_descriptor_3);
      OUTLINED_FUNCTION_131(v98, sel_getValueForObject_completionHandler_);
      OUTLINED_FUNCTION_56_1();

      return MEMORY[0x282200938](v99);
    }

    v63 = *(v24 + 1232);

    v64 = *(v24 + 1032);
    sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
    if (([v64 isKindOfClass_] & 1) != 0 || (v65 = *(v24 + 1032), sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8), objc_msgSend(v65, sel_isKindOfClass_, swift_getObjCClassFromMetadata())))
    {
      sub_23DE4682C(0x656C746974, 0xE500000000000000, v61, (v24 + 400));
      v66 = *(v24 + 424);
      sub_23DE5CB68(v24 + 400, &qword_27E32C320, &unk_23E224B40);
      v67 = MEMORY[0x277D837D0];
      if (!v66)
      {
        v68 = [*(v24 + 1032) richListTitle];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_68();

        v69 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v69 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v69)
        {
          v70 = [*(v24 + 1032) richListTitle];
          sub_23E1FDC1C();
          OUTLINED_FUNCTION_68();

          *(v24 + 456) = v67;
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_159();
          sub_23DE47BE4(v24 + 464, 0x656C746974, 0xE500000000000000);
          v61 = a13;
        }
      }

      *(v24 + 1352) = v61;
      *(v24 + 1344) = v61;
      v71 = OUTLINED_FUNCTION_31_1();
      sub_23DE4682C(v71, v72, v61, v73);
      v74 = *(v24 + 520);
      sub_23DE5CB68(v24 + 496, &qword_27E32C320, &unk_23E224B40);
      if (!v74)
      {
        v111 = *(MEMORY[0x277D7C030] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_31();
        *(v24 + 1360) = v112;
        *v112 = v113;
        OUTLINED_FUNCTION_11_0(v112);
        OUTLINED_FUNCTION_56_1();

        return MEMORY[0x2821E48A8](v114, v115, v116, v117, v118, v119, v120, v121, a9, a10, a11, a12, a13, a14, a15, a16);
      }

      sub_23DE4682C(0x7954797469746E65, 0xEA00000000006570, v61, (v24 + 528));
      v75 = *(v24 + 552);
      sub_23DE5CB68(v24 + 528, &qword_27E32C320, &unk_23E224B40);
      if (!v75)
      {
        v76 = [*(v24 + 1224) localizedTypeDescription];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_68();

        *(v24 + 584) = v67;
        OUTLINED_FUNCTION_89_0();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_159();
        sub_23DE47BE4(v24 + 592, 0x7954797469746E65, 0xEA00000000006570);
        v61 = a13;
      }

      *(v24 + 1376) = v61;
      *(v24 + 1368) = v61;
      v77 = *(v24 + 1032);
      objc_opt_self();
      OUTLINED_FUNCTION_38();
      v78 = swift_dynamicCastObjCClass();
      if (v78 && [v78 outputsFileContent])
      {
        v79 = swift_task_alloc();
        v80 = OUTLINED_FUNCTION_160(v79);
        *v80 = v81;
        OUTLINED_FUNCTION_8_2();
LABEL_29:
        *(v82 + 8) = v83;
        OUTLINED_FUNCTION_81_0();
        OUTLINED_FUNCTION_56_1();

        return sub_23DE77084();
      }
    }

    *(v24 + 1408) = v61;
    *(v24 + 1400) = v61;
    if (*(v61 + 16) == 1)
    {
      v87 = *(v24 + 1032);
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v88 = swift_dynamicCastObjCClass();
      if (v88 && [v88 outputsFileContent])
      {
        v89 = swift_task_alloc();
        v90 = OUTLINED_FUNCTION_138(v89);
        *v90 = v91;
        OUTLINED_FUNCTION_7_2();
        goto LABEL_29;
      }

      v122 = swift_task_alloc();
      v123 = OUTLINED_FUNCTION_121(v122);
      *v123 = v124;
      OUTLINED_FUNCTION_5_4(v123);
      OUTLINED_FUNCTION_56_1();

      return sub_23DE76E1C();
    }

    else
    {
      v101 = *(v24 + 1192);
      v102 = *(v24 + 1184);
      OUTLINED_FUNCTION_6_5();
      v126 = *(v24 + 1072);

      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_56_1();

      return v105(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, v126, a13, a14, a15, a16);
    }
  }

  else
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v24 + 1336) = v48;
    *v48 = v49;
    OUTLINED_FUNCTION_69_1(v48);
    OUTLINED_FUNCTION_56_1();

    return sub_23DE7BF6C(v50, v51);
  }
}

uint64_t sub_23DE7A824()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 1336);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DE7A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_127();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_161();
  a22 = v24;
  v27 = *(v24 + 1288);
  v28 = *(v24 + 1240);
  if (*(v24 + 872))
  {
    v29 = *(v24 + 1168);
    sub_23DE36CA4((v24 + 848), (v24 + 816));
    sub_23E1FCB9C();
    v30 = v27;
    v31 = sub_23E1FD02C();
    v32 = sub_23E1FE1AC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v24 + 1288);
      a11 = *(v24 + 1168);
      a12 = *(v24 + 1248);
      v34 = *(v24 + 1128);
      a10 = *(v24 + 1136) + 8;
      v35 = OUTLINED_FUNCTION_38_0();
      v36 = OUTLINED_FUNCTION_49_0();
      a13 = v36;
      *v35 = 136315138;
      v37 = [v33 name];
      v38 = sub_23E1FDC1C();
      v40 = v39;

      v41 = sub_23DE56B40(v38, v40, &a13);

      *(v35 + 4) = v41;
      OUTLINED_FUNCTION_148();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_21_0();

      a12(a11, v34);
    }

    else
    {
      v72 = *(v24 + 1248);
      v73 = *(v24 + 1168);
      v74 = *(v24 + 1136);
      v75 = *(v24 + 1128);

      v76 = OUTLINED_FUNCTION_50();
      v72(v76);
    }

    v77 = *(v24 + 1264);
    v78 = [*(v24 + 1288) name];
    v79 = sub_23E1FDC1C();
    v81 = v80;

    sub_23DE48110(v24 + 816, v24 + 880);
    swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 1016) = v77;
    v82 = OUTLINED_FUNCTION_35_0();
    v84 = sub_23DF1E154(v82, v83);
    if (__OFADD__(*(v77 + 16), (v85 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v54 = v84;
      v92 = v85;
      v93 = (v24 + 1016);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
      if (sub_23E1FE66C())
      {
        v94 = *v93;
        v95 = OUTLINED_FUNCTION_35_0();
        v97 = sub_23DF1E154(v95, v96);
        if ((v92 & 1) != (v98 & 1))
        {
          OUTLINED_FUNCTION_56_1();

          return sub_23E1FE7BC();
        }

        v54 = v97;
      }

      v102 = *v93;
      if (v92)
      {
        v103 = *(v24 + 1288);
        v104 = (v102[7] + 32 * v54);
        __swift_destroy_boxed_opaque_existential_0(v104);
        sub_23DE36CA4((v24 + 880), v104);

LABEL_20:

        __swift_destroy_boxed_opaque_existential_0((v24 + 816));
        __swift_destroy_boxed_opaque_existential_0((v24 + 144));
        v101 = v102;
        goto LABEL_21;
      }

      v102[(v54 >> 6) + 8] |= 1 << v54;
      v105 = (v102[6] + 16 * v54);
      *v105 = v79;
      v105[1] = v81;
      v84 = sub_23DE36CA4((v24 + 880), (v102[7] + 32 * v54));
      v106 = v102[2];
      v107 = __OFADD__(v106, 1);
      v108 = v106 + 1;
      if (!v107)
      {
        v103 = *(v24 + 1288);
        v102[2] = v108;
        goto LABEL_20;
      }
    }

    __break(1u);
    return MEMORY[0x2821E48A8](v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v47 = *(v24 + 1160);
  v48 = *(v24 + 1032);
  sub_23DE5CB68(v24 + 848, &qword_27E32C320, &unk_23E224B40);
  sub_23E1FCB9C();
  v49 = v48;
  v50 = v27;
  v51 = sub_23E1FD02C();
  v52 = sub_23E1FE1AC();

  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v24 + 1288);
  v55 = *(v24 + 1248);
  v56 = *(v24 + 1160);
  v57 = *(v24 + 1128);
  if (v53)
  {
    v58 = *(v24 + 1032);
    a12 = (*(v24 + 1136) + 8);
    a11 = *(v24 + 1160);
    v59 = swift_slowAlloc();
    a10 = v57;
    a13 = swift_slowAlloc();
    *v59 = 136315394;
    v60 = [v54 name];
    sub_23E1FDC1C();
    a9 = v55;

    v61 = OUTLINED_FUNCTION_50();
    v64 = sub_23DE56B40(v61, v62, v63);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2080;
    v65 = [v58 name];
    v66 = sub_23E1FDC1C();
    v68 = v67;

    v69 = sub_23DE56B40(v66, v68, &a13);

    *(v59 + 14) = v69;
    OUTLINED_FUNCTION_128(&dword_23DE30000, v70, v71, "Could not encode property '%s' for content item %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();

    a9(a11, v57);
  }

  else
  {

    v55(v56, v57);
  }

  __swift_destroy_boxed_opaque_existential_0((v24 + 144));
  v101 = *(v24 + 1280);
  v102 = *(v24 + 1264);
LABEL_21:
  v109 = OUTLINED_FUNCTION_107();
  if (!v134)
  {
    *(v24 + 1280) = v101;
    v135 = OUTLINED_FUNCTION_105(v109);
    if (v134)
    {
      v143 = *(v136 + 8 * v135 + 32);
    }

    else
    {
      MEMORY[0x23EF04DD0](v135);
    }

    OUTLINED_FUNCTION_97();
    *(v24 + 1288) = v144;
    v145 = *(v24 + 1032);
    *(v24 + 16) = v146;
    OUTLINED_FUNCTION_83_0(v24 + 912);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C780, &qword_23E224B38);
    OUTLINED_FUNCTION_18_3(v147);
    *(v24 + 88) = 1107296256;
    OUTLINED_FUNCTION_17_3(&block_descriptor_3);
    OUTLINED_FUNCTION_131(v148, sel_getValueForObject_completionHandler_);
    OUTLINED_FUNCTION_56_1();

    return MEMORY[0x282200938](v149);
  }

  v110 = *(v24 + 1232);

  v111 = *(v24 + 1032);
  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ((OUTLINED_FUNCTION_188(ObjCClassFromMetadata) & 1) == 0)
  {
    v111 = *(v24 + 1032);
    sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8);
    if (![v111 (v54 + 1528)])
    {
      goto LABEL_36;
    }
  }

  v113 = OUTLINED_FUNCTION_50_0();
  sub_23DE4682C(v113, v114, v101, v115);
  v116 = *(v24 + 424);
  sub_23DE5CB68(v24 + 400, &qword_27E32C320, &unk_23E224B40);
  if (!v116)
  {
    [*(v24 + 1032) richListTitle];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_172();

    OUTLINED_FUNCTION_102();
    if (v117)
    {
      v118 = [*(v24 + 1032) richListTitle];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_68();

      *(v24 + 456) = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_149();
      OUTLINED_FUNCTION_159();
      sub_23DE47BE4(v24 + 464, v111, 0xE500000000000000);
      v102 = a13;
      v101 = a13;
    }
  }

  *(v24 + 1352) = v101;
  *(v24 + 1344) = v102;
  v119 = OUTLINED_FUNCTION_31_1();
  sub_23DE4682C(v119, v120, v101, v121);
  v122 = *(v24 + 520);
  sub_23DE5CB68(v24 + 496, &qword_27E32C320, &unk_23E224B40);
  if (!v122)
  {
    v161 = *(MEMORY[0x277D7C030] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v24 + 1360) = v162;
    *v162 = v163;
    OUTLINED_FUNCTION_11_0(v162);
    OUTLINED_FUNCTION_56_1();

    return MEMORY[0x2821E48A8](v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v123 = OUTLINED_FUNCTION_23_1();
  sub_23DE4682C(v123, v124, v101, v125);
  v126 = *(v24 + 552);
  sub_23DE5CB68(v24 + 528, &qword_27E32C320, &unk_23E224B40);
  if (!v126)
  {
    v127 = [*(v24 + 1224) localizedTypeDescription];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_68();

    *(v24 + 584) = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_89_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_139(v24 + 592);
  }

  OUTLINED_FUNCTION_190();
  v128 = OUTLINED_FUNCTION_120();
  if (v128 && [v128 outputsFileContent])
  {
    v129 = swift_task_alloc();
    v130 = OUTLINED_FUNCTION_160(v129);
    *v130 = v131;
    OUTLINED_FUNCTION_8_2();
LABEL_41:
    *(v132 + 8) = v133;
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_56_1();

    return sub_23DE77084();
  }

LABEL_36:
  OUTLINED_FUNCTION_178();
  if (v134)
  {
    v137 = *(v24 + 1032);
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v138 = swift_dynamicCastObjCClass();
    if (v138 && [v138 outputsFileContent])
    {
      v139 = swift_task_alloc();
      v140 = OUTLINED_FUNCTION_138(v139);
      *v140 = v141;
      OUTLINED_FUNCTION_7_2();
      goto LABEL_41;
    }

    v164 = swift_task_alloc();
    v165 = OUTLINED_FUNCTION_121(v164);
    *v165 = v166;
    OUTLINED_FUNCTION_5_4(v165);
    OUTLINED_FUNCTION_56_1();

    return sub_23DE76E1C();
  }

  else
  {
    v151 = *(v24 + 1192);
    v152 = *(v24 + 1184);
    OUTLINED_FUNCTION_6_5();
    v168 = *(v24 + 1072);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_56_1();

    return v155(v153, v154, v155, v156, v157, v158, v159, v160, a9, a10, a11, v168, a13, a14, a15, a16);
  }
}

uint64_t sub_23DE7B290()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 1360);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DE7B374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  v15 = *(v14 + 1080);
  v16 = *(v14 + 1072);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v15);
  v18 = MEMORY[0x277D837D0];
  if (EnumTagSinglePayload == 1)
  {
    sub_23DE5CB68(v16, &qword_27E32C778, &unk_23E224B28);
  }

  else
  {
    v19 = *(v14 + 1096);
    (*(*(v14 + 1088) + 32))(v19, v16, v15);
    sub_23E1FD80C();
    OUTLINED_FUNCTION_174();

    v20 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v20 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = *(v14 + 1344);
      v22 = *(v14 + 1096);
      v23 = *(v14 + 1088);
      v24 = *(v14 + 1080);
      v25 = sub_23E1FD80C();
      *(v14 + 712) = v18;
      *(v14 + 688) = v25;
      *(v14 + 696) = v26;
      sub_23DE36CA4((v14 + 688), (v14 + 720));
      swift_isUniquelyReferenced_nonNull_native();
      a11 = v21;
      sub_23DE47BE4(v14 + 720, 0x656C746974627573, 0xE800000000000000);
      (*(v23 + 8))(v22, v24);
      v27 = v21;
      goto LABEL_9;
    }

    (*(*(v14 + 1088) + 8))(*(v14 + 1096), *(v14 + 1080));
  }

  v27 = *(v14 + 1352);
  v21 = *(v14 + 1344);
LABEL_9:
  v28 = OUTLINED_FUNCTION_23_1();
  sub_23DE4682C(v28, v29, v27, v30);
  v31 = *(v14 + 552);
  sub_23DE5CB68(v14 + 528, &qword_27E32C320, &unk_23E224B40);
  if (!v31)
  {
    v32 = [*(v14 + 1224) localizedTypeDescription];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_68();

    *(v14 + 584) = v18;
    OUTLINED_FUNCTION_89_0();
    swift_isUniquelyReferenced_nonNull_native();
    a11 = v21;
    OUTLINED_FUNCTION_139(v14 + 592);
    v27 = v21;
  }

  *(v14 + 1376) = v27;
  *(v14 + 1368) = v21;
  v33 = *(v14 + 1032);
  objc_opt_self();
  v34 = OUTLINED_FUNCTION_120();
  if (v34 && [v34 outputsFileContent])
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_160(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_8_2();
LABEL_18:
    *(v38 + 8) = v39;
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_72_0();

    return sub_23DE77084();
  }

  *(v14 + 1408) = v27;
  *(v14 + 1400) = v21;
  if (*(v27 + 16) == 1)
  {
    v40 = *(v14 + 1032);
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v41 = swift_dynamicCastObjCClass();
    if (v41 && [v41 outputsFileContent])
    {
      v42 = swift_task_alloc();
      v43 = OUTLINED_FUNCTION_138(v42);
      *v43 = v44;
      OUTLINED_FUNCTION_7_2();
      goto LABEL_18;
    }

    v57 = swift_task_alloc();
    v58 = OUTLINED_FUNCTION_121(v57);
    *v58 = v59;
    OUTLINED_FUNCTION_5_4(v58);
    OUTLINED_FUNCTION_72_0();

    return sub_23DE76E1C();
  }

  else
  {
    v47 = *(v14 + 1192);
    v48 = *(v14 + 1184);
    OUTLINED_FUNCTION_6_5();
    v61 = *(v14 + 1072);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, v61, a11, a12, a13, a14);
  }
}

uint64_t sub_23DE7B710()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v1[118] = v0;
  v1[119] = v3;
  v1[120] = v4;
  OUTLINED_FUNCTION_164();
  v6 = *(v5 + 1384);
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 1392) = v9;

  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DE7B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  v15 = *(v14 + 1392);
  if (v15)
  {
    v16 = *(v14 + 952);
    v17 = *(v14 + 1368);
    *(v14 + 648) = MEMORY[0x277D837D0];
    *(v14 + 624) = v16;
    *(v14 + 632) = v15;
    sub_23DE36CA4((v14 + 624), (v14 + 656));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_137();
    sub_23DE47BE4(v14 + 656, v18, 0xE700000000000000);
    v19 = a11;
    v20 = a11;
  }

  else
  {
    v20 = *(v14 + 1376);
    v19 = *(v14 + 1368);
  }

  *(v14 + 1408) = v20;
  *(v14 + 1400) = v19;
  if (*(v20 + 16) == 1)
  {
    v21 = *(v14 + 1032);
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v22 = swift_dynamicCastObjCClass();
    if (v22 && [v22 outputsFileContent])
    {
      v23 = swift_task_alloc();
      v24 = OUTLINED_FUNCTION_138(v23);
      *v24 = v25;
      OUTLINED_FUNCTION_7_2();
      *(v26 + 8) = v27;
      OUTLINED_FUNCTION_81_0();
      OUTLINED_FUNCTION_72_0();

      return sub_23DE77084();
    }

    else
    {
      v40 = swift_task_alloc();
      v41 = OUTLINED_FUNCTION_121(v40);
      *v41 = v42;
      OUTLINED_FUNCTION_5_4(v41);
      OUTLINED_FUNCTION_72_0();

      return sub_23DE76E1C();
    }
  }

  else
  {
    v30 = *(v14 + 1192);
    v31 = *(v14 + 1184);
    OUTLINED_FUNCTION_6_5();
    v44 = *(v14 + 1072);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, v44, a11, a12, a13, a14);
  }
}

uint64_t sub_23DE7B9EC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v1[121] = v0;
  v1[122] = v3;
  v1[123] = v4;
  OUTLINED_FUNCTION_164();
  v6 = *(v5 + 1416);
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v10 + 1424) = v9;

  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DE7BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  v15 = *(v14 + 1424);
  if (v15)
  {
    v16 = *(v14 + 976);
    v17 = *(v14 + 1400);
    *(v14 + 360) = MEMORY[0x277D837D0];
    *(v14 + 336) = v16;
    *(v14 + 344) = v15;
    sub_23DE36CA4((v14 + 336), (v14 + 368));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_137();
    sub_23DE47BE4(v14 + 368, v18, 0xE700000000000000);
    v19 = *(v14 + 1192);
    v20 = *(v14 + 1184);
    OUTLINED_FUNCTION_6_5();
    v21 = *(v14 + 1072);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a11, a11, a12, a13, a14);
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_121(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_5_4(v32);
    OUTLINED_FUNCTION_72_0();

    return sub_23DE76E1C();
  }
}