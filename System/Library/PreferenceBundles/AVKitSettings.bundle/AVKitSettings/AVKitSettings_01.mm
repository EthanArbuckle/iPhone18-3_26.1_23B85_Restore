uint64_t sub_23C0CF010()
{
  v26 = v0;
  v1 = v0[70];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_23C0E6074(0xD00000000000001FLL, 0x800000023C0ED510);
    if (v5)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v4, (v0 + 2));

      sub_23C0B7660((v0 + 2), (v0 + 27));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v6 = v0[55];
        v0[78] = v6;
        v7 = *(MEMORY[0x277D857E0] + 4);

        v8 = swift_task_alloc();
        v0[79] = v8;
        *v8 = v0;
        v8[1] = sub_23C0CFA98;
        v9 = MEMORY[0x277D84F78] + 8;
        v10 = v6;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  v11 = v0[71];
  v23 = v0[70];
  v12 = v0[62];
  v13 = v0[59];
  v14 = v0[60];
  v15 = v0[58];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  swift_beginAccess();
  sub_23C0E2190(v24, 0xD00000000000001FLL, 0x800000023C0ED510);
  swift_endAccess();
  (*(v14 + 16))(v15, v12, v13);
  v16 = *(v14 + 56);
  v16(v15, 0, 1, v13);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23C0EB000;
  v17[5] = v11;

  v18 = sub_23C0DE678(0, 0, v15, &unk_23C0EB008, v17);
  v0[72] = v18;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v0[11] = &off_284EE15C0;
  v0[7] = v18;
  swift_beginAccess();
  swift_retain_n();
  sub_23C0E2190((v0 + 7), 0xD00000000000001FLL, 0x800000023C0ED510);
  swift_endAccess();
  v16(v15, 1, 1, v13);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v20[5] = v19;
  v20[6] = 0xD00000000000001FLL;
  v20[7] = 0x800000023C0ED510;

  sub_23C0DE678(0, 0, v15, &unk_23C0EB010, v20);

  v21 = *(MEMORY[0x277D857E0] + 4);
  v8 = swift_task_alloc();
  v0[73] = v8;
  *v8 = v0;
  v8[1] = sub_23C0CF41C;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = v18;
LABEL_8:

  return MEMORY[0x282200460](v8, v10, v9);
}

uint64_t sub_23C0CF41C()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 560);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CF52C, v2, 0);
}

uint64_t sub_23C0CF52C()
{
  v1 = v0[72];
  v2 = v0[71];

  v3 = v0[62];
  v4 = v0[59];
  v5 = v0[60];
  v6 = *(v5 + 8);
  v0[74] = v6;
  v0[75] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);

  return MEMORY[0x2822009F8](sub_23C0CF5CC, 0, 0);
}

uint64_t sub_23C0CF5CC()
{
  v1 = v0[61];
  v2 = *(v0[69] + 16);
  v0[76] = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[77] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0CF690, v2, 0);
}

uint64_t sub_23C0CF690()
{
  v26 = v0;
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_23C0E6074(0xD000000000000027, 0x800000023C0ED5D0);
    if (v5)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v4, (v0 + 12));

      sub_23C0B7660((v0 + 12), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v6 = v0[54];
        v0[82] = v6;
        v7 = *(MEMORY[0x277D857E0] + 4);

        v8 = swift_task_alloc();
        v0[83] = v8;
        *v8 = v0;
        v8[1] = sub_23C0CFED0;
        v9 = MEMORY[0x277D84F78] + 8;
        v10 = v6;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    }

    else
    {
    }
  }

  v11 = v0[77];
  v23 = v0[76];
  v13 = v0[60];
  v12 = v0[61];
  v14 = v0[58];
  v15 = v0[59];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  swift_beginAccess();
  sub_23C0E2190(v24, 0xD000000000000027, 0x800000023C0ED5D0);
  swift_endAccess();
  (*(v13 + 16))(v14, v12, v15);
  v16 = *(v13 + 56);
  v16(v14, 0, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23C0EB018;
  v17[5] = v11;

  v18 = sub_23C0DE678(0, 0, v14, &unk_23C0EB020, v17);
  v0[80] = v18;
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v0[21] = &off_284EE15C0;
  v0[17] = v18;
  swift_beginAccess();
  swift_retain_n();
  sub_23C0E2190((v0 + 17), 0xD000000000000027, 0x800000023C0ED5D0);
  swift_endAccess();
  v16(v14, 1, 1, v15);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v20[5] = v19;
  v20[6] = 0xD000000000000027;
  v20[7] = 0x800000023C0ED5D0;

  sub_23C0DE678(0, 0, v14, &unk_23C0EB028, v20);

  v21 = *(MEMORY[0x277D857E0] + 4);
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_23C0CFC68;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = v18;
LABEL_8:

  return MEMORY[0x282200460](v8, v10, v9);
}

uint64_t sub_23C0CFA98()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 560);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CFBC4, v3, 0);
}

uint64_t sub_23C0CFBC4()
{
  v1 = v0[78];
  v2 = v0[71];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[62];
  v4 = v0[59];
  v5 = v0[60];
  v6 = *(v5 + 8);
  v0[74] = v6;
  v0[75] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);

  return MEMORY[0x2822009F8](sub_23C0CF5CC, 0, 0);
}

uint64_t sub_23C0CFC68()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 608);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CFD78, v2, 0);
}

uint64_t sub_23C0CFD78()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 616);

  v3 = *(v0 + 600);
  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x2822009F8](sub_23C0CFE04, 0, 0);
}

uint64_t sub_23C0CFE04()
{
  v1 = v0[69];
  v2 = v0[63];

  sub_23C0DAAD8(v2, &qword_27E1EE988, &qword_23C0EAF00);
  v3 = sub_23C0DA34C();
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[67] = v5;
  *v5 = v0;
  v5[1] = sub_23C0CEC40;
  v6 = v0[66];
  v7 = v0[63];
  v8 = v0[64];

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_23C0CFED0()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 608);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23C0CFFFC, v3, 0);
}

uint64_t sub_23C0CFFFC()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 616);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  v3 = *(v0 + 600);
  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x2822009F8](sub_23C0CFE04, 0, 0);
}

uint64_t sub_23C0D008C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15;
  v5[58] = swift_task_alloc();
  v7 = sub_23C0E9BD0();
  v5[59] = v7;
  v8 = *(v7 - 8);
  v5[60] = v8;
  v9 = *(v8 + 64) + 15;
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00) - 8) + 64) + 15;
  v5[63] = swift_task_alloc();
  v11 = sub_23C0E9CB0();
  v5[64] = v11;
  v12 = *(v11 - 8);
  v5[65] = v12;
  v13 = *(v12 + 64) + 15;
  v5[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D0224, 0, 0);
}

uint64_t sub_23C0D0224()
{
  v1 = v0[66];
  v2 = v0[56];
  v3 = v0[57];
  v4 = [objc_opt_self() defaultCenter];
  v5 = *MEMORY[0x277CB8620];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v6 = sub_23C0DA34C();
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[67] = v8;
  *v8 = v0;
  v8[1] = sub_23C0D033C;
  v9 = v0[66];
  v10 = v0[63];
  v11 = v0[64];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_23C0D033C()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_23C0D070C;
  }

  else
  {
    v3 = sub_23C0D0450;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C0D046C()
{
  v1 = v0[63];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
LABEL_8:
    v6 = v0[66];
    v7 = v0[62];
    v8 = v0[63];
    v9 = v0[61];
    v10 = v0[58];

    v11 = v0[1];

    return v11();
  }

  v3 = v0[57];
  Strong = swift_weakLoadStrong();
  v0[69] = Strong;
  if (!Strong)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[65] + 8))(v0[66], v0[64]);

LABEL_7:
    sub_23C0DAAD8(v0[63], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v13 = sub_23C0E9830();
  __swift_project_value_buffer(v13, qword_27E1EF4F8);
  v14 = sub_23C0E9820();
  v15 = sub_23C0E9C90();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23C0B2000, v14, v15, " .AvailableInputDevicesDidChange received", v16, 2u);
    MEMORY[0x23EEC78E0](v16, -1, -1);
  }

  v17 = v0[62];

  v18 = *(v5 + 16);
  v0[70] = v18;
  v0[71] = swift_allocObject();
  swift_weakInit();
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0D0798, v18, 0);
}

uint64_t sub_23C0D070C()
{
  *(v0 + 424) = *(v0 + 544);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE998, &qword_23C0EAF08);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_23C0D0798()
{
  v26 = v0;
  v1 = v0[70];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_23C0E6074(0xD00000000000001FLL, 0x800000023C0ED510);
    if (v5)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v4, (v0 + 2));

      sub_23C0B7660((v0 + 2), (v0 + 27));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v6 = v0[55];
        v0[78] = v6;
        v7 = *(MEMORY[0x277D857E0] + 4);

        v8 = swift_task_alloc();
        v0[79] = v8;
        *v8 = v0;
        v8[1] = sub_23C0D1220;
        v9 = MEMORY[0x277D84F78] + 8;
        v10 = v6;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  v11 = v0[71];
  v23 = v0[70];
  v12 = v0[62];
  v13 = v0[59];
  v14 = v0[60];
  v15 = v0[58];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  swift_beginAccess();
  sub_23C0E2190(v24, 0xD00000000000001FLL, 0x800000023C0ED510);
  swift_endAccess();
  (*(v14 + 16))(v15, v12, v13);
  v16 = *(v14 + 56);
  v16(v15, 0, 1, v13);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23C0EAFD0;
  v17[5] = v11;

  v18 = sub_23C0DE678(0, 0, v15, &unk_23C0EAFD8, v17);
  v0[72] = v18;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v0[11] = &off_284EE15C0;
  v0[7] = v18;
  swift_beginAccess();
  swift_retain_n();
  sub_23C0E2190((v0 + 7), 0xD00000000000001FLL, 0x800000023C0ED510);
  swift_endAccess();
  v16(v15, 1, 1, v13);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v20[5] = v19;
  v20[6] = 0xD00000000000001FLL;
  v20[7] = 0x800000023C0ED510;

  sub_23C0DE678(0, 0, v15, &unk_23C0EAFE0, v20);

  v21 = *(MEMORY[0x277D857E0] + 4);
  v8 = swift_task_alloc();
  v0[73] = v8;
  *v8 = v0;
  v8[1] = sub_23C0D0BA4;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = v18;
LABEL_8:

  return MEMORY[0x282200460](v8, v10, v9);
}

uint64_t sub_23C0D0BA4()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 560);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D0CB4, v2, 0);
}

uint64_t sub_23C0D0CB4()
{
  v1 = v0[72];
  v2 = v0[71];

  v3 = v0[62];
  v4 = v0[59];
  v5 = v0[60];
  v6 = *(v5 + 8);
  v0[74] = v6;
  v0[75] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);

  return MEMORY[0x2822009F8](sub_23C0D0D54, 0, 0);
}

uint64_t sub_23C0D0D54()
{
  v1 = v0[61];
  v2 = *(v0[69] + 16);
  v0[76] = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[77] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0D0E18, v2, 0);
}

uint64_t sub_23C0D0E18()
{
  v26 = v0;
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_23C0E6074(0xD000000000000027, 0x800000023C0ED5D0);
    if (v5)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v4, (v0 + 12));

      sub_23C0B7660((v0 + 12), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v6 = v0[54];
        v0[82] = v6;
        v7 = *(MEMORY[0x277D857E0] + 4);

        v8 = swift_task_alloc();
        v0[83] = v8;
        *v8 = v0;
        v8[1] = sub_23C0D1658;
        v9 = MEMORY[0x277D84F78] + 8;
        v10 = v6;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    }

    else
    {
    }
  }

  v11 = v0[77];
  v23 = v0[76];
  v13 = v0[60];
  v12 = v0[61];
  v14 = v0[58];
  v15 = v0[59];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  swift_beginAccess();
  sub_23C0E2190(v24, 0xD000000000000027, 0x800000023C0ED5D0);
  swift_endAccess();
  (*(v13 + 16))(v14, v12, v15);
  v16 = *(v13 + 56);
  v16(v14, 0, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23C0EAFE8;
  v17[5] = v11;

  v18 = sub_23C0DE678(0, 0, v14, &unk_23C0EAFF0, v17);
  v0[80] = v18;
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v0[21] = &off_284EE15C0;
  v0[17] = v18;
  swift_beginAccess();
  swift_retain_n();
  sub_23C0E2190((v0 + 17), 0xD000000000000027, 0x800000023C0ED5D0);
  swift_endAccess();
  v16(v14, 1, 1, v15);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v20[5] = v19;
  v20[6] = 0xD000000000000027;
  v20[7] = 0x800000023C0ED5D0;

  sub_23C0DE678(0, 0, v14, &unk_23C0EAFF8, v20);

  v21 = *(MEMORY[0x277D857E0] + 4);
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_23C0D13F0;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = v18;
LABEL_8:

  return MEMORY[0x282200460](v8, v10, v9);
}

uint64_t sub_23C0D1220()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 560);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D134C, v3, 0);
}

uint64_t sub_23C0D134C()
{
  v1 = v0[78];
  v2 = v0[71];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[62];
  v4 = v0[59];
  v5 = v0[60];
  v6 = *(v5 + 8);
  v0[74] = v6;
  v0[75] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);

  return MEMORY[0x2822009F8](sub_23C0D0D54, 0, 0);
}

uint64_t sub_23C0D13F0()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 608);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D1500, v2, 0);
}

uint64_t sub_23C0D1500()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 616);

  v3 = *(v0 + 600);
  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x2822009F8](sub_23C0D158C, 0, 0);
}

uint64_t sub_23C0D158C()
{
  v1 = v0[69];
  v2 = v0[63];

  sub_23C0DAAD8(v2, &qword_27E1EE988, &qword_23C0EAF00);
  v3 = sub_23C0DA34C();
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[67] = v5;
  *v5 = v0;
  v5[1] = sub_23C0D033C;
  v6 = v0[66];
  v7 = v0[63];
  v8 = v0[64];

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_23C0D1658()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 608);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D1784, v3, 0);
}

uint64_t sub_23C0D1784()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 616);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  v3 = *(v0 + 600);
  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x2822009F8](sub_23C0D158C, 0, 0);
}

uint64_t sub_23C0D1814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v6 = sub_23C0E9BD0();
  v4[55] = v6;
  v7 = *(v6 - 8);
  v4[56] = v7;
  v8 = *(v7 + 64) + 15;
  v4[57] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v10 = sub_23C0E9CB0();
  v4[59] = v10;
  v11 = *(v10 - 8);
  v4[60] = v11;
  v12 = *(v11 + 64) + 15;
  v4[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D19C4, 0, 0);
}

uint64_t sub_23C0D19C4()
{
  v1 = v0[61];
  v2 = v0[50];
  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x277CB8600];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v5 = sub_23C0DA34C();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[62] = v7;
  *v7 = v0;
  v7[1] = sub_23C0D1ADC;
  v8 = v0[61];
  v9 = v0[58];
  v10 = v0[59];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_23C0D1ADC()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_23C0D1F38;
  }

  else
  {
    v3 = sub_23C0D1BF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C0D1C0C()
{
  v1 = v0[58];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
LABEL_8:
    v6 = v0[61];
    v7 = v0[57];
    v8 = v0[58];
    v10 = v0[53];
    v9 = v0[54];
    v12 = v0[51];
    v11 = v0[52];

    v13 = v0[1];

    return v13();
  }

  v3 = v0[50];
  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (!Strong)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[60] + 8))(v0[61], v0[59]);

LABEL_7:
    sub_23C0DAAD8(v0[58], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v15 = sub_23C0E9830();
  __swift_project_value_buffer(v15, qword_27E1EF4F8);

  v16 = sub_23C0E9820();
  v17 = sub_23C0E9C90();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v0[49] = v19;
    *v18 = 136315138;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v20 = 0xE600000000000000;
        v21 = 0x7070412D6E49;
      }

      else
      {
        v20 = 0xE800000000000000;
        v21 = 0x73676E6974746553;
      }
    }

    else
    {
      v20 = 0xE200000000000000;
      v21 = 17219;
    }

    v22 = sub_23C0D8D20(v21, v20, v0 + 49);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_23C0B2000, v16, v17, "[%s] .AVInputContextInputDeviceDidChange received", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23EEC78E0](v19, -1, -1);
    MEMORY[0x23EEC78E0](v18, -1, -1);
  }

  v23 = *(v5 + 104);
  v0[65] = v23;

  return MEMORY[0x2822009F8](sub_23C0D1FC4, v23, 0);
}

uint64_t sub_23C0D1F38()
{
  *(v0 + 376) = *(v0 + 504);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE998, &qword_23C0EAF08);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_23C0D1FC4()
{
  v1 = *(v0 + 520);
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  *(v1 + 7) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  sub_23C0B4E34(v2, v3);
  v8 = v1[20];
  v9 = v1[21];
  v10 = v1[22];
  v11 = v1[23];
  v12 = v1[24];
  v13 = v1[25];
  *(v1 + 10) = 0u;
  *(v1 + 11) = 0u;
  *(v1 + 12) = 0u;
  sub_23C0B4E34(v8, v9);
  v14 = v1[26];
  v15 = v1[27];
  v16 = v1[28];
  v17 = v1[29];
  v18 = v1[30];
  v19 = v1[31];
  *(v1 + 13) = 0u;
  *(v1 + 14) = 0u;
  *(v1 + 15) = 0u;
  sub_23C0B4E34(v14, v15);
  v20 = v1[32];
  v1[32] = 0;

  v21 = v1[33];
  v22 = v1[34];
  v23 = v1[35];
  v24 = v1[36];
  v25 = v1[37];
  v26 = v1[38];
  *(v1 + 33) = 0u;
  *(v1 + 35) = 0u;
  *(v1 + 37) = 0u;
  sub_23C0B4E34(v21, v22);

  return MEMORY[0x2822009F8](sub_23C0D20A8, 0, 0);
}

uint64_t sub_23C0D20A8()
{
  v1 = v0[57];
  v2 = *(v0[64] + 16);
  v0[66] = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[67] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0D216C, v2, 0);
}

uint64_t sub_23C0D216C()
{
  v58 = v0;
  v1 = *(v0 + 528);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_23C0E6074(0xD000000000000027, 0x800000023C0ED5D0);
    if (v5)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v4, v0 + 16);

      sub_23C0B7660(v0 + 16, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 384);
        *(v0 + 560) = v6;
        v7 = *(MEMORY[0x277D857E0] + 4);

        v8 = swift_task_alloc();
        *(v0 + 568) = v8;
        *v8 = v0;
        v8[1] = sub_23C0D2B48;
        v9 = MEMORY[0x277D84F78] + 8;
        v10 = v6;
        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
    }
  }

  v11 = *(v0 + 536);
  v13 = *(v0 + 448);
  v12 = *(v0 + 456);
  v15 = *(v0 + 432);
  v14 = *(v0 + 440);
  v16 = *(v0 + 424);
  swift_beginAccess();
  sub_23C0E633C(0xD000000000000027, 0x800000023C0ED5D0, v0 + 56);
  sub_23C0DAAD8(v0 + 56, &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();
  (*(v13 + 16))(v15, v12, v14);
  v55 = *(v13 + 56);
  v55(v15, 0, 1, v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23C0EAF68;
  v17[5] = v11;
  sub_23C0DA468(v15, v16);
  v56 = *(v13 + 48);
  v18 = v56(v16, 1, v14);

  if (v18 == 1)
  {
    sub_23C0DAAD8(*(v0 + 424), &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    v20 = *(v0 + 440);
    v19 = *(v0 + 448);
    v21 = *(v0 + 424);
    sub_23C0E9BC0();
    (*(v19 + 8))(v21, v20);
  }

  v23 = v17[2];
  v22 = v17[3];
  swift_unknownObjectRetain();

  if (v23)
  {
    swift_getObjectType();
    v24 = sub_23C0E9B40();
    v26 = v25;
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_23C0DAAD8(*(v0 + 432), &qword_27E1EE890, &qword_23C0EA990);
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_23C0EAF70;
  *(v27 + 24) = v17;
  if (v26 | v24)
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;
    *(v0 + 232) = v24;
    *(v0 + 240) = v26;
  }

  v53 = *(v0 + 440);
  v54 = *(v0 + 528);
  v28 = *(v0 + 408);
  v29 = *(v0 + 416);
  v30 = swift_task_create();
  *(v0 + 544) = v30;
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  *(v0 + 128) = &off_284EE15C0;
  *(v0 + 96) = v30;
  swift_beginAccess();
  sub_23C0DA5C8((v0 + 96), v0 + 136);
  swift_retain_n();
  v31 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  v33 = v1;
  v34 = *(v0 + 160);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v34);
  v36 = *(v34 - 8);
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  (*(v36 + 16))(v38, v35, v34);
  sub_23C0D9430(*v38, 0xD000000000000027, 0x800000023C0ED5D0, isUniquelyReferenced_nonNull_native, &v57);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  *(v33 + 112) = v57;
  swift_endAccess();
  v55(v29, 1, 1, v53);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v30;
  v40[5] = v39;
  v40[6] = 0xD000000000000027;
  v40[7] = 0x800000023C0ED5D0;
  sub_23C0DA468(v29, v28);
  LODWORD(v33) = v56(v28, 1, v53);

  if (v33 == 1)
  {
    sub_23C0DAAD8(*(v0 + 408), &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    v41 = *(v0 + 440);
    v42 = *(v0 + 448);
    v43 = *(v0 + 408);
    sub_23C0E9BC0();
    (*(v42 + 8))(v43, v41);
  }

  v45 = v40[2];
  v44 = v40[3];
  swift_unknownObjectRetain();

  if (v45)
  {
    swift_getObjectType();
    v46 = sub_23C0E9B40();
    v48 = v47;
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  sub_23C0DAAD8(*(v0 + 416), &qword_27E1EE890, &qword_23C0EA990);
  v49 = swift_allocObject();
  *(v49 + 16) = &unk_23C0EAF80;
  *(v49 + 24) = v40;
  if (v48 | v46)
  {
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 264) = v46;
    *(v0 + 272) = v48;
  }

  v50 = MEMORY[0x277D84F78];
  swift_task_create();

  v51 = *(MEMORY[0x277D857E0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 552) = v8;
  *v8 = v0;
  v8[1] = sub_23C0D28CC;
  v9 = v50 + 8;
  v10 = v30;
LABEL_24:

  return MEMORY[0x282200460](v8, v10, v9);
}

uint64_t sub_23C0D28CC()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 528);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D29DC, v2, 0);
}

uint64_t sub_23C0D29DC()
{
  v1 = v0[68];
  v2 = v0[67];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23C0D2A7C, 0, 0);
}

uint64_t sub_23C0D2A7C()
{
  v1 = v0[64];
  v2 = v0[58];

  sub_23C0DAAD8(v2, &qword_27E1EE988, &qword_23C0EAF00);
  v3 = sub_23C0DA34C();
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = sub_23C0D1ADC;
  v6 = v0[61];
  v7 = v0[58];
  v8 = v0[59];

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_23C0D2B48()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 528);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D2C74, v3, 0);
}

uint64_t sub_23C0D2C74()
{
  v1 = v0[70];
  v2 = v0[67];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23C0D2A7C, 0, 0);
}

uint64_t sub_23C0D2D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v6 = sub_23C0E9BD0();
  v4[55] = v6;
  v7 = *(v6 - 8);
  v4[56] = v7;
  v8 = *(v7 + 64) + 15;
  v4[57] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v10 = sub_23C0E9CB0();
  v4[59] = v10;
  v11 = *(v10 - 8);
  v4[60] = v11;
  v12 = *(v11 + 64) + 15;
  v4[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D2EC8, 0, 0);
}

uint64_t sub_23C0D2EC8()
{
  v1 = v0[61];
  v2 = v0[50];
  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x277CB80A0];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v5 = sub_23C0DA34C();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[62] = v7;
  *v7 = v0;
  v7[1] = sub_23C0D2FE0;
  v8 = v0[61];
  v9 = v0[58];
  v10 = v0[59];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_23C0D2FE0()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_23C0DB06C;
  }

  else
  {
    v3 = sub_23C0D30F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C0D3110()
{
  v1 = v0[58];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
LABEL_8:
    v6 = v0[61];
    v7 = v0[57];
    v8 = v0[58];
    v10 = v0[53];
    v9 = v0[54];
    v12 = v0[51];
    v11 = v0[52];

    v13 = v0[1];

    return v13();
  }

  v3 = v0[50];
  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (!Strong)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[60] + 8))(v0[61], v0[59]);

LABEL_7:
    sub_23C0DAAD8(v0[58], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v15 = sub_23C0E9830();
  __swift_project_value_buffer(v15, qword_27E1EF4F8);

  v16 = sub_23C0E9820();
  v17 = sub_23C0E9C90();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v0[49] = v19;
    *v18 = 136315138;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v20 = 0xE600000000000000;
        v21 = 0x7070412D6E49;
      }

      else
      {
        v20 = 0xE800000000000000;
        v21 = 0x73676E6974746553;
      }
    }

    else
    {
      v20 = 0xE200000000000000;
      v21 = 17219;
    }

    v22 = sub_23C0D8D20(v21, v20, v0 + 49);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_23C0B2000, v16, v17, "[%s] .mediaServicesWereResetNotification received", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23EEC78E0](v19, -1, -1);
    MEMORY[0x23EEC78E0](v18, -1, -1);
  }

  v23 = v0[57];
  v24 = *(v5 + 48);
  *(v5 + 48) = 0;

  v25 = *(v5 + 16);
  v0[65] = v25;
  v0[66] = swift_allocObject();
  swift_weakInit();
  sub_23C0E9BB0();

  return MEMORY[0x2822009F8](sub_23C0D347C, v25, 0);
}

uint64_t sub_23C0D347C()
{
  v58 = v0;
  v1 = *(v0 + 520);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_23C0E6074(0xD000000000000010, 0x800000023C0ED580);
    if (v5)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v4, v0 + 16);

      sub_23C0B7660(v0 + 16, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 384);
        *(v0 + 552) = v6;
        v7 = *(MEMORY[0x277D857E0] + 4);

        v8 = swift_task_alloc();
        *(v0 + 560) = v8;
        *v8 = v0;
        v8[1] = sub_23C0D3E58;
        v9 = MEMORY[0x277D84F78] + 8;
        v10 = v6;
        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
    }
  }

  v11 = *(v0 + 528);
  v13 = *(v0 + 448);
  v12 = *(v0 + 456);
  v15 = *(v0 + 432);
  v14 = *(v0 + 440);
  v16 = *(v0 + 424);
  swift_beginAccess();
  sub_23C0E633C(0xD000000000000010, 0x800000023C0ED580, v0 + 56);
  sub_23C0DAAD8(v0 + 56, &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();
  (*(v13 + 16))(v15, v12, v14);
  v55 = *(v13 + 56);
  v55(v15, 0, 1, v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23C0EAF10;
  v17[5] = v11;
  sub_23C0DA468(v15, v16);
  v56 = *(v13 + 48);
  v18 = v56(v16, 1, v14);

  if (v18 == 1)
  {
    sub_23C0DAAD8(*(v0 + 424), &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    v20 = *(v0 + 440);
    v19 = *(v0 + 448);
    v21 = *(v0 + 424);
    sub_23C0E9BC0();
    (*(v19 + 8))(v21, v20);
  }

  v23 = v17[2];
  v22 = v17[3];
  swift_unknownObjectRetain();

  if (v23)
  {
    swift_getObjectType();
    v24 = sub_23C0E9B40();
    v26 = v25;
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_23C0DAAD8(*(v0 + 432), &qword_27E1EE890, &qword_23C0EA990);
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_23C0EAF20;
  *(v27 + 24) = v17;
  if (v26 | v24)
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;
    *(v0 + 232) = v24;
    *(v0 + 240) = v26;
  }

  v53 = *(v0 + 440);
  v54 = *(v0 + 520);
  v28 = *(v0 + 408);
  v29 = *(v0 + 416);
  v30 = swift_task_create();
  *(v0 + 536) = v30;
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  *(v0 + 128) = &off_284EE15C0;
  *(v0 + 96) = v30;
  swift_beginAccess();
  sub_23C0DA5C8((v0 + 96), v0 + 136);
  swift_retain_n();
  v31 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  v33 = v1;
  v34 = *(v0 + 160);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v34);
  v36 = *(v34 - 8);
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  (*(v36 + 16))(v38, v35, v34);
  sub_23C0D9430(*v38, 0xD000000000000010, 0x800000023C0ED580, isUniquelyReferenced_nonNull_native, &v57);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  *(v33 + 112) = v57;
  swift_endAccess();
  v55(v29, 1, 1, v53);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v30;
  v40[5] = v39;
  v40[6] = 0xD000000000000010;
  v40[7] = 0x800000023C0ED580;
  sub_23C0DA468(v29, v28);
  LODWORD(v33) = v56(v28, 1, v53);

  if (v33 == 1)
  {
    sub_23C0DAAD8(*(v0 + 408), &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    v41 = *(v0 + 440);
    v42 = *(v0 + 448);
    v43 = *(v0 + 408);
    sub_23C0E9BC0();
    (*(v42 + 8))(v43, v41);
  }

  v45 = v40[2];
  v44 = v40[3];
  swift_unknownObjectRetain();

  if (v45)
  {
    swift_getObjectType();
    v46 = sub_23C0E9B40();
    v48 = v47;
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  sub_23C0DAAD8(*(v0 + 416), &qword_27E1EE890, &qword_23C0EA990);
  v49 = swift_allocObject();
  *(v49 + 16) = &unk_23C0EAF38;
  *(v49 + 24) = v40;
  if (v48 | v46)
  {
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 264) = v46;
    *(v0 + 272) = v48;
  }

  v50 = MEMORY[0x277D84F78];
  swift_task_create();

  v51 = *(MEMORY[0x277D857E0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 544) = v8;
  *v8 = v0;
  v8[1] = sub_23C0D3BDC;
  v9 = v50 + 8;
  v10 = v30;
LABEL_24:

  return MEMORY[0x282200460](v8, v10, v9);
}

uint64_t sub_23C0D3BDC()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 520);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D3CEC, v2, 0);
}

uint64_t sub_23C0D3CEC()
{
  v1 = v0[67];
  v2 = v0[66];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23C0D3D8C, 0, 0);
}

uint64_t sub_23C0D3D8C()
{
  v1 = v0[64];
  v2 = v0[58];

  sub_23C0DAAD8(v2, &qword_27E1EE988, &qword_23C0EAF00);
  v3 = sub_23C0DA34C();
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = sub_23C0D2FE0;
  v6 = v0[61];
  v7 = v0[58];
  v8 = v0[59];

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_23C0D3E58()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 520);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D3F84, v3, 0);
}

uint64_t sub_23C0D3F84()
{
  v1 = v0[69];
  v2 = v0[66];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23C0D3D8C, 0, 0);
}

uint64_t sub_23C0D4028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = sub_23C0E9CB0();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D4120, 0, 0);
}

uint64_t sub_23C0D4120()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x277CB85F8];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v5 = sub_23C0DA34C();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_23C0D4238;
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[14];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_23C0D4238()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_23C0D472C;
  }

  else
  {
    v3 = sub_23C0D434C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C0D4368()
{
  v1 = v0[13];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
LABEL_8:
    v6 = v0[16];
    v7 = v0[13];

    v8 = v0[1];

    return v8();
  }

  v3 = v0[12];
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

LABEL_7:
    sub_23C0DAAD8(v0[13], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v10 = sub_23C0E9830();
  __swift_project_value_buffer(v10, qword_27E1EF4F8);

  v11 = sub_23C0E9820();
  v12 = sub_23C0E9C90();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v0[11] = v14;
    *v13 = 136315138;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v15 = 0xE600000000000000;
        v16 = 0x7070412D6E49;
      }

      else
      {
        v15 = 0xE800000000000000;
        v16 = 0x73676E6974746553;
      }
    }

    else
    {
      v15 = 0xE200000000000000;
      v16 = 17219;
    }

    v17 = sub_23C0D8D20(v16, v15, v0 + 11);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_23C0B2000, v11, v12, "[%s] .AVInputContextCanSetInputGainDidChange received", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEC78E0](v14, -1, -1);
    MEMORY[0x23EEC78E0](v13, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0((v5 + 144), *(v5 + 168));
  v20 = off_284EE0DC0 + *off_284EE0DC0;
  v18 = *(off_284EE0DC0 + 1);
  v19 = swift_task_alloc();
  v0[20] = v19;
  *v19 = v0;
  v19[1] = sub_23C0D47B8;

  return (v20)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
}

uint64_t sub_23C0D472C()
{
  *(v0 + 80) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE998, &qword_23C0EAF08);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_23C0D47B8()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D48B4, 0, 0);
}

uint64_t sub_23C0D48B4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
  *(v0 + 192) = (*(v3 + 48))(v2, v3) & 1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    *(v0 + 176) = sub_23C0E9B90();
    swift_unknownObjectRetain();
    *(v0 + 184) = sub_23C0E9B80();
    v6 = sub_23C0E9B40();

    return MEMORY[0x2822009F8](sub_23C0D4A58, v6, v5);
  }

  else
  {
    v7 = *(v0 + 152);

    sub_23C0DAAD8(*(v0 + 104), &qword_27E1EE988, &qword_23C0EAF00);
    v8 = sub_23C0DA34C();
    v9 = *(MEMORY[0x277D856D0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_23C0D4238;
    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);

    return MEMORY[0x282200308](v12, v13, v8);
  }
}

uint64_t sub_23C0D4A58()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = off_284EE1608;
  type metadata accessor for MicrophoneManager();
  v6(v5, v4);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_23C0D4B78, 0, 0);
}

uint64_t sub_23C0D4B78()
{
  v1 = v0[21];
  v2 = v0[19];
  swift_unknownObjectRelease();

  sub_23C0DAAD8(v0[13], &qword_27E1EE988, &qword_23C0EAF00);
  v3 = sub_23C0DA34C();
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_23C0D4238;
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_23C0D4C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B8, &qword_23C0EAF50);
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9C0, &qword_23C0EAF58);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE988, &qword_23C0EAF00) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = sub_23C0E9CB0();
  v4[20] = v12;
  v13 = *(v12 - 8);
  v4[21] = v13;
  v14 = *(v13 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D4E14, 0, 0);
}

uint64_t sub_23C0D4E14()
{
  v1 = v0[22];
  v2 = v0[12];
  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x277CB8608];
  sub_23C0E9CC0();

  sub_23C0E9CA0();
  swift_beginAccess();
  v5 = sub_23C0DA34C();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_23C0D4F2C;
  v8 = v0[22];
  v9 = v0[19];
  v10 = v0[20];

  return MEMORY[0x282200308](v9, v10, v5);
}

uint64_t sub_23C0D4F2C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_23C0D5434;
  }

  else
  {
    v3 = sub_23C0D5040;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23C0D505C()
{
  v1 = v0[19];
  v2 = sub_23C0E9760();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_8:
    v6 = v0[22];
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[15];

    v10 = v0[1];

    return v10();
  }

  v3 = v0[12];
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (sub_23C0E9C60())
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

LABEL_7:
    sub_23C0DAAD8(v0[19], &qword_27E1EE988, &qword_23C0EAF00);
    goto LABEL_8;
  }

  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v12 = sub_23C0E9830();
  __swift_project_value_buffer(v12, qword_27E1EF4F8);

  v13 = sub_23C0E9820();
  v14 = sub_23C0E9C90();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v0[11] = v16;
    *v15 = 136315138;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v17 = 0xE600000000000000;
        v18 = 0x7070412D6E49;
      }

      else
      {
        v17 = 0xE800000000000000;
        v18 = 0x73676E6974746553;
      }
    }

    else
    {
      v17 = 0xE200000000000000;
      v18 = 17219;
    }

    v19 = sub_23C0D8D20(v18, v17, v0 + 11);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_23C0B2000, v13, v14, "[%s] .AVInputContextInputGainDidChange received", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EEC78E0](v16, -1, -1);
    MEMORY[0x23EEC78E0](v15, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0((v5 + 144), *(v5 + 168));
  v22 = off_284EE0DC0 + *off_284EE0DC0;
  v20 = *(off_284EE0DC0 + 1);
  v21 = swift_task_alloc();
  v0[26] = v21;
  *v21 = v0;
  v21[1] = sub_23C0D54C0;

  return (v22)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
}

uint64_t sub_23C0D5434()
{
  *(v0 + 80) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE998, &qword_23C0EAF08);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_23C0D54C0()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D55BC, 0, 0);
}

uint64_t sub_23C0D55BC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
  *(v0 + 244) = (*(v3 + 56))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = Strong;
  if (Strong)
  {
    *(v0 + 224) = sub_23C0E9B90();
    swift_unknownObjectRetain();
    *(v0 + 232) = sub_23C0E9B80();
    v6 = sub_23C0E9B40();

    return MEMORY[0x2822009F8](sub_23C0D575C, v6, v5);
  }

  else
  {
    v7 = *(v0 + 200);

    sub_23C0DAAD8(*(v0 + 152), &qword_27E1EE988, &qword_23C0EAF00);
    v8 = sub_23C0DA34C();
    v9 = *(MEMORY[0x277D856D0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_23C0D4F2C;
    v11 = *(v0 + 176);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);

    return MEMORY[0x282200308](v12, v13, v8);
  }
}

uint64_t sub_23C0D575C()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);

  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 244);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  (*(v9 + 16))(v6, *(v0 + 216) + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_inputGainContinuation, v8);
  *(v0 + 240) = v3;
  sub_23C0E9BE0();
  swift_unknownObjectRelease();
  (*(v9 + 8))(v6, v8);
  (*(v5 + 8))(v4, v7);

  return MEMORY[0x2822009F8](sub_23C0D58C4, 0, 0);
}

uint64_t sub_23C0D58C4()
{
  v1 = v0[27];
  v2 = v0[25];
  swift_unknownObjectRelease();

  sub_23C0DAAD8(v0[19], &qword_27E1EE988, &qword_23C0EAF00);
  v3 = sub_23C0DA34C();
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_23C0D4F2C;
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_23C0D5998(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 736) = a3;
  *(v3 + 320) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9C8, &qword_23C0EAF90);
  *(v3 + 328) = v4;
  v5 = *(v4 - 8);
  *(v3 + 336) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 344) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9D0, &qword_23C0EAF98);
  *(v3 + 352) = v7;
  v8 = *(v7 - 8);
  *(v3 + 360) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v10 = sub_23C0E9BD0();
  *(v3 + 376) = v10;
  v11 = *(v10 - 8);
  *(v3 + 384) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D5B2C, 0, 0);
}

uint64_t sub_23C0D5B2C()
{
  v21 = v0;
  v1 = v0[40];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[50] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_27E1EE790 != -1)
    {
      swift_once();
    }

    v4 = sub_23C0E9830();
    v0[51] = __swift_project_value_buffer(v4, qword_27E1EF4F8);

    v5 = sub_23C0E9820();
    v6 = sub_23C0E9C90();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315394;
      if (*(v3 + 24))
      {
        if (*(v3 + 24) == 1)
        {
          v9 = 0xE600000000000000;
          v10 = 0x7070412D6E49;
        }

        else
        {
          v9 = 0xE800000000000000;
          v10 = 0x73676E6974746553;
        }
      }

      else
      {
        v9 = 0xE200000000000000;
        v10 = 17219;
      }

      v16 = sub_23C0D8D20(v10, v9, &v20);

      *(v7 + 4) = v16;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_23C0D8D20(0xD000000000000027, 0x800000023C0ED5D0, &v20);
      _os_log_impl(&dword_23C0B2000, v5, v6, "[%s] %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC78E0](v8, -1, -1);
      MEMORY[0x23EEC78E0](v7, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0((v3 + 144), *(v3 + 168));
    v19 = off_284EE0DC0 + *off_284EE0DC0;
    v17 = *(off_284EE0DC0 + 1);
    v18 = swift_task_alloc();
    v0[52] = v18;
    *v18 = v0;
    v18[1] = sub_23C0D5E90;

    return (v19)(v0 + 32, &type metadata for MXAVInputContextFactory, &off_284EE0DB8);
  }

  else
  {
    v11 = v0[49];
    v12 = v0[46];
    v13 = v0[43];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_23C0D5E90()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D5F8C, 0, 0);
}

uint64_t sub_23C0D5F8C()
{
  v1 = v0[35];
  v2 = v0[36];
  __swift_project_boxed_opaque_existential_0(v0 + 32, v1);
  v3 = *(v2 + 8);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[53] = v5;
  *v5 = v0;
  v5[1] = sub_23C0D60B0;

  return v7(v1, v2);
}

uint64_t sub_23C0D60B0(uint64_t a1)
{
  v2 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = a1;

  return MEMORY[0x2822009F8](sub_23C0D61B0, 0, 0);
}

uint64_t sub_23C0D61B0()
{
  v1 = *(v0 + 432);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    sub_23C0DCD84(v1, (v0 + 160));
    v11 = *(v0 + 176);
    v12 = *(v0 + 160);
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);

    *(v0 + 664) = v3;
    *(v0 + 656) = v2;
    *(v0 + 624) = v12;
    *(v0 + 640) = v11;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;

    return MEMORY[0x2822009F8](sub_23C0D6A10, v4, 0);
  }

  else
  {
    v5 = *(v0 + 400);
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    if (*(v5 + 24) == 2)
    {
      v6 = swift_task_alloc();
      *(v0 + 440) = v6;
      *v6 = v0;
      v6[1] = sub_23C0D635C;
      v7 = *(v0 + 400);

      return sub_23C0CBDF4(v0 + 112);
    }

    else
    {
      v8 = swift_task_alloc();
      *(v0 + 496) = v8;
      *v8 = v0;
      v8[1] = sub_23C0D64C4;
      v9 = *(v0 + 400);

      return sub_23C0C7080(v0 + 64);
    }
  }
}

uint64_t sub_23C0D635C()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v5 = *v0;

  v3 = v1[8];
  v1[28] = v1[7];
  v1[29] = v3;
  v1[30] = v1[9];

  return MEMORY[0x2822009F8](sub_23C0D6468, 0, 0);
}

uint64_t sub_23C0D6468()
{
  v1 = *(v0 + 456);
  if (v1)
  {
    v2 = *(v0 + 448);
    v3 = *(v0 + 480);
    *(v0 + 640) = *(v0 + 464);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;
    v5 = sub_23C0D6A10;
  }

  else
  {
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 552) = v4;
    v5 = sub_23C0D6640;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23C0D64C4()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v5 = *v0;

  v3 = v1[5];
  *(v1 + 504) = v1[4];
  *(v1 + 520) = v3;
  *(v1 + 536) = v1[6];

  return MEMORY[0x2822009F8](sub_23C0D65E0, 0, 0);
}

uint64_t sub_23C0D65E0()
{
  v1 = *(v0 + 512);
  if (v1)
  {
    v2 = *(v0 + 504);
    v3 = *(v0 + 536);
    *(v0 + 640) = *(v0 + 520);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;
    v5 = sub_23C0D6A10;
  }

  else
  {
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 552) = v4;
    v5 = sub_23C0D6640;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23C0D6640()
{
  v1 = v0[69];
  v2 = v1[14];
  v0[70] = v2;
  v3 = v1[15];
  v0[71] = v3;
  v0[72] = v1[16];
  v0[73] = v1[17];
  v0[74] = v1[18];
  v0[75] = v1[19];
  sub_23C0B4DE4(v2, v3);

  return MEMORY[0x2822009F8](sub_23C0D66D8, 0, 0);
}

uint64_t sub_23C0D66D8()
{
  v1 = *(v0 + 568);
  if (v1)
  {
    v2 = *(v0 + 560);
    v3 = *(v0 + 592);
    *(v0 + 640) = *(v0 + 576);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;

    return MEMORY[0x2822009F8](sub_23C0D6A10, v4, 0);
  }

  else
  {
    v5 = *(v0 + 392);
    v6 = *(*(v0 + 400) + 16);
    v7 = swift_allocObject();
    *(v0 + 608) = v7;
    swift_weakInit();
    sub_23C0E9BB0();
    v8 = swift_task_alloc();
    *(v0 + 616) = v8;
    *v8 = v0;
    v8[1] = sub_23C0D6864;
    v9 = *(v0 + 392);

    return (sub_23C0E0914)(v0 + 16, 0x6B6361626C6C6166, 0xEF29286574756F52, v9, &unk_23C0EAB30, v7);
  }
}

uint64_t sub_23C0D6864()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 392);
  v4 = *(*v0 + 384);
  v5 = *(*v0 + 376);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23C0D69D8, 0, 0);
}

uint64_t sub_23C0D69D8()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 664) = *(v0 + 56);
  *(v0 + 656) = v1;
  *(v0 + 624) = v3;
  *(v0 + 640) = v2;
  v4 = *(*(v0 + 400) + 104);
  *(v0 + 672) = v4;
  return MEMORY[0x2822009F8](sub_23C0D6A10, v4, 0);
}

uint64_t sub_23C0D6A10()
{
  v1 = v0[84];
  v2 = v1[33];
  v0[85] = v2;
  v3 = v1[34];
  v0[86] = v3;
  v4 = v1[35];
  v0[87] = v1[36];
  v5 = v1[37];
  v0[88] = v1[38];
  sub_23C0B4DE4(v2, v3);

  return MEMORY[0x2822009F8](sub_23C0D6A98, 0, 0);
}

uint64_t sub_23C0D6A98()
{
  v1 = *(v0 + 688);
  if (v1)
  {
    v2 = *(v0 + 704);
    v3 = *(v0 + 696);
    if (*(v0 + 680) == *(v0 + 624) && v1 == *(v0 + 632))
    {
      v8 = *(v0 + 688);

      goto LABEL_14;
    }

    v5 = *(v0 + 688);
    v6 = sub_23C0E9D90();

    if (v6)
    {
      goto LABEL_14;
    }
  }

  else if (!*(v0 + 632))
  {
LABEL_14:
    v9 = *(v0 + 664);
    v10 = *(v0 + 656);
    v11 = *(v0 + 648);
    v12 = *(v0 + 640);
    v13 = *(v0 + 400);
    sub_23C0B4E34(*(v0 + 624), *(v0 + 632));

    v14 = *(v0 + 392);
    v15 = *(v0 + 368);
    v16 = *(v0 + 344);

    v17 = *(v0 + 8);

    return v17();
  }

  if (*(v0 + 736))
  {
    goto LABEL_14;
  }

  v7 = *(*(v0 + 400) + 104);
  *(v0 + 712) = v7;

  return MEMORY[0x2822009F8](sub_23C0D6C14, v7, 0);
}

uint64_t sub_23C0D6C14()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 664);
  v3 = *(v0 + 624);
  v4 = v1[33];
  v5 = v1[34];
  v6 = v1[35];
  v7 = v1[36];
  v8 = v1[37];
  v9 = v1[38];
  v10 = *(v0 + 648);
  *(v1 + 17) = *(v0 + 632);
  *(v1 + 18) = v10;
  v1[33] = v3;
  v1[38] = v2;

  sub_23C0B4E34(v4, v5);

  return MEMORY[0x2822009F8](sub_23C0D6D00, 0, 0);
}

uint64_t sub_23C0D6D00()
{
  v28 = v0;
  v1 = v0[83];
  v2 = v0[81];
  v3 = v0[79];
  v5 = v0[50];
  v4 = v0[51];

  v6 = sub_23C0E9820();
  v7 = sub_23C0E9C90();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[50];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315394;
    v24 = v7;
    v23 = v10;
    if (*(v8 + 24))
    {
      if (*(v8 + 24) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v13 = v0[83];
    v14 = v0[81];
    v15 = v0[80];
    v16 = v0[79];
    v17 = v0[78];
    v18 = sub_23C0D8D20(v12, v11, &v25);

    *(v9 + 4) = v18;
    *(v9 + 12) = 2080;
    v26 = v17;
    v27 = v16;
    swift_bridgeObjectRetain_n();

    MEMORY[0x23EEC6F40](45, 0xE100000000000000);
    MEMORY[0x23EEC6F40](v15, v14);

    v19 = sub_23C0D8D20(v26, v27, &v25);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_23C0B2000, v6, v24, "[%s] attempting to render new picked device: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v23, -1, -1);
    MEMORY[0x23EEC78E0](v9, -1, -1);
  }

  v0[90] = sub_23C0E9B90();
  v0[91] = sub_23C0E9B80();
  v21 = sub_23C0E9B40();

  return MEMORY[0x2822009F8](sub_23C0D6FBC, v21, v20);
}

uint64_t sub_23C0D6FBC()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);

  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 400);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 664);
  if (Strong)
  {
    v6 = *(v0 + 656);
    v15 = *(v0 + 624);
    v16 = *(v0 + 640);
    v8 = *(v0 + 360);
    v7 = *(v0 + 368);
    v9 = *(v0 + 344);
    v17 = *(v0 + 352);
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    (*(v10 + 16))(v9, Strong + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneContinuation, v11);
    *(v0 + 208) = v15;
    *(v0 + 224) = v16;
    *(v0 + 240) = v6;
    *(v0 + 248) = v5;
    sub_23C0E9BE0();
    swift_unknownObjectRelease();
    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v7, v17);
  }

  else
  {
    v12 = *(v0 + 648);
    v13 = *(v0 + 632);
  }

  return MEMORY[0x2822009F8](sub_23C0D7180, 0, 0);
}

uint64_t sub_23C0D7180()
{
  v1 = v0[50];

  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[43];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23C0D7200(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE970, &unk_23C0EB530);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE978, &qword_23C0EAE40);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0D7334, 0, 0);
}

uint64_t sub_23C0D7334()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_23C0D7430;

    return sub_23C0D7E18();
  }

  else
  {
    v5 = v0[12];
    v6 = v0[9];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23C0D7430(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_23C0D7530, 0, 0);
}

uint64_t sub_23C0D7530()
{
  v1 = *(*(v0 + 104) + 104);
  *(v0 + 128) = v1;
  return MEMORY[0x2822009F8](sub_23C0D7554, v1, 0);
}

uint64_t sub_23C0D7554()
{
  *(v0 + 136) = *(*(v0 + 128) + 256);

  return MEMORY[0x2822009F8](sub_23C0D75C8, 0, 0);
}

uint64_t sub_23C0D75C8()
{
  v21 = v0;
  if (v0[17])
  {
    v1 = sub_23C0D8C90(v0[17], v0[15]);

    if (v1)
    {
      v2 = v0[15];
LABEL_8:

      if (qword_27E1EE790 != -1)
      {
        swift_once();
      }

      v4 = v0[13];
      v5 = sub_23C0E9830();
      __swift_project_value_buffer(v5, qword_27E1EF4F8);

      v6 = sub_23C0E9820();
      v7 = sub_23C0E9C90();

      v8 = os_log_type_enabled(v6, v7);
      v9 = v0[13];
      if (v8)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        if (*(v9 + 24))
        {
          if (*(v9 + 24) == 1)
          {
            v12 = 0xE600000000000000;
            v13 = 0x7070412D6E49;
          }

          else
          {
            v12 = 0xE800000000000000;
            v13 = 0x73676E6974746553;
          }
        }

        else
        {
          v12 = 0xE200000000000000;
          v13 = 17219;
        }

        v14 = v0[13];
        v15 = sub_23C0D8D20(v13, v12, &v20);

        *(v10 + 4) = v15;
        _os_log_impl(&dword_23C0B2000, v6, v7, "[%s] availableInputDevices is empty", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x23EEC78E0](v11, -1, -1);
        MEMORY[0x23EEC78E0](v10, -1, -1);
      }

      else
      {
      }

      v16 = v0[12];
      v17 = v0[9];

      v18 = v0[1];

      return v18();
    }
  }

  if (!*(v0[15] + 16))
  {
    goto LABEL_8;
  }

  v3 = *(v0[13] + 104);
  v0[18] = v3;

  return MEMORY[0x2822009F8](sub_23C0D784C, v3, 0);
}

uint64_t sub_23C0D784C()
{
  v1 = *(v0 + 144);
  sub_23C0BECB0();

  return MEMORY[0x2822009F8](sub_23C0D78B4, 0, 0);
}

uint64_t sub_23C0D78B4()
{
  v1 = *(*(v0 + 104) + 104);
  *(v0 + 152) = v1;

  return MEMORY[0x2822009F8](sub_23C0D792C, v1, 0);
}

uint64_t sub_23C0D792C()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 256);
  *(v1 + 256) = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_23C0D79B0, 0, 0);
}

uint64_t sub_23C0D79B0()
{
  v20 = v0;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[13];
  v3 = sub_23C0E9830();
  __swift_project_value_buffer(v3, qword_27E1EF4F8);

  v4 = sub_23C0E9820();
  v5 = sub_23C0E9C90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x7070412D6E49;
      }

      else
      {
        v9 = 0xE800000000000000;
        v10 = 0x73676E6974746553;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      v10 = 17219;
    }

    v11 = v0[15];
    v12 = sub_23C0D8D20(v10, v9, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = MEMORY[0x23EEC7000](v11, &type metadata for InputPickerMicrophone);
    v15 = sub_23C0D8D20(v13, v14, &v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_23C0B2000, v4, v5, "[%s] discoverySession or fakeDiscoverySession new routes: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC78E0](v8, -1, -1);
    MEMORY[0x23EEC78E0](v7, -1, -1);
  }

  v0[20] = sub_23C0E9B90();
  v0[21] = sub_23C0E9B80();
  v17 = sub_23C0E9B40();

  return MEMORY[0x2822009F8](sub_23C0D7C1C, v17, v16);
}

uint64_t sub_23C0D7C1C()
{
  v2 = v0[20];
  v1 = v0[21];

  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = v0[13];
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v0[15];
  if (Strong)
  {
    v7 = v0[11];
    v6 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[7];
    v11 = v0[8];
    (*(v11 + 16))(v9, Strong + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesContinuation, v10);
    v0[5] = v5;
    sub_23C0E9BE0();
    swift_unknownObjectRelease();
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v12 = v0[15];
  }

  return MEMORY[0x2822009F8](sub_23C0D7DA4, 0, 0);
}

uint64_t sub_23C0D7DA4()
{
  v1 = v0[13];

  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C0D7E38()
{
  v1 = *(v0[14] + 128);
  v0[15] = v1;
  v2 = *(v1 + 16);
  v3 = *(MEMORY[0x277D857E0] + 4);

  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  v0[17] = v5;
  *v4 = v0;
  v4[1] = sub_23C0D7F0C;

  return MEMORY[0x282200460](v0 + 10, v2, v5);
}

uint64_t sub_23C0D7F0C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D8008, 0, 0);
}

uint64_t sub_23C0D8008()
{
  v62 = v0;
  v1 = v0;
  v2 = v0[15];

  v3 = v0[10];
  v4 = [v3 availableInputDevices];

  v1[18] = sub_23C0D9D08(0, &qword_27E1EE980, 0x277CB8688);
  v5 = sub_23C0E9B20();

  if (v5 >> 62)
  {
    v6 = sub_23C0E9D40();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v61 = MEMORY[0x277D84F90];
      sub_23C0D92F0(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      v7 = 0;
      v8 = v61;
      v56 = v1;
      v57 = v5 & 0xC000000000000001;
      v58 = v6;
      v59 = v5;
      while (1)
      {
        if (v57)
        {
          v9 = MEMORY[0x23EEC71F0](v7, v5);
        }

        else
        {
          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = [v9 deviceID];
        if (v11)
        {
          v12 = v11;
          v13 = sub_23C0E9A10();
          v15 = v14;

          v1[8] = v13;
          v1[9] = v15;
          v16 = sub_23C0E9AF0();
        }

        else
        {
          v1[11] = v10;
          v16 = sub_23C0E9A30();
        }

        v60 = v16;
        v18 = v17;
        v19 = [v10 deviceName];
        if (v19)
        {
          v20 = v19;
          v21 = sub_23C0E9A10();
          v23 = v22;

          v1[6] = v21;
          v1[7] = v23;
          v24 = sub_23C0E9AF0();
          v26 = v25;
        }

        else
        {
          v24 = 0;
          v26 = 0xE000000000000000;
        }

        v27 = sub_23C0DB4B4(v10);
        if ((v27 & 0x100000000) != 0)
        {
          goto LABEL_19;
        }

        v28 = v27;
        if (!CBProductIDIsAppleHeadphone(v27))
        {
          goto LABEL_19;
        }

        v29 = [objc_opt_self() productInfoWithProductID_];
        v30 = [v29 sfSymbolNameMain];
        if (!v30)
        {
          break;
        }

        v31 = v30;
        v32 = sub_23C0E9A10();
        v34 = v33;

        v1 = v56;
LABEL_26:
        v61 = v8;
        v37 = *(v8 + 16);
        v36 = *(v8 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_23C0D92F0((v36 > 1), v37 + 1, 1);
          v8 = v61;
        }

        ++v7;
        *(v8 + 16) = v37 + 1;
        v38 = (v8 + 48 * v37);
        v38[4] = v60;
        v38[5] = v18;
        v38[6] = v24;
        v38[7] = v26;
        v38[8] = v32;
        v38[9] = v34;
        v5 = v59;
        if (v58 == v7)
        {

          if (*(v8 + 16))
          {
            goto LABEL_30;
          }

LABEL_35:

          if (qword_27E1EE790 == -1)
          {
LABEL_36:
            v41 = v1[14];
            v42 = sub_23C0E9830();
            __swift_project_value_buffer(v42, qword_27E1EF4F8);

            v43 = sub_23C0E9820();
            v44 = sub_23C0E9C90();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = v1[14];
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v61 = v47;
              *v46 = 136315138;
              if (*(v45 + 24))
              {
                if (*(v45 + 24) == 1)
                {
                  v48 = 0xE600000000000000;
                  v49 = 0x7070412D6E49;
                }

                else
                {
                  v48 = 0xE800000000000000;
                  v49 = 0x73676E6974746553;
                }
              }

              else
              {
                v48 = 0xE200000000000000;
                v49 = 17219;
              }

              v50 = sub_23C0D8D20(v49, v48, &v61);

              *(v46 + 4) = v50;
              _os_log_impl(&dword_23C0B2000, v43, v44, "[%s] looking in to fakeSession routes", v46, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v47);
              MEMORY[0x23EEC78E0](v47, -1, -1);
              MEMORY[0x23EEC78E0](v46, -1, -1);
            }

            v51 = *(v1[14] + 136);
            v1[19] = v51;
            v52 = *(v51 + 16);
            v53 = *(MEMORY[0x277D857E0] + 4);

            v54 = swift_task_alloc();
            v1[20] = v54;
            *v54 = v1;
            v54[1] = sub_23C0D8604;
            v55 = v1[17];

            return MEMORY[0x282200460](v1 + 12, v52, v55);
          }

LABEL_47:
          swift_once();
          goto LABEL_36;
        }
      }

      v1 = v56;
LABEL_19:
      v35 = [v10 deviceType];

      if (v35)
      {
        if (v35 == 3)
        {
          v32 = 0x6F632E656C626163;
          v34 = 0xED00006C61697861;
        }

        else if (v35 == 1)
        {
          v34 = 0xE700000000000000;
          v32 = 0x6E692E656E696CLL;
        }

        else
        {
          v32 = 0x6F68706F7263696DLL;
          v34 = 0xEF6C6C69662E656ELL;
        }
      }

      else
      {
        v34 = 0xE700000000000000;
        v32 = 0x73647562726165;
      }

      goto LABEL_26;
    }
  }

  v8 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_35;
  }

LABEL_30:
  v39 = v1[1];

  return v39(v8);
}

uint64_t sub_23C0D8604()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D8700, 0, 0);
}

char *sub_23C0D8700()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[12];
  v4 = [v3 availableInputDevices];

  v5 = sub_23C0E9B20();
  if (v5 >> 62)
  {
    v6 = sub_23C0E9D40();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_31:

    v9 = MEMORY[0x277D84F90];
LABEL_32:
    v39 = v0[1];

    return v39(v9);
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_31;
  }

LABEL_3:
  v45 = MEMORY[0x277D84F90];
  result = sub_23C0D92F0(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v45;
    v40 = v5;
    v41 = v5 & 0xC000000000000001;
    v42 = v6;
    while (1)
    {
      if (v41)
      {
        v10 = MEMORY[0x23EEC71F0](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 deviceID];
      if (v12)
      {
        v13 = v12;
        v14 = sub_23C0E9A10();
        v16 = v15;

        v0[4] = v14;
        v0[5] = v16;
        v17 = sub_23C0E9AF0();
      }

      else
      {
        v0[13] = v11;
        v17 = sub_23C0E9A30();
      }

      v43 = v18;
      v44 = v17;
      v19 = [v11 deviceName];
      if (v19)
      {
        v20 = v19;
        v21 = sub_23C0E9A10();
        v23 = v22;

        v0[2] = v21;
        v0[3] = v23;
        v24 = sub_23C0E9AF0();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = sub_23C0DB4B4(v11);
      if ((v27 & 0x100000000) != 0)
      {
        goto LABEL_19;
      }

      v28 = v27;
      if (!CBProductIDIsAppleHeadphone(v27))
      {
        goto LABEL_19;
      }

      v29 = [objc_opt_self() productInfoWithProductID_];
      v30 = [v29 sfSymbolNameMain];
      if (!v30)
      {
        break;
      }

      v31 = v30;
      v32 = sub_23C0E9A10();
      v34 = v33;

      v5 = v40;
LABEL_26:
      v37 = *(v45 + 16);
      v36 = *(v45 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_23C0D92F0((v36 > 1), v37 + 1, 1);
      }

      ++v8;
      *(v45 + 16) = v37 + 1;
      v38 = (v45 + 48 * v37);
      v38[4] = v44;
      v38[5] = v43;
      v38[6] = v24;
      v38[7] = v26;
      v38[8] = v32;
      v38[9] = v34;
      if (v42 == v8)
      {

        goto LABEL_32;
      }
    }

    v5 = v40;
LABEL_19:
    v35 = [v11 deviceType];

    if (v35)
    {
      if (v35 == 3)
      {
        v32 = 0x6F632E656C626163;
        v34 = 0xED00006C61697861;
      }

      else if (v35 == 1)
      {
        v34 = 0xE700000000000000;
        v32 = 0x6E692E656E696CLL;
      }

      else
      {
        v32 = 0x6F68706F7263696DLL;
        v34 = 0xEF6C6C69662E656ELL;
      }
    }

    else
    {
      v34 = 0xE700000000000000;
      v32 = 0x73647562726165;
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C0D8AC4()
{
  v1 = v0;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v2 = sub_23C0E9830();
  __swift_project_value_buffer(v2, qword_27E1EF4F8);
  v3 = sub_23C0E9820();
  v4 = sub_23C0E9C90();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23C0B2000, v3, v4, "[deinit] AVRoutingInputController deinit", v5, 2u);
    MEMORY[0x23EEC78E0](v5, -1, -1);
  }

  v6 = *(v1 + 16);

  sub_23C0D92C8(v1 + 32);

  v7 = *(v1 + 56);

  v8 = *(v1 + 64);

  v9 = *(v1 + 72);

  v10 = *(v1 + 80);

  v11 = *(v1 + 88);

  v12 = *(v1 + 96);

  v13 = *(v1 + 104);

  v14 = *(v1 + 120);

  v15 = *(v1 + 128);

  v16 = *(v1 + 136);

  __swift_destroy_boxed_opaque_existential_0((v1 + 144));
  return v1;
}

uint64_t sub_23C0D8C14()
{
  sub_23C0D8AC4();

  return MEMORY[0x2821FE8D8](v0, 184, 7);
}

uint64_t sub_23C0D8C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23C0E9D90() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_23C0D8D20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23C0D8DEC(v11, 0, 0, 1, a1, a2);
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
    sub_23C0B5EBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23C0D8DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23C0D8EF8(a5, a6);
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
    result = sub_23C0E9D30();
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

uint64_t sub_23C0D8EF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_23C0D8F44(a1, a2);
  sub_23C0D9074(&unk_284EE09E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23C0D8F44(uint64_t a1, unint64_t a2)
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

  v6 = sub_23C0D9160(v5, 0);
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

  result = sub_23C0E9D30();
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
        v10 = sub_23C0E9A80();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23C0D9160(v10, 0);
        result = sub_23C0E9D10();
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

uint64_t sub_23C0D9074(uint64_t result)
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

  result = sub_23C0D91D4(result, v12, 1, v3);
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

void *sub_23C0D9160(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE968, &qword_23C0EADE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23C0D91D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE968, &qword_23C0EADE8);
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

char *sub_23C0D92F0(char *a1, int64_t a2, char a3)
{
  result = sub_23C0D9310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23C0D9310(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE8B8, &qword_23C0EAE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23C0D9430(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v32 = v10;
  v33 = &off_284EE15C0;
  *&v31 = a1;
  v11 = *a5;
  v13 = sub_23C0E6074(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_23C0DA5C8(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_23C0E6868();
    goto LABEL_7;
  }

  sub_23C0E63E8(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_23C0E6074(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_23C0E9DA0();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_23C0D9634(v13, a2, a3, *v28, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v31);
}

uint64_t sub_23C0D9634(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v17 = &off_284EE15C0;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_23C0DA5C8(&v15, a5[7] + 40 * a1);
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

uint64_t sub_23C0D96F0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23C0D9714, 0, 0);
}

uint64_t sub_23C0D9714()
{
  v1 = *(v0[6] + 128);
  v0[7] = v1;
  v2 = *(v1 + 16);
  v3 = *(MEMORY[0x277D857E0] + 4);

  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  v0[9] = v5;
  *v4 = v0;
  v4[1] = sub_23C0D97E8;

  return MEMORY[0x282200460](v0 + 2, v2, v5);
}

uint64_t sub_23C0D97E8()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D98E4, 0, 0);
}

uint64_t sub_23C0D98E4()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[2];
  v0[10] = v4;
  v5 = sub_23C0DC604(v4, v3, v2);
  if (v5)
  {
    v6 = v5;

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v9 = *(v0[6] + 136);
    v0[11] = v9;
    v10 = *(v9 + 16);
    v11 = *(MEMORY[0x277D857E0] + 4);

    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_23C0D9A0C;
    v13 = v0[9];

    return MEMORY[0x282200460](v0 + 3, v10, v13);
  }
}

uint64_t sub_23C0D9A0C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0D9B08, 0, 0);
}

uint64_t sub_23C0D9B08()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[4];
  v4 = v0[5];

  v5 = v0[3];
  v6 = sub_23C0DC604(v5, v3, v4);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_23C0D9B98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0D9BD0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0CB700(a1, v1);
}

uint64_t sub_23C0D9C6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0D7200(a1, v1);
}

uint64_t sub_23C0D9D08(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23C0D9D78(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0CC0FC(a1, v1);
}

uint64_t sub_23C0D9E14(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0C138C(a1, v1);
}

uint64_t sub_23C0D9EB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C0B7B5C;

  return sub_23C0CE990(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_67Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23C0D9FBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C0B7B5C;

  return sub_23C0D008C(a1, v4, v5, v7, v6);
}

uint64_t sub_23C0DA07C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0D1814(a1, v4, v5, v6);
}

uint64_t sub_23C0DA130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0D4028(a1, v4, v5, v6);
}

uint64_t sub_23C0DA1E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0D4C4C(a1, v4, v5, v6);
}

uint64_t sub_23C0DA298(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0D2D18(a1, v4, v5, v6);
}

unint64_t sub_23C0DA34C()
{
  result = qword_27E1EE990;
  if (!qword_27E1EE990)
  {
    sub_23C0E9CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE990);
  }

  return result;
}

uint64_t sub_23C0DA3A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C0B7B5C;

  return sub_23C0E2318(a1, v4, v5, v7);
}

uint64_t sub_23C0DA468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C0DA4D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C0DA510(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23C0B7B5C;

  return sub_23C0E5E84(a1, v5);
}

uint64_t sub_23C0DA5C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23C0DA5E4(uint64_t a1)
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
  v10[1] = sub_23C0B7B5C;

  return sub_23C0E2E4C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23C0DA6B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23C0B7A50;

  return sub_23C0E5E84(a1, v5);
}

uint64_t sub_23C0DA770()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23C0DA7A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23C0B7B5C;

  return sub_23C0D5998(a1, v4, v5);
}

uint64_t sub_23C0DA858(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0C9954(a1, v1);
}

uint64_t objectdestroy_106Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_117Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23C0DA984(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C0B7A50;

  return sub_23C0C9954(a1, v1);
}

uint64_t sub_23C0DAA24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0CE758(a1, v4, v5, v6);
}

uint64_t sub_23C0DAAD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23C0DAB38()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23C0B7B5C;

  return sub_23C0CCEF0(v0);
}

uint64_t sub_23C0DABC8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23C0B7B5C;

  return sub_23C0CDA84(v0);
}

uint64_t sub_23C0DAC58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23C0B7B5C;

  return sub_23C0C9514(a1, v5);
}

uint64_t sub_23C0DAD10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0DAD48()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23C0B7B5C;

  return sub_23C0CE2F0(v2);
}

uint64_t sub_23C0DADE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0C7BF4(v2, v3);
}

uint64_t objectdestroy_308Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C0DAEB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23C0B7B5C;

  return sub_23C0C8B34(v2, v3);
}

uint64_t sub_23C0DAF50()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23C0B7B5C;

  return sub_23C0C95FC(v2);
}

uint64_t getEnumTagSinglePayload for InputPickerContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InputPickerContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23C0DB200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23C0DB248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23C0DB2A8()
{
  result = qword_27E1EE9F8;
  if (!qword_27E1EE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EE9F8);
  }

  return result;
}

uint64_t sub_23C0DB2FC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23C0DB308(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23C0E9D90();
  }
}

uint64_t sub_23C0DB338()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_23C0E9DC0();
  sub_23C0E9A60();
  sub_23C0E9A60();
  sub_23C0E9A60();
  return sub_23C0E9DE0();
}

uint64_t sub_23C0DB3BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_23C0E9A60();
  sub_23C0E9A60();

  return sub_23C0E9A60();
}

uint64_t sub_23C0DB428()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_23C0E9DC0();
  sub_23C0E9A60();
  sub_23C0E9A60();
  sub_23C0E9A60();
  return sub_23C0E9DE0();
}

unint64_t sub_23C0DB4B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEA08, &qword_23C0EB330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEA10, &qword_23C0EB338);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEA18, &qword_23C0EB340);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = [a1 modelID];
  if (!v19)
  {
    goto LABEL_4;
  }

  v33 = v10;
  v35 = v6;
  v36 = v7;
  v20 = v19;
  sub_23C0E9A10();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEA20, &qword_23C0EB348);
  sub_23C0E97F0();
  sub_23C0E9B00();

  sub_23C0DCEB4();
  v34 = v18;
  sub_23C0E97E0();
  sub_23C0E9800();
  v21 = *(v12 + 8);
  v21(v16, v11);

  v23 = v35;
  v22 = v36;
  if ((*(v36 + 48))(v5, 1, v35) == 1)
  {
    v21(v34, v11);
    sub_23C0DCF18(v5);
LABEL_4:
    v24 = 0;
    LOBYTE(v25) = 1;
    return v24 | ((v25 & 1) << 32);
  }

  (*(v22 + 32))(v33, v5, v23);
  swift_getKeyPath();
  sub_23C0E9810();

  v27 = v37;
  v28 = v38;
  v29 = v40;
  if (!((v38 ^ v37) >> 14))
  {
    (*(v36 + 8))(v33, v23);
    v21(v34, v11);

    goto LABEL_4;
  }

  v30 = v39;
  v31 = sub_23C0DC53C(v37, v38, v39, v40, 10);
  if ((v31 & 0x10000000000) != 0)
  {
    v31 = sub_23C0DBB40(v27, v28, v30, v29, 10);
  }

  (*(v36 + 8))(v33, v23);
  v21(v34, v11);

  v25 = (v31 & 0x100000000uLL) >> 32;
  v24 = v31;
  if ((v31 & 0x100000000) != 0)
  {
    v24 = 0;
  }

  return v24 | ((v25 & 1) << 32);
}

uint64_t sub_23C0DB970()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x23EEC6F40](45, 0xE100000000000000);
  MEMORY[0x23EEC6F40](v1, v2);
  return v4;
}

uint64_t sub_23C0DB9E4()
{
  v1 = *v0;
  sub_23C0E9DC0();
  MEMORY[0x23EEC72A0](v1);
  return sub_23C0E9DE0();
}

uint64_t sub_23C0DBA58()
{
  v1 = *v0;
  sub_23C0E9DC0();
  MEMORY[0x23EEC72A0](v1);
  return sub_23C0E9DE0();
}

uint64_t sub_23C0DBA9C()
{
  v1 = 0x7070412D6E49;
  if (*v0 != 1)
  {
    v1 = 0x73676E6974746553;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 17219;
  }
}

unint64_t sub_23C0DBAEC()
{
  result = qword_27E1EEA00;
  if (!qword_27E1EEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EEA00);
  }

  return result;
}

unsigned __int8 *sub_23C0DBB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_23C0DCF80();

  result = sub_23C0E9AF0();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_23C0DC0C8();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_23C0E9D30();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
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

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_23C0DC0C8()
{
  v0 = sub_23C0E9B00();
  v4 = sub_23C0DC148(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_23C0DC148(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_23C0E9A50();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_23C0E9CF0();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_23C0D9160(v9, 0);
  v12 = sub_23C0DC2A0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_23C0E9A50();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_23C0E9D30();
LABEL_4:

  return sub_23C0E9A50();
}

unint64_t sub_23C0DC2A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_23C0DC4C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_23C0E9AC0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_23C0E9D30();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_23C0DC4C0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_23C0E9A90();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_23C0DC4C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23C0E9AD0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23EEC6F70](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_23C0DC53C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_23C0E9D30();
  }

  result = sub_23C0DC7DC(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

void *sub_23C0DC604(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 availableInputDevices];
  sub_23C0DCFD4();
  v5 = sub_23C0E9B20();

  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C0E9D40())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EEC71F0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 deviceID];
      if (v12)
      {
        v13 = v12;
        sub_23C0E9A10();

        if (sub_23C0E9AF0() == a2 && v14 == a3)
        {

          return v10;
        }

        v8 = sub_23C0E9D90();

        if (v8)
        {

          return v10;
        }
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return 0;
}

uint64_t sub_23C0DC7DC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_23C0DC4C0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_23C0E9AB0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_23C0DC4C0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_23C0DC4C0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_23C0E9AB0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
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

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_23C0DCC48(void *a1)
{
  v2 = sub_23C0DB4B4(a1);
  if ((v2 & 0x100000000) == 0)
  {
    v3 = v2;
    if (CBProductIDIsAppleHeadphone(v2))
    {
      v4 = [objc_opt_self() productInfoWithProductID_];
      v5 = [v4 sfSymbolNameMain];
      if (v5)
      {
        v6 = v5;
        v7 = sub_23C0E9A10();

        return v7;
      }
    }
  }

  v9 = [a1 deviceType];
  if (!v9)
  {
    return 0x73647562726165;
  }

  v10 = 0x6F68706F7263696DLL;
  if (v9 == 1)
  {
    v10 = 0x6E692E656E696CLL;
  }

  if (v9 == 3)
  {
    return 0x6F632E656C626163;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_23C0DCD84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 deviceID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_23C0E9A10();
    v8 = v7;

    v20 = v6;
    v21 = v8;
    v9 = sub_23C0E9AF0();
  }

  else
  {
    v20 = a1;
    v9 = sub_23C0E9A30();
  }

  v11 = v9;
  v12 = v10;
  v13 = [a1 deviceName];
  if (v13)
  {
    v14 = v13;
    sub_23C0E9A10();

    v15 = sub_23C0E9AF0();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  result = sub_23C0DCC48(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v15;
  a2[3] = v17;
  a2[4] = result;
  a2[5] = v19;
  return result;
}

unint64_t sub_23C0DCEB4()
{
  result = qword_27E1EEA28;
  if (!qword_27E1EEA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EEA18, &qword_23C0EB340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EEA28);
  }

  return result;
}

uint64_t sub_23C0DCF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEA08, &qword_23C0EB330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23C0DCF80()
{
  result = qword_27E1EEA30;
  if (!qword_27E1EEA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1EEA30);
  }

  return result;
}

unint64_t sub_23C0DCFD4()
{
  result = qword_27E1EE980;
  if (!qword_27E1EE980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1EE980);
  }

  return result;
}

id sub_23C0DD020()
{
  v0 = sub_23C0E9830();
  __swift_allocate_value_buffer(v0, qword_27E1EF4F8);
  __swift_project_value_buffer(v0, qword_27E1EF4F8);
  result = _AVLog();
  if (result)
  {
    return sub_23C0E9840();
  }

  __break(1u);
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

uint64_t sub_23C0DD0FC(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84A98];
  v6 = MEMORY[0x277D84AC0];
  v7 = sub_23C0E9DF0();
  v2[2] = v7;
  v8 = *(v7 - 8);
  v2[3] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v2[4] = v10;
  v11 = *(MEMORY[0x277D857D0] + 4);
  v12 = swift_task_alloc();
  v2[5] = v12;
  *v12 = v2;
  v12[1] = sub_23C0DD234;

  return MEMORY[0x282200440](v10, a1, a2, v5, v6);
}

uint64_t sub_23C0DD234()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_23C0DD38C, 0, 0);
}

uint64_t sub_23C0DD38C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C0DD3EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_23C0DD0E8();
}

uint64_t sub_23C0DD3FC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a1 + 16);
  *v5 = v2;
  v5[1] = sub_23C0B7A50;

  return sub_23C0DD0FC(v4, v6);
}

uint64_t sub_23C0DD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  swift_beginAccess();
  v15 = *(v5 + 112);
  if (*(v15 + 16))
  {

    v16 = sub_23C0E6074(a1, a2);
    if (v17)
    {
      sub_23C0B7660(*(v15 + 56) + 40 * v16, &v27);

      return sub_23C0DE354(&v27);
    }
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_23C0DE354(&v27);
  v19 = sub_23C0E9BD0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v14, a3, v19);
  v21 = *(v20 + 56);
  v21(v14, 0, 1, v19);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a4;
  v22[5] = a5;

  v23 = sub_23C0DE678(0, 0, v14, &unk_23C0EB400, v22);
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v29 = &off_284EE15C0;
  *&v27 = v23;
  swift_beginAccess();

  sub_23C0E2190(&v27, a1, a2);
  swift_endAccess();
  v21(v14, 1, 1, v19);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v24;
  v25[6] = a1;
  v25[7] = a2;

  sub_23C0DE678(0, 0, v14, &unk_23C0EB418, v25);
}

uint64_t sub_23C0DD780(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23C0B7B5C;

  return v8();
}

uint64_t sub_23C0DD868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = *(MEMORY[0x277D857D0] + 4);
  v10 = swift_task_alloc();
  v7[16] = v10;
  *v10 = v7;
  v10[1] = sub_23C0DD92C;
  v11 = MEMORY[0x277D84A98];
  v12 = MEMORY[0x277D84AC0];
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v7 + 18, a4, v13, v11, v12);
}

uint64_t sub_23C0DD92C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0DDA28, 0, 0);
}

uint64_t sub_23C0DDA28()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23C0DDAE0, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_23C0DDAE0()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  swift_beginAccess();
  sub_23C0E633C(v3, v2, (v0 + 2));
  sub_23C0DE354((v0 + 2));
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C0DDBA8()
{
  v20 = v0;
  v1 = v0[15];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_23C0DE150(*(v2 + 16), 0);
    v17 = sub_23C0DE1E0(&v19, (v4 + 4), v3, v2);

    result = sub_23C0DE34C();
    if (v17 != v3)
    {
      __break(1u);
      return result;
    }

    v6 = *(v1 + 112);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v0[16] = v4;
  *(v1 + 112) = MEMORY[0x277D84F98];

  v7 = v4[2];
  v0[17] = v7;
  if (v7)
  {
    v8 = (v4 + 4);
    do
    {
      sub_23C0B7660(v8, (v0 + 2));
      v9 = v0[5];
      v10 = v0[6];
      __swift_project_boxed_opaque_existential_0(v0 + 2, v9);
      (*(v10 + 24))(v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v8 += 40;
      --v7;
    }

    while (v7);
    v0[18] = 0;
    sub_23C0B7660(v0[16] + 32, (v0 + 7));
    v11 = v0[10];
    v12 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v11);
    v13 = *(v12 + 32);
    v18 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[19] = v15;
    *v15 = v0;
    v15[1] = sub_23C0DDE50;

    return v18(v11, v12);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_23C0DDE50()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 120);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 56));

  return MEMORY[0x2822009F8](sub_23C0DDF68, v3, 0);
}

uint64_t sub_23C0DDF68()
{
  v1 = v0[18] + 1;
  if (v1 == v0[17])
  {
    v2 = v0[16];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[18] = v1;
    sub_23C0B7660(v0[16] + 40 * v1 + 32, (v0 + 7));
    v5 = v0[10];
    v6 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v5);
    v7 = *(v6 + 32);
    v10 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_23C0DDE50;

    return v10(v5, v6);
  }
}

uint64_t sub_23C0DE0F4()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_23C0DE150(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1EEA38, &unk_23C0EB3E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_23C0DE1E0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_23C0B7660(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_23C0DA5C8(v20, v21);
      sub_23C0DA5C8(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23C0DE354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A0, &qword_23C0EB3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C0DE3BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23C0DE3FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C0B7B5C;

  return sub_23C0DD780(a1, v4, v5, v7);
}

uint64_t sub_23C0DE4BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0DE4F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23C0DE544(uint64_t a1)
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
  v10[1] = sub_23C0B7A50;

  return sub_23C0DD868(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23C0DE618()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23C0DE678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23C0E902C(a3, v26 - v10, &qword_27E1EE890, &qword_23C0EA990);
  v12 = sub_23C0E9BD0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C0DAAD8(v11, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23C0E9B40();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23C0E9A40() + 32;
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

      sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);

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

  sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);
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

uint64_t sub_23C0DE978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23C0E902C(a3, v27 - v11, &qword_27E1EE890, &qword_23C0EA990);
  v13 = sub_23C0E9BD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23C0DAAD8(v12, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23C0E9B40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23C0E9A40() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB60, &qword_23C0EB5E8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);

      return v24;
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

  sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB60, &qword_23C0EB5E8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23C0DEC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23C0E902C(a3, v27 - v11, &qword_27E1EE890, &qword_23C0EA990);
  v13 = sub_23C0E9BD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23C0DAAD8(v12, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23C0E9B40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23C0E9A40() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);

      return v24;
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

  sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23C0DEFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23C0E902C(a3, v27 - v11, &qword_27E1EE890, &qword_23C0EA990);
  v13 = sub_23C0E9BD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23C0DAAD8(v12, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23C0E9B40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23C0E9A40() + 32;
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

      sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);

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

  sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);
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

uint64_t sub_23C0DF298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23C0E902C(a3, v27 - v11, &qword_27E1EE890, &qword_23C0EA990);
  v13 = sub_23C0E9BD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23C0DAAD8(v12, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23C0E9B40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23C0E9A40() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);

      return v24;
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

  sub_23C0DAAD8(a3, &qword_27E1EE890, &qword_23C0EA990);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23C0DF5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23C0E902C(a3, v27 - v11, &qword_27E1EE890, &qword_23C0EA990);
  v13 = sub_23C0E9BD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23C0DAAD8(v12, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23C0E9B40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23C0E9A40() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_23C0D9D08(0, &qword_27E1EE950, 0x277CB8678);

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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_23C0D9D08(0, &qword_27E1EE950, 0x277CB8678);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23C0DF89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23C0E902C(a3, v27 - v11, &qword_27E1EE890, &qword_23C0EA990);
  v13 = sub_23C0E9BD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23C0DAAD8(v12, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23C0E9B40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23C0E9A40() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);

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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_23C0D9D08(0, &qword_27E1EE958, 0x277CB8690);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23C0DFB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23C0E902C(a3, v27 - v11, &qword_27E1EE890, &qword_23C0EA990);
  v13 = sub_23C0E9BD0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23C0DAAD8(v12, &qword_27E1EE890, &qword_23C0EA990);
  }

  else
  {
    sub_23C0E9BC0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23C0E9B40();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23C0E9A40() + 32;
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

uint64_t sub_23C0DFE4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  v4 = *(MEMORY[0x277D857D0] + 4);
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_23C0DFF08;
  v6 = MEMORY[0x277D84A98];
  v7 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v2 + 16, a2, &type metadata for InputPickerMicrophone, v6, v7);
}

uint64_t sub_23C0DFF08()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E0004, 0, 0);
}

uint64_t sub_23C0E0004()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v2[3] = &type metadata for InputPickerMicrophone;
    v9 = swift_allocObject();
    *v2 = v9;
    v9[2] = v8;
    v9[3] = v7;
    v9[4] = v6;
    v9[5] = v5;
    v9[6] = v3;
    v9[7] = v4;

    sub_23C0E839C(v8, v7, v6, v5, v3, v4, 0);
  }

  *(*(v0 + 72) + 32) = v1;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23C0E00FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15;
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0E01A0, v5, 0);
}

uint64_t sub_23C0E01A0()
{
  v34 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[23];
    v3 = v0[24];
    v5 = *(v1 + 112);

    v6 = sub_23C0E6074(v4, v3);
    if (v7)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_23C0B7660((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB78, &qword_23C0EB668);
      if (swift_dynamicCast())
      {
        v8 = v0[22];
        v0[32] = v8;
        v9 = *(MEMORY[0x277D857E0] + 4);

        v10 = swift_task_alloc();
        v0[33] = v10;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
        *v10 = v0;
        v10[1] = sub_23C0E0770;
        v12 = v0 + 21;
        v13 = v8;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  v14 = v0[29];
  v15 = v0[27];
  v29 = v0[26];
  v30 = v0[28];
  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[23];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  swift_beginAccess();

  sub_23C0E2190(&v31, v18, v16);
  swift_endAccess();
  v19 = sub_23C0E9BD0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v14, v17, v19);
  v21 = *(v20 + 56);
  v21(v14, 0, 1, v19);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v29;
  v22[5] = v15;

  v23 = sub_23C0DEC8C(0, 0, v14, &unk_23C0EB660, v22);
  v0[30] = v23;
  *(&v32 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB78, &qword_23C0EB668);
  v33 = &off_284EE15C0;
  *&v31 = v23;
  swift_beginAccess();
  swift_retain_n();

  sub_23C0E2190(&v31, v18, v16);
  swift_endAccess();
  v21(v14, 1, 1, v19);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v24;
  v25[6] = v18;
  v25[7] = v16;

  sub_23C0DE678(0, 0, v14, &unk_23C0EB678, v25);

  v26 = *(MEMORY[0x277D857E0] + 4);
  v27 = swift_task_alloc();
  v0[31] = v27;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
  *v27 = v0;
  v27[1] = sub_23C0E05EC;
  v12 = v0 + 21;
  v13 = v23;
LABEL_8:

  return MEMORY[0x282200460](v12, v13, v11);
}

uint64_t sub_23C0E05EC()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E06FC, v2, 0);
}

uint64_t sub_23C0E06FC()
{
  v1 = v0[30];

  v2 = v0[29];
  v3 = v0[21];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_23C0E0770()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E089C, v3, 0);
}

uint64_t sub_23C0E089C()
{
  v1 = v0[32];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[29];
  v3 = v0[21];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_23C0E0914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15;
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0E09BC, v6, 0);
}

uint64_t sub_23C0E09BC()
{
  v33 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[29];
    v3 = v0[30];
    v5 = *(v1 + 112);

    v6 = sub_23C0E6074(v4, v3);
    if (v7)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v6, (v0 + 8));

      sub_23C0B7660((v0 + 8), (v0 + 13));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB68, &qword_23C0EB610);
      if (swift_dynamicCast())
      {
        v8 = v0[27];
        v0[38] = v8;
        v9 = *(MEMORY[0x277D857E0] + 4);

        v10 = swift_task_alloc();
        v0[39] = v10;
        *v10 = v0;
        v10[1] = sub_23C0E0F88;
        v11 = v0 + 2;
        v12 = v8;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 8);
    }

    else
    {
    }
  }

  v13 = v0[35];
  v14 = v0[33];
  v28 = v0[32];
  v29 = v0[34];
  v15 = v0[30];
  v16 = v0[31];
  v17 = v0[29];
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  swift_beginAccess();

  sub_23C0E2190(&v30, v17, v15);
  swift_endAccess();
  v18 = sub_23C0E9BD0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v13, v16, v18);
  v20 = *(v19 + 56);
  v20(v13, 0, 1, v18);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v28;
  v21[5] = v14;

  v22 = sub_23C0DEFA0(0, 0, v13, &unk_23C0EB608, v21);
  v0[36] = v22;
  *(&v31 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB68, &qword_23C0EB610);
  v32 = &off_284EE15C0;
  *&v30 = v22;
  swift_beginAccess();
  swift_retain_n();

  sub_23C0E2190(&v30, v17, v15);
  swift_endAccess();
  v20(v13, 1, 1, v18);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  v24[5] = v23;
  v24[6] = v17;
  v24[7] = v15;

  sub_23C0DE678(0, 0, v13, &unk_23C0EB620, v24);

  v25 = *(MEMORY[0x277D857E0] + 4);
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = sub_23C0E0DE8;
  v11 = v0 + 2;
  v12 = v22;
LABEL_8:

  return MEMORY[0x282200460](v11, v12, &type metadata for InputPickerMicrophone);
}

uint64_t sub_23C0E0DE8()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 272);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E0EF8, v2, 0);
}

uint64_t sub_23C0E0EF8()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 280);
  v3 = *(v0 + 224);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23C0E0F88()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 272);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E10B4, v3, 0);
}

uint64_t sub_23C0E10B4()
{
  v1 = *(v0 + 304);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v2 = *(v0 + 280);
  v3 = *(v0 + 224);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23C0E1148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15;
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0E11F0, v6, 0);
}

uint64_t sub_23C0E11F0()
{
  v34 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[29];
    v3 = v0[30];
    v5 = *(v1 + 112);

    v6 = sub_23C0E6074(v4, v3);
    if (v7)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v6, (v0 + 8));

      sub_23C0B7660((v0 + 8), (v0 + 13));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB80, &qword_23C0EB6B0);
      if (swift_dynamicCast())
      {
        v8 = v0[27];
        v0[38] = v8;
        v9 = *(MEMORY[0x277D857E0] + 4);

        v10 = swift_task_alloc();
        v0[39] = v10;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
        *v10 = v0;
        v10[1] = sub_23C0E17DC;
        v12 = v0 + 2;
        v13 = v8;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 8);
    }

    else
    {
    }
  }

  v14 = v0[35];
  v15 = v0[33];
  v29 = v0[32];
  v30 = v0[34];
  v16 = v0[30];
  v17 = v0[31];
  v18 = v0[29];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  swift_beginAccess();

  sub_23C0E2190(&v31, v18, v16);
  swift_endAccess();
  v19 = sub_23C0E9BD0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v14, v17, v19);
  v21 = *(v20 + 56);
  v21(v14, 0, 1, v19);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v29;
  v22[5] = v15;

  v23 = sub_23C0DF298(0, 0, v14, &unk_23C0EB6A8, v22);
  v0[36] = v23;
  *(&v32 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB80, &qword_23C0EB6B0);
  v33 = &off_284EE15C0;
  *&v31 = v23;
  swift_beginAccess();
  swift_retain_n();

  sub_23C0E2190(&v31, v18, v16);
  swift_endAccess();
  v21(v14, 1, 1, v19);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v24;
  v25[6] = v18;
  v25[7] = v16;

  sub_23C0DE678(0, 0, v14, &unk_23C0EB6C0, v25);

  v26 = *(MEMORY[0x277D857E0] + 4);
  v27 = swift_task_alloc();
  v0[37] = v27;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  *v27 = v0;
  v27[1] = sub_23C0E163C;
  v12 = v0 + 2;
  v13 = v23;
LABEL_8:

  return MEMORY[0x282200460](v12, v13, v11);
}

uint64_t sub_23C0E163C()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 272);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E174C, v2, 0);
}

uint64_t sub_23C0E174C()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 280);
  v3 = *(v0 + 224);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23C0E17DC()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 272);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E1908, v3, 0);
}

uint64_t sub_23C0E1908()
{
  v1 = *(v0 + 304);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v2 = *(v0 + 280);
  v3 = *(v0 + 224);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23C0E199C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990) - 8) + 64) + 15;
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0E1A44, v6, 0);
}

uint64_t sub_23C0E1A44()
{
  v34 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[23];
    v3 = v0[24];
    v5 = *(v1 + 112);

    v6 = sub_23C0E6074(v4, v3);
    if (v7)
    {
      sub_23C0B7660(*(v2 + 56) + 40 * v6, (v0 + 2));

      sub_23C0B7660((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B0, &unk_23C0EB5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
      if (swift_dynamicCast())
      {
        v8 = v0[21];
        v0[32] = v8;
        v9 = *(MEMORY[0x277D857E0] + 4);

        v10 = swift_task_alloc();
        v0[33] = v10;
        *v10 = v0;
        v10[1] = sub_23C0E1FF4;
        v11 = v0[22];
        v12 = MEMORY[0x277D84F78] + 8;
        v13 = v8;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  v14 = v0[29];
  v15 = v0[27];
  v29 = v0[26];
  v30 = v0[28];
  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[23];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  swift_beginAccess();

  sub_23C0E2190(&v31, v18, v16);
  swift_endAccess();
  v19 = sub_23C0E9BD0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v14, v17, v19);
  v21 = *(v20 + 56);
  v21(v14, 0, 1, v19);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v29;
  v22[5] = v15;

  v23 = sub_23C0DE678(0, 0, v14, &unk_23C0EAF20, v22);
  v0[30] = v23;
  *(&v32 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9A8, &qword_23C0EAF30);
  v33 = &off_284EE15C0;
  *&v31 = v23;
  swift_beginAccess();
  swift_retain_n();

  sub_23C0E2190(&v31, v18, v16);
  swift_endAccess();
  v21(v14, 1, 1, v19);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v24;
  v25[6] = v18;
  v25[7] = v16;

  sub_23C0DE678(0, 0, v14, &unk_23C0EAF38, v25);

  v26 = *(MEMORY[0x277D857E0] + 4);
  v27 = swift_task_alloc();
  v0[31] = v27;
  *v27 = v0;
  v27[1] = sub_23C0E1E78;
  v11 = v0[22];
  v12 = MEMORY[0x277D84F78] + 8;
  v13 = v23;
LABEL_8:

  return MEMORY[0x282200460](v11, v13, v12);
}

uint64_t sub_23C0E1E78()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E1F88, v2, 0);
}

uint64_t sub_23C0E1F88()
{
  v1 = v0[30];

  v2 = v0[29];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0E1FF4()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E2120, v3, 0);
}

uint64_t sub_23C0E2120()
{
  v1 = v0[32];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[29];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23C0E2190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_23C0DA5C8(a1, v17);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v8 = v18;
    v9 = v19;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v10);
    v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13);
    sub_23C0E7DF0(v13, a2, a3, isUniquelyReferenced_nonNull_native, &v16, v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v17);

    *v3 = v16;
  }

  else
  {
    sub_23C0DAAD8(a1, &qword_27E1EE9A0, &qword_23C0EB3F0);
    sub_23C0E633C(a2, a3, v17);

    return sub_23C0DAAD8(v17, &qword_27E1EE9A0, &qword_23C0EB3F0);
  }

  return result;
}

uint64_t sub_23C0E2318(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_23C0B7A50;

  return v9(a1);
}

uint64_t sub_23C0E2410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[20] = a5;
  v9 = *(MEMORY[0x277D857D0] + 4);
  v10 = swift_task_alloc();
  v7[23] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
  v7[24] = v11;
  *v10 = v7;
  v10[1] = sub_23C0E24E4;
  v12 = MEMORY[0x277D84A98];
  v13 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v7 + 18, a4, v11, v12, v13);
}

uint64_t sub_23C0E24E4()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E25E0, 0, 0);
}

uint64_t sub_23C0E25E0()
{
  v1 = *(v0 + 152);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 144);
    *(v0 + 80) = *(v0 + 192);
    *(v0 + 56) = v2;
  }

  v3 = *(v0 + 160);
  *(v0 + 88) = v1;
  sub_23C0DAAD8(v0 + 56, &qword_27E1EEB70, &qword_23C0EB630);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 200) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23C0E26CC, Strong, 0);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23C0E26CC()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  swift_beginAccess();
  sub_23C0E633C(v3, v2, (v0 + 2));
  sub_23C0DAAD8((v0 + 2), &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C0E2784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[18] = a5;
  v9 = swift_task_alloc();
  v7[21] = v9;
  *v9 = v7;
  v9[1] = sub_23C0E2828;

  return sub_23C0DFE4C((v7 + 7), a4);
}

uint64_t sub_23C0E2828()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v4 = *v0;

  sub_23C0DAAD8(v1 + 56, &qword_27E1EEB70, &qword_23C0EB630);

  return MEMORY[0x2822009F8](sub_23C0E293C, 0, 0);
}

uint64_t sub_23C0E293C()
{
  v1 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23C0E29F4, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_23C0E29F4()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  swift_beginAccess();
  sub_23C0E633C(v3, v2, (v0 + 2));
  sub_23C0DAAD8((v0 + 2), &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C0E2AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[25] = a5;
  v9 = *(MEMORY[0x277D857D0] + 4);
  v10 = swift_task_alloc();
  v7[28] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE798, &qword_23C0EB080);
  v7[29] = v11;
  *v10 = v7;
  v10[1] = sub_23C0E2B80;
  v12 = MEMORY[0x277D84A98];
  v13 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v7 + 2, a4, v11, v12, v13);
}

uint64_t sub_23C0E2B80()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E2C7C, 0, 0);
}

uint64_t sub_23C0E2C7C()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    *(v0 + 136) = *(v0 + 232);
    v4 = swift_allocObject();
    *(v0 + 112) = v4;
    v5 = *(v0 + 32);
    *(v4 + 16) = *(v0 + 16);
    *(v4 + 32) = v5;
    *(v4 + 48) = v3;
    *(v4 + 56) = v2;
  }

  v6 = *(v0 + 200);
  *(v0 + 144) = v1;
  sub_23C0DAAD8(v0 + 112, &qword_27E1EEB70, &qword_23C0EB630);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 240) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23C0E2D94, Strong, 0);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_23C0E2D94()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  swift_beginAccess();
  sub_23C0E633C(v3, v2, (v0 + 9));
  sub_23C0DAAD8((v0 + 9), &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C0E2E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = *(MEMORY[0x277D857D0] + 4);
  v10 = swift_task_alloc();
  v7[16] = v10;
  *v10 = v7;
  v10[1] = sub_23C0E2F10;
  v11 = MEMORY[0x277D84A98];
  v12 = MEMORY[0x277D84AC0];
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v7 + 18, a4, v13, v11, v12);
}

uint64_t sub_23C0E2F10()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23C0E300C, 0, 0);
}

uint64_t sub_23C0E300C()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23C0E30C4, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_23C0E30C4()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  swift_beginAccess();
  sub_23C0E633C(v3, v2, (v0 + 2));
  sub_23C0DAAD8((v0 + 2), &qword_27E1EE9A0, &qword_23C0EB3F0);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C0E317C(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v116) = a3;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB88, &qword_23C0EB6F0);
  v136 = *(v138 - 8);
  v6 = *(v136 + 64);
  MEMORY[0x28223BE20](v138);
  v135 = (&v101 - v7);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB50, &qword_23C0EB568);
  v137 = *(v139 - 8);
  v8 = *(v137 + 64);
  MEMORY[0x28223BE20](v139);
  v134 = &v101 - v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB90, &qword_23C0EB6F8);
  v130 = *(v132 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x28223BE20](v132);
  v129 = (&v101 - v11);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB48, &qword_23C0EB560);
  v131 = *(v133 - 8);
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v133);
  v128 = &v101 - v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB98, &qword_23C0EB700);
  v124 = *(v125 - 8);
  v14 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v122 = (&v101 - v15);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE888, &qword_23C0EABA0);
  v126 = *(v127 - 8);
  v16 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v123 = &v101 - v17;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBA0, &qword_23C0EB708);
  v117 = *(v120 - 8);
  v18 = *(v117 + 64);
  MEMORY[0x28223BE20](v120);
  v115 = (&v101 - v19);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE880, &unk_23C0EA980);
  v118 = *(v121 - 8);
  v20 = *(v118 + 64);
  MEMORY[0x28223BE20](v121);
  v114 = &v101 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBA8, &qword_23C0EB710);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v107 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v142 = &v101 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBB0, &qword_23C0EB718);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v111 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v101 - v31;
  v140 = &v101 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBB8, &qword_23C0EB720);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v112 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v141 = &v101 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBC0, &qword_23C0EB728);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v119 = &v101 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v101 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = &v101 - v46;
  *(v3 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_isDiscovering) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEBC8, &qword_23C0EB730);
  v48 = swift_allocObject();

  sub_23C0E9BB0();
  v49 = sub_23C0E9BD0();
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v103 = v49;
  v102 = v51;
  v101 = v50 + 56;
  (v51)(v47, 0, 1);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = sub_23C0E5E48;
  v52[5] = 0;
  v53 = sub_23C0DF5AC(0, 0, v47, &unk_23C0EB740, v52);
  v104 = v47;
  sub_23C0DAAD8(v47, &qword_27E1EE890, &qword_23C0EA990);
  *(v48 + 16) = v53;
  v147[3] = &type metadata for MXAVInputContextFactory;
  v147[4] = &off_284EE0DB8;
  v147[0] = v48;
  type metadata accessor for AVRoutingInputController();
  v54 = swift_allocObject();
  v55 = __swift_mutable_project_boxed_opaque_existential_1(v147, &type metadata for MXAVInputContextFactory);
  v56 = *(qword_284EE0D98 + 64);
  MEMORY[0x28223BE20](v55);
  v58 = (&v101 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = *v58;
  v105 = a2;
  v61 = sub_23C0E6BC0(v116, a1, a2, v60, v54);
  __swift_destroy_boxed_opaque_existential_0(v147);
  *(v3 + 16) = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9C8, &qword_23C0EAF90);
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  v113 = v43;
  v64(v43, 1, 1, v62);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE970, &unk_23C0EB530);
  v66 = *(v65 - 8);
  v67 = *(v66 + 56);
  v68 = v141;
  v116 = v65;
  v67(v141, 1, 1);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B8, &qword_23C0EAF50);
  v108 = *(v69 - 8);
  v70 = *(v108 + 56);
  v109 = v69;
  v70(v32, 1, 1);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB38, &qword_23C0EB518);
  v110 = *(v71 - 8);
  v72 = *(v110 + 56);
  v73 = v142;
  v106 = v71;
  v72(v142, 1, 1);
  v74 = v115;
  *v115 = 1;
  v75 = *MEMORY[0x277D85768];
  (*(v117 + 104))(v74, v75, v120);
  v146 = v43;
  v76 = v114;
  sub_23C0E9C20();
  (*(v118 + 32))(v3 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneStream, v76, v121);
  v77 = v122;
  *v122 = 1;
  (*(v124 + 104))(v77, v75, v125);
  v145 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE828, &qword_23C0EA878);
  v78 = v123;
  sub_23C0E9C20();
  (*(v126 + 32))(v3 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesStream, v78, v127);
  v79 = v129;
  *v129 = 1;
  (*(v130 + 104))(v79, v75, v132);
  v144 = v140;
  v80 = v128;
  sub_23C0E9C20();
  (*(v131 + 32))(v3 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_inputGainStream, v80, v133);
  v81 = v135;
  *v135 = 1;
  (*(v136 + 104))(v81, v75, v138);
  v143 = v73;
  v82 = v134;
  v83 = v3;
  v84 = v119;
  sub_23C0E9C20();
  v85 = v82;
  v86 = v113;
  (*(v137 + 32))(v83 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_canSetInputGainStream, v85, v139);
  sub_23C0E902C(v86, v84, &qword_27E1EEBC0, &qword_23C0EB728);
  result = (*(v63 + 48))(v84, 1, v62);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(v63 + 32))(v83 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneContinuation, v84, v62);
  v88 = v141;
  v89 = v112;
  sub_23C0E902C(v141, v112, &qword_27E1EEBB8, &qword_23C0EB720);
  v90 = v116;
  result = (*(v66 + 48))(v89, 1, v116);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  (*(v66 + 32))(v83 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesContinuation, v89, v90);
  v91 = v140;
  v92 = v111;
  sub_23C0E902C(v140, v111, &qword_27E1EEBB0, &qword_23C0EB718);
  v93 = v108;
  v94 = v109;
  result = (*(v108 + 48))(v92, 1, v109);
  v95 = v110;
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v93 + 32))(v83 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_inputGainContinuation, v92, v94);
  v96 = v107;
  sub_23C0E902C(v142, v107, &qword_27E1EEBA8, &qword_23C0EB710);
  v97 = v106;
  result = (*(v95 + 48))(v96, 1, v106);
  if (result != 1)
  {

    (*(v95 + 32))(v83 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_canSetInputGainContinuation, v96, v97);
    *(*(v83 + 16) + 40) = &off_284EE15E8;
    swift_unknownObjectWeakAssign();
    v98 = v104;
    v102(v104, 1, 1, v103);
    v99 = swift_allocObject();
    swift_weakInit();
    v100 = swift_allocObject();
    v100[2] = 0;
    v100[3] = 0;
    v100[4] = v99;
    sub_23C0DE978(0, 0, v98, &unk_23C0EB748, v100);

    sub_23C0DAAD8(v142, &qword_27E1EEBA8, &qword_23C0EB710);
    sub_23C0DAAD8(v91, &qword_27E1EEBB0, &qword_23C0EB718);
    sub_23C0DAAD8(v88, &qword_27E1EEBB8, &qword_23C0EB720);
    sub_23C0DAAD8(v86, &qword_27E1EEBC0, &qword_23C0EB728);
    return v83;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_23C0E4254(uint64_t a1, uint64_t a2)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0DAAD8(a2, &qword_27E1EEBC0, &qword_23C0EB728);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9C8, &qword_23C0EAF90);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_23C0E438C(uint64_t a1, uint64_t a2)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0DAAD8(a2, &qword_27E1EEBB8, &qword_23C0EB720);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE970, &unk_23C0EB530);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_23C0E44C4(uint64_t a1, uint64_t a2)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0DAAD8(a2, &qword_27E1EEBB0, &qword_23C0EB718);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B8, &qword_23C0EAF50);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_23C0E45FC(uint64_t a1, uint64_t a2)
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23C0DAAD8(a2, &qword_27E1EEBA8, &qword_23C0EB710);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB38, &qword_23C0EB518);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_23C0E4734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23C0E9B90();
  v4[3] = sub_23C0E9B80();
  v6 = sub_23C0E9B40();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_23C0E47CC, v6, v5);
}

uint64_t sub_23C0E47CC()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_23C0E4860;

  return sub_23C0BEDD4();
}

uint64_t sub_23C0E4860()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23C0E4980, v4, v3);
}

uint64_t sub_23C0E4980()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23C0E49E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE890, &qword_23C0EA990);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE970, &unk_23C0EB530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9C8, &qword_23C0EAF90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v15 = sub_23C0E9830();
  __swift_project_value_buffer(v15, qword_27E1EF4F8);
  v16 = sub_23C0E9820();
  v17 = sub_23C0E9C90();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23C0B2000, v16, v17, "[deinit] MicrophoneManager start deinit", v18, 2u);
    MEMORY[0x23EEC78E0](v18, -1, -1);
  }

  v45 = v10;
  v46 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneContinuation;
  (*(v11 + 16))(v14, v1 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneContinuation, v10);
  sub_23C0E9BF0();
  v44 = *(v11 + 8);
  v44(v14, v10);
  v43 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesContinuation;
  (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesContinuation, v5);
  sub_23C0E9BF0();
  v42 = *(v6 + 8);
  v42(v9, v5);
  v19 = *(v1 + 16);
  *(v19 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v20 = sub_23C0E9BD0();
  v21 = *(*(v20 - 8) + 56);
  v41 = v5;
  v22 = v47;
  v21(v47, 1, 1, v20);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;

  sub_23C0DE978(0, 0, v22, &unk_23C0EB540, v24);

  v21(v22, 1, 1, v20);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v19;

  sub_23C0DFB8C(0, 0, v22, &unk_23C0EB550, v25);

  sub_23C0DAAD8(v22, &qword_27E1EE890, &qword_23C0EA990);
  v26 = *(v1 + 16);

  v44((v1 + v46), v45);
  v42((v1 + v43), v41);
  v27 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_inputGainContinuation;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE9B8, &qword_23C0EAF50);
  (*(*(v28 - 8) + 8))(v1 + v27, v28);
  v29 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_canSetInputGainContinuation;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB38, &qword_23C0EB518);
  (*(*(v30 - 8) + 8))(v1 + v29, v30);
  v31 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_selectedMicrophoneStream;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE880, &unk_23C0EA980);
  (*(*(v32 - 8) + 8))(v1 + v31, v32);
  v33 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_availableMicrophonesStream;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EE888, &qword_23C0EABA0);
  (*(*(v34 - 8) + 8))(v1 + v33, v34);
  v35 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_inputGainStream;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB48, &qword_23C0EB560);
  (*(*(v36 - 8) + 8))(v1 + v35, v36);
  v37 = OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_canSetInputGainStream;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB50, &qword_23C0EB568);
  (*(*(v38 - 8) + 8))(v1 + v37, v38);
  return v1;
}

uint64_t sub_23C0E5048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23C0E9BD0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C0E5108, 0, 0);
}

uint64_t sub_23C0E5108()
{
  if (qword_27E1EE790 != -1)
  {
    swift_once();
  }

  v1 = sub_23C0E9830();
  __swift_project_value_buffer(v1, qword_27E1EF4F8);
  v2 = sub_23C0E9820();
  v3 = sub_23C0E9C90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C0B2000, v2, v3, "[deinit] MicrophoneManager doing the cancelling of observations", v4, 2u);
    MEMORY[0x23EEC78E0](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[2];

  v0[6] = *(v6 + 16);
  v0[7] = swift_allocObject();
  swift_weakInit();
  sub_23C0E9BB0();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_23C0E52E4;
  v8 = v0[5];

  return (sub_23C0E199C)();
}

uint64_t sub_23C0E52E4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_23C0E5458, 0, 0);
}

uint64_t sub_23C0E5458()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23C0E54E8;
  v2 = *(v0 + 48);

  return sub_23C0DDB88();
}

uint64_t sub_23C0E54E8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23C0E55F8()
{
  sub_23C0E49E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MicrophoneManager()
{
  result = qword_27E1EEAE8;
  if (!qword_27E1EEAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23C0E56A4()
{
  sub_23C0E5A68(319, &qword_27E1EEAF8, &type metadata for InputPickerMicrophone, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_23C0E59FC(319, &qword_27E1EEB00, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_23C0E5A68(319, &qword_27E1EEB08, MEMORY[0x277D83A90], MEMORY[0x277D85788]);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_23C0E5A68(319, &qword_27E1EEB10, MEMORY[0x277D839B0], MEMORY[0x277D85788]);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_23C0E5A68(319, &qword_27E1EEB18, &type metadata for InputPickerMicrophone, MEMORY[0x277D857B8]);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_23C0E59FC(319, &qword_27E1EEB20, MEMORY[0x277D857B8]);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_23C0E5A68(319, &qword_27E1EEB28, MEMORY[0x277D83A90], MEMORY[0x277D857B8]);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_23C0E5A68(319, &qword_27E1EEB30, MEMORY[0x277D839B0], MEMORY[0x277D857B8]);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23C0E59FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1EE828, &qword_23C0EA878);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_23C0E5A68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_23C0E5AB8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB38, &qword_23C0EB518);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB40, &unk_23C0EB520);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15[-v12];
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC13AVKitSettings17MicrophoneManager_canSetInputGainContinuation, v4);
  v15[15] = a2;
  sub_23C0E9BE0();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_23C0E5C68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C0E5CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7B5C;

  return sub_23C0BE62C(a1, v4, v5, v6);
}

uint64_t sub_23C0E5D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C0B7A50;

  return sub_23C0E5048(a1, v4, v5, v6);
}

id sub_23C0E5E08@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277CB8690]) initWithDeviceFeatures_];
  *a1 = result;
  return result;
}

id sub_23C0E5E48@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277CB8678]) init];
  *a1 = result;
  return result;
}

uint64_t sub_23C0E5E84(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C0E5F7C;

  return v7(a1);
}

uint64_t sub_23C0E5F7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_23C0E6074(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23C0E9DC0();
  sub_23C0E9A60();
  v6 = sub_23C0E9DE0();

  return sub_23C0E6180(a1, a2, v6);
}

unint64_t sub_23C0E60EC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23C0E9A10();
  sub_23C0E9DC0();
  sub_23C0E9A60();
  v4 = sub_23C0E9DE0();

  return sub_23C0E6238(a1, v4);
}

unint64_t sub_23C0E6180(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23C0E9D90())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23C0E6238(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23C0E9A10();
      v9 = v8;
      if (v7 == sub_23C0E9A10() && v9 == v10)
      {
        break;
      }

      v12 = sub_23C0E9D90();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

double sub_23C0E633C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23C0E6074(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23C0E6868();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_23C0DA5C8((*(v12 + 56) + 40 * v9), a3);
    sub_23C0E66AC(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23C0E63E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EEB58, &qword_23C0EB5C0);
  v36 = a2;
  result = sub_23C0E9D60();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_23C0DA5C8(v25, v37);
      }

      else
      {
        sub_23C0B7660(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23C0E9DC0();
      sub_23C0E9A60();
      result = sub_23C0E9DE0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23C0DA5C8(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}