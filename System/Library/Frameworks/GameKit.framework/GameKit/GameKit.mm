uint64_t sub_21867F078()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21867F0B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21867F118(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2186818F8;

  return sub_21867F1D0(a1, v5);
}

uint64_t sub_21867F1D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2186819F4;

  return v7(a1);
}

uint64_t sub_21867F2C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2186818F8;

  return sub_21867F394(a1, v4, v5, v7);
}

uint64_t sub_21867F394(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_218681150;

  return v8();
}

uint64_t sub_21867F47C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2186818F8;

  return sub_21867F53C(v2, v3, v5);
}

uint64_t sub_21867F53C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2186818F8;

  return v7();
}

uint64_t sub_21867F624()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2186818F8;

  return sub_21867F6D0(v2);
}

uint64_t sub_21867F6D0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2186817D0;

  return sub_21867F778();
}

uint64_t sub_21867F778()
{
  v1 = sub_2186B794C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21867F840, 0, 0);
}

uint64_t sub_21867F840()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_21867F9D4();
  v0[6] = v4;
  v5 = *(v3 + 16);
  v0[7] = v5;
  v0[8] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2186B792C();
  v7 = sub_2186B7BCC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21867D000, v6, v7, "Checking pending game activities.", v8, 2u);
    MEMORY[0x21CEB1A70](v8, -1, -1);
  }

  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  v12 = *(v11 + 8);
  v0[9] = v12;
  v12(v9, v10);
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_218681478;

  return sub_21867FFF8();
}

uint64_t sub_21867F9F8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2186B794C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_21867FA4C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2186B794C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2186B793C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_21867FB88()
{
  v0 = sub_21867FC04();
  sub_21867FF24(v0, v6);
  v1 = type metadata accessor for GSGameActivitySupport();
  v2 = objc_allocWithZone(v1);
  sub_21867FF24(v6, v2 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0(v6);
  qword_2811ED610 = v3;
  return result;
}

uint64_t *sub_21867FC04()
{
  if (qword_2811ED5E8 != -1)
  {
    swift_once();
  }

  return &qword_2811ED618;
}

unint64_t sub_21867FC58()
{
  v0 = sub_2186B759C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2186B791C();
  sub_2186B758C();
  if (qword_2811ED5F0 != -1)
  {
    swift_once();
  }

  v6 = sub_2186B790C();
  (*(v1 + 8))(v4, v0);
  qword_2811ED630 = v5;
  result = sub_21867FECC();
  qword_2811ED638 = result;
  qword_2811ED618 = v6;
  return result;
}

uint64_t sub_21867FE74()
{
  v0 = sub_2186B755C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2186B754C();
  qword_2811ED640 = result;
  return result;
}

unint64_t sub_21867FECC()
{
  result = qword_2811ED5B8;
  if (!qword_2811ED5B8)
  {
    sub_2186B791C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811ED5B8);
  }

  return result;
}

uint64_t sub_21867FF24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_21867FFF8()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E88, &qword_2186B9740) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E90, &unk_2186B9060);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v1[9] = *(v7 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218680178, 0, 0);
}

uint64_t sub_218680178()
{
  v1 = v0[11];
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[2];
  v8 = v0[3];
  v10 = sub_2186B789C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v5 + 16))(v3, v2, v7);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  (*(v5 + 32))(v12 + v11, v3, v7);
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06EA0, &qword_2186B9080);
  sub_218680664(&qword_2811ED5C0, &qword_27CC06EA0, &qword_2186B9080);
  sub_218680664(&qword_2811ED5C8, &qword_27CC06EA0, &qword_2186B9080);
  sub_2186B762C();
  v14 = *(MEMORY[0x277D0D0B0] + 4);
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_218681244;
  v16 = v0[6];
  v17 = v0[4];

  return MEMORY[0x282164EA8](v17);
}

uint64_t sub_21868042C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2186804FC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_218680544()
{
  v0 = [swift_getObjCClassFromMetadata() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_2186B7A0C();

    return sub_2186B77CC();
  }

  else
  {
    sub_2186B757C();
    sub_2186AF044(&qword_27CC06D88, MEMORY[0x277D0CE80]);
    swift_allocError();
    sub_2186B756C();
    return swift_willThrow();
  }
}

uint64_t sub_218680664(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2186806AC(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_218681150;

  return sub_2186807AC(a1, a2, v8, v2 + v7);
}

uint64_t sub_2186807AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2186807D0, 0, 0);
}

uint64_t sub_2186807D0()
{
  v1 = (v0[4] + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070D0, &qword_2186B9408);
  v4 = sub_2186B70AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v0[6] = v8;
  *(v8 + 16) = xmmword_2186B8F70;
  v9 = *MEMORY[0x277D0CD08];
  v10 = sub_2186B74FC();
  (*(*(v10 - 8) + 104))(v8 + v7, v9, v10);
  (*(v5 + 104))(v8 + v7, *MEMORY[0x277D0CA80], v4);
  v11 = *(MEMORY[0x277D0CBA8] + 4);
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_218681014;
  v13 = v0[5];
  v14 = v0[2];
  v15 = v0[3];

  return MEMORY[0x282164888](v14, v13, v8, 0, v15, v2, v3);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2186809FC(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E28, &unk_2186B8FF0);
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218680AC8, 0, 0);
}

uint64_t sub_218680AC8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v9 = v1[20];
  v8 = v1[21];
  v13 = objc_opt_self();
  v10 = sub_2186B6FBC();
  v1[25] = v10;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_218680E84;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  sub_2186B7B1C();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_218680DC4;
  v1[13] = &block_descriptor_1;
  [v13 invokeWithData:v10 completionHandler:v3];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_218680D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_218680DC4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E28, &unk_2186B8FF0);
    sub_2186B7B2C();
  }

  else
  {
    v6 = a2;
    sub_2186B6FCC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E28, &unk_2186B8FF0);
    sub_2186B7B3C();
  }
}

uint64_t sub_218680E84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_218686AA8;
  }

  else
  {
    v3 = sub_218680F94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_218680F94()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_218681014()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21869DCF0, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_218681150()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_218681244(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = v1;

  v7 = v4[6];
  v8 = v4[5];
  v9 = v4[4];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_21869395C;
  }

  else
  {
    v4[14] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_2186813CC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2186813CC()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[3];
  (*(v0[8] + 8))(v0[11], v0[7]);

  v4 = v0[1];
  v5 = v0[14];

  return v4(v5);
}

uint64_t sub_218681478(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (v1)
  {

    v8 = v4[4];
    v7 = v4[5];

    v9 = *(v6 + 8);

    return v9(0);
  }

  else
  {
    v4[11] = a1;

    return MEMORY[0x2822009F8](sub_2186815E0, 0, 0);
  }
}

uint64_t sub_2186815E0()
{
  v27 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = *(v0[11] + 16);

  v2(v4, v3, v5);
  v7 = sub_2186B792C();
  v8 = sub_2186B7BDC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v12 = v0[3];
  v11 = v0[4];
  v13 = v0[2];
  if (v9)
  {
    v25 = v0[4];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    if (v6)
    {
      v16 = 0;
    }

    else
    {
      v16 = 544501614;
    }

    v24 = v10;
    v17 = v6;
    if (v6)
    {
      v18 = 0xE000000000000000;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    v19 = sub_2186864E8(v16, v18, &v26);
    v6 = v17;

    *(v14 + 4) = v19;
    _os_log_impl(&dword_21867D000, v7, v8, "Did %sfind pending game activities.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x21CEB1A70](v15, -1, -1);
    MEMORY[0x21CEB1A70](v14, -1, -1);

    v24(v25, v13);
  }

  else
  {

    v10(v11, v13);
  }

  v21 = v0[4];
  v20 = v0[5];

  v22 = v0[1];

  return v22(v6 != 0);
}

uint64_t sub_2186817D0(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2186818FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_218681A3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681A74()
{
  MEMORY[0x21CEB1B10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_218681AAC()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_218681AFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  if (*(v0 + 80))
  {
    v4 = *(v0 + 88);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_218681B64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_218681B9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681BDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_218681C1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_218681C60()
{
  MEMORY[0x21CEB1B10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_218681C9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681D0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_218681DF0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_218681E3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681E74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681EB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_218681F08()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_218681F54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681F8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681FCC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_218682004()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_218682758(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = aBlock - v8;
  v10 = sub_2186B6FAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218682A28(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_218682A98(v9);
    return a2(0, 0);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = sub_2186B6F8C();
    sub_218682B00();
    v18 = sub_2186B7C2C();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    aBlock[4] = sub_218682B4C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218682B78;
    aBlock[3] = &block_descriptor;
    v20 = _Block_copy(aBlock);

    [ObjCClassFromMetadata loadImageForURL:v17 queue:v18 withCompletionHandler:v20];
    _Block_release(v20);

    return (*(v11 + 8))(v14, v10);
  }
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

uint64_t sub_218682A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218682A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218682B00()
{
  result = qword_27CC06D78;
  if (!qword_27CC06D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC06D78);
  }

  return result;
}

uint64_t sub_218682B4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

void sub_218682B78(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_218682BE4(uint64_t a1, int *a2)
{
  v4 = v2;
  v6 = sub_2186B794C();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();
  v9 = sub_2186B757C();
  v4[6] = v9;
  v10 = *(v9 - 8);
  v4[7] = v10;
  v11 = *(v10 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v15 = (a2 + *a2);
  v12 = a2[1];
  v13 = swift_task_alloc();
  v4[11] = v13;
  *v13 = v4;
  v13[1] = sub_218682DBC;

  return v15(a1);
}

uint64_t sub_218682DBC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218682F28, 0, 0);
  }

  else
  {
    v5 = v3[9];
    v4 = v3[10];
    v6 = v3[8];
    v7 = v3[5];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_218682F28()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);

    (*(v8 + 32))(v5, v6, v9);
    v13 = sub_218683DD0(v5);
    v14 = sub_2186AF118();
    (*(v12 + 16))(v10, v14, v11);
    v15 = *(v8 + 16);
    v15(v7, v5, v9);
    v16 = v13;
    v17 = sub_2186B792C();
    v18 = sub_2186B7BCC();

    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = *(v0 + 48);
    if (v19)
    {
      log = v17;
      v23 = swift_slowAlloc();
      v39 = v18;
      v24 = swift_slowAlloc();
      *v23 = 138412546;
      sub_218683F9C(&qword_27CC06D88, MEMORY[0x277D0CE80]);
      swift_allocError();
      v15(v25, v20, v22);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = *(v21 + 8);
      v27(v20, v22);
      *(v23 + 4) = v26;
      *v24 = v26;
      *(v23 + 12) = 2112;
      v28 = v16;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v29;
      v24[1] = v29;
      _os_log_impl(&dword_21867D000, log, v39, "Throwing converted error: %@ as: %@", v23, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D90, &qword_2186B8C70);
      swift_arrayDestroy();
      MEMORY[0x21CEB1A70](v24, -1, -1);
      MEMORY[0x21CEB1A70](v23, -1, -1);
    }

    else
    {

      v27 = *(v21 + 8);
      v27(v20, v22);
    }

    v31 = *(v0 + 72);
    v32 = *(v0 + 48);
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
    swift_willThrow();
    v27(v31, v32);
  }

  else
  {

    swift_willThrow();
    v30 = *(v0 + 96);
  }

  v34 = *(v0 + 72);
  v33 = *(v0 + 80);
  v35 = *(v0 + 64);
  v36 = *(v0 + 40);

  v37 = *(v0 + 8);

  return v37();
}

void sub_2186832AC(void (*a1)(uint64_t))
{
  v3 = sub_2186B794C();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2186B757C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  a1(v15);
  if (v1)
  {
    v41 = v1;
    v18 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
    if (swift_dynamicCast())
    {

      (*(v7 + 32))(v14, v17, v6);
      v19 = sub_218683DD0(v14);
      v20 = sub_2186AF118();
      (*(v39 + 16))(v38, v20, v40);
      v21 = *(v7 + 16);
      v21(v11, v14, v6);
      v22 = v19;
      v23 = sub_2186B792C();
      v24 = sub_2186B7BCC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v35 = v21;
        v26 = v25;
        v37 = swift_slowAlloc();
        *v26 = 138412546;
        sub_218683F9C(&qword_27CC06D88, MEMORY[0x277D0CE80]);
        swift_allocError();
        v36 = v23;
        v35(v27, v11, v6);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        LODWORD(v35) = v24;
        v29 = *(v7 + 8);
        v29(v11, v6);
        *(v26 + 4) = v28;
        v30 = v37;
        *v37 = v28;
        *(v26 + 12) = 2112;
        v31 = v22;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 14) = v32;
        v30[1] = v32;
        v33 = v30;
        v34 = v36;
        _os_log_impl(&dword_21867D000, v36, v35, "Throwing converted error: %@ as: %@", v26, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D90, &qword_2186B8C70);
        swift_arrayDestroy();
        MEMORY[0x21CEB1A70](v33, -1, -1);
        MEMORY[0x21CEB1A70](v26, -1, -1);
      }

      else
      {

        v29 = *(v7 + 8);
        v29(v11, v6);
      }

      (*(v39 + 8))(v38, v40);
      swift_willThrow();
      v29(v14, v6);
    }

    else
    {

      swift_willThrow();
    }
  }
}

uint64_t sub_21868370C(uint64_t a1)
{
  v2 = sub_218683F9C(&qword_27CC06DC8, type metadata accessor for GKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_218683778(uint64_t a1)
{
  v2 = sub_218683F9C(&qword_27CC06DC8, type metadata accessor for GKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2186837E8(uint64_t a1)
{
  v2 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_218683874(uint64_t a1)
{
  v2 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2186838E0(uint64_t a1)
{
  v2 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21868394C(void *a1, uint64_t a2)
{
  v4 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_218683A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_218683A7C()
{
  v2 = *v0;
  sub_2186B7EBC();
  sub_2186B79DC();
  return sub_2186B7ECC();
}

void *sub_218683ADC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_218683AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_218683B90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2186B7EBC();
  sub_2186B7A4C();
  v6 = sub_2186B7ECC();

  return sub_218683C08(a1, a2, v6);
}

unint64_t sub_218683C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2186B7E5C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_218683CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06DA0, &unk_2186B8C90);
    v3 = sub_2186B7E2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_218683FE4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_218683B90(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_218684054(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_218683DD0(uint64_t a1)
{
  v2 = sub_2186B757C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D0CE68])
  {
    v8 = 17;
LABEL_6:
    (*(v3 + 8))(v6, v2);
    goto LABEL_7;
  }

  if (v7 != *MEMORY[0x277D0CE78])
  {
    v8 = 1;
    goto LABEL_6;
  }

  v8 = 3;
LABEL_7:
  type metadata accessor for GKError(0);
  v10[0] = v8;
  sub_218683CC0(MEMORY[0x277D84F90]);
  sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError);
  sub_2186B6F5C();
  return v10[1];
}

uint64_t sub_218683F9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218683FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06DA8, &qword_2186B9400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_218684054(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_218684228(uint64_t a1, unint64_t *a2)
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

unint64_t sub_2186842C0()
{
  result = qword_27CC06DF0;
  if (!qword_27CC06DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC06DF0);
  }

  return result;
}

uint64_t sub_2186843A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v20;
  v8[12] = v21;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v10 = *(v21 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = sub_2186B7C6C();
  v8[15] = v12;
  v13 = *(v12 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64) + 15;
  v8[17] = swift_task_alloc();
  v15 = *(v20 - 8);
  v8[18] = v15;
  v16 = *(v15 + 64) + 15;
  v8[19] = swift_task_alloc();
  v17 = *(a8 - 8);
  v8[20] = v17;
  v8[21] = *(v17 + 64);
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218684580, 0, 0);
}

uint64_t sub_218684580()
{
  v1 = v0[10];
  v2 = v0[4];
  (*(v0[13] + 16))(v0[3], v0[5], v0[12]);
  if (sub_2186B7AFC())
  {
    v3 = v0[10];
    v4 = v0[4];
    v5 = sub_2186B7ADC();
    sub_2186B7ABC();
    if (v5)
    {
      (*(v0[20] + 16))(v0[22], v0[4] + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)), v0[10]);
    }

    else
    {
      v17 = v0[21];
      v18 = v0[10];
      v19 = v0[4];
      result = sub_2186B7D5C();
      if (v17 != 8)
      {
        __break(1u);
        return result;
      }

      v20 = v0[22];
      v21 = v0[20];
      v22 = v0[10];
      v0[2] = result;
      (*(v21 + 16))(v20, v0 + 2, v22);
      swift_unknownObjectRelease();
    }

    v0[23] = 1;
    v23 = (v0[6] + *v0[6]);
    v6 = *(v0[6] + 4);
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_2186847D4;
    v8 = v0[22];
    v9 = v0[17];
    v10 = v0[7];

    return v23(v9, v8);
  }

  else
  {
    v12 = v0[22];
    v13 = v0[19];
    v14 = v0[17];
    v15 = v0[14];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2186847D4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  (*(v2[20] + 8))(v2[22], v2[10]);
  if (v0)
  {
    v5 = sub_218684C9C;
  }

  else
  {
    v5 = sub_21868493C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21868493C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[11];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[16] + 8))(v1, v0[15]);
  }

  else
  {
    v4 = v0[19];
    v6 = v0[13];
    v5 = v0[14];
    v34 = v0[12];
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[3];
    (*(v2 + 32))(v4, v1, v3);
    v8(v9, v4);
    (*(v2 + 8))(v4, v3);
    (*(v6 + 8))(v9, v34);
    (*(v6 + 32))(v9, v5, v34);
  }

  v10 = v0[23];
  v11 = v0[10];
  v12 = v0[4];
  if (v10 == sub_2186B7AFC())
  {
    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[17];
    v16 = v0[14];

    v17 = v0[1];

    return v17();
  }

  v19 = v0[23];
  v20 = v0[10];
  v21 = v0[4];
  v22 = sub_2186B7ADC();
  sub_2186B7ABC();
  if (v22)
  {
    result = (*(v0[20] + 16))(v0[22], v0[4] + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v19, v0[10]);
  }

  else
  {
    v28 = v0[21];
    v29 = v0[10];
    v30 = v0[4];
    result = sub_2186B7D5C();
    if (v28 != 8)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v31 = v0[22];
    v32 = v0[20];
    v33 = v0[10];
    v0[2] = result;
    (*(v32 + 16))(v31, v0 + 2, v33);
    result = swift_unknownObjectRelease();
  }

  v0[23] = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v35 = (v0[6] + *v0[6]);
  v23 = *(v0[6] + 4);
  v24 = swift_task_alloc();
  v0[24] = v24;
  *v24 = v0;
  v24[1] = sub_2186847D4;
  v25 = v0[22];
  v26 = v0[17];
  v27 = v0[7];

  return v35(v26, v25);
}

uint64_t sub_218684C9C()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  (*(v0[13] + 8))(v0[3], v0[12]);

  v5 = v0[1];
  v6 = v0[25];

  return v5();
}

void GKAccessPoint.trigger(gameActivityDefinitionID:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2186B8F70;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_2186B7A9C();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v14[4] = sub_218685544;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218685598;
  v14[3] = &block_descriptor_0;
  v13 = _Block_copy(v14);

  sub_21868562C(a3);

  [v8 loadGameActivityDefinitionsWithIDs:v10 completionHandler:v13];
  _Block_release(v13);
}

void sub_218684EFC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v57 = a4;
  v58 = a6;
  v11 = sub_2186B794C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = (MEMORY[0x28223BE20])();
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    if (!a1 || a2)
    {
      v24 = sub_21867F9D4();
      (*(v12 + 16))(v16, v24, v11);

      v25 = a2;
      v26 = sub_2186B792C();
      v27 = sub_2186B7BEC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v55 = v11;
        v29 = v28;
        v30 = swift_slowAlloc();
        v56 = v23;
        v31 = v30;
        aBlock[0] = v30;
        *v29 = 136315394;
        *(v29 + 4) = sub_2186864E8(v57, a5, aBlock);
        *(v29 + 12) = 2080;
        aBlock[6] = a2;
        v32 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E18, qword_2186B8FB8);
        v33 = sub_2186B7A1C();
        v35 = sub_2186864E8(v33, v34, aBlock);

        *(v29 + 14) = v35;
        _os_log_impl(&dword_21867D000, v26, v27, "Failed to load game activity definition with ID: %s due to error: %s", v29, 0x16u);
        swift_arrayDestroy();
        v23 = v56;
        MEMORY[0x21CEB1A70](v31, -1, -1);
        MEMORY[0x21CEB1A70](v29, -1, -1);

        v36 = (*(v12 + 8))(v16, v55);
LABEL_8:
        if (v58)
        {
          v58(v36);
        }

        v39 = v23;
LABEL_11:

        return;
      }

      v37 = *(v12 + 8);
      v38 = v16;
LABEL_7:
      v36 = v37(v38, v11);
      goto LABEL_8;
    }

    if (a1 >> 62)
    {
      if (sub_2186B7CCC())
      {
        goto LABEL_15;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x21CEB1380](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v40 = *(a1 + 32);
      }

      v41 = v40;
      if ([v40 supportsPartyCode])
      {
        v39 = sub_2186B79FC();
        if (v58)
        {
          aBlock[4] = v58;
          aBlock[5] = a7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_218685554;
          aBlock[3] = &block_descriptor_31;
          v42 = _Block_copy(aBlock);
        }

        else
        {
          v42 = 0;
        }

        [v23 _triggerAccessPointWithGameActivityDefinitionID_handler_];
        _Block_release(v42);
      }

      else
      {
        v43 = sub_21867F9D4();
        (*(v12 + 16))(v21, v43, v11);

        v44 = sub_2186B792C();
        v45 = sub_2186B7BEC();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v56 = v23;
          v47 = v46;
          v48 = swift_slowAlloc();
          aBlock[0] = v48;
          *v47 = 136315138;
          *(v47 + 4) = sub_2186864E8(v57, a5, aBlock);
          _os_log_impl(&dword_21867D000, v44, v45, "Cannot trigger access point for game activity definition with ID: %s because it does not support party code.", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x21CEB1A70](v48, -1, -1);
          v23 = v56;
          MEMORY[0x21CEB1A70](v47, -1, -1);
        }

        v49 = (*(v12 + 8))(v21, v11);
        if (v58)
        {
          v58(v49);
        }

        v39 = v41;
      }

      goto LABEL_11;
    }

    v50 = sub_21867F9D4();
    (*(v12 + 16))(v19, v50, v11);

    v51 = sub_2186B792C();
    v52 = sub_2186B7BEC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_2186864E8(v57, a5, aBlock);
      _os_log_impl(&dword_21867D000, v51, v52, "Failed to load game activity definition with ID: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x21CEB1A70](v54, -1, -1);
      MEMORY[0x21CEB1A70](v53, -1, -1);
    }

    v37 = *(v12 + 8);
    v38 = v19;
    goto LABEL_7;
  }
}

uint64_t sub_218685554(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_218685598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for GKGameActivityDefinition(0);
    v4 = sub_2186B7AAC();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_21868562C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21868563C(void *a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = sub_2186B7A0C();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_218686A9C;
  }

  else
  {
    v9 = 0;
  }

  v10 = a1;
  GKAccessPoint.trigger(gameActivityDefinitionID:handler:)(v6, v8, v5, v9);
  sub_218686188(v5);
}

uint64_t GKAccessPoint.trigger(gameActivity:handler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a2;
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v32 = sub_2186B72AC();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v32);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218686C50(v13);
  v14 = sub_2186B71EC();
  v16 = v15;
  v17 = [a1 activityDefinition];
  v18 = [v17 identifier];

  v19 = sub_2186B7A0C();
  v21 = v20;

  v22 = sub_2186B7B7C();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  v23[5] = v4;
  v23[6] = v19;
  v23[7] = v21;
  v23[8] = v14;
  v23[9] = v16;
  v25 = v30;
  v24 = v31;
  v23[10] = v30;
  v23[11] = v24;
  v26 = a1;
  v27 = v4;
  sub_21868562C(v25);
  sub_218685DF8(0, 0, v9, &unk_2186B8F98, v23);

  return (*(v10 + 8))(v13, v32);
}

uint64_t sub_21868594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v13;
  *(v8 + 96) = v12;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  v9 = swift_task_alloc();
  *(v8 + 120) = v9;
  *v9 = v8;
  v9[1] = sub_2186859FC;

  return sub_218693CAC();
}

uint64_t sub_2186859FC()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_218685AF8, 0, 0);
}

uint64_t sub_218685AF8()
{
  *(v0 + 128) = sub_2186B7B5C();
  *(v0 + 136) = sub_2186B7B4C();
  v2 = sub_2186B7B0C();

  return MEMORY[0x2822009F8](sub_218685B90, v2, v1);
}

uint64_t sub_218685B90()
{
  v2 = v0[16];
  v1 = v0[17];

  sub_2186B7B4C();
  sub_2186B7B0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];
  v8 = sub_2186B79FC();
  v9 = sub_2186B79FC();
  if (v4)
  {
    v10 = v0[14];
    v0[6] = v0[13];
    v0[7] = v10;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_218685554;
    v0[5] = &block_descriptor_28;
    v11 = _Block_copy(v0 + 2);
    v12 = v0[7];
  }

  else
  {
    v11 = 0;
  }

  [v0[8] _triggerAccessPointWithGameActivityDefinitionID_gameActivityInstanceID_handler_];
  _Block_release(v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_218685D18()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v12 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_218681150;

  return sub_21868594C(v8, v9, v10, v2, v3, v4, v5, v6);
}

uint64_t sub_218685DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2186861A8(a3, v27 - v11);
  v13 = sub_2186B7B7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_218686218(v12);
  }

  else
  {
    sub_2186B7B6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2186B7B0C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2186B7A3C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_218686218(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_218686218(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_2186860B8(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_218686198;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = a1;
  GKAccessPoint.trigger(gameActivity:handler:)(v8, v6, v7);
  sub_218686188(v6);
}

uint64_t sub_218686188(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2186861A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218686218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218686280(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2186818FC;

  return v7(a1);
}

uint64_t sub_218686378(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2186818F8;

  return sub_218686280(a1, v5);
}

uint64_t sub_218686430(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_218681150;

  return sub_218686280(a1, v5);
}

uint64_t sub_2186864E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2186865B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_218680D68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2186865B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2186866C0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2186B7D8C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2186866C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_21868670C(a1, a2);
  sub_21868683C(&unk_282A02610);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21868670C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_218686928(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2186B7D8C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2186B7A6C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_218686928(v10, 0);
        result = sub_2186B7D3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21868683C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21868699C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_218686928(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E20, qword_2186B9410);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21868699C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E20, qword_2186B9410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_218686AA8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

uint64_t *sub_218686B24()
{
  if (qword_2811ED5F0 != -1)
  {
    swift_once();
  }

  return &qword_2811ED640;
}

uint64_t sub_218686B74()
{
  if (qword_2811ED5F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_218686BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_2811ED5E8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_21867FF24(&qword_2811ED618, v2);
}

void sub_218686C50(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = sub_2186B72AC();
  (*(*(v6 - 8) + 16))(a1, v3 + v4, v6);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_218686DBC()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity_identifier);
  v2 = *(v0 + OBJC_IVAR___GKGameActivity_identifier + 8);

  return v1;
}

uint64_t sub_218686EF0()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  v4 = sub_2186B70BC();
  os_unfair_lock_unlock((v1 + v3));
  return v4;
}

uint64_t sub_218687064()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_218687118();
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_218687118()
{
  v1 = *(v0 + 16);

  return sub_2186B70CC();
}

uint64_t sub_21868730C()
{
  v1 = sub_2186B709C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v7 = *(*v6 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_2186B71FC();
  v9 = (*(v2 + 88))(v5, v1);
  if (v9 == *MEMORY[0x277D0CA40])
  {
    v10 = 1;
  }

  else if (v9 == *MEMORY[0x277D0CA48])
  {
    v10 = 2;
  }

  else if (v9 == *MEMORY[0x277D0CA38])
  {
    v10 = 4;
  }

  else
  {
    (*(v2 + 8))(v5, v1);
    v10 = 0;
  }

  os_unfair_lock_unlock((v6 + v8));
  return v10;
}

uint64_t sub_2186875A4()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_2186876C4(&v5);
  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

uint64_t sub_21868764C@<X0>(id a1@<X1>, void *a2@<X8>)
{
  v3 = [a1 activityDefinition];
  v4 = [v3 supportsPartyCode];

  if (v4)
  {
    result = sub_2186B727C();
  }

  else
  {
    result = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_218687894(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_218687A0C(a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_218687944@<X0>(id a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [a1 activityDefinition];
  v4 = [v3 supportsPartyCode];

  if (v4)
  {
    return sub_2186B726C();
  }

  v6 = sub_2186B6FAC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 1, 1, v6);
}

id sub_218687C2C(char *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = *&a1[OBJC_IVAR___GKGameActivity__instanceSnapshot];
  v10 = *(*v9 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  v12 = a1;
  os_unfair_lock_lock((v9 + v11));
  a3();
  os_unfair_lock_unlock((v9 + v11));

  v13 = sub_2186B701C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v8, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_2186B6FEC();
    (*(v14 + 8))(v8, v13);
    v16 = v17;
  }

  return v16;
}

void sub_218687DE8(void (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  a1();

  os_unfair_lock_unlock((v3 + v5));
}

double sub_218687F44()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_2186B725C();
  sub_2186B7EDC();
  v5 = v4;
  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

id sub_218688038(char *a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v9 = *&a1[*a3];
  v10 = a1;
  os_unfair_lock_lock((v9 + 24));
  v11 = *(v9 + 16);

  os_unfair_lock_unlock((v9 + 24));

  sub_2186804FC(0, a4, a5);
  sub_21869D768(a6, a4, a5);
  v12 = sub_2186B7B8C();

  return v12;
}

uint64_t sub_218688114(void *a1)
{
  v2 = *(v1 + *a1);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  return v3;
}

id sub_218688398(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_2186B79FC();

  return v6;
}

uint64_t *sub_218688404()
{
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  return &qword_2811ED610;
}

uint64_t sub_218688454(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char *a22, void *a23, void *a24)
{
  v25 = v24;
  v172 = a8;
  v164 = a7;
  v137 = a6;
  v134 = a5;
  v163 = a4;
  v161 = a3;
  v173 = a2;
  v169 = a1;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v127 = *(v128 - 8);
  v26 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v139 = v120 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07000, &qword_2186B9330);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v136 = v120 - v30;
  v135 = sub_2186B74FC();
  v131 = *(v135 - 8);
  v31 = *(v131 + 64);
  MEMORY[0x28223BE20](v135);
  v132 = v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F30, &qword_2186B90D0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v129 = v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v148 = v120 - v37;
  v130 = sub_2186B709C();
  v133 = *(v130 - 8);
  v38 = *(v133 + 64);
  MEMORY[0x28223BE20](v130);
  v147 = v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v146 = v120 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v145 = v120 - v45;
  MEMORY[0x28223BE20](v44);
  v144 = v120 - v46;
  v47 = sub_2186B701C();
  v170 = *(v47 - 8);
  v171 = v47;
  v48 = *(v170 + 64);
  MEMORY[0x28223BE20](v47);
  v143 = v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v142 = v120 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F58, &qword_2186B90F8);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = v120 - v55;
  v141 = sub_2186B72AC();
  v138 = *(v141 - 8);
  v57 = *(v138 + 64);
  MEMORY[0x28223BE20](v141);
  v140 = v120 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = OBJC_IVAR___GKGameActivity_subscriptions;
  *&v24[OBJC_IVAR___GKGameActivity_subscriptions] = MEMORY[0x277D84FA0];
  v155 = OBJC_IVAR___GKGameActivity_gsTimer;
  *&v24[OBJC_IVAR___GKGameActivity_gsTimer] = 0;
  v59 = OBJC_IVAR___GKGameActivity_updateTrigger;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E58, &unk_2186B9020);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_2186B796C();
  v156 = v59;
  *&v24[v59] = v63;
  v64 = [objc_opt_self() distantPast];
  if (v64)
  {
    v157 = a24;
    v158 = a21;
    v159 = a17;
    v160 = a16;
    v165 = a19;
    v166 = a11;
    v167 = a10;
    v168 = a9;
    v153 = OBJC_IVAR___GKGameActivity_lastUpdateTime;
    *&v24[OBJC_IVAR___GKGameActivity_lastUpdateTime] = v64;
    v65 = &v24[OBJC_IVAR___GKGameActivity_identifier];
    v151 = &v24[OBJC_IVAR___GKGameActivity_identifier];
    v66 = v173;
    *v65 = v169;
    v65[1] = v66;
    v152 = OBJC_IVAR___GKGameActivity_activityDefinition;
    v67 = v161;
    *&v25[OBJC_IVAR___GKGameActivity_activityDefinition] = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07008, &qword_2186B9338);
    v68 = swift_allocObject();
    *(v68 + 24) = 0;
    *(v68 + 16) = a12;
    v150 = OBJC_IVAR___GKGameActivity__achievements;
    *&v25[OBJC_IVAR___GKGameActivity__achievements] = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07010, &qword_2186B9340);
    v69 = swift_allocObject();
    *(v69 + 24) = 0;
    *(v69 + 16) = a13;
    v149 = OBJC_IVAR___GKGameActivity__leaderboardScores;
    *&v25[OBJC_IVAR___GKGameActivity__leaderboardScores] = v69;

    v70 = v67;

    v71 = v162;
    sub_2186AAACC(v56);
    v72 = v56;
    v73 = v71;
    if (v71)
    {

      sub_21867F0B8(v166, &qword_27CC06F08, &qword_2186B90A8);
      sub_21867F0B8(v167, &qword_27CC06F08, &qword_2186B90A8);
      sub_21867F0B8(v168, &qword_27CC06F08, &qword_2186B90A8);
      (*(v170 + 8))(v172, v171);
    }

    else
    {
      v122 = v72;
      v161 = a23;
      v162 = a14;
      v126 = v70;
      v124 = a12;
      v125 = a13;
      v123 = a18;
      v74 = sub_2186897FC(a18);
      v75 = sub_2186A0E44(v165);
      if (*(v75 + 16))
      {
        v76 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07018, &qword_2186B9348);
        v77 = sub_2186B7E2C();
        v75 = v76;
      }

      else
      {
        v77 = MEMORY[0x277D84F98];
      }

      v78 = v166;
      v79 = v136;
      v175 = v77;
      sub_2186A4144(v75, 1, &v175);
      v121 = 0;
      v136 = a22;
      v120[4] = v175;
      v80 = [v162 internalPlayerID];
      sub_2186B7A0C();

      sub_2186B786C();
      (*(v170 + 16))(v143, v172, v171);
      sub_2186A7D78(v168, v144, &qword_27CC06F08, &qword_2186B90A8);
      sub_2186A7D78(v167, v145, &qword_27CC06F08, &qword_2186B90A8);
      sub_2186A7D78(v78, v146, &qword_27CC06F08, &qword_2186B90A8);
      v81 = sub_2186B7EFC();
      v82 = *(v133 + 104);
      v120[3] = v74;
      v120[2] = v81;
      v120[1] = v83;
      if ((v134 - 1) >= 4)
      {
        v84 = MEMORY[0x277D0CA30];
      }

      else
      {
        v84 = qword_278236AC0[v134 - 1];
      }

      v85 = v131;
      v82(v147, *v84, v130);
      v86 = sub_2186B73DC();
      (*(*(v86 - 8) + 56))(v148, 1, 1, v86);

      sub_2186B74DC();
      v87 = *(v85 + 48);
      v88 = v135;
      if (v87(v79, 1, v135) == 1)
      {
        (*(v85 + 104))(v132, *MEMORY[0x277D0CD18], v88);
        v89 = v87(v79, 1, v88);
        v90 = v157;
        if (v89 != 1)
        {
          sub_21867F0B8(v79, &qword_27CC07000, &qword_2186B9330);
        }
      }

      else
      {
        (*(v85 + 32))(v132, v79, v88);
        v90 = v157;
      }

      v73 = (a15 & 1);
      v91 = v140;
      sub_2186B71DC();
      sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
      v92 = v121;
      sub_218680544();
      v93 = v126;
      if (!v92)
      {
        v103 = v162;
        *&v25[OBJC_IVAR___GKGameActivity_creator] = v162;
        v25[OBJC_IVAR___GKGameActivity_initiatedByApple] = v73;
        v104 = v160;
        *&v25[OBJC_IVAR___GKGameActivity_referralLeaderboard] = v160;
        v105 = v90;
        v106 = v159;
        *&v25[OBJC_IVAR___GKGameActivity_referralAchievement] = v159;
        *&v25[OBJC_IVAR___GKGameActivity_participants] = v123;
        *&v25[OBJC_IVAR___GKGameActivity_participantStates] = v165;
        v107 = &v25[OBJC_IVAR___GKGameActivity_consumptionState];
        v108 = v161;
        *v107 = v136;
        v107[1] = v108;
        *&v25[OBJC_IVAR___GKGameActivity_support] = v105;
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07020, &qword_2186B9350);
        v110 = *(v109 + 52);
        v111 = (*(v109 + 48) + 3) & 0x1FFFFFFFCLL;
        v112 = swift_allocObject();
        *(v112 + ((*(*v112 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
        (*(v138 + 16))(v112 + *(*v112 + *MEMORY[0x277D841D0] + 16), v91, v141);
        *&v25[OBJC_IVAR___GKGameActivity__instanceSnapshot] = v112;
        v174.receiver = v25;
        v174.super_class = GKGameActivity;
        v173 = v103;
        v113 = v104;
        v114 = v106;
        v115 = v105;
        v73 = objc_msgSendSuper2(&v174, sel_init);
        sub_218689A2C(v129);
        v169 = v115;
        v164 = v120;
        v165 = v114;
        v116 = *&v73[OBJC_IVAR___GKGameActivity__instanceSnapshot];
        MEMORY[0x28223BE20](v117);
        v118 = *(*v116 + *MEMORY[0x277D841D0] + 16);
        v119 = (*(*v116 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v116 + v119));
        sub_2186A7CA4(v116 + v118);
        os_unfair_lock_unlock((v116 + v119));

        [v73 setupUpdateSubscription];

        sub_21867F0B8(v166, &qword_27CC06F08, &qword_2186B90A8);
        sub_21867F0B8(v167, &qword_27CC06F08, &qword_2186B90A8);
        sub_21867F0B8(v168, &qword_27CC06F08, &qword_2186B90A8);
        (*(v170 + 8))(v172, v171);
        (*(v138 + 8))(v140, v141);
        sub_21867F0B8(v129, &qword_27CC06F30, &qword_2186B90D0);
        (*(v127 + 8))(v139, v128);
        return v73;
      }

      sub_21867F0B8(v166, &qword_27CC06F08, &qword_2186B90A8);
      sub_21867F0B8(v167, &qword_27CC06F08, &qword_2186B90A8);
      sub_21867F0B8(v168, &qword_27CC06F08, &qword_2186B90A8);
      (*(v170 + 8))(v172, v171);
      (*(v138 + 8))(v91, v141);
    }

    v94 = v156;
    v95 = *&v25[v154];

    v96 = *&v25[v155];
    swift_unknownObjectRelease();
    v97 = *(v151 + 1);

    v98 = *&v25[v150];

    v99 = *&v25[v149];

    v100 = *&v25[v94];

    type metadata accessor for GKGameActivity(v101);
    swift_deallocPartialClassInstance();
    return v73;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21868977C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E58, &unk_2186B9020);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2186B796C();
}

id sub_2186897C0()
{
  result = [objc_opt_self() distantPast];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2186897FC(uint64_t a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - v4;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v20 = v2 + 32;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      v19 = sub_2186A69B8(v12);

      return v19;
    }

    v8 = *(a1 + 56 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      do
      {
LABEL_8:
        v14 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
        v15 = *v14;
        v16 = v14[1];

        sub_2186B786C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2186A15F4(0, v12[2] + 1, 1, v12);
        }

        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          v12 = sub_2186A15F4(v17 > 1, v18 + 1, 1, v12);
        }

        v8 &= v8 - 1;
        v12[2] = v18 + 1;
        result = (*(v2 + 32))(v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18, v5, v21);
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

void sub_218689A2C(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = [v1 referralLeaderboard];
  if (!v7)
  {
    v11 = [v1 referralAchievement];
    if (!v11)
    {
      v13 = sub_2186B73DC();
      (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
      return;
    }

    v8 = v11;
    v12 = [v11 identifier];
    sub_2186B7A0C();

    sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
    sub_218680544();
    if (!v2)
    {
      sub_2186B784C();

      v10 = MEMORY[0x277D0CB98];
      goto LABEL_9;
    }

LABEL_6:

    return;
  }

  v8 = v7;
  v9 = [v7 baseLeaderboardID];
  sub_2186B7A0C();

  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  if (v2)
  {
    goto LABEL_6;
  }

  sub_2186B782C();

  v10 = MEMORY[0x277D0CB90];
LABEL_9:
  v14 = *v10;
  v15 = sub_2186B73DC();
  v16 = *(v15 - 8);
  (*(v16 + 104))(a1, v14, v15);
  (*(v16 + 56))(a1, 0, 1, v15);
}

uint64_t sub_218689D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v106 = a3;
  v93 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F18, &qword_2186B90B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F30, &qword_2186B90D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v101 = &v88 - v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v16 = *(v105 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v105);
  v96 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v104 = &v88 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07028, &qword_2186B9358);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v103 = &v88 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v89 = *(v90 - 8);
  v24 = *(v89 + 64);
  v25 = MEMORY[0x28223BE20](v90);
  v110 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v88 - v27;
  v29 = sub_2186B749C();
  v115 = *(v29 - 8);
  v30 = *(v115 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v109 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v116 = &v88 - v33;
  v108 = a4;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
    result = sub_2186B7BBC();
    a2 = v121;
    v35 = v122;
    v36 = v123;
    v37 = v124;
    v38 = v125;
  }

  else
  {
    v39 = -1 << *(a2 + 32);
    v35 = a2 + 56;
    v40 = ~v39;
    v41 = -v39;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v38 = v42 & *(a2 + 56);

    v36 = v40;
    v37 = 0;
  }

  v94 = v36;
  v43 = (v36 + 64) >> 6;
  v102 = (v16 + 16);
  v98 = *MEMORY[0x277D0CBF8];
  v111 = v115 + 32;
  v112 = (v115 + 104);
  v113 = v29;
  v44 = MEMORY[0x277D84F90];
  v107 = a2;
  v100 = v35;
  v99 = v43;
  if (a2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v45 = v37;
  v46 = v38;
  v47 = v37;
  if (!v38)
  {
    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v47 >= v43)
      {
        goto LABEL_23;
      }

      v46 = *(v35 + 8 * v47);
      ++v45;
      if (v46)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_12:
  v117 = v44;
  v48 = (v46 - 1) & v46;
  v49 = *(*(a2 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v46)))));
  if (!v49)
  {
LABEL_47:
    v44 = v117;
LABEL_23:
    sub_2186A67A0();
    v62 = v108;
    if ((v108 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2186B7CBC();
      sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
      sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
      result = sub_2186B7BBC();
      v62 = v126;
      v63 = v127;
      v64 = v128;
      v65 = v129[0];
      v66 = v129[1];
    }

    else
    {
      v67 = -1 << *(v108 + 32);
      v63 = v108 + 56;
      v68 = ~v67;
      v69 = -v67;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      else
      {
        v70 = -1;
      }

      v66 = (v70 & *(v108 + 56));

      v64 = v68;
      v65 = 0;
    }

    v104 = v64;
    v71 = (v64 + 64) >> 6;
    LODWORD(v107) = *MEMORY[0x277D0CC00];
    v108 = v62;
    v114 = v63;
    if (v62 < 0)
    {
      goto LABEL_36;
    }

LABEL_30:
    v72 = v65;
    v73 = v66;
    v74 = v65;
    if (v66)
    {
LABEL_34:
      v117 = v44;
      v75 = (v73 - 1) & v73;
      v76 = *(*(v62 + 48) + ((v74 << 9) | (8 * __clz(__rbit64(v73)))));
      if (!v76)
      {
LABEL_46:
        sub_2186A67A0();
        sub_2186B710C();
        sub_2186A7D78(v92, v91, &qword_27CC06F30, &qword_2186B90D0);
        return sub_2186B718C();
      }

      while (1)
      {
        v116 = v75;
        v106 = v65;
        v78 = [v76 player];
        v79 = [v78 internalPlayerID];

        sub_2186B7A0C();
        sub_2186B786C();
        [v76 value];
        result = [v76 context];
        if (result < 0)
        {
          goto LABEL_54;
        }

        v105 = v66;
        v80 = [v76 leaderboardID];
        sub_2186B7A0C();

        sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
        v81 = v118;
        sub_218680544();
        if (v81)
        {
          v118 = v81;
          (*(v89 + 8))(v110, v90);

          v86 = &v130;
          goto LABEL_51;
        }

        sub_2186B782C();
        v118 = 0;
        v82 = v109;
        sub_2186B75EC();
        v83 = v113;
        (*v112)(v82, v107, v113);
        v44 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_2186A18F0(0, v44[2] + 1, 1, v44, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
        }

        v85 = v44[2];
        v84 = v44[3];
        v62 = v108;
        if (v85 >= v84 >> 1)
        {
          v44 = sub_2186A18F0(v84 > 1, v85 + 1, 1, v44, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
        }

        v44[2] = v85 + 1;
        result = (*(v115 + 32))(v44 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v85, v109, v83);
        v65 = v74;
        v66 = v116;
        v63 = v114;
        if ((v62 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_36:
        v77 = sub_2186B7CEC();
        if (v77)
        {
          v117 = v44;
          v119 = v77;
          sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
          swift_dynamicCast();
          v76 = v120;
          v74 = v65;
          v75 = v66;
          if (v120)
          {
            continue;
          }
        }

        goto LABEL_46;
      }
    }

    while (1)
    {
      v74 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v74 >= v71)
      {
        goto LABEL_46;
      }

      v73 = *(v63 + 8 * v74);
      ++v72;
      if (v73)
      {
        goto LABEL_34;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  while (1)
  {
    v114 = v48;
    v97 = v38;
    v51 = [v49 player];
    v52 = [v51 internalPlayerID];

    sub_2186B7A0C();
    sub_2186B786C();
    v53 = [v49 identifier];
    sub_2186B7A0C();

    (*v102)(v104, v106, v105);
    v54 = v118;
    sub_2186B77DC();
    v118 = v54;
    if (v54)
    {
      break;
    }

    [v49 percentComplete];
    [v49 isCompleted];
    v55 = [v49 lastReportedDate];
    v56 = v101;
    sub_2186B6FFC();

    v57 = sub_2186B701C();
    (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
    v58 = v116;
    sub_2186B768C();
    v59 = v113;
    (*v112)(v58, v98, v113);
    v44 = v117;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_2186A18F0(0, v44[2] + 1, 1, v44, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    }

    v43 = v99;
    v61 = v44[2];
    v60 = v44[3];
    if (v61 >= v60 >> 1)
    {
      v44 = sub_2186A18F0(v60 > 1, v61 + 1, 1, v44, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    }

    v35 = v100;

    v44[2] = v61 + 1;
    result = (*(v115 + 32))(v44 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v61, v116, v59);
    v37 = v47;
    v38 = v114;
    a2 = v107;
    if ((v107 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v50 = sub_2186B7CEC();
    if (!v50)
    {
      goto LABEL_23;
    }

    v117 = v44;
    v119 = v50;
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    swift_dynamicCast();
    v49 = v120;
    v47 = v37;
    v48 = v38;
    if (!v120)
    {
      goto LABEL_47;
    }
  }

  (*(v89 + 8))(v28, v90);

  v86 = v129;
LABEL_51:
  v87 = *(v86 - 32);
  sub_2186A67A0();
}

uint64_t sub_21868B22C()
{
  v14 = sub_2186B7C1C();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v14);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FE0, &qword_2186B9318);
  v6 = *(v5 - 8);
  v15 = v5;
  v16 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v17 = *(v0 + OBJC_IVAR___GKGameActivity_updateTrigger);

  sub_2186B7C0C();
  sub_2186804FC(0, &qword_27CC06D78, 0x277D85C78);
  v10 = sub_2186B7C2C();
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E58, &unk_2186B9020);
  sub_218680664(&qword_27CC06FE8, &qword_27CC06E58, &unk_2186B9020);
  sub_21869D768(&qword_27CC06FF0, &qword_27CC06D78, 0x277D85C78);
  sub_2186B798C();

  (*(v1 + 8))(v4, v14);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218680664(&qword_27CC06FF8, &qword_27CC06FE0, &qword_2186B9318);
  v11 = v15;
  sub_2186B799C();

  (*(v16 + 8))(v9, v11);
  swift_beginAccess();
  sub_2186B795C();
  swift_endAccess();
}

uint64_t sub_21868B560()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_2186B74BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v5 + 104))(v10, *MEMORY[0x277D0CC48], v4);
    v13 = sub_2186B7B7C();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    (*(v5 + 16))(v8, v10, v4);
    v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v12;
    (*(v5 + 32))(&v15[v14], v8, v4);
    v16 = v12;
    sub_21869BCBC(0, 0, v3, &unk_2186B9328, v15);

    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

id GKGameActivity.init(definition:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDefinition_];

  return v2;
}

uint64_t GKGameActivity.init(definition:)(void *a1)
{
  v2 = v1;
  v103 = *MEMORY[0x277D85DE8];
  v82 = sub_2186B794C();
  v81 = *(v82 - 8);
  v4 = *(v81 + 64);
  v5 = MEMORY[0x28223BE20](v82);
  v79 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v74 - v7;
  v78 = sub_2186B757C();
  v77 = *(v78 - 8);
  v8 = *(v77 + 64);
  v9 = MEMORY[0x28223BE20](v78);
  v76 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v74 - v11;
  v12 = sub_2186B74BC();
  v93 = *(v12 - 8);
  v94 = v12;
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v12);
  v92 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2186B74FC();
  v87 = *(v90 - 8);
  v15 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2186B701C();
  v17 = *(v83 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v83);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2186B704C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromObject = swift_getObjCClassFromObject();
  v95 = v2;
  ObjectType = swift_getObjectType();
  v27 = objc_opt_self();
  v28 = a1;
  v97 = [v27 localPlayer];
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  v96 = qword_2811ED610;
  v29 = [v28 defaultProperties];
  v98 = v28;
  sub_2186B79BC();

  v88 = objc_allocWithZone(ObjCClassFromObject);
  sub_2186B703C();
  sub_2186B702C();
  (*(v22 + 8))(v25, v21);
  v86 = sub_2186B79FC();

  v85 = sub_2186B79AC();

  sub_2186B700C();
  v84 = sub_2186B6FEC();
  (*(v17 + 8))(v20, v83);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
  v83 = sub_2186B7B8C();
  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
  v30 = sub_2186B7B8C();
  sub_2186B71CC();
  v31 = sub_2186B79FC();

  v32 = sub_2186B7B8C();
  sub_2186A6594(MEMORY[0x277D84F90]);
  v33 = sub_2186B79AC();

  v34 = v87;
  v35 = v89;
  v36 = v90;
  (*(v87 + 104))(v89, *MEMORY[0x277D0CD18], v90);
  sub_2186B74EC();
  (*(v34 + 8))(v35, v36);
  v37 = sub_2186B79FC();

  v100 = 0;
  LOBYTE(v73) = 0;
  v38 = v83;
  v39 = v86;
  v40 = v85;
  v41 = v84;
  v42 = [v88 initWithIdentifier:v86 activityDefinition:v98 properties:v85 state:0 partyCode:0 creationDate:v84 startDate:0.0 lastResumeDate:0 endDate:0 duration:0 achievements:v83 leaderboardScores:v30 creator:v97 initiatedByApple:v73 referralLeaderboard:0 referralAchievement:0 participants:v32 participantStates:v33 shortGroupID:v31 consumptionState:v37 support:v96 error:&v100];

  v43 = v100;
  if (v42)
  {
    v45 = v92;
    v44 = v93;
    v46 = v94;
    (*(v93 + 104))(v92, *MEMORY[0x277D0CC10], v94);
    v47 = v43;
    v48 = v42;
    sub_21868D6FC(v45);
    v49 = v98;

    (*(v44 + 8))(v45, v46);
    swift_deallocPartialClassInstance();
    v50 = *MEMORY[0x277D85DE8];
    return v48;
  }

  else
  {
    v52 = v100;
    v53 = sub_2186B6F7C();

    swift_willThrow();
    v102 = v53;
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
    if (swift_dynamicCast())
    {
      v55 = v76;
      (*(v77 + 32))(v76, v75, v78);
      v56 = sub_2186832A8(v55);
      v57 = sub_21867F9D4();
      (*(v81 + 16))(v80, v57, v82);
      v58 = v56;
      v59 = sub_2186B792C();
      v60 = sub_2186B7BEC();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412290;
        v63 = v58;
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 4) = v64;
        *v62 = v64;
        _os_log_impl(&dword_21867D000, v59, v60, "Failed to initialize GKGameActivity: %@", v61, 0xCu);
        sub_21867F0B8(v62, &qword_27CC06D90, &qword_2186B8C70);
        MEMORY[0x21CEB1A70](v62, -1, -1);
        MEMORY[0x21CEB1A70](v61, -1, -1);
      }

      (*(v81 + 8))(v80, v82);
      v100 = 0;
      v101 = 0xE000000000000000;
      sub_2186B7D4C();
      MEMORY[0x21CEB1070](0xD000000000000025, 0x80000002186B9980);
      v99 = v58;
      type metadata accessor for GKError(0);
      sub_2186B7DDC();
    }

    else
    {

      v65 = sub_21867F9D4();
      (*(v81 + 16))(v79, v65, v82);
      v66 = v53;
      v67 = sub_2186B792C();
      v68 = sub_2186B7BEC();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        v71 = v53;
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 4) = v72;
        *v70 = v72;
        _os_log_impl(&dword_21867D000, v67, v68, "Failed to initialize GKGameActivity: %@", v69, 0xCu);
        sub_21867F0B8(v70, &qword_27CC06D90, &qword_2186B8C70);
        MEMORY[0x21CEB1A70](v70, -1, -1);
        MEMORY[0x21CEB1A70](v69, -1, -1);
      }

      (*(v81 + 8))(v79, v82);
      v100 = 0;
      v101 = 0xE000000000000000;
      sub_2186B7D4C();
      MEMORY[0x21CEB1070](0xD000000000000025, 0x80000002186B9980);
      swift_getErrorValue();
      sub_2186B7E4C();
    }

    result = sub_2186B7DEC();
    __break(1u);
  }

  return result;
}

id sub_21868C4A4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v97 = a4;
  v98 = a1;
  v100[1] = *MEMORY[0x277D85DE8];
  v8 = sub_2186B74BC();
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v8);
  v86 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2186B74FC();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  MEMORY[0x28223BE20](v11);
  v93 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2186B701C();
  v91 = *(v14 - 8);
  v15 = *(v91 + 64);
  MEMORY[0x28223BE20](v14);
  v90 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2186B704C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2186B794C();
  v89 = *(v96 - 1);
  v22 = *(v89 + 64);
  v23 = MEMORY[0x28223BE20](v96);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v82 - v26;
  if (!a3)
  {
    v85 = a2;
    v96 = a5;
    v31 = 0;
    v33 = v98;
    goto LABEL_6;
  }

  v84 = v14;
  v28 = a5;
  v29 = sub_2186B7A2C();
  v31 = v30;

  v85 = v29;
  valid = _sSo14GKGameActivityC7GameKitE16isValidPartyCodeySbSSFZ_0();

  if (valid)
  {
    v33 = v98;
    v34 = v28;
    if ([v98 supportsPartyCode])
    {
      v96 = v28;
      v14 = v84;
LABEL_6:
      v35 = [v33 defaultProperties];
      sub_2186B79BC();

      sub_2186B703C();
      sub_2186B702C();
      (*(v18 + 8))(v21, v17);
      v89 = sub_2186B79FC();

      v84 = sub_2186B79AC();

      if (v31)
      {
        v85 = sub_2186B79FC();
      }

      else
      {
        v85 = 0;
      }

      v92 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v44 = v90;
      sub_2186B700C();
      v83 = sub_2186B6FEC();
      (*(v91 + 8))(v44, v14);
      sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
      sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
      v91 = sub_2186B7B8C();
      sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
      sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
      v45 = sub_2186B7B8C();
      sub_2186B71CC();
      v46 = sub_2186B79FC();

      v47 = sub_2186B7B8C();
      v82 = v47;
      sub_2186A6594(MEMORY[0x277D84F90]);
      v48 = sub_2186B79AC();
      v90 = v48;

      v49 = v93;
      v50 = v94;
      v51 = v95;
      (*(v94 + 104))(v93, *MEMORY[0x277D0CD18], v95);
      sub_2186B74EC();
      (*(v50 + 8))(v49, v51);
      v52 = sub_2186B79FC();

      v100[0] = 0;
      v80 = v48;
      v81 = v46;
      v53 = v46;
      v79 = v47;
      LOBYTE(v78) = 0;
      v77 = v45;
      v54 = v45;
      v55 = v91;
      v56 = v89;
      v57 = v84;
      v58 = v85;
      v59 = v83;
      v60 = [v92 initWithIdentifier:v89 activityDefinition:v98 properties:v84 state:0 partyCode:v85 creationDate:v83 startDate:0.0 lastResumeDate:0 endDate:0 duration:0 achievements:v91 leaderboardScores:v77 creator:v97 initiatedByApple:v78 referralLeaderboard:0 referralAchievement:0 participants:v79 participantStates:v80 shortGroupID:v81 consumptionState:v52 support:v96 error:v100];

      v61 = v100[0];
      if (v60)
      {
        v63 = v86;
        v62 = v87;
        v64 = v88;
        (*(v87 + 104))(v86, *MEMORY[0x277D0CC10], v88);
        v65 = v61;
        v43 = v60;
        sub_21868D6FC(v63);

        (*(v62 + 8))(v63, v64);
      }

      else
      {
        v43 = v100[0];
        sub_2186B6F7C();

        swift_willThrow();
      }

      goto LABEL_18;
    }

    v66 = sub_21867F9D4();
    v67 = v89;
    v68 = v96;
    (*(v89 + 16))(v27, v66, v96);
    v69 = sub_2186B792C();
    v70 = sub_2186B7BEC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = v34;
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_21867D000, v69, v70, "Party code is not supported for this activity.", v72, 2u);
      v73 = v72;
      v34 = v71;
      v33 = v98;
      MEMORY[0x21CEB1A70](v73, -1, -1);
    }

    (*(v67 + 8))(v27, v68);
    type metadata accessor for GKError(0);
    v43 = v74;
    v99 = 17;
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError);
    sub_2186B6F5C();
    swift_willThrow();
  }

  else
  {

    v36 = sub_21867F9D4();
    v37 = v89;
    v38 = v96;
    (*(v89 + 16))(v25, v36, v96);
    v39 = sub_2186B792C();
    v40 = sub_2186B7BEC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_21867D000, v39, v40, "Invalid party code provided.", v41, 2u);
      MEMORY[0x21CEB1A70](v41, -1, -1);
    }

    (*(v37 + 8))(v25, v38);
    type metadata accessor for GKError(0);
    v43 = v42;
    v99 = 17;
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError);
    sub_2186B6F5C();
    swift_willThrow();
  }

LABEL_18:
  v75 = *MEMORY[0x277D85DE8];
  return v43;
}

void static GKGameActivity.start(definition:partyCode:)(uint64_t a1)
{
  if (qword_2811ED5E0 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = MEMORY[0x28223BE20](a1);
  type metadata accessor for GKGameActivity(v2);
  sub_2186832AC(sub_2186A66BC);
}

void static GKGameActivity.start(definition:)(uint64_t a1)
{
  if (qword_2811ED5E0 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = MEMORY[0x28223BE20](a1);
  type metadata accessor for GKGameActivity(v2);
  sub_2186832AC(sub_2186A8670);
}

Swift::Void __swiftcall GKGameActivity.start()()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_2186A66F0();
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_21868D4AC()
{
  v0 = sub_2186B74BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_2186B709C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(v12 + 104))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0CA40]);
  sub_2186B720C();
  sub_2186B700C();
  v13 = sub_2186B701C();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_2186B729C();
  sub_2186B728C();
  sub_2186B714C();
  (*(v1 + 104))(v4, *MEMORY[0x277D0CC60], v0);
  sub_21868D6FC(v4);
  return (*(v1 + 8))(v4, v0);
}

void sub_21868D6FC(uint64_t a1)
{
  v3 = sub_2186B74BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v20 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v10 = [v1 lastUpdateTime];
  [v20 timeIntervalSinceDate_];
  v12 = v11;

  if (v12 >= 2.0)
  {
    v15 = sub_2186B7B7C();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    (*(v4 + 16))(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v16 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v1;
    (*(v4 + 32))(&v17[v16], &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v18 = v1;
    sub_21869BCBC(0, 0, v9, &unk_2186B9450, v17);

    [v18 setLastUpdateTime_];
  }

  else
  {
    v13 = *&v1[OBJC_IVAR___GKGameActivity_updateTrigger];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E58, &unk_2186B9020);
    sub_218680664(&qword_27CC070E0, &qword_27CC06E58, &unk_2186B9020);
    sub_2186B797C();
    v14 = v20;
  }
}

Swift::Void __swiftcall GKGameActivity.pause()()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_2186A671C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_21868DB48(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_2186B74BC();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2186B794C();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = sub_2186B701C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v24 = sub_2186B709C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  (*(v27 + 104))(&v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0CA48]);
  sub_2186B720C();
  sub_2186B713C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21867F0B8(v15, &qword_27CC06F08, &qword_2186B90A8);
    v28 = sub_21867F9D4();
    v29 = v40;
    (*(v5 + 16))(v8, v28, v40);
    v30 = sub_2186B792C();
    v31 = sub_2186B7BEC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_21867D000, v30, v31, "Failed to pause game activity: last resume date is nil.", v32, 2u);
      MEMORY[0x21CEB1A70](v32, -1, -1);
    }

    return (*(v5 + 8))(v8, v29);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    sub_2186B700C();
    sub_2186B6FDC();
    v34 = *(v17 + 8);
    v34(v21, v16);
    sub_2186B7EFC();
    v35 = sub_2186B724C();
    sub_2186B7EEC();
    v35(v45, 0);
    (*(v17 + 56))(v13, 1, 1, v16);
    sub_2186B714C();
    v37 = v42;
    v36 = v43;
    v38 = v44;
    (*(v43 + 104))(v42, *MEMORY[0x277D0CC50], v44);
    sub_21868D6FC(v37);
    (*(v36 + 8))(v37, v38);
    return (v34)(v23, v16);
  }
}

Swift::Void __swiftcall GKGameActivity.resume()()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_2186A6748();
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_21868E1B8()
{
  v0 = sub_2186B74BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_2186B709C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(v12 + 104))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0CA40]);
  sub_2186B720C();
  sub_2186B700C();
  v13 = sub_2186B701C();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  sub_2186B714C();
  (*(v1 + 104))(v4, *MEMORY[0x277D0CC58], v0);
  sub_21868D6FC(v4);
  return (*(v1 + 8))(v4, v0);
}

Swift::Void __swiftcall GKGameActivity.end()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = v34 - v3;
  v4 = *&v0[OBJC_IVAR___GKGameActivity__instanceSnapshot];
  v37 = v0;
  v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  sub_2186A6774(v4 + v5);
  v34[3] = 0;
  os_unfair_lock_unlock((v4 + v6));
  v36 = v0;
  v7 = [v0 achievements];
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  v8 = sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
  v9 = sub_2186B7B9C();

  v34[2] = v8;
  if ((v9 & 0xC000000000000001) != 0)
  {
    sub_2186B7CBC();
    sub_2186B7BBC();
    v9 = aBlock[7];
    v10 = aBlock[8];
    v11 = aBlock[9];
    v12 = aBlock[10];
    v13 = aBlock[11];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);
  }

  v34[1] = v11;
  v17 = (v11 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
LABEL_18:
      sub_2186A67A0();
      v24 = objc_opt_self();
      v25 = v36;
      v26 = [v36 achievements];
      v27 = sub_2186B7B9C();

      sub_21868EF08(v27);

      v28 = sub_2186B7A9C();

      aBlock[4] = sub_21868F174;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21868F364;
      aBlock[3] = &block_descriptor_2;
      v29 = _Block_copy(aBlock);
      [v24 reportAchievements:v28 withCompletionHandler:v29];
      _Block_release(v29);

      v30 = sub_2186B7B7C();
      v31 = v35;
      (*(*(v30 - 8) + 56))(v35, 1, 1, v30);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v25;
      v33 = v25;
      sub_218685DF8(0, 0, v31, &unk_2186B9038, v32);

      return;
    }

    while (1)
    {
      [v22 setShowsCompletionBanner_];

      v12 = v20;
      v13 = v21;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v23 = sub_2186B7CEC();
      if (v23)
      {
        v38 = v23;
        swift_dynamicCast();
        v22 = aBlock[0];
        v20 = v12;
        v21 = v13;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_21868E93C(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v2 = sub_2186B794C();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2186B74BC();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2186B701C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v45 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  v24 = sub_2186B709C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  (*(v27 + 104))(&v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0CA38]);
  sub_2186B720C();
  sub_2186B700C();
  v47 = *(v9 + 56);
  v47(v23, 0, 1, v8);
  sub_2186B723C();
  sub_2186B728C();
  v28 = *(v9 + 48);
  v29 = v28(v21, 1, v8);
  sub_21867F0B8(v21, &qword_27CC06F08, &qword_2186B90A8);
  if (v29 == 1)
  {
    v30 = sub_21867F9D4();
    v32 = v48;
    v31 = v49;
    v33 = v50;
    (*(v49 + 16))(v48, v30, v50);
    v34 = sub_2186B792C();
    v35 = sub_2186B7BEC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_21867D000, v34, v35, "Failed to end game activity: start date is nil.", v36, 2u);
      MEMORY[0x21CEB1A70](v36, -1, -1);
    }

    return (*(v31 + 8))(v32, v33);
  }

  else
  {
    sub_2186B713C();
    if (v28(v18, 1, v8) == 1)
    {
      sub_21867F0B8(v18, &qword_27CC06F08, &qword_2186B90A8);
    }

    else
    {
      v38 = v46;
      (*(v9 + 32))(v46, v18, v8);
      v39 = v45;
      sub_2186B700C();
      sub_2186B6FDC();
      v40 = *(v9 + 8);
      v40(v39, v8);
      sub_2186B7EFC();
      v41 = sub_2186B724C();
      sub_2186B7EEC();
      v41(v55, 0);
      v40(v38, v8);
    }

    v47(v23, 1, 1, v8);
    sub_2186B714C();
    v43 = v51;
    v42 = v52;
    v44 = v53;
    (*(v52 + 104))(v51, *MEMORY[0x277D0CC40], v53);
    sub_21868D6FC(v43);
    return (*(v42 + 8))(v43, v44);
  }
}

uint64_t sub_21868EF08(uint64_t a1)
{
  v1 = a1;
  v21 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
    result = sub_2186B7BBC();
    v1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v12 - 1) & v12;
    if (!*(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12))))))
    {
LABEL_20:
      sub_2186A67A0();
      return v10;
    }

    while (1)
    {
      MEMORY[0x21CEB10A0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2186B7ACC();
      }

      result = sub_2186B7AEC();
      v10 = v21;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2186B7CEC())
      {
        sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
        swift_dynamicCast();
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21868F174(void *a1)
{
  v2 = sub_2186B794C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21867F9D4();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_2186B792C();
  v10 = sub_2186B7BEC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = a1;
    v19 = v12;
    *v11 = 136315138;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E18, qword_2186B8FB8);
    v14 = sub_2186B7A1C();
    v16 = sub_2186864E8(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_21867D000, v9, v10, "Failed to report achievements on activity end, due to error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x21CEB1A70](v12, -1, -1);
    MEMORY[0x21CEB1A70](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_21868F364(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_21868F3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_2186B794C();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21868F490, 0, 0);
}

void sub_21868F490()
{
  v1 = [*(v0 + 104) leaderboardScores];
  *(v0 + 136) = sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
  v2 = sub_2186B7B9C();

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_2186B7CBC();
    sub_2186B7BBC();
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    *(v0 + 152) = v3;
    *(v0 + 160) = v4;
    *(v0 + 144) = v2;
    if (v2 < 0)
    {
      v18 = sub_2186B7CEC();
      if (!v18)
      {
LABEL_19:
        v20 = *(v0 + 152);
        v21 = *(v0 + 160);
        v22 = *(v0 + 144);
        v23 = *(v0 + 128);
        sub_2186A67A0();

        v24 = *(v0 + 8);

        v24();
        return;
      }

      v19 = *(v0 + 136);
      *(v0 + 96) = v18;
      swift_dynamicCast();
      v15 = *(v0 + 88);
      v11 = v5;
      v14 = v6;
LABEL_13:
      *(v0 + 176) = v11;
      *(v0 + 184) = v14;
      *(v0 + 168) = v15;
      if (v15)
      {
        v16 = swift_task_alloc();
        *(v0 + 192) = v16;
        *(v16 + 16) = v15;
        v17 = swift_task_alloc();
        *(v0 + 200) = v17;
        *v17 = v0;
        v17[1] = sub_21868F77C;

        sub_218682BE4(v17, &unk_2186B9438);
        return;
      }

      goto LABEL_19;
    }

    v7 = v4 + 64;
  }

  else
  {
    v5 = 0;
    v8 = -1;
    v9 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v6 = v8 & *(v2 + 56);
    *(v0 + 152) = v3;
    *(v0 + 160) = ~v9;
    *(v0 + 144) = v2;
    v7 = 63 - v9;
  }

  v10 = v6;
  v11 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v10 - 1) & v10;
    v15 = *(*(v2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    goto LABEL_13;
  }

  v12 = v7 >> 6;
  v13 = v5;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_19;
    }

    v10 = *(v3 + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_21868F77C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_21868FA90;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_21868F898;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_21868F898()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  if (v3 < 0)
  {
    v9 = sub_2186B7CEC();
    if (!v9)
    {
LABEL_14:
      v13 = *(v0 + 152);
      v14 = *(v0 + 160);
      v15 = *(v0 + 144);
      v16 = *(v0 + 128);
      sub_2186A67A0();

      v17 = *(v0 + 8);

      v17();
      return;
    }

    v10 = *(v0 + 136);
    *(v0 + 96) = v9;
    swift_dynamicCast();
    v8 = *(v0 + 88);
    v5 = v1;
    v7 = v2;
LABEL_10:
    *(v0 + 176) = v5;
    *(v0 + 184) = v7;
    *(v0 + 168) = v8;
    if (v8)
    {
      v11 = swift_task_alloc();
      *(v0 + 192) = v11;
      *(v11 + 16) = v8;
      v12 = swift_task_alloc();
      *(v0 + 200) = v12;
      *v12 = v0;
      v12[1] = sub_21868F77C;

      sub_218682BE4(v12, &unk_2186B9438);
      return;
    }

    goto LABEL_14;
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 176);
  if (v2)
  {
LABEL_7:
    v7 = (v4 - 1) & v4;
    v8 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v4)))));
    goto LABEL_10;
  }

  v6 = *(v0 + 176);
  while (1)
  {
    v5 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v5 >= ((*(v0 + 160) + 64) >> 6))
    {
      goto LABEL_14;
    }

    v4 = *(*(v0 + 152) + 8 * v5);
    ++v6;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_21868FA90()
{
  v56 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);

  v7 = sub_21867F9D4();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = v1;
  v10 = sub_2186B792C();
  v11 = sub_2186B7BEC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 208);
    v13 = *(v0 + 168);
    v51 = v12;
    v52 = v13;
    v14 = *(v0 + 120);
    v53 = *(v0 + 112);
    v54 = *(v0 + 128);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v55 = v16;
    *v15 = 136315394;
    v17 = [v13 leaderboardID];
    v18 = sub_2186B7A0C();
    v20 = v19;

    v21 = sub_2186864E8(v18, v20, &v55);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v22 = *(v0 + 56);
    v23 = *(*(v0 + 64) - 8);
    v24 = *(v23 + 64) + 15;
    swift_task_alloc();
    (*(v23 + 16))();
    v25 = sub_2186B7A1C();
    v27 = v26;

    v28 = sub_2186864E8(v25, v27, &v55);

    *(v15 + 14) = v28;
    _os_log_impl(&dword_21867D000, v10, v11, "Failed to report score on activity end for leaderboard %s, due to error: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEB1A70](v16, -1, -1);
    MEMORY[0x21CEB1A70](v15, -1, -1);

    result = (*(v14 + 8))(v54, v53);
  }

  else
  {
    v30 = *(v0 + 208);
    v32 = *(v0 + 120);
    v31 = *(v0 + 128);
    v33 = *(v0 + 112);

    result = (*(v32 + 8))(v31, v33);
  }

  v34 = *(v0 + 176);
  v35 = *(v0 + 184);
  v36 = *(v0 + 144);
  if (v36 < 0)
  {
    v42 = sub_2186B7CEC();
    if (!v42)
    {
LABEL_17:
      v46 = *(v0 + 152);
      v47 = *(v0 + 160);
      v48 = *(v0 + 144);
      v49 = *(v0 + 128);
      sub_2186A67A0();

      v50 = *(v0 + 8);

      return v50();
    }

    v43 = *(v0 + 136);
    *(v0 + 96) = v42;
    swift_dynamicCast();
    v41 = *(v0 + 88);
    v38 = v34;
    v40 = v35;
LABEL_13:
    *(v0 + 176) = v38;
    *(v0 + 184) = v40;
    *(v0 + 168) = v41;
    if (v41)
    {
      v44 = swift_task_alloc();
      *(v0 + 192) = v44;
      *(v44 + 16) = v41;
      v45 = swift_task_alloc();
      *(v0 + 200) = v45;
      *v45 = v0;
      v45[1] = sub_21868F77C;

      return sub_218682BE4(v45, &unk_2186B9438);
    }

    goto LABEL_17;
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 176);
  if (v35)
  {
LABEL_10:
    v40 = (v37 - 1) & v37;
    v41 = *(*(v36 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
    goto LABEL_13;
  }

  v39 = *(v0 + 176);
  while (1)
  {
    v38 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v38 >= ((*(v0 + 160) + 64) >> 6))
    {
      goto LABEL_17;
    }

    v37 = *(*(v0 + 152) + 8 * v38);
    ++v39;
    if (v37)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21868FF24(uint64_t a1, uint64_t a2)
{
  v2[18] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070D8, &unk_2186B9440);
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21868FFF0, 0, 0);
}

uint64_t sub_21868FFF0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v1[18];
  v18 = objc_opt_self();
  v17 = [v6 value];
  v16 = [v6 context];
  v7 = [v6 player];
  v1[22] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2186B8F70;
  v9 = [v6 leaderboardID];
  v10 = sub_2186B7A0C();
  v12 = v11;

  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = sub_2186B7A9C();
  v1[23] = v13;

  v1[2] = v1;
  v1[3] = sub_218690288;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  sub_2186B7B1C();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_218690494;
  v1[13] = &block_descriptor_195;
  [v18 submitScore:v17 context:v16 player:v7 leaderboardIDs:v13 completionHandler:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_218690288()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_21869040C;
  }

  else
  {
    v3 = sub_218690398;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_218690398()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21869040C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[24];

  return v5();
}

void sub_218690494(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070D8, &unk_2186B9440);
    sub_2186B7B2C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070D8, &unk_2186B9440);
    sub_2186B7B3C();
  }
}

Swift::Void __swiftcall GKGameActivity.setScore(on:to:context:)(GKLeaderboard on, Swift::Int to, Swift::Int context)
{
  v4 = v3;
  v8 = sub_2186B74BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_opt_self() localPlayer];
  if ([v4 state] == 4)
  {
    v13 = v24;
  }

  else
  {
    v23 = v8;
    v14 = [objc_allocWithZone(off_278236548) init];
    v15 = [(objc_class *)on.super.isa baseLeaderboardID];
    if (!v15)
    {
      sub_2186B7A0C();
      v15 = sub_2186B79FC();
    }

    v16 = sub_2186B7A0C();
    v18 = v17;
    [v14 setLeaderboardID_];

    [v14 setValue_];
    [v14 setContext_];
    v19 = [v14 setPlayer_];
    v20 = *&v4[OBJC_IVAR___GKGameActivity__leaderboardScores];
    MEMORY[0x28223BE20](v19);
    *(&v22 - 4) = v16;
    *(&v22 - 3) = v18;
    *(&v22 - 2) = v14;
    os_unfair_lock_lock((v20 + 24));
    sub_2186A683C((v20 + 16));
    os_unfair_lock_unlock((v20 + 24));

    v21 = v23;
    (*(v9 + 104))(v12, *MEMORY[0x277D0CC30], v23);
    sub_21868D6FC(v12);

    (*(v9 + 8))(v12, v21);
  }
}

Swift::Void __swiftcall GKGameActivity.setScore(on:to:)(GKLeaderboard on, Swift::Int to)
{
  v5 = sub_2186B74BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() localPlayer];
  if ([v2 state] == 4)
  {
    v10 = v21;
  }

  else
  {
    v20 = v5;
    v11 = [objc_allocWithZone(off_278236548) init];
    v12 = [(objc_class *)on.super.isa baseLeaderboardID];
    if (!v12)
    {
      sub_2186B7A0C();
      v12 = sub_2186B79FC();
    }

    v13 = sub_2186B7A0C();
    v15 = v14;
    [v11 setLeaderboardID_];

    [v11 setValue_];
    [v11 setContext_];
    v16 = [v11 setPlayer_];
    v17 = *&v2[OBJC_IVAR___GKGameActivity__leaderboardScores];
    MEMORY[0x28223BE20](v16);
    *(&v19 - 4) = v13;
    *(&v19 - 3) = v15;
    *(&v19 - 2) = v11;
    os_unfair_lock_lock((v17 + 24));
    sub_2186A870C((v17 + 16));
    os_unfair_lock_unlock((v17 + 24));

    v18 = v20;
    (*(v6 + 104))(v9, *MEMORY[0x277D0CC30], v20);
    sub_21868D6FC(v9);

    (*(v6 + 8))(v9, v18);
  }
}

GKLeaderboardScore_optional __swiftcall GKGameActivity.score(on:)(GKLeaderboard on)
{
  v2 = [v1 leaderboardScores];
  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
  v3 = sub_2186B7B9C();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    v4 = sub_2186B7BBC();
    v6 = v38;
    v7 = v39;
    v8 = v40;
    v9 = v41;
    v10 = v42;
  }

  else
  {
    v11 = -1 << *(v3 + 32);
    v7 = v3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v3 + 56);

    v9 = 0;
    v6 = v3;
  }

  v34 = v8;
  v14 = (v8 + 64) >> 6;
  while (v6 < 0)
  {
    if (!sub_2186B7CEC())
    {
LABEL_26:
      v22 = 0;
LABEL_27:
      sub_2186A67A0();

      v4 = v22;
      goto LABEL_30;
    }

    swift_dynamicCast();
    v22 = v37;
    v20 = v9;
    v21 = v10;
    if (!v37)
    {
      goto LABEL_27;
    }

LABEL_20:
    v36 = v21;
    v23 = v6;
    v24 = [(objc_class *)v22 leaderboardID];
    v25 = sub_2186B7A0C();
    v27 = v26;

    v28 = [(objc_class *)on.super.isa baseLeaderboardID];
    v29 = sub_2186B7A0C();
    v31 = v30;

    if (v25 == v29 && v27 == v31)
    {

      v6 = v23;
    }

    else
    {
      v33 = sub_2186B7E5C();

      v6 = v23;
      if ((v33 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_2186804FC(0, &qword_27CC06E80, 0x277D82BB8);
    v15 = [(objc_class *)v22 player];
    v16 = [objc_opt_self() localPlayer];
    v17 = sub_2186B7C4C();

    if (v17)
    {
      goto LABEL_27;
    }

LABEL_10:

    v9 = v20;
    v10 = v36;
  }

  v18 = v9;
  v19 = v10;
  v20 = v9;
  if (v10)
  {
LABEL_16:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v14)
    {
      goto LABEL_26;
    }

    v19 = *(v7 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  result.value.super.isa = v4;
  result.is_nil = v5;
  return result;
}

Swift::Void __swiftcall GKGameActivity.removeScores(from:)(Swift::OpaquePointer from)
{
  v2 = sub_2186B74BC();
  v21 = *(v2 - 8);
  v22 = v2;
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (from._rawValue >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2186B7CCC())
  {
    v6 = 0;
    v25 = from._rawValue & 0xC000000000000001;
    v23 = OBJC_IVAR___GKGameActivity__leaderboardScores;
    v24 = from._rawValue & 0xFFFFFFFFFFFFFF8;
    while (v25)
    {
      v7 = MEMORY[0x21CEB1380](v6, from._rawValue);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v9 = v7;
      v10 = [v7 baseLeaderboardID];
      v11 = sub_2186B7A0C();
      v13 = v12;

      v27 = &v19;
      v14 = *(v26 + v23);
      MEMORY[0x28223BE20](v15);
      *(&v19 - 2) = v11;
      *(&v19 - 1) = v13;
      os_unfair_lock_lock((v14 + 24));
      sub_2186A685C((v14 + 16));
      os_unfair_lock_unlock((v14 + 24));

      ++v6;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    if (v6 >= *(v24 + 16))
    {
      goto LABEL_12;
    }

    v7 = *(from._rawValue + v6 + 4);
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v17 = v20;
  v16 = v21;
  v18 = v22;
  (*(v21 + 104))(v20, *MEMORY[0x277D0CC30], v22);
  sub_21868D6FC(v17);
  (*(v16 + 8))(v17, v18);
}

void sub_2186911E4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
    sub_2186B7BBC();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v19 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        a1(&v25);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_2186B7CEC())
        {
          break;
        }

        sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_2186A67A0();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_218691430(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
    sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
    sub_2186B7BBC();
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      do
      {
        v23 = v16;
        sub_21869EC34(&v23, a2);

        if (v3)
        {
          break;
        }

        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_2186B7CEC())
        {
          break;
        }

        sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
        swift_dynamicCast();
        v16 = v23;
        v14 = v7;
        v15 = v8;
      }

      while (v23);
    }

LABEL_19:
    sub_2186A67A0();
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall GKGameActivity.setProgress(on:to:)(GKAchievement on, Swift::Double to)
{
  v5 = sub_2186B794C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (to > 100.0 || to < 0.0)
  {
    v12 = sub_21867F9D4();
    (*(v6 + 16))(v10, v12, v5);
    v13 = sub_2186B792C();
    v14 = sub_2186B7BEC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21867D000, v13, v14, "Invalid progress complete value provided.", v15, 2u);
      MEMORY[0x21CEB1A70](v15, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v11 = *(v2 + OBJC_IVAR___GKGameActivity__achievements);
    MEMORY[0x28223BE20](v8);
    *&v16[-32] = on;
    *&v16[-24] = to;
    *&v16[-16] = v2;
    os_unfair_lock_lock(v11 + 6);
    sub_2186A6968(&v11[4]);
    os_unfair_lock_unlock(v11 + 6);
  }
}

uint64_t sub_2186918B8(double a1, uint64_t a2, void *a3)
{
  v5 = sub_2186B74BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  [a3 setPercentComplete_];
  sub_2186A2278(&v12, a3, &qword_27CC06E60, &off_278236520, &qword_27CC070A0, &qword_2186B93D8);

  (*(v6 + 104))(v9, *MEMORY[0x277D0CC38], v5);
  sub_21868D6FC(v9);
  return (*(v6 + 8))(v9, v5);
}

Swift::Double __swiftcall GKGameActivity.progress(on:)(GKAchievement on)
{
  v2 = [v1 achievements];
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
  v3 = sub_2186B7B9C();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    sub_2186B7BBC();
    v3 = v37;
    v5 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
  }

  v33 = v6;
  v12 = (v6 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_2186B7CEC() || (swift_dynamicCast(), v20 = v36, v18 = v7, v19 = v8, !v36))
    {
LABEL_26:
      sub_2186A67A0();

      return 0.0;
    }

LABEL_20:
    v35 = v19;
    v21 = [v20 identifier];
    v22 = sub_2186B7A0C();
    v24 = v23;

    v25 = [(objc_class *)on.super.isa identifier];
    v26 = sub_2186B7A0C();
    v28 = v27;

    if (v22 == v26 && v24 == v28)
    {
    }

    else
    {
      v30 = sub_2186B7E5C();

      if ((v30 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_2186804FC(0, &qword_27CC06E80, 0x277D82BB8);
    v13 = [v20 player];
    v14 = [objc_opt_self() localPlayer];
    v15 = sub_2186B7C4C();

    if (v15)
    {
      sub_2186A67A0();

      [v20 percentComplete];
      v32 = v31;

      return v32;
    }

LABEL_10:

    v7 = v18;
    v8 = v35;
  }

  v16 = v7;
  v17 = v8;
  v18 = v7;
  if (v8)
  {
LABEL_16:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v12)
    {
      goto LABEL_26;
    }

    v17 = *(v5 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall GKGameActivity.removeAchievements(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + OBJC_IVAR___GKGameActivity__achievements);
  os_unfair_lock_lock((v2 + 24));
  sub_2186A699C((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_218691F10(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v5 = sub_2186B74BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2186A6114(*a1, &qword_27CC06E60, &off_278236520, &qword_27CC06E68);

  v10 = sub_2186A6CA4(&v15, a2);

  if (v15 >> 62)
  {
    result = sub_2186B7CCC();
    v12 = result;
    if (result >= v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= v10)
    {
LABEL_3:
      sub_2186A7F6C(v10, v12, &qword_27CC06E60, &off_278236520);
      v13 = sub_2186A6F40(v15);

      *a1 = v13;
      (*(v6 + 104))(v9, *MEMORY[0x277D0CC38], v5);
      sub_21868D6FC(v9);
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

id sub_2186921A0()
{
  v0 = sub_2186B794C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  return sub_218692390();
}

id sub_218692390()
{
  v1 = v0;
  v2 = [v0 activityDefinition];
  GKGameActivityDefinition.playerRange.getter(v12);

  if (!v12[3])
  {
    sub_21867F0B8(v12, &qword_27CC06FB0, &unk_2186B92D0);
LABEL_8:
    type metadata accessor for GKError(0);
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError);
    sub_2186B6F5C();
    swift_willThrow();
    return v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FB8, &qword_2186B94D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FC0, &qword_2186B92E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = [v1 partyCode];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  sub_2186B7A0C();

  v5 = sub_2186B766C();
  v7 = v6;

  if (v7)
  {
    goto LABEL_8;
  }

  v1 = [v1 activityDefinition];
  v8 = [v1 supportsPartyCode];

  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

  v1 = [objc_allocWithZone(off_278236560) init];
  [v1 setMinPlayers_];
  [v1 setMaxPlayers_];
  [v1 setPlayerGroup_];
  return v1;
}

uint64_t sub_218692608()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FC8, &qword_2186B9310);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186926D4, 0, 0);
}

uint64_t sub_2186926D4()
{
  v1 = v0[19];
  v2 = sub_218692390();
  v0[23] = v2;
  v3 = v2;
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  v7 = [objc_opt_self() sharedMatchmaker];
  v0[24] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_218692930;
  swift_continuation_init();
  v0[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_2186804FC(0, &qword_27CC06FD0, &off_278236558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  sub_2186B7B1C();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_218692A40;
  v0[13] = &block_descriptor_133;
  [v7 findMatchForRequest:v3 withCompletionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_218692930()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_2186A8650;
  }

  else
  {
    v3 = sub_2186A8704;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_218692A40(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FC8, &qword_2186B9310);
    sub_2186B7B2C();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FC8, &qword_2186B9310);
    sub_2186B7B3C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218692C64(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_218692D0C;

  return sub_218692608();
}

uint64_t sub_218692D0C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_2186B6F6C();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_218692EAC()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F38, &qword_2186B90D8);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218692F78, 0, 0);
}

uint64_t sub_218692F78()
{
  v1 = v0[19];
  v2 = sub_218692390();
  v0[23] = v2;
  v3 = v2;
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  v7 = [objc_opt_self() sharedMatchmaker];
  v0[24] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2186931D0;
  swift_continuation_init();
  v0[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F70, &qword_2186B9128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  sub_2186B7B1C();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2186933E4;
  v0[13] = &block_descriptor_114;
  [v7 findPlayersForHostedRequest:v3 withCompletionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2186931D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_218693364;
  }

  else
  {
    v3 = sub_2186932E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2186932E0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);

  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_218693364()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[25];
  v5 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21869357C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_218693624;

  return sub_218692EAC();
}

uint64_t sub_218693624()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_2186B6F6C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_2186804FC(0, &qword_27CC06FA8, &off_278236570);
    v10 = sub_2186B7A9C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_2186937C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_218693860;

  return sub_21867F778();
}

uint64_t sub_218693860(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_21869395C()
{
  (*(v0[8] + 8))(v0[11], v0[7]);
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[6];
  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

id GKGameActivity.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_218693BCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for GKGameActivity(a1);
  v11 = objc_opt_self();

  result = sub_21868C4A4(a1, a2, a3, [v11 localPlayer], a4);
  if (!v5)
  {
    v13 = result;
    result = [result start];
    *a5 = v13;
  }

  return result;
}

uint64_t sub_218693CAC()
{
  v1[2] = v0;
  v2 = sub_2186B74BC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218693D6C, 0, 0);
}

uint64_t sub_218693D6C()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D0CC18], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_218693E28;
  v2 = v0[5];
  v3 = v0[2];

  return sub_218693F80(v2);
}

uint64_t sub_218693E28()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_218693F80(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2186B794C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218694040, 0, 0);
}

uint64_t sub_218694040()
{
  *(v0 + 56) = [*(v0 + 24) support];
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2186940F4;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_21869B514(v3, v2);
}

uint64_t sub_2186940F4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218694238, 0, 0);
  }

  else
  {

    v4 = *(v3 + 48);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_218694238()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  v5 = sub_21867F9D4();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_2186B792C();
  v8 = sub_2186B7BEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 72);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21867D000, v7, v8, "Failed to asynchronously update game activity: %@", v11, 0xCu);
    sub_21867F0B8(v12, &qword_27CC06D90, &qword_2186B8C70);
    MEMORY[0x21CEB1A70](v12, -1, -1);
    MEMORY[0x21CEB1A70](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v15 = *(v0 + 48);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2186943E0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_2186B74BC();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_2186B74FC();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = sub_2186B72AC();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218694558, 0, 0);
}

uint64_t sub_218694558()
{
  sub_218680D68(v0[10], (v0 + 2));
  sub_2186804FC(0, &qword_27CC06FA0, 0x277CBEA90);
  if (swift_dynamicCast())
  {
    v1 = v0[19];
    v0[20] = v0[6];
    sub_2186B74AC();
    v8 = v0[19];
    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D0CD20], v0[14]);
    sub_2186B716C();
    if (qword_2811ED5E0 != -1)
    {
      swift_once();
    }

    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    v12 = qword_2811ED610;
    v0[21] = qword_2811ED610;
    (*(v10 + 104))(v9, *MEMORY[0x277D0CC28], v11);
    v13 = *(v12 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service + 24);
    v14 = *(v12 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service + 32);
    __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service), v13);
    v15 = *(MEMORY[0x277D0CBA0] + 4);
    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_218694808;
    v17 = v0[19];
    v18 = v0[13];

    return MEMORY[0x282164880](v17, v18, v13, v14);
  }

  else
  {
    type metadata accessor for GKError(0);
    v0[8] = 17;
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError);
    sub_2186B6F5C();
    v2 = v0[7];
    swift_willThrow();
    v3 = v0[19];
    v4 = v0[16];
    v5 = v0[13];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_218694808()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_218694AF4;
  }

  else
  {
    v3 = sub_21869491C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21869491C()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_2186949CC;
  v2 = v0[21];
  v3 = v0[19];

  return sub_218694F00(v3);
}

uint64_t sub_2186949CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_218694C78;
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = sub_218694BB4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_218694AF4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  (*(v0[12] + 8))(v0[13], v0[11]);

  (*(v4 + 8))(v1, v3);
  v5 = v0[23];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_218694BB4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);

  (*(v4 + 8))(v2, v3);
  *v7 = v1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_218694C78()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 200);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_218694D20(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_218694D44, 0, 0);
}

uint64_t sub_218694D44()
{
  v1 = (v0[4] + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = *(MEMORY[0x277D0CBA0] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_218694E0C;
  v7 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282164880](v7, v6, v2, v3);
}

uint64_t sub_218694E0C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_218694F00(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2[60] = a1;
  v2[61] = v1;
  v3 = sub_2186B74FC();
  v2[62] = v3;
  v4 = *(v3 - 8);
  v2[63] = v4;
  v5 = *(v4 + 64) + 15;
  v2[64] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8) - 8) + 64) + 15;
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v7 = sub_2186B701C();
  v2[68] = v7;
  v8 = *(v7 - 8);
  v2[69] = v8;
  v9 = *(v8 + 64) + 15;
  v2[70] = swift_task_alloc();
  v10 = sub_2186B709C();
  v2[71] = v10;
  v11 = *(v10 - 8);
  v2[72] = v11;
  v12 = *(v11 + 64) + 15;
  v2[73] = swift_task_alloc();
  v13 = sub_2186B794C();
  v2[74] = v13;
  v14 = *(v13 - 8);
  v2[75] = v14;
  v15 = *(v14 + 64) + 15;
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F10, &qword_2186B90B0);
  v2[78] = v16;
  v17 = *(v16 - 8);
  v2[79] = v17;
  v18 = *(v17 + 64) + 15;
  v2[80] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F18, &qword_2186B90B8);
  v2[81] = v19;
  v20 = *(v19 - 8);
  v2[82] = v20;
  v21 = *(v20 + 64) + 15;
  v2[83] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F20, &qword_2186B90C0);
  v2[84] = v22;
  v23 = *(v22 - 8);
  v2[85] = v23;
  v24 = *(v23 + 64) + 15;
  v2[86] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F28, &qword_2186B90C8);
  v2[87] = v25;
  v26 = *(v25 - 8);
  v2[88] = v26;
  v27 = *(v26 + 64) + 15;
  v2[89] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F30, &qword_2186B90D0) - 8) + 64) + 15;
  v2[90] = swift_task_alloc();
  v29 = sub_2186B73DC();
  v2[91] = v29;
  v30 = *(v29 - 8);
  v2[92] = v30;
  v31 = *(v30 + 64) + 15;
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F38, &qword_2186B90D8);
  v2[95] = v32;
  v33 = *(v32 - 8);
  v2[96] = v33;
  v34 = *(v33 + 64) + 15;
  v2[97] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v2[98] = v35;
  v36 = *(v35 - 8);
  v2[99] = v36;
  v37 = *(v36 + 64) + 15;
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v38 = sub_2186B73CC();
  v2[102] = v38;
  v39 = *(v38 - 8);
  v2[103] = v39;
  v40 = *(v39 + 64) + 15;
  v2[104] = swift_task_alloc();
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F48, &unk_2186B9500) - 8);
  v2[105] = v41;
  v42 = *(v41 + 64) + 15;
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v43 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_218695550, 0, 0);
}

uint64_t sub_218695550()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[60];
  v2 = (v0[61] + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F50, &qword_2186B90F0);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F58, &qword_2186B90F8) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v0[109] = v8;
  *(v8 + 16) = xmmword_2186B8F70;
  sub_2186B712C();
  v9 = *(MEMORY[0x277D0CBC8] + 4);
  v10 = swift_task_alloc();
  v0[110] = v10;
  *v10 = v0;
  v10[1] = sub_2186956F8;
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2821648A8](v8, v3, v4);
}

uint64_t sub_2186956F8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 880);
  v10 = *v2;
  v3[111] = a1;
  v3[112] = v1;

  if (v1)
  {
    v5 = sub_21869993C;
  }

  else
  {
    v6 = v3[109];

    v5 = sub_21869584C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21869584C()
{
  v51 = *MEMORY[0x277D85DE8];
  v1 = v0[111];
  if (!*(v1 + 16))
  {
    v9 = v0[111];

    goto LABEL_5;
  }

  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[103];
  v6 = v0[102];
  v7 = *(v0[105] + 80);
  sub_2186A7D78(v1 + ((v7 + 32) & ~v7), v3, &qword_27CC06F48, &unk_2186B9500);

  sub_2186A7CC4(v3, v2, &qword_27CC06F48, &unk_2186B9500);
  sub_2186A7D78(v2, v4, &qword_27CC06F48, &unk_2186B9500);
  if ((*(v5 + 48))(v4, 1, v6) == 1)
  {
    v8 = v0[106];
    sub_21867F0B8(v0[108], &qword_27CC06F48, &unk_2186B9500);
    sub_21867F0B8(v8, &qword_27CC06F48, &unk_2186B9500);
LABEL_5:
    v10 = v0[76];
    v11 = v0[75];
    v12 = v0[74];
    v13 = sub_21867F9D4();
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_2186B792C();
    v15 = sub_2186B7BEC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21867D000, v14, v15, "Invalid game activity definition.", v16, 2u);
      MEMORY[0x21CEB1A70](v16, -1, -1);
    }

    v17 = v0[76];
    v18 = v0[75];
    v19 = v0[74];

    (*(v18 + 8))(v17, v19);
    type metadata accessor for GKError(0);
    v0[51] = 17;
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError);
    sub_2186B6F5C();
    v38 = v0[50];
    swift_willThrow();
    v20 = v0[108];
    v21 = v0[107];
    v22 = v0[106];
    v23 = v0[104];
    v24 = v0[101];
    v25 = v0[100];
    v26 = v0[97];
    v27 = v0[94];
    v28 = v0[93];
    v29 = v0[90];
    v39 = v0[89];
    v40 = v0[86];
    v41 = v0[83];
    v42 = v0[80];
    v43 = v0[77];
    v44 = v0[76];
    v45 = v0[73];
    v46 = v0[70];
    v47 = v0[67];
    v48 = v0[66];
    v49 = v0[65];
    v50 = v0[64];

    v30 = v0[1];
    v31 = *MEMORY[0x277D85DE8];

    return v30();
  }

  v33 = v0[60];
  (*(v0[103] + 32))(v0[104], v0[106], v0[102]);
  v0[113] = sub_2186AA094();
  v34 = sub_2186B70FC();
  v0[114] = v34;
  v0[53] = MEMORY[0x277D84F90];
  v35 = swift_task_alloc();
  v0[115] = v35;
  v36 = sub_2186B749C();
  v0[116] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F60, &qword_2186B9108);
  *v35 = v0;
  v35[1] = sub_218695D7C;
  v37 = *MEMORY[0x277D85DE8];

  return sub_2186843A8((v0 + 52), v34, (v0 + 53), &unk_2186B9100, 0, sub_21869FACC, 0, v36);
}

uint64_t sub_218695D7C()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 920);
  v9 = *v1;
  *(*v1 + 936) = v0;

  v4 = *(v2 + 912);

  if (v0)
  {
    v5 = sub_218699B10;
  }

  else
  {
    v5 = sub_218695ED4;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218695ED4()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[60];
  v0[118] = v0[52];
  v2 = sub_2186B70FC();
  v0[119] = v2;
  v0[55] = MEMORY[0x277D84F90];
  v3 = swift_task_alloc();
  v0[120] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F68, &qword_2186B9118);
  *v3 = v0;
  v3[1] = sub_21869601C;
  v4 = v0[116];
  v5 = *MEMORY[0x277D85DE8];

  return sub_2186843A8((v0 + 54), v2, (v0 + 55), &unk_2186B9110, 0, sub_2186A063C, 0, v4);
}

uint64_t sub_21869601C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 960);
  v10 = *v1;
  *(*v1 + 968) = v0;

  v4 = *(v2 + 952);
  if (v0)
  {
    v5 = *(v2 + 944);

    v6 = sub_218699D24;
  }

  else
  {

    v6 = sub_218696180;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_218696180()
{
  v53 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 968);
  v2 = *(v0 + 808);
  v3 = *(v0 + 480);
  *(v0 + 976) = *(v0 + 432);
  *(v0 + 984) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2186B8F70;
  sub_2186B721C();
  v5 = sub_2186B787C();
  *(v0 + 992) = v1;
  if (v1)
  {
    v7 = *(v0 + 944);
    v50 = *(v0 + 864);
    v8 = *(v0 + 832);
    v9 = *(v0 + 824);
    v10 = *(v0 + 816);
    v11 = *(v0 + 808);
    v12 = *(v0 + 792);
    v13 = *(v0 + 784);

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
    sub_21867F0B8(v50, &qword_27CC06F48, &unk_2186B9500);
    *(v4 + 16) = 0;

    v14 = *(v0 + 864);
    v15 = *(v0 + 856);
    v16 = *(v0 + 848);
    v17 = *(v0 + 832);
    v18 = *(v0 + 808);
    v19 = *(v0 + 800);
    v20 = *(v0 + 776);
    v21 = *(v0 + 752);
    v22 = *(v0 + 744);
    v37 = *(v0 + 720);
    v38 = *(v0 + 712);
    v39 = *(v0 + 688);
    v40 = *(v0 + 664);
    v41 = *(v0 + 640);
    v42 = *(v0 + 616);
    v43 = *(v0 + 608);
    v44 = *(v0 + 584);
    v45 = *(v0 + 560);
    v46 = *(v0 + 536);
    v48 = *(v0 + 528);
    v51 = *(v0 + 520);
    v23 = *(v0 + 512);

    v24 = *(v0 + 8);
    v25 = *MEMORY[0x277D85DE8];

    return v24();
  }

  else
  {
    v27 = v5;
    v28 = v6;
    v29 = *(v0 + 808);
    v30 = *(v0 + 792);
    v31 = *(v0 + 784);
    v49 = *(v0 + 776);
    v32 = *(v0 + 768);
    v47 = *(v0 + 760);
    v52 = objc_opt_self();
    v33 = *(v30 + 8);
    *(v0 + 1000) = v33;
    *(v0 + 1008) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v29, v31);
    *(v4 + 32) = v27;
    *(v4 + 40) = v28;
    v34 = sub_2186B7A9C();
    *(v0 + 1016) = v34;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 448;
    *(v0 + 24) = sub_218696664;
    swift_continuation_init();
    *(v0 + 264) = v47;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F70, &qword_2186B9128);
    *(v0 + 1024) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
    sub_2186B7B1C();
    (*(v32 + 32))(boxed_opaque_existential_0, v49, v47);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2186933E4;
    *(v0 + 232) = &block_descriptor_20;
    [v52 loadPlayersForIdentifiersPrivate:v34 withCompletionHandler:?];
    (*(v32 + 8))(boxed_opaque_existential_0, v47);
    v36 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_218696664()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1032) = v3;
  if (v3)
  {
    v4 = *(v1 + 976);
    v5 = *(v1 + 944);

    v6 = sub_218699F38;
  }

  else
  {
    v6 = sub_2186967B4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2186967B4()
{
  v236 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 448);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 448);
    }

    if (sub_2186B7CCC())
    {
      goto LABEL_3;
    }

LABEL_10:

    v3 = 0;
    goto LABEL_11;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_74:
    v2 = MEMORY[0x21CEB1380](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;

LABEL_11:
  *(v0 + 1040) = v3;
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 480);

  sub_2186B717C();
  if ((*(v5 + 48))(v7, 1, v6) != 1)
  {
    v15 = *(v0 + 752);
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = *(v0 + 728);
    (*(v17 + 32))(v15, *(v0 + 720), v18);
    (*(v17 + 16))(v16, v15, v18);
    v19 = (*(v17 + 88))(v16, v18);
    if (v19 == *MEMORY[0x277D0CB90])
    {
      v20 = *(v0 + 992);
      v21 = *(v0 + 984);
      v22 = *(v0 + 744);
      v23 = *(v0 + 664);
      v24 = *(v0 + 656);
      v25 = *(v0 + 648);
      (*(*(v0 + 736) + 96))(v22, *(v0 + 728));
      (*(v24 + 32))(v23, v22, v25);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_2186B8F70;
      v27 = sub_2186B783C();
      *(v0 + 1080) = v20;
      if (v20)
      {
        v29 = *(v0 + 976);
        v30 = *(v0 + 944);
        v222 = *(v0 + 832);
        v228 = *(v0 + 864);
        v31 = *(v0 + 824);
        v212 = *(v0 + 752);
        v216 = *(v0 + 816);
        v32 = *(v0 + 736);
        v207 = *(v0 + 728);
        v33 = *(v0 + 664);
        v34 = *(v0 + 656);
        v35 = *(v0 + 648);

        (*(v34 + 8))(v33, v35);
        (*(v32 + 8))(v212, v207);
        (*(v31 + 8))(v222, v216);
        sub_21867F0B8(v228, &qword_27CC06F48, &unk_2186B9500);
        *(v26 + 16) = 0;

LABEL_66:
        v151 = *(v0 + 864);
        v152 = *(v0 + 856);
        v153 = *(v0 + 848);
        v154 = *(v0 + 832);
        v155 = *(v0 + 808);
        v156 = *(v0 + 800);
        v157 = *(v0 + 776);
        v158 = *(v0 + 752);
        v159 = *(v0 + 744);
        v160 = *(v0 + 720);
        v190 = *(v0 + 712);
        v193 = *(v0 + 688);
        v196 = *(v0 + 664);
        v199 = *(v0 + 640);
        v201 = *(v0 + 616);
        v204 = *(v0 + 608);
        v206 = *(v0 + 584);
        v211 = *(v0 + 560);
        v215 = *(v0 + 536);
        v221 = *(v0 + 528);
        v227 = *(v0 + 520);
        v234 = *(v0 + 512);

        v161 = *(v0 + 8);
        v162 = *MEMORY[0x277D85DE8];

        return v161();
      }

      v67 = v27;
      v68 = v28;
      v69 = v0 + 80;
      v218 = *(v0 + 1024);
      v70 = *(v0 + 640);
      v71 = *(v0 + 632);
      v72 = *(v0 + 624);
      v230 = objc_opt_self();
      *(v26 + 32) = v67;
      *(v26 + 40) = v68;
      v73 = sub_2186B7A9C();
      *(v0 + 1088) = v73;

      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 464;
      *(v0 + 88) = sub_218698AE8;
      swift_continuation_init();
      *(v0 + 328) = v72;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F78, &qword_2186B9130);
      sub_2186B7B1C();
      (*(v71 + 32))(boxed_opaque_existential_0, v70, v72);
      *(v0 + 272) = MEMORY[0x277D85DD0];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_2186A06D8;
      *(v0 + 296) = &block_descriptor_24;
      [v230 loadLeaderboardsWithIDs:v73 completionHandler:?];
      (*(v71 + 8))(boxed_opaque_existential_0, v72);
    }

    else
    {
      if (v19 != *MEMORY[0x277D0CB98])
      {
        v52 = *(v0 + 616);
        v53 = *(v0 + 600);
        v54 = *(v0 + 592);
        v55 = sub_21867F9D4();
        (*(v53 + 16))(v52, v55, v54);
        v56 = sub_2186B792C();
        v57 = sub_2186B7BEC();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_21867D000, v56, v57, "Unknown referral found for game activity.", v58, 2u);
          MEMORY[0x21CEB1A70](v58, -1, -1);
        }

        v59 = *(v0 + 752);
        v60 = *(v0 + 744);
        v61 = *(v0 + 736);
        v62 = *(v0 + 728);
        v63 = *(v0 + 616);
        v64 = *(v0 + 600);
        v65 = *(v0 + 592);

        (*(v64 + 8))(v63, v65);
        v66 = *(v61 + 8);
        v66(v59, v62);
        v66(v60, v62);
        goto LABEL_13;
      }

      v36 = *(v0 + 992);
      v37 = *(v0 + 744);
      v38 = *(v0 + 712);
      v39 = *(v0 + 704);
      v40 = *(v0 + 696);
      (*(*(v0 + 736) + 96))(v37, *(v0 + 728));
      (*(v39 + 32))(v38, v37, v40);
      v41 = sub_2186B785C();
      *(v0 + 1048) = v36;
      *(v0 + 1056) = v41;
      *(v0 + 1064) = v42;
      if (v36)
      {
        v43 = *(v0 + 976);
        v44 = *(v0 + 944);
        v223 = *(v0 + 832);
        v229 = *(v0 + 864);
        v45 = *(v0 + 824);
        v213 = *(v0 + 752);
        v217 = *(v0 + 816);
        v46 = *(v0 + 736);
        v47 = *(v0 + 728);
        v48 = *(v0 + 712);
        v49 = *(v0 + 704);
        v50 = *(v0 + 696);

        (*(v49 + 8))(v48, v50);
        (*(v46 + 8))(v213, v47);
        (*(v45 + 8))(v223, v217);
        v51 = v229;
LABEL_65:
        sub_21867F0B8(v51, &qword_27CC06F48, &unk_2186B9500);
        goto LABEL_66;
      }

      v69 = v0 + 144;
      v163 = *(v0 + 1024);
      v164 = *(v0 + 688);
      v165 = *(v0 + 680);
      v166 = *(v0 + 672);
      v235 = objc_opt_self();
      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 472;
      *(v0 + 152) = sub_218697BC8;
      swift_continuation_init();
      *(v0 + 392) = v166;
      v167 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F80, &qword_2186B9138);
      sub_2186B7B1C();
      (*(v165 + 32))(v167, v164, v166);
      *(v0 + 336) = MEMORY[0x277D85DD0];
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_2186A06B4;
      *(v0 + 360) = &block_descriptor_27;
      [v235 loadAchievementDescriptionsWithCompletionHandler_];
      (*(v165 + 8))(v167, v166);
    }

    v168 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v69);
  }

  sub_21867F0B8(*(v0 + 720), &qword_27CC06F30, &qword_2186B90D0);
LABEL_13:
  v9 = *(v0 + 992);
  v10 = *(v0 + 584);
  v11 = *(v0 + 576);
  v12 = *(v0 + 568);
  v13 = *(v0 + 480);
  sub_2186B71EC();
  sub_2186B70BC();
  sub_2186B71FC();
  v14 = (*(v11 + 88))(v10, v12);
  if (v14 == *MEMORY[0x277D0CA40])
  {
    v202 = 1;
  }

  else if (v14 == *MEMORY[0x277D0CA48])
  {
    v202 = 2;
  }

  else if (v14 == *MEMORY[0x277D0CA38])
  {
    v202 = 4;
  }

  else
  {
    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    v202 = 0;
  }

  v75 = *(v0 + 1040);
  v76 = *(v0 + 976);
  v77 = *(v0 + 944);
  v78 = *(v0 + 560);
  v79 = *(v0 + 536);
  v80 = *(v0 + 528);
  v81 = *(v0 + 520);
  v82 = *(v0 + 480);
  sub_2186B727C();
  v181 = v83;
  sub_2186B70DC();
  sub_2186B728C();
  sub_2186B713C();
  sub_2186B722C();
  sub_2186B725C();
  sub_2186B7EDC();
  v85 = v84;
  sub_2186A6F40(v77);

  sub_2186A70E0(v76);

  if (v75)
  {
    v86 = *(v0 + 1040);
    v87 = v86;
  }

  else
  {
    v87 = [objc_opt_self() localPlayer];
    v86 = 0;
  }

  v214 = v87;
  v88 = *(v0 + 792);
  v1 = *(v0 + 480);
  v205 = v86;
  v194 = sub_2186B71AC();
  v89 = sub_2186B70EC();
  v90 = v89 + 56;
  v91 = -1;
  v92 = -1 << *(v89 + 32);
  if (-v92 < 64)
  {
    v91 = ~(-1 << -v92);
  }

  v93 = v91 & *(v89 + 56);
  v94 = (63 - v92) >> 6;
  v224 = v88;
  v231 = v89;

  v95 = 0;
  v208 = MEMORY[0x277D84F90];
  while (1)
  {
    v96 = v95;
    if (!v93)
    {
      break;
    }

LABEL_40:
    v97 = __clz(__rbit64(v93));
    v93 &= v93 - 1;
    (*(v224 + 16))(*(v0 + 800), *(v231 + 48) + *(v224 + 72) * (v97 | (v95 << 6)), *(v0 + 784));
    v98 = sub_2186B787C();
    v100 = *(v0 + 1008);
    v101 = *(v0 + 1000);
    v1 = *(v0 + 800);
    v102 = *(v0 + 784);
    if (v9)
    {

      v101(v1, v102);
      v9 = 0;
    }

    else
    {
      v103 = v99;
      v179 = v98;
      v101(v1, v102);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v208 = sub_2186A17E4(0, *(v208 + 2) + 1, 1, v208);
      }

      v105 = *(v208 + 2);
      v104 = *(v208 + 3);
      v1 = v105 + 1;
      v106 = v179;
      if (v105 >= v104 >> 1)
      {
        v109 = sub_2186A17E4((v104 > 1), v105 + 1, 1, v208);
        v107 = v103;
        v208 = v109;
        v106 = v179;
      }

      else
      {
        v107 = v103;
      }

      v9 = 0;
      *(v208 + 2) = v1;
      v108 = &v208[16 * v105];
      *(v108 + 4) = v106;
      *(v108 + 5) = v107;
    }
  }

  while (1)
  {
    v95 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v95 >= v94)
    {
      break;
    }

    v93 = *(v90 + 8 * v95);
    ++v96;
    if (v93)
    {
      goto LABEL_40;
    }
  }

  v111 = *(v0 + 504);
  v110 = *(v0 + 512);
  v112 = *(v0 + 496);
  v113 = *(v0 + 480);

  sub_2186A7280(v208);

  v114 = sub_2186B71BC();
  sub_2186A06FC(v114);

  sub_2186B711C();
  (*(v111 + 104))(v110, *MEMORY[0x277D0CD18], v112);
  sub_2186B74EC();
  (*(v111 + 8))(v110, v112);
  v225 = sub_2186B79FC();

  v219 = sub_2186B79AC();

  if (v181)
  {
    v209 = sub_2186B79FC();
  }

  else
  {
    v209 = 0;
  }

  v115 = *(v0 + 560);
  v116 = *(v0 + 552);
  v117 = *(v0 + 544);
  v118 = *(v0 + 536);
  v188 = sub_2186B6FEC();
  v119 = *(v116 + 48);
  if (v119(v118, 1, v117) == 1)
  {
    v186 = 0;
  }

  else
  {
    v120 = *(v0 + 552);
    v121 = *(v0 + 544);
    v122 = *(v0 + 536);
    v186 = sub_2186B6FEC();
    (*(v120 + 8))(v122, v121);
  }

  v123 = *(v0 + 544);
  v124 = *(v0 + 528);
  if (v119(v124, 1, v123) == 1)
  {
    v184 = 0;
  }

  else
  {
    v125 = *(v0 + 552);
    v184 = sub_2186B6FEC();
    (*(v125 + 8))(v124, v123);
    v123 = *(v0 + 544);
  }

  v126 = *(v0 + 520);
  if (v119(v126, 1, v123) == 1)
  {
    v182 = 0;
  }

  else
  {
    v127 = *(v0 + 552);
    v182 = sub_2186B6FEC();
    (*(v127 + 8))(v126, v123);
  }

  v173 = *(v0 + 904);
  v128 = *(v0 + 488);
  v129 = objc_allocWithZone(GKGameActivity);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
  v171 = sub_2186B7B8C();

  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
  v191 = sub_2186B7B8C();

  v197 = sub_2186B7B8C();

  v170 = sub_2186B79AC();

  v130 = sub_2186B79FC();

  v131 = sub_2186B79FC();

  *(v0 + 456) = 0;
  LOBYTE(v169) = v194 & 1;
  v232 = [v129 initWithIdentifier:v225 activityDefinition:v173 properties:v219 state:v202 partyCode:v209 creationDate:v188 startDate:v85 lastResumeDate:v186 endDate:v184 duration:v182 achievements:v171 leaderboardScores:v191 creator:v214 initiatedByApple:v169 referralLeaderboard:0 referralAchievement:0 participants:v197 participantStates:v170 shortGroupID:v130 consumptionState:v131 support:v128 error:v0 + 456];

  v132 = *(v0 + 456);
  v133 = *(v0 + 904);
  v134 = *(v0 + 864);
  if (!v232)
  {
    v145 = *(v0 + 832);
    v146 = *(v0 + 824);
    v233 = *(v0 + 816);
    v147 = *(v0 + 560);
    v148 = *(v0 + 552);
    v149 = *(v0 + 544);
    v150 = v132;
    sub_2186B6F7C();

    swift_willThrow();
    (*(v148 + 8))(v147, v149);
    (*(v146 + 8))(v145, v233);
    v51 = v134;
    goto LABEL_65;
  }

  v172 = *(v0 + 856);
  v174 = *(v0 + 848);
  v135 = *(v0 + 832);
  v136 = *(v0 + 824);
  v137 = *(v0 + 816);
  v175 = *(v0 + 808);
  v176 = *(v0 + 800);
  v177 = *(v0 + 776);
  v178 = *(v0 + 752);
  v180 = *(v0 + 744);
  v183 = *(v0 + 720);
  v185 = *(v0 + 712);
  v187 = *(v0 + 688);
  v189 = *(v0 + 664);
  v192 = *(v0 + 640);
  v195 = *(v0 + 616);
  v198 = *(v0 + 608);
  v138 = *(v0 + 560);
  v139 = *(v0 + 552);
  v140 = *(v0 + 544);
  v200 = *(v0 + 584);
  v203 = *(v0 + 536);
  v210 = *(v0 + 528);
  v220 = *(v0 + 520);
  v226 = *(v0 + 512);
  v141 = v132;

  (*(v139 + 8))(v138, v140);
  (*(v136 + 8))(v135, v137);
  sub_21867F0B8(v134, &qword_27CC06F48, &unk_2186B9500);

  v142 = *(v0 + 8);
  v143 = *MEMORY[0x277D85DE8];

  return v142(v232);
}

uint64_t sub_218697BC8()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 1072) = v3;
  if (v3)
  {
    v4 = v1[133];
    v5 = v1[122];
    v6 = v1[118];

    v7 = sub_21869A15C;
  }

  else
  {
    v7 = sub_218697D2C;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_218697D2C()
{
  v175 = *MEMORY[0x277D85DE8];
  v1 = v0[59];
  if (v1 >> 62)
  {
LABEL_19:
    v2 = sub_2186B7CCC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x21CEB1380](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            goto LABEL_22;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(v1 + 8 * v3 + 32);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        v6 = v0[133];
        v7 = v0[132];
        v173 = v4;
        v8 = [v4 identifier];
        v9 = sub_2186B7A0C();
        v11 = v10;

        v12 = v0[133];
        if (v9 == v7 && v11 == v6)
        {
          goto LABEL_17;
        }

        v14 = v0[132];
        v15 = sub_2186B7E5C();

        if (v15)
        {
          goto LABEL_21;
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  v173 = 0;
LABEL_21:
  v16 = v0[133];
LABEL_22:
  v17 = v0[94];
  v18 = v0[92];
  v19 = v0[91];
  v20 = v0[89];
  v21 = v0[88];
  v22 = v0[87];

  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v17, v19);
  v23 = v0[131];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[71];
  v27 = v0[60];
  sub_2186B71EC();
  sub_2186B70BC();
  sub_2186B71FC();
  v28 = (*(v25 + 88))(v24, v26);
  if (v28 == *MEMORY[0x277D0CA40])
  {
    v150 = 1;
  }

  else if (v28 == *MEMORY[0x277D0CA48])
  {
    v150 = 2;
  }

  else if (v28 == *MEMORY[0x277D0CA38])
  {
    v150 = 4;
  }

  else
  {
    (*(v0[72] + 8))(v0[73], v0[71]);
    v150 = 0;
  }

  v29 = v0[130];
  v30 = v0[122];
  v31 = v0[118];
  v32 = v0[70];
  v33 = v0[67];
  v34 = v0[66];
  v35 = v0[65];
  v36 = v0[60];
  sub_2186B727C();
  v130 = v37;
  sub_2186B70DC();
  sub_2186B728C();
  sub_2186B713C();
  sub_2186B722C();
  sub_2186B725C();
  sub_2186B7EDC();
  v39 = v38;
  sub_2186A6F40(v31);

  sub_2186A70E0(v30);

  if (v29)
  {
    v40 = v0[130];
    v41 = v40;
  }

  else
  {
    v41 = [objc_opt_self() localPlayer];
    v40 = 0;
  }

  v159 = v41;
  v42 = v0[99];
  v43 = v0[60];
  v153 = v40;
  v142 = sub_2186B71AC();
  v44 = sub_2186B70EC();
  v45 = v44 + 56;
  v46 = -1;
  v47 = -1 << *(v44 + 32);
  if (-v47 < 64)
  {
    v46 = ~(-1 << -v47);
  }

  v48 = v46 & *(v44 + 56);
  v49 = (63 - v47) >> 6;
  v164 = v42;
  v169 = v44;

  v50 = 0;
  v155 = MEMORY[0x277D84F90];
  while (1)
  {
    v51 = v50;
    if (!v48)
    {
      break;
    }

LABEL_39:
    v52 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    (*(v164 + 16))(v0[100], *(v169 + 48) + *(v164 + 72) * (v52 | (v50 << 6)), v0[98]);
    v53 = sub_2186B787C();
    v55 = v0[126];
    v56 = v0[125];
    v57 = v0[100];
    v58 = v0[98];
    if (v23)
    {

      v56(v57, v58);
      v23 = 0;
    }

    else
    {
      v59 = v54;
      v127 = v53;
      v56(v57, v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v155 = sub_2186A17E4(0, *(v155 + 2) + 1, 1, v155);
      }

      v61 = *(v155 + 2);
      v60 = *(v155 + 3);
      v62 = v127;
      if (v61 >= v60 >> 1)
      {
        v65 = sub_2186A17E4((v60 > 1), v61 + 1, 1, v155);
        v63 = v59;
        v155 = v65;
        v62 = v127;
      }

      else
      {
        v63 = v59;
      }

      v23 = 0;
      *(v155 + 2) = v61 + 1;
      v64 = &v155[16 * v61];
      *(v64 + 4) = v62;
      *(v64 + 5) = v63;
    }
  }

  while (1)
  {
    v50 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
    }

    if (v50 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v50);
    ++v51;
    if (v48)
    {
      goto LABEL_39;
    }
  }

  v66 = v0[63];
  v67 = v0[64];
  v68 = v0[62];
  v69 = v0[60];

  sub_2186A7280(v155);

  v70 = sub_2186B71BC();
  sub_2186A06FC(v70);

  sub_2186B711C();
  (*(v66 + 104))(v67, *MEMORY[0x277D0CD18], v68);
  sub_2186B74EC();
  (*(v66 + 8))(v67, v68);
  v170 = sub_2186B79FC();

  v165 = sub_2186B79AC();

  if (v130)
  {
    v161 = sub_2186B79FC();
  }

  else
  {
    v161 = 0;
  }

  v71 = v0[70];
  v72 = v0[69];
  v73 = v0[68];
  v74 = v0[67];
  v156 = sub_2186B6FEC();
  v75 = *(v72 + 48);
  if (v75(v74, 1, v73) == 1)
  {
    v135 = 0;
  }

  else
  {
    v76 = v0[69];
    v77 = v0[68];
    v78 = v0[67];
    v135 = sub_2186B6FEC();
    (*(v76 + 8))(v78, v77);
  }

  v79 = v0[68];
  v80 = v0[66];
  if (v75(v80, 1, v79) == 1)
  {
    v137 = 0;
  }

  else
  {
    v81 = v0[69];
    v137 = sub_2186B6FEC();
    (*(v81 + 8))(v80, v79);
    v79 = v0[68];
  }

  v82 = v0[65];
  if (v75(v82, 1, v79) == 1)
  {
    v131 = 0;
  }

  else
  {
    v83 = v0[69];
    v131 = sub_2186B6FEC();
    (*(v83 + 8))(v82, v79);
  }

  v133 = v0[113];
  v84 = v0[61];
  v85 = objc_allocWithZone(GKGameActivity);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
  v120 = sub_2186B7B8C();

  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
  v139 = sub_2186B7B8C();

  v145 = sub_2186B7B8C();

  v128 = sub_2186B79AC();

  v86 = sub_2186B79FC();

  v87 = sub_2186B79FC();

  v0[57] = 0;
  LOBYTE(v118) = v142 & 1;
  v151 = [v85 initWithIdentifier:v170 activityDefinition:v133 properties:v165 state:v150 partyCode:v161 creationDate:v156 startDate:v39 lastResumeDate:v135 endDate:v137 duration:v131 achievements:v120 leaderboardScores:v139 creator:v159 initiatedByApple:v118 referralLeaderboard:0 referralAchievement:v173 participants:v145 participantStates:v128 shortGroupID:v86 consumptionState:v87 support:v84 error:v0 + 57];

  v88 = v0[57];
  v89 = v0[113];
  v171 = v0[108];
  if (v151)
  {
    v119 = v0[107];
    v121 = v0[106];
    v90 = v0[104];
    v91 = v0[103];
    v92 = v0[102];
    v122 = v0[101];
    v123 = v0[100];
    v124 = v0[97];
    v125 = v0[94];
    v126 = v0[93];
    v129 = v0[90];
    v132 = v0[89];
    v134 = v0[86];
    v136 = v0[83];
    v138 = v0[80];
    v140 = v0[77];
    v143 = v0[76];
    v93 = v0[70];
    v94 = v0[69];
    v95 = v0[68];
    v146 = v0[73];
    v148 = v0[67];
    v157 = v0[66];
    v162 = v0[65];
    v166 = v0[64];
    v96 = v88;

    (*(v94 + 8))(v93, v95);
    (*(v91 + 8))(v90, v92);
    sub_21867F0B8(v171, &qword_27CC06F48, &unk_2186B9500);

    v97 = v0[1];
    v98 = *MEMORY[0x277D85DE8];

    return v97(v151);
  }

  else
  {
    v167 = v0[104];
    v100 = v0[103];
    v101 = v0[102];
    v102 = v0[70];
    v103 = v0[69];
    v104 = v0[68];
    v105 = v88;
    sub_2186B6F7C();

    swift_willThrow();
    (*(v103 + 8))(v102, v104);
    (*(v100 + 8))(v167, v101);
    sub_21867F0B8(v171, &qword_27CC06F48, &unk_2186B9500);
    v106 = v0[108];
    v107 = v0[107];
    v108 = v0[106];
    v109 = v0[104];
    v110 = v0[101];
    v111 = v0[100];
    v112 = v0[97];
    v113 = v0[94];
    v114 = v0[93];
    v115 = v0[90];
    v141 = v0[89];
    v144 = v0[86];
    v147 = v0[83];
    v149 = v0[80];
    v152 = v0[77];
    v154 = v0[76];
    v158 = v0[73];
    v160 = v0[70];
    v163 = v0[67];
    v168 = v0[66];
    v172 = v0[65];
    v174 = v0[64];

    v116 = v0[1];
    v117 = *MEMORY[0x277D85DE8];

    return v116();
  }
}

uint64_t sub_218698AE8()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1096) = v3;
  if (v3)
  {
    v4 = *(v1 + 976);
    v5 = *(v1 + 944);

    v6 = sub_21869A3CC;
  }

  else
  {
    v6 = sub_218698C38;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_218698C38()
{
  v162 = *MEMORY[0x277D85DE8];
  v1 = v0[58];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = v0[58];
    }

    if (sub_2186B7CCC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
LABEL_56:
      v2 = MEMORY[0x21CEB1380](0, v1);
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v2 = *(v1 + 32);
    }

    v3 = v2;
    goto LABEL_11;
  }

  v3 = 0;
LABEL_11:
  v5 = v0[136];
  v6 = v0[94];
  v7 = v0[92];
  v8 = v0[91];
  v9 = v0[83];
  v10 = v0[82];
  v11 = v0[81];

  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);

  v12 = v0[135];
  v13 = v0[73];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[60];
  sub_2186B71EC();
  sub_2186B70BC();
  sub_2186B71FC();
  v17 = (*(v14 + 88))(v13, v15);
  v148 = v3;
  if (v17 == *MEMORY[0x277D0CA40])
  {
    v137 = 1;
  }

  else if (v17 == *MEMORY[0x277D0CA48])
  {
    v137 = 2;
  }

  else if (v17 == *MEMORY[0x277D0CA38])
  {
    v137 = 4;
  }

  else
  {
    (*(v0[72] + 8))(v0[73], v0[71]);
    v137 = 0;
  }

  v18 = v0[130];
  v19 = v0[122];
  v20 = v0[118];
  v21 = v0[70];
  v22 = v0[67];
  v23 = v0[66];
  v24 = v0[65];
  v25 = v0[60];
  sub_2186B727C();
  v119 = v26;
  sub_2186B70DC();
  sub_2186B728C();
  sub_2186B713C();
  sub_2186B722C();
  sub_2186B725C();
  sub_2186B7EDC();
  v28 = v27;
  sub_2186A6F40(v20);

  sub_2186A70E0(v19);

  if (v18)
  {
    v29 = v0[130];
    v30 = v29;
  }

  else
  {
    v30 = [objc_opt_self() localPlayer];
    v29 = 0;
  }

  v146 = v30;
  v31 = v0[99];
  v1 = v0[60];
  v140 = v29;
  v129 = sub_2186B71AC();
  v32 = sub_2186B70EC();
  v33 = v32 + 56;
  v34 = -1;
  v35 = -1 << *(v32 + 32);
  if (-v35 < 64)
  {
    v34 = ~(-1 << -v35);
  }

  v36 = v34 & *(v32 + 56);
  v37 = (63 - v35) >> 6;
  v153 = v31;
  v158 = v32;

  v38 = 0;
  v142 = MEMORY[0x277D84F90];
  while (1)
  {
    v39 = v38;
    if (!v36)
    {
      break;
    }

LABEL_28:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    (*(v153 + 16))(v0[100], *(v158 + 48) + *(v153 + 72) * (v40 | (v38 << 6)), v0[98]);
    v41 = sub_2186B787C();
    v43 = v0[126];
    v44 = v0[125];
    v1 = v0[100];
    v45 = v0[98];
    if (v12)
    {

      v44(v1, v45);
      v12 = 0;
    }

    else
    {
      v46 = v42;
      v115 = v41;
      v44(v1, v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = sub_2186A17E4(0, *(v142 + 2) + 1, 1, v142);
      }

      v48 = *(v142 + 2);
      v47 = *(v142 + 3);
      v1 = v48 + 1;
      v49 = v115;
      if (v48 >= v47 >> 1)
      {
        v52 = sub_2186A17E4((v47 > 1), v48 + 1, 1, v142);
        v50 = v46;
        v142 = v52;
        v49 = v115;
      }

      else
      {
        v50 = v46;
      }

      v12 = 0;
      *(v142 + 2) = v1;
      v51 = &v142[16 * v48];
      *(v51 + 4) = v49;
      *(v51 + 5) = v50;
    }
  }

  while (1)
  {
    v38 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v38 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v38);
    ++v39;
    if (v36)
    {
      goto LABEL_28;
    }
  }

  v54 = v0[63];
  v53 = v0[64];
  v55 = v0[62];
  v56 = v0[60];

  sub_2186A7280(v142);

  v57 = sub_2186B71BC();
  sub_2186A06FC(v57);

  sub_2186B711C();
  (*(v54 + 104))(v53, *MEMORY[0x277D0CD18], v55);
  sub_2186B74EC();
  (*(v54 + 8))(v53, v55);
  v150 = sub_2186B79FC();

  v154 = sub_2186B79AC();

  if (v119)
  {
    v143 = sub_2186B79FC();
  }

  else
  {
    v143 = 0;
  }

  v58 = v0[70];
  v59 = v0[69];
  v60 = v0[68];
  v61 = v0[67];
  v126 = sub_2186B6FEC();
  v62 = *(v59 + 48);
  if (v62(v61, 1, v60) == 1)
  {
    v124 = 0;
  }

  else
  {
    v63 = v0[69];
    v64 = v0[68];
    v65 = v0[67];
    v124 = sub_2186B6FEC();
    (*(v63 + 8))(v65, v64);
  }

  v66 = v0[68];
  v67 = v0[66];
  if (v62(v67, 1, v66) == 1)
  {
    v122 = 0;
  }

  else
  {
    v68 = v0[69];
    v122 = sub_2186B6FEC();
    (*(v68 + 8))(v67, v66);
    v66 = v0[68];
  }

  v69 = v0[65];
  if (v62(v69, 1, v66) == 1)
  {
    v120 = 0;
  }

  else
  {
    v70 = v0[69];
    v120 = sub_2186B6FEC();
    (*(v70 + 8))(v69, v66);
  }

  v109 = v0[113];
  v71 = v0[61];
  v72 = objc_allocWithZone(GKGameActivity);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
  v107 = sub_2186B7B8C();

  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
  v117 = sub_2186B7B8C();

  v132 = sub_2186B7B8C();

  v106 = sub_2186B79AC();

  v73 = sub_2186B79FC();

  v74 = sub_2186B79FC();

  v0[57] = 0;
  LOBYTE(v105) = v129 & 1;
  v159 = [v72 initWithIdentifier:v150 activityDefinition:v109 properties:v154 state:v137 partyCode:v143 creationDate:v126 startDate:v28 lastResumeDate:v124 endDate:v122 duration:v120 achievements:v107 leaderboardScores:v117 creator:v146 initiatedByApple:v105 referralLeaderboard:v148 referralAchievement:0 participants:v132 participantStates:v106 shortGroupID:v73 consumptionState:v74 support:v71 error:v0 + 57];

  v75 = v0[57];
  v76 = v0[113];
  v77 = v0[108];
  if (v159)
  {
    v108 = v0[107];
    v110 = v0[106];
    v78 = v0[104];
    v79 = v0[103];
    v80 = v0[102];
    v111 = v0[101];
    v112 = v0[100];
    v113 = v0[97];
    v114 = v0[94];
    v116 = v0[93];
    v118 = v0[90];
    v121 = v0[89];
    v123 = v0[86];
    v125 = v0[83];
    v127 = v0[80];
    v130 = v0[77];
    v133 = v0[76];
    v135 = v0[73];
    v81 = v0[70];
    v82 = v0[69];
    v83 = v0[68];
    v138 = v0[67];
    v144 = v0[66];
    v151 = v0[65];
    v155 = v0[64];
    v84 = v75;

    (*(v82 + 8))(v81, v83);
    (*(v79 + 8))(v78, v80);
    sub_21867F0B8(v77, &qword_27CC06F48, &unk_2186B9500);

    v85 = v0[1];
    v86 = *MEMORY[0x277D85DE8];

    return v85(v159);
  }

  else
  {
    v88 = v0[103];
    v156 = v0[102];
    v160 = v0[104];
    v89 = v0[70];
    v90 = v0[69];
    v91 = v0[68];
    v92 = v75;
    sub_2186B6F7C();

    swift_willThrow();
    (*(v90 + 8))(v89, v91);
    (*(v88 + 8))(v160, v156);
    sub_21867F0B8(v77, &qword_27CC06F48, &unk_2186B9500);
    v93 = v0[108];
    v94 = v0[107];
    v95 = v0[106];
    v96 = v0[104];
    v97 = v0[101];
    v98 = v0[100];
    v99 = v0[97];
    v100 = v0[94];
    v101 = v0[93];
    v102 = v0[90];
    v128 = v0[89];
    v131 = v0[86];
    v134 = v0[83];
    v136 = v0[80];
    v139 = v0[77];
    v141 = v0[76];
    v145 = v0[73];
    v147 = v0[70];
    v149 = v0[67];
    v152 = v0[66];
    v157 = v0[65];
    v161 = v0[64];

    v103 = v0[1];
    v104 = *MEMORY[0x277D85DE8];

    return v103();
  }
}

uint64_t sub_21869993C()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = v0[109];

  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[104];
  v6 = v0[101];
  v7 = v0[100];
  v8 = v0[97];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[90];
  v15 = v0[112];
  v16 = v0[89];
  v17 = v0[86];
  v18 = v0[83];
  v19 = v0[80];
  v20 = v0[77];
  v21 = v0[76];
  v22 = v0[73];
  v23 = v0[70];
  v24 = v0[67];
  v25 = v0[66];
  v26 = v0[65];
  v27 = v0[64];

  v12 = v0[1];
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_218699B10()
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 864);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);

  (*(v3 + 8))(v2, v4);
  sub_21867F0B8(v1, &qword_27CC06F48, &unk_2186B9500);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  v8 = *(v0 + 832);
  v9 = *(v0 + 808);
  v10 = *(v0 + 800);
  v11 = *(v0 + 776);
  v12 = *(v0 + 752);
  v13 = *(v0 + 744);
  v14 = *(v0 + 720);
  v18 = *(v0 + 936);
  v19 = *(v0 + 712);
  v20 = *(v0 + 688);
  v21 = *(v0 + 664);
  v22 = *(v0 + 640);
  v23 = *(v0 + 616);
  v24 = *(v0 + 608);
  v25 = *(v0 + 584);
  v26 = *(v0 + 560);
  v27 = *(v0 + 536);
  v28 = *(v0 + 528);
  v29 = *(v0 + 520);
  v30 = *(v0 + 512);

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_218699D24()
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 864);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);

  (*(v3 + 8))(v2, v4);
  sub_21867F0B8(v1, &qword_27CC06F48, &unk_2186B9500);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  v8 = *(v0 + 832);
  v9 = *(v0 + 808);
  v10 = *(v0 + 800);
  v11 = *(v0 + 776);
  v12 = *(v0 + 752);
  v13 = *(v0 + 744);
  v14 = *(v0 + 720);
  v18 = *(v0 + 968);
  v19 = *(v0 + 712);
  v20 = *(v0 + 688);
  v21 = *(v0 + 664);
  v22 = *(v0 + 640);
  v23 = *(v0 + 616);
  v24 = *(v0 + 608);
  v25 = *(v0 + 584);
  v26 = *(v0 + 560);
  v27 = *(v0 + 536);
  v28 = *(v0 + 528);
  v29 = *(v0 + 520);
  v30 = *(v0 + 512);

  v15 = *(v0 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_218699F38()
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = v0[129];
  v2 = v0[127];
  v3 = v0[113];
  v4 = v0[108];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[102];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  sub_21867F0B8(v4, &qword_27CC06F48, &unk_2186B9500);

  v8 = v0[108];
  v9 = v0[107];
  v10 = v0[106];
  v11 = v0[104];
  v12 = v0[101];
  v13 = v0[100];
  v14 = v0[97];
  v15 = v0[94];
  v16 = v0[93];
  v17 = v0[90];
  v21 = v0[129];
  v22 = v0[89];
  v23 = v0[86];
  v24 = v0[83];
  v25 = v0[80];
  v26 = v0[77];
  v27 = v0[76];
  v28 = v0[73];
  v29 = v0[70];
  v30 = v0[67];
  v31 = v0[66];
  v32 = v0[65];
  v33 = v0[64];

  v18 = v0[1];
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

uint64_t sub_21869A15C()
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = v0[134];
  v2 = v0[130];
  v3 = v0[113];
  v36 = v0[104];
  v38 = v0[108];
  v4 = v0[103];
  v32 = v0[94];
  v34 = v0[102];
  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[89];
  v8 = v0[88];
  v9 = v0[87];
  swift_willThrow();

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v32, v6);
  (*(v4 + 8))(v36, v34);
  sub_21867F0B8(v38, &qword_27CC06F48, &unk_2186B9500);
  v10 = v0[108];
  v11 = v0[107];
  v12 = v0[106];
  v13 = v0[104];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[97];
  v17 = v0[94];
  v18 = v0[93];
  v19 = v0[90];
  v23 = v0[134];
  v24 = v0[89];
  v25 = v0[86];
  v26 = v0[83];
  v27 = v0[80];
  v28 = v0[77];
  v29 = v0[76];
  v30 = v0[73];
  v31 = v0[70];
  v33 = v0[67];
  v35 = v0[66];
  v37 = v0[65];
  v39 = v0[64];

  v20 = v0[1];
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

uint64_t sub_21869A3CC()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = v0[137];
  v2 = v0[130];
  v3 = v0[113];
  v37 = v0[108];
  v39 = v0[136];
  v4 = v0[103];
  v33 = v0[102];
  v35 = v0[104];
  v31 = v0[94];
  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  swift_willThrow();

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v31, v6);
  (*(v4 + 8))(v35, v33);
  sub_21867F0B8(v37, &qword_27CC06F48, &unk_2186B9500);

  v10 = v0[108];
  v11 = v0[107];
  v12 = v0[106];
  v13 = v0[104];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[97];
  v17 = v0[94];
  v18 = v0[93];
  v19 = v0[90];
  v23 = v0[137];
  v24 = v0[89];
  v25 = v0[86];
  v26 = v0[83];
  v27 = v0[80];
  v28 = v0[77];
  v29 = v0[76];
  v30 = v0[73];
  v32 = v0[70];
  v34 = v0[67];
  v36 = v0[66];
  v38 = v0[65];
  v40 = v0[64];

  v20 = v0[1];
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

uint64_t sub_21869A7D4(int a1, void *aBlock)
{
  *(v2 + 56) = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_2186B7C7C();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_21869A85C, 0, 0);
}

uint64_t sub_21869A85C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  type metadata accessor for GKGameActivity(v2);
  *v2 = v0;
  v2[1] = sub_21869A92C;

  return sub_218682BE4(v0 + 48, &unk_2186B9298);
}

uint64_t sub_21869A92C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_21869AAD0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_21869AA48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21869AA48()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_21869AAD0()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = sub_2186B6F6C();

  (v3)[2](v3, 0, v4);
  _Block_release(v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_21869AB7C()
{
  v0 = sub_2186B74BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2186B74FC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0CD28]);
  sub_2186B716C();
  (*(v1 + 104))(v4, *MEMORY[0x277D0CC28], v0);
  sub_21868D6FC(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21869ADCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2186B6FAC();
  v18[0] = *(v3 - 8);
  v4 = *(v18[0] + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = [v1 activityDefinition];
  v11 = [v10 fallbackURL];

  if (v11)
  {
    sub_2186B6F9C();

    v12 = (*(v18[0] + 32))(v9, v7, v3);
    v13 = *&v1[OBJC_IVAR___GKGameActivity__instanceSnapshot];
    MEMORY[0x28223BE20](v12);
    v18[-2] = v9;
    v18[-1] = v1;
    v14 = *(*v13 + *MEMORY[0x277D841D0] + 16);
    v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v13 + v15));
    sub_2186A7954();
    os_unfair_lock_unlock((v13 + v15));
    return (*(v18[0] + 8))(v9, v3);
  }

  else
  {
    v17 = *(v18[0] + 56);

    return v17(a1, 1, 1, v3);
  }
}

void sub_21869B140(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = sub_2186A6114(*a1, &qword_27CC06E70, &off_278236548, &qword_27CC06E78);

  v8 = sub_2186A81BC(&v12, a2, a3);

  if (v12 >> 62)
  {
    v9 = sub_2186B7CCC();
    if (v9 >= v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v8)
    {
LABEL_3:
      sub_2186A7F6C(v8, v9, &qword_27CC06E70, &off_278236548);
      v10 = sub_2186A70E0(v12);

      *a1 = v10;
      sub_2186A2278(&v11, a4, &qword_27CC06E70, &off_278236548, &qword_27CC07098, &qword_2186B93D0);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_21869B2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_21869B2C0, 0, 0);
}

uint64_t sub_21869B2C0()
{
  *(v0 + 32) = [*(v0 + 16) support];
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_21869B374;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_21869B514(v3, v2);
}

uint64_t sub_21869B374()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21869B4B0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21869B4B0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_21869B514(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v5 = sub_2186B74FC();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v7 = *(v6 + 64) + 15;
  v3[6] = swift_task_alloc();
  v8 = sub_2186B74BC();
  v3[7] = v8;
  v9 = *(v8 - 8);
  v3[8] = v9;
  v10 = *(v9 + 64) + 15;
  v3[9] = swift_task_alloc();
  v11 = sub_2186B72AC();
  v3[10] = v11;
  v12 = *(v11 - 8);
  v3[11] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[12] = v14;
  v15 = swift_task_alloc();
  v3[13] = v15;
  *v15 = v3;
  v15[1] = sub_21869B6CC;

  return sub_21869DDC8(v14, a1);
}

uint64_t sub_21869B6CC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_21869BC38;
  }

  else
  {
    v3 = sub_21869B7E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21869B7E0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = *(v2 + 104);
  v5(v1, *MEMORY[0x277D0CC48], v3);
  sub_2186A7360(&qword_27CC06F88, MEMORY[0x277D0CC68]);
  LOBYTE(v4) = sub_2186B79EC();
  v6 = *(v2 + 8);
  v6(v1, v3);
  if ((v4 & 1) == 0)
  {
    v7 = v0[9];
    v8 = v0[7];
    v9 = v0[2];
    v5(v7, *MEMORY[0x277D0CC10], v8);
    v10 = sub_2186B79EC();
    v6(v7, v8);
    if ((v10 & 1) == 0)
    {
      v11 = v0[12];
      (*(v0[5] + 104))(v0[6], *MEMORY[0x277D0CD28], v0[4]);
      sub_2186B716C();
    }
  }

  v12 = (v0[3] + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v15 = *(MEMORY[0x277D0CBA0] + 4);
  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = sub_21869B9EC;
  v17 = v0[12];
  v18 = v0[2];

  return MEMORY[0x282164880](v17, v18, v13, v14);
}

uint64_t sub_21869B9EC()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_21869BB9C;
  }

  else
  {
    v3 = sub_21869BB00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21869BB00()
{
  v1 = v0[9];
  v2 = v0[6];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_21869BB9C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21869BC38()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21869BCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2186A7D78(a3, v24 - v10, &qword_27CC06E10, &qword_2186B9590);
  v12 = sub_2186B7B7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21867F0B8(v11, &qword_27CC06E10, &qword_2186B9590);
  }

  else
  {
    sub_2186B7B6C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2186B7B0C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2186B7A3C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_21867F0B8(a3, &qword_27CC06E10, &qword_2186B9590);

      return v22;
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

  sub_21867F0B8(a3, &qword_27CC06E10, &qword_2186B9590);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_21869BF68(void *a1, uint64_t a2)
{
  v63[4] = *MEMORY[0x277D85DE8];
  v4 = sub_2186B74BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2186B74FC();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2186B701C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2186B704C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218680D68(a2, v63);
  type metadata accessor for GSGameActivitySupport();
  if (swift_dynamicCast())
  {
    v49 = v5;
    v50 = v4;
    v61 = v62;
    v21 = objc_opt_self();
    v22 = a1;
    v57 = v22;
    v56 = [v21 localPlayer];
    v23 = [v22 defaultProperties];
    sub_2186B79BC();

    v54 = objc_allocWithZone(GKGameActivity);
    sub_2186B703C();
    sub_2186B702C();
    (*(v17 + 8))(v20, v16);
    v53 = sub_2186B79FC();

    v52 = sub_2186B79AC();

    sub_2186B700C();
    v51 = sub_2186B6FEC();
    (*(v12 + 8))(v15, v11);
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520);
    v24 = sub_2186B7B8C();
    sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
    sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548);
    v25 = sub_2186B7B8C();
    sub_2186B71CC();
    v26 = sub_2186B79FC();

    v27 = sub_2186B7B8C();
    sub_2186A6594(MEMORY[0x277D84F90]);
    v28 = sub_2186B79AC();

    v29 = v58;
    v30 = v59;
    v31 = v60;
    (*(v59 + 104))(v58, *MEMORY[0x277D0CD18], v60);
    sub_2186B74EC();
    (*(v30 + 8))(v29, v31);
    v32 = sub_2186B79FC();

    v63[0] = 0;
    LOBYTE(v47) = 0;
    v33 = v53;
    v34 = v51;
    v35 = v52;
    v36 = [v54 initWithIdentifier:v53 activityDefinition:v57 properties:v52 state:0 partyCode:0 creationDate:v51 startDate:0.0 lastResumeDate:0 endDate:0 duration:0 achievements:v24 leaderboardScores:v25 creator:v56 initiatedByApple:v47 referralLeaderboard:0 referralAchievement:0 participants:v27 participantStates:v28 shortGroupID:v26 consumptionState:v32 support:v61 error:v63];

    v37 = v63[0];
    if (v36)
    {
      v39 = v49;
      v38 = v50;
      v40 = v55;
      (*(v49 + 104))(v55, *MEMORY[0x277D0CC10], v50);
      v41 = v37;
      v42 = v36;
      sub_21868D6FC(v40);

      (*(v39 + 8))(v40, v38);
    }

    else
    {
      v43 = v63[0];
      v44 = sub_2186B6F7C();

      swift_willThrow();
    }
  }

  else
  {
    v36 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t sub_21869C614()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21869C6A4;

  return sub_21867FFF8();
}

uint64_t sub_21869C6A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_21869C7F4, 0, 0);
  }
}

uint64_t sub_21869C7F4()
{
  v1 = *(*(v0 + 24) + 16);

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}