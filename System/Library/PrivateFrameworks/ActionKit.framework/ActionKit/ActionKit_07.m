uint64_t AppShortcutEntity.AppShortcutQuery.entities(for:)()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23DEDFAA8;

  return sub_23DEDFE94();
}

uint64_t sub_23DEDFAA8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  *(v2 + 32) = v6;
  *(v2 + 40) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_23DEDFBAC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v32 = MEMORY[0x277D84F90];
  v3 = 0;
  v29 = v1 & 0xC000000000000001;
  v30 = sub_23DE4D8B0(v1);
  v28 = v1 + 32;
LABEL_2:
  while (v3 != v30)
  {
    sub_23DE59014(v3, v29 == 0, *(v31 + 32));
    if (v29)
    {
      v4 = MEMORY[0x23EF04DD0](v3, *(v31 + 32));
    }

    else
    {
      v4 = *(v28 + 8 * v3);
    }

    v5 = v4;
    if (__OFADD__(v3++, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    v7 = *(v2 + 16) + 1;
    v8 = (v2 + 40);
    while (1)
    {
      if (!--v7)
      {

        goto LABEL_2;
      }

      v10 = *(v8 - 1);
      v9 = *v8;
      sub_23E1FB7BC();
      v11 = [v5 id];
      v12 = sub_23E1FDC1C();
      v14 = v13;

      if (v12 == v10 && v14 == v9)
      {
        break;
      }

      v8 += 2;
      v16 = sub_23E1FE75C();

      if (v16)
      {
        goto LABEL_16;
      }
    }

LABEL_16:
    sub_23E1FE61C();
    v17 = *(v32 + 16);
    sub_23E1FE64C();
    sub_23E1FE65C();
    sub_23E1FE62C();
  }

  v18 = *(v31 + 32);

  v19 = v32;
  v20 = sub_23DE4D8B0(v32);
  if (v20)
  {
    v21 = v20;
    v33 = MEMORY[0x277D84F90];
    sub_23DE640B4();
    if (v21 < 0)
    {
LABEL_31:
      __break(1u);
      return;
    }

    for (i = 0; i != v21; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x23EF04DD0](i, v19);
      }

      else
      {
        v23 = *(v19 + 8 * i + 32);
      }

      v24 = v23;
      v25 = *(v33 + 16);
      if (v25 >= *(v33 + 24) >> 1)
      {
        sub_23DE640B4();
      }

      *(v33 + 16) = v25 + 1;
      *(v33 + 8 * v25 + 32) = v24;
    }
  }

  v26 = OUTLINED_FUNCTION_171_0();

  v27(v26);
}

uint64_t sub_23DEDFE94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D3D8, &qword_23E229098);
  v0[6] = v1;
  v2 = *(v1 - 8);
  v0[7] = v2;
  v3 = *(v2 + 64) + 15;
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DEDFF5C, 0, 0);
}

uint64_t sub_23DEDFF5C()
{
  OUTLINED_FUNCTION_23();
  v0[9] = [objc_allocWithZone(MEMORY[0x277D23B78]) initWithOptions_];
  v0[10] = sub_23E1FDECC();
  v0[11] = sub_23E1FDEBC();
  sub_23E1FDE6C();
  v1 = OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23DEE0008()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[11];
  v2 = v0[9];

  objc_allocWithZone(sub_23E1FC76C());
  v0[12] = sub_23E1FC75C();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEE0094()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);
  *(v0 + 104) = sub_23E1FDEBC();
  sub_23E1FDE6C();
  v2 = OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEE0114()
{
  v2 = v0[12];
  v1 = v0[13];

  sub_23E1FC74C();
  v0[14] = 0;
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEE01B8()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);
  *(v0 + 120) = sub_23E1FDEBC();
  sub_23E1FDE6C();
  v2 = OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23DEE0238()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[15];
  v2 = v0[12];

  v0[16] = sub_23E1FC73C();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEE02A4()
{
  v1 = *(v0 + 128);
  v39 = *(v1 + 16);
  if (!v39)
  {

    v6 = MEMORY[0x277D84F90];
LABEL_37:
    v32 = *(v0 + 64);

    v33 = *(v0 + 8);

    return v33(v6);
  }

  v2 = 0;
  v3 = (v0 + 16);
  v4 = *(v0 + 56);
  v5 = *(v4 + 16);
  v4 += 16;
  v37 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
  v38 = v5;
  v35 = (v4 - 8);
  v36 = *(v4 + 56);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v38(v7, v37 + v2 * v36, v8);
    v9 = sub_23E1FC70C();
    (*v35)(v7, v8);
    v10 = v9 >> 62 ? sub_23E1FE6AC() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v6 >> 62;
    result = v6 >> 62 ? sub_23E1FE6AC() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = result + v10;
    if (__OFADD__(result, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v11)
      {
        goto LABEL_15;
      }

      v14 = v6 & 0xFFFFFFFFFFFFFF8;
      v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      if (v15 >= v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v11)
      {
LABEL_15:
        sub_23E1FE6AC();
        goto LABEL_16;
      }

      v14 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = *(v14 + 16);
LABEL_16:
    result = sub_23E1FE5FC();
    v6 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_17:
    v41 = v6;
    v42 = v10;
    v40 = v2;
    v17 = *(v14 + 16);
    v18 = v15 - v17;
    v19 = v14 + 8 * v17;
    if (v9 >> 62)
    {
      v21 = sub_23E1FE6AC();
      if (v21)
      {
        v22 = v21;
        result = sub_23E1FE6AC();
        if (v18 < result)
        {
          goto LABEL_43;
        }

        if (v22 < 1)
        {
          goto LABEL_45;
        }

        v20 = result;
        v23 = v19 + 32;
        sub_23DE66434(&qword_27E32D3F0, &qword_27E32D3E8, &unk_23E2290A0);
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D3E8, &unk_23E2290A0);
          v25 = sub_23DE5890C(v3, i, v9);
          v27 = *v26;
          (v25)(v3, 0);
          *(v23 + 8 * i) = v27;
        }

        v0 = v34;
        goto LABEL_27;
      }
    }

    else
    {
      v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        if (v18 < v20)
        {
          goto LABEL_44;
        }

        sub_23DEE17E4();
        swift_arrayInitWithCopy();
LABEL_27:

        if (v20 < v42)
        {
          goto LABEL_41;
        }

        if (v20 > 0)
        {
          v28 = *(v14 + 16);
          v29 = __OFADD__(v28, v20);
          v30 = v28 + v20;
          if (v29)
          {
            goto LABEL_42;
          }

          *(v14 + 16) = v30;
        }

        goto LABEL_32;
      }
    }

    if (v42 > 0)
    {
      goto LABEL_41;
    }

LABEL_32:
    v2 = v40 + 1;
    v6 = v41;
    if (v40 + 1 == v39)
    {
      v31 = *(v0 + 128);

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_23DEE066C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 112);

  return v2();
}

uint64_t AppShortcutEntity.AppShortcutQuery.entities(matching:)()
{
  OUTLINED_FUNCTION_23();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_23DEE0764;

  return sub_23DEDFE94();
}

uint64_t sub_23DEE0764()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v1;
  *(v2 + 40) = v6;
  *(v2 + 48) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_23DEE0868()
{
  v1 = v0[5];
  v30 = MEMORY[0x277D84F90];
  v2 = sub_23DE4D8B0(v1);
  v3 = 0;
  v28 = v1 & 0xFFFFFFFFFFFFFF8;
  v29 = v1 & 0xC000000000000001;
  v4 = v1 + 32;
  while (v2 != v3)
  {
    if (v29)
    {
      v5 = MEMORY[0x23EF04DD0](v3, v0[5]);
    }

    else
    {
      if (v3 >= *(v28 + 16))
      {
        goto LABEL_30;
      }

      v5 = *(v4 + 8 * v3);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v8 = v0[2];
    v7 = v0[3];
    v9 = [v5 shortTitle];
    v10 = sub_23E1FDC1C();
    v12 = v11;

    if (v10 == v8 && v12 == v7)
    {
    }

    else
    {
      v14 = v0[2];
      v15 = v0[3];
      v16 = sub_23E1FE75C();

      if ((v16 & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    sub_23E1FE61C();
    v17 = *(v30 + 16);
    sub_23E1FE64C();
    sub_23E1FE65C();
    sub_23E1FE62C();
LABEL_15:
    ++v3;
  }

  v18 = v0[5];

  v19 = v30;
  v20 = sub_23DE4D8B0(v30);
  if (v20)
  {
    v21 = v20;
    v31 = MEMORY[0x277D84F90];
    sub_23DE640B4();
    if (v21 < 0)
    {
      goto LABEL_31;
    }

    for (i = 0; i != v21; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x23EF04DD0](i, v19);
      }

      else
      {
        v23 = *(v19 + 8 * i + 32);
      }

      v24 = v23;
      v25 = *(v31 + 16);
      if (v25 >= *(v31 + 24) >> 1)
      {
        sub_23DE640B4();
      }

      *(v31 + 16) = v25 + 1;
      *(v31 + 8 * v25 + 32) = v24;
    }
  }

  v26 = OUTLINED_FUNCTION_171_0();

  v27(v26);
}

uint64_t AppShortcutEntity.AppShortcutQuery.suggestedEntities()()
{
  OUTLINED_FUNCTION_23();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DEE0B84;

  return sub_23DEDFE94();
}

uint64_t sub_23DEE0B84()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 16);
  *v3 = *v1;
  *(v2 + 24) = v6;
  *(v2 + 32) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_23DEE0C88()
{
  v1 = sub_23DE4D8B0(*(v0 + 24));
  if (v1)
  {
    v2 = v1;
    v13 = MEMORY[0x277D84F90];
    sub_23DE640B4();
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v3 = 0;
    v4 = *(v0 + 24);
    v5 = v4 & 0xC000000000000001;
    v6 = v4 + 32;
    do
    {
      if (v5)
      {
        v7 = MEMORY[0x23EF04DD0](v3, *(v0 + 24));
      }

      else
      {
        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = *(v13 + 16);
      if (v9 >= *(v13 + 24) >> 1)
      {
        sub_23DE640B4();
      }

      ++v3;
      *(v13 + 16) = v9 + 1;
      *(v13 + 8 * v9 + 32) = v8;
    }

    while (v2 != v3);
  }

  v10 = *(v0 + 24);

  v11 = OUTLINED_FUNCTION_171_0();

  v12(v11);
}

uint64_t sub_23DEE0DEC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DEE0E8C;

  return AppShortcutEntity.AppShortcutQuery.entities(matching:)();
}

uint64_t sub_23DEE0E8C(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_23DEE0F8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE4D8D0;

  return AppShortcutEntity.AppShortcutQuery.entities(for:)();
}

uint64_t sub_23DEE1020(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DEE182C;

  return AppShortcutEntity.AppShortcutQuery.suggestedEntities()();
}

uint64_t sub_23DEE10B0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_23DEE14B8();
  *v6 = v2;
  v6[1] = sub_23DE933A0;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_23DEE1164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23DEE1828;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_23DEE123C@<X0>(uint64_t *a1@<X8>)
{
  result = AppShortcutEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DEE1268(uint64_t a1)
{
  v2 = sub_23DEE15C0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23DEE12B8(uint64_t a1)
{
  v2 = sub_23DE33EEC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DEE1304(void *a1)
{
  v2 = [a1 imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FBFDC();

  return v3;
}

uint64_t sub_23DEE1374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DEE13E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DEE144C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_23E1FDC1C();

  return v4;
}

unint64_t sub_23DEE14B8()
{
  result = qword_27E32D3A8;
  if (!qword_27E32D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D3A8);
  }

  return result;
}

unint64_t sub_23DEE1510()
{
  result = qword_280DAE9A8;
  if (!qword_280DAE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9A8);
  }

  return result;
}

unint64_t sub_23DEE1568()
{
  result = qword_280DAE9A0;
  if (!qword_280DAE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9A0);
  }

  return result;
}

unint64_t sub_23DEE15C0()
{
  result = qword_27E32D3B0;
  if (!qword_27E32D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D3B0);
  }

  return result;
}

unint64_t sub_23DEE1618()
{
  result = qword_280DAE9B0;
  if (!qword_280DAE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9B0);
  }

  return result;
}

unint64_t sub_23DEE1670()
{
  result = qword_27E32D3B8;
  if (!qword_27E32D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D3C0, qword_23E228D60);
    sub_23DE33E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D3B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppShortcutEntity.AppShortcutQuery(_BYTE *result, int a2, int a3)
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

unint64_t sub_23DEE17E4()
{
  result = qword_27E32D3E0;
  if (!qword_27E32D3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E32D3E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return sub_23E1FDB8C();
}

uint64_t sub_23DEE18EC()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
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

id sub_23DEE19A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v17 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v18 = sub_23E1FDA9C();
  }

  else
  {
    v18 = 0;
  }

  v21.receiver = v9;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_initWithIdentifier_definition_serializedParameters_schema_intent_resolvedIntentDescriptor_stringLocalizer_, v17, a3, v18, a5, a6, a7, a8);

  if (v19)
  {
  }

  return v19;
}

uint64_t sub_23DEE1BE0()
{
  v0 = sub_23E1FBEEC();
  __swift_allocate_value_buffer(v0, qword_280DB7710);
  v1 = __swift_project_value_buffer(v0, qword_280DB7710);
  *v1 = type metadata accessor for _ActionKitBundleClass();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

unint64_t sub_23DEE1CB4()
{
  result = qword_280DAF278;
  if (!qword_280DAF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF278);
  }

  return result;
}

unint64_t sub_23DEE1D0C()
{
  result = qword_280DAF288;
  if (!qword_280DAF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF288);
  }

  return result;
}

uint64_t sub_23DEE1D98()
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

uint64_t sub_23DEE1F10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
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
  v15 = sub_23E1FDBCC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v19 = sub_23E1FBF0C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v8 + 104))(v0, *MEMORY[0x277CC9110], v5);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  sub_23E1FB69C();
  v24 = sub_23E1FB67C();
  return OUTLINED_FUNCTION_9_0(v24);
}

uint64_t sub_23DEE2154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D430, &qword_23E2293C8);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D438, &qword_23E2293D0) - 8) + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v5);
  sub_23DEE3820();
  sub_23E1FB81C();
  OUTLINED_FUNCTION_5();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D440, &qword_23E229400);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D448, &unk_23E229408);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FB7DC();
}

uint64_t sub_23DEE2334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
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

uint64_t sub_23DEE2524(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_23DE99F40(__src, &v3);
  sub_23E1FB5EC();
  return sub_23DEDA498(__src);
}

uint64_t sub_23DEE257C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return OUTLINED_FUNCTION_12_3();
}

void sub_23DEE2594()
{
  v1 = v0[14];
  sub_23E1FB5DC();
  sub_23DED4C08(v0 + 2);
  v3 = v2;
  sub_23DEDA498((v0 + 2));
  if (v3)
  {
    v4 = [v3 availableRATModes];
    sub_23DEE37DC();
    v5 = sub_23E1FDDEC();

    v6 = sub_23DE4D8B0(v5);
    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        sub_23DE99EEC();
        swift_allocError();
        *v20 = 2;
        swift_willThrow();

        goto LABEL_17;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EF04DD0](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v10 = v0[15];
      v11 = v3;
      v12 = [v3 labelForRATMode_];
      v13 = sub_23E1FDC1C();
      v15 = v14;

      sub_23E1FB5DC();
      if (v13 == v0[11] && v15 == v0[12])
      {

LABEL_19:
        v22 = v0[13];

        [v11 setCurrentRATMode_];
        sub_23E1FB54C();

        OUTLINED_FUNCTION_19();
        goto LABEL_20;
      }

      v17 = v0[12];
      v18 = sub_23E1FE75C();

      if (v18)
      {
        goto LABEL_19;
      }

      v3 = v11;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    sub_23DE99EEC();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
LABEL_17:
    OUTLINED_FUNCTION_19();
LABEL_20:

    v21();
  }
}

uint64_t sub_23DEE283C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D410, &qword_23E229378);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  v69 = &v59 - v4;
  v5 = sub_23E1FB84C();
  v70 = OUTLINED_FUNCTION_6_0(v5);
  v71 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_15();
  v68 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v19);
  v61 = sub_23E1FBEEC();
  v20 = *(v61 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_15();
  v24 = v23 - v22;
  v25 = sub_23E1FC1DC();
  v26 = OUTLINED_FUNCTION_25(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15();
  v29 = sub_23E1FDBCC();
  v30 = OUTLINED_FUNCTION_25(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v33 = sub_23E1FBF0C();
  v63 = v33;
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D418, &qword_23E229380);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  HIDWORD(v59) = *MEMORY[0x277CC9110];
  v35 = *(v20 + 104);
  v60 = v20 + 104;
  v62 = v35;
  v35(v24);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
  v39 = sub_23E1FB51C();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v39);
  v65 = *MEMORY[0x277CBA308];
  v46 = *(v71 + 104);
  v71 += 104;
  v66 = v46;
  v47 = v68;
  v46(v68);
  sub_23DE99E98();
  v67 = sub_23E1FB61C();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D420, &qword_23E229388);
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v62(v24, HIDWORD(v59), v61);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v63);
  sub_23E1FDB3C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D428, &qword_23E229390);
  swift_getKeyPath();
  *&v72 = sub_23E1FB8CC();
  v66(v47, v65, v70);
  sub_23DEE3874();
  sub_23E1FB63C();
  return v67;
}

uint64_t sub_23DEE2DCC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DE47040;

  return sub_23DEE257C(a1, v5, v4);
}

uint64_t sub_23DEE2E78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DEE283C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DEE2EA4(uint64_t a1)
{
  v2 = sub_23DEE3820();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_23DEE2EE4()
{
  result = qword_280DAE480;
  if (!qword_280DAE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE480);
  }

  return result;
}

unint64_t sub_23DEE2F40()
{
  result = qword_27E32D3F8;
  if (!qword_27E32D3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E32BA60, &unk_23E222770);
    sub_23DE712E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D3F8);
  }

  return result;
}

void *sub_23DEE2FC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_23DEE24E0(__src);
  return memcpy(a2, __src, 0x48uLL);
}

uint64_t sub_23DEE3008(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *a2;
  sub_23DE99F40(__dst, &v5);
  return sub_23DEE2524(__dst);
}

void sub_23DEE3070()
{
  v1 = v0[20];
  if (!sub_23E1FB8BC())
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  sub_23DED6494();
  sub_23E1FB65C();

  memcpy(v0 + 2, v0 + 11, 0x48uLL);
  sub_23DED4C08(v0 + 2);
  v3 = v2;

  sub_23DEDA498((v0 + 2));
  if (v3)
  {
    v4 = [v3 availableRATModes];
    sub_23DEE37DC();
    v5 = sub_23E1FDDEC();

    v6 = sub_23DE4D8B0(v5);
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v6 == v7)
      {

        goto LABEL_17;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EF04DD0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = v3;
      v12 = [v3 labelForRATMode_];
      v13 = sub_23E1FDC1C();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v8 + 16);
        sub_23DE4CB98();
        v8 = v19;
      }

      v16 = *(v8 + 16);
      if (v16 >= *(v8 + 24) >> 1)
      {
        sub_23DE4CB98();
        v8 = v20;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      ++v7;
      v3 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_15:
    v8 = MEMORY[0x277D84F90];
LABEL_17:
    v21 = v0[1];

    v21(v8);
  }
}

uint64_t sub_23DEE32E4()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_23DEE3374;

  return sub_23DEE305C(v2);
}

uint64_t sub_23DEE3374()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *(v2 + 16);
  v8 = *v1;
  *(v3 + 24) = v5;
  *(v3 + 32) = v0;

  if (v0)
  {
    v6 = sub_23DEE351C;
  }

  else
  {
    v6 = sub_23DEE3480;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23DEE3480()
{
  v1 = *(v0 + 24);
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
    sub_23E1FB7BC();
  }

  else
  {
    v4 = *(v0 + 24);

    v3 = 0;
    v2 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v3, v2);
}

uint64_t sub_23DEE351C()
{
  OUTLINED_FUNCTION_23();

  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t sub_23DEE3580(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23DE4BE7C;

  return sub_23DEE305C(v3);
}

uint64_t sub_23DEE3618(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23DEE36B0;

  return sub_23DEE32E4();
}

uint64_t sub_23DEE36B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28();
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v2;
  OUTLINED_FUNCTION_2();
  *v9 = v8;

  *v7 = a1;
  v7[1] = a2;
  OUTLINED_FUNCTION_19();

  return v10();
}

unint64_t sub_23DEE37DC()
{
  result = qword_27E32C7C0;
  if (!qword_27E32C7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E32C7C0);
  }

  return result;
}

unint64_t sub_23DEE3820()
{
  result = qword_280DAF280;
  if (!qword_280DAF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF280);
  }

  return result;
}

unint64_t sub_23DEE3874()
{
  result = qword_280DAE488;
  if (!qword_280DAE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE488);
  }

  return result;
}

id sub_23DEE38FC()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E2561B0;
  v9 = *MEMORY[0x277D7CC18];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v89 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_23E222340;
  v11 = *MEMORY[0x277D7CC30];
  *(v10 + 32) = *MEMORY[0x277D7CC30];
  v12 = v7;
  v13 = v9;
  v14 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v93 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  v92 = v3;
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v18 = v17;
  v91 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(v10 + 64) = v91;
  *(v10 + 40) = v18;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v19 = sub_23E1FDABC();
  v20 = v89;
  *(inited + 80) = sub_23DF3BE54(v19);
  v21 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  *(inited + 120) = 0x79656C696D53;
  *(inited + 128) = 0xE600000000000000;
  v22 = *MEMORY[0x277D7CCC0];
  v23 = MEMORY[0x277D837D0];
  *(inited + 144) = MEMORY[0x277D837D0];
  *(inited + 152) = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_23E222380;
  strcpy((v25 + 32), "ParameterKey");
  *(v25 + 45) = 0;
  *(v25 + 46) = -5120;
  *(v25 + 48) = 0x7475706E494657;
  *(v25 + 56) = 0xE700000000000000;
  *(v25 + 72) = v24;
  *(v25 + 80) = 0x6465726975716552;
  *(v25 + 88) = 0xE800000000000000;
  v26 = MEMORY[0x277D839B0];
  *(v25 + 96) = 1;
  *(v25 + 120) = v26;
  *(v25 + 128) = 0x7365707954;
  *(v25 + 136) = 0xE500000000000000;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v25 + 168) = v89;
  *(v25 + 144) = &unk_285024B80;
  v27 = v21;
  v28 = v22;
  v29 = sub_23E1FDABC();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v88 = v30;
  *(inited + 160) = v29;
  v31 = *MEMORY[0x277D7CCC8];
  *(inited + 184) = v30;
  *(inited + 192) = v31;
  *(inited + 200) = 0;
  v32 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v26;
  *(inited + 232) = v32;
  v33 = v31;
  v34 = v32;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v35 = [v93 bundleURL];
  sub_23E1FBF9C();

  v36 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 240) = v37;
  v38 = *MEMORY[0x277D7CDD0];
  v39 = v91;
  *(inited + 264) = v91;
  *(inited + 272) = v38;
  v40 = swift_initStackObject();
  v87 = xmmword_23E222350;
  *(v40 + 16) = xmmword_23E222350;
  *(v40 + 32) = 0x75736F6C63736944;
  *(v40 + 40) = 0xEF6C6576654C6572;
  *(v40 + 48) = 0x63696C627550;
  *(v40 + 56) = 0xE600000000000000;
  *(v40 + 72) = MEMORY[0x277D837D0];
  *(v40 + 80) = 0x656C7069746C754DLL;
  *(v40 + 88) = 0xE800000000000000;
  *(v40 + 96) = 1;
  *(v40 + 120) = MEMORY[0x277D839B0];
  *(v40 + 128) = 0x614E74757074754FLL;
  *(v40 + 136) = 0xEA0000000000656DLL;
  v41 = v38;
  v86 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v42 = [v93 bundleURL];
  sub_23E1FBF9C();

  v43 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v40 + 144) = v44;
  *(v40 + 168) = v39;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 216) = v89;
  *(v40 + 184) = 0xE500000000000000;
  *(v40 + 192) = &unk_285024BB0;
  v45 = MEMORY[0x277D837D0];
  *(inited + 280) = sub_23E1FDABC();
  v46 = *MEMORY[0x277D7CBA0];
  *(inited + 304) = v88;
  *(inited + 312) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_23E2235B0;
  v88 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v47 = swift_allocObject();
  *(v47 + 16) = v87;
  v48 = *MEMORY[0x277D7CDF8];
  *(v47 + 32) = *MEMORY[0x277D7CDF8];
  *(v47 + 40) = 0xD000000000000014;
  *(v47 + 48) = 0x800000023E24EAF0;
  v49 = *MEMORY[0x277D7CE70];
  *(v47 + 64) = v45;
  *(v47 + 72) = v49;
  *(v47 + 80) = 0x7475706E494657;
  *(v47 + 88) = 0xE700000000000000;
  v50 = *MEMORY[0x277D7CE80];
  *(v47 + 104) = v45;
  *(v47 + 112) = v50;
  v51 = v46;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  sub_23E1FDCBC();
  *&v87 = v55;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v56 = v93;
  v57 = [v93 bundleURL];
  sub_23E1FBF9C();

  v58 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v47 + 120) = v59;
  v60 = *MEMORY[0x277D7CEA8];
  v61 = v91;
  *(v47 + 144) = v91;
  *(v47 + 152) = v60;
  v62 = v60;
  v63 = sub_23E1FDCBC();
  v86 = v64;
  *&v87 = v63;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v65 = [v56 bundleURL];
  sub_23E1FBF9C();

  v66 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v47 + 184) = v61;
  *(v47 + 160) = v67;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v68 = sub_23E1FDABC();
  v69 = sub_23DF3BE9C(v68);
  v70 = v89;
  *(v89 + 32) = v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 320) = v70;
  v72 = *MEMORY[0x277D7CB98];
  *(inited + 344) = v71;
  *(inited + 352) = v72;
  v73 = v72;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v74 = [v93 bundleURL];
  sub_23E1FBF9C();

  v75 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v77 = v76;
  v78 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v79 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v80 = MEMORY[0x277D7CB78];
  *(inited + 360) = v78;
  v81 = *v80;
  *(inited + 384) = v79;
  *(inited + 392) = v81;
  *(inited + 424) = MEMORY[0x277D839B0];
  *(inited + 400) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v82 = v81;
  v83 = sub_23E1FDABC();
  return sub_23DF3BF9C(v83);
}

id sub_23DEE44E8()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23E1FC1DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224420;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x800000023E24FAE0;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v53 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v54 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v50[1] = v5;
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v53 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v51 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_23E222340;
  v19 = *MEMORY[0x277D7CC30];
  *(v18 + 32) = *MEMORY[0x277D7CC30];
  v20 = v17;
  v21 = v19;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v22 = [v54 bundleURL];
  sub_23E1FBF9C();

  v23 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v18 + 64) = v53;
  *(v18 + 40) = v24;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v25 = sub_23E1FDABC();
  v26 = v51;
  *(inited + 120) = sub_23DF3BE54(v25);
  v27 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v26;
  *(inited + 152) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 160) = &unk_285024BE0;
  v29 = *MEMORY[0x277D7CB48];
  *(inited + 184) = v28;
  *(inited + 192) = v29;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v30 = *MEMORY[0x277D7CB60];
  v31 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v30;
  *(inited + 240) = 0x6C69662E6B636F6CLL;
  *(inited + 248) = 0xE90000000000006CLL;
  v32 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v31;
  *(inited + 272) = v32;
  v33 = v27;
  v34 = v29;
  v35 = v30;
  v36 = v32;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v37 = v54;
  v38 = [v54 bundleURL];
  sub_23E1FBF9C();

  v39 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 280) = v40;
  v41 = *MEMORY[0x277D7CB98];
  *(inited + 304) = v53;
  *(inited + 312) = v41;
  v42 = v41;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v43 = [v37 bundleURL];
  sub_23E1FBF9C();

  v44 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v46 = v45;
  v47 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  *(inited + 344) = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 320) = v47;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key);
  v48 = sub_23E1FDABC();
  return sub_23DF3BF9C(v48);
}

uint64_t sub_23DEE4BA0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
  v4 = OUTLINED_FUNCTION_31_5();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_23DEE4C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_23DEE4C9C()
{
  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280DAE278;
  v1 = sub_23E1FDBDC();
  v2 = sub_23E1FDBDC();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = sub_23E1FDC1C();
  return v4;
}

uint64_t sub_23DEE4DD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v1 = *MEMORY[0x277CCA470];
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v2;
  v3 = sub_23DEE4C9C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  return sub_23E1FDABC();
}

uint64_t sub_23DEE4E74(uint64_t a1)
{
  v2 = sub_23DEEC7F4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23DEE4EB0(uint64_t a1)
{
  v2 = sub_23DEEC7F4();

  return MEMORY[0x28211F4A8](a1, v2);
}

id sub_23DEE4F00()
{
  v1 = OBJC_IVAR___WFIntercomAction____lazy_storage___speechSynthesizer;
  v2 = *(v0 + OBJC_IVAR___WFIntercomAction____lazy_storage___speechSynthesizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFIntercomAction____lazy_storage___speechSynthesizer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SpeechSynthesizerAsyncWrapper()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23DEE4F74()
{
  v1 = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  v2 = *(v0 + OBJC_IVAR___WFIntercomAction____lazy_storage___announce);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFIntercomAction____lazy_storage___announce);
  }

  else
  {
    v4 = [objc_allocWithZone(WFAnnounceWrapper) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_23DEE5010(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v3 = sub_23E1FD03C();
  v2[56] = v3;
  v4 = *(v3 - 8);
  v2[57] = v4;
  v5 = *(v4 + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v6 = sub_23E1FBFBC();
  v2[61] = v6;
  v7 = *(v6 - 8);
  v2[62] = v7;
  v8 = *(v7 + 64) + 15;
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = sub_23E1FDECC();
  v2[67] = sub_23E1FDEBC();
  v10 = sub_23E1FDE6C();
  v2[68] = v10;
  v2[69] = v9;

  return MEMORY[0x2822009F8](sub_23DEE5198, v10, v9);
}

uint64_t sub_23DEE5198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_142_0();
  if ([*(v10 + 432) numberOfItems] < 1)
  {
    v15 = *(v10 + 536);
    v16 = *(v10 + 464);

    v17 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v18 = sub_23E1FD02C();
    v19 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_118(v19))
    {
      *OUTLINED_FUNCTION_74_0() = 0;
      OUTLINED_FUNCTION_14_5();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_16_1();
    }

    v26 = *(v10 + 456);
    v25 = *(v10 + 464);
    v27 = *(v10 + 448);

    v28 = *(v26 + 8);
    v29 = OUTLINED_FUNCTION_50();
    v30(v29);
    sub_23DEEC230();
    OUTLINED_FUNCTION_31_5();
    *v31 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_7_9();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_171();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }

  else
  {
    v11 = [objc_opt_self() sharedManager];
    *(v10 + 560) = v11;
    *(v10 + 16) = v10;
    *(v10 + 24) = sub_23DEE53E4;
    v12 = swift_continuation_init();
    *(v10 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D5B8, &qword_23E2294D8);
    *(v10 + 208) = MEMORY[0x277D85DD0];
    *(v10 + 216) = 1107296256;
    *(v10 + 224) = sub_23DEEF88C;
    *(v10 + 232) = &block_descriptor_36;
    *(v10 + 240) = v12;
    [v11 ensureHomesAreLoadedWithCompletionHandler_];
    OUTLINED_FUNCTION_171();

    return MEMORY[0x282200938](v13);
  }
}

uint64_t sub_23DEE53E4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 552);
  v6 = *(v4 + 544);

  return MEMORY[0x2822009F8](sub_23DEE54E0, v6, v5);
}

uint64_t sub_23DEE54E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_142_0();
  v11 = *(v10 + 440);

  v12 = *(v11 + OBJC_IVAR___WFIntercomAction_homeParameterKey);
  v13 = *(v11 + OBJC_IVAR___WFIntercomAction_homeParameterKey + 8);
  sub_23DE38DA8(0, &qword_27E32D5C0, 0x277D7C4B0);
  OUTLINED_FUNCTION_50();
  v14 = sub_23E1FE3FC();
  *(v10 + 568) = v14;
  if (v14)
  {
    v16 = *(v10 + 432);
    v15 = *(v10 + 440);
    v17 = sub_23DEE4F74();
    [v17 prewarmWithHandler_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D5C8, &unk_23E2294E0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_23E222370;
    *(v18 + 32) = sub_23DE38DA8(0, &qword_27E32D5D0, 0x277CFC208);
    *(v18 + 40) = sub_23DE38DA8(0, &unk_280DAE700, 0x277CFC530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C390, &qword_23E224190);
    v19 = sub_23E1FDDCC();
    *(v10 + 576) = v19;

    *(v10 + 80) = v10;
    *(v10 + 120) = v10 + 400;
    *(v10 + 88) = sub_23DEE57F8;
    v20 = swift_continuation_init();
    *(v10 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D5D8, &unk_23E2294F0);
    *(v10 + 272) = MEMORY[0x277D85DD0];
    *(v10 + 280) = 1107296256;
    *(v10 + 288) = sub_23DEE722C;
    *(v10 + 296) = &block_descriptor_39;
    *(v10 + 304) = v20;
    [v16 generateCollectionByCoercingToItemClasses:v19 completionHandler:v10 + 272];
    OUTLINED_FUNCTION_171();

    return MEMORY[0x282200938](v21);
  }

  else
  {
    v23 = *(v10 + 536);
    v24 = *(v10 + 472);

    v25 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v26 = sub_23E1FD02C();
    v27 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_118(v27))
    {
      *OUTLINED_FUNCTION_74_0() = 0;
      OUTLINED_FUNCTION_14_5();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_16_1();
    }

    v33 = *(v10 + 472);
    v34 = *(v10 + 448);
    v35 = *(v10 + 456);

    v36 = *(v35 + 8);
    v37 = OUTLINED_FUNCTION_50();
    v38(v37);
    sub_23DEEC230();
    OUTLINED_FUNCTION_31_5();
    *v39 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_7_9();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_171();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
  }
}

uint64_t sub_23DEE57F8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[14];
  *(v1 + 584) = v4;
  v5 = v3[69];
  v6 = v3[68];
  if (v4)
  {
    v7 = sub_23DEE6DF4;
  }

  else
  {
    v7 = sub_23DEE591C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DEE591C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  v21 = *(v16 + 576);
  v79 = *(v16 + 400);
  *(v16 + 592) = v79;

  v22 = MEMORY[0x277D84F90];
  *(v16 + 416) = MEMORY[0x277D84F90];
  v23 = [v79 items];
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_38();
  v24 = sub_23E1FDDEC();
  *(v16 + 608) = v24;

  v25 = sub_23DE4D8B0(v24);
  *(v16 + 616) = v25;
  if (v25)
  {
    v26 = 0;
    v19 = 0x277CFC000;
    v23 = &selRef_string;
    do
    {
      *(v16 + 632) = v22;
      *(v16 + 624) = v22;
      v27 = *(v16 + 608);
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x23EF04DD0](v26);
      }

      else
      {
        if (v26 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v28 = *(v27 + 8 * v26 + 32);
      }

      v29 = v28;
      *(v16 + 640) = v28;
      *(v16 + 648) = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      objc_opt_self();
      v30 = OUTLINED_FUNCTION_120();
      if (v30)
      {
        v31 = v30;
        v18 = v29;
        v32 = sub_23DE5C91C(v31, &selRef_string);
        *(v16 + 656) = v33;
        if (v33)
        {
          v17 = v32;
          OUTLINED_FUNCTION_13_7();
          if (v34)
          {
            v74 = *(v16 + 440);
            *(v16 + 664) = sub_23DEE4F00();
            v75 = swift_task_alloc();
            *(v16 + 672) = v75;
            *v75 = v16;
            OUTLINED_FUNCTION_4_13(v75);
            OUTLINED_FUNCTION_56_1();

            return sub_23DEEAD6C(v76, v77);
          }
        }
      }

      objc_opt_self();
      v35 = OUTLINED_FUNCTION_120();
      if (v35)
      {
        v50 = v35;
        v51 = *(v16 + 528);
        v52 = sub_23E1FDEBC();
        v53 = OUTLINED_FUNCTION_34_3(v52);
        *(v16 + 704) = v53;
        *(v53 + 16) = v50;
        v54 = *(MEMORY[0x277D85A40] + 4);
        v55 = swift_task_alloc();
        *(v16 + 712) = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D520, &qword_23E229480);
        OUTLINED_FUNCTION_26_3();
        *v55 = v56;
        OUTLINED_FUNCTION_5_10();
        OUTLINED_FUNCTION_3_9();
        OUTLINED_FUNCTION_56_1();

        return MEMORY[0x2822008A0](v57, v58, v59, v60, v61, v62, v63, v64);
      }

      v26 = *(v16 + 648);
    }

    while (v26 != *(v16 + 616));
  }

  *(v16 + 728) = v22;
  v36 = *(v16 + 608);

  v37 = sub_23DE4D8B0(v22);
  *(v16 + 736) = v37;
  v38 = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v16 + 744) = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v16 + 752) = *MEMORY[0x277D7A440];
  v39 = *(v16 + 728);
  if (v37)
  {
    v40 = v39 & 0xC000000000000001;
    sub_23DE59014(0, (v39 & 0xC000000000000001) == 0, v39);
    v27 = *(v16 + 728);
    if (v40)
    {
LABEL_32:
      v41 = MEMORY[0x23EF04DD0](0, v27);
    }

    else
    {
      v41 = *(v27 + 32);
    }

    v42 = [OUTLINED_FUNCTION_16_10(v41) fileURL];
    OUTLINED_FUNCTION_48_4();

    v43 = swift_task_alloc();
    v44 = OUTLINED_FUNCTION_15_10(v43);
    *v44 = v45;
    OUTLINED_FUNCTION_1_17(v44);
    OUTLINED_FUNCTION_56_1();

    return sub_23DEE77CC(v46, v47);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();

    [*(v17 + v38) invalidate];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_56_1();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, v79, *(&v79 + 1), a13, a14, a15, a16);
  }
}

uint64_t sub_23DEE5CF4()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[84];
  v6 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v7 = v6;
  v3[85] = v8;
  v3[86] = v0;

  v9 = v2[83];
  v10 = v2[82];
  if (v0)
  {
    v11 = v3[78];
    v12 = v3[76];

    OUTLINED_FUNCTION_36_4();
    v15 = sub_23DEE6EB8;
  }

  else
  {

    OUTLINED_FUNCTION_36_4();
    v15 = sub_23DEE5E74;
  }

  return MEMORY[0x2822009F8](v15, v13, v14);
}

uint64_t sub_23DEE5E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  v18 = *(v14 + 680);
  if (v18)
  {
    v19 = v18;
    MEMORY[0x23EF045A0]();
    OUTLINED_FUNCTION_39_2();
    if (v20)
    {
LABEL_36:
      OUTLINED_FUNCTION_33_4();
    }

    OUTLINED_FUNCTION_46_3();

    v21 = *(v14 + 416);
    v22 = v21;
  }

  else
  {

    v22 = *(v14 + 632);
    v21 = *(v14 + 624);
  }

  v19 = &selRef_string;
  while (1)
  {
    v15 = *(v14 + 648);
    if (v15 == *(v14 + 616))
    {
      break;
    }

    *(v14 + 632) = v22;
    *(v14 + 624) = v21;
    v23 = *(v14 + 608);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x23EF04DD0](v15);
    }

    else
    {
      if (v15 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v24 = *(v23 + 8 * v15 + 32);
    }

    v25 = v24;
    *(v14 + 640) = v24;
    *(v14 + 648) = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    objc_opt_self();
    v26 = OUTLINED_FUNCTION_120();
    if (v26)
    {
      v27 = v26;
      v17 = v25;
      v28 = sub_23DE5C91C(v27, &selRef_string);
      *(v14 + 656) = v29;
      if (v29)
      {
        v16 = v28;
        OUTLINED_FUNCTION_13_7();
        if (v30)
        {
          v63 = *(v14 + 440);
          *(v14 + 664) = sub_23DEE4F00();
          v64 = swift_task_alloc();
          *(v14 + 672) = v64;
          *v64 = v14;
          OUTLINED_FUNCTION_4_13();
          OUTLINED_FUNCTION_72_0();

          return sub_23DEEAD6C(v65, v66);
        }
      }
    }

    objc_opt_self();
    v31 = OUTLINED_FUNCTION_120();
    if (v31)
    {
      v47 = v31;
      v48 = *(v14 + 528);
      v49 = sub_23E1FDEBC();
      v50 = OUTLINED_FUNCTION_34_3(v49);
      *(v14 + 704) = v50;
      *(v50 + 16) = v47;
      v51 = *(MEMORY[0x277D85A40] + 4);
      v52 = swift_task_alloc();
      *(v14 + 712) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D520, &qword_23E229480);
      OUTLINED_FUNCTION_26_3();
      *v52 = v53;
      OUTLINED_FUNCTION_5_10();
      OUTLINED_FUNCTION_3_9();
      OUTLINED_FUNCTION_72_0();

      return MEMORY[0x2822008A0](v54, v55, v56, v57, v58, v59, v60, v61);
    }
  }

  *(v14 + 728) = v22;
  v32 = *(v14 + 608);

  v33 = sub_23DE4D8B0(v22);
  *(v14 + 736) = v33;
  v34 = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v14 + 744) = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v14 + 752) = *MEMORY[0x277D7A440];
  v35 = *(v14 + 728);
  if (v33)
  {
    v36 = v35 & 0xC000000000000001;
    sub_23DE59014(0, (v35 & 0xC000000000000001) == 0, v35);
    v37 = *(v14 + 728);
    if (v36)
    {
      v38 = MEMORY[0x23EF04DD0](0, v37);
    }

    else
    {
      v38 = *(v37 + 32);
    }

    v39 = [OUTLINED_FUNCTION_16_10(v38) fileURL];
    OUTLINED_FUNCTION_48_4();

    v40 = swift_task_alloc();
    v41 = OUTLINED_FUNCTION_15_10(v40);
    *v41 = v42;
    OUTLINED_FUNCTION_1_17(v41);
    OUTLINED_FUNCTION_72_0();

    return sub_23DEE77CC(v43, v44);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();

    [*(v16 + v34) invalidate];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_72_0();

    return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DEE6220()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[89];
  *v4 = *v1;
  v3[90] = v0;

  v6 = v2[88];
  v7 = v2[87];
  if (v0)
  {
    v8 = v3[78];
    v9 = v3[76];

    OUTLINED_FUNCTION_36_4();
    v12 = sub_23DEE6F7C;
  }

  else
  {

    OUTLINED_FUNCTION_36_4();
    v12 = sub_23DEE6390;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_23DEE6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  v20 = *(v15 + 424);
  if (v20)
  {
    v14 = v20;
    MEMORY[0x23EF045A0]();
    OUTLINED_FUNCTION_39_2();
    if (v21)
    {
      goto LABEL_35;
    }

    goto LABEL_3;
  }

  v22 = *(v15 + 632);
  v23 = *(v15 + 624);
  while (1)
  {
    v24 = *(v15 + 648);
    if (v24 == *(v15 + 616))
    {
      break;
    }

    *(v15 + 632) = v22;
    *(v15 + 624) = v23;
    v25 = *(v15 + 608);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x23EF04DD0](v24);
    }

    else
    {
      if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v26 = *(v25 + 8 * v24 + 32);
    }

    v14 = v26;
    *(v15 + 640) = v26;
    *(v15 + 648) = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      OUTLINED_FUNCTION_33_4();
LABEL_3:
      OUTLINED_FUNCTION_46_3();

      v22 = *(v15 + 416);
      v23 = v22;
      continue;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_38();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v17 = v14;
      v29 = sub_23DE5C91C(v28, &selRef_string);
      *(v15 + 656) = v30;
      if (v30)
      {
        v16 = v29;
        OUTLINED_FUNCTION_13_7();
        if (v31)
        {
          v64 = *(v15 + 440);
          *(v15 + 664) = sub_23DEE4F00();
          v65 = swift_task_alloc();
          *(v15 + 672) = v65;
          *v65 = v15;
          OUTLINED_FUNCTION_4_13();
          OUTLINED_FUNCTION_72_0();

          return sub_23DEEAD6C(v66, v67);
        }
      }
    }

    objc_opt_self();
    OUTLINED_FUNCTION_38();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v48 = v32;
      v49 = *(v15 + 528);
      v50 = sub_23E1FDEBC();
      v51 = OUTLINED_FUNCTION_34_3(v50);
      *(v15 + 704) = v51;
      *(v51 + 16) = v48;
      v52 = *(MEMORY[0x277D85A40] + 4);
      v53 = swift_task_alloc();
      *(v15 + 712) = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D520, &qword_23E229480);
      OUTLINED_FUNCTION_26_3();
      *v53 = v54;
      OUTLINED_FUNCTION_5_10();
      OUTLINED_FUNCTION_3_9();
      OUTLINED_FUNCTION_72_0();

      return MEMORY[0x2822008A0](v55, v56, v57, v58, v59, v60, v61, v62);
    }
  }

  *(v15 + 728) = v22;
  v33 = *(v15 + 608);

  v34 = sub_23DE4D8B0(v22);
  *(v15 + 736) = v34;
  v35 = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v15 + 744) = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v15 + 752) = *MEMORY[0x277D7A440];
  v36 = *(v15 + 728);
  if (v34)
  {
    v37 = v36 & 0xC000000000000001;
    sub_23DE59014(0, (v36 & 0xC000000000000001) == 0, v36);
    v38 = *(v15 + 728);
    if (v37)
    {
      v39 = MEMORY[0x23EF04DD0](0, v38);
    }

    else
    {
      v39 = *(v38 + 32);
    }

    v40 = [OUTLINED_FUNCTION_16_10(v39) fileURL];
    OUTLINED_FUNCTION_48_4();

    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_15_10(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_1_17(v42);
    OUTLINED_FUNCTION_72_0();

    return sub_23DEE77CC(v44, v45);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();

    [*&v17[v35] invalidate];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_72_0();

    return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DEE6740()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v6 = *(v5 + 776);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[98] = v0;

  if (v0)
  {
    v9 = v3[91];
    (*(v3[62] + 8))(v3[64], v3[61]);

    v10 = v3[69];
    v11 = v3[68];
    v12 = sub_23DEE703C;
  }

  else
  {
    v13 = v3[64];
    v14 = v3[61];
    v15 = v3[62];
    v16 = *(v15 + 8);
    v3[99] = v16;
    v3[100] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v13, v14);
    v10 = v3[69];
    v11 = v3[68];
    v12 = sub_23DEE6894;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_23DEE6894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_127();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[94];
  v28 = v24[65];
  v30 = v24[62];
  v29 = v24[63];
  v32 = v24[60];
  v31 = v24[61];
  sub_23E1FCB9C();
  (*(v30 + 16))(v29, v28, v31);
  v33 = sub_23E1FD02C();
  v34 = sub_23E1FE19C();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v24[100];
  v37 = v24[99];
  v38 = v24[63];
  v39 = v24[60];
  v40 = v24[61];
  v42 = v24[56];
  v41 = v24[57];
  if (v35)
  {
    v62 = v24[56];
    v43 = swift_slowAlloc();
    v60 = v34;
    v44 = swift_slowAlloc();
    a13 = v44;
    *v43 = 136315138;
    v45 = sub_23E1FBF3C();
    v61 = v39;
    v47 = v46;
    v48 = OUTLINED_FUNCTION_158_0();
    v37(v48);
    v49 = sub_23DE56B40(v45, v47, &a13);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_23DE30000, v33, v60, "Making Intercom announcement with file at URL: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();

    (*(v41 + 8))(v61, v62);
  }

  else
  {

    v50 = OUTLINED_FUNCTION_158_0();
    v37(v50);
    (*(v41 + 8))(v39, v42);
  }

  v51 = v24[71];
  v52 = v24[65];
  v53 = *(v24[55] + v24[93]);
  v24[101] = v53;
  v54 = v53;
  v55 = sub_23E1FBF6C();
  v24[102] = v55;
  v24[18] = v24;
  v24[19] = sub_23DEE6B28;
  v56 = swift_continuation_init();
  v24[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  v24[42] = MEMORY[0x277D85DD0];
  v24[43] = 1107296256;
  v24[44] = sub_23DEE74E8;
  v24[45] = &block_descriptor_43;
  v24[46] = v56;
  [v54 requestAnnouncementWithAudioFileURL:v55 homeAreaDescriptor:v51 completionHandler:v24 + 42];
  OUTLINED_FUNCTION_56_1();

  return MEMORY[0x282200938](v57);
}

uint64_t sub_23DEE6B28()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 176);
  v2[103] = v5;
  if (v5)
  {
    v6 = v2[91];

    v7 = v2[69];
    v8 = v2[68];
    v9 = sub_23DEE7110;
  }

  else
  {
    v7 = v2[69];
    v8 = v2[68];
    v9 = sub_23DEE6C3C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

id sub_23DEE6C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  v17 = *(v14 + 816);
  v18 = *(v14 + 808);
  v19 = *(v14 + 800);
  v20 = *(v14 + 792);
  v21 = *(v14 + 520);
  v22 = *(v14 + 488);

  v20(v21, v22);
  v23 = *(v14 + 768);
  if (v23 == *(v14 + 736))
  {
    v24 = *(v14 + 744);
    v25 = *(v14 + 728);
    OUTLINED_FUNCTION_2_16();

    [*(v19 + v24) invalidate];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_72_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v35 = *(v14 + 728);
    v36 = (v35 & 0xC000000000000001);
    sub_23DE59014(*(v14 + 768), (v35 & 0xC000000000000001) == 0, v35);
    v37 = *(v14 + 728);
    if (v36)
    {
      result = MEMORY[0x23EF04DD0](v23, v37);
    }

    else
    {
      result = *(v37 + 8 * v23 + 32);
    }

    *(v14 + 760) = result;
    *(v14 + 768) = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = *(v14 + 512);
      v39 = [result fileURL];
      OUTLINED_FUNCTION_48_4();

      v40 = swift_task_alloc();
      v41 = OUTLINED_FUNCTION_15_10(v40);
      *v41 = v42;
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_72_0();

      return sub_23DEE77CC(v43, v44);
    }
  }

  return result;
}

uint64_t sub_23DEE6DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_142_0();
  v11 = v10[73];
  v12 = v10[72];
  v13 = v10[71];
  v14 = v10[67];
  v15 = v10[55];

  swift_willThrow();

  [*(v15 + OBJC_IVAR___WFIntercomAction____lazy_storage___announce) invalidate];
  v16 = v10[73];
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_171();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_23DEE6EB8()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_27_6();

  [*(v4 + OBJC_IVAR___WFIntercomAction____lazy_storage___announce) invalidate];

  v5 = *(v2 + 688);
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_23DEE6F7C()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_27_6();

  [*(v4 + OBJC_IVAR___WFIntercomAction____lazy_storage___announce) invalidate];

  v5 = *(v2 + 720);
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_23DEE703C()
{
  OUTLINED_FUNCTION_33_0();
  v1 = *(v0 + 760);
  v2 = *(v0 + 744);
  v3 = *(v0 + 600);
  v4 = *(v0 + 568);
  v5 = *(v0 + 536);
  v6 = *(v0 + 440);

  [*(v6 + v2) invalidate];

  v7 = *(v0 + 784);
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_19();

  return v8();
}

uint64_t sub_23DEE7110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  v17 = v16[103];
  v37 = v16[101];
  v18 = v16[100];
  v19 = v16[99];
  v20 = v16[95];
  v38 = v16[93];
  v39 = v16[102];
  v21 = v16[75];
  v22 = v16[74];
  v40 = v16[71];
  v23 = v16[67];
  v24 = v16[65];
  v25 = v16[61];
  v26 = v16[55];

  swift_willThrow();

  v19(v24, v25);
  [*(v26 + v38) invalidate];

  v27 = v16[103];
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_56_1();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, a13, a14, a15, a16);
}

uint64_t *sub_23DEE722C(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    return sub_23DEE4BA0(v8, a4);
  }

  if (a2)
  {
    if (a3)
    {
      return sub_23DEE4C2C(v8, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23DEE72B0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_23DEEC634;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DEBE4C4;
  aBlock[3] = &block_descriptor_52;
  v11 = _Block_copy(aBlock);

  [a2 getFileRepresentation:v11 forType:0];
  _Block_release(v11);
}

uint64_t sub_23DEE7464(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
    return sub_23E1FDE7C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
    return sub_23E1FDE8C();
  }
}

uint64_t sub_23DEE74E8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_23DEE4BA0(*v3, a2);
  }

  v5 = *v3;

  return j__swift_continuation_throwingResume();
}

uint64_t sub_23DEE75D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEE7670, v5, v4);
}

uint64_t sub_23DEE7670()
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
  v7[1] = sub_23DE520D4;
  v8 = v0[4];
  v9 = v0[2];

  return sub_23DEE5010(v9);
}

void sub_23DEE7734()
{
  v0 = [objc_opt_self() sharedAnnouncementsDirectoryURL];
  if (v0)
  {
    v1 = v0;
    sub_23E1FBF9C();
  }

  else
  {
    sub_23DEEC230();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }
}

uint64_t sub_23DEE77CC(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3[80] = v2;
  v3[79] = a2;
  v3[78] = a1;
  v4 = sub_23E1FE23C();
  v3[81] = v4;
  v5 = *(v4 - 8);
  v3[82] = v5;
  v6 = *(v5 + 64) + 15;
  v3[83] = swift_task_alloc();
  v7 = sub_23E1FE22C();
  v3[84] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[85] = swift_task_alloc();
  v9 = *(*(sub_23E1FDA6C() - 8) + 64) + 15;
  v3[86] = swift_task_alloc();
  v10 = sub_23E1FC0EC();
  v3[87] = v10;
  v11 = *(v10 - 8);
  v3[88] = v11;
  v12 = *(v11 + 64) + 15;
  v3[89] = swift_task_alloc();
  v13 = sub_23E1FD03C();
  v3[90] = v13;
  v14 = *(v13 - 8);
  v3[91] = v14;
  v15 = *(v14 + 64) + 15;
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v16 = sub_23E1FBFBC();
  v3[96] = v16;
  v17 = *(v16 - 8);
  v3[97] = v17;
  v18 = *(v17 + 64) + 15;
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[104] = sub_23E1FDECC();
  v3[105] = sub_23E1FDEBC();
  v19 = sub_23E1FDE6C();
  v3[106] = v19;
  v3[107] = v20;
  v21 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23DEE7AD4, v19, v20);
}

uint64_t sub_23DEE7AD4()
{
  OUTLINED_FUNCTION_142_0();
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[79];
  sub_23DE38DA8(0, &qword_27E32D528, 0x277CE63D8);
  v6 = *(v3 + 16);
  v0[108] = v6;
  v0[109] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v0[110] = sub_23DEE9FB0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D530, &qword_23E229488);
  v0[111] = sub_23E1FCA1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D538, &qword_23E229490);
  v0[112] = sub_23E1FCA2C();
  v0[113] = sub_23E1FDEBC();
  v7 = *(MEMORY[0x277D82DC8] + 4);
  v8 = swift_task_alloc();
  v0[114] = v8;
  *v8 = v0;
  v8[1] = sub_23DEE7C98;
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x2821FAF08]();
}

uint64_t sub_23DEE7C98()
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_142_0();
  v19 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[114];
  *v4 = *v1;
  v3[115] = v0;

  v6 = v2[113];
  v7 = v2[112];
  v8 = v2[111];
  if (v0)
  {
    v9 = v2[113];
  }

  else
  {
    v12 = v2[112];
  }

  v10 = v3[107];
  v11 = v3[106];
  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_23DEE7E48()
{
  v92 = *MEMORY[0x277D85DE8];
  if ((*(v0 + 1288) & 1) == 0)
  {
    v33 = *(v0 + 880);
    v34 = *(v0 + 840);
    v35 = *(v0 + 760);

    v36 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v37 = v33;
    v38 = sub_23E1FD02C();
    LOBYTE(v33) = sub_23E1FE1BC();

    if (os_log_type_enabled(v38, v33))
    {
      v39 = *(v0 + 880);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      *(v40 + 4) = v39;
      *v41 = v39;
      v42 = v39;
      OUTLINED_FUNCTION_14_5();
      _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
      sub_23DEEC284(v41, &unk_27E32C190, &qword_23E224B70);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_16_1();
    }

    v48 = *(v0 + 880);
    v49 = *(v0 + 760);
    v50 = *(v0 + 728);
    v51 = *(v0 + 720);

    v52 = *(v50 + 8);
    v53 = OUTLINED_FUNCTION_50();
    v54(v53);
    sub_23DEEC230();
    OUTLINED_FUNCTION_31_5();
    *v55 = 3;
    goto LABEL_17;
  }

  v1 = *(v0 + 632);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1184);
  sub_23E1FE35C();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  sub_23E1FBFAC();
  v9 = sub_23E1FDBDC();

  *(v0 + 608) = 0;
  v10 = [v8 attributesOfItemAtPath:v9 error:v0 + 608];

  v11 = *(v0 + 608);
  if (!v10)
  {
    v48 = *(v0 + 880);
    v56 = *(v0 + 840);
    v57 = v11;

    sub_23E1FBECC();

LABEL_17:
    swift_willThrow();

    goto LABEL_18;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_23DEEC534(&qword_27E32BDA0, type metadata accessor for FileAttributeKey);
  v12 = sub_23E1FDAAC();
  v13 = v11;

  v14 = *MEMORY[0x277CCA1C0];
  sub_23DE468D8(v12, (v0 + 528));

  if (!*(v0 + 552))
  {
    sub_23DEEC284(v0 + 528, &qword_27E32C320, &unk_23E224B40);
LABEL_23:
    if (v6 <= 60.0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v6 <= 60.0 && *(v0 + 560) < 0xF4241uLL)
  {
LABEL_9:
    v90 = v7;
    v16 = *(v0 + 840);
    v17 = *(v0 + 736);

    v18 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v19 = sub_23E1FD02C();
    v20 = sub_23E1FE1AC();
    if (os_log_type_enabled(v19, v20))
    {
      *OUTLINED_FUNCTION_74_0() = 0;
      OUTLINED_FUNCTION_44_4(&dword_23DE30000, v21, v22, "Returning audio file URL as-is: it doesn't require compressing or trimming");
      OUTLINED_FUNCTION_56();
    }

    v91 = *(v0 + 920);
    v23 = *(v0 + 784);
    v24 = *(v0 + 736);
    v25 = *(v0 + 728);
    v26 = *(v0 + 720);
    v27 = *(v0 + 712);
    v28 = *(v0 + 704);
    v29 = *(v0 + 696);
    v30 = *(v0 + 640);

    (*(v25 + 8))(v24, v26);
    sub_23E1FC0DC();
    sub_23E1FC0AC();
    (*(v28 + 8))(v27, v29);
    sub_23DEEA048();

    OUTLINED_FUNCTION_158_0();
    v31 = sub_23E1FDBDC();

    sub_23DEE7734();
    if (v91)
    {
      v32 = *(v0 + 880);
    }

    else
    {
      v65 = *(v0 + 792);
      v66 = *(v0 + 784);
      v67 = *(v0 + 776);
      v68 = *(v0 + 768);
      v69 = *(v0 + 632);
      v70 = objc_opt_self();
      v71 = sub_23E1FBF6C();
      v72 = v68;
      v73 = *(v67 + 8);
      v73(v66, v72);
      v74 = [v70 proposedFileURLForFilename:v31 inDirectory:v71];

      sub_23E1FBF9C();
      v75 = [v90 defaultManager];
      v76 = sub_23E1FBF6C();
      v77 = sub_23E1FBF6C();
      *(v0 + 600) = 0;
      LODWORD(v65) = [v75 copyItemAtURL:v76 toURL:v77 error:v0 + 600];

      v78 = *(v0 + 600);
      v79 = *(v0 + 880);
      v80 = *(v0 + 792);
      if (v65)
      {
        v81 = *(v0 + 776);
        v82 = *(v0 + 768);
        v83 = *(v0 + 624);
        v84 = v78;

        (*(v81 + 32))(v83, v80, v82);
        OUTLINED_FUNCTION_12_12();
        OUTLINED_FUNCTION_30_5();

        OUTLINED_FUNCTION_19();
        v85 = *MEMORY[0x277D85DE8];
        goto LABEL_19;
      }

      v86 = *(v0 + 768);
      v87 = v78;
      sub_23E1FBECC();

      swift_willThrow();
      v73(v80, v86);
    }

LABEL_18:
    OUTLINED_FUNCTION_0_22();
    v88 = *(v0 + 712);
    v89 = *(v0 + 688);
    OUTLINED_FUNCTION_30_5();

    OUTLINED_FUNCTION_19();
    v59 = *MEMORY[0x277D85DE8];
LABEL_19:

    return v58();
  }

LABEL_24:
  v61 = *(v0 + 880);
  v62 = *MEMORY[0x277CE5E48];
  *(v0 + 928) = *MEMORY[0x277CE5E48];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = sub_23DEE86E8;
  v63 = swift_continuation_init();
  *(v0 + 488) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D550, &qword_23E229498);
  *(v0 + 432) = MEMORY[0x277D85DD0];
  *(v0 + 440) = 1107296256;
  *(v0 + 448) = sub_23DEEA0C8;
  *(v0 + 456) = &block_descriptor_15;
  *(v0 + 464) = v63;
  [v61 loadTracksWithMediaType:v62 completionHandler:v0 + 432];
  v64 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23DEE86E8()
{
  OUTLINED_FUNCTION_23();
  v11 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  *v3 = *v0;
  v5 = v4[6];
  *(v2 + 936) = v5;
  v6 = v4[107];
  v7 = v4[106];
  if (v5)
  {
    v8 = sub_23DEE9D4C;
  }

  else
  {
    v8 = sub_23DEE883C;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DEE883C()
{
  v85 = v0;
  v84 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 592);
  v2 = [objc_allocWithZone(MEMORY[0x277CE6548]) init];
  *(v0 + 944) = v2;
  v3 = 0;
  v78 = v1 & 0xC000000000000001;
  v80 = sub_23DE4D8B0(v1);
  v4 = MEMORY[0x277CC08F0];
  v82 = v1;
  v5 = *MEMORY[0x277CC08F0];
  *(v0 + 952) = *MEMORY[0x277CC08F0];
  v6 = *(v4 + 8);
  v7 = *(v4 + 12);
  *(v0 + 1280) = v6;
  *(v0 + 1284) = v7;
  v8 = *(v4 + 16);
  *(v0 + 960) = v8;
  v76 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v80 != v3)
  {
    if (v78)
    {
      v9 = MEMORY[0x23EF04DD0](v3, v82);
    }

    else
    {
      if (v3 >= *(v76 + 16))
      {
        goto LABEL_27;
      }

      v9 = *(v82 + 8 * v3 + 32);
    }

    v10 = v9;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
    }

    v11 = [v2 addMutableTrackWithMediaType:*(v0 + 928) preferredTrackID:0];
    if (!v11)
    {
      v34 = *(v0 + 840);
      v35 = *(v0 + 752);

      v36 = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      v37 = sub_23E1FD02C();
      v38 = sub_23E1FE1BC();
      if (os_log_type_enabled(v37, v38))
      {
        *OUTLINED_FUNCTION_74_0() = 0;
        OUTLINED_FUNCTION_44_4(&dword_23DE30000, v39, v40, "Could not create audio track for trimmed audio");
        OUTLINED_FUNCTION_56();
      }

      v41 = *(v0 + 880);
      v42 = *(v0 + 752);
      v43 = *(v0 + 728);
      v44 = *(v0 + 720);

      (*(v43 + 8))(v42, v44);
      sub_23DEEC230();
      OUTLINED_FUNCTION_31_5();
      *v45 = 3;
      swift_willThrow();

      goto LABEL_20;
    }

    v12 = v11;
    v13 = v2;
    CMTimeMake(&v83.start, 60, 1);
    value = v83.start.value;
    epoch = v83.start.epoch;
    v16 = *&v83.start.timescale;
    *(v0 + 1208) = v5;
    *(v0 + 1216) = v6;
    *(v0 + 1220) = v7;
    *(v0 + 1224) = v8;
    *(v0 + 1232) = value;
    *(v0 + 1240) = v16;
    *(v0 + 1248) = epoch;
    CMTimeRangeMake(&v83, (v0 + 1208), (v0 + 1232));
    v17 = v83.start.value;
    v18 = v83.duration.epoch;
    v19 = *&v83.duration.timescale;
    v20 = *&v83.start.epoch;
    v21 = *&v83.start.timescale;
    *(v0 + 584) = 0;
    *(v0 + 1080) = v17;
    *(v0 + 1088) = v21;
    *(v0 + 1096) = v20;
    *(v0 + 1112) = v19;
    *(v0 + 1120) = v18;
    *(v0 + 1256) = v5;
    *(v0 + 1264) = v6;
    *(v0 + 1268) = v7;
    *(v0 + 1272) = v8;
    v22 = [v12 insertTimeRange:v0 + 1080 ofTrack:v10 atTime:v0 + 1256 error:v0 + 584];
    v23 = *(v0 + 584);
    if (!v22)
    {
      v46 = *(v0 + 880);
      v47 = *(v0 + 840);
      v48 = v23;

      sub_23E1FBECC();

      swift_willThrow();
      goto LABEL_19;
    }

    v24 = v23;

    ++v3;
    v2 = v13;
  }

  [v2 copy];
  sub_23E1FE49C();
  swift_unknownObjectRelease();
  sub_23DE38DA8(0, &qword_27E32D558, 0x277CE64B0);
  if (!swift_dynamicCast())
  {
    v13 = *(v0 + 880);
    v49 = *(v0 + 840);

    sub_23DEEC230();
    OUTLINED_FUNCTION_31_5();
    *v50 = 1;
    swift_willThrow();

LABEL_19:
LABEL_20:
    v51 = *(v0 + 824);
    v52 = *(v0 + 816);
    v53 = *(v0 + 808);
    v54 = *(v0 + 800);
    v55 = *(v0 + 792);
    v56 = *(v0 + 784);
    v57 = *(v0 + 760);
    v58 = *(v0 + 752);
    v59 = *(v0 + 744);
    v60 = *(v0 + 736);
    v77 = *(v0 + 712);
    v79 = *(v0 + 688);
    OUTLINED_FUNCTION_30_5();

    OUTLINED_FUNCTION_19();
    v62 = *MEMORY[0x277D85DE8];

    return v61();
  }

  v25 = *(v0 + 920);
  v26 = *(v0 + 808);
  v27 = *(v0 + 712);
  v28 = *(v0 + 704);
  v29 = *(v0 + 696);
  v30 = *(v0 + 640);
  v31 = *(v0 + 568);
  *(v0 + 968) = v31;
  sub_23E1FC0DC();
  sub_23E1FC0AC();
  (*(v28 + 8))(v27, v29);
  sub_23DEEA048();

  OUTLINED_FUNCTION_158_0();
  v32 = sub_23E1FDBDC();

  sub_23DEE7734();
  if (v25)
  {
    v33 = *(v0 + 840);

    goto LABEL_20;
  }

  v81 = *(v0 + 816);
  v64 = *(v0 + 808);
  v65 = *(v0 + 776);
  v66 = *(v0 + 768);
  v67 = objc_opt_self();
  v68 = sub_23E1FBF6C();
  v69 = *(v65 + 8);
  *(v0 + 976) = v69;
  *(v0 + 984) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v69(v64, v66);
  v70 = [v67 proposedFileURLForFilename:v32 inDirectory:v68];

  sub_23E1FBF9C();
  v71 = objc_allocWithZone(MEMORY[0x277CE6410]);
  v72 = v31;
  *(v0 + 992) = sub_23DEEBE94(v72);
  *(v0 + 1000) = 0;
  v73 = *(v0 + 928);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 576;
  *(v0 + 88) = sub_23DEE8FF0;
  v74 = swift_continuation_init();
  *(v0 + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D560, &unk_23E2294A0);
  *(v0 + 368) = MEMORY[0x277D85DD0];
  *(v0 + 376) = 1107296256;
  *(v0 + 384) = sub_23DEEA0DC;
  *(v0 + 392) = &block_descriptor_18_0;
  *(v0 + 400) = v74;
  [v72 loadTracksWithMediaType:v73 completionHandler:v0 + 368];
  v75 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_23DEE8FF0()
{
  OUTLINED_FUNCTION_23();
  v11 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  *v3 = *v0;
  v5 = v4[14];
  *(v2 + 1008) = v5;
  v6 = v4[107];
  v7 = v4[106];
  if (v5)
  {
    v8 = sub_23DEE9E64;
  }

  else
  {
    v8 = sub_23DEE9144;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23DEE9144()
{
  v90 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 576);
  if (!sub_23DE4D8B0(v1))
  {
    v25 = *(v0 + 840);
    v26 = *(v0 + 744);

    v27 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v28 = sub_23E1FD02C();
    v29 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_118(v29))
    {
      *OUTLINED_FUNCTION_74_0() = 0;
      OUTLINED_FUNCTION_14_5();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_16_1();
    }

    v89 = *(v0 + 984);
    v83 = *(v0 + 992);
    v86 = *(v0 + 976);
    v35 = *(v0 + 968);
    v36 = *(v0 + 944);
    v37 = *(v0 + 880);
    v38 = *(v0 + 816);
    v39 = *(v0 + 768);
    v40 = *(v0 + 744);
    v41 = *(v0 + 728);
    v42 = *(v0 + 720);

    (*(v41 + 8))(v40, v42);
    sub_23DEEC230();
    OUTLINED_FUNCTION_31_5();
    *v43 = 3;
    swift_willThrow();

    v86(v38, v39);
    goto LABEL_9;
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
  *(v0 + 1016) = v2;
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 872);
  v7 = *(v0 + 864);
  v8 = *(v0 + 816);
  v9 = *(v0 + 800);
  v10 = *(v0 + 768);

  v11 = objc_allocWithZone(MEMORY[0x277CE6430]);
  v12 = v3;
  v13 = sub_23DEEC0B8(v12, 0, &selRef_initWithTrack_outputSettings_);
  *(v0 + 1024) = v13;
  v88 = v13;
  [v5 addOutput_];
  v7(v9, v8, v10);
  v14 = *MEMORY[0x277CE5D78];
  v15 = objc_allocWithZone(MEMORY[0x277CE6460]);
  v16 = sub_23DEEBF5C(v9, v14);
  *(v0 + 1032) = v16;
  v17 = *(v0 + 816);
  if (v4)
  {
    v18 = *(v0 + 992);
    v19 = *(v0 + 984);
    v20 = *(v0 + 976);
    v21 = *(v0 + 968);
    v22 = *(v0 + 944);
    v23 = *(v0 + 840);
    v24 = *(v0 + 768);

    v20(v17, v24);
LABEL_9:
    OUTLINED_FUNCTION_0_22();
    v81 = *(v0 + 712);
    v84 = *(v0 + 688);
    OUTLINED_FUNCTION_30_5();

    OUTLINED_FUNCTION_19();
    v45 = *MEMORY[0x277D85DE8];

    return v44();
  }

  v47 = v16;
  v48 = *(v0 + 992);
  v49 = *(v0 + 952);
  v50 = *(v0 + 928);
  v85 = *(v0 + 816);
  v87 = *(v0 + 832);
  v51 = *(v0 + 688);
  v52 = *(v0 + 680);
  v77 = *(v0 + 960);
  v78 = *(v0 + 672);
  v79 = *(v0 + 656);
  v80 = *(v0 + 664);
  v82 = *(v0 + 648);
  *(v0 + 1156) = 0;
  *(v0 + 1140) = 0;
  *(v0 + 1148) = 0;
  *(v0 + 1132) = 0;
  *(v0 + 1128) = 6553601;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v53 = *(v0 + 1280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222350;
  v55 = *MEMORY[0x277CB8280];
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v56;
  v57 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = 1633772320;
  v58 = *MEMORY[0x277CB82E0];
  *(inited + 80) = sub_23E1FDC1C();
  *(inited + 88) = v59;
  *(inited + 120) = v57;
  *(inited + 96) = 44100;
  v60 = *MEMORY[0x277CB82B0];
  *(inited + 128) = sub_23E1FDC1C();
  *(inited + 136) = v61;
  *(inited + 168) = v57;
  *(inited + 144) = 1;
  v62 = *MEMORY[0x277CB8250];
  *(inited + 176) = sub_23E1FDC1C();
  *(inited + 184) = v63;
  v64 = MEMORY[0x23EF027D0](v0 + 1128, 32);
  *(inited + 216) = MEMORY[0x277CC9318];
  *(inited + 192) = v64;
  *(inited + 200) = v65;
  v66 = sub_23E1FDABC();
  v67 = objc_allocWithZone(MEMORY[0x277CE6468]);
  v68 = sub_23DEEC0B8(v50, v66, &selRef_initWithMediaType_outputSettings_);
  *(v0 + 1040) = v68;
  [v68 setExpectsMediaDataInRealTime_];
  [v47 addInput_];
  [v47 startWriting];
  *(v0 + 1160) = v49;
  *(v0 + 1168) = v53;
  *(v0 + 1176) = v77;
  [v47 startSessionAtSourceTime_];
  [v48 startReading];
  sub_23DE38DA8(0, &qword_27E32D570, 0x277D85C78);
  sub_23E1FDA5C();
  *(v0 + 616) = MEMORY[0x277D84F90];
  sub_23DEEC534(&qword_27E32D578, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D580, &qword_23E2294B0);
  sub_23DEEC2F0();
  sub_23E1FE4EC();
  (*(v79 + 104))(v80, *MEMORY[0x277D85260], v82);
  v69 = sub_23E1FE24C();
  *(v0 + 1048) = v69;
  v70 = sub_23E1FDEBC();
  *(v0 + 1056) = v70;
  v71 = swift_task_alloc();
  *(v0 + 1064) = v71;
  v71[2] = v68;
  v71[3] = v69;
  v71[4] = v88;
  v71[5] = v48;
  v71[6] = v47;
  v71[7] = v85;
  v72 = *(MEMORY[0x277D859E0] + 4);
  v73 = swift_task_alloc();
  *(v0 + 1072) = v73;
  *v73 = v0;
  v73[1] = sub_23DEE98CC;
  v74 = *MEMORY[0x277D85DE8];
  v75 = MEMORY[0x277D85700];
  v76 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v73, v70, v75, 0xD000000000000025, 0x800000023E256560, sub_23DEEC354, v71, v76);
}

uint64_t sub_23DEE98CC()
{
  OUTLINED_FUNCTION_33_0();
  v11 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 1072);
  v3 = *(*v0 + 1064);
  v4 = *(*v0 + 1056);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  v7 = *(v1 + 856);
  v8 = *(v1 + 848);
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23DEE9A54, v8, v7);
}

uint64_t sub_23DEE9A54()
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 992);
  v19 = *(v0 + 976);
  v20 = *(v0 + 984);
  v6 = *(v0 + 968);
  v15 = *(v0 + 944);
  v16 = *(v0 + 1024);
  v17 = *(v0 + 864);
  v18 = *(v0 + 872);
  v7 = *(v0 + 840);
  v8 = *(v0 + 816);
  v9 = *(v0 + 768);
  v14 = *(v0 + 624);

  v17(v14, v8, v9);
  v10 = OUTLINED_FUNCTION_50();
  v19(v10);
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_30_5();

  OUTLINED_FUNCTION_19();
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_23DEE9C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v37 = *MEMORY[0x277D85DE8];
  v19 = *(v18 + 840);

  v20 = *(v18 + 920);
  OUTLINED_FUNCTION_0_22();
  v32 = v21;
  v33 = *(v18 + 712);
  v34 = *(v18 + 688);
  v35 = *(v18 + 680);
  v36 = *(v18 + 664);

  OUTLINED_FUNCTION_19();
  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_26();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, v34, v35, v36, v37, a16, a17, a18);
}

uint64_t sub_23DEE9D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v33 = *MEMORY[0x277D85DE8];
  v19 = v18[117];
  v20 = v18[110];
  v21 = v18[105];

  swift_willThrow();

  v22 = v18[117];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_8();

  OUTLINED_FUNCTION_19();
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_26();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_23DEE9E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v40 = *MEMORY[0x277D85DE8];
  v19 = v18[126];
  v20 = v18[124];
  v21 = v18[123];
  v22 = v18[122];
  v23 = v18[121];
  v24 = v18[118];
  v25 = v18[110];
  v26 = v18[105];
  v27 = v18[102];
  v28 = v18[96];

  swift_willThrow();

  v22(v27, v28);
  v29 = v18[126];
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_8();

  OUTLINED_FUNCTION_19();
  v30 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_26();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, v40, a16, a17, a18);
}

id sub_23DEE9FB0(uint64_t a1)
{
  v2 = sub_23E1FBF6C();
  v3 = [swift_getObjCClassFromMetadata() assetWithURL_];

  v4 = sub_23E1FBFBC();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t sub_23DEEA048()
{
  sub_23E1FB7BC();
  v1 = sub_23E1FDD7C();
  sub_23E1FDCFC();
  return v1;
}

uint64_t sub_23DEEA0F0(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    v10 = OUTLINED_FUNCTION_38();
    return sub_23DEE4BA0(v10, v11);
  }

  else
  {
    sub_23DE38DA8(0, a4, a5);
    sub_23E1FDDEC();
    v13 = OUTLINED_FUNCTION_38();
    return sub_23DEE4C4C(v13, v14);
  }
}

void sub_23DEEA174(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v35 = a3;
  v36 = a6;
  v33 = a2;
  v34 = a5;
  v31 = a4;
  v32 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8);
  v30 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = sub_23E1FBFBC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a7, v14);
  (*(v10 + 16))(v13, v32, v9);
  v18 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v19 = (v16 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v21 = v33;
  *(v20 + 2) = v33;
  *(v20 + 3) = a4;
  v22 = v34;
  v23 = v36;
  *(v20 + 4) = v34;
  *(v20 + 5) = v23;
  (*(v15 + 32))(&v20[v18], v17, v14);
  (*(v10 + 32))(&v20[v19], v13, v30);
  aBlock[4] = sub_23DEEC364;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DEEAB60;
  aBlock[3] = &block_descriptor_22;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v31;
  v27 = v22;
  v28 = v36;

  [v25 requestMediaDataWhenReadyOnQueue:v35 usingBlock:v24];
  _Block_release(v24);
}

void sub_23DEEA43C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v31 = a4;
  v24 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v28 = &v24 - v10;
  v25 = sub_23E1FBFBC();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v25);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  while ([a1 isReadyForMoreMediaData])
  {
    v14 = [a2 copyNextSampleBuffer];
    if (!v14)
    {
      [a1 markAsFinished];
      [v24 cancelReading];
      v16 = v25;
      (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v25);
      v18 = v28;
      v17 = v29;
      v19 = v30;
      (*(v29 + 16))(v28, v27, v30);
      v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v21 = (v12 + *(v17 + 80) + v20) & ~*(v17 + 80);
      v22 = swift_allocObject();
      (*(v11 + 32))(v22 + v20, v13, v16);
      (*(v17 + 32))(v22 + v21, v18, v19);
      aBlock[4] = sub_23DEEC45C;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DEEAB60;
      aBlock[3] = &block_descriptor_28;
      v23 = _Block_copy(aBlock);

      [v31 finishWritingWithCompletionHandler_];
      _Block_release(v23);
      return;
    }

    v15 = v14;
    [a1 appendSampleBuffer_];
  }
}

uint64_t sub_23DEEA738(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E1FBFBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23E1FD03C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  (*(v5 + 16))(v8, a1, v4);
  v15 = sub_23E1FD02C();
  v16 = sub_23E1FE1AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v9;
    v18 = v17;
    v25 = swift_slowAlloc();
    v28 = v25;
    *v18 = 136315138;
    sub_23DEEC534(&qword_27E32C820, MEMORY[0x277CC9260]);
    v19 = sub_23E1FE71C();
    v27 = a2;
    v21 = v20;
    (*(v5 + 8))(v8, v4);
    v22 = sub_23DE56B40(v19, v21, &v28);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_23DE30000, v15, v16, "Finished writing compressed audio to %s", v18, 0xCu);
    v23 = v25;
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23EF074C0](v23, -1, -1);
    MEMORY[0x23EF074C0](v18, -1, -1);

    (*(v10 + 8))(v13, v26);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8);
  return sub_23E1FDE8C();
}

id sub_23DEEAA44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR___WFIntercomAction_homeParameterKey];
  *v7 = 0x656D6F484657;
  *(v7 + 1) = 0xE600000000000000;
  *&v4[OBJC_IVAR___WFIntercomAction____lazy_storage___speechSynthesizer] = 0;
  *&v4[OBJC_IVAR___WFIntercomAction____lazy_storage___announce] = 0;
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
  v12.super_class = type metadata accessor for IntercomAction();
  v10 = objc_msgSendSuper2(&v12, sel_initWithIdentifier_definition_serializedParameters_, v8, a3, v9);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_23DEEAB60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = sub_23E1FB7CC();
  v1(v3);
}

id sub_23DEEAC3C()
{
  v1 = &v0[OBJC_IVAR___WFIntercomAction_homeParameterKey];
  *v1 = 0x656D6F484657;
  *(v1 + 1) = 0xE600000000000000;
  *&v0[OBJC_IVAR___WFIntercomAction____lazy_storage___speechSynthesizer] = 0;
  *&v0[OBJC_IVAR___WFIntercomAction____lazy_storage___announce] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IntercomAction();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_23DEEAD6C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_23DEEAD90, 0, 0);
}

uint64_t sub_23DEEAD90()
{
  OUTLINED_FUNCTION_33_0();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D520, &qword_23E229480);
  *v6 = v0;
  v6[1] = sub_23DEEAEA4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000023E2564F0, sub_23DEEC1B4, v4, v7);
}

uint64_t sub_23DEEAEA4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    v9 = sub_23DEEAFAC;
  }

  else
  {
    v10 = *(v3 + 48);

    v9 = sub_23DEC69A8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_23DEEAFAC()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_19();
  v3 = *(v0 + 64);

  return v2();
}

void sub_23DEEB008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D508, &unk_23E229470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_continuation;
  swift_beginAccess();
  sub_23DEEC1C0(v7, a2 + v9);
  swift_endAccess();
  v10 = *(a2 + OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_synthesizer);
  [v10 setDelegate_];
  sub_23DEEB188();
  v12 = v11;
  v13 = sub_23E1FDBDC();
  [v10 speakUtteranceIntoFile:v13 usingVoice:v12 rate:0.5 pitch:1.0];
}

void sub_23DEEB188()
{
  v0 = objc_opt_self();
  v1 = [v0 currentLanguageCode];
  sub_23E1FDC1C();

  v2 = objc_opt_self();
  sub_23DE5C91C(v2, &selRef_afPreferencesLanguageCode);
  if (v3)
  {
  }

  v4 = sub_23E1FDBDC();

  v29 = v0;
  v5 = [v0 voicesForLanguageCode_];

  sub_23DE38DA8(0, &qword_27E32D518, off_278C017D8);
  v6 = sub_23E1FDDEC();

  v30 = sub_23DE5C91C(v2, &selRef_currentSiriVoiceVSAssetName);
  v8 = v7;
  v9 = sub_23DE4D8B0(v6);
  v10 = 0;
  v11 = v6 & 0xC000000000000001;
  v12 = v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v9 == v10)
    {
      v21 = sub_23DE4D8B0(v6);
      for (i = 0; ; ++i)
      {
        if (v21 == i)
        {

          v25 = [v29 currentLanguageCode];
          v26 = sub_23E1FDC1C();
          v28 = v27;

          sub_23DEEC150(v26, v28, v29);

          return;
        }

        if (v11)
        {
          v23 = MEMORY[0x23EF04DD0](i, v6);
        }

        else
        {
          if (i >= *(v12 + 16))
          {
            goto LABEL_40;
          }

          v23 = *(v6 + 8 * i + 32);
        }

        v24 = v23;
        if (__OFADD__(i, 1))
        {
          goto LABEL_39;
        }

        if ([v23 isSiriVoice])
        {
          break;
        }
      }

      goto LABEL_36;
    }

    if (v11)
    {
      v13 = MEMORY[0x23EF04DD0](v10, v6);
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_38;
      }

      v13 = *(v6 + 8 * v10 + 32);
    }

    v14 = v13;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v15 = sub_23DE5C91C(v13, &selRef_vsVoiceName);
    if (v16)
    {
      if (v8)
      {
        if (v15 == v30 && v16 == v8)
        {
        }

        else
        {
          v18 = v6;
          v19 = v8;
          v20 = sub_23E1FE75C();

          if ((v20 & 1) == 0)
          {

            v8 = v19;
            v6 = v18;
            goto LABEL_20;
          }
        }

LABEL_36:

        return;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_36;
      }
    }

LABEL_20:
    ++v10;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_23DEEB4C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D508, &unk_23E229470);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - v13;
  v15 = sub_23E1FD03C();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x28223BE20](v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v40 = v18;
    v41 = result;
    v42 = v4;
    v39 = v10;
    v21 = *MEMORY[0x277D7A440];
    v22 = a4;
    sub_23E1FCB9C();
    v23 = a4;
    v24 = sub_23E1FD02C();
    v25 = sub_23E1FE1BC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38 = v7;
      v27 = v26;
      v28 = swift_slowAlloc();
      v43 = a4;
      v44 = v28;
      *v27 = 136315138;
      v29 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
      v30 = sub_23E1FDC7C();
      v32 = sub_23DE56B40(v30, v31, &v44);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_23DE30000, v24, v25, "didFailSpeakingUtterance: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23EF074C0](v28, -1, -1);
      v33 = v27;
      v7 = v38;
      MEMORY[0x23EF074C0](v33, -1, -1);
    }

    (*(v40 + 8))(v20, v41);
    v34 = OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_continuation;
    v35 = v42;
    swift_beginAccess();
    sub_23DEEBE24(v35 + v34, v14);
    if (__swift_getEnumTagSinglePayload(v14, 1, v6))
    {

      return sub_23DEEC284(v14, &unk_27E32D508, &unk_23E229470);
    }

    else
    {
      v36 = v39;
      (*(v7 + 16))(v39, v14, v6);
      sub_23DEEC284(v14, &unk_27E32D508, &unk_23E229470);
      v43 = a4;
      sub_23E1FDE7C();
      return (*(v7 + 8))(v36, v6);
    }
  }

  return result;
}

uint64_t sub_23DEEB900(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D508, &unk_23E229470);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - v13;
  v15 = OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_continuation;
  swift_beginAccess();
  sub_23DEEBE24(v4 + v15, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6))
  {
    return sub_23DEEC284(v14, &unk_27E32D508, &unk_23E229470);
  }

  (*(v7 + 16))(v10, v14, v6);
  sub_23DEEC284(v14, &unk_27E32D508, &unk_23E229470);
  v18 = a4;
  v17 = a4;
  sub_23E1FDE8C();
  return (*(v7 + 8))(v10, v6);
}

id sub_23DEEBB68()
{
  v1 = OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_synthesizer;
  *&v0[v1] = [objc_allocWithZone(WFSpeechSynthesizer) init];
  v2 = OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_continuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  __swift_storeEnumTagSinglePayload(&v0[v2], 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SpeechSynthesizerAsyncWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_23DEEBC3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for SpeechSynthesizerAsyncWrapper()
{
  result = qword_27E32D4E8;
  if (!qword_27E32D4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DEEBD20()
{
  sub_23DEEBDC0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23DEEBDC0()
{
  if (!qword_27E32D4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D500, &qword_23E229468);
    v0 = sub_23E1FE42C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E32D4F8);
    }
  }
}

uint64_t sub_23DEEBE24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D508, &unk_23E229470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_23DEEBE94(void *a1)
{
  v2 = v1;
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v4 = [v2 initWithAsset:a1 error:v9];
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

id sub_23DEEBF5C(uint64_t a1, void *a2)
{
  v3 = v2;
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = sub_23E1FBF6C();
  v16[0] = 0;
  v7 = [v3 initWithURL:v6 fileType:a2 error:v16];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_23E1FBFBC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v16[0];
    sub_23E1FBECC();

    swift_willThrow();
    v13 = sub_23E1FBFBC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_23DEEC0B8(void *a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v6 = sub_23E1FDA9C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 *a3];

  return v7;
}

id sub_23DEEC150(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E1FDBDC();

  v5 = [a3 defaultVoiceForLanguageCode_];

  return v5;
}

void sub_23DEEC1B4(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_23DEEB008(a1, v1[2]);
}

uint64_t sub_23DEEC1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D508, &unk_23E229470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DEEC230()
{
  result = qword_27E32D540;
  if (!qword_27E32D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D540);
  }

  return result;
}

uint64_t sub_23DEEC284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_37_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_23DEEC2F0()
{
  result = qword_27E32D588;
  if (!qword_27E32D588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D580, &qword_23E2294B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D588);
  }

  return result;
}

void sub_23DEEC364()
{
  v1 = *(sub_23E1FBFBC() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_23DEEA43C(v5, v6, v7, v8, v0 + v2, v9);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

uint64_t sub_23DEEC45C()
{
  v1 = *(sub_23E1FBFBC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_23DEEA738(v0 + v2, v5);
}

uint64_t sub_23DEEC534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DEEC57C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE47040;
  v6 = OUTLINED_FUNCTION_50();

  return v7(v6);
}

uint64_t sub_23DEEC634(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468) - 8) + 80);

  return sub_23DEE7464(a1, a2);
}

_BYTE *storeEnumTagSinglePayload for IntercomAction.ActionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DEEC7A0()
{
  result = qword_27E32D5E0;
  if (!qword_27E32D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D5E0);
  }

  return result;
}

unint64_t sub_23DEEC7F4()
{
  result = qword_27E32D5E8;
  if (!qword_27E32D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D5E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_22()
{
  result = v0[103];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[95];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{
  *(a1 + 8) = sub_23DEE6740;
  result = v1[65];
  v3 = v1[64];
  v4 = v1[55];
  return result;
}

void OUTLINED_FUNCTION_2_16()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[71];
  v4 = v0[67];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v9 = v0[60];
  v10 = v0[59];
  v11 = v0[58];
  v8 = v0[55];
}

uint64_t OUTLINED_FUNCTION_7_9()
{
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[58];
}

uint64_t OUTLINED_FUNCTION_12_12()
{
  result = v0[103];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[95];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[89];
  v12 = v0[86];
  return result;
}

uint64_t OUTLINED_FUNCTION_16_10(uint64_t result)
{
  v1[95] = result;
  v1[96] = 1;
  v2 = v1[64];
  return result;
}

uint64_t OUTLINED_FUNCTION_21_8()
{
  v4 = v0[89];
  v2 = v0[86];
  v5 = v0[85];
  v6 = v0[83];
}

void OUTLINED_FUNCTION_27_6()
{
  v2 = v0[80];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[71];
  v6 = v0[67];
  v7 = v0[55];
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return sub_23E1FDE0C();
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1)
{
  *(v1 + 696) = a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_44_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_46_3()
{
  v2 = *(v0 + 640);

  return sub_23E1FDE3C();
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return sub_23E1FBF9C();
}

id sub_23DEECBD0()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v61[5] = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E2536A0;
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

  v64 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v63 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  *&v62 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_23E222340;
  v19 = *MEMORY[0x277D7CC28];
  *(v18 + 32) = *MEMORY[0x277D7CC28];
  v20 = v17;
  v21 = v19;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v22 = [v64 bundleURL];
  v61[4] = v3;
  sub_23E1FBF9C();

  v23 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v18 + 64) = v63;
  *(v18 + 40) = v24;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v25 = sub_23E1FDABC();
  v26 = v62;
  *(inited + 120) = sub_23DF3BE54(v25);
  v27 = *MEMORY[0x277D7CB50];
  *(inited + 144) = v26;
  *(inited + 152) = v27;
  v28 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 160) = 1954047316;
  *(inited + 168) = 0xE400000000000000;
  v29 = v27;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 224) = MEMORY[0x277D839B0];
  *(inited + 200) = 1;
  *(inited + 232) = sub_23E1FDBDC();
  *(inited + 240) = 0xD00000000000004FLL;
  *(inited + 248) = 0x800000023E256760;
  v30 = *MEMORY[0x277D7CDD0];
  *(inited + 264) = v28;
  *(inited + 272) = v30;
  v31 = v30;
  v32 = sub_23E1FDABC();
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 280) = v32;
  *(inited + 312) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v33 = swift_initStackObject();
  v62 = xmmword_23E222370;
  *(v33 + 16) = xmmword_23E222370;
  strcpy((v33 + 32), "caseSensitive");
  *(v33 + 46) = -4864;
  v61[2] = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v61[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v34 = swift_initStackObject();
  *(v34 + 16) = v62;
  v35 = *MEMORY[0x277D7CE08];
  *(v34 + 32) = *MEMORY[0x277D7CE08];
  v36 = v35;
  v61[1] = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v37 = [v64 bundleURL];
  sub_23E1FBF9C();

  v38 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v39 = MEMORY[0x277D7CE70];
  *(v34 + 40) = v40;
  v41 = *v39;
  *(v34 + 64) = v63;
  *(v34 + 72) = v41;
  v42 = MEMORY[0x277D837D0];
  *(v34 + 104) = MEMORY[0x277D837D0];
  *(v34 + 80) = 0xD000000000000018;
  *(v34 + 88) = 0x800000023E256860;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v43 = v41;
  v44 = sub_23E1FDABC();
  *(v33 + 48) = sub_23DF3BE9C(v44);
  *(v33 + 56) = 0x6E726574746170;
  *(v33 + 64) = 0xE700000000000000;
  v45 = swift_initStackObject();
  *(v45 + 16) = v62;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0xD000000000000012;
  *(v45 + 48) = 0x800000023E256880;
  v46 = *MEMORY[0x277D7CDF8];
  *(v45 + 64) = v42;
  *(v45 + 72) = v46;
  sub_23DE38DA8(0, &qword_27E32D5F0, 0x277D7C7A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = v46;
  v49 = NSStringFromClass(ObjCClassFromMetadata);
  v50 = sub_23E1FDC1C();
  v52 = v51;

  *(v45 + 104) = MEMORY[0x277D837D0];
  *(v45 + 80) = v50;
  *(v45 + 88) = v52;
  v53 = sub_23E1FDABC();
  *(v33 + 72) = sub_23DF3BE9C(v53);
  v54 = sub_23E1FDABC();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  v56 = MEMORY[0x277D7CB78];
  *(inited + 320) = v54;
  v57 = *v56;
  *(inited + 344) = v55;
  *(inited + 352) = v57;
  *(inited + 384) = MEMORY[0x277D839B0];
  *(inited + 360) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v58 = v57;
  v59 = sub_23E1FDABC();
  return sub_23DF3BF9C(v59);
}

id sub_23DEED4D4()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v115 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v8 = *MEMORY[0x277D7CB18];
  v9 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x800000023E2568D0;
  v10 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = v8;
  v12 = v10;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v116 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v108 = v6;
  sub_23DE477A0();
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v114 = v17;
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = v18;
  v20 = sub_23E1FDABC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v20;
  v22 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  v112 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222340;
  v24 = *MEMORY[0x277D7CC30];
  *(v23 + 32) = *MEMORY[0x277D7CC30];
  v25 = v22;
  v26 = v24;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v27 = [v116 bundleURL];
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v29 = v114;
  *(v23 + 64) = v114;
  *(v23 + 40) = v30;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v31 = sub_23E1FDABC();
  v32 = v112;
  *(inited + 160) = sub_23DF3BE54(v31);
  v33 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v32;
  *(inited + 192) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 200) = &unk_285024C90;
  v35 = *MEMORY[0x277D7CB48];
  *(inited + 224) = v34;
  *(inited + 232) = v35;
  *(inited + 240) = 2036429383;
  *(inited + 248) = 0xE400000000000000;
  v36 = *MEMORY[0x277D7CB60];
  v37 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = v36;
  *(inited + 280) = 0x7265776F70;
  *(inited + 288) = 0xE500000000000000;
  v38 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v37;
  *(inited + 312) = v38;
  v39 = v33;
  v40 = v35;
  v41 = v36;
  v42 = v38;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v43 = [v116 bundleURL];
  sub_23E1FBF9C();

  v44 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 320) = v45;
  v46 = *MEMORY[0x277D7CBA0];
  *(inited + 344) = v29;
  *(inited + 352) = v46;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_23E2235B0;
  v111 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_23E224C10;
  v48 = *MEMORY[0x277D7CDF8];
  *(v47 + 32) = *MEMORY[0x277D7CDF8];
  *(v47 + 40) = 0xD000000000000016;
  *(v47 + 48) = 0x800000023E24FDA0;
  v49 = *MEMORY[0x277D7CE00];
  v50 = MEMORY[0x277D837D0];
  *(v47 + 64) = MEMORY[0x277D837D0];
  *(v47 + 72) = v49;
  *(v47 + 80) = 0x776F442074756853;
  *(v47 + 88) = 0xE90000000000006ELL;
  v51 = *MEMORY[0x277D7CE38];
  *(v47 + 104) = v50;
  *(v47 + 112) = v51;
  v107 = swift_allocObject();
  v109 = xmmword_23E2246F0;
  *(v107 + 16) = xmmword_23E2246F0;
  v52 = v46;
  v53 = v48;
  v54 = v49;
  v55 = v51;
  v106 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v56 = v116;
  v57 = [v116 bundleURL];
  sub_23E1FBF9C();

  v58 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v59 = v107;
  *(v107 + 32) = v60;
  v61 = sub_23E1FDCBC();
  v105 = v62;
  v106 = v61;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v63 = [v56 bundleURL];
  sub_23E1FBF9C();

  v64 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v59 + 40) = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v47 + 120) = v59;
  v67 = *MEMORY[0x277D7CE70];
  *(v47 + 144) = v66;
  *(v47 + 152) = v67;
  strcpy((v47 + 160), "WFShutdownMode");
  *(v47 + 175) = -18;
  v68 = *MEMORY[0x277D7CE80];
  *(v47 + 184) = MEMORY[0x277D837D0];
  *(v47 + 192) = v68;
  v69 = v67;
  v70 = v68;
  v107 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v71 = v116;
  v72 = [v116 bundleURL];
  sub_23E1FBF9C();

  v73 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v47 + 200) = v74;
  v75 = *MEMORY[0x277D7CEC8];
  v76 = v114;
  *(v47 + 224) = v114;
  *(v47 + 232) = v75;
  v77 = v75;
  sub_23E1FDCBC();
  v107 = v78;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v79 = [v71 bundleURL];
  sub_23E1FBF9C();

  v80 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v47 + 264) = v76;
  *(v47 + 240) = v81;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v82 = sub_23E1FDABC();
  v83 = sub_23DF3BE9C(v82);
  v84 = v112;
  *(v112 + 32) = v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 360) = v84;
  v86 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v85;
  *(inited + 392) = v86;
  v112 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v114 = swift_allocObject();
  *(v114 + 16) = v109;
  v111 = "What would you like to do?";
  v87 = v86;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v88 = v116;
  v89 = [v116 bundleURL];
  sub_23E1FBF9C();

  v90 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v92 = v91;
  v93 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v94 = sub_23DF34C40(0xD000000000000017, v111 | 0x8000000000000000, v92);
  *(v114 + 32) = v94;
  v111 = "${WFShutdownMode} this device";
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v95 = [v88 bundleURL];
  sub_23E1FBF9C();

  v96 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v98 = v97;
  v99 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v100 = sub_23DF34C40(0xD000000000000019, v111 | 0x8000000000000000, v98);
  *(v114 + 40) = v100;
  v101 = v112;
  v102 = sub_23DF333E0();
  *(inited + 424) = v101;
  *(inited + 400) = v102;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v103 = sub_23E1FDABC();
  return sub_23DF3BF9C(v103);
}

uint64_t sub_23DEEE204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_23E1FD03C();
  v3[10] = v4;
  OUTLINED_FUNCTION_8(v4);
  v3[11] = v5;
  v7 = *(v6 + 64);
  v3[12] = OUTLINED_FUNCTION_42();
  v8 = sub_23E1FCDFC();
  v3[13] = v8;
  OUTLINED_FUNCTION_8(v8);
  v3[14] = v9;
  v11 = *(v10 + 64);
  v3[15] = OUTLINED_FUNCTION_42();
  v12 = sub_23E1FBC1C();
  v3[16] = v12;
  OUTLINED_FUNCTION_8(v12);
  v3[17] = v13;
  v15 = *(v14 + 64);
  v3[18] = OUTLINED_FUNCTION_42();
  sub_23E1FDECC();
  v3[19] = sub_23E1FDEBC();
  v17 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEEE384, v17, v16);
}

uint64_t sub_23DEEE384()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 72);

  (*(v4 + 16))(v2, v5, v3);
  v6 = (*(v4 + 88))(v2, v3);
  v7 = *MEMORY[0x277CFC140];
  (*(v4 + 8))(v2, v3);
  if (v6 != v7)
  {
    sub_23E1FCD4C();
    sub_23DEEF790();
    OUTLINED_FUNCTION_1_18();
    sub_23E1FCD6C();
    if (v6)
    {
      v8 = *(v0 + 96);
      v9 = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      v10 = v6;
      v11 = sub_23E1FD02C();
      v12 = sub_23E1FE1BC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        v15 = v6;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        _os_log_impl(&dword_23DE30000, v11, v12, "Failed to create safety source, error: %@", v13, 0xCu);
        sub_23DE8B994(v14);
        MEMORY[0x23EF074C0](v14, -1, -1);
        MEMORY[0x23EF074C0](v13, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    }

    else
    {
      v18 = *(v0 + 112);
      v17 = *(v0 + 120);
      v19 = *(v0 + 104);
      v20 = *(v0 + 72);
      v21 = swift_task_alloc();
      *(v21 + 16) = *(v0 + 56);
      *(v21 + 32) = v20;
      sub_23E1FCE1C();

      v22 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      sub_23E1FCE0C();
      (*(v18 + 8))(v17, v19);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 120);
  v25 = *(v0 + 96);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_23DEEE65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = a6;
  *(v6 + 104) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  sub_23E1FDECC();
  *(v6 + 96) = sub_23E1FDEBC();
  v8 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEEE700, v8, v7);
}

uint64_t sub_23DEEE700()
{
  v2 = *(v1 + 96);

  if (VCIsInternalBuild())
  {
    sub_23E1FD04C();
    sub_23DEEE8FC();
    OUTLINED_FUNCTION_1_18();
    sub_23E1FD05C();
    if (v0)
    {

      return MEMORY[0x2821FEBD8](v0, "ActionKit/WFBiomeReporting.swift", 32, 1, 98);
    }

    v4 = *(v1 + 80);
    v3 = *(v1 + 88);
    v5 = *(v1 + 104);
    v6 = *(v1 + 72);
    v15 = *(v1 + 56);
    v7 = sub_23E1FD0BC();
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    v10 = OUTLINED_FUNCTION_42();
    v11 = swift_task_alloc();
    *(v11 + 16) = v15;
    *(v11 + 32) = v6;
    *(v11 + 40) = v4;
    *(v11 + 48) = v5;
    *(v11 + 56) = v3;
    sub_23E1FD0DC();

    v12 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
    sub_23E1FD0CC();
    (*(v8 + 8))(v10, v7);

    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  v13 = *(v1 + 8);

  return v13();
}

unint64_t sub_23DEEE8FC()
{
  result = qword_27E32D5F8;
  if (!qword_27E32D5F8)
  {
    sub_23E1FD04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D5F8);
  }

  return result;
}

uint64_t sub_23DEEE948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v74 = a3;
  v5 = sub_23E1FD03C();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  MEMORY[0x28223BE20](v5);
  v70 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_23E1FBC1C();
  v8 = *(v77 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_23E1FC1DC();
  v73 = *(v75 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D610, &qword_23E229678);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D618, &qword_23E229680);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D620, &qword_23E229688);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = (&v69 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CC70, &qword_23E2265F8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v69 - v28);
  sub_23DEEF808(a2, &v69 - v28);
  v30 = sub_23E1FBB0C();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    v31 = *MEMORY[0x277D204E0];
    v32 = sub_23E1FCDBC();
    (*(*(v32 - 8) + 104))(v25, v31, v32);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v32);
    sub_23E1FCDCC();
    goto LABEL_14;
  }

  v69 = v21;
  v33 = *(v30 - 8);
  v34 = (*(v33 + 88))(v29, v30);
  if (v34 != *MEMORY[0x277CFC070])
  {
    if (v34 == *MEMORY[0x277CFC0A0])
    {
      (*(v33 + 96))(v29, v30);
      v38 = *v29;
      v39 = sub_23E1FCDBC();
      if (v38 == 20)
      {
        v40 = MEMORY[0x277D204D8];
      }

      else
      {
        v40 = MEMORY[0x277D204D0];
      }

      (*(*(v39 - 8) + 104))(v25, *v40, v39);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v39);
      sub_23E1FCDCC();
      v37 = MEMORY[0x277D204A8];
      goto LABEL_12;
    }

    if (v34 == *MEMORY[0x277CFC090])
    {
      v41 = *MEMORY[0x277D204D0];
      v42 = sub_23E1FCDBC();
      (*(*(v42 - 8) + 104))(v25, v41, v42);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v42);
      sub_23E1FCDCC();
      v37 = MEMORY[0x277D204A0];
      goto LABEL_12;
    }

    v45 = v69;
    if (v34 == *MEMORY[0x277CFC098])
    {
      v58 = MEMORY[0x277D204D0];
    }

    else
    {
      if (v34 != *MEMORY[0x277CFC0A8])
      {
        if (v34 == *MEMORY[0x277CFC0B0])
        {
          v63 = *MEMORY[0x277D204D0];
          v64 = sub_23E1FCDBC();
          (*(*(v64 - 8) + 104))(v25, v63, v64);
          __swift_storeEnumTagSinglePayload(v25, 0, 1, v64);
          sub_23E1FCDCC();
          v61 = MEMORY[0x277D204C8];
        }

        else if (v34 == *MEMORY[0x277CFC078] || v34 == *MEMORY[0x277CFC080])
        {
          *v25 = 0;
          v65 = *MEMORY[0x277D204E8];
          v66 = sub_23E1FCDBC();
          (*(*(v66 - 8) + 104))(v25, v65, v66);
          __swift_storeEnumTagSinglePayload(v25, 0, 1, v66);
          sub_23E1FCDCC();
          *v45 = 0;
          v61 = MEMORY[0x277D204C0];
        }

        else
        {
          if (v34 != *MEMORY[0x277CFC088])
          {
            goto LABEL_36;
          }

          v67 = *MEMORY[0x277D204D0];
          v68 = sub_23E1FCDBC();
          (*(*(v68 - 8) + 104))(v25, v67, v68);
          __swift_storeEnumTagSinglePayload(v25, 0, 1, v68);
          sub_23E1FCDCC();
          v61 = MEMORY[0x277D204B0];
        }

        goto LABEL_28;
      }

      v58 = MEMORY[0x277D204D8];
    }

    v59 = *v58;
    v60 = sub_23E1FCDBC();
    (*(*(v60 - 8) + 104))(v25, v59, v60);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v60);
    sub_23E1FCDCC();
    v61 = MEMORY[0x277D204A0];
LABEL_28:
    v62 = *v61;
    v44 = sub_23E1FCD7C();
    (*(*(v44 - 8) + 104))(v45, v62, v44);
    goto LABEL_13;
  }

  (*(v33 + 8))(v29, v30);
  v35 = *MEMORY[0x277D204D0];
  v36 = sub_23E1FCDBC();
  (*(*(v36 - 8) + 104))(v25, v35, v36);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v36);
  sub_23E1FCDCC();
  v37 = MEMORY[0x277D204B8];
LABEL_12:
  v43 = *v37;
  v44 = sub_23E1FCD7C();
  v45 = v69;
  (*(*(v44 - 8) + 104))(v69, v43, v44);
LABEL_13:
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v44);
  sub_23E1FCD8C();
LABEL_14:
  v46 = *(sub_23E1FBABC() + 16);

  v47 = sub_23E1FCDDC();
  v48 = MEMORY[0x277D204F8];
  if (v46)
  {
    v48 = MEMORY[0x277D204F0];
  }

  (*(*(v47 - 8) + 104))(v17, *v48, v47);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v47);
  sub_23E1FCDEC();
  sub_23E1FC19C();
  sub_23E1FC0FC();
  (*(v73 + 8))(v13, v75);
  sub_23E1FCD9C();
  v50 = v76;
  v49 = v77;
  (*(v8 + 16))(v76, v78, v77);
  v51 = (*(v8 + 88))(v50, v49);
  if (v51 == *MEMORY[0x277CFC138])
  {
    return sub_23E1FCDAC();
  }

  if (v51 != *MEMORY[0x277CFC140])
  {
    if (v51 == *MEMORY[0x277CFC130])
    {
      return sub_23E1FCDAC();
    }

    while (1)
    {
LABEL_36:
      sub_23E1FE74C();
      __break(1u);
    }
  }

  v52 = *MEMORY[0x277D7A440];
  v53 = v70;
  sub_23E1FCB9C();
  v54 = sub_23E1FD02C();
  v55 = sub_23E1FE1CC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_23DE30000, v54, v55, "We shouldn't hit chatgpt here since it's not supported for safety reporting", v56, 2u);
    MEMORY[0x23EF074C0](v56, -1, -1);
  }

  return (*(v71 + 8))(v53, v72);
}

uint64_t sub_23DEEF460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v7 = sub_23E1FBC1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E1FB7BC();
  sub_23E1FD09C();
  sub_23E1FB7BC();
  sub_23E1FD07C();
  sub_23E1FD0AC();
  (*(v8 + 16))(v11, v28, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277CFC138])
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D600, &qword_23E229668);
    v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v13 - 8);
    v16 = &v27 - v15;
    v17 = MEMORY[0x277D21200];
LABEL_7:
    v24 = *v17;
    v25 = sub_23E1FD06C();
    (*(*(v25 - 8) + 104))(v16, v24, v25);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v25);
    return sub_23E1FD08C();
  }

  if (v12 == *MEMORY[0x277CFC140])
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D600, &qword_23E229668);
    v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v18 - 8);
    v16 = &v27 - v20;
    v17 = MEMORY[0x277D21210];
    goto LABEL_7;
  }

  if (v12 == *MEMORY[0x277CFC130])
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D600, &qword_23E229668);
    v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v21 - 8);
    v16 = &v27 - v23;
    v17 = MEMORY[0x277D21208];
    goto LABEL_7;
  }

  result = sub_23E1FE74C();
  __break(1u);
  return result;
}

unint64_t sub_23DEEF790()
{
  result = qword_27E32D608;
  if (!qword_27E32D608)
  {
    sub_23E1FCD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D608);
  }

  return result;
}

uint64_t sub_23DEEF808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CC70, &qword_23E2265F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DEEF88C(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t WFParameter.toolkitTypeInstanceForLinkUnion(valueType:parameterMetadata:action:parameterKey:)()
{
  OUTLINED_FUNCTION_23();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = sub_23E1FD64C();
  v1[22] = v6;
  OUTLINED_FUNCTION_8(v6);
  v1[23] = v7;
  v9 = *(v8 + 64);
  v1[24] = OUTLINED_FUNCTION_42();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D630, &qword_23E2296A8);
  OUTLINED_FUNCTION_25(v10);
  v12 = *(v11 + 64);
  v1[25] = OUTLINED_FUNCTION_91();
  v1[26] = swift_task_alloc();
  v13 = sub_23E1FD6AC();
  v1[27] = v13;
  OUTLINED_FUNCTION_8(v13);
  v1[28] = v14;
  v16 = *(v15 + 64);
  v1[29] = OUTLINED_FUNCTION_42();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D638, &qword_23E2296B0);
  OUTLINED_FUNCTION_25(v17);
  v19 = *(v18 + 64);
  v1[30] = OUTLINED_FUNCTION_91();
  v1[31] = swift_task_alloc();
  v20 = sub_23E1FD65C();
  v1[32] = v20;
  OUTLINED_FUNCTION_8(v20);
  v1[33] = v21;
  v23 = *(v22 + 64);
  v1[34] = OUTLINED_FUNCTION_42();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D640, &qword_23E2296B8);
  OUTLINED_FUNCTION_25(v24);
  v26 = *(v25 + 64);
  v1[35] = OUTLINED_FUNCTION_91();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v27 = sub_23E1FD68C();
  v1[39] = v27;
  OUTLINED_FUNCTION_8(v27);
  v1[40] = v28;
  v30 = *(v29 + 64);
  v1[41] = OUTLINED_FUNCTION_42();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D648, &qword_23E2296C0);
  OUTLINED_FUNCTION_25(v31);
  v33 = *(v32 + 64);
  v1[42] = OUTLINED_FUNCTION_42();
  v34 = sub_23E1FD67C();
  v1[43] = v34;
  OUTLINED_FUNCTION_8(v34);
  v1[44] = v35;
  v37 = *(v36 + 64);
  v1[45] = OUTLINED_FUNCTION_91();
  v1[46] = swift_task_alloc();
  v38 = sub_23E1FD59C();
  v1[47] = v38;
  OUTLINED_FUNCTION_8(v38);
  v1[48] = v39;
  v41 = *(v40 + 64);
  v1[49] = OUTLINED_FUNCTION_42();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D650, &qword_23E2296C8);
  OUTLINED_FUNCTION_25(v42);
  v44 = *(v43 + 64);
  v1[50] = OUTLINED_FUNCTION_42();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D658, &unk_23E2296D0);
  OUTLINED_FUNCTION_25(v45);
  v47 = *(v46 + 64);
  v1[51] = OUTLINED_FUNCTION_42();
  v48 = sub_23E1FD4EC();
  v1[52] = v48;
  OUTLINED_FUNCTION_8(v48);
  v1[53] = v49;
  v51 = *(v50 + 64);
  v1[54] = OUTLINED_FUNCTION_91();
  v1[55] = swift_task_alloc();
  v52 = sub_23E1FD57C();
  v1[56] = v52;
  OUTLINED_FUNCTION_8(v52);
  v1[57] = v53;
  v55 = *(v54 + 64);
  v1[58] = OUTLINED_FUNCTION_42();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D660, &qword_23E224C60);
  OUTLINED_FUNCTION_25(v56);
  v58 = *(v57 + 64);
  v1[59] = OUTLINED_FUNCTION_42();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D668, &unk_23E2296E0);
  OUTLINED_FUNCTION_25(v59);
  v61 = *(v60 + 64);
  v1[60] = OUTLINED_FUNCTION_42();
  v62 = sub_23E1FD6BC();
  v1[61] = v62;
  OUTLINED_FUNCTION_8(v62);
  v1[62] = v63;
  v65 = *(v64 + 64);
  v1[63] = OUTLINED_FUNCTION_91();
  v1[64] = swift_task_alloc();
  v66 = sub_23E1FD3DC();
  v1[65] = v66;
  OUTLINED_FUNCTION_8(v66);
  v1[66] = v67;
  v69 = *(v68 + 64);
  v1[67] = OUTLINED_FUNCTION_91();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v70 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v70, v71, v72);
}

uint64_t sub_23DEEFDFC()
{
  v1 = [*(v0 + 144) wf_unionValueType];
  *(v0 + 568) = v1;
  if (!v1)
  {
    sub_23DEF1D18();
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_48_5(v17, 9);
    swift_willThrow();
    v18 = *(v0 + 560);
    v19 = *(v0 + 552);
    v20 = *(v0 + 544);
    v21 = *(v0 + 536);
    v22 = *(v0 + 504);
    v23 = *(v0 + 512);
    v25 = *(v0 + 472);
    v24 = *(v0 + 480);
    v26 = *(v0 + 464);
    v27 = *(v0 + 440);
    v38 = *(v0 + 432);
    v39 = *(v0 + 408);
    v40 = *(v0 + 400);
    v41 = *(v0 + 392);
    v42 = *(v0 + 368);
    v43 = *(v0 + 360);
    v44 = *(v0 + 336);
    v45 = *(v0 + 328);
    v46 = *(v0 + 304);
    v47 = *(v0 + 296);
    v48 = *(v0 + 288);
    v49 = *(v0 + 280);
    v50 = *(v0 + 272);
    v51 = *(v0 + 248);
    v52 = *(v0 + 240);
    v53 = *(v0 + 232);
    v54 = *(v0 + 208);
    v55 = *(v0 + 200);
    v56 = *(v0 + 192);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_48();

    __asm { BRAA            X1, X16 }
  }

  v2 = [v1 memberTypeParametersFromParameterMetadata_];
  sub_23DE38DA8(0, &unk_27E32CD10, 0x277D7C6D8);
  v3 = sub_23E1FDDEC();
  *(v0 + 576) = v3;

  *(v0 + 128) = MEMORY[0x277D84FA0];
  v4 = sub_23DE4D8B0(v3);
  *(v0 + 584) = v4;
  if (v4)
  {
    v6 = 0;
    *(v0 + 592) = *MEMORY[0x277D7CD60];
    while (1)
    {
      v7 = *(v0 + 576);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EF04DD0](v6);
      }

      else
      {
        if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v4 = *(v7 + 8 * v6 + 32);
      }

      v8 = v4;
      *(v0 + 600) = v4;
      *(v0 + 608) = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return MEMORY[0x2822009F8](v4, v7, v5);
      }

      v9 = *(v0 + 592);
      v10 = [v4 definition];
      *(v0 + 616) = v10;
      if ([v10 objectForKey_])
      {
        sub_23E1FE49C();
        swift_unknownObjectRelease();
      }

      else
      {
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
      }

      OUTLINED_FUNCTION_201(*(v0 + 64), *(v0 + 48));
      if (v11)
      {
        if (swift_dynamicCast())
        {
          v31 = *(v0 + 80);
          v30 = *(v0 + 88);
          v32 = [*(v0 + 168) key];
          sub_23E1FDC1C();
          OUTLINED_FUNCTION_70();

          OUTLINED_FUNCTION_162_0();

          OUTLINED_FUNCTION_170_1();
          v33 = OUTLINED_FUNCTION_58_0();
          MEMORY[0x23EF044F0](v33);

          *(v0 + 624) = *(v0 + 120);
          swift_task_alloc();
          OUTLINED_FUNCTION_31();
          *(v0 + 632) = v34;
          *v34 = v35;
          OUTLINED_FUNCTION_71_2(v34);
          OUTLINED_FUNCTION_48();

          return sub_23DEF1D6C();
        }
      }

      else
      {

        OUTLINED_FUNCTION_149_1();
        v4 = sub_23DE58BD0(v12, v13, v14);
      }

      v6 = *(v0 + 608);
      if (v6 == *(v0 + 584))
      {
        v15 = *(v0 + 576);
        break;
      }
    }
  }

  *(v0 + 648) = 0;
  sub_23E1FDECC();
  *(v0 + 656) = OUTLINED_FUNCTION_195_1();
  OUTLINED_FUNCTION_37();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4, v7, v5);
}

uint64_t sub_23DEF02C0()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 632);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[80] = v0;

  if (v0)
  {
    v9 = v3[78];
    v10 = v3[72];
    v11 = v3[16];
  }

  else
  {
    v12 = v3[78];
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_23DEF03E8()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 600);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  (*(v5 + 16))(*(v0 + 544), v3, v6);
  v7 = OUTLINED_FUNCTION_45();
  sub_23DF0380C(v7, v8);

  v9 = *(v5 + 8);
  v9(v4, v6);
  v10 = (v9)(v3, v6);
  v29 = *(v0 + 640);
  while (1)
  {
    while (1)
    {
      v12 = *(v0 + 608);
      v13 = *(v0 + 576);
      if (v12 == *(v0 + 584))
      {
        v21 = *(v0 + 576);

        *(v0 + 648) = v29;
        sub_23E1FDECC();
        *(v0 + 656) = OUTLINED_FUNCTION_195_1();
        OUTLINED_FUNCTION_37();
        sub_23E1FDE6C();
        OUTLINED_FUNCTION_78();
        v10 = OUTLINED_FUNCTION_8_6();

        return MEMORY[0x2822009F8](v10, v13, v11);
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x23EF04DD0](*(v0 + 608));
      }

      else
      {
        if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v13 + 8 * v12 + 32);
      }

      v14 = v10;
      *(v0 + 600) = v10;
      *(v0 + 608) = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return MEMORY[0x2822009F8](v10, v13, v11);
      }

      v15 = *(v0 + 592);
      v16 = [v10 definition];
      *(v0 + 616) = v16;
      if ([v16 objectForKey_])
      {
        sub_23E1FE49C();
        swift_unknownObjectRelease();
      }

      else
      {
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
      }

      OUTLINED_FUNCTION_201(*(v0 + 64), *(v0 + 48));
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_149_1();
      v10 = sub_23DE58BD0(v18, v19, v20);
    }

    if (swift_dynamicCast())
    {
      break;
    }
  }

  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v24 = [*(v0 + 168) key];
  sub_23E1FDC1C();
  OUTLINED_FUNCTION_70();

  OUTLINED_FUNCTION_162_0();

  OUTLINED_FUNCTION_170_1();
  v25 = OUTLINED_FUNCTION_58_0();
  MEMORY[0x23EF044F0](v25);

  *(v0 + 624) = *(v0 + 120);
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 632) = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_71_2();

  return sub_23DEF1D6C();
}

uint64_t sub_23DEF06FC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[82];
  v2 = v0[20];

  v0[83] = [v2 fullyQualifiedLinkActionIdentifier];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEF0778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v44 = v42[83];
  v45 = v42[71];
  v46 = v42[66];
  v47 = v42[62];
  v48 = v42[57];
  v355 = v42[58];
  v49 = v42[53];
  v50 = [v44 bundleIdentifier];

  v51 = sub_23E1FDC1C();
  v53 = v52;

  sub_23DEF603C();
  v383 = v54;
  v386 = sub_23DE4D8B0(v54);
  v55 = 0;
  v360 = (v46 + 32);
  HIDWORD(a14) = *MEMORY[0x277D72E90];
  v352 = (v49 + 8);
  v56 = v42;
  v353 = (v46 + 8);
  v354 = (v48 + 104);
  v356 = *MEMORY[0x277D72FA0];
  v358 = (v47 + 104);
  v349 = (v47 + 32);
  v350 = v47;
  v57 = v42[81];
  v351 = MEMORY[0x277D84F90];
  v389 = v42;
  while (1)
  {
    if (v386 == v55)
    {
      v117 = v56[21];

      a37 = v351;
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass() || (v118 = v56[21], objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
      {
        v119 = v56[58];
        v120 = v56[56];
        v122 = v56[48];
        v121 = v56[49];
        v384 = v56[47];
        v387 = v56[61];
        v123 = v56[21];
        v124 = v389[20];
        v125 = [v124 identifier];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_193_0();
        v126 = [v123 key];
        v127 = sub_23E1FDC1C();
        v129 = v128;

        *v119 = v51;
        *(v355 + 8) = v43;
        v119[2] = v127;
        v119[3] = v129;
        (*v354)(v119, *MEMORY[0x277D72E88], v120);
        v130 = v124;
        v56 = v389;
        sub_23DF05F00(v130, &selRef_appBundleIdentifier);
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_79_2();
        sub_23E1FD58C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        OUTLINED_FUNCTION_25_5();
        v131 = OUTLINED_FUNCTION_101_1();
        OUTLINED_FUNCTION_205(v131, xmmword_23E222340);
        LODWORD(v120) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0) + 48);
        v132 = *(v122 + 16);
        v133 = OUTLINED_FUNCTION_54();
        v134(v133);
        sub_23E1FD4CC();
        (*(v350 + 104))(v129, v356, v387);
        sub_23DE5733C(v131);
        (*(v122 + 8))(v121, v384);
        goto LABEL_23;
      }

      v178 = v56[21];
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass())
      {
        v179 = v56[42];
        v180 = v56[43];
        v181 = v56[21];
        sub_23DEF6230(v179);
        OUTLINED_FUNCTION_93(v179, 1, v180);
        if (!v182)
        {
          v185 = v56[61];
          v186 = v56[46];
          v187 = v56[43];
          v188 = v56[44];
          v189 = v56[42];
          v190 = v389[21];
          v191 = OUTLINED_FUNCTION_200();
          v192(v191);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
          OUTLINED_FUNCTION_37_3();
          v193 = swift_allocObject();
          *(v193 + 16) = xmmword_23E222340;
          v194 = *(v188 + 16);
          OUTLINED_FUNCTION_86_2();
          v195();
          v196 = *MEMORY[0x277D72E70];
          v197 = *(v350 + 104);
          OUTLINED_FUNCTION_148_1();
          v198();
          sub_23DE5733C(v193);

          v56 = v389;
          v199 = *(v188 + 8);
          v200 = OUTLINED_FUNCTION_107_0();
          v201(v200);
          goto LABEL_23;
        }

        v183 = v56[42];

        sub_23DE58BD0(v183, &qword_27E32D648, &qword_23E2296C0);
      }

      v184 = v56[21];
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (!swift_dynamicCastObjCClass())
      {
        v202 = v56[21];
        objc_opt_self();
        OUTLINED_FUNCTION_20();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_42;
        }
      }

      v203 = OUTLINED_FUNCTION_186_1();
      v204 = [v48 minimumValue];
      v205 = [v48 maximumValue];
      OUTLINED_FUNCTION_202();
      sub_23E1FD66C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      OUTLINED_FUNCTION_37_3();
      v206 = OUTLINED_FUNCTION_114_0();
      OUTLINED_FUNCTION_134_0(v206, xmmword_23E222340);
      OUTLINED_FUNCTION_86_2();
      v207();
      v208 = *MEMORY[0x277D72E70];
      v209 = *(v350 + 104);
      v56 = v389;
      OUTLINED_FUNCTION_148_1();
      v210();
      v211 = v206;
LABEL_39:
      sub_23DE5733C(v211);

      v212 = *(v53 + 8);
      v213 = OUTLINED_FUNCTION_107_0();
      v214(v213);
      goto LABEL_23;
    }

    if ((v383 & 0xC000000000000001) != 0)
    {
      v58 = MEMORY[0x23EF04DD0](v55, v383);
    }

    else
    {
      if (v55 >= *((v383 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v58 = *(v383 + 8 * v55 + 32);
    }

    v51 = v58;
    v43 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    v59 = [v58 inputValueType];
    if (v59)
    {
      v60 = v59;
      v61 = v56[59];
      sub_23E1FE04C();
      if (!v57)
      {
        v73 = v56[67];
        v74 = v56[65];
        v75 = v56[60];
        v376 = v56[61];
        v76 = v56[59];
        v77 = v389[58];
        v78 = v389[56];
        v368 = v389[55];
        v370 = v389[54];
        v374 = v389[52];
        v362 = v389[51];
        v364 = v389[50];

        OUTLINED_FUNCTION_64();
        v372 = v74;
        __swift_storeEnumTagSinglePayload(v79, v80, v81, v74);
        (*v360)(v73, v76, v74);
        v366 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0) + 48);
        *v77 = sub_23E1FE1FC();
        *(v355 + 8) = v82;
        (*v354)(v77, HIDWORD(a14), v78);
        sub_23E1FB7BC();
        sub_23E1FD58C();
        sub_23E1FD77C();
        OUTLINED_FUNCTION_18_0();
        __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
        v87 = [v51 identifier];
        sub_23E1FDC1C();

        sub_23E1FB7BC();
        v56 = v389;
        sub_23E1FD48C();
        sub_23E1FD49C();
        OUTLINED_FUNCTION_153_0();
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
        OUTLINED_FUNCTION_159_1();
        v92 = v73;
        sub_23E1FD4BC();
        v48 = v368;
        sub_23E1FD4DC();
        v93 = *v352;
        v53 = v374;
        (*v352)(v370, v374);
        v93(v368, v374);
        (*v353)(v92, v372);
        (*v358)(v75, v356, v376);
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v94, v95, v96, v376);

        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v376);
        v57 = 0;
        goto LABEL_12;
      }

      v57 = 0;
    }

    v62 = v56[65];
    v64 = v56[60];
    v63 = v56[61];
    v48 = v56[59];
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    sub_23DE58BD0(v48, &qword_27E32D660, &qword_23E224C60);
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v63);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v63);
LABEL_12:
    if (EnumTagSinglePayload == 1)
    {
      sub_23DE58BD0(v56[60], &unk_27E32D668, &unk_23E2296E0);
      ++v55;
    }

    else
    {
      v98 = v56[63];
      v97 = v56[64];
      v99 = v56[60];
      v100 = v56[61];
      v51 = v349;
      v48 = *v349;
      v101 = OUTLINED_FUNCTION_140_1();
      (v48)(v101);
      v102 = OUTLINED_FUNCTION_36_5();
      (v48)(v102);
      v103 = v351;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = *(v351 + 16);
        v111 = OUTLINED_FUNCTION_6_1();
        sub_23DE4D518(v111, v112, v113, v351);
        v103 = v114;
      }

      v105 = *(v103 + 16);
      v104 = *(v103 + 24);
      if (v105 >= v104 >> 1)
      {
        v115 = OUTLINED_FUNCTION_9(v104);
        sub_23DE4D518(v115, v105 + 1, 1, v103);
        v103 = v116;
      }

      v106 = v56[63];
      v107 = v56[61];
      *(v103 + 16) = v105 + 1;
      OUTLINED_FUNCTION_50_1();
      v351 = v103;
      (v48)(v103 + v108 + *(v109 + 72) * v105);
      v55 = v43;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v215 = v56[21];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v216 = swift_dynamicCastObjCClass();
  if (v216)
  {
    v217 = v216;
    v218 = v56[61];
    v219 = v56[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    OUTLINED_FUNCTION_25_5();
    v220 = OUTLINED_FUNCTION_114_0();
    *(v220 + 16) = xmmword_23E222340;
    v221 = v219;
    v222 = [v217 supportedTypes];
    sub_23E1FCC8C();
    v223 = sub_23E1FDDEC();

    *(v56 + v220) = v223;
    v224 = *MEMORY[0x277D72E68];
    v225 = *(v350 + 104);
    v56 = v389;
    OUTLINED_FUNCTION_148_1();
    v226();
    sub_23DE5733C(v220);

    goto LABEL_23;
  }

  v227 = v56[21];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v228 = swift_dynamicCastObjCClass();
  if (v228)
  {
    v229 = v228;
    v230 = v56[61];
    v53 = v56[40];
    v231 = v56[41];
    v232 = v56[39];
    v233 = v56[21];
    v234 = v389[20];
    v203 = v233;
    OUTLINED_FUNCTION_202();
    sub_23DEF6304(v235);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    OUTLINED_FUNCTION_37_3();
    v236 = OUTLINED_FUNCTION_101_1();
    OUTLINED_FUNCTION_134_0(v236, xmmword_23E222340);
    OUTLINED_FUNCTION_86_2();
    v237();
    (*(v350 + 104))(v236 + v229, *MEMORY[0x277D72E80], v230);
    v211 = v236;
    v56 = v389;
    goto LABEL_39;
  }

  v238 = v56[21];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v239 = v56[37];
    v240 = v56[38];
    v241 = v56[32];
    v242 = v56[21];
    sub_23DEF6468(v240);
    v243 = OUTLINED_FUNCTION_107_0();
    sub_23DF05FA0(v243, v244, v245, v246);
    OUTLINED_FUNCTION_30_6();
    if (!v182)
    {
      v255 = v56[61];
      v256 = v56[37];
      v258 = v56[33];
      v257 = v56[34];
      v241 = v56[32];
      v259 = OUTLINED_FUNCTION_23_5();
      v260(v259);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      OUTLINED_FUNCTION_25_5();
      v261 = OUTLINED_FUNCTION_114_0();
      v262 = OUTLINED_FUNCTION_39_3(v261, xmmword_23E222340);
      v263(v262);
      v264 = *MEMORY[0x277D72E78];
      v265 = OUTLINED_FUNCTION_84_1();
      v266(v265);
      v267 = OUTLINED_FUNCTION_40_4();
      v268(v267);
    }

    v269 = v56[38];
    goto LABEL_60;
  }

  v247 = v56[21];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v248 = v56[35];
    v249 = v56[36];
    v241 = v56[32];
    v250 = v56[21];
    sub_23DEF6554(v249);
    v251 = OUTLINED_FUNCTION_107_0();
    sub_23DF05FA0(v251, v252, v253, v254);
    OUTLINED_FUNCTION_30_6();
    if (!v182)
    {
      v279 = v56[61];
      v281 = v56[34];
      v280 = v56[35];
      v241 = v56[32];
      v282 = v56[33];
      v283 = OUTLINED_FUNCTION_23_5();
      v284(v283);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      OUTLINED_FUNCTION_25_5();
      v285 = OUTLINED_FUNCTION_114_0();
      v286 = OUTLINED_FUNCTION_39_3(v285, xmmword_23E222340);
      v287(v286);
      v288 = *MEMORY[0x277D72E78];
      v289 = OUTLINED_FUNCTION_84_1();
      v290(v289);
      v291 = OUTLINED_FUNCTION_40_4();
      v292(v291);
    }

    v269 = v56[36];
LABEL_60:
    OUTLINED_FUNCTION_188_1();

    v293 = &qword_27E32D640;
    v294 = &qword_23E2296B8;
LABEL_61:
    sub_23DE58BD0(v269, v293, v294);
  }

  else
  {
    v270 = v56[21];
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (swift_dynamicCastObjCClass())
    {
      v271 = v56[30];
      v272 = v56[31];
      v273 = v56[27];
      v274 = v56[21];
      sub_23DEF6728(v272);
      v275 = OUTLINED_FUNCTION_107_0();
      sub_23DF05FA0(v275, v276, v277, v278);
      OUTLINED_FUNCTION_30_6();
      if (!v182)
      {
        v306 = v56[61];
        v308 = v56[29];
        v307 = v56[30];
        v273 = v56[27];
        v309 = v56[28];
        v310 = OUTLINED_FUNCTION_23_5();
        v311(v310);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        OUTLINED_FUNCTION_25_5();
        v312 = OUTLINED_FUNCTION_114_0();
        v313 = OUTLINED_FUNCTION_39_3(v312, xmmword_23E222340);
        v314(v313);
        v315 = *MEMORY[0x277D72F60];
        v316 = OUTLINED_FUNCTION_84_1();
        v317(v316);
        v318 = OUTLINED_FUNCTION_40_4();
        v319(v318);
      }

      v269 = v56[31];
      OUTLINED_FUNCTION_188_1();

      v293 = &qword_27E32D638;
      v294 = &qword_23E2296B0;
      goto LABEL_61;
    }

    v295 = v56[21];
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (!swift_dynamicCastObjCClass())
    {
      v296 = v56[21];
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass())
      {
        v297 = v389[25];
        v298 = v389[26];
        v299 = v389[22];
        v300 = v389[20];
        v301 = v389[21];
        sub_23DEF67CC(v298);
        v302 = OUTLINED_FUNCTION_107_0();
        sub_23DF05FA0(v302, v303, v304, v305);
        OUTLINED_FUNCTION_30_6();
        if (!v182)
        {
          v334 = v389[61];
          v336 = v389[24];
          v335 = v389[25];
          v299 = v389[22];
          v337 = v389[23];
          v338 = OUTLINED_FUNCTION_23_5();
          v339(v338);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
          OUTLINED_FUNCTION_25_5();
          v340 = OUTLINED_FUNCTION_114_0();
          v341 = OUTLINED_FUNCTION_39_3(v340, xmmword_23E222340);
          v342(v341);
          v343 = *MEMORY[0x277D72E60];
          v344 = *(v350 + 104);
          OUTLINED_FUNCTION_148_1();
          v345();
          v346 = OUTLINED_FUNCTION_40_4();
          v347(v346);
        }

        v56 = v389;
        v269 = v389[26];
        OUTLINED_FUNCTION_188_1();

        v293 = &qword_27E32D630;
        v294 = &qword_23E2296A8;
        goto LABEL_61;
      }

      v56 = v389;
      v320 = v389[21];
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v321 = swift_dynamicCastObjCClass();
      if (v321)
      {
        v322 = v321;
        v323 = v389[21];
        v324 = [v322 preferredTypes];
        sub_23E1FCC8C();
        v325 = sub_23E1FDDEC();

        v326 = *(v325 + 16);

        if (v326)
        {
          v327 = v389[61];
          v328 = v389[21];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
          v329 = *(v350 + 72);
          v330 = *(v350 + 80);
          v331 = OUTLINED_FUNCTION_52_3();
          *(v331 + 16) = xmmword_23E222340;
          v56 = v389;
          v332 = [v322 preferredTypes];

          OUTLINED_FUNCTION_33();
          v333 = sub_23E1FDDEC();

          *(v331 + v53) = v333;
          (*(v350 + 104))(v331 + v53, *MEMORY[0x277D72E68], v327);
          sub_23DE5733C(v331);
        }

        else
        {
          v56 = v389;
          v348 = v389[21];
        }
      }
    }
  }

LABEL_23:
  v135 = v56[66];
  v136 = v56[65];
  v137 = v56[17];
  v138 = swift_allocObject();
  *(v138 + 16) = v56[16];
  *v137 = v138;
  v139 = *(v135 + 104);
  v139(v137, *MEMORY[0x277D72AD8], v136);
  if (*(a37 + 16))
  {
    v140 = v56[65];
    v141 = v56[17];
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D680, &qword_23E2296F8);
    v143 = swift_allocBox();
    v145 = v144;
    v146 = *(v142 + 48);
    (*v360)(v144, v141, v140);
    *(v145 + v146) = a37;
    v56 = v389;
    *v141 = v143;
    v139(v141, *MEMORY[0x277D72AC0], v140);
  }

  else
  {
  }

  v147 = [v56[21] allowsMultipleValues];
  v148 = v56[71];
  if (v147)
  {
    v149 = v56[69];
    v150 = v56[65];
    v151 = v56[17];
    sub_23E1FD3CC();

    v152 = *v353;
    v153 = OUTLINED_FUNCTION_54();
    v154(v153);
    v155 = *v360;
    OUTLINED_FUNCTION_86_2();
    v156();
  }

  else
  {
  }

  v157 = v56[70];
  v158 = v56[69];
  v159 = v56[68];
  v160 = v56[67];
  v162 = v56[63];
  v161 = v56[64];
  v163 = v56;
  v166 = v56 + 59;
  v165 = v56[59];
  v164 = v166[1];
  v167 = v163[58];
  v168 = v163[55];
  v357 = v163[54];
  v359 = v163[51];
  v361 = v163[50];
  v363 = v163[49];
  v365 = v163[46];
  v367 = v163[45];
  v369 = v163[42];
  v371 = v163[41];
  v373 = v163[38];
  v375 = v163[37];
  v377 = v163[36];
  v378 = v163[35];
  v379 = v163[34];
  v380 = v163[31];
  v381 = v163[30];
  v382 = v163[29];
  v385 = v163[26];
  v388 = v163[25];
  v390 = v163[24];

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_143_1();

  return v170(v169, v170, v171, v172, v173, v174, v175, v176, a9, v349, v350, v351, v352, a14, v353, v354, v355, v357, v359, v361, v363, v365, v367, v369, v371, v373, v375, v377, v378, v379, v380, v381, v382, v385, v388, v390, a37, a38, a39, a40, a41, a42);
}

void sub_23DEF1B34()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 568);

  v34 = *(v0 + 640);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v8 = *(v0 + 504);
  v7 = *(v0 + 512);
  v10 = *(v0 + 472);
  v9 = *(v0 + 480);
  v11 = *(v0 + 464);
  v12 = *(v0 + 440);
  v15 = *(v0 + 432);
  v16 = *(v0 + 408);
  v17 = *(v0 + 400);
  v18 = *(v0 + 392);
  v19 = *(v0 + 368);
  v20 = *(v0 + 360);
  v21 = *(v0 + 336);
  v22 = *(v0 + 328);
  v23 = *(v0 + 304);
  v24 = *(v0 + 296);
  v25 = *(v0 + 288);
  v26 = *(v0 + 280);
  v27 = *(v0 + 272);
  v28 = *(v0 + 248);
  v29 = *(v0 + 240);
  v30 = *(v0 + 232);
  v31 = *(v0 + 208);
  v32 = *(v0 + 200);
  v33 = *(v0 + 192);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_48();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_23DEF1D18()
{
  result = qword_280DAE760[0];
  if (!qword_280DAE760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DAE760);
  }

  return result;
}

uint64_t sub_23DEF1D6C()
{
  OUTLINED_FUNCTION_23();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D730, &unk_23E223790);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_42();
  v10 = sub_23E1FD64C();
  v1[10] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_42();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D630, &qword_23E2296A8);
  OUTLINED_FUNCTION_25(v14);
  v16 = *(v15 + 64);
  v1[13] = OUTLINED_FUNCTION_91();
  v1[14] = swift_task_alloc();
  v17 = sub_23E1FD6AC();
  v1[15] = v17;
  OUTLINED_FUNCTION_8(v17);
  v1[16] = v18;
  v20 = *(v19 + 64);
  v1[17] = OUTLINED_FUNCTION_42();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D638, &qword_23E2296B0);
  OUTLINED_FUNCTION_25(v21);
  v23 = *(v22 + 64);
  v1[18] = OUTLINED_FUNCTION_91();
  v1[19] = swift_task_alloc();
  v24 = sub_23E1FD65C();
  v1[20] = v24;
  OUTLINED_FUNCTION_8(v24);
  v1[21] = v25;
  v27 = *(v26 + 64);
  v1[22] = OUTLINED_FUNCTION_42();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D640, &qword_23E2296B8);
  OUTLINED_FUNCTION_25(v28);
  v30 = *(v29 + 64);
  v1[23] = OUTLINED_FUNCTION_91();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v31 = sub_23E1FD68C();
  v1[27] = v31;
  OUTLINED_FUNCTION_8(v31);
  v1[28] = v32;
  v34 = *(v33 + 64);
  v1[29] = OUTLINED_FUNCTION_42();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D648, &qword_23E2296C0);
  OUTLINED_FUNCTION_25(v35);
  v37 = *(v36 + 64);
  v1[30] = OUTLINED_FUNCTION_42();
  v38 = sub_23E1FD67C();
  v1[31] = v38;
  OUTLINED_FUNCTION_8(v38);
  v1[32] = v39;
  v41 = *(v40 + 64);
  v1[33] = OUTLINED_FUNCTION_91();
  v1[34] = swift_task_alloc();
  v42 = sub_23E1FD59C();
  v1[35] = v42;
  OUTLINED_FUNCTION_8(v42);
  v1[36] = v43;
  v45 = *(v44 + 64);
  v1[37] = OUTLINED_FUNCTION_42();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D650, &qword_23E2296C8);
  OUTLINED_FUNCTION_25(v46);
  v48 = *(v47 + 64);
  v1[38] = OUTLINED_FUNCTION_42();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D658, &unk_23E2296D0);
  OUTLINED_FUNCTION_25(v49);
  v51 = *(v50 + 64);
  v1[39] = OUTLINED_FUNCTION_42();
  v52 = sub_23E1FD4EC();
  v1[40] = v52;
  OUTLINED_FUNCTION_8(v52);
  v1[41] = v53;
  v55 = *(v54 + 64);
  v1[42] = OUTLINED_FUNCTION_91();
  v1[43] = swift_task_alloc();
  v56 = sub_23E1FD57C();
  v1[44] = v56;
  OUTLINED_FUNCTION_8(v56);
  v1[45] = v57;
  v59 = *(v58 + 64);
  v1[46] = OUTLINED_FUNCTION_42();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D660, &qword_23E224C60);
  OUTLINED_FUNCTION_25(v60);
  v62 = *(v61 + 64);
  v1[47] = OUTLINED_FUNCTION_42();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D668, &unk_23E2296E0);
  OUTLINED_FUNCTION_25(v63);
  v65 = *(v64 + 64);
  v1[48] = OUTLINED_FUNCTION_42();
  v66 = sub_23E1FD6BC();
  v1[49] = v66;
  OUTLINED_FUNCTION_8(v66);
  v1[50] = v67;
  v69 = *(v68 + 64);
  v1[51] = OUTLINED_FUNCTION_91();
  v1[52] = swift_task_alloc();
  v70 = sub_23E1FD03C();
  v1[53] = v70;
  OUTLINED_FUNCTION_8(v70);
  v1[54] = v71;
  v73 = *(v72 + 64);
  v1[55] = OUTLINED_FUNCTION_42();
  v74 = sub_23E1FC6BC();
  v1[56] = v74;
  OUTLINED_FUNCTION_8(v74);
  v1[57] = v75;
  v77 = *(v76 + 64);
  v1[58] = OUTLINED_FUNCTION_42();
  v78 = sub_23E1FD3DC();
  v1[59] = v78;
  OUTLINED_FUNCTION_8(v78);
  v1[60] = v79;
  v81 = *(v80 + 64);
  v1[61] = OUTLINED_FUNCTION_91();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v82 = sub_23E1FD46C();
  v1[65] = v82;
  OUTLINED_FUNCTION_8(v82);
  v1[66] = v83;
  v85 = *(v84 + 64);
  v1[67] = OUTLINED_FUNCTION_42();
  v86 = sub_23E1FD41C();
  v1[68] = v86;
  OUTLINED_FUNCTION_8(v86);
  v1[69] = v87;
  v89 = *(v88 + 64);
  v1[70] = OUTLINED_FUNCTION_42();
  v90 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v90, v91, v92);
}

uint64_t sub_23DEF2404()
{
  OUTLINED_FUNCTION_4();
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [*(v0 + 32) key];
    v1 = sub_23E1FDC1C();
    v2 = v4;
  }

  *(v0 + 576) = v2;
  *(v0 + 568) = v1;
  v5 = objc_opt_self();
  sub_23E1FB7BC();
  *(v0 + 584) = [v5 defaultContext];
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 592) = v6;
  *v6 = v7;
  v6[1] = sub_23DEF2528;
  v8 = *(v0 + 560);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v12 = *(v0 + 32);
  v11 = *(v0 + 40);

  return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)();
}

uint64_t sub_23DEF2528()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *(v2 + 592);
  *v4 = *v1;
  *(v3 + 600) = v0;

  v6 = *(v2 + 584);
  if (v0)
  {
    v7 = *(v3 + 576);
  }

  else
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23DEF265C()
{
  v4 = *(v0 + 560);
  v5 = *(v0 + 536);
  v6 = *(v0 + 56);
  sub_23E1FD3EC();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  *(v0 + 608) = v7;
  if (v7)
  {
    v8 = *(v0 + 576);
    v9 = *(v0 + 568);
    v10 = *(v0 + 56);
    OUTLINED_FUNCTION_49();
    *(v0 + 616) = sub_23E1FDBDC();
    *(v0 + 624) = sub_23E1FDECC();
    *(v0 + 632) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    v11 = OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  *(v0 + 16) = MEMORY[0x277D84F90];
  v14 = &off_278C24000;
  v15 = [*(v0 + 64) preferredTypes];
  OUTLINED_FUNCTION_110_0();
  v16 = sub_23E1FCC8C();
  OUTLINED_FUNCTION_54();
  v17 = sub_23E1FDDEC();

  v18 = *(v17 + 16);

  v19 = MEMORY[0x277D72E68];
  if (v18)
  {
    v20 = *(v0 + 392);
    v2 = *(v0 + 400);
    v21 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v1 = OUTLINED_FUNCTION_34_4();
    *(v1 + 16) = xmmword_23E222340;
    v22 = [v21 preferredTypes];
    v14 = OUTLINED_FUNCTION_218();

    *(v1 + v3) = v14;
    v23 = *v19;
    v24 = OUTLINED_FUNCTION_58_2();
    v25(v24);
    OUTLINED_FUNCTION_182_0();
  }

  v26 = *(v0 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (v27 = *(v0 + 32), objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_196_1();
    v199 = v28;
    v200 = v29;
    v201 = v30;
    v202 = *(v0 + 280);
    v203 = v31;
    v32 = *(v0 + 56);
    v33 = *(v0 + 32);
    v34 = [v32 identifier];
    v35 = sub_23E1FDC1C();
    v37 = v36;

    v38 = [v33 key];
    v39 = sub_23E1FDC1C();
    v41 = v40;

    *v1 = v35;
    *(v1 + 8) = v37;
    *(v1 + 16) = v39;
    *(v1 + 24) = v41;
    (*(v19 + 13))(v1, *MEMORY[0x277D72E88], v199);
    sub_23DF05F00(v32, &selRef_appBundleIdentifier);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_79_2();
    sub_23E1FD58C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v42 = *(v16 + 72);
    v43 = *(v16 + 80);
    v44 = OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_205(v44, xmmword_23E222340);
    v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0) + 48);
    v2 = v201;
    v19 = v202;
    OUTLINED_FUNCTION_158_1();
    v45(v37, v200, v202);
    sub_23E1FD4CC();
    (*(v16 + 104))(v37, *MEMORY[0x277D72FA0], v203);
    sub_23DE5733C(v44);
    v46 = *(v201 + 8);
    v47 = OUTLINED_FUNCTION_66();
    v48(v47);
    goto LABEL_10;
  }

  v72 = *(v0 + 64);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v1 = *(v0 + 240);
    v73 = *(v0 + 248);
    v74 = *(v0 + 64);
    sub_23DEF6230(v1);
    OUTLINED_FUNCTION_93(v1, 1, v73);
    if (!v75)
    {
      v78 = *(v0 + 392);
      v2 = *(v0 + 400);
      v79 = *(v0 + 272);
      v80 = *(v0 + 256);
      v81 = *(v0 + 240);
      v19 = *(v0 + 64);
      v82 = v80[4];
      v83 = OUTLINED_FUNCTION_100_1();
      v84(v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v1 = OUTLINED_FUNCTION_34_4();
      *(v1 + 16) = xmmword_23E222340;
      v85 = v80[2];
      OUTLINED_FUNCTION_73_3();
      v86();
      v87 = *MEMORY[0x277D72E70];
      v88 = OUTLINED_FUNCTION_58_2();
      v89(v88);
      OUTLINED_FUNCTION_182_0();

      v90 = v80[1];
      v91 = OUTLINED_FUNCTION_50();
      v92(v91);
      goto LABEL_10;
    }

    v76 = *(v0 + 240);

    sub_23DE58BD0(v76, &qword_27E32D648, &qword_23E2296C0);
  }

  v77 = *(v0 + 64);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (v77 = *(v0 + 64), objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    v1 = OUTLINED_FUNCTION_74_4();
    v19 = [v14 minimumValue];
    v93 = [v14 maximumValue];
    OUTLINED_FUNCTION_207();
    sub_23E1FD66C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v94 = *(v3 + 72);
    v95 = *(v3 + 80);
    v96 = OUTLINED_FUNCTION_52_3();
    *(v96 + 16) = xmmword_23E222340;
    v97 = OUTLINED_FUNCTION_38_5(v96, v2);
    v98(v97);
    (*(v3 + 104))(v19 + v96, *MEMORY[0x277D72E70], v77);
    v99 = v96;
LABEL_25:
    sub_23DE5733C(v99);

    v100 = OUTLINED_FUNCTION_41_4();
    v101(v100);
    goto LABEL_10;
  }

  v102 = *(v0 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v103 = swift_dynamicCastObjCClass();
  if (v103)
  {
    v104 = v103;
    v105 = *(v0 + 392);
    v2 = *(v0 + 400);
    v106 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v1 = OUTLINED_FUNCTION_34_4();
    *(v1 + 16) = xmmword_23E222340;
    v107 = v106;
    v108 = [v104 supportedTypes];
    v109 = OUTLINED_FUNCTION_218();

    *(v1 + v3) = v109;
    v110 = *v19;
    v111 = OUTLINED_FUNCTION_58_2();
    v112(v111);
    OUTLINED_FUNCTION_182_0();

    goto LABEL_10;
  }

  v113 = *(v0 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v1 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_207();
    sub_23DEF6304(v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v115 = *(v3 + 72);
    v116 = *(v3 + 80);
    v19 = OUTLINED_FUNCTION_51_2();
    *(v19 + 1) = xmmword_23E222340;
    OUTLINED_FUNCTION_158_1();
    OUTLINED_FUNCTION_73_3();
    v117();
    (*(v3 + 104))(v19 + v113, *MEMORY[0x277D72E80], v14);
    v99 = v19;
    goto LABEL_25;
  }

  v118 = *(v0 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_213();
    sub_23DEF6468(v16);
    v119 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v119, v120, v121, v122);
    OUTLINED_FUNCTION_29_3();
    if (!v75)
    {
      v128 = *(v0 + 392);
      v19 = *(v0 + 400);
      v129 = *(v0 + 200);
      v131 = *(v0 + 168);
      v130 = *(v0 + 176);
      v1 = *(v0 + 160);
      v132 = OUTLINED_FUNCTION_22_6();
      v133(v132);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v134 = OUTLINED_FUNCTION_14_6();
      v135 = OUTLINED_FUNCTION_7_10(v134, xmmword_23E222340);
      v136(v135);
      v137 = *MEMORY[0x277D72E78];
      v138 = OUTLINED_FUNCTION_44_5();
      v139(v138);
      v140 = OUTLINED_FUNCTION_42_3();
      v141(v140);
    }

    v142 = *(v0 + 208);
LABEL_44:
    OUTLINED_FUNCTION_135_1();

    v162 = &unk_27E32D640;
    v163 = &unk_23E2296B8;
LABEL_45:
    sub_23DE58BD0(v142, v162, v163);
    goto LABEL_10;
  }

  v123 = *(v0 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_214();
    sub_23DEF6554(v16);
    v124 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v124, v125, v126, v127);
    OUTLINED_FUNCTION_29_3();
    if (!v75)
    {
      v148 = *(v0 + 392);
      v19 = *(v0 + 400);
      v150 = *(v0 + 176);
      v149 = *(v0 + 184);
      v1 = *(v0 + 160);
      v151 = *(v0 + 168);
      v152 = OUTLINED_FUNCTION_22_6();
      v153(v152);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v154 = OUTLINED_FUNCTION_14_6();
      v155 = OUTLINED_FUNCTION_7_10(v154, xmmword_23E222340);
      v156(v155);
      v157 = *MEMORY[0x277D72E78];
      v158 = OUTLINED_FUNCTION_44_5();
      v159(v158);
      v160 = OUTLINED_FUNCTION_42_3();
      v161(v160);
    }

    v142 = *(v0 + 192);
    goto LABEL_44;
  }

  v143 = *(v0 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_215();
    sub_23DEF6728(v16);
    v144 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v144, v145, v146, v147);
    OUTLINED_FUNCTION_29_3();
    if (!v75)
    {
      v170 = *(v0 + 392);
      v19 = *(v0 + 400);
      v172 = *(v0 + 136);
      v171 = *(v0 + 144);
      v1 = *(v0 + 120);
      v173 = *(v0 + 128);
      v174 = OUTLINED_FUNCTION_22_6();
      v175(v174);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v176 = OUTLINED_FUNCTION_14_6();
      v177 = OUTLINED_FUNCTION_7_10(v176, xmmword_23E222340);
      v178(v177);
      v179 = *MEMORY[0x277D72F60];
      v180 = OUTLINED_FUNCTION_44_5();
      v181(v180);
      v182 = OUTLINED_FUNCTION_42_3();
      v183(v182);
    }

    v142 = *(v0 + 152);
    OUTLINED_FUNCTION_135_1();

    v162 = &unk_27E32D638;
    v163 = &unk_23E2296B0;
    goto LABEL_45;
  }

  v164 = *(v0 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (!swift_dynamicCastObjCClass())
  {
    v165 = *(v0 + 32);
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_190_1();
      sub_23DEF67CC(v16);
      v166 = OUTLINED_FUNCTION_50();
      sub_23DF05FA0(v166, v167, v168, v169);
      OUTLINED_FUNCTION_29_3();
      if (!v75)
      {
        v184 = *(v0 + 392);
        v19 = *(v0 + 400);
        v186 = *(v0 + 96);
        v185 = *(v0 + 104);
        v1 = *(v0 + 80);
        v187 = *(v0 + 88);
        v188 = OUTLINED_FUNCTION_22_6();
        v189(v188);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v190 = OUTLINED_FUNCTION_14_6();
        v191 = OUTLINED_FUNCTION_7_10(v190, xmmword_23E222340);
        v192(v191);
        v193 = *MEMORY[0x277D72E60];
        v194 = OUTLINED_FUNCTION_44_5();
        v195(v194);
        v196 = OUTLINED_FUNCTION_42_3();
        v197(v196);
      }

      v142 = *(v0 + 112);
      OUTLINED_FUNCTION_135_1();

      v162 = &unk_27E32D630;
      v163 = &unk_23E2296A8;
      goto LABEL_45;
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_175_1();
  if (v49)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D910, &qword_23E2298B0);
    swift_allocBox();
    v19 = v51;
    v52 = *(v50 + 48);
    v53 = *(v2 + 16);
    OUTLINED_FUNCTION_17_5();
    v54();
    *(v19 + v52) = v1;
    v55 = MEMORY[0x277D72AB8];
  }

  else
  {

    swift_allocBox();
    v56 = *(v2 + 16);
    OUTLINED_FUNCTION_17_5();
    v57();
    v55 = MEMORY[0x277D72AD0];
  }

  v58 = OUTLINED_FUNCTION_122_0(v55);
  v59(v58);
  v60 = *(v19 + 4);
  OUTLINED_FUNCTION_17_5();
  v60();
  *(v0 + 704) = 0u;
  *(v0 + 696) = v60;
  if ([*(v0 + 32) allowsMultipleValues])
  {
    OUTLINED_FUNCTION_155_0();
    v61 = OUTLINED_FUNCTION_129_1();
    v62(v61);
    OUTLINED_FUNCTION_73_3();
    v60();
  }

  v63 = *(v0 + 576);
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 720) = v64;
  *v64 = v65;
  v66 = OUTLINED_FUNCTION_21_9(v64);

  return sub_23DF00008(v66, v67, v68, v69, v70, v71);
}

uint64_t sub_23DEF3284()
{
  OUTLINED_FUNCTION_4();
  v1 = v0[79];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[7];

  v0[80] = OUTLINED_FUNCTION_168_1(v5, sel_parameterMetadataForIdentifier_);

  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEF3314()
{
  v5 = *(v1 + 640);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v2 = &off_278C24000;
    v7 = [v5 valueType];
    v8 = [v7 wf_entityValueType];
    *(v1 + 648) = v8;

    if (v8)
    {
      v9 = *(v1 + 624);
      v10 = *(v1 + 56);
      v11 = v8;
      *(v1 + 656) = sub_23E1FDEBC();
      OUTLINED_FUNCTION_37();
      sub_23E1FDE6C();
      OUTLINED_FUNCTION_78();
LABEL_14:
      OUTLINED_FUNCTION_79_2();

      return MEMORY[0x2822009F8](v59, v60, v61);
    }

    v0 = *(v1 + 640);
    v56 = *(v1 + 608);
    *(v1 + 16) = v6;
    v57 = v56;
    v58 = [v0 valueType];
    *(v1 + 672) = v58;
    if (v58)
    {
      sub_23E1FDECC();
      *(v1 + 680) = OUTLINED_FUNCTION_195_1();
      OUTLINED_FUNCTION_37();
      sub_23E1FDE6C();
      OUTLINED_FUNCTION_78();
      goto LABEL_14;
    }

    v12 = *(v1 + 640);
  }

  else
  {
    v12 = 0;
    *(v1 + 16) = MEMORY[0x277D84F90];
  }

  v13 = &off_278C24000;
  v14 = [*(v1 + 64) preferredTypes];
  OUTLINED_FUNCTION_110_0();
  v15 = sub_23E1FCC8C();
  OUTLINED_FUNCTION_54();
  v16 = sub_23E1FDDEC();

  v17 = *(v16 + 16);

  v18 = MEMORY[0x277D72E68];
  if (v17)
  {
    v19 = *(v1 + 392);
    v3 = *(v1 + 400);
    v20 = *(v1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v2 = OUTLINED_FUNCTION_34_4();
    *(v2 + 16) = xmmword_23E222340;
    v21 = [v20 preferredTypes];
    v13 = OUTLINED_FUNCTION_218();

    v18 = MEMORY[0x277D72E68];
    *(v2 + v4) = v13;
    v22 = *v18;
    v23 = OUTLINED_FUNCTION_58_2();
    v24(v23);
    OUTLINED_FUNCTION_182_0();
  }

  v25 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (v26 = *(v1 + 32), objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_196_1();
    v206 = v27;
    v207 = v28;
    v208 = v29;
    v209 = *(v1 + 280);
    v210 = v30;
    v205 = *(v1 + 56);
    v31 = *(v1 + 32);
    v32 = [v205 identifier];
    v33 = v12;
    v34 = sub_23E1FDC1C();
    v36 = v35;

    v37 = [v31 key];
    v38 = sub_23E1FDC1C();
    v40 = v39;

    *v2 = v34;
    *(v2 + 8) = v36;
    v12 = v33;
    *(v2 + 16) = v38;
    *(v2 + 24) = v40;
    MEMORY[0xEB9B646EBD858](v2, *MEMORY[0x277D72E88], v206);
    sub_23DF05F00(v205, &selRef_appBundleIdentifier);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_79_2();
    sub_23E1FD58C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v41 = *(v15 + 72);
    v42 = *(v15 + 80);
    v43 = OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_205(v43, xmmword_23E222340);
    v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0) + 48);
    v3 = v208;
    v44 = v209;
    OUTLINED_FUNCTION_158_1();
    v45(v36, v207, v209);
    sub_23E1FD4CC();
    (*(v15 + 104))(v36, *MEMORY[0x277D72FA0], v210);
    sub_23DE5733C(v43);
    v46 = *(v208 + 8);
    v47 = OUTLINED_FUNCTION_66();
    v48(v47);
    goto LABEL_10;
  }

  v78 = *(v1 + 64);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v13 = v18;
    v2 = *(v1 + 240);
    v79 = *(v1 + 248);
    v80 = *(v1 + 64);
    sub_23DEF6230(v2);
    OUTLINED_FUNCTION_93(v2, 1, v79);
    if (!v81)
    {
      v84 = *(v1 + 392);
      v3 = *(v1 + 400);
      v85 = *(v1 + 272);
      v86 = *(v1 + 256);
      v87 = *(v1 + 240);
      v44 = *(v1 + 64);
      v88 = v86[4];
      v89 = OUTLINED_FUNCTION_100_1();
      v90(v89);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v2 = OUTLINED_FUNCTION_34_4();
      *(v2 + 16) = xmmword_23E222340;
      v91 = v86[2];
      OUTLINED_FUNCTION_73_3();
      v92();
      v93 = *MEMORY[0x277D72E70];
      v94 = OUTLINED_FUNCTION_58_2();
      v95(v94);
      OUTLINED_FUNCTION_182_0();

      v96 = v86[1];
      v97 = OUTLINED_FUNCTION_50();
      v98(v97);
      goto LABEL_10;
    }

    v82 = *(v1 + 240);

    sub_23DE58BD0(v82, &qword_27E32D648, &qword_23E2296C0);
    v18 = v13;
  }

  v83 = *(v1 + 64);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (v83 = *(v1 + 64), objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    v2 = OUTLINED_FUNCTION_74_4();
    v44 = [v13 minimumValue];
    v99 = [v13 maximumValue];
    OUTLINED_FUNCTION_207();
    sub_23E1FD66C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v100 = *(v4 + 72);
    v101 = *(v4 + 80);
    v102 = OUTLINED_FUNCTION_52_3();
    *(v102 + 16) = xmmword_23E222340;
    v103 = OUTLINED_FUNCTION_38_5(v102, v3);
    v104(v103);
    (*(v4 + 104))(v44 + v102, *MEMORY[0x277D72E70], v83);
    v105 = v102;
LABEL_31:
    sub_23DE5733C(v105);

    v106 = OUTLINED_FUNCTION_41_4();
    v107(v106);
    goto LABEL_10;
  }

  v44 = v18;
  v108 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v109 = swift_dynamicCastObjCClass();
  if (v109)
  {
    v110 = v109;
    v111 = *(v1 + 392);
    v3 = *(v1 + 400);
    v112 = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v2 = OUTLINED_FUNCTION_34_4();
    *(v2 + 16) = xmmword_23E222340;
    v113 = v112;
    v114 = [v110 supportedTypes];
    v115 = OUTLINED_FUNCTION_218();

    *(v2 + v4) = v115;
    v116 = *v44;
    v117 = OUTLINED_FUNCTION_58_2();
    v118(v117);
    OUTLINED_FUNCTION_182_0();

    goto LABEL_10;
  }

  v119 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v2 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_207();
    sub_23DEF6304(v120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v121 = *(v4 + 72);
    v122 = *(v4 + 80);
    v44 = OUTLINED_FUNCTION_51_2();
    *(v44 + 1) = xmmword_23E222340;
    OUTLINED_FUNCTION_158_1();
    OUTLINED_FUNCTION_73_3();
    v123();
    (*(v4 + 104))(v44 + v119, *MEMORY[0x277D72E80], v13);
    v105 = v44;
    goto LABEL_31;
  }

  v124 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_213();
    sub_23DEF6468(v15);
    v125 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v125, v126, v127, v128);
    OUTLINED_FUNCTION_29_3();
    if (!v81)
    {
      v134 = *(v1 + 392);
      v44 = *(v1 + 400);
      v135 = *(v1 + 200);
      v137 = *(v1 + 168);
      v136 = *(v1 + 176);
      v2 = *(v1 + 160);
      v138 = OUTLINED_FUNCTION_22_6();
      v139(v138);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v140 = OUTLINED_FUNCTION_14_6();
      v141 = OUTLINED_FUNCTION_7_10(v140, xmmword_23E222340);
      v142(v141);
      v143 = *MEMORY[0x277D72E78];
      v144 = OUTLINED_FUNCTION_44_5();
      v145(v144);
      v146 = OUTLINED_FUNCTION_42_3();
      v147(v146);
    }

    v148 = *(v1 + 208);
LABEL_50:
    OUTLINED_FUNCTION_135_1();

    v168 = &unk_27E32D640;
    v169 = &unk_23E2296B8;
LABEL_51:
    sub_23DE58BD0(v148, v168, v169);
    goto LABEL_10;
  }

  v129 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_214();
    sub_23DEF6554(v15);
    v130 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v130, v131, v132, v133);
    OUTLINED_FUNCTION_29_3();
    if (!v81)
    {
      v154 = *(v1 + 392);
      v44 = *(v1 + 400);
      v156 = *(v1 + 176);
      v155 = *(v1 + 184);
      v2 = *(v1 + 160);
      v157 = *(v1 + 168);
      v158 = OUTLINED_FUNCTION_22_6();
      v159(v158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v160 = OUTLINED_FUNCTION_14_6();
      v161 = OUTLINED_FUNCTION_7_10(v160, xmmword_23E222340);
      v162(v161);
      v163 = *MEMORY[0x277D72E78];
      v164 = OUTLINED_FUNCTION_44_5();
      v165(v164);
      v166 = OUTLINED_FUNCTION_42_3();
      v167(v166);
    }

    v148 = *(v1 + 192);
    goto LABEL_50;
  }

  v149 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_215();
    sub_23DEF6728(v15);
    v150 = OUTLINED_FUNCTION_50();
    sub_23DF05FA0(v150, v151, v152, v153);
    OUTLINED_FUNCTION_29_3();
    if (!v81)
    {
      v176 = *(v1 + 392);
      v44 = *(v1 + 400);
      v178 = *(v1 + 136);
      v177 = *(v1 + 144);
      v2 = *(v1 + 120);
      v179 = *(v1 + 128);
      v180 = OUTLINED_FUNCTION_22_6();
      v181(v180);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v182 = OUTLINED_FUNCTION_14_6();
      v183 = OUTLINED_FUNCTION_7_10(v182, xmmword_23E222340);
      v184(v183);
      v185 = *MEMORY[0x277D72F60];
      v186 = OUTLINED_FUNCTION_44_5();
      v187(v186);
      v188 = OUTLINED_FUNCTION_42_3();
      v189(v188);
    }

    v148 = *(v1 + 152);
    OUTLINED_FUNCTION_135_1();

    v168 = &unk_27E32D638;
    v169 = &unk_23E2296B0;
    goto LABEL_51;
  }

  v170 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (!swift_dynamicCastObjCClass())
  {
    v171 = *(v1 + 32);
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_190_1();
      sub_23DEF67CC(v15);
      v172 = OUTLINED_FUNCTION_50();
      sub_23DF05FA0(v172, v173, v174, v175);
      OUTLINED_FUNCTION_29_3();
      if (!v81)
      {
        v190 = *(v1 + 392);
        v44 = *(v1 + 400);
        v192 = *(v1 + 96);
        v191 = *(v1 + 104);
        v2 = *(v1 + 80);
        v193 = *(v1 + 88);
        v194 = OUTLINED_FUNCTION_22_6();
        v195(v194);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v196 = OUTLINED_FUNCTION_14_6();
        v197 = OUTLINED_FUNCTION_7_10(v196, xmmword_23E222340);
        v198(v197);
        v199 = *MEMORY[0x277D72E60];
        v200 = OUTLINED_FUNCTION_44_5();
        v201(v200);
        v202 = OUTLINED_FUNCTION_42_3();
        v203(v202);
      }

      v148 = *(v1 + 112);
      OUTLINED_FUNCTION_135_1();

      v168 = &unk_27E32D630;
      v169 = &unk_23E2296A8;
      goto LABEL_51;
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_175_1();
  if (v49)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D910, &qword_23E2298B0);
    swift_allocBox();
    v44 = v51;
    v52 = *(v50 + 48);
    v53 = *(v3 + 16);
    OUTLINED_FUNCTION_17_5();
    v54();
    *(v44 + v52) = v2;
    v55 = MEMORY[0x277D72AB8];
  }

  else
  {

    swift_allocBox();
    v62 = *(v3 + 16);
    OUTLINED_FUNCTION_17_5();
    v63();
    v55 = MEMORY[0x277D72AD0];
  }

  v64 = OUTLINED_FUNCTION_122_0(v55);
  v65(v64);
  v66 = v44[4];
  OUTLINED_FUNCTION_17_5();
  v66();
  *(v1 + 712) = 0;
  *(v1 + 704) = v12;
  *(v1 + 696) = v66;
  if ([*(v1 + 32) allowsMultipleValues])
  {
    OUTLINED_FUNCTION_155_0();
    v67 = OUTLINED_FUNCTION_129_1();
    v68(v67);
    OUTLINED_FUNCTION_73_3();
    v66();
  }

  v69 = *(v1 + 576);
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v1 + 720) = v70;
  *v70 = v71;
  v72 = OUTLINED_FUNCTION_21_9(v70);

  return sub_23DF00008(v72, v73, v74, v75, v76, v77);
}

uint64_t sub_23DEF3FE4()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[82];
  v2 = v0[76];

  v0[83] = [v2 fullyQualifiedLinkActionIdentifier];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEF4060()
{
  v96 = v0;
  v1 = *(v0 + 664);
  v2 = [v1 bundleIdentifier];

  v3 = v2;
  if (!v2)
  {
    sub_23E1FDC1C();
    v3 = sub_23E1FDBDC();
  }

  v4 = *(v0 + 648);
  sub_23E1FDC1C();
  v5 = [v4 wf:v3 contentItemClassWithAppBundleIdentifier:?];

  if (!v5 || (swift_getObjCClassMetadata(), sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8), !swift_dynamicCastMetatype()))
  {
    v22 = *(v0 + 648);
    v23 = *(v0 + 576);
    v24 = *(v0 + 440);
    v25 = *(v0 + 56);

    v26 = *MEMORY[0x277D7A4D8];
    sub_23E1FCB9C();
    v27 = v22;
    sub_23E1FB7BC();
    v28 = sub_23E1FD02C();
    v29 = sub_23E1FE1BC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 648);
      v31 = *(v0 + 432);
      v94 = *(v0 + 440);
      v32 = *(v0 + 424);
      v33 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = OUTLINED_FUNCTION_35_0();
      v37 = sub_23DE56B40(v34, v35, v36);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = [v30 identifier];
      v39 = sub_23E1FDC1C();
      v41 = v40;

      v42 = sub_23DE56B40(v39, v41, v95);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_23DE30000, v28, v29, "Missing content item class for: %s.%s, throwing missingLinkParameterContentItem", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_56();

      (*(v31 + 8))(v94, v32);
    }

    else
    {
      v44 = *(v0 + 432);
      v43 = *(v0 + 440);
      v45 = *(v0 + 424);

      v46 = OUTLINED_FUNCTION_42_3();
      v47(v46);
    }

    v48 = *(v0 + 648);
    v49 = *(v0 + 640);
    v91 = *(v0 + 560);
    v50 = *(v0 + 552);
    v51 = *(v0 + 544);
    v52 = *(v0 + 536);
    v53 = *(v0 + 528);
    v54 = *(v0 + 520);
    v55 = *(v0 + 56);
    sub_23DEF1D18();
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_48_5(v56, 5);
    swift_willThrow();

    (*(v53 + 8))(v52, v54);
    (*(v50 + 8))(v91, v51);
    goto LABEL_11;
  }

  v93 = *(v0 + 600);
  v6 = *(v0 + 512);
  v8 = *(v0 + 456);
  v7 = *(v0 + 464);
  v9 = *(v0 + 448);
  v10 = *(v0 + 56);
  v11 = *(v0 + 32);

  *v7 = v11;
  v7[1] = v10;
  (*(v8 + 104))(v7, *MEMORY[0x277D7BE30], v9);
  sub_23DF05FF8(&qword_27E32D740, &unk_280DAE750, 0x277CFC2F8);
  v12 = v10;
  v13 = v11;
  sub_23E1FC6DC();
  sub_23E1FC6CC();
  v14 = *(v0 + 648);
  if (v93)
  {
    v15 = *(v0 + 576);
    v90 = *(v0 + 560);
    v16 = *(v0 + 552);
    v86 = *(v0 + 536);
    v88 = *(v0 + 544);
    v17 = *(v0 + 528);
    v82 = *(v0 + 640);
    v84 = *(v0 + 520);
    v18 = *(v0 + 456);
    v19 = *(v0 + 464);
    v20 = *(v0 + 448);
    v21 = *(v0 + 56);

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v86, v84);
    (*(v16 + 8))(v90, v88);
LABEL_11:
    v57 = *(v0 + 560);
    v58 = *(v0 + 536);
    v60 = *(v0 + 504);
    v59 = *(v0 + 512);
    OUTLINED_FUNCTION_65_1();
    v80 = *(v0 + 152);
    v81 = *(v0 + 144);
    v83 = *(v0 + 136);
    v85 = *(v0 + 112);
    v87 = *(v0 + 104);
    v89 = *(v0 + 96);
    v92 = *(v0 + 72);

    OUTLINED_FUNCTION_19();

    return v61();
  }

  v63 = *(v0 + 512);
  v64 = *(v0 + 472);
  v65 = *(v0 + 480);
  v66 = *(v0 + 56);
  v67 = *(v0 + 24);
  (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));

  v68 = *(v65 + 32);
  OUTLINED_FUNCTION_149_1();
  v68();
  *(v0 + 704) = *(v0 + 640);
  *(v0 + 696) = v68;
  if ([*(v0 + 32) allowsMultipleValues])
  {
    OUTLINED_FUNCTION_155_0();
    v69 = OUTLINED_FUNCTION_129_1();
    v70(v69);
    OUTLINED_FUNCTION_73_3();
    v68();
  }

  v71 = *(v0 + 576);
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 720) = v72;
  *v72 = v73;
  v74 = OUTLINED_FUNCTION_21_9(v72);

  return sub_23DF00008(v74, v75, v76, v77, v78, v79);
}

uint64_t sub_23DEF4768()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[85];
  v2 = v0[76];

  v0[86] = [v2 fullyQualifiedLinkActionIdentifier];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEF47E4()
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v1 = v0;
  v2 = *(v0 + 688);
  v3 = *(v1 + 672);
  v4 = *(v1 + 480);
  v5 = *(v1 + 400);
  v6 = *(v1 + 360);
  v323 = *(v1 + 368);
  v7 = *(v1 + 328);
  v8 = [v2 bundleIdentifier];

  v9 = sub_23E1FDC1C();
  sub_23DEF603C();
  v11 = v10;
  v340 = sub_23DE4D8B0(v10);
  v12 = 0;
  v337 = v11 & 0xC000000000000001;
  v325 = v11;
  v335 = v11 & 0xFFFFFFFFFFFFFF8;
  v322 = (v4 + 32);
  v321 = *MEMORY[0x277D72E90];
  v320 = (v7 + 8);
  v319 = (v4 + 8);
  v324 = *MEMORY[0x277D72FA0];
  v318 = (v5 + 104);
  v316 = (v5 + 32);
  v13 = *(v1 + 600);
  v317 = MEMORY[0x277D84F90];
  v342 = v1;
LABEL_2:
  v14 = v325;
  while (1)
  {
    if (v340 == v12)
    {
      v81 = *(v1 + 672);

      *(v1 + 16) = v317;
      v9 = *(v1 + 640);
      v82 = &off_278C24000;
      v83 = [*(v1 + 64) preferredTypes];
      OUTLINED_FUNCTION_110_0();
      sub_23E1FCC8C();
      OUTLINED_FUNCTION_54();
      v84 = sub_23E1FDDEC();

      v85 = *(v84 + 16);

      v12 = &off_23E222000;
      v14 = MEMORY[0x277D72E68];
      if (v85)
      {
        v86 = *(v1 + 392);
        v5 = *(v1 + 400);
        v87 = *(v1 + 64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v88 = OUTLINED_FUNCTION_14_6();
        *(v88 + 16) = xmmword_23E222340;
        v89 = [v87 preferredTypes];
        v82 = sub_23E1FDDEC();

        *(v88 + v1) = v82;
        v90 = *v14;
        v91 = OUTLINED_FUNCTION_123_0();
        v92(v91);
        sub_23DE5733C(v88);
      }

      v93 = *(v1 + 32);
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass() || (v94 = *(v1 + 32), objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
      {
        v95 = *(v1 + 400);
        v96 = *(v1 + 360);
        v97 = *(v1 + 368);
        v334 = *(v1 + 352);
        v336 = *(v1 + 296);
        v338 = *(v1 + 288);
        v339 = *(v1 + 280);
        v341 = *(v1 + 392);
        v98 = *(v1 + 56);
        v99 = *(v1 + 32);
        v100 = [v98 identifier];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_193_0();
        v101 = [v99 key];
        v102 = sub_23E1FDC1C();
        v104 = v103;

        *v97 = v9;
        v97[1] = &off_23E222000;
        v97[2] = v102;
        v97[3] = v104;
        v1 = v342;
        (*(v96 + 104))(v97, *MEMORY[0x277D72E88], v334);
        sub_23DF05F00(v98, &selRef_appBundleIdentifier);
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_79_2();
        sub_23E1FD58C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v105 = *(v95 + 72);
        v106 = *(v95 + 80);
        v107 = OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_205(v107, xmmword_23E222340);
        LODWORD(v96) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0) + 48);
        (*(v338 + 16))(v104, v336, v339);
        sub_23E1FD4CC();
        (*(v95 + 104))(v104, v324, v341);
        sub_23DE5733C(v107);
        v108 = *(v338 + 8);
        v109 = OUTLINED_FUNCTION_45();
        v110(v109);
        goto LABEL_26;
      }

      v151 = *(v1 + 64);
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass())
      {
        v152 = *(v1 + 240);
        v153 = *(v1 + 248);
        v154 = *(v1 + 64);
        sub_23DEF6230(v152);
        OUTLINED_FUNCTION_93(v152, 1, v153);
        if (!v30)
        {
          v157 = *(v1 + 392);
          v158 = *(v1 + 400);
          v159 = *(v1 + 272);
          v160 = *(v1 + 248);
          v161 = *(v1 + 256);
          v162 = *(v1 + 240);
          v163 = *(v1 + 64);
          v164 = OUTLINED_FUNCTION_200();
          v165(v164);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
          v166 = OUTLINED_FUNCTION_14_6();
          *(v166 + 16) = xmmword_23E222340;
          v167 = *(v161 + 16);
          OUTLINED_FUNCTION_86_2();
          v168();
          v169 = *MEMORY[0x277D72E70];
          v170 = OUTLINED_FUNCTION_123_0();
          v171(v170);
          sub_23DE5733C(v166);

          v172 = *(v161 + 8);
          v173 = OUTLINED_FUNCTION_107_0();
          v174(v173);
          goto LABEL_26;
        }

        v155 = *(v1 + 240);

        sub_23DE58BD0(v155, &qword_27E32D648, &qword_23E2296C0);
      }

      v156 = *(v1 + 64);
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (!swift_dynamicCastObjCClass())
      {
        v156 = *(v1 + 64);
        objc_opt_self();
        OUTLINED_FUNCTION_20();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_44;
        }
      }

      v175 = OUTLINED_FUNCTION_112_0();
      v176 = [v82 minimumValue];
      v177 = [v82 maximumValue];
      OUTLINED_FUNCTION_202();
      sub_23E1FD66C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      OUTLINED_FUNCTION_37_3();
      v178 = OUTLINED_FUNCTION_114_0();
      OUTLINED_FUNCTION_134_0(v178, xmmword_23E222340);
      OUTLINED_FUNCTION_86_2();
      v179();
      (*(v1 + 104))(&v176[v178], *MEMORY[0x277D72E70], v156);
      v1 = v342;
      v180 = v178;
LABEL_41:
      sub_23DE5733C(v180);

      v181 = *(v5 + 8);
      v182 = OUTLINED_FUNCTION_107_0();
      v183(v182);
      goto LABEL_26;
    }

    if (v337)
    {
      v15 = MEMORY[0x23EF04DD0](v12, v14);
    }

    else
    {
      if (v12 >= *(v335 + 16))
      {
        goto LABEL_43;
      }

      v15 = *&v14[2 * v12 + 8];
    }

    v9 = v15;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v16 = [v15 inputValueType];
    if (!v16)
    {
      goto LABEL_11;
    }

    v17 = v16;
    v18 = *(v1 + 376);
    sub_23E1FE04C();
    if (v13)
    {

      v13 = 0;
LABEL_11:
      v19 = *(v1 + 472);
      v21 = *(v1 + 384);
      v20 = *(v1 + 392);
      v22 = *(v1 + 376);
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      sub_23DE58BD0(v22, &qword_27E32D660, &qword_23E224C60);
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v20);

      OUTLINED_FUNCTION_93(v21, 1, v20);
      if (!v30)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v329 = *(v1 + 504);
    v31 = *(v1 + 472);
    v333 = *(v1 + 392);
    v32 = *(v342 + 384);
    v33 = *(v342 + 376);
    v34 = *(v342 + 368);
    v326 = *(v342 + 352);
    v330 = *(v342 + 344);
    v331 = *(v342 + 336);
    v332 = *(v342 + 320);
    v35 = *(v342 + 312);
    v327 = *(v342 + 304);

    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v31);
    v39 = *v322;
    v40 = OUTLINED_FUNCTION_50();
    v41(v40);
    v328 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D678, &qword_23E2296F0) + 48);
    *v34 = sub_23E1FE1FC();
    *(v323 + 8) = v42;
    (*(v6 + 104))(v34, v321, v326);
    sub_23E1FB7BC();
    sub_23E1FD58C();
    sub_23E1FD77C();
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    v47 = [v9 identifier];
    sub_23E1FDC1C();

    sub_23E1FB7BC();
    sub_23E1FD48C();
    sub_23E1FD49C();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    OUTLINED_FUNCTION_159_1();
    sub_23E1FD4BC();
    v5 = v330;
    sub_23E1FD4DC();
    v52 = *v320;
    (*v320)(v331, v332);
    v53 = OUTLINED_FUNCTION_128_0();
    v14 = v325;
    v52(v53);
    (*v319)(v329, v31);
    (*v318)(v32, v324, v333);
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v333);

    v57 = v32;
    v1 = v342;
    v13 = 0;
    if (__swift_getEnumTagSinglePayload(v57, 1, v333) != 1)
    {
LABEL_16:
      v59 = *(v1 + 408);
      v58 = *(v1 + 416);
      v60 = *(v1 + 384);
      v61 = *(v1 + 392);
      v62 = *v316;
      v63 = OUTLINED_FUNCTION_140_1();
      v62(v63);
      v64 = OUTLINED_FUNCTION_36_5();
      v62(v64);
      v9 = v317;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = *(v317 + 16);
        v72 = OUTLINED_FUNCTION_6_1();
        sub_23DE4D518(v72, v73, v74, v317);
        v9 = v75;
      }

      v66 = v9[2];
      v65 = v9[3];
      if (v66 >= v65 >> 1)
      {
        OUTLINED_FUNCTION_9(v65);
        OUTLINED_FUNCTION_138_1();
        sub_23DE4D518(v76, v77, v78, v79);
        v9 = v80;
      }

      v67 = *(v1 + 408);
      v68 = *(v1 + 392);
      v9[2] = v66 + 1;
      OUTLINED_FUNCTION_50_1();
      v317 = v9;
      v62(v9 + v69 + *(v70 + 72) * v66);
      ++v12;
      goto LABEL_2;
    }

LABEL_14:
    sub_23DE58BD0(*(v1 + 384), &unk_27E32D668, &unk_23E2296E0);
    ++v12;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  v184 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v185 = swift_dynamicCastObjCClass();
  if (v185)
  {
    v186 = v185;
    v187 = *(v1 + 392);
    v188 = *(v1 + 400);
    v189 = *(v1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    v190 = OUTLINED_FUNCTION_14_6();
    *(v190 + 16) = *(v12 + 832);
    v191 = v189;
    v192 = [v186 supportedTypes];
    v193 = sub_23E1FDDEC();

    *(v190 + v1) = v193;
    v194 = *v14;
    v195 = OUTLINED_FUNCTION_123_0();
    v196(v195);
    sub_23DE5733C(v190);

    goto LABEL_26;
  }

  v197 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v198 = swift_dynamicCastObjCClass();
  if (v198)
  {
    v199 = v198;
    v200 = *(v342 + 400);
    v201 = *(v342 + 392);
    v202 = *(v342 + 232);
    v5 = *(v342 + 224);
    v203 = *(v342 + 216);
    v204 = *(v342 + 56);
    v175 = *(v342 + 32);
    OUTLINED_FUNCTION_202();
    sub_23DEF6304(v205);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
    OUTLINED_FUNCTION_37_3();
    v206 = OUTLINED_FUNCTION_101_1();
    OUTLINED_FUNCTION_134_0(v206, *(v12 + 832));
    OUTLINED_FUNCTION_86_2();
    v207();
    (*(v200 + 104))(v206 + v199, *MEMORY[0x277D72E80], v201);
    v1 = v342;
    v180 = v206;
    goto LABEL_41;
  }

  v208 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v209 = *(v1 + 200);
    v210 = *(v1 + 208);
    v211 = *(v1 + 160);
    v212 = *(v1 + 32);
    sub_23DEF6468(v210);
    v213 = OUTLINED_FUNCTION_107_0();
    sub_23DF05FA0(v213, v214, v215, v216);
    OUTLINED_FUNCTION_30_6();
    if (!v30)
    {
      v225 = *(v1 + 392);
      v226 = *(v1 + 400);
      v227 = *(v1 + 200);
      v229 = *(v1 + 168);
      v228 = *(v1 + 176);
      v211 = *(v1 + 160);
      v230 = OUTLINED_FUNCTION_23_5();
      v231(v230);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v232 = *(v226 + 72);
      v233 = *(v226 + 80);
      v234 = OUTLINED_FUNCTION_52_3();
      *(v234 + 16) = *(v12 + 832);
      v235 = OUTLINED_FUNCTION_38_5(v234, v229);
      v236(v235);
      v237 = *MEMORY[0x277D72E78];
      v238 = OUTLINED_FUNCTION_124_1();
      v239(v238);
      v240 = OUTLINED_FUNCTION_40_4();
      v241(v240);
    }

    v242 = *(v1 + 208);
    goto LABEL_62;
  }

  v217 = *(v1 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v218 = *(v1 + 184);
    v219 = *(v1 + 192);
    v211 = *(v1 + 160);
    v220 = *(v1 + 32);
    sub_23DEF6554(v219);
    v221 = OUTLINED_FUNCTION_107_0();
    sub_23DF05FA0(v221, v222, v223, v224);
    OUTLINED_FUNCTION_30_6();
    if (!v30)
    {
      v252 = *(v1 + 392);
      v253 = *(v1 + 400);
      v255 = *(v1 + 176);
      v254 = *(v1 + 184);
      v211 = *(v1 + 160);
      v256 = *(v1 + 168);
      v257 = OUTLINED_FUNCTION_23_5();
      v258(v257);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
      v259 = *(v253 + 72);
      v260 = *(v253 + 80);
      v261 = OUTLINED_FUNCTION_52_3();
      *(v261 + 16) = *(v12 + 832);
      v262 = OUTLINED_FUNCTION_38_5(v261, v256);
      v263(v262);
      v264 = *MEMORY[0x277D72E78];
      v265 = OUTLINED_FUNCTION_124_1();
      v266(v265);
      v267 = OUTLINED_FUNCTION_40_4();
      v268(v267);
    }

    v242 = *(v1 + 192);
LABEL_62:
    OUTLINED_FUNCTION_181_0();

    v269 = &unk_27E32D640;
    v270 = &unk_23E2296B8;
  }

  else
  {
    v243 = *(v1 + 32);
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (swift_dynamicCastObjCClass())
    {
      v244 = *(v1 + 144);
      v245 = *(v1 + 152);
      v246 = *(v1 + 120);
      v247 = *(v1 + 32);
      sub_23DEF6728(v245);
      v248 = OUTLINED_FUNCTION_107_0();
      sub_23DF05FA0(v248, v249, v250, v251);
      OUTLINED_FUNCTION_30_6();
      if (!v30)
      {
        v282 = *(v1 + 392);
        v283 = *(v1 + 400);
        v285 = *(v1 + 136);
        v284 = *(v1 + 144);
        v246 = *(v1 + 120);
        v286 = *(v1 + 128);
        v287 = OUTLINED_FUNCTION_23_5();
        v288(v287);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v289 = *(v283 + 72);
        v290 = *(v283 + 80);
        v291 = OUTLINED_FUNCTION_52_3();
        *(v291 + 16) = *(v12 + 832);
        v292 = OUTLINED_FUNCTION_38_5(v291, v286);
        v293(v292);
        v294 = *MEMORY[0x277D72F60];
        v295 = OUTLINED_FUNCTION_124_1();
        v296(v295);
        v297 = OUTLINED_FUNCTION_40_4();
        v298(v297);
      }

      v242 = *(v1 + 152);
      OUTLINED_FUNCTION_181_0();

      v269 = &unk_27E32D638;
      v270 = &unk_23E2296B0;
    }

    else
    {
      v271 = *(v1 + 32);
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_26;
      }

      v272 = *(v1 + 32);
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      if (!swift_dynamicCastObjCClass())
      {
        goto LABEL_26;
      }

      v273 = *(v1 + 104);
      v274 = *(v1 + 112);
      v275 = *(v1 + 80);
      v276 = *(v1 + 56);
      v277 = *(v1 + 32);
      sub_23DEF67CC(v274);
      v278 = OUTLINED_FUNCTION_107_0();
      sub_23DF05FA0(v278, v279, v280, v281);
      OUTLINED_FUNCTION_30_6();
      if (!v30)
      {
        v299 = *(v342 + 392);
        v300 = *(v342 + 400);
        v302 = *(v342 + 96);
        v301 = *(v342 + 104);
        v275 = *(v342 + 80);
        v303 = *(v342 + 88);
        v304 = OUTLINED_FUNCTION_23_5();
        v305(v304);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D688, &qword_23E229700);
        v306 = *(v300 + 72);
        v307 = *(v300 + 80);
        v308 = OUTLINED_FUNCTION_52_3();
        *(v308 + 16) = *(v12 + 832);
        v309 = OUTLINED_FUNCTION_38_5(v308, v303);
        v310(v309);
        v311 = *MEMORY[0x277D72E60];
        v312 = OUTLINED_FUNCTION_124_1();
        v313(v312);
        v314 = OUTLINED_FUNCTION_40_4();
        v315(v314);
      }

      v1 = v342;
      v242 = *(v342 + 112);
      OUTLINED_FUNCTION_181_0();

      v269 = &unk_27E32D630;
      v270 = &unk_23E2296A8;
    }
  }

  sub_23DE58BD0(v242, v269, v270);
LABEL_26:
  v111 = *(v1 + 16);
  v112 = *(v1 + 536);
  v113 = *(v1 + 528);
  v114 = *(v1 + 520);
  if (*(v111 + 16))
  {
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D910, &qword_23E2298B0);
    v116 = swift_allocBox();
    v118 = v117;
    v119 = *(v115 + 48);
    (*(v113 + 16))(v117, v112, v114);
    *(v118 + v119) = v111;
    v120 = MEMORY[0x277D72AB8];
  }

  else
  {
    v121 = *(v1 + 16);

    v116 = swift_allocBox();
    (*(v113 + 16))(v122, v112, v114);
    v120 = MEMORY[0x277D72AD0];
  }

  v123 = *(v1 + 496);
  v124 = *(v1 + 472);
  v125 = *(v1 + 480);
  v126 = *(v1 + 24);
  *v123 = v116;
  (*(v125 + 104))(v123, *v120, v124);
  v127 = *(v125 + 32);
  (v127)(v126, v123, v124);
  *(v1 + 712) = 0;
  *(v1 + 704) = v9;
  *(v1 + 696) = v127;
  if ([*(v1 + 32) allowsMultipleValues])
  {
    v128 = *(v1 + 480);
    v129 = *(v1 + 488);
    v130 = *(v1 + 472);
    v131 = *(v1 + 24);
    sub_23E1FD3CC();
    v132 = *(v128 + 8);
    v133 = OUTLINED_FUNCTION_54();
    v134(v133);
    OUTLINED_FUNCTION_86_2();
    v127();
  }

  v135 = *(v1 + 576);
  v136 = swift_task_alloc();
  *(v1 + 720) = v136;
  *v136 = v1;
  v136[1] = sub_23DEF5A18;
  v137 = *(v1 + 568);
  v138 = *(v1 + 560);
  v139 = *(v1 + 72);
  v140 = *(v1 + 56);
  v141 = *(v1 + 24);
  v142 = *(v1 + 32);
  OUTLINED_FUNCTION_143_1();

  return sub_23DF00008(v143, v144, v145, v146, v147, v148);
}

uint64_t sub_23DEF5A18()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;
  v4 = *(v3 + 720);
  v5 = *(v3 + 576);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 728) = v8;

  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DEF5B1C()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  if (*(v0 + 728) == 1)
  {
    v3 = *(v0 + 608);
    v62 = *(v0 + 560);
    v64 = *(v0 + 696);
    v4 = *(v0 + 552);
    OUTLINED_FUNCTION_87_2();
    v58 = v5;
    v60 = v6;
    v7 = *(v0 + 528);
    v54 = v8;
    v56 = *(v0 + 520);
    v9 = *(v0 + 480);
    v10 = *(v0 + 488);
    v11 = *(v0 + 472);
    v12 = *(v0 + 72);
    v13 = *(v0 + 24);
    sub_23E1FD3BC();

    sub_23DE58BD0(v12, &unk_27E32D730, &unk_23E223790);
    (*(v7 + 8))(v58, v56);
    (*(v4 + 8))(v62, v60);
    (*(v9 + 8))(v13, v11);
    v64(v13, v10, v11);
  }

  else
  {
    v14 = *(v0 + 608);
    v65 = *(v0 + 560);
    v15 = *(v0 + 552);
    v16 = *(v0 + 544);
    v17 = *(v0 + 536);
    v18 = *(v0 + 528);
    v19 = *(v0 + 520);
    v20 = *(v0 + 72);

    sub_23DE58BD0(v20, &unk_27E32D730, &unk_23E223790);
    v21 = *(v18 + 8);
    v22 = OUTLINED_FUNCTION_45();
    v23(v22);
    (*(v15 + 8))(v65, v16);
  }

  v24 = *(v0 + 560);
  v25 = *(v0 + 536);
  v26 = *(v0 + 504);
  v27 = *(v0 + 512);
  v29 = *(v0 + 488);
  v28 = *(v0 + 496);
  v30 = *(v0 + 464);
  v31 = *(v0 + 440);
  v32 = *(v0 + 408);
  v33 = *(v0 + 416);
  v36 = *(v0 + 384);
  v37 = *(v0 + 376);
  v38 = *(v0 + 368);
  v39 = *(v0 + 344);
  v40 = *(v0 + 336);
  v41 = *(v0 + 312);
  v42 = *(v0 + 304);
  v43 = *(v0 + 296);
  v44 = *(v0 + 272);
  v45 = *(v0 + 264);
  v46 = *(v0 + 240);
  v47 = *(v0 + 232);
  v48 = *(v0 + 208);
  v49 = *(v0 + 200);
  v50 = *(v0 + 192);
  v51 = *(v0 + 184);
  v52 = *(v0 + 176);
  v53 = *(v0 + 152);
  v55 = *(v0 + 144);
  v57 = *(v0 + 136);
  v59 = *(v0 + 112);
  v61 = *(v0 + 104);
  v63 = *(v0 + 96);
  v66 = *(v0 + 72);

  OUTLINED_FUNCTION_7();

  return v34();
}

uint64_t sub_23DEF5E7C()
{
  v14 = v0[75];
  v1 = v0[70];
  v2 = v0[67];
  v4 = v0[63];
  v3 = v0[64];
  OUTLINED_FUNCTION_65_1();
  v7 = v0[19];
  v8 = v0[18];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[9];

  OUTLINED_FUNCTION_19();

  return v5();
}

void sub_23DEF603C()
{
  v0 = [objc_opt_self() sharedProvider];
  v1 = sub_23E1FDBDC();
  v2 = [v0 queriesForBundleIdentifier_];

  sub_23DE38DA8(0, &qword_280DAE378, 0x277D238E0);
  v3 = sub_23E1FDDEC();

  v11 = MEMORY[0x277D84F90];
  v4 = sub_23DE4D8B0(v3);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x23EF04DD0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v6 capabilities] & 0x20) != 0 && (sub_23DE38DA8(0, &qword_280DAE608, 0x277D82BB8), v8 = objc_msgSend(v7, sel_resultValueType), v9 = sub_23E1FE3BC(), v8, (v9))
    {
      sub_23E1FE61C();
      v10 = *(v11 + 16);
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_23DEF6230@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 minimumValue];
  if (v3 || (v3 = [v1 maximumValue]) != 0)
  {

    v4 = [v1 minimumValue];
    v5 = [v1 maximumValue];
    sub_23E1FD66C();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_23E1FD67C();

  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

uint64_t sub_23DEF6304@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && [v2 isMessagesAppSelected])
  {
    v3 = MEMORY[0x277D72F98];
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = MEMORY[0x277D72F90];
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        v7 = sub_23E1FD68C();
        v6 = *(*(v7 - 8) + 104);
        if (v11)
        {
          v12 = MEMORY[0x277D72F80];
        }

        else
        {
          v12 = MEMORY[0x277D72F98];
        }

        v9 = *v12;
        v8 = a1;
        goto LABEL_9;
      }

      v3 = MEMORY[0x277D72F88];
    }
  }

  v4 = *v3;
  v5 = sub_23E1FD68C();
  v6 = *(*(v5 - 8) + 104);
  v7 = v5;
  v8 = a1;
  v9 = v4;
LABEL_9:

  return v6(v8, v9, v7);
}

uint64_t sub_23DEF6468@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 timeOnlyMode];
  v4 = [v1 dateOnlyMode];
  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      v5 = MEMORY[0x277D72F78];
LABEL_6:
      v6 = *v5;
      v7 = sub_23E1FD65C();
      (*(*(v7 - 8) + 104))(a1, v6, v7);
      v8 = a1;
      v9 = 0;
      v10 = v7;
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v5 = MEMORY[0x277D72F70];
    goto LABEL_6;
  }

  v10 = sub_23E1FD65C();
  v8 = a1;
  v9 = 1;
LABEL_8:

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t sub_23DEF6554@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 datePickerMode];
  v4 = *MEMORY[0x277D7A3B0];
  v5 = sub_23E1FDC1C();
  v7 = v6;
  if (v5 == sub_23E1FDC1C() && v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = sub_23E1FE75C();

  if (v10)
  {

LABEL_8:
    v11 = MEMORY[0x277D72F78];
LABEL_9:
    v12 = *v11;
    v13 = sub_23E1FD65C();
    (*(*(v13 - 8) + 104))(a1, v12, v13);
    v14 = a1;
    v15 = 0;
    v16 = v13;
    goto LABEL_10;
  }

  v18 = *MEMORY[0x277D7A3A0];
  v19 = sub_23E1FDC1C();
  v21 = v20;
  if (v19 == sub_23E1FDC1C() && v21 == v22)
  {

    goto LABEL_20;
  }

  v24 = sub_23E1FE75C();

  if (v24)
  {
LABEL_20:
    v11 = MEMORY[0x277D72F70];
    goto LABEL_9;
  }

  v16 = sub_23E1FD65C();
  v14 = a1;
  v15 = 1;
LABEL_10:

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t sub_23DEF6728@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 unit];
  [v1 unitAdjustForLocale];
  [v1 allowsNegativeNumbers];
  sub_23E1FD69C();
  v4 = sub_23E1FD6AC();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_23DEF67CC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_23E1FD5FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E1FD5EC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E1FD5AC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23E1FD64C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v1 keyboardType];
  sub_23DF02448(v13);

  v20 = [v1 autocorrectionType];
  sub_23DF02A74(v9);

  v21 = [v1 autocapitalizationType];
  sub_23DF02C68(v5);

  [v1 isMultiline];
  [v1 smartQuotesDisabled];
  [v1 smartDashesDisabled];
  sub_23E1FD5BC();
  if (sub_23DF02ED4())
  {
    (*(v15 + 8))(v18, v14);
    v22 = 1;
    v23 = v27;
  }

  else
  {
    v24 = v27;
    (*(v15 + 32))(v27, v18, v14);
    v22 = 0;
    v23 = v24;
  }

  return __swift_storeEnumTagSinglePayload(v23, v22, 1, v14);
}

uint64_t WFParameter.toolkitTypeInstance(for:parameterKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = OUTLINED_FUNCTION_16();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEF6AC8()
{
  OUTLINED_FUNCTION_4();
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [*(v0 + 48) key];
    sub_23E1FDC1C();

    v4 = *(v0 + 40);
  }

  v5 = *(v0 + 24);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  *(v0 + 56) = v6;
  sub_23E1FB7BC();
  if (v6)
  {
    v7 = *(v0 + 24);
    OUTLINED_FUNCTION_49();
    *(v0 + 64) = sub_23E1FDBDC();

    sub_23E1FDECC();
    *(v0 + 72) = OUTLINED_FUNCTION_195_1();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    v8 = OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {

    *(v0 + 112) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 120) = v11;
    *v11 = v12;
    OUTLINED_FUNCTION_75_1(v11);

    return sub_23DEF1D6C();
  }
}