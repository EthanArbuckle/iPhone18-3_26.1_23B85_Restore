uint64_t sub_2407D129C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2408D4D30();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2407D12D0()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2407D1350()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D1388()
{
  v1 = sub_2408D3970();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = sub_2408D36F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v5 + v9) & ~v9;
  v15 = v3 | v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);
  (*(v8 + 8))(v0 + v10, v7);
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v15 | 7);
}

uint64_t sub_2407D1514()
{
  v1 = sub_2408D36F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2407D15B0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2407D1600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2407D1678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2407D16F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D172C()
{
  MEMORY[0x245CCA030](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D1770()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2407D17BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D17FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2407D1854(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2407D1864()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D18C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2407D1940()
{
  v1 = sub_2408D4C40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2407D1A18()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2407D1A68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D1AA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2407D1AE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D1B44()
{
  v1 = sub_2408D4500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2407D1C08()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2407D1C54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2407D1C9C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_240875A80(v0[5], v0[6]);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2407D1CE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D1D1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_2407D1E30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B0, &qword_2408D8D68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2407D1EC4()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2407D1F10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D1F50()
{
  v1 = sub_2408D4C40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2407D2028(uint64_t a1, unint64_t a2)
{
  if (a2 != 20)
  {
    return sub_2408B2DE8(a1, a2);
  }

  return a1;
}

uint64_t sub_2407D2038()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D2070()
{
  v1 = sub_2408D3D60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2407D2194()
{
  v1 = sub_2408D4C40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 24));
  v10 = *(v0 + v5 + 64);

  v11 = *(v0 + v5 + 72);

  return MEMORY[0x2821FE8E8](v0, v5 + 80, v3 | 7);
}

uint64_t sub_2407D2298()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2407D22D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D2310()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2407D234C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2408D38D0();
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

uint64_t sub_2407D2408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2408D38D0();
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

uint64_t sub_2407D2554(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_2407D256C(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2407D2588(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2407D29B0()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E5068F8);
  __swift_project_value_buffer(v0, qword_27E5068F8);
  return sub_2408D4940();
}

uint64_t sub_2407D29FC()
{
  v1 = sub_2408D3990();
  sub_2407D8D78(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
  v2 = swift_allocError();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277CED458], v1);
  sub_2407D2B30(v2);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[9];
  v6 = v0[10];

  v8 = v0[11];

  return swift_deallocClassInstance();
}

void sub_2407D2B30(void *a1)
{
  v3 = *v1;
  if (qword_27E5068F0 != -1)
  {
    swift_once();
  }

  v4 = sub_2408D4B20();
  __swift_project_value_buffer(v4, qword_27E5068F8);
  v5 = a1;
  oslog = sub_2408D4B10();
  v6 = sub_2408D4F10();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    v10 = sub_2408D53B0();
    v12 = sub_2408CC504(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_2407CF000, oslog, v6, "%s handling cancellation for error: %@", v7, 0x16u);
    sub_2407D9440(v8, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }
}

uint64_t sub_2407D2D20(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB8, &qword_2408D7F20);
  v3[7] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D2DD0, 0, 0);
}

uint64_t sub_2407D2DD0()
{
  v25 = v0;
  if (qword_27E5068F0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_2408D4B20();
  v0[10] = __swift_project_value_buffer(v2, qword_27E5068F8);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v0[3] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "LocalRepairService called to repair with model: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = sub_2408D34B0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v23 = *(v0 + 5);
  v0[11] = sub_2408D34C0();
  sub_2408D49D0();
  v14 = sub_2408D48E0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[12] = sub_2408D48C0();
  sub_2408D48D0();
  v17 = swift_task_alloc();
  v0[13] = v17;
  v17[1] = vextq_s8(v23, v23, 8uLL);
  v18 = *(MEMORY[0x277CEDE70] + 4);
  v19 = swift_task_alloc();
  v0[14] = v19;
  v20 = sub_2408D3C80();
  v0[15] = v20;
  *v19 = v0;
  v19[1] = sub_2407D3088;
  v21 = v0[9];

  return MEMORY[0x2821400E8](v21, &unk_2408D6848, v17, v20);
}

uint64_t sub_2407D3088()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2407D31A0, 0, 0);
}

uint64_t sub_2407D31A0()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  sub_2408D48B0();
  sub_2408D34A0();
  sub_2407D93C8(v3, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[8];
  v8 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    v12 = *v7;
    v0[16] = v12;
    v0[2] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();

    sub_2407D9440(v8, &qword_27E506AB8, &qword_2408D7F20);
    v13 = v12;
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F30();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v12;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_2407CF000, v14, v15, "LocalRepairService caught overall repair failure: %@", v16, 0xCu);
      sub_2407D9440(v17, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v17, -1, -1);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    v20 = swift_task_alloc();
    v0[17] = v20;
    *(v20 + 16) = v12;
    v21 = *(MEMORY[0x277CED860] + 4);
    v30 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v22 = swift_task_alloc();
    v0[18] = v22;
    *v22 = v0;
    v22[1] = sub_2407D34D8;
    v23 = v0[5];

    return v30();
  }

  else
  {
    v25 = v0[15];
    v27 = v0[11];
    v26 = v0[12];
    v28 = v0[4];
    sub_2407D9440(v0[9], &qword_27E506AB8, &qword_2408D7F20);

    (*(*(v25 - 8) + 32))(v28, v7, v25);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_2407D34D8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_2407D3670;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_2407D35F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2407D35F4()
{
  v1 = v0[16];
  swift_willThrow();
  v2 = v0[16];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2407D3670()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2407D36EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407D379C;

  return sub_2407D3F8C(a1, a3);
}

uint64_t sub_2407D379C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2407D3890(uint64_t a1, void *a2)
{
  v3 = sub_2408D39E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AD0, &qword_2408D6868);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_2408D3990();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v28 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E5068F0 != -1)
  {
    swift_once();
  }

  v16 = sub_2408D4B20();
  __swift_project_value_buffer(v16, qword_27E5068F8);
  v17 = sub_2408D4B10();
  v18 = sub_2408D4F20();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v13;
    v20 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2407CF000, v17, v18, "Engaging with client to present error and wait for continuation", v19, 2u);
    v13 = v27;
    MEMORY[0x245CC9F60](v20, -1, -1);
  }

  v29 = a2;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v22 = swift_dynamicCast();
  v23 = *(v13 + 56);
  if (v22)
  {
    v23(v11, 0, 1, v12);
    v24 = v28;
    (*(v13 + 32))(v28, v11, v12);
    (*(v13 + 16))(v7, v24, v12);
    (*(v4 + 104))(v7, *MEMORY[0x277CED478], v3);
    sub_2408D3A00();
    return (*(v13 + 8))(v24, v12);
  }

  else
  {
    v23(v11, 1, 1, v12);
    sub_2407D9440(v11, &qword_27E506AD0, &qword_2408D6868);
    swift_getErrorValue();
    sub_2408D52B0();
    (*(v4 + 104))(v7, *MEMORY[0x277CED478], v3);
    return sub_2408D3A00();
  }
}

uint64_t sub_2407D3C74(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D39E0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D3D34, 0, 0);
}

uint64_t sub_2407D3D34()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_2408D39F0();
  LODWORD(v3) = (*(v2 + 88))(v1, v4);
  v5 = *MEMORY[0x277CED478];
  (*(v2 + 8))(v1, v4);
  if (v3 == v5)
  {
    if (qword_27E5068F0 != -1)
    {
      swift_once();
    }

    v6 = sub_2408D4B20();
    __swift_project_value_buffer(v6, qword_27E5068F8);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    v9 = os_log_type_enabled(v7, v8);
    v10 = MEMORY[0x277CEDCA8];
    if (v9)
    {
      v11 = "Client is remaining in failed state";
LABEL_10:
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, v11, v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }
  }

  else
  {
    if (qword_27E5068F0 != -1)
    {
      swift_once();
    }

    v12 = sub_2408D4B20();
    __swift_project_value_buffer(v12, qword_27E5068F8);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    v13 = os_log_type_enabled(v7, v8);
    v10 = MEMORY[0x277CEDCB0];
    if (v13)
    {
      v11 = "Client has decided to proceed from the failure, moving on";
      goto LABEL_10;
    }
  }

  v15 = v0[6];
  v16 = v0[2];

  v17 = *v10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v18 - 8) + 104))(v16, v17, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2407D3F8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_2408D38D0();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_2408D3C80();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v11 = sub_2408D48A0();
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v14 = sub_2408D3EC0();
  v3[19] = v14;
  v15 = *(v14 - 8);
  v3[20] = v15;
  v16 = *(v15 + 64) + 15;
  v3[21] = swift_task_alloc();
  v17 = sub_2408D3A30();
  v3[22] = v17;
  v18 = *(v17 - 8);
  v3[23] = v18;
  v19 = *(v18 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D4234, 0, 0);
}

uint64_t sub_2407D4234()
{
  v1 = v0[4];
  v2 = *(v1 + 88);
  *(v1 + 88) = v0[3];

  v3 = *(MEMORY[0x277CED858] + 4);
  v8 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_2407D42F8;
  v5 = v0[25];
  v6 = v0[3];

  return v8(v5);
}

uint64_t sub_2407D42F8()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[27] = v4;
  *v4 = v3;
  v4[1] = sub_2407D4464;
  v5 = v1[25];
  v6 = v1[21];
  v7 = v1[4];

  return sub_2407D5F4C(v6, v5);
}

uint64_t sub_2407D4464()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_2407D5780;
  }

  else
  {
    v3 = sub_2407D4578;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2407D4578()
{
  v74 = v0;
  v1 = *(v0 + 168);
  if (sub_2408D3E50())
  {
    if (qword_27E5068F0 != -1)
    {
      swift_once();
    }

    v2 = sub_2408D4B20();
    *(v0 + 232) = __swift_project_value_buffer(v2, qword_27E5068F8);
    v3 = sub_2408D4B10();
    v4 = sub_2408D4F20();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2407CF000, v3, v4, "Continuing to repair locally", v5, 2u);
      MEMORY[0x245CC9F60](v5, -1, -1);
    }

    v6 = *(v0 + 168);

    v7 = sub_2408D3EB0();
    *(v0 + 240) = v7;
    v8 = *(v7 + 16);
    *(v0 + 248) = v8;
    if (v8)
    {
      v9 = *(v0 + 120);
      v10 = *(v0 + 128);
      v11 = *(v10 + 16);
      v10 += 16;
      v12 = *(v10 + 64);
      *(v0 + 336) = v12;
      v13 = (v12 + 32) & ~v12;
      *(v0 + 256) = *(v10 + 56);
      *(v0 + 264) = v11;
      v14 = *(v0 + 144);
      *(v0 + 272) = 0;
      *(v0 + 280) = v10 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v11(v14, v7 + v13, v9);
      v15 = swift_task_alloc();
      *(v0 + 288) = v15;
      *v15 = v0;
      v15[1] = sub_2407D4BFC;
      v16 = *(v0 + 144);
      v17 = *(v0 + 32);

      return sub_2407D6D78(v16);
    }

    else
    {

      v58 = *(v0 + 232);
      v59 = sub_2408D4B10();
      v60 = sub_2408D4F20();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_2407CF000, v59, v60, "Configuring authentication mode to require user interaction for local setup", v61, 2u);
        MEMORY[0x245CC9F60](v61, -1, -1);
      }

      v62 = *(MEMORY[0x277CED870] + 4);
      v72 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v63 = swift_task_alloc();
      *(v0 + 304) = v63;
      *v63 = v0;
      v63[1] = sub_2407D50F8;
      v64 = *(v0 + 24);

      return v72(sub_2407D5E24, 0);
    }
  }

  else
  {
    if (qword_27E5068F0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 192);
    v20 = *(v0 + 200);
    v21 = *(v0 + 176);
    v22 = *(v0 + 184);
    v23 = sub_2408D4B20();
    __swift_project_value_buffer(v23, qword_27E5068F8);
    (*(v22 + 16))(v19, v20, v21);
    v24 = sub_2408D4B10();
    v25 = sub_2408D4F10();
    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 176);
    if (v26)
    {
      v31 = *(v0 + 56);
      v30 = *(v0 + 64);
      v32 = *(v0 + 48);
      v33 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v33 = 136315138;
      v69 = v29;
      v73 = v67;
      sub_2408D3A10();
      sub_2407D8D78(&qword_27E506AA0, 255, MEMORY[0x277CED3D8]);
      v34 = sub_2408D5220();
      v66 = v25;
      v36 = v35;
      (*(v31 + 8))(v30, v32);
      v37 = v69;
      v70 = *(v28 + 8);
      v70(v27, v37);
      v38 = sub_2408CC504(v34, v36, &v73);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_2407CF000, v24, v66, "No local repairs are neeed for account: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      MEMORY[0x245CC9F60](v67, -1, -1);
      MEMORY[0x245CC9F60](v33, -1, -1);
    }

    else
    {

      v70 = *(v28 + 8);
      v70(v27, v29);
    }

    v39 = *(v0 + 200);
    v40 = *(v0 + 168);
    v68 = *(v0 + 176);
    v41 = *(v0 + 152);
    v42 = *(v0 + 160);
    v43 = *(v0 + 56);
    v44 = *(v0 + 64);
    v46 = *(v0 + 40);
    v45 = *(v0 + 48);
    v65 = *(v0 + 16);
    sub_2408D3A10();
    sub_2408D38B0();
    (*(v43 + 8))(v44, v45);
    (*(v42 + 16))(v46, v40, v41);
    (*(v42 + 56))(v46, 0, 1, v41);
    sub_2408D3C60();
    (*(v42 + 8))(v40, v41);
    v70(v39, v68);
    v48 = *(v0 + 192);
    v47 = *(v0 + 200);
    v49 = *(v0 + 168);
    v51 = *(v0 + 136);
    v50 = *(v0 + 144);
    v53 = *(v0 + 104);
    v52 = *(v0 + 112);
    v55 = *(v0 + 88);
    v54 = *(v0 + 96);
    v56 = *(v0 + 64);
    v71 = *(v0 + 40);

    v57 = *(v0 + 8);

    return v57();
  }
}

uint64_t sub_2407D4BFC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v7 = *v2;
  *(v3 + 340) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v5 = sub_2407D588C;
  }

  else
  {
    v5 = sub_2407D4D14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2407D4D14()
{
  v42 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 232);
  (*(v0 + 264))(*(v0 + 136), *(v0 + 144), *(v0 + 120));
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v38 = *(v0 + 340);
    v5 = *(v0 + 136);
    v39 = *(v0 + 144);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315394;
    sub_2407D8D78(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
    v10 = sub_2408D5220();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v5, v7);
    v14 = sub_2408CC504(v10, v12, &v41);

    *(v8 + 4) = v14;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v38;
    _os_log_impl(&dword_2407CF000, v3, v4, "Locally Repaired symptom: %s with result: %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);

    v13(v39, v7);
  }

  else
  {
    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);

    v19 = *(v18 + 8);
    v19(v16, v17);
    v19(v15, v17);
  }

  v20 = *(v0 + 272) + 1;
  if (v20 == *(v0 + 248))
  {
    v21 = *(v0 + 240);

    v22 = *(v0 + 232);
    v23 = sub_2408D4B10();
    v24 = sub_2408D4F20();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2407CF000, v23, v24, "Configuring authentication mode to require user interaction for local setup", v25, 2u);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    v26 = *(MEMORY[0x277CED870] + 4);
    v40 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v27 = swift_task_alloc();
    *(v0 + 304) = v27;
    *v27 = v0;
    v27[1] = sub_2407D50F8;
    v28 = *(v0 + 24);

    return v40(sub_2407D5E24, 0);
  }

  else
  {
    v30 = *(v0 + 264);
    v31 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 240) + ((*(v0 + 336) + 32) & ~*(v0 + 336)) + *(v0 + 256) * v20;
    v34 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 272) = v20;
    *(v0 + 280) = v34;
    v30(v31, v33, v32);
    v35 = swift_task_alloc();
    *(v0 + 288) = v35;
    *v35 = v0;
    v35[1] = sub_2407D4BFC;
    v36 = *(v0 + 144);
    v37 = *(v0 + 32);

    return sub_2407D6D78(v36);
  }
}

uint64_t sub_2407D50F8()
{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2407D5BCC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[40] = v4;
    *v4 = v3;
    v4[1] = sub_2407D5274;
    v5 = v3[25];
    v6 = v3[21];
    v7 = v3[14];
    v8 = v3[4];

    return sub_2407D6730(v7, v5, v6);
  }
}

uint64_t sub_2407D5274()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_2407D5CF8;
  }

  else
  {
    v3 = sub_2407D5388;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2407D5388()
{
  v56 = v0;
  v1 = v0[29];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = *(v0[10] + 16);
  v5(v0[13], v2, v4);
  v5(v3, v2, v4);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[25];
  v10 = v0[23];
  v52 = v0[20];
  v53 = v0[22];
  v11 = v0[19];
  v50 = v11;
  v51 = v0[21];
  if (v8)
  {
    log = v6;
    v12 = v0[15];
    v46 = v7;
    v13 = v0[13];
    v42 = v0[11];
    v43 = v0[12];
    v49 = v0[10];
    v14 = v0[9];
    v48 = v0[25];
    v15 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v55 = v45;
    *v15 = 136315394;
    sub_2408D3C50();
    sub_2407D8D78(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
    v16 = sub_2408D4EF0();
    v18 = v17;

    v44 = v10;
    v19 = *(v49 + 8);
    v19(v13, v14);
    v20 = sub_2408CC504(v16, v18, &v55);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v5(v42, v43, v14);
    v21 = sub_2408D4D40();
    v23 = v22;
    v19(v43, v14);
    v24 = sub_2408CC504(v21, v23, &v55);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_2407CF000, log, v46, "Finished locally repairing symptoms: %s with final report: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v45, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);

    (*(v52 + 8))(v51, v50);
    (*(v44 + 8))(v48, v53);
  }

  else
  {
    v25 = v0[12];
    v26 = v0[13];
    v27 = v0[9];
    v28 = v0[10];

    v29 = *(v28 + 8);
    v29(v25, v27);
    v29(v26, v27);
    (*(v52 + 8))(v51, v50);
    (*(v10 + 8))(v9, v53);
  }

  (*(v0[10] + 32))(v0[2], v0[14], v0[9]);
  v31 = v0[24];
  v30 = v0[25];
  v32 = v0[21];
  v34 = v0[17];
  v33 = v0[18];
  v36 = v0[13];
  v35 = v0[14];
  v38 = v0[11];
  v37 = v0[12];
  v39 = v0[8];
  v54 = v0[5];

  v40 = v0[1];

  return v40();
}

uint64_t sub_2407D5780()
{
  (*(v0[23] + 8))(v0[25], v0[22]);
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[8];
  v13 = v0[5];
  v14 = v0[28];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2407D588C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 232);
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  v8 = *(v0 + 144);
  v9 = *(v0 + 120);
  v10 = (*(v0 + 128) + 8);
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to repair symptom: %@", v11, 0xCu);
    sub_2407D9440(v12, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  else
  {
  }

  (*v10)(v8, v9);
  v15 = *(v0 + 272) + 1;
  if (v15 == *(v0 + 248))
  {
    v16 = *(v0 + 240);

    v17 = *(v0 + 232);
    v18 = sub_2408D4B10();
    v19 = sub_2408D4F20();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2407CF000, v18, v19, "Configuring authentication mode to require user interaction for local setup", v20, 2u);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    v21 = *(MEMORY[0x277CED870] + 4);
    v33 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v22 = swift_task_alloc();
    *(v0 + 304) = v22;
    *v22 = v0;
    v22[1] = sub_2407D50F8;
    v23 = *(v0 + 24);

    return v33(sub_2407D5E24, 0);
  }

  else
  {
    v25 = *(v0 + 264);
    v26 = *(v0 + 144);
    v27 = *(v0 + 120);
    v28 = *(v0 + 240) + ((*(v0 + 336) + 32) & ~*(v0 + 336)) + *(v0 + 256) * v15;
    v29 = (*(v0 + 128) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 272) = v15;
    *(v0 + 280) = v29;
    v25(v26, v28, v27);
    v30 = swift_task_alloc();
    *(v0 + 288) = v30;
    *v30 = v0;
    v30[1] = sub_2407D4BFC;
    v31 = *(v0 + 144);
    v32 = *(v0 + 32);

    return sub_2407D6D78(v31);
  }
}

uint64_t sub_2407D5BCC()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[8];
  v16 = v0[5];
  v17 = v0[39];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2407D5CF8()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[8];
  v16 = v0[5];
  v17 = v0[41];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2407D5E24()
{
  v0 = sub_2408D4570();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277CEDC48]);
  v4 = sub_2408D39A0();
  v5 = sub_2408D3510();
  sub_2408D45C0();
  v5(v7, 0);
  return v4(v8, 0);
}

uint64_t sub_2407D5F4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2408D3A30();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_2408D3EC0();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_2408D38D0();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D60D4, 0, 0);
}

uint64_t sub_2407D60D4()
{
  v1 = v0[14];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[7];
  v0[15] = v4;
  v5 = v2[8];
  v0[16] = v5;
  v6 = v2[9];
  v0[17] = v6;
  v7 = v2[10];
  v0[18] = v7;
  v8 = v4;
  v9 = v5;
  v10 = v6;

  sub_2408D3A10();
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_2407D61DC;
  v12 = v0[14];
  v13 = v0[2];

  return sub_2408CE818(v13, v12, v8, v9, v10, v7);
}

uint64_t sub_2407D61DC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 120);
  v8 = *(*v1 + 112);
  v9 = *(*v1 + 96);
  v10 = *(*v1 + 88);
  v14 = *v1;
  v2[20] = v0;

  v11 = *(v9 + 8);
  v2[21] = v11;
  v2[22] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v10);

  if (v0)
  {
    v12 = sub_2407D66A4;
  }

  else
  {
    v12 = sub_2407D63D4;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2407D63D4()
{
  v39 = v0;
  if (qword_27E5068F0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[2];
  v7 = v0[3];
  v9 = sub_2408D4B20();
  __swift_project_value_buffer(v9, qword_27E5068F8);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F20();
  if (os_log_type_enabled(v10, v11))
  {
    v36 = v0[21];
    v37 = v0[22];
    v12 = v0[13];
    v13 = v0[10];
    v14 = v0[9];
    v32 = v0[8];
    v15 = v0[6];
    v33 = v0[7];
    v34 = v0[11];
    v35 = v0[5];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38 = v17;
    *v16 = 67109378;
    v18 = sub_2408D3E50() & 1;
    (*(v14 + 8))(v13, v32);
    *(v16 + 4) = v18;
    *(v16 + 8) = 2080;
    sub_2408D3A10();
    v19 = sub_2408D38B0();
    v21 = v20;
    v36(v12, v34);
    (*(v15 + 8))(v33, v35);
    v22 = sub_2408CC504(v19, v21, &v38);

    *(v16 + 10) = v22;
    _os_log_impl(&dword_2407CF000, v10, v11, "Repairs needed: %{BOOL}d for altDSID: %s", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x245CC9F60](v17, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  else
  {
    v23 = v0[7];
    v24 = v0[5];
    v25 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    (*(v25 + 8))(v23, v24);
  }

  v27 = v0[13];
  v26 = v0[14];
  v28 = v0[10];
  v29 = v0[7];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2407D66A4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t sub_2407D6730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_2408D3EC0();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D6888, 0, 0);
}

uint64_t sub_2407D6888()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v2[7];
  v0[13] = v4;
  v5 = v2[8];
  v0[14] = v5;
  v6 = v2[9];
  v0[15] = v6;
  v7 = v2[10];
  v0[16] = v7;
  v8 = v4;
  v9 = v5;
  v10 = v6;

  sub_2408D3A10();
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_2407D6994;
  v12 = v0[12];
  v13 = v0[9];

  return sub_2408CE818(v12, v13, v8, v9, v10, v7);
}

uint64_t sub_2407D6994()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 72);
  v8 = *(*v1 + 64);
  v9 = *(*v1 + 56);
  v12 = *v1;
  *(*v1 + 144) = v0;

  (*(v8 + 8))(v7, v9);

  if (v0)
  {
    v10 = sub_2407D6CFC;
  }

  else
  {
    v10 = sub_2407D6B78;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2407D6B78()
{
  v1 = v0[12];
  v2 = v0[4];
  v3 = sub_2408D3E70();
  v4 = sub_2408D3E70();
  if (*(v4 + 16) <= *(v3 + 16) >> 3)
  {
    sub_24086C360(v4);
  }

  else
  {
    sub_24086C694(v4, v3);
  }

  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[6];
  v10 = v0[2];
  sub_2408D3EA0();
  (*(v6 + 16))(v9, v5, v7);
  (*(v6 + 56))(v9, 0, 1, v7);
  sub_2408D3C60();
  (*(v6 + 8))(v5, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2407D6CFC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_2407D6D78(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2408D45F0();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_2408D4570();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = sub_2408D36A0();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = *(*(sub_2408D33D0() - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = *(*(sub_2408D38D0() - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507230, &unk_2408D7680) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A30, &qword_2408D6800) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v18 = sub_2408D4830();
  v2[24] = v18;
  v19 = *(v18 - 8);
  v2[25] = v19;
  v20 = *(v19 + 64) + 15;
  v2[26] = swift_task_alloc();
  v21 = sub_2408D48A0();
  v2[27] = v21;
  v22 = *(v21 - 8);
  v2[28] = v22;
  v23 = *(v22 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407D70EC, 0, 0);
}

uint64_t sub_2407D70EC()
{
  v89 = v0;
  if (qword_27E5068F0 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[7];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E5068F8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v12 = v0[27];
  v11 = v0[28];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v88[0] = v81;
    *v13 = 136315138;
    sub_2407D8D78(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
    v14 = v6;
    v15 = sub_2408D5220();
    v17 = v16;
    v18 = v12;
    v19 = *(v11 + 8);
    v19(v10, v18);
    v20 = v15;
    v6 = v14;
    v21 = sub_2408CC504(v20, v17, v88);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v8, "Attempting to locally repair symptom as client: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    MEMORY[0x245CC9F60](v81, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v22 = v12;
    v19 = *(v11 + 8);
    v19(v10, v22);
  }

  v23 = v0[25];
  v24 = v0[26];
  v25 = v0[24];
  v26 = v0[7];
  sub_2408D4840();
  v27 = (*(v23 + 88))(v24, v25);
  if (v27 == *MEMORY[0x277CEDD80])
  {
    v28 = v0[26];
    (*(v0[25] + 96))(v28, v0[24]);
    v29 = *v28;

    v30 = sub_2408D4B10();
    v31 = sub_2408D4F10();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v88[0] = v33;
      *v32 = 136315138;
      type metadata accessor for AIDAServiceType(0);
      sub_2407D8D78(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
      v34 = sub_2408D4EF0();
      v36 = v35;

      v37 = sub_2408CC504(v34, v36, v88);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2407CF000, v30, v31, "Not locally repairing missing services symptom, this is expected for setup: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x245CC9F60](v33, -1, -1);
      MEMORY[0x245CC9F60](v32, -1, -1);
    }

    else
    {
    }

LABEL_15:
    v86 = 0;
LABEL_16:
    v47 = v0[29];
    v46 = v0[30];
    v48 = v0[26];
    v50 = v0[22];
    v49 = v0[23];
    v52 = v0[20];
    v51 = v0[21];
    v54 = v0[18];
    v53 = v0[19];
    v55 = v0[17];
    v82 = v0[14];
    v84 = v0[11];

    v56 = v0[1];
    v57 = v86;
LABEL_21:

    return v56(v57);
  }

  if (v27 != *MEMORY[0x277CEDDA8])
  {
    if (v27 == *MEMORY[0x277CEDD88])
    {
      if (*(v0[8] + 88))
      {
        v86 = 1;
        goto LABEL_16;
      }

LABEL_20:
      sub_2407D90E0();
      swift_allocError();
      *v58 = 0;
      v58[1] = 0;
      swift_willThrow();
      v60 = v0[29];
      v59 = v0[30];
      v61 = v0[26];
      v63 = v0[22];
      v62 = v0[23];
      v65 = v0[20];
      v64 = v0[21];
      v67 = v0[18];
      v66 = v0[19];
      v68 = v0[17];
      v83 = v0[14];
      v85 = v0[11];

      v56 = v0[1];
      v57 = 0;
      goto LABEL_21;
    }

    if (v27 != *MEMORY[0x277CEDD90] && v27 != *MEMORY[0x277CEDDA0])
    {
      v6(v0[29], v0[7], v0[27]);
      v69 = sub_2408D4B10();
      v70 = sub_2408D4F40();
      v71 = os_log_type_enabled(v69, v70);
      v73 = v0[28];
      v72 = v0[29];
      v74 = v0[27];
      if (v71)
      {
        v75 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v88[0] = v87;
        *v75 = 136315138;
        sub_2407D8D78(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
        v76 = sub_2408D5220();
        v78 = v77;
        v19(v72, v74);
        v79 = sub_2408CC504(v76, v78, v88);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_2407CF000, v69, v70, "Asked to locally repair unexpected symptom kind: %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v87);
        MEMORY[0x245CC9F60](v87, -1, -1);
        MEMORY[0x245CC9F60](v75, -1, -1);
      }

      else
      {

        v19(v72, v74);
      }

      (*(v0[25] + 8))(v0[26], v0[24]);
      goto LABEL_15;
    }
  }

  v38 = *(v0[8] + 88);
  v0[31] = v38;
  if (!v38)
  {
    goto LABEL_20;
  }

  v39 = v0[23];
  v40 = sub_2408D3630();
  (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  v41 = *(MEMORY[0x277CEDCB8] + 4);

  v42 = swift_task_alloc();
  v0[32] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
  v0[33] = v43;
  v44 = sub_2407D917C(&qword_27E506A50, &qword_27E506A48, &qword_2408D6808);
  *v42 = v0;
  v42[1] = sub_2407D7990;
  v45 = v0[23];

  return MEMORY[0x28213FC20](v45, sub_240811518, 0, sub_24081153C, 0, v43, v40, v44);
}

uint64_t sub_2407D7990(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[32];
  v16 = *v2;
  (*v2)[34] = v1;

  if (v1)
  {
    v6 = v4[31];
    sub_2407D9440(v4[23], &qword_27E506A30, &qword_2408D6800);

    v7 = sub_2407D80CC;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = v4[33];
    v11 = v4[31];
    v4[35] = a1;
    sub_2407D917C(&qword_27E506A58, &qword_27E506A48, &qword_2408D6808);
    v12 = sub_2408D4E00();
    v14 = v13;
    v7 = sub_2407D7B30;
    v8 = v12;
    v9 = v14;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2407D7B30()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A60, &unk_2408D6810);
  sub_2407D917C(&qword_27E506A68, &qword_27E506A60, &unk_2408D6810);
  v0[36] = sub_2408D4680();

  sub_2407D9440(v3, &qword_27E506A30, &qword_2408D6800);

  return MEMORY[0x2822009F8](sub_2407D7C2C, 0, 0);
}

uint64_t sub_2407D7C2C()
{
  v1 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v7 = v0[13];
  v20 = v0[15];
  v21 = v0[14];
  v22 = v0[12];
  v23 = v0[11];
  v8 = v0[10];
  v24 = v0[9];
  v25 = v0[22];
  v9 = v0[7];
  sub_2408D4890();
  v10 = sub_2408D3720();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_2408D33C0();
  (*(v6 + 104))(v5, *MEMORY[0x277CED3A0], v20);
  sub_2408D38E0();
  v11 = sub_2408D3970();
  (*(*(v11 - 8) + 56))(v1, 0, 1, v11);
  (*(v7 + 104))(v21, *MEMORY[0x277CEDC40], v22);
  (*(v8 + 104))(v23, *MEMORY[0x277CEDC80], v24);
  sub_2408D4620();
  v12 = sub_2408D4660();
  (*(*(v12 - 8) + 56))(v25, 0, 1, v12);
  v13 = *(MEMORY[0x277CEDCB8] + 4);
  v14 = swift_task_alloc();
  v0[37] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  v0[38] = v15;
  v16 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0);
  *v14 = v0;
  v14[1] = sub_2407D7F2C;
  v17 = v0[36];
  v18 = v0[22];

  return MEMORY[0x28213FC20](v18, sub_2407EE4C0, 0, sub_2407EE4E4, 0, v15, v12, v16);
}

uint64_t sub_2407D7F2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v17 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v6 = v4[36];
    v7 = v4[22];

    sub_2407D9440(v7, &qword_27E507230, &unk_2408D7680);
    v8 = sub_2407D8534;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = v4[38];
    v12 = v4[36];
    v4[40] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0);
    v13 = sub_2408D4E00();
    v15 = v14;
    v8 = sub_2407D81D4;
    v9 = v13;
    v10 = v15;
  }

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2407D80CC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v13 = v0[14];
  v14 = v0[11];
  v15 = v0[34];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_2407D81D4()
{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A88, &qword_2408D6820);
  sub_2407D917C(&qword_27E506A90, &qword_27E506A88, &qword_2408D6820);
  v0[41] = sub_2408D4680();

  sub_2407D9440(v3, &qword_27E507230, &unk_2408D7680);

  return MEMORY[0x2822009F8](sub_2407D82D0, 0, 0);
}

uint64_t sub_2407D82D0()
{
  sub_2407D91C4(v0[8] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 32);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_2407D840C;
  v6 = v0[41];

  return v8(v6, v1, v2);
}

uint64_t sub_2407D840C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v7 = sub_2407D8758;
  }

  else
  {
    *(v4 + 352) = a1;
    v7 = sub_2407D863C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2407D8534()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v13 = v0[14];
  v14 = v0[11];
  v15 = v0[39];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_2407D863C()
{
  v1 = v0[44];
  v2 = v0[41];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];
  v15 = v0[14];
  v16 = v0[11];

  v13 = v0[1];

  return v13(1);
}

uint64_t sub_2407D8758()
{
  v1 = v0[41];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[17];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[43];

  v12 = v0[1];

  return v12(0);
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2407D88BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2407D88DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void *sub_2407D8944@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2407D8954(uint64_t a1, id *a2)
{
  result = sub_2408D4D10();
  *a2 = 0;
  return result;
}

uint64_t sub_2407D89CC(uint64_t a1, id *a2)
{
  v3 = sub_2408D4D20();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2407D8A4C@<X0>(uint64_t *a1@<X8>)
{
  sub_2408D4D30();
  v2 = sub_2408D4D00();

  *a1 = v2;
  return result;
}

uint64_t sub_2407D8A90()
{
  v1 = *v0;
  v2 = sub_2408D4D30();
  v3 = MEMORY[0x245CC91E0](v2);

  return v3;
}

uint64_t sub_2407D8ACC()
{
  v1 = *v0;
  sub_2408D4D30();
  sub_2408D4D60();
}

uint64_t sub_2407D8B20()
{
  v1 = *v0;
  sub_2408D4D30();
  sub_2408D5300();
  sub_2408D4D60();
  v2 = sub_2408D5320();

  return v2;
}

uint64_t sub_2407D8B94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2408D4D30();
  v6 = v5;
  if (v4 == sub_2408D4D30() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2408D5240();
  }

  return v9 & 1;
}

uint64_t sub_2407D8C1C(uint64_t a1)
{
  v2 = sub_2407D8D78(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
  v3 = sub_2407D8D78(&qword_27E506A10, 255, type metadata accessor for AIDAServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2407D8D78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2407D8E0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2408D4D00();

  *a2 = v5;
  return result;
}

uint64_t sub_2407D8E54(uint64_t a1)
{
  v2 = sub_2407D8D78(&qword_27E5069F8, 255, type metadata accessor for AATermsEntry);
  v3 = sub_2407D8D78(&unk_27E506A00, 255, type metadata accessor for AATermsEntry);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2407D9008(uint64_t a1, uint64_t a2)
{
  result = sub_2407D8D78(&qword_27E5069F0, a2, type metadata accessor for LocalRepairService);
  *(a1 + 8) = result;
  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2407D90E0()
{
  result = qword_27E506A40;
  if (!qword_27E506A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E506A40);
  }

  return result;
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

uint64_t sub_2407D917C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2407D91C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_2407D931C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407D379C;

  return sub_2407D36EC(a1, v5, v4);
}

uint64_t sub_2407D93C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB8, &qword_2408D7F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2407D9440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2407D94AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2407D94FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_2407D9550(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2407D956C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2407D95BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2407D95DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_2407D962C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2407D9848(int a1, int a2, int a3, void *aBlock)
{
  *(v4 + 16) = _Block_copy(aBlock);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2407D98F4;

  return sub_2407DA76C();
}

uint64_t sub_2407D98F4(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2407D9BAC(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_2407DB6F4;

  return sub_2407DA92C(v9);
}

uint64_t sub_2407D9E20(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_2407D9ECC;

  return sub_2407DAB4C();
}

uint64_t sub_2407D9ECC(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *v2;

  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_2408D33E0();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_2407DA1D4(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_2407DA2BC;

  return (sub_2407DAD10)(v9);
}

uint64_t sub_2407DA2BC(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 40);
  if (v3)
  {
    v13 = sub_2408D33E0();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(*(v5 + 40), a1 & 1, 0);
  }

  _Block_release(*(v6 + 40));
  v14 = *(v11 + 8);

  return v14();
}

id sub_2407DA4B4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2407DA520()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407D379C;

  return sub_2407DA1D4(v2, v3, v5, v4);
}

uint64_t sub_2407DA5E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407DB6F0;

  return sub_24087FE28(v2, v3, v5);
}

uint64_t sub_2407DA6A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2407DB6F0;

  return sub_24087FF10(a1, v4, v5, v7);
}

uint64_t sub_2407DA76C()
{
  v1 = sub_2408D4B20();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DA828, 0, 0);
}

uint64_t sub_2407DA828()
{
  v1 = v0[4];
  sub_2408D4930();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Silent force sign out, no alert to show", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_2407DA92C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2408D4B20();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DA9EC, 0, 0);
}

uint64_t sub_2407DA9EC()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_2408D4930();
  v3 = v2;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2407CF000, v4, v5, "Silent force sign out does not check for disableFindMyDevice for %@", v7, 0xCu);
    sub_2407DB3B0(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];

  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13(1);
}

uint64_t sub_2407DAB4C()
{
  v1 = sub_2408D4B20();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DAC08, 0, 0);
}

uint64_t sub_2407DAC08()
{
  v1 = v0[4];
  sub_2408D4930();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Silent force sign out does not check for ADP validation", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(1);
}

uint64_t sub_2407DAD10(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2408D4B20();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DADE8, 0, 0);
}

uint64_t sub_2407DADE8()
{
  v1 = v0[13];
  v2 = v0[7];
  sub_2408D4930();
  v3 = v2;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F50();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_2407CF000, v4, v5, "Attempting to sign out account %@ with dataclass actions (not used).", v8, 0xCu);
    sub_2407DB3B0(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[8];
  v15 = *(v13 + 8);
  v0[14] = v15;
  v0[15] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v12);
  sub_2407D91C4(v14 + OBJC_IVAR____TtC18AppleIDSetupDaemon38AISSilentSignOutFlowControllerDelegate_accountStore, (v0 + 2));
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
  v18 = *(v17 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[16] = v20;
  *v20 = v0;
  v20[1] = sub_2407DB020;

  return v22(v7, v16, v17);
}

uint64_t sub_2407DB020(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = sub_2407DB278;
  }

  else
  {
    v5 = sub_2407DB138;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2407DB138()
{
  v1 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  sub_2408D4930();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 144);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2407CF000, v2, v3, "Removal of account was successful: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v0 + 144);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 88);
  v12 = *(v0 + 72);

  v8(v10, v12);

  v13 = *(v0 + 8);

  return v13(v6);
}

uint64_t sub_2407DB278()
{
  v1 = v0[11];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2408D4930();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F30();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[17];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Error caught attempting to remove account ", v6, 2u);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v12 = v0[9];

  v8(v11, v12);

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2407DB3B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB0, &unk_2408D6830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2407DB418()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407DB6F0;

  return sub_2407D9E20(v2, v3, v5);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2407DB528()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407DB6F0;

  return sub_2407D9BAC(v2, v3, v5, v4);
}

uint64_t sub_2407DB5E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2407DB6F0;

  return sub_2407D9848(v2, v3, v4, v5);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2407DB720(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v10 = *(v3 - 8) + 64;
    v5 = *(a1 + 88);
    v6 = sub_2408D5060();
    if (v7 <= 0x3F)
    {
      v11 = *(v6 - 8) + 64;
      sub_2407EC764();
      if (v9 <= 0x3F)
      {
        v12 = *(v8 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_2407DB870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E50, &unk_2408D6ED0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
  (*(v1 + 104))(v4, *MEMORY[0x277CED808], v0);
  result = sub_2408D41F0();
  qword_27E506C40 = result;
  return result;
}

uint64_t sub_2407DB968()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E506C48);
  __swift_project_value_buffer(v0, qword_27E506C48);
  return sub_2408D4910();
}

uint64_t *sub_2407DB9B4()
{
  v1 = *v0;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_2408D3500();
  sub_2407EEEDC(qword_27E506DC8, MEMORY[0x277CED2E0]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277CED2D8], v2);
  sub_2407DBD14(v3);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  v5 = *(*v0 + 128);
  v6 = *(v1 + 88);
  v7 = sub_2408D5060();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 152)));
  v8 = *(v0 + *(*v0 + 160));

  v9 = *(v0 + *(*v0 + 168));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 176)));
  v10 = *(v0 + *(*v0 + 184));

  v11 = *(v0 + *(*v0 + 192));

  v12 = *(v0 + *(*v0 + 200));

  sub_2407D9440(v0 + *(*v0 + 208), &qword_27E506DA8, &qword_2408D8100);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2407DBC9C(uint64_t a1)
{
  sub_2407DB9B4();

  return MEMORY[0x282200960](a1);
}

uint64_t sub_2407DBD14(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](a1);
  v55 = &v53 - v7;
  v8 = sub_2408D5060();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v57 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v63 = &v53 - v20;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v58 = v17;
  v21 = sub_2408D4B20();
  __swift_project_value_buffer(v21, qword_27E506C48);
  v22 = a1;
  v23 = sub_2408D4B10();
  v24 = sub_2408D4F10();

  v25 = os_log_type_enabled(v23, v24);
  v62 = v8;
  v56 = v4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v54 = v5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v67 = v29;
    *v27 = 136315394;
    v30 = sub_2408D53B0();
    v32 = sub_2408CC504(v30, v31, &v67);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2112;
    v33 = a1;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v34;
    *v28 = v34;
    _os_log_impl(&dword_2407CF000, v23, v24, "%s handling isolated cancellation with error: %@", v27, 0x16u);
    sub_2407D9440(v28, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x245CC9F60](v29, -1, -1);
    v35 = v27;
    v5 = v54;
    MEMORY[0x245CC9F60](v35, -1, -1);
  }

  v36 = *(*v2 + 208);
  swift_beginAccess();
  v37 = v63;
  sub_2407EEE04(v2 + v36, v63, &qword_27E506DA8, &qword_2408D8100);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  v39 = *(v38 - 8);
  v40 = v57;
  (*(v39 + 56))(v57, 1, 1, v38);
  swift_beginAccess();
  sub_2407EEE6C(v40, v2 + v36);
  swift_endAccess();
  v41 = v58;
  sub_2407EEE04(v37, v58, &qword_27E506DA8, &qword_2408D8100);
  if ((*(v39 + 48))(v41, 1, v38) == 1)
  {
    sub_2407D9440(v41, &qword_27E506DA8, &qword_2408D8100);
  }

  else
  {
    v66 = a1;
    v42 = a1;
    sub_2408D4E90();
    (*(v39 + 8))(v41, v38);
  }

  v43 = v62;
  v44 = v59;
  v45 = *(*v2 + 128);
  swift_beginAccess();
  v46 = v61;
  (*(v61 + 16))(v44, v2 + v45, v43);
  if ((*(v64 + 48))(v44, 1, v5))
  {
    (*(v46 + 8))(v44, v43);
  }

  else
  {
    v47 = v64;
    v48 = v55;
    (*(v64 + 16))(v55, v44, v5);
    (*(v46 + 8))(v44, v43);
    v65 = a1;
    v49 = *(*(v56 + 104) + 8);
    sub_2408D3640();
    (*(v47 + 8))(v48, v5);
  }

  v50 = *v2;
  if (*(v2 + *(*v2 + 184)))
  {
    v65 = a1;
    sub_2408D3D80();
    sub_2407EEEDC(&qword_27E506DB8, MEMORY[0x277CED5B0]);

    sub_2408D4270();

    v50 = *v2;
  }

  if (*(v2 + *(v50 + 192)))
  {
    v65 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    sub_2407D917C(&qword_27E506DC0, &qword_27E506A70, qword_2408D75E0);
    sub_2408D4270();
  }

  sub_2407D9440(v63, &qword_27E506DA8, &qword_2408D8100);
  v51 = v60;
  (*(v64 + 56))(v60, 1, 1, v5);
  swift_beginAccess();
  (*(v46 + 40))(v2 + v45, v51, v43);
  return swift_endAccess();
}

uint64_t sub_2407DC4D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_2408D35B0() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DC568, 0, 0);
}

uint64_t sub_2407DC568()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_2408D35C0();
  v3 = sub_2408D3500();
  LODWORD(v2) = (*(*(v3 - 8) + 48))(v1, 6, v3);
  sub_2407EEC64(v1);
  if (v2)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v4 = sub_2408D4B20();
    __swift_project_value_buffer(v4, qword_27E506C48);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCB0];
    if (v7)
    {
      v9 = "Client has decided to proceed from the failure, moving on";
LABEL_10:
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, v9, v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v10 = sub_2408D4B20();
    __swift_project_value_buffer(v10, qword_27E506C48);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v11 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCA8];
    if (v11)
    {
      v9 = "Client is remaining in failed state";
      goto LABEL_10;
    }
  }

  v13 = v0[4];
  v14 = v0[2];

  v15 = *v8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v16 - 8) + 104))(v14, v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_2407DC7B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D90, &qword_2408D6D58);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_2408D4090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2408D35B0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2408D3500();
  (*(*(v13 - 8) + 56))(v12, 2, 6, v13);

  sub_2408D35D0();
  v14 = sub_2408D37E0();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  sub_2408D4030();
  (*(v5 + 104))(v8, *MEMORY[0x277CED768], v4);
  v15 = sub_2408D3560();
  sub_2408D40B0();
  return v15(v17, 0);
}

uint64_t sub_2407DCA08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 320) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = a5;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_2408D36A0();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = *(*(sub_2408D33D0() - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v11 = sub_2408D38D0();
  *(v5 + 136) = v11;
  v12 = *(v11 - 8);
  *(v5 + 144) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D90, &qword_2408D6D58) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8) - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v16 = sub_2408D3970();
  *(v5 + 184) = v16;
  v17 = *(v16 - 8);
  *(v5 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v19 = sub_2408D3720();
  *(v5 + 224) = v19;
  v20 = *(v19 - 8);
  *(v5 + 232) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  v22 = sub_2408D4090();
  *(v5 + 248) = v22;
  v23 = *(v22 - 8);
  *(v5 + 256) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  v25 = sub_2408D4130();
  *(v5 + 272) = v25;
  v26 = *(v25 - 8);
  *(v5 + 280) = v26;
  v27 = *(v26 + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  v28 = sub_2408D4040();
  *(v5 + 296) = v28;
  v29 = *(v28 - 8);
  *(v5 + 304) = v29;
  v30 = *(v29 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DCDF0, 0, 0);
}

uint64_t sub_2407DCDF0()
{
  v150 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v7 = *(v0 + 72);
  sub_2408D3570();
  sub_2408D40A0();
  (*(v2 + 8))(v1, v3);
  v8 = (*(v6 + 88))(v4, v5);
  v9 = *(v0 + 312);
  if (v8 == *MEMORY[0x277CED768])
  {
    v10 = *(v0 + 296);
    v11 = *(v0 + 304);
    v12 = *(v0 + 264);
    (*(*(v0 + 256) + 96))(v12, *(v0 + 248));
    (*(v11 + 32))(v9, v12, v10);
    if (sub_2408D4020())
    {
      v13 = *(v0 + 312);
      v14 = *(v0 + 240);
      v15 = *(v0 + 320);
      v16 = *(v0 + 80);
      sub_2408D3700();
      if ((sub_2408D4000() & 1) != 0 && v15)
      {
        v18 = *(v0 + 232);
        v17 = *(v0 + 240);
        v20 = *(v0 + 216);
        v19 = *(v0 + 224);
        v21 = *(v0 + 176);
        v22 = *(v0 + 88);
        sub_2408D3810();
        (*(v18 + 16))(v21, v17, v19);
        (*(v18 + 56))(v21, 0, 1, v19);
        sub_2408D37B0();
        sub_2408D3940();
        if (qword_27E506918 != -1)
        {
          swift_once();
        }

        v23 = sub_2408D4B20();
        __swift_project_value_buffer(v23, qword_27E506C48);
        v24 = sub_2408D4B10();
        v25 = sub_2408D4F10();
        v26 = os_log_type_enabled(v24, v25);
        v28 = *(v0 + 304);
        v27 = *(v0 + 312);
        v29 = *(v0 + 296);
        v30 = *(v0 + 232);
        v31 = *(v0 + 240);
        v32 = *(v0 + 224);
        if (v26)
        {
          v140 = *(v0 + 296);
          v144 = *(v0 + 312);
          v33 = *(v0 + 216);
          v34 = *(v0 + 184);
          v136 = *(v0 + 240);
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v149[0] = v36;
          *v35 = 136315138;
          swift_beginAccess();
          sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
          v37 = sub_2408D5220();
          v39 = sub_2408CC504(v37, v38, v149);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_2407CF000, v24, v25, "User selected to create a new account: %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v36);
          MEMORY[0x245CC9F60](v36, -1, -1);
          MEMORY[0x245CC9F60](v35, -1, -1);

          (*(v30 + 8))(v136, v32);
          (*(v28 + 8))(v144, v140);
        }

        else
        {

          (*(v30 + 8))(v31, v32);
          (*(v28 + 8))(v27, v29);
        }

        v72 = *(v0 + 216);
        v73 = *(v0 + 184);
        v74 = *(v0 + 192);
        v75 = *(v0 + 64);
        swift_beginAccess();
        (*(v74 + 16))(v75, v72, v73);
        (*(v74 + 56))(v75, 0, 1, v73);
        v76 = *MEMORY[0x277CEDCB0];
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D98, &unk_2408D6D60);
        (*(*(v77 - 8) + 104))(v75, v76, v77);
        (*(v74 + 8))(v72, v73);
      }

      else
      {
        v57 = *(v0 + 312);
        v58 = *(v0 + 168);
        sub_2408D4010();
        v59 = sub_2408D37E0();
        v60 = *(v59 - 8);
        v61 = *(v60 + 48);
        v62 = v61(v58, 1, v59);
        v63 = *(v0 + 168);
        if (v62 == 1)
        {
          sub_2407D9440(*(v0 + 168), &qword_27E506D90, &qword_2408D6D58);
        }

        else
        {
          sub_2408D37C0();
          (*(v60 + 8))(v63, v59);
        }

        v64 = *(v0 + 312);
        v65 = *(v0 + 240);
        v66 = *(v0 + 160);
        sub_2408D3710();
        sub_2408D4010();
        if (v61(v66, 1, v59) == 1)
        {
          sub_2407D9440(*(v0 + 160), &qword_27E506D90, &qword_2408D6D58);
          v69 = *(v0 + 144);
          v71 = *(v0 + 128);
          v70 = *(v0 + 136);
          (*(v69 + 56))(v71, 1, 1, v70);
          sub_2408D3860();
          if ((*(v69 + 48))(v71, 1, v70) != 1)
          {
            sub_2407D9440(*(v0 + 128), &qword_27E507F00, &qword_2408D6D50);
          }
        }

        else
        {
          v67 = *(v0 + 128);
          v68 = *(v0 + 160);
          sub_2408D37D0();
          v79 = *(v0 + 144);
          v78 = *(v0 + 152);
          v81 = *(v0 + 128);
          v80 = *(v0 + 136);
          (*(v60 + 8))(*(v0 + 160), v59);
          (*(v79 + 56))(v81, 0, 1, v80);
          (*(v79 + 32))(v78, v81, v80);
        }

        v82 = *(v0 + 232);
        v83 = *(v0 + 224);
        v146 = *(v0 + 208);
        v84 = *(v0 + 176);
        v85 = *(v0 + 152);
        v87 = *(v0 + 112);
        v86 = *(v0 + 120);
        v89 = *(v0 + 96);
        v88 = *(v0 + 104);
        v90 = *(v0 + 88);
        (*(v82 + 16))(v84, *(v0 + 240), v83);
        (*(v82 + 56))(v84, 0, 1, v83);
        sub_2408D33C0();
        (*(v88 + 104))(v87, *MEMORY[0x277CED3A0], v89);
        sub_2408D38E0();
        if (qword_27E506918 != -1)
        {
          swift_once();
        }

        v91 = *(v0 + 200);
        v92 = *(v0 + 208);
        v93 = *(v0 + 184);
        v94 = *(v0 + 192);
        v95 = sub_2408D4B20();
        __swift_project_value_buffer(v95, qword_27E506C48);
        (*(v94 + 16))(v91, v92, v93);
        v96 = sub_2408D4B10();
        v142 = sub_2408D4F10();
        v97 = os_log_type_enabled(v96, v142);
        v99 = *(v0 + 304);
        v98 = *(v0 + 312);
        v100 = *(v0 + 296);
        v101 = *(v0 + 232);
        v102 = *(v0 + 240);
        v147 = *(v0 + 224);
        v104 = *(v0 + 192);
        v103 = *(v0 + 200);
        v105 = *(v0 + 184);
        if (v97)
        {
          v138 = *(v0 + 240);
          v106 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v149[0] = v130;
          *v106 = 136315138;
          sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
          v132 = v100;
          v134 = v98;
          v107 = sub_2408D5220();
          v109 = v108;
          (*(v104 + 8))(v103, v105);
          v110 = sub_2408CC504(v107, v109, v149);

          *(v106 + 4) = v110;
          _os_log_impl(&dword_2407CF000, v96, v142, "User selected existing account: %s", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v130);
          MEMORY[0x245CC9F60](v130, -1, -1);
          MEMORY[0x245CC9F60](v106, -1, -1);

          (*(v101 + 8))(v138, v147);
          (*(v99 + 8))(v134, v132);
        }

        else
        {

          (*(v104 + 8))(v103, v105);
          (*(v101 + 8))(v102, v147);
          (*(v99 + 8))(v98, v100);
        }

        v111 = *(v0 + 184);
        v112 = *(v0 + 192);
        v113 = *(v0 + 64);
        (*(v112 + 32))(v113, *(v0 + 208), v111);
        (*(v112 + 56))(v113, 0, 1, v111);
        v114 = *MEMORY[0x277CEDCB0];
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D98, &unk_2408D6D60);
        (*(*(v115 - 8) + 104))(v113, v114, v115);
      }
    }

    else
    {
      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v47 = sub_2408D4B20();
      __swift_project_value_buffer(v47, qword_27E506C48);
      v48 = sub_2408D4B10();
      v49 = sub_2408D4F20();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2407CF000, v48, v49, "Continuing to wait for user to select member and choose to proceed", v50, 2u);
        MEMORY[0x245CC9F60](v50, -1, -1);
      }

      v52 = *(v0 + 304);
      v51 = *(v0 + 312);
      v53 = *(v0 + 296);
      v54 = *(v0 + 64);

      (*(v52 + 8))(v51, v53);
      v55 = *MEMORY[0x277CEDCA8];
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D98, &unk_2408D6D60);
      (*(*(v56 - 8) + 104))(v54, v55, v56);
    }

    v116 = *(v0 + 312);
    v117 = *(v0 + 288);
    v118 = *(v0 + 264);
    v119 = *(v0 + 240);
    v121 = *(v0 + 208);
    v120 = *(v0 + 216);
    v122 = *(v0 + 200);
    v124 = *(v0 + 168);
    v123 = *(v0 + 176);
    v125 = *(v0 + 160);
    v135 = *(v0 + 152);
    v139 = *(v0 + 128);
    v143 = *(v0 + 120);
    v148 = *(v0 + 112);

    v46 = *(v0 + 8);
  }

  else
  {
    v40 = *(v0 + 288);
    v41 = *(v0 + 240);
    v42 = *(v0 + 208);
    v43 = *(v0 + 216);
    v127 = *(v0 + 200);
    v128 = *(v0 + 176);
    v129 = *(v0 + 168);
    v131 = *(v0 + 160);
    v133 = *(v0 + 152);
    v137 = *(v0 + 128);
    v141 = *(v0 + 120);
    v145 = *(v0 + 112);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D50, &qword_2408D6D00);
    sub_2407D917C(&qword_27E506D58, &qword_27E506D50, &qword_2408D6D00);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277CED520], v44);
    swift_willThrow();

    v46 = *(v0 + 8);
  }

  return v46();
}

void sub_2407DDB18(uint64_t a1, uint64_t a2)
{
  v37 = sub_2408D3970();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2408D38D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = *(v8 + 16);
  v13(&v32 - v14, a1, v7);
  swift_beginAccess();
  sub_2408D3900();
  swift_endAccess();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v15 = sub_2408D4B20();
  __swift_project_value_buffer(v15, qword_27E506C48);
  v13(v12, a1, v7);
  v16 = sub_2408D4B10();
  v17 = sub_2408D4F20();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v18 = 136315394;
    swift_beginAccess();
    v19 = *(v4 + 16);
    v34 = v17;
    v20 = v36;
    v33 = v16;
    v21 = v37;
    v19(v36, a2, v37);
    sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
    v22 = sub_2408D5220();
    v24 = v23;
    (*(v4 + 8))(v20, v21);
    v25 = sub_2408CC504(v22, v24, &v38);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    sub_2407EEEDC(&qword_27E506AA0, MEMORY[0x277CED3D8]);
    v26 = sub_2408D5220();
    v28 = v27;
    (*(v8 + 8))(v12, v7);
    v29 = sub_2408CC504(v26, v28, &v38);

    *(v18 + 14) = v29;
    v30 = v33;
    _os_log_impl(&dword_2407CF000, v33, v34, "account.id: %s , $0: %s", v18, 0x16u);
    v31 = v35;
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v31, -1, -1);
    MEMORY[0x245CC9F60](v18, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_2407DDF54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a7;
  v32 = a4;
  v33 = a3;
  v34 = a5;
  v35 = a1;
  v8 = sub_2408D35B0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v36 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D68, &qword_2408D6D28);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = sub_2408D38D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2408D3BA0();
  v20 = *(v30 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v30);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2407EEDBC(0, &qword_27E506D80, 0x277CF0170);
  v24 = a2;
  sub_2408D5000();

  sub_2408D38F0();
  sub_2408D38B0();
  (*(v16 + 8))(v19, v15);
  sub_2408D4A30();
  v25 = sub_2408D4390();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);

  sub_2408D4370();
  (*(v20 + 104))(v23, *MEMORY[0x277CED4D0], v30);
  v26 = sub_2408D3530();
  sub_2408D3BC0();
  v26(v37, 0);
  v27 = sub_2408D3500();
  (*(*(v27 - 8) + 56))(v36, 4, 6, v27);
  return sub_2408D35D0();
}

uint64_t sub_2407DE2D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D4390();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D68, &qword_2408D6D28) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = sub_2408D3BA0();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_2408D3C20();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = sub_2408D43A0();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();
  v16 = *(*(sub_2408D35B0() - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DE514, 0, 0);
}

uint64_t sub_2407DE514()
{
  v1 = v0[18];
  v2 = v0[3];
  sub_2408D35C0();
  v3 = sub_2408D3500();
  LODWORD(v2) = (*(*(v3 - 8) + 48))(v1, 6, v3);
  sub_2407EEC64(v1);
  if (v2 != 4)
  {
    goto LABEL_11;
  }

  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[3];
  sub_2408D3540();
  sub_2408D3BB0();
  (*(v5 + 8))(v4, v6);
  if ((*(v9 + 88))(v7, v8) != *MEMORY[0x277CED4D0])
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
LABEL_11:
    v34 = v0[17];
    v35 = v0[18];
    v36 = v0[14];
    v37 = v0[11];
    v38 = v0[7];
    v39 = v0[8];
    v66 = v0[6];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D50, &qword_2408D6D00);
    sub_2407D917C(&qword_27E506D58, &qword_27E506D50, &qword_2408D6D00);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277CED520], v40);
    swift_willThrow();

    v42 = v0[1];
    goto LABEL_20;
  }

  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  v14 = v0[11];
  (*(v0[10] + 96))(v14, v0[9]);
  (*(v12 + 32))(v11, v14, v13);
  if (sub_2408D4360())
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v15 = sub_2408D4B20();
    __swift_project_value_buffer(v15, qword_27E506C48);
    v16 = sub_2408D4B10();
    v17 = sub_2408D4F20();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2407CF000, v16, v17, "Accepting family repair after indication it finished", v18, 2u);
      MEMORY[0x245CC9F60](v18, -1, -1);
    }

    v19 = v0[17];
    v21 = v0[7];
    v20 = v0[8];
    v22 = v0[4];
    v23 = v0[5];

    sub_2408D4380();
    sub_2407EEE04(v20, v21, &qword_27E506D68, &qword_2408D6D28);
    v24 = (*(v23 + 48))(v21, 1, v22);
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[15];
    v28 = v0[8];
    if (v24 == 1)
    {
      sub_2407D9440(v0[8], &qword_27E506D68, &qword_2408D6D28);
      (*(v26 + 8))(v25, v27);
      v32 = 0;
    }

    else
    {
      v29 = v0[6];
      v30 = v0[4];
      v65 = v0[17];
      v31 = *(v0[5] + 32);
      v31(v29, v0[7], v30);
      sub_2407EEEDC(&qword_27E506D78, MEMORY[0x277CED988]);
      v32 = swift_allocError();
      v31(v33, v29, v30);
      sub_2407D9440(v28, &qword_27E506D68, &qword_2408D6D28);
      (*(v26 + 8))(v65, v27);
    }

    v53 = v24 != 1;
    v54 = v0[2];
    *v54 = v32;
    *(v54 + 8) = v53;
    v55 = *MEMORY[0x277CEDCB0];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D70, &qword_2408D6D30);
    (*(*(v56 - 8) + 104))(v54, v55, v56);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v43 = sub_2408D4B20();
    __swift_project_value_buffer(v43, qword_27E506C48);
    v44 = sub_2408D4B10();
    v45 = sub_2408D4F20();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2407CF000, v44, v45, "Waiting while family repair has not indicated it's finished yet", v46, 2u);
      MEMORY[0x245CC9F60](v46, -1, -1);
    }

    v48 = v0[16];
    v47 = v0[17];
    v49 = v0[15];
    v50 = v0[2];

    (*(v48 + 8))(v47, v49);
    v51 = *MEMORY[0x277CEDCA8];
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D70, &qword_2408D6D30);
    (*(*(v52 - 8) + 104))(v50, v51, v52);
  }

  v58 = v0[17];
  v57 = v0[18];
  v59 = v0[14];
  v60 = v0[11];
  v62 = v0[7];
  v61 = v0[8];
  v63 = v0[6];

  v42 = v0[1];
LABEL_20:

  return v42();
}

uint64_t sub_2407DEB8C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_2408D35B0() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DEC1C, 0, 0);
}

uint64_t sub_2407DEC1C()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_2408D35C0();
  v3 = sub_2408D3500();
  v4 = (*(*(v3 - 8) + 48))(v1, 6, v3);
  sub_2407EEC64(v1);
  v5 = v0[2];
  if (v4 == 5)
  {
    v6 = MEMORY[0x277CEDCA8];
  }

  else
  {
    *v5 = 0;
    v6 = MEMORY[0x277CEDCB0];
  }

  v7 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D88, &qword_2408D6D40);
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  v9 = v0[4];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2407DED4C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA0, &unk_2408D76A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11[-v5];
  v7 = sub_2408D3A40();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = sub_2408D3530();
  sub_2408D3B50();
  return v9(v11, 0);
}

uint64_t sub_2407DEE78(uint64_t a1, uint64_t a2)
{
  sub_2407D9440(a2, &qword_27E506DA8, &qword_2408D8100);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_2407DEF54()
{
  v0 = sub_2408D35B0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2408D3500();
  (*(*(v4 - 8) + 56))(v3, 5, 6, v4);
  return sub_2408D35D0();
}

uint64_t sub_2407DF004(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_2408D35B0() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DF094, 0, 0);
}

uint64_t sub_2407DF094()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_2408D35C0();
  v4 = sub_2408D3500();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 6, v4);
  sub_2407EEC64(v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  v6 = MEMORY[0x277CEDCB0];
  if (v2 != 6)
  {
    v6 = MEMORY[0x277CEDCA8];
  }

  (*(*(v5 - 8) + 104))(v3, *v6, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2407DF1B8(void *a1, uint64_t a2)
{
  v4 = sub_2408D38D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = v40 - v10;
  v46 = a2;
  v11 = sub_2408D3960();
  v12 = 0;
  v14 = v11 + 56;
  v13 = *(v11 + 56);
  v47 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v49 = (v5 + 32);
  v43 = v9;
  v44 = v5;
  v40[2] = v5 + 40;
  v41 = v11 + 56;
  v42 = a1;
  while (v17)
  {
LABEL_11:
    v20 = *(*(v47 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v17)))));
    v21 = v45;
    sub_2408D38F0();
    v22 = v9;
    v23 = v4;
    v48 = *v49;
    v48(v22, v21, v4);
    v24 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *a1;
    v26 = v50;
    v28 = sub_2408CCC7C(v20);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_22;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2408C5870();
      }
    }

    else
    {
      sub_2408C81A4(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_2408CCC7C(v20);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_24;
      }

      v28 = v33;
    }

    v4 = v23;
    v35 = v50;
    if (v32)
    {
      v9 = v43;
      (*(v44 + 40))(v50[7] + *(v44 + 72) * v28, v43, v4);
    }

    else
    {
      v50[(v28 >> 6) + 8] |= 1 << v28;
      *(v35[6] + 8 * v28) = v20;
      v9 = v43;
      v48((v35[7] + *(v44 + 72) * v28), v43, v4);
      v36 = v35[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_23;
      }

      v35[2] = v38;
    }

    v17 &= v17 - 1;
    v14 = v41;
    a1 = v42;
    *v42 = v35;
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v18)
    {
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for AIDAServiceType(0);
  result = sub_2408D5280();
  __break(1u);
  return result;
}

uint64_t sub_2407DF4D0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_2408D35B0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2408D3FD0();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2408D3C20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v27 = sub_2408D4090();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v27);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2408D3540();
  v20 = sub_2408D3B20();
  v21 = *(v9 + 8);
  v21(v15, v8);
  sub_2408D3540();
  v22 = sub_2408D3AE0();
  v21(v13, v8);
  sub_24082A3C4(v22, v20);
  (*(v29 + 104))(v28, *MEMORY[0x277CED690], v30);
  sub_2408D3F70();
  (*(v16 + 104))(v19, *MEMORY[0x277CED750], v27);
  v23 = sub_2408D3560();
  sub_2408D40B0();
  v23(v32, 0);
  v24 = sub_2408D3500();
  (*(*(v24 - 8) + 56))(v31, 2, 6, v24);
  return sub_2408D35D0();
}

uint64_t sub_2407DF84C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D4090();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2408D4130();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_2408D3F80();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407DF9C4, 0, 0);
}

uint64_t sub_2407DF9C4()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  sub_2408D3570();
  sub_2408D40A0();
  (*(v2 + 8))(v1, v3);
  v8 = (*(v6 + 88))(v4, v5);
  v9 = v0[12];
  if (v8 == *MEMORY[0x277CED750])
  {
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[6];
    (*(v0[5] + 96))(v12, v0[4]);
    (*(v11 + 32))(v9, v12, v10);
    v13 = sub_2408D3F60();
    if (v13 == 2)
    {
      v14 = v0[2];
      (*(v0[11] + 8))(v0[12], v0[10]);
      v15 = MEMORY[0x277CEDCA8];
    }

    else
    {
      v20 = v13;
      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v21 = sub_2408D4B20();
      __swift_project_value_buffer(v21, qword_27E506C48);
      v22 = sub_2408D4B10();
      v23 = sub_2408D4F10();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        v25 = v20 & 1;
        *(v24 + 4) = v25;
        _os_log_impl(&dword_2407CF000, v22, v23, "Connection decision has been made: %{BOOL}d", v24, 8u);
        MEMORY[0x245CC9F60](v24, -1, -1);
      }

      else
      {

        LOBYTE(v25) = v20 & 1;
      }

      v14 = v0[2];
      (*(v0[11] + 8))(v0[12], v0[10]);
      *v14 = v25;
      v15 = MEMORY[0x277CEDCB0];
    }

    v26 = *v15;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v27 - 8) + 104))(v14, v26, v27);
    v28 = v0[12];
    v29 = v0[9];
    v30 = v0[6];

    v19 = v0[1];
  }

  else
  {
    v16 = v0[9];
    (*(v0[5] + 8))(v0[6], v0[4]);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D50, &qword_2408D6D00);
    sub_2407D917C(&qword_27E506D58, &qword_27E506D50, &qword_2408D6D00);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CED520], v17);
    swift_willThrow();

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_2407DFD6C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *v1;
  v2[19] = *v1;
  v4 = sub_2408D4530();
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v2[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v8 = sub_2408D36A0();
  v2[24] = v8;
  v9 = *(v8 - 8);
  v2[25] = v9;
  v10 = *(v9 + 64) + 15;
  v2[26] = swift_task_alloc();
  v11 = *(*(sub_2408D33D0() - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v13 = sub_2408D4500();
  v2[29] = v13;
  v14 = *(v13 - 8);
  v2[30] = v14;
  v15 = *(v14 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v16 = sub_2408D38D0();
  v2[33] = v16;
  v17 = *(v16 - 8);
  v2[34] = v17;
  v18 = *(v17 + 64) + 15;
  v2[35] = swift_task_alloc();
  v19 = *(v3 + 80);
  v2[36] = v19;
  v20 = *(v19 - 8);
  v2[37] = v20;
  v21 = *(v20 + 64) + 15;
  v2[38] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v23 = sub_2408D4660();
  v2[40] = v23;
  v24 = *(v23 - 8);
  v2[41] = v24;
  v25 = *(v24 + 64) + 15;
  v2[42] = swift_task_alloc();
  v26 = sub_2408D3970();
  v2[43] = v26;
  v27 = *(v26 - 8);
  v2[44] = v27;
  v28 = *(v27 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E0180, v1, 0);
}

uint64_t sub_2407E0180()
{
  v18 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_2408D4B20();
  v0[47] = __swift_project_value_buffer(v2, qword_27E506C48);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[16] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507220, &unk_2408D7670);
    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Authenticating remote device with model: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = *(MEMORY[0x277CED858] + 4);
  v16 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v12 = swift_task_alloc();
  v0[48] = v12;
  *v12 = v0;
  v12[1] = sub_2407E0390;
  v13 = v0[42];
  v14 = v0[17];

  return v16(v13);
}

uint64_t sub_2407E0390()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2407E04A0, v2, 0);
}

uint64_t sub_2407E04A0()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  sub_2408D4630();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v7 = *(v0 + 376);
    sub_2407D9440(*(v0 + 312), &unk_27E506A20, &unk_2408D67F0);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Expected nonnull account to be in authentication model during remote setup", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v11 = *(v0 + 288);
    v12 = *(v0 + 152);

    v13 = *(v12 + 104);
    v14 = *(v12 + 88);
    *(v0 + 56) = v11;
    *(v0 + 64) = v14;
    *(v0 + 80) = v13;
    type metadata accessor for RemoteSetupService.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 336);
    v20 = *(v0 + 304);
    v19 = *(v0 + 312);
    v21 = *(v0 + 280);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);
    v31 = *(v0 + 208);
    v32 = *(v0 + 184);
    v33 = *(v0 + 176);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    (*(*(v0 + 352) + 32))(*(v0 + 368), *(v0 + 312), *(v0 + 344));
    v28 = *(MEMORY[0x277CED870] + 4);
    v34 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v29 = swift_task_alloc();
    *(v0 + 392) = v29;
    *v29 = v0;
    v29[1] = sub_2407E07AC;
    v30 = *(v0 + 136);

    return v34(nullsub_1, 0);
  }
}

uint64_t sub_2407E07AC()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_2407E1E48;
  }

  else
  {
    v6 = sub_2407E08D8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407E08D8()
{
  (*(*(v0 + 296) + 16))(*(v0 + 304), *(v0 + 144) + *(**(v0 + 144) + 120), *(v0 + 288));
  type metadata accessor for LocalSetupService();
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 368);
    v2 = *(v0 + 280);
    v3 = *(v0 + 152);
    *(v0 + 408) = *(v0 + 120);
    sub_2408D38F0();
    *(v0 + 416) = *(v3 + 88);
    *(v0 + 432) = *(v3 + 104);
    sub_2407E2328((v0 + 16));
    v4 = swift_task_alloc();
    *(v0 + 440) = v4;
    *v4 = v0;
    v4[1] = sub_2407E0C8C;
    v5 = *(v0 + 280);
    v6 = *(v0 + 144);

    return sub_2407E2630(v5, v0 + 16);
  }

  else
  {
    v8 = *(v0 + 400);
    v9 = *(v0 + 376);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F20();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "Continuing to SRP", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v13 = *(v0 + 144);

    v14 = sub_2407EECF8();
    *(v0 + 488) = v14;
    if (v8)
    {
      (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
      v16 = *(v0 + 360);
      v15 = *(v0 + 368);
      v17 = *(v0 + 336);
      v19 = *(v0 + 304);
      v18 = *(v0 + 312);
      v20 = *(v0 + 280);
      v22 = *(v0 + 248);
      v21 = *(v0 + 256);
      v23 = *(v0 + 224);
      v34 = *(v0 + 216);
      v35 = *(v0 + 208);
      v36 = *(v0 + 184);
      v37 = *(v0 + 176);

      v24 = *(v0 + 8);

      return v24();
    }

    else
    {
      v25 = v14;
      v26 = *(v0 + 376);

      v27 = sub_2408D4B10();
      v28 = sub_2408D4F20();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2407CF000, v27, v28, "Following standard magic/proxied auth pattern", v29, 2u);
        MEMORY[0x245CC9F60](v29, -1, -1);
      }

      v30 = swift_task_alloc();
      *(v0 + 496) = v30;
      *v30 = v0;
      v30[1] = sub_2407E1BD4;
      v31 = *(v0 + 368);
      v32 = *(v0 + 136);
      v33 = *(v0 + 144);

      return sub_2407E2F38(v32, v31, v25);
    }
  }
}

uint64_t sub_2407E0C8C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  v7 = *(*v1 + 144);
  v9 = *v1;
  *(v2 + 520) = a1;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_2407E0E10, v7, 0);
}

uint64_t sub_2407E0E10()
{
  if (*(v0 + 520) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 448) = v1;
    *v1 = v0;
    v1[1] = sub_2407E11BC;
    v2 = *(v0 + 408);
    v3 = *(v0 + 368);
    v4 = *(v0 + 136);

    return sub_240809854(v4, v3);
  }

  else
  {
    v6 = *(v0 + 376);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 408);
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "No symptoms found. Cleared for takeoff.", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v12 = *(v0 + 400);
    v13 = *(v0 + 376);
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F20();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2407CF000, v14, v15, "Continuing to SRP", v16, 2u);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    v17 = *(v0 + 144);

    v18 = sub_2407EECF8();
    *(v0 + 488) = v18;
    if (v12)
    {
      (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
      v20 = *(v0 + 360);
      v19 = *(v0 + 368);
      v21 = *(v0 + 336);
      v23 = *(v0 + 304);
      v22 = *(v0 + 312);
      v24 = *(v0 + 280);
      v26 = *(v0 + 248);
      v25 = *(v0 + 256);
      v27 = *(v0 + 224);
      v38 = *(v0 + 216);
      v39 = *(v0 + 208);
      v40 = *(v0 + 184);
      v41 = *(v0 + 176);

      v28 = *(v0 + 8);

      return v28();
    }

    else
    {
      v29 = v18;
      v30 = *(v0 + 376);

      v31 = sub_2408D4B10();
      v32 = sub_2408D4F20();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2407CF000, v31, v32, "Following standard magic/proxied auth pattern", v33, 2u);
        MEMORY[0x245CC9F60](v33, -1, -1);
      }

      v34 = swift_task_alloc();
      *(v0 + 496) = v34;
      *v34 = v0;
      v34[1] = sub_2407E1BD4;
      v35 = *(v0 + 368);
      v36 = *(v0 + 136);
      v37 = *(v0 + 144);

      return sub_2407E2F38(v36, v35, v29);
    }
  }
}

uint64_t sub_2407E11BC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(v4 + 456) = v1;

  v7 = *(v4 + 144);
  if (v1)
  {
    v8 = sub_2407E20C0;
  }

  else
  {
    *(v4 + 521) = a1 & 1;
    v8 = sub_2407E12FC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2407E12FC()
{
  if (*(v0 + 521) == 1)
  {
    v1 = *(v0 + 408);

    v2 = *(v0 + 456);
    v3 = *(v0 + 376);
    v4 = sub_2408D4B10();
    v5 = sub_2408D4F20();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2407CF000, v4, v5, "Continuing to SRP", v6, 2u);
      MEMORY[0x245CC9F60](v6, -1, -1);
    }

    v7 = *(v0 + 144);

    v8 = sub_2407EECF8();
    *(v0 + 488) = v8;
    if (v2)
    {
      (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
LABEL_10:
      v31 = *(v0 + 360);
      v30 = *(v0 + 368);
      v32 = *(v0 + 336);
      v34 = *(v0 + 304);
      v33 = *(v0 + 312);
      v35 = *(v0 + 280);
      v37 = *(v0 + 248);
      v36 = *(v0 + 256);
      v38 = *(v0 + 216);
      v39 = *(v0 + 224);
      v57 = *(v0 + 208);
      v59 = *(v0 + 184);
      v61 = *(v0 + 176);

      v40 = *(v0 + 8);

      return v40();
    }

    v42 = v8;
    v43 = *(v0 + 376);

    v44 = sub_2408D4B10();
    v45 = sub_2408D4F20();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2407CF000, v44, v45, "Following standard magic/proxied auth pattern", v46, 2u);
      MEMORY[0x245CC9F60](v46, -1, -1);
    }

    v47 = swift_task_alloc();
    *(v0 + 496) = v47;
    *v47 = v0;
    v47[1] = sub_2407E1BD4;
    v48 = *(v0 + 368);
    v49 = *(v0 + 136);
    v50 = *(v0 + 144);

    return sub_2407E2F38(v49, v48, v42);
  }

  else
  {
    v9 = *(v0 + 376);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F30();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "Failing early as user did not repair their account", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v13 = *(v0 + 360);
    v14 = *(v0 + 280);
    v60 = *(v0 + 256);
    v62 = *(v0 + 456);
    v16 = *(v0 + 216);
    v15 = *(v0 + 224);
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    v58 = *(v0 + 144);

    sub_2408D38A0();
    v21 = sub_2408D3720();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
    sub_2408D33C0();
    (*(v17 + 104))(v18, *MEMORY[0x277CED3A0], v19);
    sub_2408D38E0();
    v22 = sub_2408D36F0();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
    sub_2408D44E0();
    *(v0 + 464) = sub_2407EECF8();
    if (v62)
    {
      v23 = *(v0 + 408);
      v24 = *(v0 + 368);
      v25 = *(v0 + 344);
      v26 = *(v0 + 352);
      v27 = *(v0 + 256);
      v28 = *(v0 + 232);
      v29 = *(v0 + 240);

      (*(v29 + 8))(v27, v28);
      (*(v26 + 8))(v24, v25);
      goto LABEL_10;
    }

    (*(*(v0 + 240) + 16))(*(v0 + 248), *(v0 + 256), *(v0 + 232));
    v51 = *(MEMORY[0x277CED570] + 4);
    v63 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v52 = swift_task_alloc();
    *(v0 + 472) = v52;
    v53 = sub_2407EEEDC(&qword_27E506D10, MEMORY[0x277CEDB20]);
    *v52 = v0;
    v52[1] = sub_2407E18B4;
    v54 = *(v0 + 248);
    v55 = *(v0 + 232);
    v56 = *(v0 + 176);

    return v63(v56, v54, v55, v53);
  }
}

uint64_t sub_2407E18B4()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  v2[60] = v0;

  v5 = v2[58];
  if (v0)
  {
    v6 = v2[18];

    v7 = sub_2407E1F6C;
  }

  else
  {
    v6 = v2[18];
    (*(v2[21] + 8))(v2[22], v2[20]);

    v7 = sub_2407E1A14;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2407E1A14()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  v6 = *(v0 + 288);
  v23 = *(v0 + 416);
  (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
  *(v0 + 88) = v6;
  *(v0 + 96) = v23;
  *(v0 + 112) = v1;
  type metadata accessor for RemoteSetupService.Failure();
  swift_getWitnessTable();
  swift_allocError();
  *v7 = 13;
  swift_willThrow();

  (*(v5 + 8))(v3, v4);
  v9 = *(v0 + 360);
  v8 = *(v0 + 368);
  v10 = *(v0 + 336);
  v12 = *(v0 + 304);
  v11 = *(v0 + 312);
  v13 = *(v0 + 280);
  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v16 = *(v0 + 216);
  v17 = *(v0 + 224);
  v20 = *(v0 + 208);
  v21 = *(v0 + 184);
  v22 = *(v0 + 176);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2407E1BD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  v4[63] = v1;

  v7 = v4[18];
  if (v1)
  {
    v8 = sub_2407E21F4;
  }

  else
  {
    v4[64] = a1;
    v8 = sub_2407E1D10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2407E1D10()
{
  v1 = v0[61];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[35];
  v10 = v0[32];
  v14 = v0[31];
  v15 = v0[28];
  v16 = v0[27];
  v17 = v0[26];
  v18 = v0[23];
  v19 = v0[22];

  (*(v4 + 8))(v2, v5);

  v11 = v0[1];
  v12 = v0[64];

  return v11(v12);
}

uint64_t sub_2407E1E48()
{
  (*(v0[44] + 8))(v0[46], v0[43]);
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[42];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[35];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[27];
  v10 = v0[28];
  v13 = v0[26];
  v14 = v0[23];
  v15 = v0[22];
  v16 = v0[50];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2407E1F6C()
{
  v1 = v0[51];
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[30];

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);
  v9 = v0[45];
  v8 = v0[46];
  v10 = v0[42];
  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[35];
  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[27];
  v17 = v0[28];
  v20 = v0[26];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[60];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2407E20C0()
{
  v1 = v0[51];
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[44];

  (*(v4 + 8))(v2, v3);
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[42];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[35];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[27];
  v14 = v0[28];
  v17 = v0[26];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[57];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2407E21F4()
{
  v1 = v0[61];
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[44];

  (*(v4 + 8))(v2, v3);
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[42];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[35];
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[27];
  v14 = v0[28];
  v17 = v0[26];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[63];

  v15 = v0[1];

  return v15();
}

void *sub_2407E2328@<X0>(void *a1@<X8>)
{
  v17 = a1;
  v19 = sub_2408D4FD0();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2408D4FC0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2408D4C70();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v16 = [objc_opt_self() sharedInstance];
  v18 = sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  sub_2408D4C60();
  v20 = MEMORY[0x277D84F90];
  sub_2407EEEDC(&unk_28130EF50, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80);
  sub_2408D5080();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v19);
  v9 = sub_2408D4FF0();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v11 = result;
    v12 = v17;
    v17[3] = &type metadata for SymptomReportGenerator;
    v12[4] = &off_285285708;
    result = swift_allocObject();
    *v12 = result;
    v13 = v16;
    result[2] = v11;
    result[3] = v13;
    v14 = MEMORY[0x277D84FA0];
    result[4] = v9;
    result[5] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2407E2630(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2408D3EC0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_2408D3970();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_2408D38D0();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E27B8, v2, 0);
}

uint64_t sub_2407E27B8()
{
  v48 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 16);
  v5 = sub_2408D4B20();
  *(v0 + 120) = __swift_project_value_buffer(v5, qword_27E506C48);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 112);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v12 = 136315138;
    sub_2407EEEDC(&qword_27E506AA0, MEMORY[0x277CED3D8]);
    v13 = sub_2408D5220();
    v45 = v7;
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_2408CC504(v13, v15, &v47);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v45, "Setup preflight check if repair is needed for account: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x245CC9F60](v46, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v18 = *(v0 + 80);
  v19 = [objc_opt_self() sharedInstance];
  sub_2408D37F0();

  v26 = *(v0 + 96);
  v27 = *(v0 + 104);
  v28 = *(v0 + 80);
  v29 = *(v0 + 88);
  v30 = *(v0 + 64);
  v31 = *(v0 + 72);
  v32 = *(v0 + 16);
  sub_2408D38F0();
  (*(v31 + 8))(v28, v30);
  v33 = sub_2408D3880();
  v16(v27, v29);
  if (v33)
  {
    v34 = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
    v36 = *v34;
    v35 = v34[1];
    v37 = v34[2];
    v38 = v34[3];
    v39 = swift_task_alloc();
    *(v0 + 128) = v39;
    *v39 = v0;
    v39[1] = sub_2407E2C50;
    v40 = *(v0 + 56);
    v41 = *(v0 + 16);

    return sub_2408D139C(v40, v41, v36, v35, v37, v38);
  }

  else
  {
    v42 = sub_2408D4B10();
    v43 = sub_2408D4F20();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2407CF000, v42, v43, "Account is non-primary account. Skipping preflight repair.", v44, 2u);
      MEMORY[0x245CC9F60](v44, -1, -1);
    }

    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v22 = *(v0 + 80);
    v23 = *(v0 + 56);

    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_2407E2C50()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_2407E2E30;
  }

  else
  {
    v6 = sub_2407E2D7C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407E2D7C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_2408D3E50();
  (*(v2 + 8))(v1, v3);
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9(v4 & 1);
}

uint64_t sub_2407E2E30()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2407CF000, v3, v4, "Preflight check failed. Defaulting to skipping preflight repair.", v5, 2u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_2407E2F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *v3;
  v4[16] = *v3;
  v6 = *(v5 + 88);
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = sub_2408D5060();
  v4[20] = v9;
  v10 = *(v9 - 8);
  v4[21] = v10;
  v11 = *(v10 + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = sub_2408D3D70();
  v4[23] = v12;
  v13 = *(v12 - 8);
  v4[24] = v13;
  v14 = *(v13 + 64) + 15;
  v4[25] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v16 = sub_2408D3770();
  v4[27] = v16;
  v17 = *(v16 - 8);
  v4[28] = v17;
  v18 = *(v17 + 64) + 15;
  v4[29] = swift_task_alloc();
  v19 = sub_2408D3970();
  v4[30] = v19;
  v20 = *(v19 - 8);
  v4[31] = v20;
  v21 = *(v20 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v23 = sub_2408D3490();
  v4[38] = v23;
  v24 = *(v23 - 8);
  v4[39] = v24;
  v25 = *(v24 + 64) + 15;
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E32A8, v3, 0);
}

uint64_t sub_2407E32A8()
{
  v78 = v0;
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = (v0[15] + *(*v0[15] + 152));
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v6 = sub_2408D4770();
  (*(v2 + 8))(v1, v3);
  if ((v6 & 1) != 0 && (v7 = v0[37], v8 = v0[13], sub_2408D37A0(), v9 = sub_2408D3720(), LODWORD(v8) = (*(*(v9 - 8) + 48))(v7, 1, v9), sub_2407D9440(v7, &qword_27E506A18, &qword_2408D67E8), v8 != 1))
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v23 = v0[36];
    v24 = v0[30];
    v25 = v0[31];
    v26 = v0[13];
    v27 = sub_2408D4B20();
    __swift_project_value_buffer(v27, qword_27E506C48);
    v28 = *(v25 + 16);
    (v28)(v23, v26, v24);
    v29 = sub_2408D4B10();
    v30 = sub_2408D4F20();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[36];
    v34 = v0[30];
    v33 = v0[31];
    if (v31)
    {
      v35 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      v72 = v77[0];
      *v35 = 136315138;
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
      v36 = sub_2408D5220();
      log = v28;
      v38 = v37;
      v71 = v30;
      v39 = *(v33 + 8);
      v39(v32, v34);
      v40 = sub_2408CC504(v36, v38, v77);
      v28 = log;

      *(v35 + 4) = v40;
      _os_log_impl(&dword_2407CF000, v29, v71, "Family info is nonnull for account: %s, proceeding to do easy sign in", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x245CC9F60](v72, -1, -1);
      v41 = v35;
      v42 = v39;
      MEMORY[0x245CC9F60](v41, -1, -1);
    }

    else
    {

      v42 = *(v33 + 8);
      v42(v32, v34);
    }

    v0[41] = v42;
    v43 = v0[35];
    v44 = *(v0[15] + *(*v0[15] + 144));
    sub_2408D37F0();
    v45 = v0[33];
    v46 = v0[30];
    v47 = v0[13];
    (v28)(v0[34], v0[35], v46);
    (v28)(v45, v47, v46);
    v48 = sub_2408D4B10();
    v49 = sub_2408D4F10();
    v50 = os_log_type_enabled(v48, v49);
    v52 = v0[33];
    v51 = v0[34];
    v54 = v0[30];
    v53 = v0[31];
    if (v50)
    {
      loga = v48;
      v55 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77[0] = v76;
      *v55 = 136315394;
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
      v56 = sub_2408D5220();
      v73 = v49;
      v57 = v42;
      v59 = v58;
      v57(v51, v54);
      v60 = sub_2408CC504(v56, v59, v77);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      v61 = sub_2408D5220();
      v63 = v62;
      v57(v52, v54);
      v64 = sub_2408CC504(v61, v63, v77);

      *(v55 + 14) = v64;
      _os_log_impl(&dword_2407CF000, loga, v73, "Attempting challenged dependent auth with source: %s and target: %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v76, -1, -1);
      MEMORY[0x245CC9F60](v55, -1, -1);
    }

    else
    {

      v42(v52, v54);
      v42(v51, v54);
    }

    v65 = swift_task_alloc();
    v0[42] = v65;
    *v65 = v0;
    v65[1] = sub_2407E3A3C;
    v66 = v0[35];
    v67 = v0[14];
    v68 = v0[15];
    v70 = v0[12];
    v69 = v0[13];

    return sub_2407E911C(v70, v66, v69, v67);
  }

  else
  {
    v10 = v0[26];
    v11 = v0[15];
    sub_2408D36D0();
    v12 = *(v11 + *(*v11 + 136));
    v13 = *(v11 + *(*v11 + 144));
    v14 = sub_2408D4150();
    v15 = sub_2408D4140();
    v16 = MEMORY[0x277CED7C0];
    v0[5] = v14;
    v0[6] = v16;
    v0[2] = v15;
    v18 = swift_task_alloc();
    v0[45] = v18;
    *v18 = v0;
    v18[1] = sub_2407E3C9C;
    v19 = v0[29];
    v20 = v0[13];
    v21 = v0[14];

    return sub_2407E52F0(v19, v20, v17, v12, v13, (v0 + 2));
  }
}

uint64_t sub_2407E3A3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  v4[43] = v1;

  v7 = v4[15];
  if (v1)
  {
    v8 = sub_2407E46AC;
  }

  else
  {
    v4[44] = a1;
    v8 = sub_2407E3B78;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2407E3B78()
{
  v1 = *(v0 + 248) + 8;
  (*(v0 + 328))(*(v0 + 280), *(v0 + 240));
  v2 = *(v0 + 320);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 232);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v14 = *(v0 + 176);
  v15 = *(v0 + 152);
  v16 = *(v0 + 352);

  v12 = *(v0 + 8);

  return v12(v16);
}

uint64_t sub_2407E3C9C()
{
  v2 = *v1;
  v3 = (*v1)[45];
  v4 = *v1;
  v2[46] = v0;

  v5 = v2[15];
  sub_2407D9440(v2[26], &qword_27E506D00, &unk_2408D7FE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
  if (v0)
  {
    v6 = sub_2407E4A18;
  }

  else
  {
    v6 = sub_2407E3DFC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407E3DFC()
{
  v94 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 232);
  v3 = IdMSAccount.SRPResults.into()();
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  if (v1)
  {
    *(v0 + 376) = v1;
    v4 = *(v0 + 200);
    v5 = *(v0 + 184);
    *(v0 + 80) = v1;
    v6 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    if (swift_dynamicCast())
    {
      v7 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
      if (v7 == *MEMORY[0x277CED588])
      {
        v8 = v7;

        if (qword_27E506918 != -1)
        {
          swift_once();
        }

        v9 = sub_2408D4B20();
        __swift_project_value_buffer(v9, qword_27E506C48);
        v10 = sub_2408D4B10();
        v11 = sub_2408D4F30();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = *(v0 + 184);
          v13 = *(v0 + 192);
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *v14 = 138412290;
          sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590]);
          swift_allocError();
          (*(v13 + 104))(v16, v8, v12);
          v17 = _swift_stdlib_bridgeErrorToNSError();
          *(v14 + 4) = v17;
          *v15 = v17;
          _os_log_impl(&dword_2407CF000, v10, v11, "Failed to perform magic auth for account with error: %@", v14, 0xCu);
          sub_2407D9440(v15, &qword_27E506AB0, &unk_2408D6830);
          MEMORY[0x245CC9F60](v15, -1, -1);
          MEMORY[0x245CC9F60](v14, -1, -1);
        }

        v19 = *(v0 + 168);
        v18 = *(v0 + 176);
        v20 = *(v0 + 160);
        v21 = *(v0 + 136);
        v22 = *(v0 + 144);
        v23 = *(v0 + 120);

        v24 = *(*v23 + 128);
        swift_beginAccess();
        (*(v19 + 16))(v18, v23 + v24, v20);
        if ((*(v22 + 48))(v18, 1, v21))
        {
          (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
        }

        else
        {
          v60 = *(v0 + 184);
          v61 = *(v0 + 192);
          v63 = *(v0 + 168);
          v62 = *(v0 + 176);
          v64 = *(v0 + 152);
          v65 = *(v0 + 160);
          v66 = *(v0 + 136);
          v67 = *(v0 + 144);
          v92 = *(v0 + 128);
          (*(v67 + 16))(v64, v62, v66);
          (*(v63 + 8))(v62, v65);
          sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590]);
          v68 = swift_allocError();
          (*(v61 + 104))(v69, v8, v60);
          *(v0 + 88) = v68;
          v70 = *(*(v92 + 104) + 8);
          sub_2408D3640();

          (*(v67 + 8))(v64, v66);
        }

        v72 = *(v0 + 184);
        v71 = *(v0 + 192);
        sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590]);
        swift_allocError();
        (*(v71 + 104))(v73, v8, v72);
        swift_willThrow();

        v74 = *(v0 + 320);
        v76 = *(v0 + 288);
        v75 = *(v0 + 296);
        v78 = *(v0 + 272);
        v77 = *(v0 + 280);
        v80 = *(v0 + 256);
        v79 = *(v0 + 264);
        v81 = *(v0 + 232);
        v82 = *(v0 + 200);
        v83 = *(v0 + 208);
        v86 = *(v0 + 176);
        v89 = *(v0 + 152);

        v84 = *(v0 + 8);

        return v84();
      }

      (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    }

    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 248);
    v36 = *(v0 + 256);
    v38 = *(v0 + 240);
    v39 = *(v0 + 104);
    v40 = sub_2408D4B20();
    __swift_project_value_buffer(v40, qword_27E506C48);
    (*(v37 + 16))(v36, v39, v38);
    v41 = v1;
    v42 = sub_2408D4B10();
    v43 = sub_2408D4F30();

    v44 = os_log_type_enabled(v42, v43);
    v46 = *(v0 + 248);
    v45 = *(v0 + 256);
    v47 = *(v0 + 240);
    if (v44)
    {
      v48 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v93 = v91;
      *v48 = 136315394;
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
      v49 = sub_2408D5220();
      v51 = v50;
      (*(v46 + 8))(v45, v47);
      v52 = sub_2408CC504(v49, v51, &v93);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2112;
      v53 = v1;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 14) = v54;
      *v88 = v54;
      _os_log_impl(&dword_2407CF000, v42, v43, "Failed to perform magic auth for account (%s with error: %@", v48, 0x16u);
      sub_2407D9440(v88, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v88, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      MEMORY[0x245CC9F60](v91, -1, -1);
      MEMORY[0x245CC9F60](v48, -1, -1);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
    }

    v55 = swift_task_alloc();
    *(v0 + 384) = v55;
    *v55 = v0;
    v55[1] = sub_2407E47CC;
    v56 = *(v0 + 112);
    v57 = *(v0 + 120);
    v59 = *(v0 + 96);
    v58 = *(v0 + 104);

    return sub_2407E6308(v59, v58, v56);
  }

  else
  {
    v25 = *(v0 + 320);
    v27 = *(v0 + 288);
    v26 = *(v0 + 296);
    v29 = *(v0 + 272);
    v28 = *(v0 + 280);
    v31 = *(v0 + 256);
    v30 = *(v0 + 264);
    v32 = *(v0 + 232);
    v33 = *(v0 + 208);
    v85 = *(v0 + 200);
    v87 = *(v0 + 176);
    v90 = *(v0 + 152);

    v34 = *(v0 + 8);

    return v34(v3);
  }
}

uint64_t sub_2407E46AC()
{
  v1 = *(v0 + 248) + 8;
  (*(v0 + 328))(*(v0 + 280), *(v0 + 240));
  v2 = *(v0 + 320);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 232);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v14 = *(v0 + 176);
  v15 = *(v0 + 152);
  v16 = *(v0 + 344);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2407E47CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  v4[49] = v1;

  v7 = v4[15];
  if (v1)
  {
    v8 = sub_2407E51E4;
  }

  else
  {
    v4[50] = a1;
    v8 = sub_2407E4908;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2407E4908()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 232);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  v13 = *(v0 + 176);
  v14 = *(v0 + 152);
  v15 = *(v0 + 400);

  v11 = *(v0 + 8);

  return v11(v15);
}

uint64_t sub_2407E4A18()
{
  v79 = v0;
  v1 = *(v0 + 368);
  *(v0 + 80) = v1;
  *(v0 + 376) = v1;
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
    if (v5 == *MEMORY[0x277CED588])
    {
      v6 = v5;

      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v7 = sub_2408D4B20();
      __swift_project_value_buffer(v7, qword_27E506C48);
      v8 = sub_2408D4B10();
      v9 = sub_2408D4F30();
      if (os_log_type_enabled(v8, v9))
      {
        v11 = *(v0 + 184);
        v10 = *(v0 + 192);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590]);
        swift_allocError();
        (*(v10 + 104))(v14, v6, v11);
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_2407CF000, v8, v9, "Failed to perform magic auth for account with error: %@", v12, 0xCu);
        sub_2407D9440(v13, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v13, -1, -1);
        MEMORY[0x245CC9F60](v12, -1, -1);
      }

      v17 = *(v0 + 168);
      v16 = *(v0 + 176);
      v18 = *(v0 + 160);
      v19 = *(v0 + 136);
      v20 = *(v0 + 144);
      v21 = *(v0 + 120);

      v22 = *(*v21 + 128);
      swift_beginAccess();
      (*(v17 + 16))(v16, v21 + v22, v18);
      if ((*(v20 + 48))(v16, 1, v19))
      {
        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      }

      else
      {
        v48 = *(v0 + 192);
        v49 = *(v0 + 168);
        v50 = *(v0 + 176);
        v51 = *(v0 + 152);
        v52 = *(v0 + 160);
        v53 = *(v0 + 136);
        v54 = *(v0 + 144);
        v74 = *(v0 + 184);
        v77 = *(v0 + 128);
        (*(v54 + 16))(v51, v50, v53);
        (*(v49 + 8))(v50, v52);
        sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590]);
        v55 = swift_allocError();
        (*(v48 + 104))(v56, v6, v74);
        *(v0 + 88) = v55;
        v57 = *(*(v77 + 104) + 8);
        sub_2408D3640();

        (*(v54 + 8))(v51, v53);
      }

      v59 = *(v0 + 184);
      v58 = *(v0 + 192);
      sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590]);
      swift_allocError();
      (*(v58 + 104))(v60, v6, v59);
      swift_willThrow();

      v61 = *(v0 + 320);
      v63 = *(v0 + 288);
      v62 = *(v0 + 296);
      v65 = *(v0 + 272);
      v64 = *(v0 + 280);
      v67 = *(v0 + 256);
      v66 = *(v0 + 264);
      v68 = *(v0 + 232);
      v69 = *(v0 + 200);
      v70 = *(v0 + 208);
      v72 = *(v0 + 176);
      v75 = *(v0 + 152);

      v71 = *(v0 + 8);

      return v71();
    }

    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 248);
  v23 = *(v0 + 256);
  v25 = *(v0 + 240);
  v26 = *(v0 + 104);
  v27 = sub_2408D4B20();
  __swift_project_value_buffer(v27, qword_27E506C48);
  (*(v24 + 16))(v23, v26, v25);
  v28 = v1;
  v29 = sub_2408D4B10();
  v30 = sub_2408D4F30();

  v31 = os_log_type_enabled(v29, v30);
  v33 = *(v0 + 248);
  v32 = *(v0 + 256);
  v34 = *(v0 + 240);
  if (v31)
  {
    v35 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v78 = v76;
    *v35 = 136315394;
    sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
    v36 = sub_2408D5220();
    v38 = v37;
    (*(v33 + 8))(v32, v34);
    v39 = sub_2408CC504(v36, v38, &v78);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2112;
    v40 = v1;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v41;
    *v73 = v41;
    _os_log_impl(&dword_2407CF000, v29, v30, "Failed to perform magic auth for account (%s with error: %@", v35, 0x16u);
    sub_2407D9440(v73, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v73, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    MEMORY[0x245CC9F60](v76, -1, -1);
    MEMORY[0x245CC9F60](v35, -1, -1);
  }

  else
  {

    (*(v33 + 8))(v32, v34);
  }

  v42 = swift_task_alloc();
  *(v0 + 384) = v42;
  *v42 = v0;
  v42[1] = sub_2407E47CC;
  v43 = *(v0 + 112);
  v44 = *(v0 + 120);
  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  return sub_2407E6308(v46, v45, v43);
}

uint64_t sub_2407E51E4()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 232);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  v13 = *(v0 + 176);
  v14 = *(v0 + 152);
  v15 = *(v0 + 392);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2407E52F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a1;
  v7[9] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v9 = sub_2408D3490();
  v7[15] = v9;
  v10 = *(v9 - 8);
  v7[16] = v10;
  v11 = *(v10 + 64) + 15;
  v7[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v13 = sub_2408D36A0();
  v7[19] = v13;
  v14 = *(v13 - 8);
  v7[20] = v14;
  v15 = *(v14 + 64) + 15;
  v7[21] = swift_task_alloc();
  v16 = sub_2408D3680();
  v7[22] = v16;
  v17 = *(v16 - 8);
  v7[23] = v17;
  v18 = *(v17 + 64) + 15;
  v7[24] = swift_task_alloc();
  v19 = sub_2408D3970();
  v7[25] = v19;
  v20 = *(v19 - 8);
  v7[26] = v20;
  v21 = *(v20 + 64) + 15;
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0]);
  v23 = sub_2408D4E00();
  v7[29] = v23;
  v7[30] = v22;

  return MEMORY[0x2822009F8](sub_2407E559C, v23, v22);
}

uint64_t sub_2407E559C()
{
  v31 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[9];
  v5 = sub_2408D4B20();
  v0[31] = __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v12 = v0[25];
  v11 = v0[26];
  if (v9)
  {
    buf = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *buf = 136315138;
    sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
    v13 = v6;
    v14 = sub_2408D5220();
    v16 = v15;
    v27 = v8;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_2408CC504(v18, v16, &v30);

    *(buf + 4) = v19;
    _os_log_impl(&dword_2407CF000, v7, v27, "Performing magic auth for account: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x245CC9F60](v29, -1, -1);
    MEMORY[0x245CC9F60](buf, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[32] = v17;
  v6(v0[27], v0[9], v0[25]);
  v20 = *(MEMORY[0x277CED3D0] + 4);
  v21 = swift_task_alloc();
  v0[33] = v21;
  *v21 = v0;
  v21[1] = sub_2407E5850;
  v22 = v0[27];
  v23 = v0[24];
  v24 = v0[10];
  v25 = v0[11];

  return MEMORY[0x28213EF40](v23, v24, v25);
}

uint64_t sub_2407E5850()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_2407E5D00;
  }

  else
  {
    v7 = sub_2407E598C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2407E598C()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v7 = v0[20];
  (*(v3 + 16))(v5, v2, v4);
  (*(v7 + 104))(v5, *MEMORY[0x277CED388], v6);
  sub_2408D3790();
  (*(v3 + 8))(v2, v4);
  v8 = v0[18];
  sub_2408D36D0();
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_2407E5AC0;
  v10 = v0[27];
  v11 = v0[18];
  v12 = v0[13];
  v13 = v0[8];

  return sub_2407E8264(v13, v10, v11);
}

uint64_t sub_2407E5AC0()
{
  v2 = *v1;
  v3 = (*v1)[35];
  v4 = *v1;
  (*v1)[36] = v0;

  sub_2407D9440(v2[18], &qword_27E506D00, &unk_2408D7FE0);
  v5 = v2[30];
  v6 = v2[29];
  if (v0)
  {
    v7 = sub_2407E6230;
  }

  else
  {
    v7 = sub_2407E5C24;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2407E5C24()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 112);
  v7 = *(v0 + 208) + 8;
  (*(v0 + 256))(*(v0 + 216), *(v0 + 200));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2407E5D00()
{
  v60 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v6 = sub_2408D4770();
  (*(v2 + 8))(v1, v3);
  if ((v6 & 1) == 0)
  {
    v15 = v0[34];
    v16 = v0[31];
    v17 = v15;
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F30();

    if (os_log_type_enabled(v13, v14))
    {
LABEL_6:
      v18 = v0[34];
      v19 = v0[27];
      v20 = v0[25];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v59 = v23;
      *v21 = 136315394;
      swift_beginAccess();
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
      v24 = sub_2408D5220();
      v26 = sub_2408CC504(v24, v25, &v59);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2112;
      v27 = v18;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v28;
      *v22 = v28;
      _os_log_impl(&dword_2407CF000, v13, v14, "Failed to fetch companion key envelope for %s: %@", v21, 0x16u);
      sub_2407D9440(v22, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x245CC9F60](v23, -1, -1);
      MEMORY[0x245CC9F60](v21, -1, -1);
    }

LABEL_7:

    v29 = v0[34];
    v30 = v0[32];
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];
    swift_willThrow();
    v30(v31, v33);
    v34 = v0[34];
    v36 = v0[27];
    v35 = v0[28];
    v37 = v0[24];
    v38 = v0[21];
    v40 = v0[17];
    v39 = v0[18];
    v41 = v0[14];

    v42 = v0[1];

    return v42();
  }

  v7 = v0[27];
  v8 = v0[14];
  sub_2408D37A0();
  v9 = sub_2408D3720();
  LODWORD(v7) = (*(*(v9 - 8) + 48))(v8, 1, v9);
  sub_2407D9440(v8, &qword_27E506A18, &qword_2408D67E8);
  if (v7 == 1)
  {
    v10 = v0[34];
    v11 = v0[31];
    v12 = v10;
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F30();

    if (os_log_type_enabled(v13, v14))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v44 = v0[31];
  v45 = sub_2408D4B10();
  v46 = sub_2408D4F10();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2407CF000, v45, v46, "Family info is nonnull, attempting interactive auth on target device", v47, 2u);
    MEMORY[0x245CC9F60](v47, -1, -1);
  }

  v48 = v0[34];
  v49 = v0[27];
  v51 = v0[20];
  v50 = v0[21];
  v52 = v0[19];

  (*(v51 + 104))(v50, *MEMORY[0x277CED3A0], v52);
  sub_2408D3790();

  v53 = v0[18];
  sub_2408D36D0();
  v54 = swift_task_alloc();
  v0[35] = v54;
  *v54 = v0;
  v54[1] = sub_2407E5AC0;
  v55 = v0[27];
  v56 = v0[18];
  v57 = v0[13];
  v58 = v0[8];

  return sub_2407E8264(v58, v55, v56);
}

uint64_t sub_2407E6230()
{
  v1 = *(v0 + 208) + 8;
  (*(v0 + 256))(*(v0 + 216), *(v0 + 200));
  v2 = *(v0 + 288);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 112);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2407E6308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_2408D3770();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = sub_2408D36A0();
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v11 = *(v10 + 64) + 15;
  v4[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v13 = sub_2408D36F0();
  v4[19] = v13;
  v14 = *(v13 - 8);
  v4[20] = v14;
  v15 = *(v14 + 64) + 15;
  v4[21] = swift_task_alloc();
  v16 = sub_2408D38D0();
  v4[22] = v16;
  v17 = *(v16 - 8);
  v4[23] = v17;
  v18 = *(v17 + 64) + 15;
  v4[24] = swift_task_alloc();
  v19 = sub_2408D3970();
  v4[25] = v19;
  v20 = *(v19 - 8);
  v4[26] = v20;
  v21 = *(v20 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E65E0, v3, 0);
}

uint64_t sub_2407E65E0()
{
  v30 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[7];
  v5 = sub_2408D4B20();
  v0[29] = __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v0[30] = v6;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[26];
  if (v9)
  {
    v13 = v0[23];
    v14 = v0[24];
    v15 = v0[22];
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315138;
    v27 = v11;
    sub_2408D38F0();
    sub_2407EEEDC(&qword_27E506AA0, MEMORY[0x277CED3D8]);
    v17 = sub_2408D5220();
    v26 = v8;
    v19 = v18;
    (*(v13 + 8))(v14, v15);
    v20 = *(v12 + 8);
    v20(v10, v27);
    v21 = sub_2408CC504(v17, v19, &v29);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v26, "Performing proxied auth for account %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x245CC9F60](v28, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[32] = v20;
  v22 = v0[8];
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0]);
  v24 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_2407E68C4, v24, v23);
}

uint64_t sub_2407E68C4()
{
  v1 = v0[21];
  v2 = v0[8];
  sub_2408D3D30();
  v0[33] = 0;
  v3 = v0[9];

  return MEMORY[0x2822009F8](sub_2407E6954, v3, 0);
}

uint64_t sub_2407E6954()
{
  v1 = *(v0 + 168);
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277CED870] + 4);
  v7 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v4 = swift_task_alloc();
  *(v0 + 280) = v4;
  *v4 = v0;
  v4[1] = sub_2407E6A34;
  v5 = *(v0 + 48);

  return v7(sub_2407EECEC, v2);
}

uint64_t sub_2407E6A34()
{
  v2 = *(*v1 + 280);
  v3 = *v1;
  v3[36] = v0;

  if (v0)
  {
    v4 = v3[9];

    return MEMORY[0x2822009F8](sub_2407E771C, v4, 0);
  }

  else
  {
    v5 = v3[34];
    v7 = v3[9];
    v6 = v3[10];

    v8 = *(*v7 + 120);
    v9 = *(v6 + 96);
    v3[37] = v9;
    v10 = *(v9 + 32);
    v11 = *(v6 + 80);
    v3[38] = v11;
    v16 = (v10 + *v10);
    v12 = v10[1];
    v13 = swift_task_alloc();
    v3[39] = v13;
    *v13 = v3;
    v13[1] = sub_2407E6C78;
    v14 = v3[6];

    return v16(v14, v11, v9);
  }
}

uint64_t sub_2407E6C78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v7 = *(v3 + 72);
  if (v1)
  {
    v8 = sub_2407E780C;
  }

  else
  {
    v8 = sub_2407E6DAC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2407E6DAC()
{
  v65 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 248);
  v4 = *(v0 + 144);
  (*(v0 + 240))(*(v0 + 216), *(v0 + 56), *(v0 + 200));
  sub_2408CBA10(v4);
  sub_240876428(v4);
  sub_2407D9440(v4, &qword_27E507F00, &qword_2408D6D50);
  v5 = sub_2408CBDF8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(v0 + 232);

    v10 = sub_2408D4B10();
    v11 = sub_2408D4F50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v64[0] = v13;
      *v12 = 136642819;
      *(v12 + 4) = sub_2408CC504(v7, v8, v64);
      _os_log_impl(&dword_2407CF000, v10, v11, "Successfully obtained passwordless token for proxied auth: %{sensitive}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x245CC9F60](v13, -1, -1);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v14 = *(v0 + 320);
    v15 = *(v0 + 136);
    v16 = sub_2408CBE04();
    *v15 = v7;
    v15[1] = v8;
    v15[2] = v16;
    v15[3] = v17;
    v18 = MEMORY[0x277CED398];
LABEL_9:
    v30 = *(v0 + 216);
    v31 = *(v0 + 88);
    (*(*(v0 + 128) + 104))(*(v0 + 136), *v18, *(v0 + 120));
    sub_2408D3790();
    sub_2408D36D0();
    v32 = swift_task_alloc();
    *(v0 + 336) = v32;
    *v32 = v0;
    v32[1] = sub_2407E729C;
    v33 = *(v0 + 216);
    v34 = *(v0 + 112);
    v35 = *(v0 + 88);
    v36 = *(v0 + 64);

    return sub_2407E8264(v34, v33, v35);
  }

  v19 = *(v0 + 320);
  v20 = sub_2408CBDEC();
  v22 = *(v0 + 232);
  if (v21)
  {
    v23 = v20;
    v24 = v21;

    v25 = sub_2408D4B10();
    v26 = sub_2408D4F50();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v64[0] = v28;
      *v27 = 136642819;
      *(v27 + 4) = sub_2408CC504(v23, v24, v64);
      _os_log_impl(&dword_2407CF000, v25, v26, "Successfully obtained raw password for proxied auth: %{sensitive}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x245CC9F60](v28, -1, -1);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    v29 = *(v0 + 136);
    *v29 = v23;
    v29[1] = v24;
    v18 = MEMORY[0x277CED380];
    goto LABEL_9;
  }

  v38 = sub_2408D4B10();
  v39 = sub_2408D4F30();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2407CF000, v38, v39, "Missing raw password from proxied auth results", v40, 2u);
    MEMORY[0x245CC9F60](v40, -1, -1);
  }

  v41 = *(v0 + 320);
  v42 = *(v0 + 296);
  v43 = *(v0 + 304);
  v45 = *(v0 + 208);
  v44 = *(v0 + 216);
  v46 = *(v0 + 200);
  v47 = *(v0 + 160);
  v62 = *(v0 + 256);
  v63 = *(v0 + 168);
  v61 = *(v0 + 152);
  v48 = *(v0 + 80);

  v49 = *(v48 + 88);
  v50 = *(v48 + 104);
  *(v0 + 16) = v43;
  *(v0 + 24) = v49;
  *(v0 + 32) = v42;
  *(v0 + 40) = v50;
  type metadata accessor for RemoteSetupService.Failure();
  swift_getWitnessTable();
  swift_allocError();
  *v51 = 0;
  swift_willThrow();

  v62(v44, v46);
  (*(v47 + 8))(v63, v61);
  v53 = *(v0 + 216);
  v52 = *(v0 + 224);
  v54 = *(v0 + 192);
  v55 = *(v0 + 168);
  v57 = *(v0 + 136);
  v56 = *(v0 + 144);
  v58 = *(v0 + 112);
  v59 = *(v0 + 88);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_2407E729C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 72);
  sub_2407D9440(v5, &qword_27E506D00, &unk_2408D7FE0);
  if (v0)
  {
    v7 = sub_2407E78EC;
  }

  else
  {
    v7 = sub_2407E73F4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2407E73F4()
{
  v1 = v0[43];
  v2 = v0[14];
  v3 = IdMSAccount.SRPResults.into()();
  v4 = v0[40];
  v5 = v0[32];
  if (v1)
  {
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[25];
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v5(v6, v8);
    (*(v10 + 8))(v9, v11);
    v13 = v0[27];
    v12 = v0[28];
    v14 = v0[24];
    v15 = v0[21];
    v17 = v0[17];
    v16 = v0[18];
    v18 = v0[14];
    v19 = v0[11];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[27];
    v24 = v0[25];
    v23 = v0[26];
    v31 = v0[28];
    v32 = v0[24];
    v25 = v0[20];
    v26 = v0[21];
    v30 = v0[19];
    v33 = v0[18];
    v34 = v0[17];
    v35 = v0[11];
    v27 = v3;
    (*(v0[13] + 8))(v0[14], v0[12]);
    v28 = *(v27 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport);
    *(v27 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = v4;

    v5(v22, v24);
    (*(v25 + 8))(v26, v30);

    v29 = v0[1];

    return v29(v27);
  }
}

uint64_t sub_2407E7654()
{
  v1 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[14];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2407E771C()
{
  v1 = v0[34];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];

  (*(v3 + 8))(v2, v4);
  v5 = v0[36];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];
  v9 = v0[21];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[14];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2407E780C()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[41];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[14];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2407E78EC()
{
  v1 = v0[40];
  v2 = v0[32];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];

  v2(v3, v5);
  (*(v7 + 8))(v6, v8);
  v9 = v0[43];
  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[24];
  v13 = v0[21];
  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[14];
  v17 = v0[11];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2407E7A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a2;
  v23 = sub_2408D36F0();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = sub_2408D4570();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_2408D3970();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, v22, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_2408D4640();
  (*(v7 + 104))(v10, *MEMORY[0x277CEDC48], v6);
  sub_2408D45C0();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v23;
  (*(v4 + 16))(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v23);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v19, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  *(v20 + ((v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  return sub_2408D4590();
}

void sub_2407E7CE8(void *a1)
{
  v2 = sub_2408D36C0();
  [a1 setProxiedDevice_];

  v3 = objc_allocWithZone(sub_2408D3F20());

  v4 = sub_2408D3EF0();
  [a1 setAnisetteDataProvider_];
}

uint64_t sub_2407E7DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_2408D4220();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E7E68, 0, 0);
}

uint64_t sub_2407E7E68()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    (*(v0[9] + 16))(v0[10], v0[6], v0[8]);
    v3 = *(MEMORY[0x277CED570] + 4);
    v14 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    v5 = sub_2407EEEDC(&qword_27E506D28, MEMORY[0x277CED828]);
    *v4 = v0;
    v4[1] = sub_2407E8078;
    v6 = v0[10];
    v7 = v0[8];
    v8 = v0[5];

    return v14(v8, v6, v7, v5);
  }

  else
  {
    v10 = sub_2408D3D70();
    sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277CED578], v10);
    swift_willThrow();
    v12 = v0[10];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2407E8078()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2407E81F8;
  }

  else
  {
    v3 = sub_2407E818C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2407E818C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2407E81F8()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2407E8264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D3980();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CF0, &qword_2408D6C68);
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CF8, &unk_2408D6C70);
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = sub_2408D4530();
  v4[14] = v13;
  v14 = *(v13 - 8);
  v4[15] = v14;
  v15 = *(v14 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v17 = sub_2408D3970();
  v4[21] = v17;
  v18 = *(v17 - 8);
  v4[22] = v18;
  v19 = *(v18 + 64) + 15;
  v4[23] = swift_task_alloc();
  v20 = sub_2408D4500();
  v4[24] = v20;
  v21 = *(v20 - 8);
  v4[25] = v21;
  v22 = *(v21 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0]);
  v24 = sub_2408D4E00();
  v4[30] = v24;
  v4[31] = v23;

  return MEMORY[0x2822009F8](sub_2407E85B4, v24, v23);
}

uint64_t sub_2407E85B4()
{
  v38 = v0;
  v1 = v0[29];
  v2 = v0[20];
  v3 = v0[4];
  (*(v0[22] + 16))(v0[23], v0[3], v0[21]);
  sub_2407EEE04(v3, v2, &qword_27E506D00, &unk_2408D7FE0);
  sub_2408D44E0();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[24];
  v7 = v0[25];
  v8 = sub_2408D4B20();
  v0[32] = __swift_project_value_buffer(v8, qword_27E506C48);
  v9 = *(v7 + 16);
  v9(v4, v5, v6);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F20();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[28];
  if (v12)
  {
    v14 = v0[27];
    v34 = v11;
    v16 = v0[24];
    v15 = v0[25];
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v17 = 136315138;
    v9(v14, v13, v16);
    v18 = sub_2408D4D40();
    v35 = v9;
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v13, v16);
    v22 = sub_2408CC504(v18, v20, &v37);
    v9 = v35;

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2407CF000, v10, v34, "Sending authenticate command: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x245CC9F60](v33, -1, -1);
    MEMORY[0x245CC9F60](v17, -1, -1);
  }

  else
  {
    v23 = v0[24];
    v24 = v0[25];

    v21 = *(v24 + 8);
    v21(v13, v23);
  }

  v0[33] = v21;
  v9(v0[26], v0[29], v0[24]);
  v25 = *(MEMORY[0x277CED570] + 4);
  v36 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v26 = swift_task_alloc();
  v0[34] = v26;
  v27 = sub_2407EEEDC(&qword_27E506D10, MEMORY[0x277CEDB20]);
  *v26 = v0;
  v26[1] = sub_2407E88E8;
  v28 = v0[26];
  v29 = v0[24];
  v30 = v0[18];
  v31 = v0[5];

  return v36(v30, v28, v29, v27);
}

uint64_t sub_2407E88E8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = sub_2407E8F00;
  }

  else
  {
    v7 = sub_2407E8A24;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2407E8A24()
{
  v70 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  (*(v5 + 32))(v2, *(v0 + 144), v4);
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 136);
  if (v9)
  {
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v13 = *(v0 + 112);
    v14 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v69 = v67;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2408D4D40();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v13);
    v19 = sub_2408CC504(v15, v17, &v69);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2407CF000, v7, v8, "Sent authentication command and received response: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x245CC9F60](v67, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  else
  {
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v22 = *(v0 + 152);
  v24 = *(v0 + 96);
  v23 = *(v0 + 104);
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = *(v0 + 72);
  sub_2408D4510();
  sub_2408D4AD0();
  (*(v24 + 8))(v23, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *(v0 + 152);
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    v31 = *(v0 + 64);
    v32 = *(v0 + 48);
    v33 = *(*(v0 + 56) + 32);
    v33(v31, *(v0 + 80), v32);
    sub_2407EEEDC(&qword_27E506D18, MEMORY[0x277CED418]);
    swift_willThrowTypedImpl();
    swift_allocError();
    v33(v34, v31, v32);
    v18(v28, v29);
    v35 = *(v0 + 224);
    v37 = *(v0 + 208);
    v36 = *(v0 + 216);
    v38 = *(v0 + 184);
    v40 = *(v0 + 152);
    v39 = *(v0 + 160);
    v41 = *(v0 + 136);
    v42 = *(v0 + 144);
    v61 = *(v0 + 128);
    v63 = *(v0 + 104);
    v43 = *(v0 + 80);
    v66 = *(v0 + 64);
    v44 = (*(v0 + 200) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v0 + 264))(*(v0 + 232), *(v0 + 192));
  }

  else
  {
    v46 = *(v0 + 264);
    v48 = *(v0 + 224);
    v47 = *(v0 + 232);
    v57 = *(v0 + 216);
    v58 = *(v0 + 208);
    v50 = *(v0 + 192);
    v49 = *(v0 + 200);
    v59 = *(v0 + 184);
    v60 = *(v0 + 160);
    v62 = *(v0 + 144);
    v64 = *(v0 + 136);
    v65 = *(v0 + 128);
    v51 = *(v0 + 104);
    v52 = *(v0 + 80);
    v68 = *(v0 + 64);
    v53 = *(v0 + 120) + 8;
    v54 = *(v0 + 16);
    v18(*(v0 + 152), *(v0 + 112));
    v46(v47, v50);
    v55 = sub_2408D3770();
    (*(*(v55 - 8) + 32))(v54, v52, v55);
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_2407E8F00()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 280);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to send authenticate command: %@", v7, 0xCu);
    sub_2407D9440(v8, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v11 = *(v0 + 280);

  swift_willThrow();
  v27 = *(v0 + 280);
  v12 = *(v0 + 224);
  v14 = *(v0 + 208);
  v13 = *(v0 + 216);
  v15 = *(v0 + 184);
  v17 = *(v0 + 152);
  v16 = *(v0 + 160);
  v18 = *(v0 + 136);
  v19 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);
  v20 = *(v0 + 80);
  v26 = *(v0 + 64);
  v21 = (*(v0 + 200) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 264))(*(v0 + 232), *(v0 + 192));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2407E911C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v7 = sub_2408D3770();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v9 = *(v8 + 64) + 15;
  v5[16] = swift_task_alloc();
  v10 = sub_2408D36A0();
  v5[17] = v10;
  v11 = *(v10 - 8);
  v5[18] = v11;
  v12 = *(v11 + 64) + 15;
  v5[19] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v14 = sub_2408D36F0();
  v5[21] = v14;
  v15 = *(v14 - 8);
  v5[22] = v15;
  v16 = *(v15 + 64) + 15;
  v5[23] = swift_task_alloc();
  v17 = sub_2408D3970();
  v5[24] = v17;
  v18 = *(v17 - 8);
  v5[25] = v18;
  v19 = *(v18 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v20 = sub_2408D38D0();
  v5[30] = v20;
  v21 = *(v20 - 8);
  v5[31] = v21;
  v22 = *(v21 + 64) + 15;
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407E9410, v4, 0);
}

uint64_t sub_2407E9410()
{
  v63 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[9];
  sub_2408D38F0();
  LOBYTE(v4) = sub_2408D3870();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[24];
    v8 = v0[9];
    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E506C48);
    (*(v6 + 16))(v5, v8, v7);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F10();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[24];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v62 = v17;
      *v16 = 136315138;
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
      v18 = sub_2408D5220();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_2408CC504(v18, v20, &v62);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2407CF000, v10, v11, "Target account %s represents an unknown teen account not in a family yet. Performing challenged independent auth", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245CC9F60](v17, -1, -1);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v47 = swift_task_alloc();
    v0[58] = v47;
    *v47 = v0;
    v47[1] = sub_2407EACC0;
    v48 = v0[10];
    v49 = v0[11];
    v50 = v0[9];
    v51 = v0[7];

    return sub_2407EC1E4(v51, v50, v48);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v22 = v0[28];
    v23 = v0[29];
    v24 = v0[24];
    v25 = v0[25];
    v27 = v0[8];
    v26 = v0[9];
    v28 = sub_2408D4B20();
    v0[33] = __swift_project_value_buffer(v28, qword_27E506C48);
    v29 = *(v25 + 16);
    v0[34] = v29;
    v0[35] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v23, v27, v24);
    v29(v22, v26, v24);
    v30 = sub_2408D4B10();
    v31 = sub_2408D4F50();
    v32 = os_log_type_enabled(v30, v31);
    v34 = v0[28];
    v33 = v0[29];
    v36 = v0[24];
    v35 = v0[25];
    if (v32)
    {
      v59 = v31;
      v37 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v62 = v60;
      *v37 = 136315394;
      sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
      v38 = sub_2408D5220();
      v40 = v39;
      log = v30;
      v41 = *(v35 + 8);
      v41(v33, v36);
      v42 = sub_2408CC504(v38, v40, &v62);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v43 = sub_2408D5220();
      v45 = v44;
      v41(v34, v36);
      v46 = sub_2408CC504(v43, v45, &v62);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_2407CF000, log, v59, "Performing challenged dependent proxied auth with source: %s and target: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v60, -1, -1);
      MEMORY[0x245CC9F60](v37, -1, -1);
    }

    else
    {

      v41 = *(v35 + 8);
      v41(v34, v36);
      v41(v33, v36);
    }

    v0[36] = v41;
    v53 = v0[8];
    v54 = swift_task_alloc();
    v0[37] = v54;
    *(v54 + 16) = v53;
    v55 = *(MEMORY[0x277CED870] + 4);
    v61 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v56 = swift_task_alloc();
    v0[38] = v56;
    *v56 = v0;
    v56[1] = sub_2407E99E8;
    v57 = v0[7];

    return v61(sub_2407EECC0, v54);
  }
}

uint64_t sub_2407E99E8()
{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](sub_2407EAF0C, v4, 0);
  }

  else
  {
    v5 = v3[37];
    v6 = v3[11];
    v7 = v3[12];

    v3[40] = *(*v6 + 120);
    v8 = *(v7 + 96);
    v3[41] = v8;
    v9 = *(v8 + 32);
    v3[42] = v9;
    v3[43] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x66C5000000000000;
    v10 = *(v7 + 80);
    v3[44] = v10;
    v15 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    v3[45] = v12;
    *v12 = v3;
    v12[1] = sub_2407E9C30;
    v13 = v3[7];

    return v15(v13, v10, v8);
  }
}

uint64_t sub_2407E9C30(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  *(v4 + 368) = a1;
  *(v4 + 376) = v1;

  v7 = *(v3 + 88);
  if (v1)
  {
    v8 = sub_2407EB000;
  }

  else
  {
    v8 = sub_2407E9D64;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2407E9D64()
{
  v17 = v0;
  v1 = v0[46];
  v2 = v0[33];

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[46];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[6] = v5;
    type metadata accessor for AuthenticationReport(0);

    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Finished authenticating parent: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  else
  {
    v11 = v0[46];
  }

  v0[48] = v0[47];
  v12 = v0[10];
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0]);
  v14 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_2407E9F58, v14, v13);
}

uint64_t sub_2407E9F58()
{
  v1 = v0[48];
  v2 = v0[23];
  v3 = v0[10];
  sub_2408D3D30();
  v0[49] = v1;
  v4 = v0[11];
  if (v1)
  {
    v5 = sub_2407EB1C4;
  }

  else
  {
    v5 = sub_2407E9FE8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2407E9FE8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 400) = v3;
  *(v3 + 16) = *(v0 + 72);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x277CED870] + 4);
  v8 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v5 = swift_task_alloc();
  *(v0 + 408) = v5;
  *v5 = v0;
  v5[1] = sub_2407EA0D0;
  v6 = *(v0 + 56);

  return v8(sub_2407EECC8, v3);
}

uint64_t sub_2407EA0D0()
{
  v2 = *(*v1 + 408);
  v3 = *v1;
  v3[52] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](sub_2407EB2B0, v4, 0);
  }

  else
  {
    v5 = v3[50];
    v6 = v3[42];
    v7 = v3[43];
    v8 = v3[40];
    v9 = v3[11];

    v17 = (v6 + *v6);
    v10 = v6[1];
    v11 = swift_task_alloc();
    v3[53] = v11;
    *v11 = v3;
    v11[1] = sub_2407EA2C8;
    v13 = v3[43];
    v12 = v3[44];
    v14 = v3[41];
    v15 = v3[7];

    return v17(v15, v12, v14);
  }
}

uint64_t sub_2407EA2C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  *(v4 + 432) = a1;
  *(v4 + 440) = v1;

  v7 = *(v3 + 88);
  if (v1)
  {
    v8 = sub_2407EB3C4;
  }

  else
  {
    v8 = sub_2407EA3FC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2407EA3FC()
{
  v67 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 280);
  v4 = *(v0 + 160);
  (*(v0 + 272))(*(v0 + 216), *(v0 + 72), *(v0 + 192));
  sub_2408CBA10(v4);
  sub_240876428(v4);
  sub_2407D9440(v4, &qword_27E507F00, &qword_2408D6D50);
  v5 = sub_2408CBDF8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(v0 + 264);

    v10 = sub_2408D4B10();
    v11 = sub_2408D4F50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v66[0] = v13;
      *v12 = 136642819;
      *(v12 + 4) = sub_2408CC504(v7, v8, v66);
      _os_log_impl(&dword_2407CF000, v10, v11, "Successfully obtained passwordless token for proxied auth: %{sensitive}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x245CC9F60](v13, -1, -1);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v14 = *(v0 + 432);
    v15 = *(v0 + 152);
    v16 = sub_2408CBE04();
    *v15 = v7;
    v15[1] = v8;
    v15[2] = v16;
    v15[3] = v17;
    v18 = MEMORY[0x277CED398];
LABEL_9:
    v30 = *(v0 + 216);
    v31 = *(v0 + 104);
    (*(*(v0 + 144) + 104))(*(v0 + 152), *v18, *(v0 + 136));
    sub_2408D3790();
    sub_2408D36D0();
    v32 = swift_task_alloc();
    *(v0 + 448) = v32;
    *v32 = v0;
    v32[1] = sub_2407EA908;
    v33 = *(v0 + 216);
    v34 = *(v0 + 128);
    v35 = *(v0 + 104);
    v36 = *(v0 + 80);

    return sub_2407E8264(v34, v33, v35);
  }

  v19 = *(v0 + 432);
  v20 = sub_2408CBDEC();
  v22 = *(v0 + 264);
  if (v21)
  {
    v23 = v20;
    v24 = v21;

    v25 = sub_2408D4B10();
    v26 = sub_2408D4F50();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v66[0] = v28;
      *v27 = 136642819;
      *(v27 + 4) = sub_2408CC504(v23, v24, v66);
      _os_log_impl(&dword_2407CF000, v25, v26, "Successfully obtained raw password for proxied auth: %{sensitive}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x245CC9F60](v28, -1, -1);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    v29 = *(v0 + 152);
    *v29 = v23;
    v29[1] = v24;
    v18 = MEMORY[0x277CED380];
    goto LABEL_9;
  }

  v38 = sub_2408D4B10();
  v39 = sub_2408D4F30();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2407CF000, v38, v39, "Missing raw password from proxied auth results", v40, 2u);
    MEMORY[0x245CC9F60](v40, -1, -1);
  }

  v41 = *(v0 + 432);
  v42 = *(v0 + 352);
  v43 = *(v0 + 328);
  v44 = *(v0 + 216);
  v45 = *(v0 + 192);
  v46 = *(v0 + 200);
  v47 = *(v0 + 176);
  v64 = *(v0 + 288);
  v65 = *(v0 + 184);
  v63 = *(v0 + 168);
  v48 = *(v0 + 96);

  v49 = *(v48 + 88);
  v50 = *(v48 + 104);
  *(v0 + 16) = v42;
  *(v0 + 24) = v49;
  *(v0 + 32) = v43;
  *(v0 + 40) = v50;
  type metadata accessor for RemoteSetupService.Failure();
  swift_getWitnessTable();
  swift_allocError();
  *v51 = 0;
  swift_willThrow();

  v64(v44, v45);
  (*(v47 + 8))(v65, v63);
  v52 = *(v0 + 256);
  v54 = *(v0 + 224);
  v53 = *(v0 + 232);
  v56 = *(v0 + 208);
  v55 = *(v0 + 216);
  v57 = *(v0 + 184);
  v59 = *(v0 + 152);
  v58 = *(v0 + 160);
  v60 = *(v0 + 128);
  v61 = *(v0 + 104);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_2407EA908()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 88);
  sub_2407D9440(v5, &qword_27E506D00, &unk_2408D7FE0);
  if (v0)
  {
    v7 = sub_2407EB4C8;
  }

  else
  {
    v7 = sub_2407EAA60;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2407EAA60()
{
  v1 = v0[57];
  v2 = v0[16];
  v34 = IdMSAccount.SRPResults.into()();
  v3 = v0[54];
  v4 = v0[36];
  v5 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  (*(v0[15] + 8))(v0[16], v0[14]);
  if (v1)
  {

    v4(v5, v7);
    (*(v9 + 8))(v8, v10);
    v11 = v0[32];
    v12 = v0[28];
    v13 = v0[29];
    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[23];
    v18 = v0[19];
    v17 = v0[20];
    v19 = v0[16];
    v35 = v0[13];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = *(v34 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport);
    *(v34 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = v3;

    v4(v5, v7);
    (*(v9 + 8))(v8, v10);
    v23 = v0[32];
    v25 = v0[28];
    v24 = v0[29];
    v27 = v0[26];
    v26 = v0[27];
    v28 = v0[23];
    v30 = v0[19];
    v29 = v0[20];
    v31 = v0[16];
    v32 = v0[13];

    v33 = v0[1];

    return v33(v34);
  }
}

uint64_t sub_2407EACC0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;

  v5 = v2[32];
  v6 = v2[29];
  v7 = v2[28];
  v8 = v2[27];
  v9 = v2[26];
  v10 = v2[23];
  v11 = v2[20];
  v12 = v2[19];
  v18 = v2[16];
  v13 = v2[13];

  v15 = *(v4 + 8);
  if (!v19)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_2407EAF0C()
{
  v1 = v0[37];

  v14 = v0[39];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[23];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[16];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2407EB000()
{
  v1 = v0[47];
  v2 = v0[33];
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[47];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to authenticate parent, things are about to go very badly: %@", v8, 0xCu);
    sub_2407D9440(v9, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {
  }

  v0[48] = 0;
  v12 = v0[10];
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0]);
  v14 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_2407E9F58, v14, v13);
}

uint64_t sub_2407EB1C4()
{
  v13 = v0[49];
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[16];
  v10 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2407EB2B0()
{
  v1 = v0[50];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  (*(v3 + 8))(v2, v4);
  v17 = v0[52];
  v5 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[23];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[16];
  v14 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2407EB3C4()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v13 = v0[55];
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[16];
  v10 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2407EB4C8()
{
  v1 = v0[54];
  v2 = v0[36];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];

  v2(v3, v4);
  (*(v7 + 8))(v6, v8);
  v21 = v0[57];
  v9 = v0[32];
  v11 = v0[28];
  v10 = v0[29];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[23];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[16];
  v18 = v0[13];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2407EB600(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D4570();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_2408D3970();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a2, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  sub_2408D4640();
  (*(v4 + 104))(v7, *MEMORY[0x277CEDC40], v3);
  return sub_2408D45C0();
}

uint64_t sub_2407EB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v42 = a1;
  v37 = a3;
  v38 = a4;
  v34 = a2;
  v39 = sub_2408D36F0();
  v44 = *(v39 - 8);
  v40 = *(v44 + 64);
  MEMORY[0x28223BE20](v39);
  v45 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2408D3970();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v43 = &v34 - v11;
  v12 = sub_2408D4570();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v34 - v19;
  v21 = *(v8 + 16);
  v21(&v34 - v19, a2, v7);
  (*(v8 + 56))(v20, 0, 1, v7);
  sub_2408D4640();
  (*(v13 + 104))(v16, *MEMORY[0x277CEDC48], v12);
  sub_2408D45C0();
  v35 = swift_allocObject();
  swift_weakInit();
  v22 = v7;
  v21(v43, v38, v7);
  v23 = v36;
  v21(v36, v34, v22);
  v24 = v44;
  v25 = v39;
  (*(v44 + 16))(v45, v41, v39);
  v26 = *(v8 + 80);
  v27 = (v26 + 16) & ~v26;
  v28 = (v9 + v26 + v27) & ~v26;
  v29 = (v9 + *(v24 + 80) + v28) & ~*(v24 + 80);
  v30 = (v40 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = *(v8 + 32);
  v32(v31 + v27, v43, v22);
  v32(v31 + v28, v23, v22);
  (*(v44 + 32))(v31 + v29, v45, v25);
  *(v31 + v30) = v35;
  return sub_2408D4590();
}

void sub_2407EBBAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a4;
  v5 = sub_2408D38D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  sub_2408D38F0();
  sub_2408D38B0();
  v13 = *(v6 + 8);
  v13(v12, v5);
  v14 = sub_2408D4D00();

  [a1 setAltDSID_];

  [a1 setAppProvidedContext_];
  sub_2408D38F0();
  sub_2408D38C0();
  v16 = v15;
  v13(v10, v5);
  if (v16)
  {
    v17 = sub_2408D4D00();
  }

  else
  {
    v17 = 0;
  }

  [a1 setProxiedAppleID_];

  v18 = sub_2408D36C0();
  [a1 setProxiedDevice_];

  v19 = objc_allocWithZone(sub_2408D3F20());

  v20 = sub_2408D3EF0();
  [a1 setAnisetteDataProvider_];
}

uint64_t sub_2407EBDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_2408D4220();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407EBEC0, 0, 0);
}

uint64_t sub_2407EBEC0()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    (*(v0[9] + 16))(v0[10], v0[6], v0[8]);
    v3 = *(MEMORY[0x277CED570] + 4);
    v14 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    v5 = sub_2407EEEDC(&qword_27E506D28, MEMORY[0x277CED828]);
    *v4 = v0;
    v4[1] = sub_2407EC0D0;
    v6 = v0[10];
    v7 = v0[8];
    v8 = v0[5];

    return v14(v8, v6, v7, v5);
  }

  else
  {
    v10 = sub_2408D3D70();
    sub_2407EEEDC(&qword_27E506D20, MEMORY[0x277CED590]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277CED578], v10);
    swift_willThrow();
    v12 = v0[10];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2407EC0D0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2407EF148;
  }

  else
  {
    v3 = sub_2407EF140;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2407EC1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D3970();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407EC304, v3, 0);
}

uint64_t sub_2407EC304()
{
  v29 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  sub_2408D38F0();
  LOBYTE(v4) = sub_2408D3870();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    return sub_2408D5190();
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = v0[3];
  v9 = sub_2408D4B20();
  __swift_project_value_buffer(v9, qword_27E506C48);
  (*(v6 + 16))(v5, v8, v7);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F10();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315138;
    sub_2407EEEDC(&qword_28130F418, MEMORY[0x277CED3F8]);
    v18 = sub_2408D5220();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_2408CC504(v18, v20, &v28);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v10, v11, "Performing proxied auth to challenge the independent: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x245CC9F60](v17, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_2407EC61C;
  v24 = v0[4];
  v25 = v0[5];
  v27 = v0[2];
  v26 = v0[3];

  return sub_2407E6308(v27, v26, v24);
}

uint64_t sub_2407EC61C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  v7 = *(v4 + 88);
  v8 = *(v4 + 64);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

void sub_2407EC764()
{
  if (!qword_27E506CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E506CE8, qword_2408D6B70);
    v0 = sub_2408D5060();
    if (!v1)
    {
      atomic_store(v0, &qword_27E506CE0);
    }
  }
}

uint64_t sub_2407EC7C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_2408D36F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D44D0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_2407D9440(v5, &qword_27E506D00, &unk_2408D7FE0);
  }

  (*(v7 + 32))(v10, v5, v6);
  v12 = sub_2408D36C0();
  [a1 setCompanionDevice_];

  v13 = objc_allocWithZone(sub_2408D3F20());

  v14 = sub_2408D3EF0();
  [a1 setAnisetteDataProvider_];

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v15 = sub_2408D4B20();
  __swift_project_value_buffer(v15, qword_27E506C48);
  v16 = a1;
  v17 = sub_2408D4B10();
  v18 = sub_2408D4F20();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    v21 = [v16 debugDescription];
    v22 = sub_2408D4D30();
    v24 = v23;

    v25 = sub_2408CC504(v22, v24, &v27);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_2407CF000, v17, v18, "Configured context with companion device and anisette provider: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x245CC9F60](v20, -1, -1);
    MEMORY[0x245CC9F60](v19, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2407ECB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2408D4220();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407ECBDC, 0, 0);
}

uint64_t sub_2407ECBDC()
{
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  v1 = *(MEMORY[0x277CED570] + 4);
  v9 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  v3 = sub_2407EEEDC(&qword_27E506D28, MEMORY[0x277CED828]);
  *v2 = v0;
  v2[1] = sub_2407ECCE4;
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];

  return v9(v7, v4, v5, v3);
}

uint64_t sub_2407ECCE4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2407ECE20, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2407ECE20()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2407ECE84(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D4660();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D40, &qword_2408D6CD0);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407ECFAC, 0, 0);
}

uint64_t sub_2407ECFAC()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D48, &qword_2408D6CD8);
  MEMORY[0x245CC80D0]();
  sub_2408D3CB0();
  (*(v3 + 8))(v2, v5);
  if (v6)
  {
    v7 = v0[2];
    v8 = *(MEMORY[0x277CED538] + 4);
    v14 = (*MEMORY[0x277CED538] + MEMORY[0x277CED538]);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_2407ED138;
    v10 = v0[9];

    return v14(v10);
  }

  else
  {
    v12 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2407ED138()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407ED234, 0, 0);
}

uint64_t sub_2407ED234()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2407ED2BC(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D30, &unk_2408D80C0);
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_2408D3D80();
  sub_2407EEEDC(&qword_27E506D08, MEMORY[0x277CED5B0]);
  v10 = sub_2408D4E00();
  v2[28] = v10;
  v2[29] = v9;

  return MEMORY[0x2822009F8](sub_2407ED450, v10, v9);
}

uint64_t sub_2407ED450()
{
  v80 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[18];
  v5 = sub_2408D4B20();
  v0[30] = __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  v12 = v0[23];
  v11 = v0[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v79[0] = v74;
    *v13 = 136315138;
    sub_2407EEEDC(&qword_27E506AA0, MEMORY[0x277CED3D8]);
    v72 = v8;
    v14 = v6;
    v15 = sub_2408D5220();
    v17 = v16;
    v78 = *(v11 + 8);
    v78(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_2408CC504(v18, v17, v79);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2407CF000, v7, v72, "Starting CDP approval server for account with ID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v74);
    MEMORY[0x245CC9F60](v74, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v78 = *(v11 + 8);
    v78(v10, v12);
  }

  v20 = v0[18];
  sub_2408D38B0();
  v21 = sub_2408D4D00();

  v22 = [objc_opt_self() contextForAccountWithAltDSID_];
  v0[31] = v22;

  if (v22)
  {
    v23 = v0[22];
    v24 = v0[19];
    sub_2408D3D10();
    v37 = v0[22];
    v75 = v0[26];
    v77 = v0[23];
    v39 = v0[20];
    v38 = v0[21];
    v40 = v0[18];
    v41 = v6;
    v42 = sub_2408D3C30();
    (*(v38 + 8))(v37, v39);
    [v22 setSharingChannel_];

    [v22 set:1 skipEscrowFetches:?];
    v41(v75, v40, v77);
    v43 = v22;
    v44 = sub_2408D4B10();
    v45 = sub_2408D4F10();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[26];
    v49 = v0[23];
    v48 = v0[24];
    if (v46)
    {
      v50 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v79[0] = v76;
      *v50 = 138412546;
      *(v50 + 4) = v43;
      *v73 = v22;
      *(v50 + 12) = 2080;
      sub_2407EEEDC(&qword_27E506AA0, MEMORY[0x277CED3D8]);
      v51 = v43;
      v52 = sub_2408D5220();
      v53 = v43;
      v55 = v54;
      v78(v47, v49);
      v56 = sub_2408CC504(v52, v55, v79);
      v43 = v53;

      *(v50 + 14) = v56;
      _os_log_impl(&dword_2407CF000, v44, v45, "Created CDP context: %@ for account with ID: %s", v50, 0x16u);
      sub_2407D9440(v73, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v73, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      MEMORY[0x245CC9F60](v76, -1, -1);
      MEMORY[0x245CC9F60](v50, -1, -1);
    }

    else
    {

      v78(v47, v49);
    }

    v64 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
    v0[32] = v64;
    v65 = sub_2408D4B10();
    if (v64)
    {
      v66 = sub_2408D4F20();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_2407CF000, v65, v66, "Starting CDP approval server", v67, 2u);
        MEMORY[0x245CC9F60](v67, -1, -1);
      }

      v0[2] = v0;
      v0[7] = v0 + 34;
      v0[3] = sub_2407EDD48;
      v68 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24085F49C;
      v0[13] = &block_descriptor;
      v0[14] = v68;
      [v64 startCircleApplicationApprovalServer_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v69 = sub_2408D4F30();
    if (os_log_type_enabled(v65, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2407CF000, v65, v69, "Failed to create CDP setup controller", v70, 2u);
      MEMORY[0x245CC9F60](v70, -1, -1);
    }

    sub_2407EEADC();
    swift_allocError();
    *v71 = 0xD000000000000012;
    v71[1] = 0x80000002408DA380;
    swift_willThrow();
  }

  else
  {
    v6(v0[25], v0[18], v0[23]);
    v25 = sub_2408D4B10();
    v26 = sub_2408D4F30();
    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[24];
    v28 = v0[25];
    v30 = v0[23];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v79[0] = v32;
      *v31 = 136315138;
      v33 = sub_2408D38B0();
      v35 = v34;
      v78(v28, v30);
      v36 = sub_2408CC504(v33, v35, v79);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_2407CF000, v25, v26, "Failed to create CDP context for account with alt DSID: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x245CC9F60](v32, -1, -1);
      MEMORY[0x245CC9F60](v31, -1, -1);
    }

    else
    {

      v78(v28, v30);
    }

    sub_2407EEADC();
    swift_allocError();
    *v57 = 0x65746E6F43504443;
    v57[1] = 0xEA00000000007478;
    swift_willThrow();
  }

  v59 = v0[26];
  v58 = v0[27];
  v60 = v0[25];
  v61 = v0[22];

  v62 = v0[1];

  return v62();
}

uint64_t sub_2407EDD48()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_2407EDF98;
  }

  else
  {
    v6 = sub_2407EDE78;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2407EDE78()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 272);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "Started CDP approval server: %{BOOL}d", v8, 8u);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v11 = *(v0 + 200);
  v12 = *(v0 + 176);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2407EDF98()
{
  v1 = v0[33];
  v2 = v0[30];
  swift_willThrow();
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to start circle application server: %@", v10, 0xCu);
    sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v11, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[26];
  v14 = v0[27];
  v16 = v0[25];
  v17 = v0[22];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2407EE148()
{
  v0 = sub_2408D3BA0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CED4F0]);
  return sub_2408D3BC0();
}

uint64_t sub_2407EE234(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2407EE2CC;

  return sub_2407DFD6C(a1);
}

uint64_t sub_2407EE2CC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2407EE3D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  type metadata accessor for RemoteSetupService();
  swift_getWitnessTable();
  return sub_2408D4270();
}

uint64_t sub_2407EE484(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2407EE568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_2408D35B0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2408D3500();
  (*(*(v17 - 8) + 56))(v16, a4, 6, v17);
  sub_2408D35D0();
  (*(v9 + 16))(v12, a2, v8);
  return a5(v12);
}

uint64_t sub_2407EE714(unsigned __int8 a1)
{
  sub_2408D5300();
  MEMORY[0x245CC9750](a1);
  return sub_2408D5320();
}

uint64_t sub_2407EE778()
{
  sub_2408D5300();
  sub_2407EE6EC(v2, *v0);
  return sub_2408D5320();
}

void sub_2407EE7D0(void *a1)
{
  v3 = *(sub_2408D3970() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(sub_2408D36F0() - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2407EBBAC(a1, v1 + v5, v1 + v7, v1 + v9);
}

uint64_t sub_2407EE8E8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_2407EBDFC(a1, a2, v2);
}

void sub_2407EE994(void *a1)
{
  v3 = *(sub_2408D36F0() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2407E7CE8(a1);
}

uint64_t sub_2407EEA30(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407D379C;

  return sub_2407E7DA4(a1, a2, v2);
}

unint64_t sub_2407EEADC()
{
  result = qword_27E506D38;
  if (!qword_27E506D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E506D38);
  }

  return result;
}

uint64_t sub_2407EEB40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2407EEBB8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_2407ECB18(a1, a2, v2);
}

uint64_t sub_2407EEC64(uint64_t a1)
{
  v2 = sub_2408D35B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2407EECF8()
{
  v1 = *v0;
  result = *(v0 + *(*v0 + 184));
  if (!result)
  {
    v4 = *(v1 + 80);
    v5 = *(v1 + 96);
    type metadata accessor for RemoteSetupService.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2407EEDBC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2407EEE04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2407EEE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2407EEEDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2407EEF24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2407EEF6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2407EEFD4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}