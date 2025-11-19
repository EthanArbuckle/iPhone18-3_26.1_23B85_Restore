uint64_t sub_23825ED8C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(uint64_t a1), uint64_t))
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  a4(v7, sub_23825F498, v8);
}

uint64_t sub_23825EE4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23825EE94(uint64_t a1, uint64_t a2)
{
  Event = type metadata accessor for ElectricalLoadEvent(0);
  (*(*(Event - 8) + 16))(a2, a1, Event);
  return a2;
}

uint64_t sub_23825EEF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23825EF60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23825EFC0()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  v13 = *(v0 + 6);

  v14 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_23825F12C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[5];
  v18 = v1[4];
  v6 = *(sub_238278BC0() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0) - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[6];
  v14 = v1[7];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2382470D0;

  return sub_23825D454(a1, v11, v12, v13, v14, v1 + v7, v1 + v10, v18);
}

uint64_t sub_23825F2B8()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_23825F390(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_238278BC0() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23825EB14(a1, a2, a3, v9, v3 + v8, v10);
}

uint64_t sub_23825F448()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23825F498(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  v6 = 0;
  return v2(&v5);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23825F4FC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_2382602BC;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_238250868;
  v10[3] = &block_descriptor_14;
  v9 = _Block_copy(v10);

  [v7 setUpSandboxWithSandboxExtension:a4 reply:v9];
  _Block_release(v9);
}

uint64_t sub_23825F614(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *(v7 + 16);
  v25 = a1;
  v22 = v11;
  v11(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v21 = *(v7 + 32);
  v21(v13 + v12, v10, v6);
  aBlock[4] = sub_2382600AC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_7;
  v14 = _Block_copy(aBlock);
  v15 = a2;

  v16 = [v15 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v26)
  {
    v28 = v26;
    v22(v10, v25, v6);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    v21(v17 + v12, v10, v6);
    v18 = v15;
    v24(&v28, sub_238260214, v17);
    swift_unknownObjectRelease();
  }

  else
  {
    [v15 invalidate];
    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23825F914(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_238278B10();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23825F9D4, 0, 0);
}

uint64_t sub_23825F9D4()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  sub_238278CE0();
  v1 = sub_238278CD0();
  sub_238278CC0();
  v0[2].receiver = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    super_class = v0[3].super_class;
    v4 = *(super_class + 2);
    super_class = (super_class + 16);
    v45 = v4;
    v5 = v1 + ((*(super_class + 64) + 32) & ~*(super_class + 64));
    v6 = *MEMORY[0x277D861C0];
    v43 = *(super_class + 7);
    v42 = *MEMORY[0x277D861E8];
    v39 = (super_class - 8);
    v40 = (super_class + 16);
    v41 = MEMORY[0x277D84F90];
    v44 = *MEMORY[0x277D861C0];
    while (1)
    {
      v46 = v2;
      v45(v0[4].receiver, v5, v0[3].receiver);
      type metadata accessor for SandboxExtension.Context();
      v9 = swift_allocObject();
      v9[2] = j__sandbox_extension_consume;
      v9[3] = 0;
      v9[4] = j__sandbox_extension_release;
      v9[5] = 0;
      v9[6] = j__sandbox_extension_issue_file;
      v9[7] = 0;
      v10 = type metadata accessor for SandboxExtension();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      v13 = swift_allocObject();
      *(v13 + 40) = 0;
      *(v13 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v21 = v13;
      receiver = v0[4].receiver;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v23 = sandbox_extension_issue_file();

      v24 = v0[4].receiver;
      v25 = v0[3].receiver;
      if (v23)
      {
        *(v21 + 3) = sub_238279050();
        *(v21 + 4) = v26;
        free(v23);
        (*v40)(&v21[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], v24, v25);
        *(v21 + 2) = v9;

        MEMORY[0x2383ECFB0](v27);
        if (*((v0[2].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *((v0[2].receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2382790F0();
        }

        sub_238279120();

        v41 = v0[2].receiver;
      }

      else
      {

        (*v39)(v24, v25);
        v7 = *(*v21 + 48);
        v8 = *(*v21 + 52);
        swift_deallocPartialClassInstance();
      }

      v6 = v44;
      v5 += v43;
      v2 = v46 - 1;
      if (v46 == 1)
      {

        v30 = v41;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
LABEL_14:
    v31 = v0[2].super_class;
    v32 = type metadata accessor for XPCSandboxExtensionContainer();
    v33 = objc_allocWithZone(v32);
    *&v33[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v30;
    v0[1].receiver = v33;
    v0[1].super_class = v32;
    v34 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[4].super_class = v34;
    v35 = swift_allocObject();
    v0[5].receiver = v35;
    *(v35 + 16) = v34;
    v36 = v34;
    v37 = swift_task_alloc();
    v0[5].super_class = v37;
    *(v37 + 2) = v31;
    *(v37 + 3) = sub_238260094;
    *(v37 + 4) = v35;
    v38 = *(MEMORY[0x277D859E0] + 4);
    v13 = swift_task_alloc();
    v0[6].receiver = v13;
    *v13 = v0;
    *(v13 + 8) = sub_23825FED4;
    v18 = sub_23826009C;
    v17 = 0x8000000238281720;
    v20 = MEMORY[0x277D84F78] + 8;
    v14 = 0;
    v15 = 0;
    v16 = 0xD000000000000015;
    v19 = v37;
  }

  return MEMORY[0x2822007B8](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_23825FED4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23825FFEC, 0, 0);
}

uint64_t sub_23825FFEC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23826005C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2382600AC(int a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_2382678D4(a1, v4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_4Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238260214()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_238267920(v2);
}

uint64_t sub_238260284()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2382602BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2382602F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_238260390(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2382603E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_238278BC0();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v3[9] = *(v7 + 64);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382604EC, 0, 0);
}

uint64_t sub_2382604EC()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 88) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_2382606B0;

  return sub_23825F914(v3);
}

uint64_t sub_2382606B0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2382607C4, 0, 0);
}

uint64_t sub_2382607C4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = sub_2382647C0;
  *(v8 + 24) = v7;
  v9 = type metadata accessor for EnergyVenue();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_task_alloc();
  v0[14] = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = sub_2382678D0;
  v10[5] = v8;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_2382609B4;
  v13 = v0[5];
  v14 = v0[2];

  return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_238267838, v10, v13);
}

uint64_t sub_2382609B4()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238260B38, 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = v3[14];
    v6 = v3[10];
    v7 = v3[6];

    sub_23824C65C(v7, &qword_27DEF7CE0, &unk_23827F930);

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_238260B38()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[6];

  sub_23824C65C(v4, &qword_27DEF7CE0, &unk_23827F930);

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_238260BE0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF0, &qword_23827F838);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  sub_23823D83C(a1, &v21 - v15, &qword_27DEF7CE0, &unk_23827F930);
  v17 = type metadata accessor for EnergyVenue();
  v18 = *(v17 - 8);
  v19 = 1;
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    sub_23826469C(v16, v14);
    (*(v18 + 56))(v14, 0, 1, v17);
    sub_23826424C(v14, v8);
    v19 = 0;
  }

  (*(v10 + 56))(v8, v19, 1, v9);
  v22(v8, a2);
  return sub_23824C65C(v8, &qword_27DEF7CF0, &qword_23827F838);
}

uint64_t sub_238260E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_238278BC0();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v3[9] = *(v7 + 64);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238260F30, 0, 0);
}

uint64_t sub_238260F30()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 88) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_2382610F4;

  return sub_23825F914(v3);
}

uint64_t sub_2382610F4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238261208, 0, 0);
}

uint64_t sub_238261208()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = sub_2382641D4;
  *(v8 + 24) = v7;
  v9 = type metadata accessor for EnergyVenue();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_task_alloc();
  v0[14] = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = sub_238264204;
  v10[5] = v8;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_2382613F8;
  v13 = v0[5];
  v14 = v0[2];

  return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_238264240, v10, v13);
}

uint64_t sub_2382613F8()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238267894, 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = v3[14];
    v6 = v3[10];
    v7 = v3[6];

    sub_23824C65C(v7, &qword_27DEF7CE0, &unk_23827F930);

    v8 = v3[1];

    return v8();
  }
}

void sub_23826157C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v14 = sub_238278B90();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v17[4] = a6;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2382678CC;
  v17[3] = a7;
  v16 = _Block_copy(v17);

  [a1 *a8];
  _Block_release(v16);
}

uint64_t sub_23826167C(uint64_t a1, void *a2, void (*a3)(_BYTE *, void *))
{
  v6 = type metadata accessor for EnergyVenue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v23[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23[-v16];
  if (a2)
  {
    v18 = a2;
    sub_238273938(a2, &v24);
    v19 = v24;
    if (v24 != 9)
    {
      (*(v7 + 56))(v17, 1, 1, v6);
      sub_238241158();
      v21 = swift_allocError();
      *v22 = v19;
      a3(v17, v21);

      return sub_23824C65C(v17, &qword_27DEF7CE0, &unk_23827F930);
    }
  }

  if (a1)
  {
    sub_238264700(a1 + OBJC_IVAR____TtC9EnergyKit23XPCEnergyVenueContainer_value, v11);
    sub_23826469C(v11, v13);
    sub_238264700(v13, v17);
    (*(v7 + 56))(v17, 0, 1, v6);
    a3(v17, 0);
    sub_23824C65C(v17, &qword_27DEF7CE0, &unk_23827F930);
    return sub_238264764(v13);
  }

  (*(v7 + 56))(v17, 1, 1, v6);
  a3(v17, 0);
  return sub_23824C65C(v17, &qword_27DEF7CE0, &unk_23827F930);
}

void sub_238261918(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_23826756C;
  *(v7 + 24) = v6;
  v9[4] = sub_2382675A4;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2382678CC;
  v9[3] = &block_descriptor_147;
  v8 = _Block_copy(v9);

  [v5 energyVenuesWithReply_];
  _Block_release(v8);
}

void sub_238261A28(char *a1, id a2, void (*a3)(uint64_t, void *))
{
  if (!a2)
  {
LABEL_4:
    if (a1)
    {
      v8 = *&a1[OBJC_IVAR____TtC9EnergyKit24XPCEnergyVenuesContainer_value];
      v9 = a1;

      a3(v10, 0);
    }

    else
    {
      a3(MEMORY[0x277D84F90], 0);
    }

    return;
  }

  v6 = a2;
  sub_238273938(a2, &v13);
  v7 = v13;
  if (v13 == 9)
  {

    goto LABEL_4;
  }

  sub_238241158();
  v11 = swift_allocError();
  *v12 = v7;
  a3(0, v11);
}

void sub_238261B74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278B90();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_238266F14;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_238261D24;
  v9[3] = &block_descriptor_96;
  v8 = _Block_copy(v9);

  [a1 isCostInclusionConfiguredForGuidanceFor:v6 reply:v8];
  _Block_release(v8);
}

void sub_238261C74(char a1, id a2, void (*a3)(void, void))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v6 = a2;
  sub_238273938(a2, &v7);
  if (v7 == 9)
  {

LABEL_4:
    a3(a1 & 1, 0);
    return;
  }

  a3(0, 0);
}

void sub_238261D24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_238261D9C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  a4(v11, a7, v12);
}

void sub_238261E34(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  v8 = sub_238278B90();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11[4] = sub_238266C98;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_238262010;
  v11[3] = &block_descriptor_69;
  v10 = _Block_copy(v11);

  [v7 configureCostInclusionForGuidanceWithIsIncluded:a4 & 1 for:v8 reply:v10];
  _Block_release(v10);
}

void sub_238261F3C(void *a1, void (*a2)(void))
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v4 = a1;
  sub_238273938(a1, &v8);
  v5 = v8;
  if (v8 == 9)
  {

LABEL_4:
    (a2)(0);
    return;
  }

  sub_238241158();
  v6 = swift_allocError();
  *v7 = v5;
  a2();
}

void sub_238262010(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_23826207C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2382672AC;
  *(v7 + 24) = v6;
  v9[4] = sub_2382672E4;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_238260390;
  v9[3] = &block_descriptor_126;
  v8 = _Block_copy(v9);

  [v5 hasAnyHomesWithReply_];
  _Block_release(v8);
}

void sub_23826218C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_238266F54;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_238262010;
  v8[3] = &block_descriptor_106;
  v7 = _Block_copy(v8);

  [v5 createFirstHomeWithReply_];
  _Block_release(v7);
}

uint64_t sub_238262294(uint64_t a1, void *a2, int a3, void (*a4)(uint64_t *, uint64_t (*)(char *a1), uint64_t), uint64_t a5)
{
  v25 = a5;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(v9 + 16);
  v28 = a1;
  v24 = v13;
  v13(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v23 = *(v9 + 32);
  v23(v15 + v14, v12, v8);
  v27 = a3;
  *(v15 + v14 + v10) = a3;
  aBlock[4] = sub_238267084;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_114;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  v18 = [v17 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v29)
  {
    v31 = v29;
    v24(v12, v28, v8);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v23(v19 + v14, v12, v8);
    v20 = v17;
    v26(&v31, sub_23826722C, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = v27 & 1;
    [v17 invalidate];
    v30[0] = v21;
    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_2382625B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t (*)(uint64_t *a1, void *a2), uint64_t), uint64_t a6)
{
  v34 = a6;
  v35 = a5;
  v36 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = *(v10 + 16);
  v37 = a1;
  v32 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v18 = *(v10 + 32);
  v33 = v15;
  v19 = v17 + v15;
  v20 = v16;
  v21 = v36;
  v31 = v18;
  v18(v19, v13, v9);
  v22 = (v17 + v20);
  v38 = a3;
  *v22 = a3;
  v22[1] = v21;
  aBlock[4] = sub_2382675B0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_153;
  v23 = _Block_copy(aBlock);

  v24 = a2;

  v25 = [v24 remoteObjectProxyWithErrorHandler_];
  _Block_release(v23);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v39)
  {
    v41 = v39;
    v32(v13, v37, v9);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v31(v26 + v33, v13, v9);
    v27 = (v26 + v20);
    *v27 = v38;
    v27[1] = v21;
    v28 = v24;

    v35(&v41, sub_238267744, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    [v24 invalidate];
    v40[0] = v38;
    v40[1] = v21;

    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_238262914(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t (*)(uint64_t *a1, void *a2), uint64_t), uint64_t a5)
{
  v25 = a5;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(v9 + 16);
  v27 = a1;
  v24 = v13;
  v13(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v23 = *(v9 + 32);
  v23(v16 + v14, v12, v8);
  v28 = a3;
  *(v16 + v15) = a3;
  aBlock[4] = sub_2382648BC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_45;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  v19 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v29)
  {
    v31 = v29;
    v24(v12, v27, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v23(v20 + v14, v12, v8);
    *(v20 + v15) = v28;
    v21 = v18;
    v26(&v31, sub_238264A74, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    [v18 invalidate];
    v30[0] = v28;
    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_238262C3C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t (*)(uint64_t a1, void *a2), uint64_t), uint64_t a5)
{
  v37 = a5;
  v38 = a4;
  v39 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  v17 = *(v13 + 16);
  v41 = a1;
  v35 = v17;
  v17(v16, a1, v12);
  v40 = a3;
  v18 = v9;
  sub_23823D83C(a3, v11, &qword_27DEF7CE0, &unk_23827F930);
  v19 = *(v13 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = *(v8 + 80);
  v22 = (v14 + v21 + v20) & ~v21;
  v32[1] = v18;
  v34 = v19 | v21;
  v23 = swift_allocObject();
  v24 = v39;
  *(v23 + 16) = v39;
  v25 = *(v13 + 32);
  v36 = v20;
  v33 = v25;
  v25(v23 + v20, v16, v12);
  sub_23826424C(v11, v23 + v22);
  aBlock[4] = sub_2382642BC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_8;
  v26 = _Block_copy(aBlock);
  v27 = v24;

  v28 = [v27 remoteObjectProxyWithErrorHandler_];
  _Block_release(v26);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v42)
  {
    v44 = v42;
    v35(v16, v41, v12);
    sub_23823D83C(v40, v11, &qword_27DEF7CE0, &unk_23827F930);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    v33(v29 + v36, v16, v12);
    sub_23826424C(v11, v29 + v22);
    v30 = v27;
    v38(&v44, sub_238264594, v29);
    swift_unknownObjectRelease();
  }

  else
  {
    [v27 invalidate];
    sub_23823D83C(v40, v11, &qword_27DEF7CE0, &unk_23827F930);
    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23826306C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t (*)(uint64_t *a1, void *a2), uint64_t), uint64_t a5)
{
  v27 = a5;
  v28 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = *(v9 + 16);
  v29 = a1;
  v25 = v13;
  v13(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = *(v9 + 32);
  v26 = v14;
  v24 = v17;
  v17(v16 + v14, v12, v8);
  *(v16 + v15) = a3;
  aBlock[4] = sub_238267320;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_135;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  v20 = [v19 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v30)
  {
    v32 = v30;
    v25(v12, v29, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v24(v21 + v26, v12, v8);
    *(v21 + v15) = a3;
    v22 = v19;

    v28(&v32, sub_2382674B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    [v19 invalidate];
    v31[0] = a3;

    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_2382633AC(uint64_t a1, void *a2, char a3, void (*a4)(uint64_t *, uint64_t (*)(unsigned __int8 *a1, void *a2), uint64_t), uint64_t a5)
{
  v25 = a5;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D00, &qword_23827F860);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(v9 + 16);
  v28 = a1;
  v24 = v13;
  v13(v12, a1, v8);
  v27 = a3 & 1;
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = v14 + v10;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v23 = *(v9 + 32);
  v23(v16 + v14, v12, v8);
  *(v16 + v15) = a3;
  aBlock[4] = sub_238266E18;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_84;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  v19 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v29)
  {
    v31 = v29;
    v24(v12, v28, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v23(v20 + v14, v12, v8);
    *(v20 + v15) = v27;
    v21 = v18;
    v26(&v31, sub_238266E2C, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    [v18 invalidate];
    v30[0] = v27;
    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_2382636D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - v8;
  [a2 invalidate];
  sub_23823D83C(a4, v9, &qword_27DEF7CE0, &unk_23827F930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
  return sub_238279180();
}

uint64_t sub_2382637A8(int a1, int a2, void *a3, id a4)
{
  [a4 invalidate];
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890);
    return sub_238279170();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890);
    return sub_238279180();
  }
}

uint64_t sub_238263878(int a1, int a2, void *a3, id a4)
{
  [a4 invalidate];
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
    return sub_238279170();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
    return sub_238279180();
  }
}

uint64_t sub_238263934(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF0, &qword_23827F838);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v23 - v19;
  [a3 invalidate];
  if (a2)
  {
    v23[1] = a2;
    v21 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
    return sub_238279170();
  }

  else
  {
    sub_23823D83C(a1, v12, &qword_27DEF7CF0, &qword_23827F838);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_23824C65C(v12, &qword_27DEF7CF0, &qword_23827F838);
      sub_23823D83C(a5, v18, &qword_27DEF7CE0, &unk_23827F930);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
      return sub_238279180();
    }

    else
    {
      sub_23826424C(v12, v20);
      sub_23823D83C(v20, v18, &qword_27DEF7CE0, &unk_23827F930);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
      sub_238279180();
      return sub_23824C65C(v20, &qword_27DEF7CE0, &unk_23827F930);
    }
  }
}

uint64_t sub_238263BB8(int a1, void *a2, id a3)
{
  [a3 invalidate];
  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888);
    return sub_238279170();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888);
    return sub_238279180();
  }
}

uint64_t sub_238263C74(int a1, void *a2, id a3)
{
  [a3 invalidate];
  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D00, &qword_23827F860);
    return sub_238279170();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D00, &qword_23827F860);
    return sub_238279180();
  }
}

uint64_t sub_238263D50(uint64_t a1, void *a2, int a3, void (*a4)(uint64_t *, uint64_t (*)(void *a1), uint64_t), uint64_t a5)
{
  v26 = a5;
  v27 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = *(v9 + 16);
  v29 = a1;
  v25 = v13;
  v13(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v24 = *(v9 + 32);
  v24(v15 + v14, v12, v8);
  v28 = a3;
  *(v15 + v14 + v10) = a3;
  aBlock[4] = sub_238266B64;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_60;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  v18 = [v17 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v30)
  {
    v32 = v30;
    v25(v12, v29, v8);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v24(v19 + v14, v12, v8);
    v20 = v17;
    v27(&v32, sub_238266C18, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    [v17 invalidate];
    sub_238241158();
    v21 = swift_allocError();
    *v22 = v28;
    v31[0] = v21;
    sub_238279170();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_238264094(char *a1, id a2)
{
  v2 = *a1;
  [a2 invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
  return sub_238279180();
}

uint64_t sub_2382640F8(int a1, id a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v4 = a4[1];
  [a2 invalidate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890);
  return sub_238279180();
}

uint64_t sub_238264168(int a1, id a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  [a2 invalidate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888);
  return sub_238279180();
}

uint64_t sub_23826424C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2382642BC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2382636D4(a1, v7, v1 + v4, v8);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_9Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = type metadata accessor for EnergyVenue();
  if (!(*(*(v11 - 8) + 48))(v0 + v8, 1, v11))
  {
    v12 = *(v10 + 8);

    v13 = *(v11 + 20);
    v14 = sub_238278BC0();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_238264594(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_238263934(a1, a2, v9, v2 + v6, v10);
}

uint64_t sub_23826469C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyVenue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238264700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyVenue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238264764(uint64_t a1)
{
  v2 = type metadata accessor for EnergyVenue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2382648BC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  [*(v0 + 16) invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  return sub_238279180();
}

uint64_t objectdestroy_41Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_238264A74(uint64_t *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0) - 8);
  v6 = *(v2 + 16);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_238263878(v7, v8, a2, v6);
}

uint64_t sub_238264B54()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 24) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_238264D18;

  return sub_23825F914(v3);
}

uint64_t sub_238264D18()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v5 = *v0;

  *(v1 + 57) = 0;

  return MEMORY[0x2822009F8](sub_238264E30, 0, 0);
}

uint64_t sub_238264E30()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = v0 + 57;
  v2[4] = sub_23826207C;
  v2[5] = 0;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_238264F40;
  v5 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 7, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_238266F7C, v2, v5);
}

uint64_t sub_238264F40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v7 + 8);

  return v5(v4);
}

uint64_t sub_238265078()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 24) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_23826523C;

  return sub_23825F914(v3);
}

uint64_t sub_23826523C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238265350, 0, 0);
}

uint64_t sub_238265350()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 8;
  *(v2 + 32) = sub_23826218C;
  *(v2 + 40) = 0;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_238265460;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000022, 0x80000002382817E0, sub_23826783C, v2, v5);
}

uint64_t sub_238265460()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_238265594;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_23826557C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238265594()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_238265618()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 40) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2382657DC;

  return sub_23825F914(v3);
}

uint64_t sub_2382657DC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2382658F0, 0, 0);
}

uint64_t sub_2382658F0()
{
  v1 = v0[4];
  v0[3] = MEMORY[0x277D84F90];
  v2 = swift_task_alloc();
  v0[7] = v2;
  v2[2] = v1;
  v2[3] = v0 + 3;
  v2[4] = sub_238261918;
  v2[5] = 0;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7DC0, &qword_23827F880);
  *v4 = v0;
  v4[1] = sub_238265A1C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_23826730C, v2, v5);
}

uint64_t sub_238265A1C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238265B5C, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[2];
    v6 = v3[1];

    return v6(v5);
  }
}

uint64_t sub_238265B5C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_238265BC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_238278BC0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238265C88, 0, 0);
}

uint64_t sub_238265C88()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 64) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_238265E4C;

  return sub_23825F914(v3);
}

uint64_t sub_238265E4C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238265F60, 0, 0);
}

uint64_t sub_238265F60()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  (*(v3 + 16))(v1, *(v0 + 16), v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = swift_allocObject();
  *(v0 + 80) = v7;
  *(v7 + 16) = sub_238266D28;
  *(v7 + 24) = v6;
  *(v0 + 113) = 0;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v8[2] = v4;
  v8[3] = v0 + 113;
  v8[4] = sub_238266DB0;
  v8[5] = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_238266110;
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 112, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_238266DEC, v8, v11);
}

uint64_t sub_238266110()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238266278, 0, 0);
  }

  else
  {
    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
    v6 = *(v3 + 56);

    v7 = *(v3 + 112);

    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_238266278()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4(0);
}

uint64_t sub_2382662F4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 112) = a1;
  v4 = sub_238278BC0();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v5 + 64);
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382663C0, 0, 0);
}

uint64_t sub_2382663C0()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 64) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_238266584;

  return sub_23825F914(v3);
}

uint64_t sub_238266584()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238266698, 0, 0);
}

uint64_t sub_238266698()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(v0 + 112);
  (*(v3 + 16))(v1, *(v0 + 16), v2);
  v6 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 80) = v7;
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = 6;
  *(v8 + 32) = sub_238266AB4;
  *(v8 + 40) = v7;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_238266828;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000022, 0x80000002382817E0, sub_238266B40, v8, v11);
}

uint64_t sub_238266828()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_2382669B4;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_238266944;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238266944()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2382669B4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_238266A2C()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_238266AB4(void **a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(sub_238278BC0() - 8) + 80);
  v8 = *(v3 + 16);

  sub_238261E34(a1, a2, a3, v8);
}

uint64_t sub_238266B64(int a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_238267968(a1, v4, v5, v6);
}

uint64_t sub_238266C18(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_2382679E8(a1, v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_238266D28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_238278BC0() - 8) + 80);

  sub_238261B74(a1, a2, a3);
}

uint64_t sub_238266E2C(unsigned __int8 *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D00, &qword_23827F860) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + *(v5 + 64));
  v8 = *a1;

  return sub_238263C74(v8, a2, v6);
}

uint64_t sub_238266EDC(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_238266F1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238266F54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_56Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64) + v6;

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 1, v5 | 7);
}

uint64_t sub_238267098(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80)) + *(v6 + 64));
  [*(v3 + 16) invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_238279180();
}

uint64_t objectdestroy_62Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23826722C(char *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_238264094(a1, v4);
}

uint64_t sub_2382672AC(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2382672E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_238267320(int a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_238264168(a1, v5, v1 + v4, v6);
}

uint64_t objectdestroy_131Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2382674B0(uint64_t *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *a1;

  return sub_238263BB8(v8, a2, v6);
}

uint64_t sub_23826756C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2382675B0(int a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2382640F8(a1, v5, v1 + v4, v6);
}

uint64_t objectdestroy_149Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_238267744(uint64_t *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *a1;
  v9 = a1[1];
  v10 = *v7;
  v11 = v7[1];

  return sub_2382637A8(v8, v9, a2, v6);
}

uint64_t sub_2382678D4(int a1, id a2)
{
  [a2 invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0);
  return sub_238279180();
}

uint64_t sub_238267920(void *a1)
{
  [a1 invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0);
  return sub_238279180();
}

uint64_t sub_238267968(int a1, id a2, uint64_t a3, char a4)
{
  [a2 invalidate];
  sub_238241158();
  swift_allocError();
  *v5 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850);
  return sub_238279170();
}

uint64_t sub_2382679E8(void *a1, id a2)
{
  [a2 invalidate];
  if (a1)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850);
    return sub_238279170();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850);
    return sub_238279180();
  }
}

uint64_t EKXPCValueContainer<>.init(_coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_238279300();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v33 - v13;
  v37 = *(AssociatedTypeWitness - 8);
  v15 = *(v37 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v33 - v19;
  sub_238267DB8();
  v21 = sub_2382792E0();
  if (v21)
  {
    v22 = v21;
    v33[0] = a2;
    v33[1] = v5;
    v34 = a3;
    v38 = a1;
    v23 = sub_238278B30();
    v25 = v24;
    v26 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v27 = sub_238268008();
    sub_23824FCC4(v23, v25);
    if (v27)
    {
      sub_2382792D0();
      v29 = v37;
      v30 = (*(v37 + 48))(v14, 1, AssociatedTypeWitness);
      v31 = v38;
      if (v30 != 1)
      {
        (*(v29 + 32))(v20, v14, AssociatedTypeWitness);
        (*(v29 + 16))(v18, v20, AssociatedTypeWitness);
        v32 = (*(v34 + 24))(v18, v33[0]);
        (*(v29 + 8))(v20, AssociatedTypeWitness);
        [v27 finishDecoding];

        return v32;
      }

      (*(v35 + 8))(v14, v10);
      [v27 finishDecoding];
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_238267DB8()
{
  result = qword_2814F0860;
  if (!qword_2814F0860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814F0860);
  }

  return result;
}

void EKXPCValueContainer<>.encode(_with:)(void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v17 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  (*(a3 + 16))(a2, a3);
  sub_2382792C0();
  v13 = *(v7 + 8);
  v12 = v7 + 8;
  v13(v10, AssociatedTypeWitness);
  [v11 finishEncoding];
  v14 = [v11 encodedData];
  if (v14)
  {
    v15 = v14;
    v16 = sub_238278FF0();
    [a1 encodeObject:v15 forKey:v16];
  }

  else
  {
    __break(1u);
    (*(v12 + 8))(v10, AssociatedTypeWitness);
    swift_unexpectedError();
    __break(1u);
  }
}

id sub_238268008()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_238278B20();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_238278AF0();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id XPCElectricalLoadEventContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void _s9EnergyKit31XPCElectricityGuidanceContainerC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for ElectricityGuidance(0);
  sub_238269D28(&unk_27DEF7E00, type metadata accessor for ElectricityGuidance);
  sub_2382792C0();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_238278FF0();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s9EnergyKit36XPCElectricityGuidanceQueryContainerC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v7 = *(v1 + OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value);
  v8 = *(v1 + OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value + 1);
  sub_2382699E8();
  sub_2382792C0();
  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_238278FF0();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s9EnergyKit23XPCEnergyVenueContainerC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for EnergyVenue();
  sub_238269D28(&qword_27DEF7DD0, type metadata accessor for EnergyVenue);
  sub_2382792C0();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_238278FF0();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_238268578(void *a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v11 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v15 = *(v5 + *a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5();
  sub_2382792C0();

  [v11 finishEncoding];
  v12 = [v11 encodedData];
  if (v12)
  {
    v13 = v12;
    v14 = sub_238278FF0();
    [a1 encodeObject:v13 forKey:v14];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

id XPCElectricalLoadEventContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCElectricalLoadEventContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_238268A9C(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCElectricalLoadEventContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_238268A9C(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCElectricalLoadEventContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCElectricalLoadEventContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_238268A4C(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_238268A9C(void *a1)
{
  sub_238267DB8();
  v2 = sub_2382792E0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_238278B30();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v8 = sub_238268008();
    sub_23824FCC4(v4, v6);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7E18, &unk_23827F940);
      sub_238269C74();
      sub_2382792D0();
      if (v14)
      {
        EventContainer = type metadata accessor for XPCElectricalLoadEventContainer();
        v11 = objc_allocWithZone(EventContainer);
        *&v11[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = v14;
        v13.receiver = v11;
        v13.super_class = EventContainer;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_238268C60()
{
  result = qword_27DEF7D98;
  if (!qword_27DEF7D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7D90, &unk_23827F920);
    sub_238269D28(&unk_27DEF7DA0, type metadata accessor for SandboxExtension);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7D98);
  }

  return result;
}

id sub_238268D14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB8, &qword_23827F748);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for ElectricityGuidance(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  sub_238267DB8();
  v14 = sub_2382792E0();
  if (v14)
  {
    v15 = v14;
    v25 = v7;
    v16 = sub_238278B30();
    v18 = v17;
    v19 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v20 = sub_238268008();
    sub_23824FCC4(v16, v18);
    if (v20)
    {
      sub_238269D28(&qword_27DEF7E10, type metadata accessor for ElectricityGuidance);
      sub_2382792D0();
      if ((*(v25 + 48))(v5, 1, v6) != 1)
      {
        sub_238269A90(v5, v13, type metadata accessor for ElectricityGuidance);
        sub_238269AF8(v13, v11, type metadata accessor for ElectricityGuidance);
        v22 = type metadata accessor for XPCElectricityGuidanceContainer();
        v23 = objc_allocWithZone(v22);
        sub_238269AF8(v11, v23 + OBJC_IVAR____TtC9EnergyKit31XPCElectricityGuidanceContainer_value, type metadata accessor for ElectricityGuidance);
        v26.receiver = v23;
        v26.super_class = v22;
        v24 = objc_msgSendSuper2(&v26, sel_init);
        sub_238269B60(v11, type metadata accessor for ElectricityGuidance);
        sub_238269B60(v13, type metadata accessor for ElectricityGuidance);
        [v20 finishDecoding];

        return v24;
      }

      sub_23824C65C(v5, &qword_27DEF7CB8, &qword_23827F748);
      [v20 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_238269034(void *a1)
{
  sub_238267DB8();
  v2 = sub_2382792E0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_238278B30();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v8 = sub_238268008();
    sub_23824FCC4(v4, v6);
    if (v8)
    {
      sub_238269A3C();
      sub_2382792D0();
      v10 = v17;
      if (v16 != 2)
      {
        Container = type metadata accessor for XPCElectricityGuidanceQueryContainer();
        v12 = objc_allocWithZone(Container);
        v13 = &v12[OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value];
        *v13 = v16 & 1;
        v13[1] = v10 & 1;
        v15.receiver = v12;
        v15.super_class = Container;
        v14 = objc_msgSendSuper2(&v15, sel_init);
        [v8 finishDecoding];

        return v14;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_2382691B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for EnergyVenue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  sub_238267DB8();
  v14 = sub_2382792E0();
  if (v14)
  {
    v15 = v14;
    v25 = v7;
    v16 = sub_238278B30();
    v18 = v17;
    v19 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v20 = sub_238268008();
    sub_23824FCC4(v16, v18);
    if (v20)
    {
      sub_238269D28(&unk_27DEF7DE0, type metadata accessor for EnergyVenue);
      sub_2382792D0();
      if ((*(v25 + 48))(v5, 1, v6) != 1)
      {
        sub_238269A90(v5, v13, type metadata accessor for EnergyVenue);
        sub_238269AF8(v13, v11, type metadata accessor for EnergyVenue);
        v22 = type metadata accessor for XPCEnergyVenueContainer();
        v23 = objc_allocWithZone(v22);
        sub_238269AF8(v11, v23 + OBJC_IVAR____TtC9EnergyKit23XPCEnergyVenueContainer_value, type metadata accessor for EnergyVenue);
        v26.receiver = v23;
        v26.super_class = v22;
        v24 = objc_msgSendSuper2(&v26, sel_init);
        sub_238269B60(v11, type metadata accessor for EnergyVenue);
        sub_238269B60(v13, type metadata accessor for EnergyVenue);
        [v20 finishDecoding];

        return v24;
      }

      sub_23824C65C(v5, &qword_27DEF7CE0, &unk_23827F930);
      [v20 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_2382694D4(void *a1)
{
  sub_238267DB8();
  v2 = sub_2382792E0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_238278B30();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v8 = sub_238268008();
    sub_23824FCC4(v4, v6);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7DC0, &qword_23827F880);
      sub_238269934();
      sub_2382792D0();
      if (v14)
      {
        v10 = type metadata accessor for XPCEnergyVenuesContainer();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR____TtC9EnergyKit24XPCEnergyVenuesContainer_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

id sub_238269650(void *a1)
{
  sub_238267DB8();
  v2 = sub_2382792E0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_238278B30();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v8 = sub_238268008();
    sub_23824FCC4(v4, v6);
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D90, &unk_23827F920);
      sub_2382697CC();
      sub_2382792D0();
      if (v14)
      {
        v10 = type metadata accessor for XPCSandboxExtensionContainer();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_2382697CC()
{
  result = qword_27DEF7DB0;
  if (!qword_27DEF7DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7D90, &unk_23827F920);
    sub_238269D28(&qword_27DEF7DB8, type metadata accessor for SandboxExtension);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7DB0);
  }

  return result;
}

unint64_t sub_238269880()
{
  result = qword_27DEF7DC8;
  if (!qword_27DEF7DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7DC0, &qword_23827F880);
    sub_238269D28(&qword_27DEF7DD0, type metadata accessor for EnergyVenue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7DC8);
  }

  return result;
}

unint64_t sub_238269934()
{
  result = qword_27DEF7DD8;
  if (!qword_27DEF7DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7DC0, &qword_23827F880);
    sub_238269D28(&unk_27DEF7DE0, type metadata accessor for EnergyVenue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7DD8);
  }

  return result;
}

unint64_t sub_2382699E8()
{
  result = qword_27DEF7DF0;
  if (!qword_27DEF7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7DF0);
  }

  return result;
}

unint64_t sub_238269A3C()
{
  result = qword_27DEF7DF8;
  if (!qword_27DEF7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7DF8);
  }

  return result;
}

uint64_t sub_238269A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238269AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238269B60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_238269BC0()
{
  result = qword_27DEF7E20;
  if (!qword_27DEF7E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7E18, &unk_23827F940);
    sub_238269D28(&qword_27DEF7E28, type metadata accessor for ElectricalLoadEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7E20);
  }

  return result;
}

unint64_t sub_238269C74()
{
  result = qword_27DEF7E30;
  if (!qword_27DEF7E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEF7E18, &unk_23827F940);
    sub_238269D28(&unk_27DEF7E38, type metadata accessor for ElectricalLoadEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7E30);
  }

  return result;
}

uint64_t sub_238269D28(unint64_t *a1, void (*a2)(uint64_t))
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

id XPCElectricityGuidanceContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_23825BBE8(a1, v3 + OBJC_IVAR____TtC9EnergyKit31XPCElectricityGuidanceContainer_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_23825BCB0(a1);
  return v4;
}

id XPCElectricityGuidanceContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_23825BBE8(a1, v1 + OBJC_IVAR____TtC9EnergyKit31XPCElectricityGuidanceContainer_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_23825BCB0(a1);
  return v4;
}

id XPCElectricityGuidanceContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_238268D14(a1);
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCElectricityGuidanceContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v3 = sub_238268D14(a1);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

id XPCElectricityGuidanceContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCElectricityGuidanceContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23826A184(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_23825BBE8(a1, v3 + OBJC_IVAR____TtC9EnergyKit31XPCElectricityGuidanceContainer_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_23825BCB0(a1);
  return v4;
}

uint64_t type metadata accessor for XPCElectricityGuidanceContainer()
{
  result = qword_27DEF7E48;
  if (!qword_27DEF7E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23826A24C()
{
  result = type metadata accessor for ElectricityGuidance(319);
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

id XPCElectricityGuidanceQueryContainer.__allocating_init(value:)(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[1];
  v5 = &v3[OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value];
  *v5 = *a1;
  v5[1] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

void XPCElectricityGuidanceQueryContainer.value.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value + 1);
  *a1 = *(v1 + OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value);
  a1[1] = v2;
}

id XPCElectricityGuidanceQueryContainer.init(value:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1[1];
  v5 = &v1[OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value];
  *v5 = *a1;
  v5[1] = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id XPCElectricityGuidanceQueryContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_238269034(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCElectricityGuidanceQueryContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_238269034(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCElectricityGuidanceQueryContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCElectricityGuidanceQueryContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23826A640(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value + 1);
  *a1 = *(v1 + OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value);
  a1[1] = v2;
}

id sub_23826A660(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = objc_allocWithZone(v1);
  v5 = &v4[OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value];
  *v5 = v2;
  v5[1] = v3;
  v7.receiver = v4;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id XPCEnergyVenueContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_238264700(a1, v3 + OBJC_IVAR____TtC9EnergyKit23XPCEnergyVenueContainer_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_238264764(a1);
  return v4;
}

id XPCEnergyVenueContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_238264700(a1, v1 + OBJC_IVAR____TtC9EnergyKit23XPCEnergyVenueContainer_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_238264764(a1);
  return v4;
}

id XPCEnergyVenueContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_2382691B4(a1);
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCEnergyVenueContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v3 = sub_2382691B4(a1);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

id XPCEnergyVenueContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCEnergyVenueContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23826AB28(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_238264700(a1, v3 + OBJC_IVAR____TtC9EnergyKit23XPCEnergyVenueContainer_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_238264764(a1);
  return v4;
}

uint64_t type metadata accessor for XPCEnergyVenueContainer()
{
  result = qword_27DEF7E68;
  if (!qword_27DEF7E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23826ABF0()
{
  result = type metadata accessor for EnergyVenue();
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

id XPCEnergyVenuesContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit24XPCEnergyVenuesContainer_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCEnergyVenuesContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9EnergyKit24XPCEnergyVenuesContainer_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCEnergyVenuesContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_2382694D4(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCEnergyVenuesContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_2382694D4(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCEnergyVenuesContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCEnergyVenuesContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23826AFD8(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit24XPCEnergyVenuesContainer_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCSandboxExtensionContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCSandboxExtensionContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCSandboxExtensionContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_238269650(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCSandboxExtensionContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_238269650(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id XPCSandboxExtensionContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCSandboxExtensionContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23826B3A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t SandboxExtension.__allocating_init(extensionClass:fileURL:context:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  SandboxExtension.init(extensionClass:fileURL:context:)(a1, a2, a3);
  return v9;
}

uint64_t SandboxExtensionClass.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

void *SandboxExtension.Context.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = j__sandbox_extension_consume;
  result[3] = 0;
  result[4] = j__sandbox_extension_release;
  result[5] = 0;
  result[6] = j__sandbox_extension_issue_file;
  result[7] = 0;
  return result;
}

uint64_t SandboxExtension.__allocating_init(token:fileURL:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 48) = 1;
  *(v11 + 16) = a4;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = 0;
  v12 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
  v13 = sub_238278B10();
  (*(*(v13 - 8) + 32))(v11 + v12, a3, v13);
  return v11;
}

uint64_t SandboxExtension.init(token:fileURL:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = 1;
  *(v4 + 16) = a4;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = 0;
  v6 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
  v7 = sub_238278B10();
  (*(*(v7 - 8) + 32))(v4 + v6, a3, v7);
  return v4;
}

uint64_t SandboxExtension.init(extensionClass:fileURL:context:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = *a1;
  v4[5] = 0;
  *(v4 + 48) = 1;
  result = swift_beginAccess();
  v10 = *(a3 + 48);
  v11 = *(a3 + 56);
  if (v8)
  {
    if (*MEMORY[0x277D861C0])
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!*MEMORY[0x277D861B8])
  {
    __break(1u);
    return result;
  }

LABEL_5:

  sub_238279050();
  sub_238278B00();
  v23 = a2;
  v12 = *MEMORY[0x277D861E8];
  v13 = sub_238279010();

  v14 = sub_238279010();

  v15 = v10(v13 + 32, v14 + 32, v12);

  if (v15)
  {
    v4[3] = sub_238279050();
    v4[4] = v16;
    free(v15);
    v17 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
    v18 = sub_238278B10();
    (*(*(v18 - 8) + 32))(v4 + v17, v23, v18);
    v4[2] = a3;
  }

  else
  {
    sub_23826D08C();
    swift_allocError();
    *v19 = 0;
    *(v19 + 4) = 1;
    swift_willThrow();

    v20 = sub_238278B10();
    (*(*(v20 - 8) + 8))(v23, v20);
    v21 = *(*v4 + 48);
    v22 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.consume()()
{
  if (*(v0 + 48) == 1)
  {
    v1 = v0;
    v2 = *(v0 + 16);
    swift_beginAccess();
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    v5 = *(v1 + 24);
    v6 = *(v1 + 32);
    v7 = sub_238279010();

    v8 = v4(v7 + 32);

    if (v8 == -1)
    {
      v10 = MEMORY[0x2383ECE70](v9);
      sub_23826D08C();
      swift_allocError();
      *v11 = v10;
      *(v11 + 4) = 0;
      swift_willThrow();
    }

    else
    {
      *(v1 + 40) = v8;
      *(v1 + 48) = 0;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.release()()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + 40);
    v3 = *(v1 + 16);
    swift_beginAccess();
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);

    LODWORD(v2) = v4(v2);

    if (v2 == sub_238278F90())
    {
      *(v1 + 40) = 0;
      *(v1 + 48) = 1;
    }

    else
    {
      v6 = MEMORY[0x2383ECE70]();
      sub_23826D08C();
      swift_allocError();
      *v7 = v6;
      *(v7 + 4) = 0;
      swift_willThrow();
    }
  }
}

uint64_t static SandboxExtension.withResources<A>(resources:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_23826BB6C, 0, 0);
}

void sub_23826BB6C()
{
  v1 = v0[12];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v15 = v0[12];
    }

    v2 = sub_238279420();
    v0[15] = v2;
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[15] = v2;
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v0[12] + 32;
  do
  {
    if (v4)
    {
      v6 = MEMORY[0x2383ED2C0](v3, v0[12]);
    }

    else
    {
      v6 = *(v5 + 8 * v3);
    }

    if (*(v6 + 48) == 1)
    {
      v7 = *(v6 + 16);
      swift_beginAccess();
      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      v10 = *(v6 + 24);
      v11 = *(v6 + 32);
      v12 = sub_238279010();

      v13 = v9(v12 + 32);

      if (v13 == -1)
      {
        MEMORY[0x2383ECE70](v14);
      }

      else
      {
        *(v6 + 40) = v13;
        *(v6 + 48) = 0;
      }
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_16:
  v20 = (v0[13] + *v0[13]);
  v16 = *(v0[13] + 4);
  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_23826BD88;
  v18 = v0[14];
  v19 = v0[11];

  v20(v19);
}

uint64_t sub_23826BD88()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_23826BFE8;
  }

  else
  {
    v3 = sub_23826BE9C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_23826BE9C()
{
  v1 = v0[15];
  if (v1)
  {
    if (v1 >= 1)
    {
      v2 = 0;
      v3 = v0[12];
      v4 = v3 & 0xC000000000000001;
      v5 = v3 + 32;
      while (1)
      {
        if (v4)
        {
          v7 = MEMORY[0x2383ED2C0](v2, v0[12]);
          if ((*(v7 + 48) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v7 = *(v5 + 8 * v2);

          if ((*(v7 + 48) & 1) == 0)
          {
LABEL_10:
            v8 = *(v7 + 40);
            v9 = *(v7 + 16);
            swift_beginAccess();
            v11 = *(v9 + 32);
            v10 = *(v9 + 40);

            LODWORD(v8) = v11(v8);

            if (v8 == sub_238278F90())
            {
              *(v7 + 40) = 0;
              *(v7 + 48) = 1;
            }

            else
            {
              MEMORY[0x2383ECE70]();
            }
          }
        }

        ++v2;
        v6 = v0[15];

        if (v2 == v6)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v12 = v0[1];

    v12();
  }
}

void sub_23826BFE8()
{
  v1 = v0[15];
  if (v1)
  {
    if (v1 >= 1)
    {
      v2 = 0;
      v3 = v0[12];
      v4 = v3 & 0xC000000000000001;
      v5 = v3 + 32;
      while (1)
      {
        if (v4)
        {
          v7 = MEMORY[0x2383ED2C0](v2, v0[12]);
          if ((*(v7 + 48) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v7 = *(v5 + 8 * v2);

          if ((*(v7 + 48) & 1) == 0)
          {
LABEL_10:
            v8 = *(v7 + 40);
            v9 = *(v7 + 16);
            swift_beginAccess();
            v11 = *(v9 + 32);
            v10 = *(v9 + 40);

            LODWORD(v8) = v11(v8);

            if (v8 == sub_238278F90())
            {
              *(v7 + 40) = 0;
              *(v7 + 48) = 1;
            }

            else
            {
              MEMORY[0x2383ECE70]();
            }
          }
        }

        ++v2;
        v6 = v0[15];

        if (v2 == v6)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v12 = v0[17];
    swift_willThrow();
    v13 = v0[1];
    v14 = v0[17];

    v13();
  }
}

void SandboxExtension.withResource<A>(_:)(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  SandboxExtension.consume()();
  if (!v8)
  {
    a1(v3 + OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL);
    if ((*(v3 + 48) & 1) == 0)
    {
      v13 = *(v3 + 40);
      v14 = *(v4 + 16);
      swift_beginAccess();
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);

      LODWORD(v13) = v15(v13);

      if (v13 == sub_238278F90())
      {
        *(v4 + 40) = 0;
        *(v4 + 48) = 1;
        return;
      }

      v19 = MEMORY[0x2383ECE70]();
      sub_23826D08C();
      v20 = swift_allocError();
      *v21 = v19;
      *(v21 + 4) = 0;
      v22 = v20;
      swift_willThrow();
      (*(*(a2 - 8) + 8))(a3, a2);
      if ((*(v4 + 48) & 1) == 0)
      {
        v9 = *(v4 + 40);
        v10 = *(v4 + 16);
        swift_beginAccess();
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);

        LODWORD(v9) = v11(v9);

        if (v9 != sub_238278F90())
        {
          v17 = MEMORY[0x2383ECE70]();
          sub_23826D08C();
          swift_allocError();
          *v18 = v17;
          *(v18 + 4) = 0;
          swift_willThrow();

          return;
        }

        *(v4 + 40) = 0;
        *(v4 + 48) = 1;
      }

      swift_willThrow();
    }
  }
}

uint64_t SandboxExtension.withResource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_23826C37C, 0, 0);
}

uint64_t sub_23826C37C()
{
  v1 = v0[12];
  SandboxExtension.consume()();
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[12];
    v6 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
    v11 = (v0[9] + *v0[9]);
    v7 = *(v0[9] + 4);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_23826C4D0;
    v9 = v0[10];
    v10 = v0[8];

    return v11(v10, v5 + v6);
  }
}

uint64_t sub_23826C4D0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_23826C7F8;
  }

  else
  {
    v3 = sub_23826C5E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23826C5E4()
{
  v1 = v0[12];
  if (*(v1 + 48))
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);

  LODWORD(v2) = v5(v2);

  if (v2 == sub_238278F90())
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
LABEL_4:
    v6 = v0[1];
    goto LABEL_11;
  }

  v7 = v0[11];
  v8 = v0[8];
  v9 = MEMORY[0x2383ECE70]();
  sub_23826D08C();
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 4) = 0;
  swift_willThrow();
  (*(*(v7 - 8) + 8))(v8, v7);
  v12 = v0[12];
  if ((*(v12 + 48) & 1) == 0)
  {
    v13 = *(v12 + 40);
    v14 = *(v12 + 16);
    swift_beginAccess();
    v16 = *(v14 + 32);
    v15 = *(v14 + 40);

    LODWORD(v13) = v16(v13);

    if (v13 != sub_238278F90())
    {
      v17 = MEMORY[0x2383ECE70]();
      swift_allocError();
      *v18 = v17;
      *(v18 + 4) = 0;
      swift_willThrow();

      goto LABEL_10;
    }

    *(v12 + 40) = 0;
    *(v12 + 48) = 1;
  }

  swift_willThrow();
LABEL_10:
  v6 = v0[1];
LABEL_11:

  return v6();
}

uint64_t sub_23826C7F8()
{
  v1 = v0[14];
  v2 = v0[12];
  if (*(v2 + 48))
  {
    goto LABEL_4;
  }

  v3 = *(v2 + 40);
  v4 = *(v2 + 16);
  swift_beginAccess();
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);

  LODWORD(v3) = v6(v3);

  if (v3 == sub_238278F90())
  {
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
LABEL_4:
    swift_willThrow();
    goto LABEL_6;
  }

  v7 = MEMORY[0x2383ECE70]();
  sub_23826D08C();
  swift_allocError();
  *v8 = v7;
  *(v8 + 4) = 0;
  swift_willThrow();

LABEL_6:
  v9 = v0[1];

  return v9();
}

uint64_t SandboxExtension.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
  v4 = sub_238278B10();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SandboxExtension.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL;
  v4 = sub_238278B10();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23826CA40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_23826E0B0;
  a2[1] = v6;
}

uint64_t sub_23826CAC0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v6 + 16) = sub_23826E070;
  *(v6 + 24) = v5;
}

uint64_t SandboxExtension.Context.sandbox_extension_consume.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SandboxExtension.Context.sandbox_extension_consume.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_23826CC44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_23826E03C;
  a2[1] = v6;
}

uint64_t sub_23826CCC4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 40);
  *(v6 + 32) = sub_23826DFFC;
  *(v6 + 40) = v5;
}

uint64_t SandboxExtension.Context.sandbox_extension_release.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SandboxExtension.Context.sandbox_extension_release.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_23826CE48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_23826DFC0;
  a2[1] = v6;
}

uint64_t sub_23826CEC8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 56);
  *(v6 + 48) = sub_23826DF74;
  *(v6 + 56) = v5;
}

uint64_t SandboxExtension.Context.sandbox_extension_issue_file.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SandboxExtension.Context.sandbox_extension_issue_file.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void *SandboxExtension.Context.init()()
{
  result = v0;
  v0[2] = j__sandbox_extension_consume;
  v0[3] = 0;
  v0[4] = j__sandbox_extension_release;
  v0[5] = 0;
  v0[6] = j__sandbox_extension_issue_file;
  v0[7] = 0;
  return result;
}

unint64_t sub_23826D08C()
{
  result = qword_27DEF7EA0;
  if (!qword_27DEF7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7EA0);
  }

  return result;
}

void *SandboxExtension.Context.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t SandboxExtension.Context.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_23826D158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4C5255656C6966;
  }

  else
  {
    v4 = 0x6E656B6F74;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x4C5255656C6966;
  }

  else
  {
    v6 = 0x6E656B6F74;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_238279590();
  }

  return v9 & 1;
}

uint64_t sub_23826D1FC()
{
  v1 = *v0;
  sub_238279600();
  sub_238279020();

  return sub_238279620();
}

uint64_t sub_23826D27C()
{
  *v0;
  sub_238279020();
}

uint64_t sub_23826D2E8()
{
  v1 = *v0;
  sub_238279600();
  sub_238279020();

  return sub_238279620();
}

uint64_t sub_23826D364@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_238279430();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_23826D3C4(uint64_t *a1@<X8>)
{
  v2 = 0x6E656B6F74;
  if (*v1)
  {
    v2 = 0x4C5255656C6966;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23826D400()
{
  if (*v0)
  {
    result = 0x4C5255656C6966;
  }

  else
  {
    result = 0x6E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_23826D438@<X0>(char *a1@<X8>)
{
  v2 = sub_238279430();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_23826D49C(uint64_t a1)
{
  v2 = sub_23826DA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23826D4D8(uint64_t a1)
{
  v2 = sub_23826DA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SandboxExtension.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7EA8, &qword_23827FB30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23826DA48();
  sub_238279640();
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v14[15] = 0;
  sub_238279500();
  if (!v2)
  {
    v14[14] = 1;
    sub_238278B10();
    sub_23826E0E4(&qword_27DEF7EB8);
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23826D6CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23826D71C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23826D71C(uint64_t *a1)
{
  v3 = sub_238278B10();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7EF0, qword_23827FE78);
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v25 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23826DA48();
  sub_238279630();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = a1;
    v13 = v7;
    v30 = 0;
    v14 = v28;
    v15 = sub_238279470();
    v17 = v16;
    v25 = v15;
    v29 = 1;
    sub_23826E0E4(&qword_27DEF7EF8);
    sub_2382794C0();
    (*(v13 + 8))(v10, v14);
    type metadata accessor for SandboxExtension.Context();
    v19 = v17;
    v20 = swift_allocObject();
    v20[2] = j__sandbox_extension_consume;
    v20[3] = 0;
    v20[4] = j__sandbox_extension_release;
    v20[5] = 0;
    v20[6] = j__sandbox_extension_issue_file;
    v20[7] = 0;
    v21 = type metadata accessor for SandboxExtension();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v12 = swift_allocObject();
    *(v12 + 48) = 1;
    v24 = v25;
    *(v12 + 16) = v20;
    *(v12 + 24) = v24;
    *(v12 + 32) = v19;
    *(v12 + 40) = 0;
    (*(v27 + 32))(v12 + OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL, v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return v12;
}

unint64_t sub_23826DA48()
{
  result = qword_27DEF7EB0;
  if (!qword_27DEF7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7EB0);
  }

  return result;
}

unint64_t sub_23826DAA0()
{
  result = qword_27DEF7EC0;
  if (!qword_27DEF7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7EC0);
  }

  return result;
}

uint64_t type metadata accessor for SandboxExtension()
{
  result = qword_27DEF7EC8;
  if (!qword_27DEF7EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23826DB70()
{
  result = sub_238278B10();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtension.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SandboxExtension.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_23826DD2C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23826DD48(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtensionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SandboxExtensionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_23826DDE8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23826DE04(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_23826DE38()
{
  result = qword_27DEF7ED8;
  if (!qword_27DEF7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7ED8);
  }

  return result;
}

unint64_t sub_23826DE90()
{
  result = qword_27DEF7EE0;
  if (!qword_27DEF7EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7EE0);
  }

  return result;
}

unint64_t sub_23826DEE8()
{
  result = qword_27DEF7EE8;
  if (!qword_27DEF7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7EE8);
  }

  return result;
}

uint64_t sub_23826DF3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23826DF74(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v9 = a2;
  v10 = a1;
  v8 = a3;
  v4(&v7, &v10, &v9, &v8);
  return v7;
}

uint64_t sub_23826DFC0@<X0>(void *a1@<X0>, void *a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  result = v6(*a1, *a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_23826DFFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_23826E03C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23826E070(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_23826E0B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23826E0E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_238278B10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23826E140(uint64_t a1, void *a2, int a3, void (*a4)(uint64_t *, uint64_t (*)(uint64_t a1, void *a2), uint64_t), uint64_t a5)
{
  v27 = a5;
  v28 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = *(v9 + 16);
  v29 = a1;
  v26 = v13;
  v13(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = v14 + v10;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v25 = *(v9 + 32);
  v25(v16 + v14, v12, v8);
  v30 = a3;
  *(v16 + v15) = a3;
  aBlock[4] = sub_238271D6C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_41;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  v19 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v31)
  {
    v33 = v31;
    v26(v12, v29, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v25(v20 + v14, v12, v8);
    *(v20 + v15) = v30;
    v21 = v18;
    v28(&v33, sub_238271EE0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    [v18 invalidate];
    sub_238241158();
    v22 = swift_allocError();
    *v23 = v30;
    v32[0] = v22;
    sub_238279170();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23826E484(int a1, id a2, uint64_t a3, char a4)
{
  [a2 invalidate];
  sub_238241158();
  swift_allocError();
  *v5 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80);
  return sub_238279170();
}

uint64_t sub_23826E504(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB8, &qword_23827F748);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for ElectricityGuidance(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  [a3 invalidate];
  if (a2)
  {
    v26 = a2;
    v21 = a2;
  }

  else
  {
    sub_238271F90(a1, v12);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_23825BC4C(v12, v20);
      sub_23825BBE8(v20, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80);
      sub_238279180();
      return sub_23825BCB0(v20);
    }

    sub_23824C65C(v12, &qword_27DEF7CB8, &qword_23827F748);
    sub_238241158();
    v22 = swift_allocError();
    *v23 = a5;
    v26 = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80);
  return sub_238279170();
}

uint64_t sub_23826E734()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23826E788(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F18, &qword_23827FF70);
  *(v6 + 56) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F20, &qword_23827FF78);
  *(v6 + 72) = v10;
  v11 = *(v10 - 8);
  *(v6 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v13 = sub_238278BC0();
  *(v6 + 96) = v13;
  v14 = *(v13 - 8);
  *(v6 + 104) = v14;
  *(v6 + 112) = *(v14 + 64);
  *(v6 + 120) = swift_task_alloc();
  v15 = type metadata accessor for ElectricityGuidance(0);
  *(v6 + 128) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 208) = *a1;
  *(v6 + 209) = a1[1];

  return MEMORY[0x2822009F8](sub_23826E94C, 0, 0);
}

uint64_t sub_23826E94C()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 152) = v1;
  return MEMORY[0x2822009F8](sub_23826E970, v1, 0);
}

uint64_t sub_23826E970()
{
  if (*(v0 + 209))
  {
    sub_238241158();
    v1 = swift_allocError();
    *v2 = 0;
    swift_willThrow();
    *(v0 + 200) = v1;
    v3 = sub_23826F10C;
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v5 = sub_238278FF0();
    v6 = [v4 initWithServiceName_];
    *(v0 + 160) = v6;

    v7 = [objc_opt_self() interfaceWithProtocol_];
    [v6 setRemoteObjectInterface_];

    [v6 resume];
    v3 = sub_23826EAC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23826EAC8()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v20 = *(v0 + 160);
  v19 = *(v0 + 208);
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  (*(v4 + 16))(v1, *(v0 + 16), v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = v7 + v2;
  v9 = (v7 + v2 + 9) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 168) = v10;
  (*(v4 + 32))(v10 + v7, v1, v3);
  v11 = (v10 + v8);
  *v11 = v19;
  v11[1] = 0;
  v12 = (v10 + v9);
  *v12 = v6;
  v12[1] = v5;

  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *(v13 + 16) = v20;
  *(v13 + 24) = 0;
  *(v13 + 32) = sub_238271C84;
  *(v13 + 40) = v10;
  v14 = *(MEMORY[0x277D85A40] + 4);
  v15 = swift_task_alloc();
  *(v0 + 184) = v15;
  *v15 = v0;
  v15[1] = sub_23826ED14;
  v17 = *(v0 + 128);
  v16 = *(v0 + 136);

  return MEMORY[0x2822008A0](v16, 0, 0, 0xD000000000000022, 0x80000002382817E0, sub_238271D58, v13, v17);
}

uint64_t sub_23826ED14()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v12 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_23826EFE8;
    v5 = 0;
  }

  else
  {
    v6 = v2[21];
    v7 = v2[22];
    v10 = v2 + 19;
    v8 = v2[19];
    v9 = v10[1];

    v4 = sub_23826EE50;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_23826EE50()
{
  sub_23825BC4C(*(v0 + 136), *(v0 + 144));

  return MEMORY[0x2822009F8](sub_23826EEB8, 0, 0);
}

uint64_t sub_23826EEB8()
{
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = v0[5];
  sub_23825BBE8(v1, v5);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  sub_238279250();
  sub_23824C65C(v5, &qword_27DEF7F18, &qword_23827FF70);
  (*(v3 + 8))(v2, v4);
  sub_23825BCB0(v1);
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[15];
  v11 = v0[11];
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_23826EFE8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];

  return MEMORY[0x2822009F8](sub_23826F068, v3, 0);
}

uint64_t sub_23826F068()
{
  v1 = *(v0 + 192);
  sub_238241158();
  v2 = swift_allocError();
  *v3 = 0;
  swift_willThrow();

  *(v0 + 200) = v2;

  return MEMORY[0x2822009F8](sub_23826F10C, 0, 0);
}

uint64_t sub_23826F10C()
{
  v1 = v0[25];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = v0[5];
  sub_238241158();
  v8 = swift_allocError();
  *v9 = 0;
  *v5 = v8;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  sub_238279250();

  sub_23824C65C(v5, &qword_27DEF7F18, &qword_23827FF70);
  (*(v3 + 8))(v2, v4);
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[15];
  v13 = v0[11];
  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_23826F254(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v39 = a2;
  v41 = a1;
  v40 = sub_238278BC0();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - v16;
  if (sub_238278D20())
  {
    sub_238241158();
    v18 = swift_allocError();
    *v19 = 0;
    v42 = v18;
    return sub_238279260();
  }

  else
  {
    _s10TaskHolderCMa();
    v21 = swift_allocObject();
    v37 = a3;
    v22 = v21;
    v23 = sub_2382791A0();
    v22[3] = 0;
    v22[4] = 0;
    v22[2] = 0;
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
    v24 = swift_allocObject();
    v38 = a4;
    v36 = v24;
    swift_weakInit();
    v25 = *(v10 + 16);
    v39 = v17;
    v25(v13, v41, v9);
    (*(v6 + 16))(&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v40);
    v26 = *(v10 + 80);
    v37 = v9;
    v27 = (v26 + 40) & ~v26;
    v28 = (v11 + *(v6 + 80) + v27) & ~*(v6 + 80);
    v29 = v28 + v7;
    v30 = swift_allocObject();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    *(v30 + 4) = v36;
    (*(v10 + 32))(&v30[v27], v13, v37);
    (*(v6 + 32))(&v30[v28], v8, v40);
    v31 = &v30[v29];
    v32 = BYTE1(v38);
    *v31 = v38 & 1;
    v31[1] = v32 & 1;
    *&v30[(v29 + 9) & 0xFFFFFFFFFFFFFFF8] = v22;

    v33 = sub_2382505A8(0, 0, v39, &unk_23827FF40, v30);
    v34 = v22[4];
    v22[4] = v33;

    return sub_238279240();
  }
}

uint64_t sub_23826F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 272) = a7;
  *(v8 + 144) = a6;
  *(v8 + 152) = a8;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  v9 = sub_238278BC0();
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 + 64);
  *(v8 + 184) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  *(v8 + 192) = v11;
  v12 = *(v11 - 8);
  *(v8 + 200) = v12;
  *(v8 + 208) = *(v12 + 64);
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23826F758, 0, 0);
}

uint64_t sub_23826F758()
{
  v1 = v0[16];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (!Strong)
  {
    v5 = v0[24];
    v6 = v0[17];
    sub_238241158();
    v7 = swift_allocError();
    *v8 = 0;
    v0[11] = v7;
    sub_238279260();
    goto LABEL_5;
  }

  if (sub_238279230())
  {
    v3 = v0[24];
    v4 = v0[17];
    v0[15] = 0;
    sub_238279260();

LABEL_5:
    v9 = v0[27];
    v10 = v0[23];

    v11 = v0[1];

    return v11();
  }

  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_23826F8DC;
  v14 = v0[18];

  return (sub_2382725C4)(v14);
}

uint64_t sub_23826F8DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 232);
  v8 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = v2;

  if (v2)
  {
    v6 = sub_23826FF6C;
  }

  else
  {
    v6 = sub_23826F9F4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23826F9F4()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 272);
    *(v0 + 274) = v2 & 1;
    *(v0 + 275) = HIBYTE(v2) & 1;
    v3 = swift_task_alloc();
    *(v0 + 264) = v3;
    *v3 = v0;
    v3[1] = sub_23826FB4C;
    v4 = *(v0 + 240);
    v5 = *(v0 + 224);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);

    return sub_23826E788((v0 + 274), v6, v4, v1, v7);
  }

  else
  {
    v9 = *(v0 + 224);
    v10 = *(v0 + 192);
    v11 = *(v0 + 136);
    sub_238241158();
    v12 = swift_allocError();
    *v13 = 0;
    *(v0 + 104) = v12;
    sub_238279260();

    v14 = *(v0 + 216);
    v15 = *(v0 + 184);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_23826FB4C()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23826FC64, 0, 0);
}

uint64_t sub_23826FC64()
{
  v1 = sub_238279230();
  v2 = v0[28];
  if (v1)
  {
    v0[14] = 0;
    v3 = v0[24];
    v4 = v0[17];
    sub_238279260();
  }

  else
  {
    v5 = v0[27];
    v6 = v0[24];
    v7 = v0[25];
    v8 = v0[23];
    v28 = v5;
    v29 = v8;
    v31 = v0[22];
    v32 = v0[26];
    v9 = v0[21];
    v30 = v0[20];
    v10 = v0[18];
    v33 = v0[19];
    v11 = *(v0 + 136);
    v12 = v0[17];
    v34 = v11 & 1;
    v35 = (v11 >> 8) & 1;
    v37 = [objc_opt_self() defaultCenter];
    sub_238278D30();
    v36 = sub_238278FF0();

    v13 = swift_allocObject();
    swift_weakInit();
    v14 = v5;
    v15 = v6;
    (*(v7 + 16))(v14, v12, v6);
    (*(v9 + 16))(v8, v10, v30);
    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = (v32 + *(v9 + 80) + v16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = v33;
    (*(v7 + 32))(v18 + v16, v28, v15);
    (*(v9 + 32))(v18 + v17, v29, v30);
    v19 = (v18 + v17 + v31);
    *v19 = v34;
    v19[1] = v35;
    v0[6] = sub_2382716C8;
    v0[7] = v18;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_238270C50;
    v0[5] = &block_descriptor_9;
    v20 = _Block_copy(v0 + 2);
    v21 = v0[7];

    v22 = [v37 addObserverForName:v36 object:0 queue:0 usingBlock:v20];

    _Block_release(v20);

    v23 = *(v33 + 24);
    *(v33 + 24) = v22;
    swift_unknownObjectRelease();
  }

  v24 = v0[27];
  v25 = v0[23];

  v26 = v0[1];

  return v26();
}

uint64_t sub_23826FF6C()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[17];
  v0[12] = v0[32];
  sub_238279260();

  v4 = v0[27];
  v5 = v0[23];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23826FFFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  v38 = a6;
  v35 = a4;
  v36 = a5;
  v39 = a3;
  v6 = sub_238278BC0();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v19 = sub_238278AC0();
  if (!v19)
  {

    v43 = 0u;
    v44 = 0u;
    return sub_23824C65C(&v43, &qword_27DEF7F08, &qword_23827FF50);
  }

  v20 = v19;
  v40 = 7562345;
  v41 = 0xE300000000000000;
  sub_238279360();
  if (!*(v20 + 16) || (v21 = sub_238271454(v42), (v22 & 1) == 0))
  {

    sub_2382717FC(v42);
    v43 = 0u;
    v44 = 0u;
    goto LABEL_11;
  }

  sub_23824FBCC(*(v20 + 56) + 32 * v21, &v43);
  sub_2382717FC(v42);

  if (!*(&v44 + 1))
  {
LABEL_11:

    return sub_23824C65C(&v43, &qword_27DEF7F08, &qword_23827FF50);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F10, &qword_23827FF58);
  if (swift_dynamicCast())
  {
    v34 = v42[0];
    if (*(v39 + 16))
    {
      v23 = *(v39 + 16);

      sub_238279220();
    }

    v24 = sub_2382791A0();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    v33 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(v13, v35, v9);
    v25 = v37;
    (*(v37 + 16))(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v6);
    v26 = (v11 + *(v25 + 80) + ((*(v10 + 80) + 40) & ~*(v10 + 80))) & ~*(v25 + 80);
    v35 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v36 = v26;
    v27 = (v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v33;
    (*(v10 + 32))(&v28[v35], v13, v9);
    (*(v25 + 32))(&v28[v36], v8, v6);
    v29 = &v28[v27];
    *v29 = v34;
    v30 = BYTE1(v38);
    v29[8] = v38 & 1;
    v29[9] = v30 & 1;
    v31 = sub_2382505A8(0, 0, v17, &unk_23827FF68, v28);

    v32 = *(v39 + 16);
    *(v39 + 16) = v31;
  }
}

uint64_t sub_2382704A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  *(v8 + 160) = a8;
  *(v8 + 96) = a6;
  *(v8 + 104) = a7;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  return MEMORY[0x2822009F8](sub_2382704CC, 0, 0);
}

uint64_t sub_2382704CC()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {
    v0[5] = 0;
    v4 = v0[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
    sub_238279260();
    goto LABEL_5;
  }

  if (sub_238279230())
  {
    v3 = v0[11];
    v0[9] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
    sub_238279260();

LABEL_5:
    v5 = v0[1];

    return v5();
  }

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_238270640;
  v8 = v0[12];

  return (sub_2382725C4)(v8);
}

uint64_t sub_238270640(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 120);
  v8 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v6 = sub_2382708FC;
  }

  else
  {
    v6 = sub_238270758;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_238270758()
{
  v1 = *(v0 + 136);
  if (!v1)
  {
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    sub_238241158();
    v11 = swift_allocError();
    *v12 = 0;
    *(v0 + 56) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
LABEL_9:
    sub_238279260();
    goto LABEL_10;
  }

  if (sub_238270B58(*(v0 + 128), *(v0 + 136), *(v0 + 104)))
  {
    v2 = *(v0 + 160);
    *(v0 + 162) = v2 & 1;
    *(v0 + 163) = HIBYTE(v2) & 1;
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_238270998;
    v4 = *(v0 + 128);
    v5 = *(v0 + 112);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);

    return sub_23826E788((v0 + 162), v6, v4, v1, v7);
  }

  v13 = sub_238279230();
  v14 = *(v0 + 112);
  if (v13)
  {
    v15 = *(v0 + 88);
    *(v0 + 64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
    goto LABEL_9;
  }

LABEL_10:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2382708FC()
{
  v1 = v0[14];
  v2 = v0[11];
  v0[6] = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  sub_238279260();

  v3 = v0[1];

  return v3();
}

uint64_t sub_238270998()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_238270AB0, 0, 0);
}

uint64_t sub_238270AB0()
{
  if (sub_238279230())
  {
    v0[8] = 0;
    v1 = v0[14];
    v2 = v0[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
    sub_238279260();
  }

  else
  {
    v3 = v0[14];
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_238270B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_238279600();
  sub_238279020();
  v7 = sub_238279620();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_238279590() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_238270C50(uint64_t a1)
{
  v2 = sub_238278AD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_238278AB0();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_238270D44()
{
  v1 = v0;
  v2 = sub_238278CB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238278F70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D076A8], v2);
  sub_238278CA0();
  (*(v3 + 8))(v6, v2);
  v12 = sub_238278F60();
  v13 = sub_2382792A0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_238215000, v12, v13, "Cancelling guidance tasks", v14, 2u);
    MEMORY[0x2383EDB00](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  if (v1[2])
  {
    v15 = v1[2];

    sub_238279220();
  }

  v16 = v1[3];
  if (v16)
  {
    v17 = objc_opt_self();
    swift_unknownObjectRetain();
    v18 = [v17 defaultCenter];
    [v18 removeObserver_];
    swift_unknownObjectRelease();
  }

  if (v1[4])
  {

    sub_238279220();
  }
}

uint64_t sub_238271000()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23827106C()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2382710E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238271118()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 9) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_238271290(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_238278BC0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = (v9 + 9) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1 + v9;
  v15 = *v14;
  if (v14[1])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v1 + v10);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_2382470D0;

  return sub_23826F618(a1, v11, v12, v13, v1 + v5, v1 + v8, v16 | v15, v17);
}

unint64_t sub_238271454(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_238279340();

  return sub_238271498(a1, v5);
}

unint64_t sub_238271498(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_238271B88(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2383ED240](v9, a1);
      sub_2382717FC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_238271560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;
  v12 = *(v0 + 16);

  v13 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 2, v10 | 7);
}

uint64_t sub_2382716C8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238278BC0() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));
  v10 = (v9 + *(v6 + 64));
  v11 = *v10;
  if (v10[1])
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return sub_23826FFFC(a1, v7, v8, v1 + v4, v9, v12 | v11);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238271850()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 10, v10 | 7);
}

uint64_t sub_2382719C8(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F00, &unk_23827FF28) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_238278BC0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = v12[8];
  if (v12[9])
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_238247660;

  return sub_2382704A4(a1, v9, v10, v11, v1 + v5, v1 + v8, v13, v15 | v14);
}

uint64_t sub_238271BE4()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 9) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_238271C84(void **a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_238278BC0() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = (v9 + 9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v3 + v9);
  v12 = *v11;
  if (v11[1])
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = (v3 + v10);
  v15 = *v14;
  v16 = v14[1];

  sub_23825B65C(a1, a2, a3, v3 + v8, v13 | v12);
}

uint64_t sub_238271D6C(int a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_23826E484(a1, v4, v5, v6);
}

uint64_t objectdestroy_37Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_238271EE0(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F28, &unk_23827FF80) - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v2 + 16);

  return sub_23826E504(a1, a2, v8, v6, v7);
}

uint64_t sub_238271F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB8, &qword_23827F748);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GridProviderService.gridID(venueID:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2382720B4;

  return sub_2382725C4(a1);
}

uint64_t sub_2382720B4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2382721E4()
{
  v1 = sub_238278D00();
  v0[5] = v1;
  v2 = sub_238272A10();
  v0[6] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x277D07378], v1);
  v5 = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5 & 1) != 0 && (v0[10] = v1, v0[11] = v2, v6 = __swift_allocate_boxed_opaque_existential_1(v0 + 7), v4(v6, *MEMORY[0x277D07388], v1), v7 = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1(v0 + 7), (v7))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v9 = sub_238278FF0();
    v10 = [v8 initWithServiceName_];
    v0[13] = v10;

    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    [v10 resume];
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_238272440;
    v13 = v0[12];

    return sub_23825A954(v13, v10);
  }

  else
  {
    v15 = v0[1];

    return v15(0, 0);
  }
}

uint64_t sub_238272440(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_238272AA4, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t sub_2382725E4()
{
  v1 = sub_238278D00();
  v0[5] = v1;
  v2 = sub_238272A10();
  v0[6] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x277D07378], v1);
  v5 = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5 & 1) != 0 && (v0[10] = v1, v0[11] = v2, v6 = __swift_allocate_boxed_opaque_existential_1(v0 + 7), v4(v6, *MEMORY[0x277D07388], v1), v7 = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1(v0 + 7), (v7))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v9 = sub_238278FF0();
    v10 = [v8 initWithServiceName_];
    v0[13] = v10;

    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    [v10 resume];
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_238272840;
    v13 = v0[12];

    return sub_238259E08(v13, v10);
  }

  else
  {
    v15 = v0[1];

    return v15(0, 0);
  }
}

uint64_t sub_238272840(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_2382729AC, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t sub_2382729AC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1();
}

unint64_t sub_238272A10()
{
  result = qword_27DEF7880;
  if (!qword_27DEF7880)
  {
    sub_238278D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7880);
  }

  return result;
}

uint64_t sub_238272AC8()
{
  if (*v0)
  {
    return 0x646574726F707865;
  }

  else
  {
    return 0x646574726F706D69;
  }
}

uint64_t sub_238272AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x646574726F706D69 && a2 == 0xE800000000000000;
  if (v5 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646574726F707865 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_238272BC4(uint64_t a1)
{
  v2 = sub_238272FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238272C00(uint64_t a1)
{
  v2 = sub_238272FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238272C3C(uint64_t a1)
{
  v2 = sub_238273030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238272C78(uint64_t a1)
{
  v2 = sub_238273030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238272CB4(uint64_t a1)
{
  v2 = sub_238273084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238272CF0(uint64_t a1)
{
  v2 = sub_238273084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricityFlowDirection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F30, &qword_23827FFF0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F38, &qword_23827FFF8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F40, &qword_238280000);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238272FDC();
  sub_238279640();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_238273030();
    v18 = v22;
    sub_2382794E0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_238273084();
    sub_2382794E0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_238272FDC()
{
  result = qword_27DEF7F48;
  if (!qword_27DEF7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F48);
  }

  return result;
}

unint64_t sub_238273030()
{
  result = qword_27DEF7F50;
  if (!qword_27DEF7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F50);
  }

  return result;
}

unint64_t sub_238273084()
{
  result = qword_27DEF7F58;
  if (!qword_27DEF7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F58);
  }

  return result;
}

uint64_t ElectricityFlowDirection.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricityFlowDirection.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F60, &qword_238280008);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F68, &qword_238280010);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7F70, &unk_238280018);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238272FDC();
  v16 = v36;
  sub_238279630();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_2382794D0();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_23822842C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2382793F0();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510) + 48);
      *v26 = &type metadata for ElectricityFlowDirection;
      sub_238279450();
      sub_2382793E0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_238273030();
        sub_238279440();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_238273084();
        sub_238279440();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_23827360C()
{
  result = qword_27DEF7F78;
  if (!qword_27DEF7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F78);
  }

  return result;
}

unint64_t sub_2382736D4()
{
  result = qword_27DEF7F80;
  if (!qword_27DEF7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F80);
  }

  return result;
}

unint64_t sub_23827372C()
{
  result = qword_27DEF7F88;
  if (!qword_27DEF7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F88);
  }

  return result;
}

unint64_t sub_238273784()
{
  result = qword_27DEF7F90;
  if (!qword_27DEF7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F90);
  }

  return result;
}

unint64_t sub_2382737DC()
{
  result = qword_27DEF7F98;
  if (!qword_27DEF7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7F98);
  }

  return result;
}

unint64_t sub_238273834()
{
  result = qword_27DEF7FA0;
  if (!qword_27DEF7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FA0);
  }

  return result;
}

unint64_t sub_23827388C()
{
  result = qword_27DEF7FA8;
  if (!qword_27DEF7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FA8);
  }

  return result;
}

unint64_t sub_2382738E4()
{
  result = qword_27DEF7FB0;
  if (!qword_27DEF7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FB0);
  }

  return result;
}

void sub_238273938(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7FC0, "\n*");
  if (swift_dynamicCast())
  {
    v4 = v13;
  }

  else
  {
    v5 = sub_238278AE0();
    v6 = [v5 domain];
    v7 = sub_238279000();
    v9 = v8;

    if (v7 == 0xD000000000000018 && 0x8000000238281EA0 == v9)
    {
    }

    else
    {
      v11 = sub_238279590();

      if ((v11 & 1) == 0)
      {

        v4 = 9;
        goto LABEL_12;
      }
    }

    v12 = [v5 code];

    v4 = 9;
    if (v12 < 9)
    {
      v4 = v12;
    }
  }

LABEL_12:
  *a2 = v4;
}

unint64_t EnergyKitError.errorDescription.getter()
{
  v3 = *v0;
  sub_238273AC8(&v4);
  v1 = v4;

  sub_238273D38(&v4);
  return v1;
}

void sub_238273AC8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001CLL;
  v3 = *v1;
  if (v3 <= 3)
  {
    if (*v1 > 1u)
    {
      v5 = 0xD00000000000001DLL;
      if (v3 == 2)
      {
        v6 = "n System Services settings.";
      }

      else
      {
        v5 = 0xD000000000000029;
        v6 = " in your app's settings.";
      }

      if (v3 == 2)
      {
        v2 = 0;
      }

      else
      {
        v2 = 0xD000000000000033;
      }

      if (v3 == 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = 0x8000000238282160;
      }

      if (v3 == 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0xD0000000000000FBLL;
      }

      if (v3 == 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0x80000002382821A0;
      }

LABEL_41:
      v11 = 0;
      v12 = 0;
      goto LABEL_49;
    }

    v6 = " request completes";
    v5 = 0xD000000000000036;
    v4 = 0x80000002382822F0;
    if (*v1)
    {
      v5 = 0xD000000000000020;
      v6 = "Load Event Payload is invalid";
      v8 = 0;
    }

    else
    {
      v4 = 0x8000000238282390;
      v8 = 0x656E206B63656843;
    }

    v10 = v3 == 0;
    if (*v1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 0xED00006B726F7774;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0xD000000000000022;
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0x8000000238282320;
    }

    v2 = 0xD000000000000028;
  }

  else
  {
    if (*v1 > 5u)
    {
      if (v3 == 6)
      {
        v8 = 0;
        v9 = 0;
        v11 = 0;
        v12 = 0;
        v4 = 0x8000000238281FD0;
        v6 = "lable in this region";
        v5 = 0xD000000000000021;
        goto LABEL_49;
      }

      v4 = 0x8000000238281F60;
      v5 = 0xD000000000000015;
      v6 = "restricted by the user";
      v7 = v3 == 7;
      if (v3 != 7)
      {
        v5 = 0xD000000000000029;
      }

      v8 = 0;
      v9 = 0;
      v2 = 0xD000000000000046;
      if (v7)
      {
        v2 = 0xD000000000000034;
      }

      else
      {
        v6 = "EnergyKit.EnergyKitError";
      }

      if (!v7)
      {
        v4 = 0x8000000238281EF0;
      }

      goto LABEL_41;
    }

    v12 = 0x80000002382820A0;
    v5 = 0xD00000000000003FLL;
    v6 = "xceeded, retry later";
    v11 = 0xD000000000000088;
    v4 = 0x8000000238282010;
    if (v3 == 4)
    {
      v4 = 0x8000000238282080;
    }

    else
    {
      v5 = 0xD000000000000013;
      v6 = "Connection to service failed";
      v2 = 0xD000000000000024;
    }

    if (v3 != 4)
    {
      v11 = 0;
      v12 = 0;
    }

    v8 = 0;
    v9 = 0;
  }

LABEL_49:
  *a1 = v5;
  a1[1] = v6 | 0x8000000000000000;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v11;
  a1[7] = v12;
}

unint64_t EnergyKitError.failureReason.getter()
{
  v3 = *v0;
  sub_238273AC8(v4);
  v1 = v4[2];

  sub_238273D38(v4);
  return v1;
}

unint64_t EnergyKitError.helpAnchor.getter()
{
  v3 = *v0;
  sub_238273AC8(v4);
  v1 = v4[4];

  sub_238273D38(v4);
  return v1;
}

unint64_t EnergyKitError.recoverySuggestion.getter()
{
  v3 = *v0;
  sub_238273AC8(v4);
  v1 = v4[6];

  sub_238273D38(v4);
  return v1;
}

uint64_t EnergyKitError.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

unint64_t sub_238273EF0()
{
  result = qword_27DEF7FB8;
  if (!qword_27DEF7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FB8);
  }

  return result;
}

unint64_t sub_238273F48()
{
  v3 = *v0;
  sub_238273AC8(&v4);
  v1 = v4;

  sub_238273D38(&v4);
  return v1;
}

unint64_t sub_238273F9C()
{
  v3 = *v0;
  sub_238273AC8(v4);
  v1 = v4[2];

  sub_238273D38(v4);
  return v1;
}

unint64_t sub_238273FF0()
{
  v3 = *v0;
  sub_238273AC8(v4);
  v1 = v4[6];

  sub_238273D38(v4);
  return v1;
}

unint64_t sub_238274044()
{
  v3 = *v0;
  sub_238273AC8(v4);
  v1 = v4[4];

  sub_238273D38(v4);
  return v1;
}

uint64_t getEnumTagSinglePayload for EnergyKitError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnergyKitError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2382741FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_238274244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2382742A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_238278D00();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238274368, 0, 0);
}

uint64_t sub_238274368()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 104))(v1, *MEMORY[0x277D07398], v3);
  v4 = sub_238278CF0();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_23827452C;

    return sub_238257EA4();
  }

  else
  {
    v11 = (v0[3] + *v0[3]);
    v7 = *(v0[3] + 4);
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_23827480C;
    v9 = v0[4];
    v10 = v0[2];

    return v11(v10);
  }
}

uint64_t sub_23827452C(char a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_23827462C, 0, 0);
}

uint64_t sub_23827462C()
{
  if (*(v0 + 120))
  {
    if (*(v0 + 120) == 1)
    {
      sub_238241158();
      swift_allocError();
      *v1 = 4;
      swift_willThrow();
      v2 = *(v0 + 56);

      v3 = *(v0 + 8);

      return v3();
    }

    else
    {
      v9 = swift_task_alloc();
      *(v0 + 88) = v9;
      *v9 = v0;
      v9[1] = sub_238274A3C;

      return sub_238257F74();
    }
  }

  else
  {
    v10 = (*(v0 + 24) + **(v0 + 24));
    v5 = *(*(v0 + 24) + 4);
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_238274924;
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return v10(v8);
  }
}

uint64_t sub_23827480C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_238274924()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_238274A3C(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v7 = *v1;
  *(v3 + 121) = a1;

  v5 = swift_task_alloc();
  *(v3 + 96) = v5;
  *v5 = v7;
  v5[1] = sub_238274B70;

  return sub_2382582A8(a1);
}

uint64_t sub_238274B70(char a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 122) = a1;

  return MEMORY[0x2822009F8](sub_238274C70, 0, 0);
}

uint64_t sub_238274C70()
{
  if (*(v0 + 122) == 1)
  {
    if (*(v0 + 121))
    {
      v10 = (*(v0 + 24) + **(v0 + 24));
      v1 = *(*(v0 + 24) + 4);
      v2 = swift_task_alloc();
      *(v0 + 112) = v2;
      *v2 = v0;
      v2[1] = sub_23827502C;
      v3 = *(v0 + 32);
      v4 = *(v0 + 16);

      return v10(v4);
    }

    else
    {
      v9 = swift_task_alloc();
      *(v0 + 104) = v9;
      *v9 = v0;
      v9[1] = sub_238274E54;

      return sub_238258644();
    }
  }

  else
  {
    sub_238241158();
    swift_allocError();
    *v6 = 4;
    swift_willThrow();
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_238274E54()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[7];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v12 = (v2[3] + *v2[3]);
    v8 = *(v2[3] + 4);
    v9 = swift_task_alloc();
    v2[14] = v9;
    *v9 = v4;
    v9[1] = sub_23827502C;
    v10 = v2[4];
    v11 = v2[2];

    return v12(v11);
  }
}

uint64_t sub_23827502C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t EnergyVenue.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EnergyVenue.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnergyVenue() + 20);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EnergyVenue()
{
  result = qword_27DEF7FE0;
  if (!qword_27DEF7FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnergyVenue.init(name:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for EnergyVenue() + 20);
  v7 = sub_238278BC0();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static EnergyVenue.venues()()
{
  v1 = sub_238278D00();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23827537C, 0, 0);
}

uint64_t sub_23827537C()
{
  if (sub_238278D20())
  {
    sub_238241158();
    swift_allocError();
    *v1 = 8;
    swift_willThrow();
    v2 = v0[4];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    (*(v6 + 104))(v5, *MEMORY[0x277D07398], v7);
    v8 = sub_238278CF0();
    (*(v6 + 8))(v5, v7);
    if (v8)
    {
      v9 = swift_task_alloc();
      v0[5] = v9;
      *v9 = v0;
      v9[1] = sub_238275614;

      return sub_238257EA4();
    }

    else
    {
      v10 = objc_allocWithZone(MEMORY[0x277CCAE80]);
      v11 = sub_238278FF0();
      v12 = [v10 initWithServiceName_];
      v0[6] = v12;

      v13 = [objc_opt_self() interfaceWithProtocol_];
      [v12 setRemoteObjectInterface_];

      [v12 resume];
      v14 = swift_task_alloc();
      v0[7] = v14;
      *v14 = v0;
      v14[1] = sub_23827594C;

      return sub_2382655F8(v12);
    }
  }
}

uint64_t sub_238275614(char a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_238275714, 0, 0);
}

uint64_t sub_238275714()
{
  if (*(v0 + 144))
  {
    if (*(v0 + 144) == 1)
    {
      sub_238241158();
      swift_allocError();
      *v1 = 4;
      swift_willThrow();
      v2 = *(v0 + 32);

      v3 = *(v0 + 8);

      return v3();
    }

    else
    {
      v10 = swift_task_alloc();
      *(v0 + 96) = v10;
      *v10 = v0;
      v10[1] = sub_238275CE4;

      return sub_238257F74();
    }
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v6 = sub_238278FF0();
    v7 = [v5 initWithServiceName_];
    *(v0 + 72) = v7;

    v8 = [objc_opt_self() interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];

    [v7 resume];
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_238275B18;

    return sub_2382655F8(v7);
  }
}

uint64_t sub_23827594C(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(v5 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_238275AAC, 0, 0);
  }

  else
  {
    v6 = *(v5 + 32);

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_238275AAC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238275B18(uint64_t a1)
{
  v4 = *(*v2 + 80);
  v5 = *v2;
  *(v5 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_238275C78, 0, 0);
  }

  else
  {
    v6 = *(v5 + 32);

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_238275C78()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238275CE4(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(v3 + 145) = a1;

  v5 = swift_task_alloc();
  *(v3 + 104) = v5;
  *v5 = v7;
  v5[1] = sub_238275E18;

  return sub_2382582A8(a1);
}

uint64_t sub_238275E18(char a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 146) = a1;

  return MEMORY[0x2822009F8](sub_238275F18, 0, 0);
}

uint64_t sub_238275F18()
{
  if (*(v0 + 146) == 1)
  {
    if (*(v0 + 145))
    {

      return MEMORY[0x2822009F8](sub_2382761B4, 0, 0);
    }

    else
    {
      v4 = swift_task_alloc();
      *(v0 + 112) = v4;
      *v4 = v0;
      v4[1] = sub_238276068;

      return sub_238258644();
    }
  }

  else
  {
    sub_238241158();
    swift_allocError();
    *v1 = 4;
    swift_willThrow();
    v2 = *(v0 + 32);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_238276068()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2382761B4, 0, 0);
  }
}

uint64_t sub_2382761B4()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 120) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_238276304;

  return sub_2382655F8(v3);
}

uint64_t sub_238276304(uint64_t a1)
{
  v4 = *(*v2 + 128);
  v5 = *v2;
  *(v5 + 136) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_238276464, 0, 0);
  }

  else
  {
    v6 = *(v5 + 32);

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_238276464()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2382764F0()
{
  if (sub_238278D20())
  {
    v1 = v0[1];

    return v1(0);
  }

  else
  {
    v3 = v0[2];
    v4 = *(type metadata accessor for EnergyVenue() + 20);
    v5 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v6 = sub_238278FF0();
    v7 = [v5 initWithServiceName_];
    v0[3] = v7;

    v8 = [objc_opt_self() interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];

    [v7 resume];
    v9 = swift_task_alloc();
    v0[4] = v9;
    *v9 = v0;
    v9[1] = sub_2382766A8;

    return sub_238265BC0(v3 + v4, v7);
  }
}

uint64_t sub_2382766A8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_238276800, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_238276800()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(0);
}

uint64_t EnergyVenue.configureGuidanceToIncludeCost(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_23827688C, 0, 0);
}

uint64_t sub_23827688C()
{
  if (sub_238278D20())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *(type metadata accessor for EnergyVenue() + 20);
    v5 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v6 = sub_238278FF0();
    v7 = [v5 initWithServiceName_];
    *(v0 + 24) = v7;

    v8 = [objc_opt_self() interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];

    [v7 resume];
    v9 = swift_task_alloc();
    *(v0 + 32) = v9;
    *v9 = v0;
    v9[1] = sub_238276A44;
    v10 = *(v0 + 48);

    return sub_2382662F4(v10, v3 + v4, v7);
  }
}

uint64_t sub_238276A44()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238276B80, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_238276B80()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

uint64_t EnergyVenue.submitEvents<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_238276C08, 0, 0);
}

uint64_t sub_238276C08()
{
  if (sub_238278D20())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[5];
    type metadata accessor for LoadEventOperations();
    v4 = *(type metadata accessor for EnergyVenue() + 20);
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_238276D08;
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[2];

    return sub_23825BD0C(v8, v3 + v4, v6, v7);
  }
}

uint64_t sub_238276D08()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t static EnergyVenue.venue(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_238276E1C, 0, 0);
}

uint64_t sub_238276E1C()
{
  if (sub_238278D20())
  {
    sub_238241158();
    swift_allocError();
    *v1 = 8;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[3];
    v5 = swift_task_alloc();
    v0[4] = v5;
    *(v5 + 16) = v4;
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_238276F68;
    v7 = v0[2];

    return sub_2382742A4(v7, &unk_238280560, v5);
  }
}

uint64_t sub_238276F68()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2382770A4, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2382770A4()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_238277108(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382771A4, 0, 0);
}

uint64_t sub_2382771A4()
{
  type metadata accessor for VenueOperations();
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  v0[5] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2382772F8;
  v7 = v0[3];
  v6 = v0[4];

  return sub_2382603E4(v6, v7, v3);
}

uint64_t sub_2382772F8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2382789A8;
  }

  else
  {

    v4 = sub_2382789AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t static EnergyVenue.venue(matchingHomeUniqueIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_238277434, 0, 0);
}

uint64_t sub_238277434()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_238277510;
  v4 = v0[2];

  return sub_2382742A4(v4, &unk_238280580, v2);
}

uint64_t sub_238277510()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23827764C, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23827764C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_2382776B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23827774C, 0, 0);
}

uint64_t sub_23827774C()
{
  type metadata accessor for VenueOperations();
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  v0[5] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2382778A0;
  v7 = v0[3];
  v6 = v0[4];

  return sub_238260E28(v6, v7, v3);
}

uint64_t sub_2382778A0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_238277AC8;
  }

  else
  {

    v4 = sub_2382779BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2382779BC()
{
  v1 = v0[4];
  v2 = type metadata accessor for EnergyVenue();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_238278940(v1);
    sub_238241158();
    swift_allocError();
    *v3 = 8;
    swift_willThrow();
    v4 = v0[4];
  }

  else
  {
    sub_23826469C(v1, v0[2]);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_238277AC8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238277B34()
{
  if (*v0)
  {
    result = 25705;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_238277B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_238277C30(uint64_t a1)
{
  v2 = sub_238278568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238277C6C(uint64_t a1)
{
  v2 = sub_238278568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyVenue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7FC8, &qword_238280588);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238278568();
  sub_238279640();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_238279500();
  if (!v2)
  {
    v13 = *(type metadata accessor for EnergyVenue() + 20);
    v15[14] = 1;
    sub_238278BC0();
    sub_2382785F0(&qword_27DEF6AA8);
    sub_238279550();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EnergyVenue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_238278BC0();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7FD8, &qword_238280590);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for EnergyVenue();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238278568();
  sub_238279630();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_238279470();
  v13[1] = v17;
  v25 = 1;
  sub_2382785F0(&qword_27DEF6AC8);
  sub_2382794C0();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_238264700(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_238264764(v13);
}

uint64_t sub_23827818C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_238278BC0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t EnergyVenue.submitEventsWithCount<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_238278224, 0, 0);
}

uint64_t sub_238278224()
{
  if (sub_238278D20())
  {
    v1 = v0[1];

    return v1(0);
  }

  else
  {
    v3 = v0[5];
    type metadata accessor for LoadEventOperations();
    v4 = *(type metadata accessor for EnergyVenue() + 20);
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_238278328;
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[2];

    return sub_23825BD0C(v8, v3 + v4, v6, v7);
  }
}

uint64_t sub_238278328(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_238278428(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238247660;

  return sub_238277108(a1, v4);
}

uint64_t sub_2382784C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2382470D0;

  return sub_2382776B0(a1, v4);
}

unint64_t sub_238278568()
{
  result = qword_27DEF7FD0;
  if (!qword_27DEF7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FD0);
  }

  return result;
}

uint64_t sub_2382785F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_238278BC0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238278648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238278BC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238278708(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238278BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2382787AC()
{
  result = sub_238278BC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23827883C()
{
  result = qword_27DEF7FF0;
  if (!qword_27DEF7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FF0);
  }

  return result;
}

unint64_t sub_238278894()
{
  result = qword_27DEF7FF8;
  if (!qword_27DEF7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF7FF8);
  }

  return result;
}

unint64_t sub_2382788EC()
{
  result = qword_27DEF8000;
  if (!qword_27DEF8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF8000);
  }

  return result;
}

uint64_t sub_238278940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}