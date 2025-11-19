uint64_t sub_23ED68B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_23ED68C90;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23ED68C90()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23ED68D84()
{
  v1 = sub_23EDC0EF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  v6 = *v0;
  v7 = sub_23EDC23E0();
  MEMORY[0x23EF237D0](v7);

  MEMORY[0x23EF237D0](32, 0xE100000000000000);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_id, v1);
  sub_23EDC1FA0();
  (*(v2 + 8))(v5, v1);
  return v9[0];
}

uint64_t sub_23ED68EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v10 - v6;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  swift_getDynamicType();
  v8 = sub_23EDC23E0();
  MEMORY[0x23EF237D0](v8);

  MEMORY[0x23EF237D0](32, 0xE100000000000000);
  sub_23EDC1ED0();
  sub_23EDC2230();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v10[0];
}

uint64_t sub_23ED69044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 232) = a4;
  *(v5 + 240) = v4;
  *(v5 + 216) = a1;
  *(v5 + 224) = a3;
  v6 = *(a2 + 8);
  *(v5 + 248) = *a2;
  *(v5 + 256) = v6;
  *(v5 + 400) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_23ED69078, 0, 0);
}

uint64_t sub_23ED69078()
{
  v23 = v0;
  v1 = *(v0 + 240);
  sub_23ED6A150(type metadata accessor for InProcessInferenceOperation, sub_23ED6FCE0, type metadata accessor for InProcessInferenceOperation);
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 256);
  v3 = sub_23EDC1790();
  *(v0 + 264) = __swift_project_value_buffer(v3, qword_27E3897E8);

  v4 = sub_23EDC1770();
  v5 = sub_23EDC1D90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 400);
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;

    sub_23EDC1EC0();

    strcpy(v22, "Process Name:");
    HIWORD(v22[1]) = -4864;
    MEMORY[0x23EF237D0](v8, v7);
    MEMORY[0x23EF237D0](977553696, 0xE400000000000000);
    *(v0 + 396) = v6;
    v11 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v11);

    v12 = sub_23ED713FC(v22[0], v22[1], &v21);

    *(v9 + 4) = v12;
    _os_log_impl(&dword_23ED67000, v4, v5, "Running inference operation in-process for client: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x23EF24B30](v10, -1, -1);
    MEMORY[0x23EF24B30](v9, -1, -1);
  }

  type metadata accessor for InferencePipeline();
  v13 = swift_allocObject();
  *(v0 + 272) = v13;
  swift_defaultActor_initialize();
  *(v13 + 112) = 0;
  sub_23EDC0F40();
  v14 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v15 = *(*(v14 + 8) + 8);
  v16 = sub_23EDC0FD0();
  v18 = v17;
  *(v0 + 280) = v17;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v19 = swift_task_alloc();
  *(v0 + 288) = v19;
  *v19 = v0;
  v19[1] = sub_23ED693E0;

  return sub_23EDB6FB0(v16, v18);
}

uint64_t sub_23ED693E0()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 280);

  if (v0)
  {
    v6 = sub_23ED69F54;
  }

  else
  {
    v6 = sub_23ED69514;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23ED69514()
{
  sub_23EDC0F60();
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v2 = *(*(v1 + 8) + 8);
  v3 = sub_23EDC0FD0();
  v5 = v4;
  v0[38] = v4;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_23ED695F4;
  v7 = v0[34];

  return sub_23EDB6FB0(v3, v5);
}

uint64_t sub_23ED695F4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 304);

  if (v0)
  {
    v6 = sub_23ED69FB8;
  }

  else
  {
    v6 = sub_23ED69728;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23ED69728()
{
  v1 = v0[30];
  v2 = OBJC_IVAR____TtC16AlchemistService27InProcessInferenceOperation_id;
  v0[15] = type metadata accessor for InProcessInferenceOperation(0);
  v0[16] = &off_285164E58;
  v0[12] = v1;

  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_23ED69814;
  v4 = v0[34];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];

  return sub_23EDB61B8(v7, v1 + v2, v1 + v2, (v0 + 12), v5, v6);
}

uint64_t sub_23ED69814()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v6 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_23ED6A01C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 96));
    v4 = sub_23ED69930;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23ED69930()
{
  v22 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);

  v3 = sub_23EDC1770();
  v4 = sub_23EDC1D90();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 400);
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;

    sub_23EDC1EC0();

    strcpy(v21, "Process Name:");
    HIWORD(v21[1]) = -4864;
    MEMORY[0x23EF237D0](v7, v6);
    MEMORY[0x23EF237D0](977553696, 0xE400000000000000);
    *(v0 + 392) = v5;
    v10 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v10);

    v11 = sub_23ED713FC(v21[0], v21[1], &v20);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_23ED67000, v3, v4, "Finished in-process inference operationfor client: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x23EF24B30](v9, -1, -1);
    MEMORY[0x23EF24B30](v8, -1, -1);
  }

  sub_23EDC0F40();
  v12 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v13 = *(*(v12 + 8) + 8);
  v14 = sub_23EDC0FD0();
  v16 = v15;
  *(v0 + 344) = v15;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v17 = swift_task_alloc();
  *(v0 + 352) = v17;
  *v17 = v0;
  v17[1] = sub_23ED69BA8;
  v18 = *(v0 + 272);

  return sub_23EDB7448(v14, v16);
}

uint64_t sub_23ED69BA8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 344);

  if (v0)
  {
    v6 = sub_23ED6A088;
  }

  else
  {
    v6 = sub_23ED69CDC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23ED69CDC()
{
  sub_23EDC0F60();
  v1 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v2 = *(*(v1 + 8) + 8);
  v3 = sub_23EDC0FD0();
  v5 = v4;
  v0[46] = v4;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  v6 = swift_task_alloc();
  v0[47] = v6;
  *v6 = v0;
  v6[1] = sub_23ED69DBC;
  v7 = v0[34];

  return sub_23EDB7448(v3, v5);
}

uint64_t sub_23ED69DBC()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 368);

  if (v0)
  {
    v6 = sub_23ED6A0EC;
  }

  else
  {
    v6 = sub_23ED69EF0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23ED69EF0()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23ED69F54()
{
  v1 = v0[34];

  v2 = v0[37];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23ED69FB8()
{
  v1 = v0[34];

  v2 = v0[40];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23ED6A01C()
{
  v1 = v0[34];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v2 = v0[42];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23ED6A088()
{
  v1 = v0[34];

  v2 = v0[45];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23ED6A0EC()
{
  v1 = v0[34];

  v2 = v0[48];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23ED6A150(void (*a1)(void), uint64_t a2, void (*a3)(void))
{
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v6 = sub_23EDC1790();
  __swift_project_value_buffer(v6, qword_27E3897E8);

  v7 = sub_23EDC1770();
  v8 = sub_23EDC1D70();

  if (os_log_type_enabled(v7, v8))
  {
    buf = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *buf = 136315138;
    a1(0);

    v9 = sub_23EDC1A00();
    v11 = a3;
    v12 = a1;
    v13 = sub_23ED713FC(v9, v10, &v24);

    *(buf + 4) = v13;
    a1 = v12;
    a3 = v11;
    _os_log_impl(&dword_23ED67000, v7, v8, "%s checking for cancellation", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x23EF24B30](v23, -1, -1);
    MEMORY[0x23EF24B30](buf, -1, -1);
  }

  result = sub_23ED6A708(a2, a3);
  if (result)
  {

    v15 = sub_23EDC1770();
    v16 = sub_23EDC1D70();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      a1(0);

      v19 = sub_23EDC1A00();
      v21 = sub_23ED713FC(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_23ED67000, v15, v16, "%s is in cancelled state; throwing CancellationError.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x23EF24B30](v18, -1, -1);
      MEMORY[0x23EF24B30](v17, -1, -1);
    }

    sub_23EDC1BB0();
    sub_23ED6EE90(&qword_27E388490, MEMORY[0x277D85678]);
    swift_allocError();
    sub_23EDC1880();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23ED6A494()
{
  v1 = OBJC_IVAR____TtC16AlchemistService27InProcessInferenceOperation_id;
  v2 = sub_23EDC0EF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23ED6A558()
{
  result = sub_23EDC0EF0();
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

uint64_t sub_23ED6A5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23ED68C90;

  return sub_23ED69044(a1, a2, a3, a4);
}

uint64_t sub_23ED6A6A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_23ED68EF0(a1, WitnessTable);
}

uint64_t sub_23ED6A708(uint64_t a1, void (*a2)(void))
{
  v13 = 0;
  sub_23EDC2080();
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v3 = sub_23EDC1790();
  __swift_project_value_buffer(v3, qword_27E3897E8);

  v4 = sub_23EDC1770();
  v5 = sub_23EDC1D70();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    a2(0);
    v8 = sub_23EDC1A00();
    v10 = sub_23ED713FC(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    swift_beginAccess();
    *(v6 + 14) = v13;
    _os_log_impl(&dword_23ED67000, v4, v5, "%s isCancelled=%{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x23EF24B30](v7, -1, -1);
    MEMORY[0x23EF24B30](v6, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  return v13;
}

void sub_23ED6A8E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27E3881B8 != -1)
  {
    a1 = swift_once();
  }

  v4 = qword_27E389878;
  v5 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  v6 = *(qword_27E389878 + OBJC_IVAR____TtC16AlchemistService10Signposter_queue);
  MEMORY[0x28223BE20](a1);
  sub_23EDC1DE0();
  if (v2)
  {
  }

  v7 = sub_23ED6B198(MEMORY[0x277CEA5A0], &qword_27E388480, MEMORY[0x277CEA5A0], MEMORY[0x277CEA5B0], a2);
  v8 = *(v4 + v5);
  MEMORY[0x28223BE20](v7);
  sub_23EDC1DE0();
}

uint64_t sub_23ED6AB28@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  length[4] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v41 - v3;
  v5 = sub_23EDC1FC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v19 = sub_23EDC0D00();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v46 = sub_23EDC0CF0();
  v44 = sub_23EDC14F0();
  v23 = v22;
  sub_23EDC1FB0();
  v45 = v18;
  v24 = v18;
  v25 = v5;
  v26 = v6;
  sub_23ED6FA00(v24, v16, &qword_27E388470, &qword_23EDC5ED0);
  if ((*(v6 + 48))(v16, 1, v25) == 1)
  {
    sub_23ED6FA68(v16, &qword_27E388470, &qword_23EDC5ED0);
  }

  else
  {
    v41 = v23;
    (*(v6 + 32))(v11, v16, v25);
    sub_23EDC14D0();
    v27 = sub_23EDC1810();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v4, 1, v27) == 1)
    {
      (*(v6 + 8))(v11, v25);
      sub_23ED6FA68(v4, &qword_27E388468, &unk_23EDC4120);
    }

    else
    {
      v33 = sub_23EDC17F0();
      (*(v28 + 8))(v4, v27);
      v34 = MEMORY[0x23EF24CA0](v33);
      if (v34 != sub_23EDC17A0())
      {
        sub_23ED6F858();
        swift_allocError();
        *v35 = 0;
        swift_willThrow();
        sub_23ED6F900(v44, v41);
        swift_unknownObjectRelease();

        (*(v26 + 8))(v11, v25);
        goto LABEL_12;
      }

      v37 = v42;
      (*(v26 + 16))(v42, v11, v25);
      length[3] = sub_23EDC17D0();
      __swift_allocate_boxed_opaque_existential_0(length);
      swift_unknownObjectRetain();
      sub_23EDC17E0();
      v38 = sub_23EDC0CE0();
      sub_23ED889C8(length, v37);
      v38(v47, 0);
      length[0] = 0;
      data = xpc_dictionary_get_data(v33, "DATA", length);
      if (data)
      {
        v29 = sub_23EDB9FB8(data, length[0]);
        v31 = v40;
        sub_23ED6F900(v44, v41);
        swift_unknownObjectRelease();
        (*(v26 + 8))(v11, v25);
        sub_23ED6F978();
        goto LABEL_9;
      }

      (*(v26 + 8))(v11, v25);
      swift_unknownObjectRelease();
    }

    v23 = v41;
  }

  v29 = v44;
  if (v23 >> 60 == 15)
  {
    sub_23ED6F858();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();

LABEL_12:
    result = sub_23ED6FA68(v45, &qword_27E388470, &qword_23EDC5ED0);
    goto LABEL_13;
  }

  sub_23ED6F978();
  v31 = v23;
LABEL_9:
  sub_23EDC0CD0();
  sub_23ED6FA68(v45, &qword_27E388470, &qword_23EDC5ED0);

  result = sub_23ED6F8AC(v29, v31);
LABEL_13:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23ED6B108@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_23ED6B198(type metadata accessor for ALCInferenceInput, &qword_27E3884A0, type metadata accessor for ALCInferenceInput, &protocol conformance descriptor for ALCInferenceInput, a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23ED6B198@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v54 = a3;
  v55 = a4;
  v53 = a2;
  v56 = a5;
  length[4] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v50 - v8;
  v10 = sub_23EDC1FC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v52 = a1(0);
  v24 = sub_23EDC0D00();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v59 = sub_23EDC0CF0();
  v57 = sub_23EDC14F0();
  v28 = v27;
  sub_23EDC1FB0();
  v58 = v23;
  v29 = v23;
  v30 = v10;
  v31 = v11;
  sub_23ED6FA00(v29, v21, &qword_27E388470, &qword_23EDC5ED0);
  if ((*(v11 + 48))(v21, 1, v30) == 1)
  {
    v32 = &qword_27E388470;
    v33 = &qword_23EDC5ED0;
    v34 = v21;
LABEL_5:
    sub_23ED6FA68(v34, v32, v33);
    goto LABEL_6;
  }

  (*(v11 + 32))(v16, v21, v30);
  sub_23EDC14D0();
  v35 = sub_23EDC1810();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v9, 1, v35) == 1)
  {
    (*(v11 + 8))(v16, v30);
    v32 = &qword_27E388468;
    v33 = &unk_23EDC4120;
    v34 = v9;
    goto LABEL_5;
  }

  v41 = sub_23EDC17F0();
  (*(v36 + 8))(v9, v35);
  v42 = MEMORY[0x23EF24CA0](v41);
  if (v42 != sub_23EDC17A0())
  {
    sub_23ED6F858();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
    sub_23ED6F900(v57, v28);
    swift_unknownObjectRelease();

    (*(v31 + 8))(v16, v30);
    goto LABEL_12;
  }

  v45 = v51;
  (*(v31 + 16))(v51, v16, v30);
  length[3] = sub_23EDC17D0();
  __swift_allocate_boxed_opaque_existential_0(length);
  swift_unknownObjectRetain();
  sub_23EDC17E0();
  v46 = sub_23EDC0CE0();
  sub_23ED889C8(length, v45);
  v46(v60, 0);
  length[0] = 0;
  data = xpc_dictionary_get_data(v41, "DATA", length);
  if (data)
  {
    v37 = sub_23EDB9FB8(data, length[0]);
    v48 = v16;
    v39 = v49;
    sub_23ED6F900(v57, v28);
    swift_unknownObjectRelease();
    (*(v31 + 8))(v48, v30);
    sub_23ED6EE90(v53, v54);
    sub_23EDC0CD0();
    goto LABEL_9;
  }

  (*(v31 + 8))(v16, v30);
  swift_unknownObjectRelease();
LABEL_6:
  v37 = v57;
  if (v28 >> 60 == 15)
  {
    sub_23ED6F858();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();

LABEL_12:
    result = sub_23ED6FA68(v58, &qword_27E388470, &qword_23EDC5ED0);
    goto LABEL_13;
  }

  sub_23ED6EE90(v53, v54);
  sub_23EDC0CD0();
  v39 = v28;
LABEL_9:
  sub_23ED6FA68(v58, &qword_27E388470, &qword_23EDC5ED0);

  result = sub_23ED6F8AC(v37, v39);
LABEL_13:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23ED6B798(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v7 = sub_23EDC0EF0();
  *(v5 + 48) = v7;
  v8 = *(v7 - 8);
  *(v5 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v10 = sub_23EDC1510();
  *(v5 + 72) = v10;
  v11 = *(v10 - 8);
  *(v5 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  v13 = type metadata accessor for ALCInferenceInput();
  *(v5 + 112) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v15 = swift_task_alloc();
  v16 = *a2;
  v17 = a2[1];
  *(v5 + 120) = v15;
  *(v5 + 128) = v16;
  *(v5 + 136) = v17;
  *(v5 + 204) = *(a2 + 4);

  return MEMORY[0x2822009F8](sub_23ED6B914, 0, 0);
}

uint64_t sub_23ED6B914()
{
  v52 = v0;
  v1 = *(v0 + 40);
  sub_23ED6A150(type metadata accessor for ModelManagerInferenceOperation, sub_23ED6F9CC, type metadata accessor for ModelManagerInferenceOperation);
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 136);
  v3 = sub_23EDC1790();
  __swift_project_value_buffer(v3, qword_27E3897E8);

  v4 = sub_23EDC1770();
  v5 = sub_23EDC1D60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 204);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50 = v10;
    *v9 = 136315138;

    sub_23EDC1EC0();

    strcpy(v51, "Process Name:");
    HIWORD(v51[1]) = -4864;
    MEMORY[0x23EF237D0](v8, v7);
    MEMORY[0x23EF237D0](977553696, 0xE400000000000000);
    *(v0 + 200) = v6;
    v11 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v11);

    v12 = sub_23ED713FC(v51[0], v51[1], &v50);

    *(v9 + 4) = v12;
    _os_log_impl(&dword_23ED67000, v4, v5, "Running inference operation via ModelManager for client: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x23EF24B30](v10, -1, -1);
    MEMORY[0x23EF24B30](v9, -1, -1);
  }

  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  v16 = *(v0 + 16);
  (*(*(v0 + 56) + 16))(v13, *(v0 + 40) + OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_id, *(v0 + 48));
  sub_23ED6FAC8(v16, v13 + *(v14 + 20));
  sub_23ED880A8(v13, v15);
  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  sub_23ED92930();
  v19 = *(v0 + 96);
  v48 = *(v0 + 104);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  v22 = *(v0 + 72);
  v23 = *(v0 + 40);
  v24 = *(v21 + 8);
  *(v0 + 144) = v24;
  *(v0 + 152) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v19, v22);
  sub_23EDC15B0();
  v25 = *(*(v23 + OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_modelManagerInterface) + 16);
  v51[0] = 0xD00000000000001ALL;
  v51[1] = 0x800000023EDCA110;

  MEMORY[0x23EF237D0](0x614D6C65646F4D2ELL, 0xED0000726567616ELL);
  (*(v21 + 16))(v20, v48, v22);
  v26 = sub_23EDC15A0();
  *(v0 + 160) = v26;

  v27 = sub_23EDC1770();
  v28 = sub_23EDC1D90();

  if (os_log_type_enabled(v27, v28))
  {
    v30 = *(v0 + 56);
    v29 = *(v0 + 64);
    v31 = *(v0 + 40);
    v49 = *(v0 + 48);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v51[0] = v33;
    *v32 = 136446466;
    v34 = sub_23ED68D84();
    v36 = sub_23ED713FC(v34, v35, v51);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    sub_23EDC1580();
    v37 = sub_23EDC0ED0();
    v39 = v38;
    (*(v30 + 8))(v29, v49);
    v40 = sub_23ED713FC(v37, v39, v51);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_23ED67000, v27, v28, "%{public}s created streaming request %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF24B30](v33, -1, -1);
    MEMORY[0x23EF24B30](v32, -1, -1);
  }

  v41 = *(v0 + 40);
  v42 = swift_task_alloc();
  *(v0 + 168) = v42;
  v43 = *(v0 + 24);
  *(v42 + 16) = v41;
  *(v42 + 24) = v26;
  *(v42 + 32) = v43;
  v44 = swift_task_alloc();
  *(v0 + 176) = v44;
  *(v44 + 16) = v41;
  *(v44 + 24) = v26;
  v45 = *(MEMORY[0x277D85A10] + 4);
  v46 = swift_task_alloc();
  *(v0 + 184) = v46;
  *v46 = v0;
  v46[1] = sub_23ED6BF6C;

  return MEMORY[0x282200830]();
}

uint64_t sub_23ED6BF6C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);

  if (v0)
  {
    v7 = sub_23ED6C188;
  }

  else
  {
    v7 = sub_23ED6C0BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23ED6C0BC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v9 = v0[8];
  v8 = v0[9];

  v3(v5, v8);
  sub_23ED6FB2C(v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23ED6C188()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[9];

  v3(v5, v6);
  sub_23ED6FB2C(v4);
  v7 = v0[24];
  v8 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_23ED6C254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_23ED70118;

  return sub_23ED6C59C(a3, a4, a5);
}

void sub_23ED6C308()
{
  v0 = sub_23EDC0EF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v5 = sub_23EDC1790();
  __swift_project_value_buffer(v5, qword_27E3897E8);

  v17 = sub_23EDC1770();
  v6 = sub_23EDC1D90();

  if (os_log_type_enabled(v17, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446466;
    v9 = sub_23ED68D84();
    v11 = sub_23ED713FC(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_23EDC1580();
    v12 = sub_23EDC0ED0();
    v14 = v13;
    (*(v1 + 8))(v4, v0);
    v15 = sub_23ED713FC(v12, v14, &v18);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_23ED67000, v17, v6, "%{public}s cancelling request %{public}s via Swift.Task", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF24B30](v8, -1, -1);
    MEMORY[0x23EF24B30](v7, -1, -1);
  }

  else
  {
    v16 = v17;
  }
}

uint64_t sub_23ED6C59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_23EDC13D0();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388460, &qword_23EDC4118) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v9 = sub_23EDC1510();
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v12 = sub_23EDC1550();
  v4[17] = v12;
  v13 = *(v12 - 8);
  v4[18] = v13;
  v14 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();
  v15 = sub_23EDC1570();
  v4[20] = v15;
  v16 = *(v15 - 8);
  v4[21] = v16;
  v17 = *(v16 + 64) + 15;
  v4[22] = swift_task_alloc();
  v18 = sub_23EDC0EF0();
  v4[23] = v18;
  v19 = *(v18 - 8);
  v4[24] = v19;
  v20 = *(v19 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED6C838, 0, 0);
}

uint64_t sub_23ED6C838()
{
  v47 = v0;
  v1 = v0[7];
  sub_23ED6A150(type metadata accessor for ModelManagerInferenceOperation, sub_23ED6F9CC, type metadata accessor for ModelManagerInferenceOperation);
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = v0[4];
  v4 = sub_23EDC1790();
  v0[28] = __swift_project_value_buffer(v4, qword_27E3897E8);

  v5 = sub_23EDC1770();
  v6 = sub_23EDC1D90();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[27];
    v8 = v0[24];
    v9 = v0[7];
    v43 = v0[4];
    v44 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46[0] = v11;
    *v10 = 136446466;
    v12 = sub_23ED68D84();
    v14 = sub_23ED713FC(v12, v13, v46);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    sub_23EDC1580();
    v15 = sub_23EDC0ED0();
    v17 = v16;
    (*(v8 + 8))(v7, v44);
    v18 = sub_23ED713FC(v15, v17, v46);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_23ED67000, v5, v6, "%{public}s executing streaming request %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF24B30](v11, -1, -1);
    MEMORY[0x23EF24B30](v10, -1, -1);
  }

  v19 = v0[22];
  v20 = v0[19];
  v21 = v0[7];
  v22 = v0[4];
  sub_23EDC1590();
  sub_23EDC1560();

  v23 = sub_23EDC1770();
  v24 = sub_23EDC1D70();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[27];
    v26 = v0[24];
    v45 = v0[23];
    v27 = v0[7];
    v28 = v0[4];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v46[0] = v30;
    *v29 = 136446466;
    v31 = sub_23ED68D84();
    v33 = sub_23ED713FC(v31, v32, v46);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    sub_23EDC1580();
    v34 = sub_23EDC0ED0();
    v36 = v35;
    (*(v26 + 8))(v25, v45);
    v37 = sub_23ED713FC(v34, v36, v46);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_23ED67000, v23, v24, "%{public}s reading output data for request %{public}s ", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF24B30](v30, -1, -1);
    MEMORY[0x23EF24B30](v29, -1, -1);
  }

  v38 = *(MEMORY[0x277D29E40] + 4);
  v39 = swift_task_alloc();
  v0[29] = v39;
  *v39 = v0;
  v39[1] = sub_23ED6CD24;
  v40 = v0[19];
  v41 = v0[12];

  return MEMORY[0x282188BD0](v41);
}

uint64_t sub_23ED6CD24()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_23ED6DC68;
  }

  else
  {
    v3 = sub_23ED6CE38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23ED6CE38()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = *(v2 + 48);
  v0[31] = v4;
  v0[32] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_23ED6FA68(v3, &qword_27E388460, &qword_23EDC4118);
    v0[39] = OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_id;
    v5 = *(MEMORY[0x277D29E40] + 4);
    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_23ED6D318;
    v7 = v0[19];
    v8 = v0[11];

    return MEMORY[0x282188BD0](v8);
  }

  else
  {
    v9 = v0[30];
    v10 = v0[7];
    (*(v2 + 32))(v0[16], v3, v1);
    sub_23ED6A150(type metadata accessor for ModelManagerInferenceOperation, sub_23ED6F9CC, type metadata accessor for ModelManagerInferenceOperation);
    if (v9)
    {
      v13 = v0[21];
      v12 = v0[22];
      v15 = v0[19];
      v14 = v0[20];
      v16 = v0[17];
      v17 = v0[18];
      (*(v0[14] + 8))(v0[16], v0[13]);
      (*(v17 + 8))(v15, v16);
      (*(v13 + 8))(v12, v14);
      v19 = v0[26];
      v18 = v0[27];
      v20 = v0[25];
      v21 = v0[22];
      v22 = v0[19];
      v24 = v0[15];
      v23 = v0[16];
      v26 = v0[11];
      v25 = v0[12];
      v39 = v0[10];

      v27 = v0[1];

      return v27();
    }

    else
    {
      v11 = v0[7];
      sub_23ED6A8E4(v0[16], v0[10]);
      v0[33] = 0;
      v28 = v0[26];
      v29 = v0[5];
      v30 = v0[6];
      v31 = v0[4];
      ObjectType = swift_getObjectType();
      v33 = OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_id;
      v0[34] = ObjectType;
      v0[35] = v33;
      sub_23EDC1580();
      v34 = *(v30 + 24);
      v30 += 24;
      v0[36] = v34;
      v0[37] = v30 & 0xFFFFFFFFFFFFLL | 0xE148000000000000;
      v35 = *(v30 - 16);
      v37 = sub_23EDC1B90();

      return MEMORY[0x2822009F8](sub_23ED6D164, v37, v36);
    }
  }
}

uint64_t sub_23ED6D164()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 40);
  (*(v0 + 288))(*(v0 + 56) + *(v0 + 280), v3, *(v0 + 80), *(v0 + 272), *(v0 + 48));
  *(v0 + 304) = v2;
  (*(v5 + 8))(v3, v4);
  if (v2)
  {
    v7 = sub_23ED6DD88;
  }

  else
  {
    v7 = sub_23ED6D230;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23ED6D230()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v3 + 8))(v1, v2);
  v0[39] = OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_id;
  v4 = *(MEMORY[0x277D29E40] + 4);
  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_23ED6D318;
  v6 = v0[19];
  v7 = v0[11];

  return MEMORY[0x282188BD0](v7);
}

uint64_t sub_23ED6D318()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_23ED6DEE8;
  }

  else
  {
    v3 = sub_23ED6D42C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23ED6D42C()
{
  v82 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  if ((*(v0 + 248))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 224);
    v5 = *(v0 + 56);
    v6 = *(v0 + 32);
    sub_23ED6FA68(v3, &qword_27E388460, &qword_23EDC4118);

    v7 = sub_23EDC1770();
    v8 = sub_23EDC1D70();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 216);
      v10 = *(v0 + 192);
      v79 = *(v0 + 160);
      v80 = *(v0 + 176);
      v77 = *(v0 + 152);
      v78 = *(v0 + 168);
      v74 = *(v0 + 184);
      v75 = *(v0 + 144);
      v76 = *(v0 + 136);
      v11 = *(v0 + 56);
      v12 = *(v0 + 32);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v81[0] = v14;
      *v13 = 136446466;
      v15 = sub_23ED68D84();
      v17 = sub_23ED713FC(v15, v16, v81);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      sub_23EDC1580();
      v18 = sub_23EDC0ED0();
      v20 = v19;
      (*(v10 + 8))(v9, v74);
      v21 = sub_23ED713FC(v18, v20, v81);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_23ED67000, v7, v8, "%{public}s no more output data for request %{public}s ", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF24B30](v14, -1, -1);
      MEMORY[0x23EF24B30](v13, -1, -1);

      (*(v75 + 8))(v77, v76);
      (*(v78 + 8))(v80, v79);
    }

    else
    {
      v31 = *(v0 + 168);
      v30 = *(v0 + 176);
      v33 = *(v0 + 152);
      v32 = *(v0 + 160);
      v34 = *(v0 + 136);
      v35 = *(v0 + 144);

      (*(v35 + 8))(v33, v34);
      (*(v31 + 8))(v30, v32);
    }

    v37 = *(v0 + 208);
    v36 = *(v0 + 216);
    v38 = *(v0 + 200);
    v39 = *(v0 + 176);
    v40 = *(v0 + 152);
    v42 = *(v0 + 120);
    v41 = *(v0 + 128);
    v44 = *(v0 + 88);
    v43 = *(v0 + 96);
    v45 = *(v0 + 80);

    v63 = *(v0 + 8);
    goto LABEL_11;
  }

  v22 = *(v0 + 328);
  v23 = *(v0 + 56);
  (*(*(v0 + 112) + 32))(*(v0 + 120), v3, v2);
  sub_23ED6A150(type metadata accessor for ModelManagerInferenceOperation, sub_23ED6F9CC, type metadata accessor for ModelManagerInferenceOperation);
  if (v22)
  {
    v25 = *(v0 + 168);
    v24 = *(v0 + 176);
    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v28 = *(v0 + 136);
    v29 = *(v0 + 144);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    (*(v29 + 8))(v27, v28);
    (*(v25 + 8))(v24, v26);
    v54 = *(v0 + 208);
    v53 = *(v0 + 216);
    v55 = *(v0 + 200);
    v56 = *(v0 + 176);
    v57 = *(v0 + 152);
    v59 = *(v0 + 120);
    v58 = *(v0 + 128);
    v61 = *(v0 + 88);
    v60 = *(v0 + 96);
    v62 = *(v0 + 80);

    v63 = *(v0 + 8);
LABEL_11:

    return v63();
  }

  if (qword_27E3881B8 != -1)
  {
    swift_once();
  }

  v46 = qword_27E389878;
  v47 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  v48 = *(qword_27E389878 + OBJC_IVAR____TtC16AlchemistService10Signposter_queue);
  v49 = swift_task_alloc();
  *(v49 + 16) = "alcDecode";
  *(v49 + 24) = 9;
  *(v49 + 32) = 2;
  *(v49 + 40) = v46;
  sub_23EDC1DE0();
  v50 = *(v0 + 120);

  sub_23ED6AB28(v0 + 16);
  v51 = *(v46 + v47);
  v52 = swift_task_alloc();
  *(v52 + 16) = "alcDecode";
  *(v52 + 24) = 9;
  *(v52 + 32) = 2;
  *(v52 + 48) = 0;
  *(v52 + 56) = 0;
  *(v52 + 40) = v46;
  sub_23EDC1DE0();
  *(v0 + 336) = 0;
  v65 = *(v0 + 200);
  v66 = *(v0 + 40);
  v67 = *(v0 + 48);
  v68 = *(v0 + 32);

  v69 = *(v0 + 16);
  *(v0 + 344) = v69;
  *(v0 + 352) = swift_getObjectType();
  sub_23EDC1580();
  *(v0 + 24) = v69;
  v70 = *(v67 + 16);
  v67 += 16;
  *(v0 + 360) = v70;
  *(v0 + 368) = v67 & 0xFFFFFFFFFFFFLL | 0xD17D000000000000;
  v71 = *(v67 - 8);
  v72 = sub_23EDC1B90();

  return MEMORY[0x2822009F8](sub_23ED6DAD0, v72, v73);
}

uint64_t sub_23ED6DAD0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 336);
  v3 = *(v0 + 40);
  (*(v0 + 360))(*(v0 + 56) + *(v0 + 312), *(v0 + 200), v0 + 24, *(v0 + 352), *(v0 + 48));
  *(v0 + 376) = v2;
  if (v2)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    v4 = sub_23ED6E008;
  }

  else
  {
    v5 = *(v0 + 344);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v4 = sub_23ED6DBB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23ED6DBB4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = *(MEMORY[0x277D29E40] + 4);
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_23ED6D318;
  v3 = v0[19];
  v4 = v0[11];

  return MEMORY[0x282188BD0](v4);
}

uint64_t sub_23ED6DC68()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v2 + 8))(v1, v3);
  v16 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_23ED6DD88()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[14];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v22 = v0[38];
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];
  v13 = v0[22];
  v14 = v0[19];
  v16 = v0[15];
  v15 = v0[16];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_23ED6DEE8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v2 + 8))(v1, v3);
  v16 = v0[41];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_23ED6E008()
{
  v1 = v0[43];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v20 = v0[47];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[25];
  v11 = v0[22];
  v12 = v0[19];
  v14 = v0[15];
  v13 = v0[16];
  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[10];

  v18 = v0[1];

  return v18();
}

uint64_t sub_23ED6E154()
{
  v1 = OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_id;
  v2 = sub_23EDC0EF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_modelManagerInterface);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23ED6E228(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23ED6E260()
{
  result = sub_23EDC0EF0();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PixelDimensions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PixelDimensions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_23ED6E4E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23ED70118;

  return sub_23ED6B798(a1, a2, a3, a4);
}

uint64_t sub_23ED6E5A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_23ED68EF0(a1, WitnessTable);
}

uint64_t sub_23ED6E604@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_23EDC0EF0();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_23ED6E67C(uint64_t a1, uint64_t a2, _BYTE *a3, void (*a4)(void))
{
  v27 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388498, &qword_23EDC4130);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = sub_23EDC1D00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23ED6FA00(a1, v10, &qword_27E388498, &qword_23EDC4130);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_23ED6FA68(v10, &qword_27E388498, &qword_23EDC4130);
  }

  (*(v12 + 32))(v15, v10, v11);
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v17 = sub_23EDC1790();
  __swift_project_value_buffer(v17, qword_27E3897E8);

  v18 = sub_23EDC1770();
  v19 = sub_23EDC1D70();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    v28 = a2;
    a4(0);

    v22 = sub_23EDC1A00();
    v24 = sub_23ED713FC(v22, v23, &v29);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_23ED67000, v18, v19, "%s checking current task cancelled state", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x23EF24B30](v21, -1, -1);
    MEMORY[0x23EF24B30](v20, -1, -1);
  }

  v25 = sub_23EDC1CE0();
  result = (*(v12 + 8))(v15, v11);
  *v27 = v25 & 1;
  return result;
}

uint64_t sub_23ED6E9A4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_23EDC14C0();
}

uint64_t sub_23ED6E9F0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_23EDC14B0();
}

uint64_t sub_23ED6EA48()
{
  sub_23EDC22F0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_23EDC14B0();
  return sub_23EDC2320();
}

void *sub_23ED6EAB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23ED6EACC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_23EDC14A0();
}

uint64_t sub_23ED6EB38(uint64_t a1, id *a2)
{
  result = sub_23EDC19B0();
  *a2 = 0;
  return result;
}

uint64_t sub_23ED6EBB0(uint64_t a1, id *a2)
{
  v3 = sub_23EDC19C0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23ED6EC30@<X0>(uint64_t *a1@<X8>)
{
  sub_23EDC19D0();
  v2 = sub_23EDC19A0();

  *a1 = v2;
  return result;
}

_DWORD *sub_23ED6EC74@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_23ED6ECAC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_23ED6ED18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23EDC19D0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23ED6ED44(uint64_t a1)
{
  v2 = sub_23ED6EE90(&qword_27E388450, type metadata accessor for CIImageOption);
  v3 = sub_23ED6EE90(&qword_27E388458, type metadata accessor for CIImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23ED6EE90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23ED6EF20(uint64_t a1)
{
  v2 = sub_23ED6EE90(&qword_27E388508, type metadata accessor for MXISceneBuilderConfiguration);
  v3 = sub_23ED6EE90(&qword_27E388510, type metadata accessor for MXISceneBuilderConfiguration);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23ED6EFDC(uint64_t a1)
{
  v2 = sub_23ED6EE90(&qword_27E388430, type metadata accessor for MXISceneBuilderColorPrimaries);
  v3 = sub_23ED6EE90(&qword_27E388438, type metadata accessor for MXISceneBuilderColorPrimaries);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23ED6F098(uint64_t a1)
{
  v2 = sub_23ED6EE90(&qword_27E388440, type metadata accessor for CIContextOption);
  v3 = sub_23ED6EE90(&qword_27E388448, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23ED6F274@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23EDC19A0();

  *a2 = v5;
  return result;
}

uint64_t sub_23ED6F2BC(uint64_t a1)
{
  v2 = sub_23ED6EE90(&qword_27E388518, type metadata accessor for MXIBuildOption);
  v3 = sub_23ED6EE90(&qword_27E388520, type metadata accessor for MXIBuildOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23ED6F378()
{
  v1 = *v0;
  v2 = sub_23EDC19D0();
  v3 = MEMORY[0x23EF23820](v2);

  return v3;
}

uint64_t sub_23ED6F3B4()
{
  v1 = *v0;
  sub_23EDC19D0();
  sub_23EDC1A50();
}

uint64_t sub_23ED6F408()
{
  v1 = *v0;
  sub_23EDC19D0();
  sub_23EDC22F0();
  sub_23EDC1A50();
  v2 = sub_23EDC2320();

  return v2;
}

uint64_t sub_23ED6F47C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23EDC19D0();
  v6 = v5;
  if (v4 == sub_23EDC19D0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23EDC2240();
  }

  return v9 & 1;
}

uint64_t sub_23ED6F66C(uint64_t a1)
{
  *(a1 + 16) = sub_23ED6EE90(&qword_27E3883B0, type metadata accessor for InProcessInferenceOperation);
  result = sub_23ED6EE90(&qword_27E3883B8, type metadata accessor for InProcessInferenceOperation);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_23ED6F6F0(uint64_t a1)
{
  *(a1 + 16) = sub_23ED6EE90(&qword_27E3883C0, type metadata accessor for ModelManagerInferenceOperation);
  result = sub_23ED6EE90(&qword_27E3883C8, type metadata accessor for ModelManagerInferenceOperation);
  *(a1 + 24) = result;
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

unint64_t sub_23ED6F858()
{
  result = qword_27E388478;
  if (!qword_27E388478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388478);
  }

  return result;
}

uint64_t sub_23ED6F8AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23ED6F900(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23ED6F8AC(a1, a2);
  }

  return a1;
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

unint64_t sub_23ED6F978()
{
  result = qword_27E388488;
  if (!qword_27E388488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388488);
  }

  return result;
}

uint64_t sub_23ED6FA00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23ED6FA68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23ED6FAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecipe();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED6FB2C(uint64_t a1)
{
  v2 = type metadata accessor for ALCInferenceInput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23ED6FB88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23ED70118;

  return sub_23ED6C254(a1, v4, v5, v7, v6);
}

void sub_23ED6FC48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23ED6C308();
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

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ALCSorterOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ALCSorterOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23ED6FFC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23ED6FFE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23ED70044(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23ED70064(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

void sub_23ED700B4(uint64_t a1, unint64_t *a2)
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

uint64_t InferenceSession.Error.errorDescription.getter()
{
  v1 = sub_23EDC0F10();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_23EDC1990();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *v0;
  sub_23EDC1930();
  sub_23EDC0F00();
  return sub_23EDC19F0();
}

uint64_t InferenceSession.Error.hashValue.getter()
{
  v1 = *v0;
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  return sub_23EDC2320();
}

uint64_t _s16AlchemistService10ALCServiceC12AvailabilityO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  return sub_23EDC2320();
}

uint64_t sub_23ED703CC()
{
  v1 = *v0;
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  return sub_23EDC2320();
}

uint64_t InferenceSession.__allocating_init(client:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  InferenceSession.init(client:)(a1);
  return v2;
}

uint64_t InferenceSession.init(client:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InferenceSessionDefinition();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v33[-v9];
  v12 = *a1;
  v11 = a1[1];
  v13 = *(a1 + 4);
  if (qword_27E388198 != -1)
  {
    swift_once();
  }

  v14 = sub_23EDC1790();
  __swift_project_value_buffer(v14, qword_27E389800);

  v15 = sub_23EDC1770();
  v16 = sub_23EDC1D90();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315138;
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    v39 = v19;

    v34 = v16;
    sub_23EDC1EC0();

    strcpy(v38, "Process Name:");
    HIWORD(v38[1]) = -4864;
    MEMORY[0x23EF237D0](v36, v11);
    MEMORY[0x23EF237D0](977553696, 0xE400000000000000);
    v37 = v13;
    v20 = sub_23EDC21E0();
    v21 = v13;
    v22 = v8;
    v23 = v2;
    MEMORY[0x23EF237D0](v20);

    v24 = sub_23ED713FC(v38[0], v38[1], &v39);

    *(v18 + 4) = v24;
    v2 = v23;
    v8 = v22;
    v13 = v21;
    _os_log_impl(&dword_23ED67000, v15, v34, "Creating generator for %s", v18, 0xCu);
    v25 = v35;
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x23EF24B30](v25, -1, -1);
    v26 = v18;
    v12 = v36;
    MEMORY[0x23EF24B30](v26, -1, -1);
  }

  *&v10[*(v4 + 24)] = 0;
  sub_23EDC0EE0();
  v27 = &v10[*(v4 + 20)];
  *v27 = v12;
  *(v27 + 1) = v11;
  *(v27 + 4) = v13;
  sub_23EDB42C4();
  sub_23ED71264(v10, v8);
  v28 = type metadata accessor for InferenceSessionDefinitionAccessor();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_23ED71AE0(v10, type metadata accessor for InferenceSessionDefinition);
  sub_23ED712C8(v8, v31 + OBJC_IVAR____TtC16AlchemistService34InferenceSessionDefinitionAccessor__session);
  *(v2 + 16) = v31;
  return v2;
}

uint64_t InferenceSession.generateSplats(pixelBuffer:focalLengthPX:adjustmentParams:delegate:generationID:forceInProcessGeneration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 120) = a6;
  *(v8 + 128) = v7;
  *(v8 + 76) = a7;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 80) = a1;
  v9 = type metadata accessor for InferenceRecipe();
  *(v8 + 136) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D20, &qword_23EDC45D8) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v12 = sub_23EDC0EF0();
  *(v8 + 160) = v12;
  v13 = *(v12 - 8);
  *(v8 + 168) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v15 = type metadata accessor for InferenceSessionDefinition();
  *(v8 + 192) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED7090C, 0, 0);
}

uint64_t sub_23ED7090C()
{
  v1 = *(*(v0 + 128) + 16);
  *(v0 + 208) = v1;
  return MEMORY[0x2822009F8](sub_23ED70930, v1, 0);
}

uint64_t sub_23ED70930()
{
  sub_23ED71264(*(v0 + 208) + OBJC_IVAR____TtC16AlchemistService34InferenceSessionDefinitionAccessor__session, *(v0 + 200));

  return MEMORY[0x2822009F8](sub_23ED709A4, 0, 0);
}

uint64_t sub_23ED709A4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  sub_23ED719B4(*(v0 + 120), v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v7 = *(v0 + 184);
    sub_23EDC0EE0();
    if (v4(v5, 1, v6) != 1)
    {
      sub_23ED71A24(*(v0 + 152));
    }

    if (*(v0 + 76))
    {
      goto LABEL_5;
    }
  }

  else
  {
    (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
    if (*(v0 + 76))
    {
LABEL_5:
      v8 = *(v0 + 176);
      v9 = *(v0 + 160);
      v10 = *(v0 + 168);
      (*(v10 + 16))(v8, *(v0 + 184), v9);
      v11 = type metadata accessor for InProcessInferenceOperation(0);
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v14 = swift_allocObject();
      (*(v10 + 32))(v14 + OBJC_IVAR____TtC16AlchemistService27InProcessInferenceOperation_id, v8, v9);
      *(v0 + 40) = v11;
      v15 = sub_23ED71B40(&qword_27E3885A8, type metadata accessor for InProcessInferenceOperation);
      *(v0 + 48) = v15;
      *(v0 + 16) = v14;
LABEL_9:
      v26 = *(v0 + 192);
      v25 = *(v0 + 200);
      v27 = *(v0 + 144);
      v28 = *(v0 + 96);
      v29 = *(v0 + 80);
      if ((*(v0 + 88) & 0x100000000) != 0)
      {
        v30 = -1.0;
      }

      else
      {
        LODWORD(v30) = *(v0 + 88);
      }

      v31 = *(*(v0 + 136) + 24);
      v32 = sub_23EDC13F0();
      (*(*(v32 - 8) + 16))(v27 + v31, v28, v32);
      Width = CVPixelBufferGetWidth(v29);
      Height = CVPixelBufferGetHeight(v29);
      PixelFormatType = CVPixelBufferGetPixelFormatType(v29);
      type metadata accessor for PixelBufferArchive.HiddenBufferData();
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_23EDC45C0;
      *v27 = Width;
      *(v27 + 8) = Height;
      *(v27 + 16) = PixelFormatType;
      *(v27 + 24) = v29;
      *(v27 + 32) = v36;
      *(v27 + 40) = v30;
      __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
      v37 = (v25 + *(v26 + 20));
      v38 = *v37;
      v39 = v37[1];
      LODWORD(v37) = *(v37 + 4);
      *(v0 + 56) = v38;
      *(v0 + 64) = v39;
      *(v0 + 72) = v37;
      v40 = *(v15 + 32);
      v41 = v29;

      v57 = (v40 + *v40);
      v42 = v40[1];
      v43 = swift_task_alloc();
      *(v0 + 216) = v43;
      *v43 = v0;
      v43[1] = sub_23ED70EE4;
      v44 = *(v0 + 144);
      v45 = *(v0 + 104);
      v46 = *(v0 + 112);

      return v57(v44, v0 + 56, v45, v46, v11, v15);
    }
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 184);
  v18 = *(v16 + *(*(v0 + 192) + 24));
  if (v18)
  {
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);
    (*(v20 + 16))(v19, *(v0 + 184), v21);
    v11 = type metadata accessor for ModelManagerInferenceOperation(0);
    v22 = *(v11 + 48);
    v23 = *(v11 + 52);
    v24 = swift_allocObject();
    (*(v20 + 32))(v24 + OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_id, v19, v21);
    *(v24 + OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_modelManagerInterface) = v18;
    *(v0 + 40) = v11;
    v15 = sub_23ED71B40(&qword_27E388D40, type metadata accessor for ModelManagerInferenceOperation);
    *(v0 + 48) = v15;
    *(v0 + 16) = v24;

    goto LABEL_9;
  }

  v48 = *(v0 + 160);
  v49 = *(v0 + 168);
  sub_23ED71A8C();
  swift_allocError();
  *v50 = 1;
  swift_willThrow();
  (*(v49 + 8))(v17, v48);
  sub_23ED71AE0(v16, type metadata accessor for InferenceSessionDefinition);
  v51 = *(v0 + 200);
  v52 = *(v0 + 176);
  v53 = *(v0 + 184);
  v55 = *(v0 + 144);
  v54 = *(v0 + 152);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_23ED70EE4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  v4 = *(v2 + 64);

  if (v0)
  {
    v5 = sub_23ED7110C;
  }

  else
  {
    v5 = sub_23ED71008;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23ED71008()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  sub_23ED71AE0(v0[18], type metadata accessor for InferenceRecipe);
  (*(v5 + 8))(v2, v4);
  sub_23ED71AE0(v1, type metadata accessor for InferenceSessionDefinition);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23ED7110C()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  sub_23ED71AE0(v0[18], type metadata accessor for InferenceRecipe);
  (*(v4 + 8))(v2, v3);
  sub_23ED71AE0(v1, type metadata accessor for InferenceSessionDefinition);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v5 = v0[28];
  v6 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[18];
  v9 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t InferenceSession.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InferenceSession.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23ED71264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceSessionDefinition();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED712C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceSessionDefinition();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED7132C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_23ED713A0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23ED713FC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23ED713FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23ED714C8(v11, 0, 0, 1, a1, a2);
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
    sub_23ED71DA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_23ED714C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23ED715D4(a5, a6);
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
    result = sub_23EDC1F40();
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

uint64_t sub_23ED715D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_23ED71620(a1, a2);
  sub_23ED71750(&unk_285164688);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23ED71620(uint64_t a1, unint64_t a2)
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

  v6 = sub_23ED7183C(v5, 0);
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

  result = sub_23EDC1F40();
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
        v10 = sub_23EDC1A90();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23ED7183C(v10, 0);
        result = sub_23EDC1E90();
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

uint64_t sub_23ED71750(uint64_t result)
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

  result = sub_23ED718B0(result, v12, 1, v3);
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

void *sub_23ED7183C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885B8, &qword_23EDC4738);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23ED718B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885B8, &qword_23EDC4738);
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

_BYTE **sub_23ED719A4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_23ED719B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D20, &qword_23EDC45D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED71A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D20, &qword_23EDC45D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23ED71A8C()
{
  result = qword_27E3885A0;
  if (!qword_27E3885A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3885A0);
  }

  return result;
}

uint64_t sub_23ED71AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23ED71B40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23ED71B8C()
{
  result = qword_27E3885B0;
  if (!qword_27E3885B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3885B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceSession.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InferenceSession.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23ED71DA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_23ED71E08(float a1)
{
  v2 = v1;
  [v1 contentHeadroom];
  if (vabds_f32(v4, a1) <= 0.00000011921)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v22 = sub_23EDC1790();
    __swift_project_value_buffer(v22, qword_27E3897E8);
    v23 = sub_23EDC1770();
    v24 = sub_23EDC1D70();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = a1;
      _os_log_impl(&dword_23ED67000, v23, v24, "CIImage already has headroom %f, no need to convert.", v25, 0xCu);
      MEMORY[0x23EF24B30](v25, -1, -1);
    }

    return v2;
  }

  else
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v5 = sub_23EDC1790();
    __swift_project_value_buffer(v5, qword_27E3897E8);
    v6 = v1;
    v7 = sub_23EDC1770();
    v8 = sub_23EDC1D70();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      [v6 contentHeadroom];
      *(v9 + 4) = v10;
      *(v9 + 12) = 2048;
      *(v9 + 14) = a1;
      _os_log_impl(&dword_23ED67000, v7, v8, "CIImage is has different headroom %f, convert to %f.", v9, 0x16u);
      MEMORY[0x23EF24B30](v9, -1, -1);
    }

    v11 = [objc_opt_self() toneMapHeadroomFilter];
    [v11 setInputImage_];
    *&v12 = a1;
    [v11 setTargetHeadroom_];
    v13 = [v11 outputImage];
    if (v13)
    {
      v14 = v13;
      [v11 setInputImage_];
      v6 = v14;
      v15 = sub_23EDC1770();
      v16 = sub_23EDC1D70();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = [v6 colorSpace];
        if (!v19 || (v20 = v19, v21 = CGColorSpaceCopyName(v19), v20, !v21))
        {
          v21 = sub_23EDC19A0();
        }

        *(v17 + 4) = v21;
        *v18 = v21;
        _os_log_impl(&dword_23ED67000, v15, v16, "Converted CIImage colorspace: %@", v17, 0xCu);
        sub_23ED7222C(v18);
        MEMORY[0x23EF24B30](v18, -1, -1);
        MEMORY[0x23EF24B30](v17, -1, -1);
      }
    }

    else
    {
      sub_23ED721D8();
      swift_allocError();
      *v27 = 11;
      swift_willThrow();
    }

    return v6;
  }
}

unint64_t sub_23ED721D8()
{
  result = qword_27E388C90;
  if (!qword_27E388C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388C90);
  }

  return result;
}

uint64_t sub_23ED7222C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E388D00, &unk_23EDC6730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23ED72294()
{
  v1 = [v0 properties];
  v2 = sub_23EDC18B0();

  v3 = *MEMORY[0x277CD3410];
  v4 = sub_23EDC19D0();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  v6 = sub_23ED906A8(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_23ED71DA8(*(v2 + 56) + 32 * v6, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    v9 = 1;
    return v10 | (v9 << 32);
  }

  v9 = 0;
  v10 = v12;
  return v10 | (v9 << 32);
}

uint64_t sub_23ED723B4(unint64_t a1, float a2)
{
  v7 = *(v3 + 20);
  v6 = *(v3 + 24);
  v8.f32[0] = 1.0 / fmaxf(a2, 0.001);
  if (v8.f32[0] < v7)
  {
    v7 = v8.f32[0];
  }

  *(v3 + 16) = *(v3 + 16) + 1.0;
  *(v3 + 20) = v7;
  if (v6 <= v8.f32[0])
  {
    v6 = v8.f32[0];
  }

  *(v3 + 24) = v6;
  v8.f32[1] = v8.f32[0] * v8.f32[0];
  *&v8.u32[2] = vmul_n_f32(*v8.f32, v8.f32[1]);
  *(v3 + 28) = vaddq_f32(v8, *(v3 + 28));
  v8.f32[0] = floorf(v8.f32[0] / 0.01);
  if (v8.f32[0] == INFINITY)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v8.f32[0] <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8.f32[0] >= 9.2234e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2 = v3;
  v4 = v8.f32[0];
  swift_beginAccess();
  v10 = *(v3 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 48);
  v24 = v12;
  *(v2 + 48) = 0x8000000000000000;
  a1 = sub_23ED9C844(v4);
  v14 = v12[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v5) = v13;
  if (v12[3] < v17)
  {
    sub_23ED772DC(v17, isUniquelyReferenced_nonNull_native);
    a1 = sub_23ED9C844(v4);
    if ((v5 & 1) == (v18 & 1))
    {
      goto LABEL_13;
    }

    a1 = sub_23EDC2280();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  *(v2 + 48) = v12;
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_14:
  v5 = a1;
  sub_23ED78E98(a1, v4, 0, v12);
  a1 = v5;
LABEL_15:
  while (1)
  {
    v19 = v12[7];
    v20 = *(v19 + 8 * a1);
    v16 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v16)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v23 = a1;
    sub_23ED7931C();
    a1 = v23;
    v12 = v24;
    *(v2 + 48) = v24;
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  *(v19 + 8 * a1) = v21;
  result = swift_endAccess();
  *(v2 + 72) = 1;
  return result;
}

void sub_23ED725A4()
{
  if (*(v0 + 72) != 1)
  {
    return;
  }

  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = sub_23ED73410(*(v1 + 16), 0);
  v4 = sub_23ED73E08(&v17, v3 + 4, v2, v1);
  swift_bridgeObjectRetain_n();
  sub_23ED73F0C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_5:

    v3 = MEMORY[0x277D84F90];
  }

  v17 = v3;
  sub_23ED73524(&v17);

  v5 = *(v0 + 56);
  *(v0 + 56) = v17;

  v6 = *(v0 + 64);
  *(v0 + 64) = MEMORY[0x277D84F90];

  v7 = *(v0 + 56);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 56);

    v10 = *(v0 + 64);
    v11 = 0.0;
    v12 = 40;
    do
    {
      v13 = *(v7 + v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 64) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_23ED73208(0, *(v10 + 2) + 1, 1, v10);
        *(v0 + 64) = v10;
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = sub_23ED73208((v15 > 1), v16 + 1, 1, v10);
      }

      v11 = v11 + v13;
      *(v10 + 2) = v16 + 1;
      *&v10[4 * v16 + 32] = v11;
      *(v0 + 64) = v10;
      v12 += 16;
      --v8;
    }

    while (v8);
  }

  *(v0 + 72) = 0;
}

void sub_23ED727A0(float a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    if (a1 == 0.0)
    {
      v3 = *(v1 + 20);
      return;
    }

    if (a1 == 1.0)
    {
      v4 = *(v1 + 24);
      return;
    }

    if (*(v1 + 16) != 0.0)
    {
      sub_23ED725A4();
      v6 = *(v1 + 56);
      v7 = *(v1 + 64);
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = *(v1 + 16) * a1;
        v11 = (v7 + 32);
        v12 = (v6 + 40);
        while (v10 > *v11)
        {
          ++v9;
          v12 += 2;
          ++v11;
          if (v8 == v9)
          {
            goto LABEL_15;
          }
        }

        if (v9 < *(v6 + 16))
        {
          v16 = *v12;
          if (v9)
          {
            v17 = (v10 - *(v11 - 1)) / v16;
          }

          else
          {
            v17 = v10 / v16;
          }

          v18 = (*(v12 - 1) * 0.01) + (v17 * 0.01);
          return;
        }
      }

      else
      {
LABEL_15:
        v15 = *(v6 + 16);
        v13 = v6 + 16;
        v14 = v15;
        if (!v15 || !__OFADD__(*(v13 + 16 * v14), 1))
        {
          return;
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_23ED728DC()
{
  if (*(v0 + 16) != 0.0)
  {
    v16 = MEMORY[0x277D84F90];
    v1 = 21;
    sub_23EDA0D80(0, 21, 0);
    v2 = 0;
    v3 = 0;
    while (!v3)
    {
      sub_23ED727A0(v2 / 20.0);
      v6 = *(v16 + 16);
      v5 = *(v16 + 24);
      if (v6 >= v5 >> 1)
      {
        v8 = v4.i32[0];
        sub_23EDA0D80((v5 > 1), v6 + 1, 1);
        v4.i32[0] = v8;
      }

      *(v16 + 16) = v6 + 1;
      *(v16 + 4 * v6 + 32) = v4.i32[0];
      v3 = v2 == 20;
      if (v2 == 20)
      {
        v2 = 0;
      }

      else if (__OFADD__(v2++, 1))
      {
        __break(1u);
        break;
      }

      if (!--v1)
      {
        v4.i32[0] = *(v0 + 16);
        v9 = *(v0 + 36) / *v4.i32;
        v10 = *(v0 + 40) / *v4.i32;
        v11 = vdiv_f32(*(v0 + 28), vdup_lane_s32(v4, 0));
        powf(v11.f32[1] - vmul_f32(v11, v11).f32[0], 1.5);
        __asm { FMOV            V2.2S, #6.0 }

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23ED72AC8()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_23ED72B34()
{
  *(v0 + 16) = 0x7F7FFFFF00000000;
  *(v0 + 24) = -8388609;
  *(v0 + 36) = 0;
  *(v0 + 28) = 0;
  *(v0 + 44) = 1008981770;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = sub_23ED79DB0(MEMORY[0x277D84F90]);
  *(v0 + 56) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = 1;
  *(v0 + 76) = 981668463;
  return v0;
}

uint64_t sub_23ED72BA8(uint64_t a1)
{
  v2 = a1;
  if (qword_27E3881B8 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_27E389878;
  v4 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  v5 = *(qword_27E389878 + OBJC_IVAR____TtC16AlchemistService10Signposter_queue);
  MEMORY[0x28223BE20](a1);
  sub_23EDC1DE0();
  if (!v1)
  {
    CVPixelBufferLockBaseAddress(v2, 1uLL);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v2);
    if (PixelFormatType == 1751410032)
    {
      MEMORY[0x28223BE20](PixelFormatType);
      v7 = sub_23EDC1D30();
      v13 = *(v3 + v4);
      MEMORY[0x28223BE20](v7);
      sub_23EDC1DE0();
      v5 = 0;
    }

    else
    {
      v8 = PixelFormatType;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v9 = sub_23EDC1790();
      __swift_project_value_buffer(v9, qword_27E3897E8);
      v10 = sub_23EDC1770();
      v11 = sub_23EDC1D80();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 67109120;
        *(v12 + 4) = v8;
        _os_log_impl(&dword_23ED67000, v10, v11, "Unsupported depth pixel format %u.", v12, 8u);
        MEMORY[0x23EF24B30](v12, -1, -1);
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(v2, 1uLL);
  }

  return v5;
}

uint64_t sub_23ED72EC0(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, uint64_t *a4)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  type metadata accessor for DisparityStatsEstimator();
  inited = swift_initStackObject();
  *(inited + 16) = 0x7F7FFFFF00000000;
  *(inited + 24) = -8388609;
  *(inited + 36) = 0;
  *(inited + 28) = 0;
  *(inited + 44) = 1008981770;
  v11 = MEMORY[0x277D84F90];
  result = sub_23ED79DB0(MEMORY[0x277D84F90]);
  *(inited + 48) = result;
  *(inited + 56) = v11;
  *(inited + 64) = v11;
  *(inited + 72) = 1;
  *(inited + 76) = 981668463;
  if (a3)
  {
    v35 = a4;
    v13 = Height >= 0;
    if (a3 > 0)
    {
      v13 = Height < 1;
    }

    if (v13)
    {
LABEL_5:
      sub_23ED728DC();
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = *v35;
      *v35 = v15;
      v35[1] = v17;
      v35[2] = v19;
    }

    v21 = 0;
    if (a3 <= 0)
    {
      v22 = Width >= 0;
    }

    else
    {
      v22 = Width < 1;
    }

    while (1)
    {
      v24 = __OFADD__(v21, a3) ? ((v21 + a3) >> 63) ^ 0x8000000000000000 : v21 + a3;
      if (!v22)
      {
        break;
      }

LABEL_9:
      v23 = v24 >= Height;
      if (a3 <= 0)
      {
        v23 = Height >= v24;
      }

      v21 = v24;
      if (v23)
      {
        goto LABEL_5;
      }
    }

    v25 = v21 * Width;
    if ((v21 * Width) >> 64 == (v21 * Width) >> 63)
    {
      v26 = 0;
      while (1)
      {
        v27 = v25 + v26;
        if (__OFADD__(v25, v26))
        {
          break;
        }

        if (__OFADD__(v26, a3))
        {
          v26 = ((v26 + a3) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v26 += a3;
        }

        _H0 = *(a1 + 2 * v27);
        __asm { FCVT            S0, H0 }

        result = sub_23ED723B4(result, _S0);
        v34 = Width >= v26;
        if (a3 > 0)
        {
          v34 = v26 >= Width;
        }

        if (v34)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23ED730A4(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_23EDC1AE0();
  [a1 setAttribute:v5 forKey:*MEMORY[0x277D25768]];

  v6 = *(a2 + 2);
  v7 = sub_23EDC1D10();
  [a1 setAttribute:v7 forKey:*MEMORY[0x277D25760]];

  v8 = *(a2 + 3);
  v9 = sub_23EDC1D10();
  [a1 setAttribute:v9 forKey:*MEMORY[0x277D25780]];

  v10 = *(a2 + 4);
  v11 = sub_23EDC1D10();
  [a1 setAttribute:v11 forKey:*MEMORY[0x277D25778]];

  v12 = *(a2 + 5);
  v13 = sub_23EDC1D10();
  [a1 setAttribute:v13 forKey:*MEMORY[0x277D25758]];

  v14 = sub_23EDC1D10();
  [a1 setAttribute:v14 forKey:*MEMORY[0x277D25770]];
}

char *sub_23ED73208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885C0, &qword_23EDC4818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_23ED7330C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885D0, &qword_23EDC4828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_23ED73410(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885D8, &qword_23EDC4830);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_23ED73494(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885E0, &qword_23EDC4838);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 1) + (v7 >> 63));
  return result;
}

uint64_t sub_23ED73524(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23ED73F14(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_23EDC21D0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885C8, &qword_23EDC4820);
      v7 = sub_23EDC1B30();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_23ED73678(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_23ED73678(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_23ED73DF4(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_23ED73BF0((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23ED7330C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_23ED7330C((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_23ED73BF0((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_23ED73BF0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void *sub_23ED73E08(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a4 + 48) + v14);
      v16 = *(*(a4 + 56) + v14);
      v7 &= v7 - 1;
      *a2 = v15;
      a2[1] = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

float sub_23ED73F28(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (v2 < 4)
  {
    return NAN;
  }

  v4 = a1 + 4 * v2;
  v5 = (fminf(a2, 3.0) + 3.0) / 6.0;
  v6 = a2 < -3.0;
  v7 = 0.0;
  if (!v6)
  {
    v7 = v5;
  }

  return v7 * ((*(v4 + 24) - *(a1 + 36)) / *(v4 + 28));
}

void sub_23ED73FA0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23EDC19A0();
  v2 = [v0 initWithSuiteName_];

  qword_27E389728 = v2;
}

unint64_t sub_23ED74010(void *a1)
{
  if ([a1 __swift_objectForKeyedSubscript_])
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  sub_23ED74130(&v7, &v5);
  if (!*(&v6 + 1))
  {
    sub_23ED741A0(&v5);
LABEL_8:
    v5 = v7;
    v6 = v8;
    if (*(&v8 + 1))
    {
      type metadata accessor for CGImagePropertyOrientation(0);
      if (swift_dynamicCast())
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_23ED741A0(&v5);
    }

    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_23ED741A0(&v7);
LABEL_10:
  v1 = 0;
  v2 = v4;
  return v2 | (v1 << 32);
}

uint64_t sub_23ED74130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885E8, &qword_23EDC4840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED741A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885E8, &qword_23EDC4840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ALCGenerationInput.properties.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *ALCGenerationInput.auxiliaryData.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

unint64_t ALCInputLoading.Error.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 16))
  {
    sub_23EDC1EC0();

    v3 = 0xD000000000000016;
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    sub_23EDC1EC0();

    v3 = 0xD00000000000001FLL;
LABEL_5:
    v5 = v3;
    MEMORY[0x23EF237D0](v1, v2);
    return v5;
  }

  if (v1 | v2)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_23ED743D8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_23ED74494(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_23ED744C4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_23ED744F0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

void static ALCInputLoading.load(from:index:loadOptions:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v8 = sub_23EDC0E80();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v46 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v42 - v13;
  v48 = *a2;
  v53 = *(a2 + 8);
  v47 = *a3;
  if (qword_27E3881B0 != -1)
  {
    swift_once();
  }

  v15 = sub_23EDC1790();
  v16 = __swift_project_value_buffer(v15, qword_27E389848);
  v17 = v9[2];
  v50 = a1;
  v43 = v17;
  v17(v14, a1, v8);
  v45 = v16;
  v18 = sub_23EDC1770();
  v19 = sub_23EDC1D60();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42[1] = v4;
    v21 = v20;
    v42[0] = swift_slowAlloc();
    v51 = v42[0];
    *v21 = 136380675;
    sub_23ED7BADC(&qword_27E3885F8, MEMORY[0x277CC9260]);
    v22 = sub_23EDC21E0();
    v23 = v8;
    v24 = v9;
    v26 = v25;
    v44 = v24[1];
    v44(v14, v23);
    v27 = sub_23ED713FC(v22, v26, &v51);
    v8 = v23;

    *(v21 + 4) = v27;
    _os_log_impl(&dword_23ED67000, v18, v19, "loading file %{private}s", v21, 0xCu);
    v28 = v42[0];
    __swift_destroy_boxed_opaque_existential_0Tm(v42[0]);
    MEMORY[0x23EF24B30](v28, -1, -1);
    MEMORY[0x23EF24B30](v21, -1, -1);
  }

  else
  {

    v44 = v9[1];
    v44(v14, v8);
  }

  v29 = v50;
  v30 = sub_23EDC0E60();
  v31 = CGImageSourceCreateWithURL(v30, 0);

  if (v31)
  {
    v51 = v48;
    v52 = v53;
    v54 = v47;
    static ALCInputLoading.load(from:index:loadOptions:)(v31, &v51, &v54, v49);
  }

  else
  {
    v32 = v46;
    v43(v46, v29, v8);
    v33 = sub_23EDC1770();
    v34 = sub_23EDC1D80();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v51 = v36;
      *v35 = 136380675;
      sub_23ED7BADC(&qword_27E3885F8, MEMORY[0x277CC9260]);
      v37 = sub_23EDC21E0();
      v39 = v38;
      v44(v32, v8);
      v40 = sub_23ED713FC(v37, v39, &v51);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_23ED67000, v33, v34, "error opening file %{private}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x23EF24B30](v36, -1, -1);
      MEMORY[0x23EF24B30](v35, -1, -1);
    }

    else
    {

      v44(v32, v8);
    }

    sub_23ED76C6C();
    swift_allocError();
    *v41 = 0;
    *(v41 + 8) = 0;
    *(v41 + 16) = 2;
    swift_willThrow();
  }
}

void static ALCInputLoading.load(from:index:loadOptions:)(uint64_t *a1@<X2>, int *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v18 = *a2;
  if (qword_27E3881B0 != -1)
  {
    swift_once();
  }

  v6 = sub_23EDC1790();
  __swift_project_value_buffer(v6, qword_27E389848);
  v7 = sub_23EDC1770();
  v8 = sub_23EDC1D60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23ED67000, v7, v8, "loading data blob", v9, 2u);
    MEMORY[0x23EF24B30](v9, -1, -1);
  }

  v10 = sub_23EDC0EA0();
  v11 = CGImageSourceCreateWithData(v10, 0);

  if (v11)
  {
    v16 = v4;
    v17 = v5;
    v19 = v18;
    static ALCInputLoading.load(from:index:loadOptions:)(v11, &v16, &v19, a3);
  }

  else
  {
    v12 = sub_23EDC1770();
    v13 = sub_23EDC1D80();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23ED67000, v12, v13, "error opening data blob", v14, 2u);
      MEMORY[0x23EF24B30](v14, -1, -1);
    }

    sub_23ED76C6C();
    swift_allocError();
    *v15 = xmmword_23EDC4850;
    *(v15 + 16) = 2;
    swift_willThrow();
  }
}

void sub_23ED74D88(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v5 = 1;
  v3 = a2;
  static ALCInputLoading.load(from:index:loadOptions:)(a1, &v4, &v3, a3);
}

void sub_23ED74DDC(int a1@<W2>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = 1;
  v2 = a1;
  static ALCInputLoading.load(from:index:loadOptions:)(&v3, &v2, a2);
}

void static ALCInputLoading.load(from:index:loadOptions:)(CGImageSourceRef isrc@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  if (*(a2 + 8) == 1)
  {
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(isrc);
  }

  else
  {
    PrimaryImageIndex = *a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388600, &unk_23EDC4890);
  inited = swift_initStackObject();
  v10 = *MEMORY[0x277CBFA08];
  *(inited + 32) = *MEMORY[0x277CBFA08];
  *(inited + 16) = xmmword_23EDC4860;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v11 = v10;
  sub_23ED7A0AC(inited);
  swift_setDeallocating();
  sub_23ED6FA68(inited + 32, &unk_27E388CA0, &qword_23EDC62D0);
  v12 = objc_allocWithZone(MEMORY[0x277CBF758]);
  type metadata accessor for CIImageOption(0);
  sub_23ED7BADC(&qword_27E388450, type metadata accessor for CIImageOption);
  v13 = sub_23EDC1890();
  index = PrimaryImageIndex;
  v14 = [v12 initWithCGImageSource:isrc index:PrimaryImageIndex options:v13];

  if (!v14)
  {
    if (qword_27E3881B0 != -1)
    {
      swift_once();
    }

    v18 = sub_23EDC1790();
    __swift_project_value_buffer(v18, qword_27E389848);
    v19 = sub_23EDC1770();
    v20 = sub_23EDC1D80();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23ED67000, v19, v20, "error creating image", v21, 2u);
      MEMORY[0x23EF24B30](v21, -1, -1);
    }

    sub_23ED76C6C();
    swift_allocError();
    *v22 = 0xD000000000000028;
    *(v22 + 8) = 0x800000023EDCA380;
    *(v22 + 16) = 0;
    swift_willThrow();
    return;
  }

  v15 = 0.0;
  v150 = a4;
  isrca = isrc;
  if ((v7 & 1) == 0)
  {
    v16 = 0;
    v17 = 0;
LABEL_39:
    v149 = 1;
    goto LABEL_40;
  }

  if (qword_27E3881B0 != -1)
  {
    swift_once();
  }

  v23 = sub_23EDC1790();
  __swift_project_value_buffer(v23, qword_27E389848);
  v24 = sub_23EDC1770();
  v25 = sub_23EDC1D60();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_23ED67000, v24, v25, "loading image properties", v26, 2u);
    MEMORY[0x23EF24B30](v26, -1, -1);
  }

  v27 = CGImageSourceCopyPropertiesAtIndex(isrc, index, 0);
  v17 = v27;
  if (!v27)
  {
LABEL_38:
    v16 = 0;
    goto LABEL_39;
  }

  v28 = *MEMORY[0x277CD3038];
  v29 = v27;
  if ([(__CFDictionary *)v29 __swift_objectForKeyedSubscript:v28])
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v155 = 0u;
    v156 = 0u;
  }

  v157 = v155;
  v158 = v156;
  if (!*(&v156 + 1))
  {
    goto LABEL_37;
  }

  sub_23ED7BB24(0, &qword_27E388630, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_38;
  }

  if ([v160 __swift_objectForKeyedSubscript_])
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v155 = 0u;
    v156 = 0u;
  }

  v157 = v155;
  v158 = v156;
  if (!*(&v156 + 1))
  {

LABEL_37:
    sub_23ED6FA68(&v157, &qword_27E3885E8, &qword_23EDC4840);
    goto LABEL_38;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_38;
  }

  [v14 extent];
  if (v30 <= -9.22337204e18)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_110;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  sub_23ED80C5C(v30, v31, *&v160);
  if (v4)
  {

    return;
  }

  v140 = v32;
  v16 = v160;

  v149 = 0;
  v15 = v140;
LABEL_40:
  v33 = MEMORY[0x277D84F98];
  if ((v7 & 2) == 0)
  {
    goto LABEL_92;
  }

  if (qword_27E3881B0 != -1)
  {
    swift_once();
  }

  v142 = v16;
  v147 = v14;
  v148 = v17;
  v34 = sub_23EDC1790();
  __swift_project_value_buffer(v34, qword_27E389848);
  v35 = sub_23EDC1770();
  v36 = sub_23EDC1D60();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_23ED67000, v35, v36, "loading auxiliary data", v37, 2u);
    MEMORY[0x23EF24B30](v37, -1, -1);
  }

  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_23EDC4870;
  v39 = *MEMORY[0x277CBFA28];
  *(v38 + 32) = *MEMORY[0x277CBFA28];
  *(v38 + 40) = 1;
  v40 = *MEMORY[0x277CBFA20];
  v41 = MEMORY[0x277D83B88];
  v42 = MEMORY[0x277D839B0];
  *(v38 + 64) = MEMORY[0x277D839B0];
  *(v38 + 72) = v40;
  *(v38 + 80) = 1;
  *(v38 + 104) = v41;
  *(v38 + 112) = v11;
  *(v38 + 144) = v42;
  *(v38 + 120) = 1;
  v43 = v11;
  v44 = v39;
  v45 = v40;
  v46 = v43;
  v47 = v44;
  v48 = v45;
  sub_23ED7A0AC(v38);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E388CA0, &qword_23EDC62D0);
  swift_arrayDestroy();
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_23EDC4870;
  *(v49 + 32) = v47;
  *(v49 + 40) = 1;
  *(v49 + 64) = v42;
  *(v49 + 72) = v48;
  *(v49 + 80) = 0;
  *(v49 + 104) = MEMORY[0x277D83B88];
  *(v49 + 112) = v46;
  v143 = v46;
  *(v49 + 144) = v42;
  *(v49 + 120) = 1;
  sub_23ED7A0AC(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388608, &qword_23EDC48A0);
  v50 = swift_initStackObject();
  v51 = MEMORY[0x277CD2C50];
  *(v50 + 16) = xmmword_23EDC4860;
  v52 = *v51;
  *(v50 + 32) = v52;
  *(v50 + 40) = 1;
  v53 = v52;
  sub_23ED7A1D4(v50);
  swift_setDeallocating();
  sub_23ED6FA68(v50 + 32, &qword_27E388610, &qword_23EDC48A8);
  type metadata accessor for CFString(0);
  sub_23ED7BADC(&qword_27E388360, type metadata accessor for CFString);
  v54 = sub_23EDC1890();

  v55 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v56 = *MEMORY[0x277CD2CA0];
  v57 = CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions();
  if (v57)
  {
    v58 = v57;
    v153 = v54;

    v59 = objc_allocWithZone(MEMORY[0x277CBF758]);
    v60 = sub_23EDC1890();
    v61 = [v59 initWithCGImageSource:isrca index:index options:v60];

    v17 = v148;
    v62 = MEMORY[0x277D84F98];
    if (v61)
    {
      v63 = sub_23ED7AE70(v55, v61, v56, v58);
      if (v63)
      {
        v152 = v55;
        v64 = v63;
        if (v62 >> 62)
        {
          v65 = sub_23EDC1FE0();
          if (__OFADD__(v65, 1))
          {
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v62 = sub_23ED76CC0(MEMORY[0x277D84F98], v65 + 1);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v157 = v62;
        sub_23ED78808(v64, v56, isUniquelyReferenced_nonNull_native);

        v33 = v157;
        goto LABEL_66;
      }

      v80 = sub_23EDC1770();
      v81 = sub_23EDC1D80();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_23ED67000, v80, v81, "Couldn't create auxiliary dictionary for ISO", v82, 2u);
        MEMORY[0x23EF24B30](v82, -1, -1);
      }

      sub_23ED76C6C();
      swift_allocError();
      *v83 = 0xD00000000000002CLL;
      *(v83 + 8) = 0x800000023EDCA4A0;
      *(v83 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      v76 = sub_23EDC1770();
      v77 = sub_23EDC1D80();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_23ED67000, v76, v77, "Couldn't create auxiliary image for ISO", v78, 2u);
        MEMORY[0x23EF24B30](v78, -1, -1);
      }

      sub_23ED76C6C();
      swift_allocError();
      *v79 = 0xD000000000000027;
      *(v79 + 8) = 0x800000023EDCA470;
      *(v79 + 16) = 1;
      swift_willThrow();
    }

LABEL_103:

    goto LABEL_104;
  }

  v152 = v55;

  v67 = *MEMORY[0x277CD2C98];
  v68 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(isrca, index, *MEMORY[0x277CD2C98]);
  v17 = v148;
  v33 = MEMORY[0x277D84F98];
  v145 = v68;
  if (v68)
  {
    v141 = v67;
    v69 = objc_allocWithZone(MEMORY[0x277CBF758]);
    v70 = sub_23EDC1890();
    v71 = [v69 initWithCGImageSource:isrca index:index options:v70];

    if (v71)
    {
      v72 = sub_23ED7AE70(v55, v71, v141, v145);
      if (v72)
      {
        v73 = v72;
        if (v33 >> 62)
        {
          v74 = sub_23EDC1FE0();
          if (__OFADD__(v74, 1))
          {
LABEL_113:
            __break(1u);
            return;
          }

          v33 = sub_23ED76CC0(MEMORY[0x277D84F98], v74 + 1);
        }

        v153 = v54;
        v75 = swift_isUniquelyReferenced_nonNull_native();
        *&v157 = v33;
        sub_23ED78808(v73, v141, v75);

        v33 = v157;
        goto LABEL_66;
      }

      v125 = sub_23EDC1770();
      v126 = sub_23EDC1D80();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_23ED67000, v125, v126, "Couldn't create auxiliary dictionary for HDR", v127, 2u);
        MEMORY[0x23EF24B30](v127, -1, -1);
      }

      sub_23ED76C6C();
      swift_allocError();
      *v128 = 0xD00000000000002CLL;
      *(v128 + 8) = 0x800000023EDCA440;
      *(v128 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      v111 = sub_23EDC1770();
      v112 = sub_23EDC1D80();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_23ED67000, v111, v112, "Couldn't create auxiliary image for HDR", v113, 2u);
        MEMORY[0x23EF24B30](v113, -1, -1);
      }

      sub_23ED76C6C();
      swift_allocError();
      *v114 = 0xD000000000000027;
      *(v114 + 8) = 0x800000023EDCA410;
      *(v114 + 16) = 1;
      swift_willThrow();
    }

LABEL_104:
    return;
  }

  v153 = v54;

LABEL_66:
  v84 = *MEMORY[0x277CD2C90];
  v159[0] = *MEMORY[0x277CBFA18];
  v159[1] = v84;
  v159[2] = 0x7469726170736964;
  v159[3] = 0xE900000000000079;
  v85 = v159[0];
  v86 = v84;
  v87 = v85;
  v88 = v86;

  v146 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(isrca, index, v88);
  if (!v146)
  {

    v100 = v153;
LABEL_91:

    sub_23ED6FA68(v159, &qword_27E388618, &qword_23EDC48B0);
    v16 = v142;
LABEL_92:
    if (qword_27E388198 != -1)
    {
      swift_once();
    }

    v131 = sub_23EDC1790();
    __swift_project_value_buffer(v131, qword_27E389800);
    v132 = sub_23EDC1770();
    v133 = sub_23EDC1D60();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = v16;
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_23ED67000, v132, v133, "successfully loaded image", v135, 2u);
      v136 = v135;
      v16 = v134;
      MEMORY[0x23EF24B30](v136, -1, -1);
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      if (sub_23EDC1FE0())
      {
LABEL_98:
        type metadata accessor for CFString(0);
        type metadata accessor for CFDictionary(0);
        sub_23ED7BADC(&qword_27E388360, type metadata accessor for CFString);
        v137 = sub_23EDC1890();

LABEL_101:
        *v150 = v14;
        *(v150 + 8) = v17;
        *(v150 + 16) = v16;
        *(v150 + 20) = v149;
        *(v150 + 24) = v15;
        *(v150 + 28) = v149;
        *(v150 + 32) = v137;
        return;
      }
    }

    else if (*(v33 + 16))
    {
      goto LABEL_98;
    }

    v137 = 0;
    goto LABEL_101;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388620, &qword_23EDC48B8);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_23EDC4880;
  *(v89 + 32) = v87;
  *(v89 + 40) = 1;
  *(v89 + 48) = v143;
  *(v89 + 56) = 1;
  v90 = v143;
  v144 = v87;
  v91 = sub_23ED7A2C4(v89);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388628, &unk_23EDC48C0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_23ED76544(v91);

  v92 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v93 = sub_23EDC1890();
  v94 = [v92 initWithCGImageSource:isrca index:index options:v93];

  if (v94)
  {
    v95 = sub_23ED7AE70(v152, v94, v88, v146);
    v17 = v148;
    if (v95)
    {
      if ((v33 & 0xC000000000000001) == 0)
      {
        v97 = v95;
        v129 = v88;
        v100 = v153;
        goto LABEL_90;
      }

      if (v33 < 0)
      {
        v96 = v33;
      }

      else
      {
        v96 = v33 & 0xFFFFFFFFFFFFFF8;
      }

      v97 = v95;
      v98 = v88;
      v99 = sub_23EDC1FE0();
      v100 = v153;
      if (!__OFADD__(v99, 1))
      {
        v33 = sub_23ED76CC0(v96, v99 + 1);
LABEL_90:
        v130 = swift_isUniquelyReferenced_nonNull_native();
        *&v157 = v33;
        sub_23ED78808(v97, v88, v130);

        v33 = v157;
        v14 = v147;
        goto LABEL_91;
      }

      goto LABEL_107;
    }

    sub_23ED6FA68(v159, &qword_27E388618, &qword_23EDC48B0);

    v115 = v144;
    v116 = v88;

    v117 = sub_23EDC1770();
    v118 = sub_23EDC1D80();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v157 = v120;
      *v119 = 136315138;

      v121 = sub_23ED713FC(0x7469726170736964, 0xE900000000000079, &v157);

      *(v119 + 4) = v121;
      v17 = v148;
      _os_log_impl(&dword_23ED67000, v117, v118, "Couldn't create auxiliary dictionary for %s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v120);
      v122 = v120;
      v14 = v147;
      MEMORY[0x23EF24B30](v122, -1, -1);
      MEMORY[0x23EF24B30](v119, -1, -1);
    }

    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    sub_23EDC1EC0();

    *&v157 = 0xD000000000000029;
    *(&v157 + 1) = 0x800000023EDCA3E0;
    MEMORY[0x23EF237D0](0x7469726170736964, 0xE900000000000079);
    v138 = v157;
    sub_23ED76C6C();
    swift_allocError();
    *v139 = v138;
    *(v139 + 16) = 1;
    swift_willThrow();

    goto LABEL_103;
  }

  sub_23ED6FA68(v159, &qword_27E388618, &qword_23EDC48B0);

  v101 = v144;
  v102 = v88;

  v103 = sub_23EDC1770();
  v104 = sub_23EDC1D80();

  v105 = v148;
  v106 = v146;
  if (os_log_type_enabled(v103, v104))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *&v157 = v108;
    *v107 = 136315138;

    v109 = sub_23ED713FC(0x7469726170736964, 0xE900000000000079, &v157);

    *(v107 + 4) = v109;
    v14 = v147;
    _os_log_impl(&dword_23ED67000, v103, v104, "Couldn't create auxiliary image for %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
    v110 = v108;
    v105 = v148;
    v106 = v146;
    MEMORY[0x23EF24B30](v110, -1, -1);
    MEMORY[0x23EF24B30](v107, -1, -1);
  }

  *&v157 = 0;
  *(&v157 + 1) = 0xE000000000000000;
  sub_23EDC1EC0();

  *&v157 = 0xD000000000000024;
  *(&v157 + 1) = 0x800000023EDCA3B0;
  MEMORY[0x23EF237D0](0x7469726170736964, 0xE900000000000079);
  v123 = v157;
  sub_23ED76C6C();
  swift_allocError();
  *v124 = v123;
  *(v124 + 16) = 1;
  swift_willThrow();
}

uint64_t sub_23ED76544(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388750, &qword_23EDC4D38);
    v1 = sub_23EDC2050();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_dynamicCast();
    sub_23ED7B9EC((v26 + 8), v24);
    sub_23ED7B9EC(v24, v26);
    v14 = *(v1 + 40);
    sub_23EDC19D0();
    sub_23EDC22F0();
    sub_23EDC1A50();
    v15 = sub_23EDC2320();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_23ED7B9EC(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_23ED767DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388698, &qword_23EDC4C88);
    v2 = sub_23EDC2050();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  type metadata accessor for CFString(0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v32 >= v26)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v32);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v34 = (v32 << 9) | (8 * v33);
          v40 = *(*(a1 + 56) + v34);
          v35 = *(*(a1 + 48) + v34);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
          swift_dynamicCast();
          sub_23ED7B9EC((v43 + 8), (v42 + 8));
          sub_23ED7B9EC((v42 + 8), v41);
          sub_23ED7B9EC(v41, v42);
          result = sub_23ED9C888(v35);
          if (v36)
          {
            v28 = *(v2 + 48);
            v29 = *(v28 + 8 * result);
            *(v28 + 8 * result) = v35;
            v30 = result;

            v31 = (*(v2 + 56) + 32 * v30);
            __swift_destroy_boxed_opaque_existential_0Tm(v31);
            result = sub_23ED7B9EC(v42, v31);
            v27 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_41;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v35;
            result = sub_23ED7B9EC(v42, (*(v2 + 56) + 32 * result));
            v37 = *(v2 + 16);
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_42;
            }

            *(v2 + 16) = v39;
            v27 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v32 = v27;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
      v16 = *(*(a1 + 48) + v15);
      *&v41[0] = *(*(a1 + 56) + v15);
      v17 = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A0, &unk_23EDC4C90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      swift_dynamicCast();
      sub_23ED7B9EC((v43 + 8), (v42 + 8));
      sub_23ED7B9EC((v42 + 8), v43);
      v18 = *(v2 + 40);
      sub_23EDC22F0();
      sub_23ED7BADC(&qword_27E388D10, type metadata accessor for CFString);
      sub_23EDC14B0();
      result = sub_23EDC2320();
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v13) = v17;
      result = sub_23ED7B9EC(v43, (*(v2 + 56) + 32 * v13));
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_23ED76C6C()
{
  result = qword_27E3885F0;
  if (!qword_27E3885F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3885F0);
  }

  return result;
}

uint64_t sub_23ED76CC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388700, &qword_23EDC4CF0);
    v2 = sub_23EDC2040();
    v17 = v2;
    sub_23EDC1FD0();
    if (sub_23EDC1FF0())
    {
      type metadata accessor for CFString(0);
      do
      {
        swift_dynamicCast();
        type metadata accessor for CFDictionary(0);
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_23ED77540(v10 + 1, 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        sub_23EDC22F0();
        sub_23ED7BADC(&qword_27E388D10, type metadata accessor for CFString);
        sub_23EDC14B0();
        result = sub_23EDC2320();
        v5 = v17 + 64;
        v6 = -1 << *(v17 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v17 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v17 + 48) + 8 * v9) = v16;
        *(*(v17 + 56) + 8 * v9) = v15;
        ++*(v17 + 16);
      }

      while (sub_23EDC1FF0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_23ED76F3C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23EDC1FC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388660, &qword_23EDC4C50);
  v43 = a2;
  result = sub_23EDC2030();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_23ED7B9EC((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_23ED71DA8(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_23EDC18C0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_23ED7B9EC(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23ED772DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388668, &qword_23EDC4C58);
  result = sub_23EDC2030();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_23EDC22E0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_23ED77540(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388700, &qword_23EDC4CF0);
  v35 = a2;
  result = sub_23EDC2030();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_23EDC22F0();
      type metadata accessor for CFString(0);
      sub_23ED7BADC(&qword_27E388D10, type metadata accessor for CFString);
      sub_23EDC14B0();
      result = sub_23EDC2320();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23ED77840(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_23EDC2030();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(v8 + 56) + 32 * v23;
      if (a2)
      {
        a5(v25, v38);
      }

      else
      {
        sub_23ED71DA8(v25, v38);
        v26 = v24;
      }

      v27 = *(v11 + 40);
      sub_23EDC22F0();
      type metadata accessor for CFString(0);
      sub_23ED7BADC(&qword_27E388D10, type metadata accessor for CFString);
      sub_23EDC14B0();
      result = sub_23EDC2320();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      result = (a5)(v38, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v6 = v36;
      goto LABEL_36;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v36;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_23ED77B2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886D8, &qword_23EDC4CC8);
  v39 = a2;
  result = sub_23EDC2030();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_23EDC22F0();
      sub_23EDC1A50();
      result = sub_23EDC2320();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23ED77DD0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388678, &qword_23EDC4C68);
  v44 = a2;
  result = sub_23EDC2030();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_23ED7BA6C(v31, v45);
      }

      else
      {
        sub_23ED6FA00(v31, v45, &qword_27E388670, &qword_23EDC4C60);
      }

      v32 = *(v12 + 40);
      sub_23EDC22F0();
      sub_23EDC1A50();
      result = sub_23EDC2320();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_23ED7BA6C(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_23ED78124(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_23EDC16D0();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388680, &qword_23EDC4C70);
  v46 = a2;
  result = sub_23EDC2030();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_23EDC22F0();
      sub_23EDC1A50();
      result = sub_23EDC2320();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

_OWORD *sub_23ED784A4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23EDC1FC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23ED9C7E0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23ED79098();
      goto LABEL_7;
    }

    sub_23ED76F3C(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_23ED9C7E0(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_23ED78DD8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);

  return sub_23ED7B9EC(a1, v22);
}

_OWORD *sub_23ED7867C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23ED9C888(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_23ED795F0(&qword_27E3886B8, &qword_23EDC4CA8, sub_23ED7BB70);
      v8 = v16;
      goto LABEL_8;
    }

    sub_23ED77840(v13, a3 & 1, &qword_27E3886B8, &qword_23EDC4CA8, sub_23ED7BB70);
    v17 = *v4;
    v8 = sub_23ED9C888(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_23EDC2280();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return sub_23ED7B9EC(a1, v20);
  }

  else
  {
    sub_23ED78EDC(v8, a2, a1, v19);

    return a2;
  }
}

id sub_23ED78808(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23ED9C888(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_23ED77540(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_23ED9C888(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for CFString(0);
        sub_23EDC2280();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_23ED79468();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_23ED78970(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23ED906A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23ED77B2C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_23ED906A8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_23EDC2280();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_23ED7977C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_23ED78AE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23ED906A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_23ED798E8();
      goto LABEL_7;
    }

    sub_23ED77DD0(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_23ED906A8(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60) - 8) + 72) * v12;

    return sub_23ED7B9FC(a1, v20);
  }

LABEL_13:
  sub_23ED78F44(v12, a2, a3, a1, v18);
}

uint64_t sub_23ED78C58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23ED906A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_23ED79B30();
      goto LABEL_7;
    }

    sub_23ED78124(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_23ED906A8(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23EDC2280();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_23EDC16D0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_23ED78FE8(v12, a2, a3, a1, v18);
}

_OWORD *sub_23ED78DD8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23EDC1FC0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_23ED7B9EC(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_23ED78E98(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_23ED78EDC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_23ED7B9EC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_23ED78F44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  result = sub_23ED7BA6C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_23ED78FE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_23EDC16D0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_23ED79098()
{
  v1 = v0;
  v27 = sub_23EDC1FC0();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388660, &qword_23EDC4C50);
  v4 = *v0;
  v5 = sub_23EDC2020();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_23ED71DA8(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_23ED7B9EC(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_23ED7931C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388668, &qword_23EDC4C58);
  v2 = *v0;
  v3 = sub_23EDC2020();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_23ED79468()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388700, &qword_23EDC4CF0);
  v2 = *v0;
  v3 = sub_23EDC2020();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_23ED795F0(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, unint64_t))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = sub_23EDC2020();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        sub_23ED71DA8(*(v6 + 56) + 32 * v21, v23);
        *(*(v8 + 48) + 8 * v21) = v22;
        a3(v23, *(v8 + 56) + 32 * v21);
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v8;
  }

  return result;
}

id sub_23ED7977C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886D8, &qword_23EDC4CC8);
  v2 = *v0;
  v3 = sub_23EDC2020();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_23ED798E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388678, &qword_23EDC4C68);
  v5 = *v0;
  v6 = sub_23EDC2020();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_23ED6FA00(*(v5 + 56) + v27, v31, &qword_27E388670, &qword_23EDC4C60);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_23ED7BA6C(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    v7 = v33;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_23ED79B30()
{
  v1 = v0;
  v36 = sub_23EDC16D0();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388680, &qword_23EDC4C70);
  v4 = *v0;
  v5 = sub_23EDC2020();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_23ED79DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388668, &qword_23EDC4C58);
    v3 = sub_23EDC2050();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_23ED9C844(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_23ED79E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388748, &qword_23EDC4D30);
    v3 = sub_23EDC2050();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23ED9C888(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_23ED79F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886B8, &qword_23EDC4CA8);
    v3 = sub_23EDC2050();
    v4 = a1 + 32;

    while (1)
    {
      sub_23ED6FA00(v4, &v11, &qword_27E3886C0, &qword_23EDC4CB0);
      v5 = v11;
      result = sub_23ED9C888(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23ED7B9EC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_23ED7A0AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388750, &qword_23EDC4D38);
    v3 = sub_23EDC2050();
    v4 = a1 + 32;

    while (1)
    {
      sub_23ED6FA00(v4, &v11, &unk_27E388CA0, &qword_23EDC62D0);
      v5 = v11;
      result = sub_23ED9E630(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23ED7B9EC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_23ED7A1D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388760, &qword_23EDC4D48);
    v3 = sub_23EDC2050();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_23ED9C888(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_23ED7A2C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388758, &qword_23EDC4D40);
    v3 = sub_23EDC2050();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_23ED9E630(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_23ED7A3B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388698, &qword_23EDC4C88);
    v3 = sub_23EDC2050();
    v4 = a1 + 32;

    while (1)
    {
      sub_23ED6FA00(v4, &v11, &qword_27E3886D0, &qword_23EDC4CC0);
      v5 = v11;
      result = sub_23ED9C888(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23ED7B9EC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_23ED7A504(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23EDC2050();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_23ED9C888(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_23ED7A5F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886F0, &unk_23EDC4CE0);
    v3 = sub_23EDC2050();
    v4 = a1 + 32;

    while (1)
    {
      sub_23ED6FA00(v4, &v11, &qword_27E3886F8, &qword_23EDC60C0);
      v5 = v11;
      result = sub_23ED9E630(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23ED7B9EC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_23ED7A71C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388658, ":t");
    v3 = sub_23EDC2050();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23ED906A8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_23ED7A818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886E0, &unk_23EDC4CD0);
    v3 = sub_23EDC2050();
    v4 = a1 + 32;

    while (1)
    {
      sub_23ED6FA00(v4, &v11, &qword_27E3886E8, &qword_23EDC6B60);
      v5 = v11;
      result = sub_23ED9E630(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23ED7B9EC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_23ED7A940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388688, &qword_23EDC4C78);
    v3 = sub_23EDC2050();
    v4 = a1 + 32;

    while (1)
    {
      sub_23ED6FA00(v4, &v11, &qword_27E388690, &qword_23EDC4C80);
      v5 = v11;
      result = sub_23ED9E630(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23ED7B9EC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

id sub_23ED7AA68(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  result = [a2 extent];
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = [a2 extent];
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388718, &qword_23EDC4D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC4860;
  v12 = *MEMORY[0x277CC4DE8];
  *(inited + 32) = *MEMORY[0x277CC4DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388720, &qword_23EDC4D08);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_23EDC4860;
  v14 = *MEMORY[0x277CD2A50];
  *(v13 + 32) = *MEMORY[0x277CD2A50];
  v15 = v12;
  v16 = v14;
  sub_23EDC1EC0();

  v17 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v17);

  MEMORY[0x23EF237D0](120, 0xE100000000000000);
  v18 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v18);

  MEMORY[0x23EF237D0](45, 0xE100000000000000);
  v19 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v19);

  v20 = sub_23EDC19A0();

  *(v13 + 40) = v20;
  v21 = sub_23ED79E8C(v13);
  swift_setDeallocating();
  sub_23ED6FA68(v13 + 32, &qword_27E388728, &qword_23EDC4D10);
  *(inited + 40) = v21;
  sub_23ED7A504(inited, &qword_27E388740, &qword_23EDC4D28);
  swift_setDeallocating();
  sub_23ED6FA68(inited + 32, &qword_27E388730, &qword_23EDC4D18);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388738, &qword_23EDC4D20);
  sub_23ED7BADC(&qword_27E388360, type metadata accessor for CFString);
  v22 = a4;
  v23 = sub_23EDC1890();

  v24 = v23;
  v25 = sub_23EDC1400();

  if (!v4)
  {
    [v27 extent];
    [v26 render:v27 toCVPixelBuffer:v25 bounds:v22 colorSpace:?];
  }

  return v25;
}

uint64_t sub_23ED7AE70(void *a1, void *a2, const void *a3, id a4)
{
  if ([a4 __swift_objectForKeyedSubscript_])
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {
    goto LABEL_14;
  }

  sub_23ED7BB24(0, &qword_27E388630, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if ([v40 __swift_objectForKeyedSubscript_])
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {

LABEL_14:
    sub_23ED6FA68(&v43, &qword_27E3885E8, &qword_23EDC4840);
    return 0;
  }

  sub_23ED7BB24(0, &qword_27E388708, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v37 = *MEMORY[0x277CD2C58];
  if ([a4 __swift_objectForKeyedSubscript_])
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
    sub_23ED7B9EC(&v41, &v43);
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885E8, &qword_23EDC4840);
  if (swift_dynamicCast())
  {
    v9 = CFGetTypeID(v41);
    if (v9 == CGColorSpaceGetTypeID())
    {
      type metadata accessor for CGColorSpace(0);
      v39 = swift_dynamicCastUnknownClassUnconditional();
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
  }

  v39 = 0;
LABEL_24:
  v38 = *MEMORY[0x277CD2C70];
  if ([a4 __swift_objectForKeyedSubscript_])
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
    sub_23ED7B9EC(&v41, &v43);
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_32:
    return 0;
  }

  v10 = CFGetTypeID(v41);
  if (v10 != CGImageMetadataGetTypeID())
  {
    swift_unknownObjectRelease();

    goto LABEL_32;
  }

  type metadata accessor for CGImageMetadata(0);
  v12 = v11;
  v13 = swift_dynamicCastUnknownClassUnconditional();
  v14 = sub_23ED7AA68(a1, a2, [v40 unsignedIntValue], 0);
  v15 = *MEMORY[0x277CD2CA0];
  v16 = v14;
  if (CFEqual(a3, v15))
  {
    v18 = v13;
    if ([a4 __swift_objectForKeyedSubscript_])
    {
      sub_23EDC1E50();
      swift_unknownObjectRelease();
      sub_23ED7B9EC(&v41, &v43);
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    if (swift_dynamicCast())
    {
      v20 = CFGetTypeID(v41);
      if (v20 == CGImageMetadataGetTypeID())
      {
        v19 = swift_dynamicCastUnknownClassUnconditional();
        goto LABEL_43;
      }

      swift_unknownObjectRelease();
    }

    v19 = 0;
    goto LABEL_43;
  }

  v19 = 0;
  v18 = v13;
LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388710, &qword_23EDC4CF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC4880;
  v22 = *MEMORY[0x277CD2C80];
  *(inited + 32) = *MEMORY[0x277CD2C80];
  type metadata accessor for CVBuffer(0);
  *(inited + 40) = v16;
  *(inited + 64) = v23;
  *(inited + 72) = v38;
  *(inited + 104) = v12;
  *(inited + 80) = v18;
  v24 = v16;
  v25 = v18;
  v26 = v24;
  v27 = v22;
  v28 = v38;
  v29 = v25;
  sub_23ED79F84(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886C0, &qword_23EDC4CB0);
  swift_arrayDestroy();
  if (v39)
  {
    type metadata accessor for CGColorSpace(0);
    *(&v44 + 1) = v30;
    *&v43 = v39;
    sub_23ED7B9EC(&v43, &v41);
    v31 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23ED7867C(&v41, v37, isUniquelyReferenced_nonNull_native);
  }

  if (v19)
  {
    v33 = *MEMORY[0x277CD2C78];
    *(&v44 + 1) = v12;
    *&v43 = v19;
    sub_23ED7B9EC(&v43, &v41);
    v34 = v19;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_23ED7867C(&v41, v33, v35);
  }

  type metadata accessor for CFString(0);
  sub_23ED7BADC(&qword_27E388360, type metadata accessor for CFString);
  v36 = sub_23EDC1890();

  return v36;
}