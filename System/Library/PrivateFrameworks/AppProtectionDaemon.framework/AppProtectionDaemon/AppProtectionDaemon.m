uint64_t sub_240060730()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240060778()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2400607B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2400607F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24006082C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void APDServerEntry(int a1, uint64_t *a2)
{
  v4 = a1;
  for (i = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a1]; v4; --v4)
  {
    v5 = *a2++;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
    [i addObject:v6];
  }

  v7 = objc_opt_new();
  [v7 runWithArguments:i];
}

uint64_t sub_240060918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_240069AB4();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v10 = sub_240069AD4();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = sub_240069A64();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v16 = sub_240069AA4();
  v6[21] = v16;
  v17 = *(v16 - 8);
  v6[22] = v17;
  v18 = *(v17 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240060AF0, 0, 0);
}

uint64_t sub_240060AF0()
{
  v1 = v0[23];
  (*(v0[19] + 104))(v0[20], *MEMORY[0x277D03160], v0[18]);
  sub_240069A94();
  v2 = *(MEMORY[0x277D03170] + 4);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_240060BBC;
  v4 = v0[23];

  return MEMORY[0x2821593D8]();
}

uint64_t sub_240060BBC(uint64_t a1)
{
  v4 = *(*v2 + 192);
  v5 = *v2;
  v5[25] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2400612F8, 0, 0);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    if (a1)
    {
      v6 = a1;
    }

    v5[26] = v6;
    v7 = *(MEMORY[0x277D03178] + 4);
    v8 = swift_task_alloc();
    v5[27] = v8;
    *v8 = v5;
    v8[1] = sub_240060D50;
    v9 = v5[23];

    return MEMORY[0x2821593E0]();
  }
}

uint64_t sub_240060D50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = sub_2400614D8;
  }

  else
  {
    *(v4 + 232) = a1;
    v7 = sub_240060E78;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_240060E78()
{
  v39 = v0;
  v1 = MEMORY[0x277D84F90];
  v2 = v0[28];
  if (v0[29])
  {
    v3 = v0[29];
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v4 = v0[26];
  v5 = sub_240069A34();
  __swift_project_value_buffer(v5, qword_281311078);

  v6 = sub_240069A14();
  v7 = sub_240069BC4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38[0] = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x277D837D0];
    v12 = MEMORY[0x245CB6890](v3, MEMORY[0x277D837D0]);
    v14 = sub_240065F70(v12, v13, v38);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = MEMORY[0x245CB6890](v8, v11);
    v17 = sub_240065F70(v15, v16, v38);

    *(v9 + 14) = v17;
    v1 = MEMORY[0x277D84F90];
    _os_log_impl(&dword_24005F000, v6, v7, "Unlockable apps: %s, unhideable apps: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CB6E40](v10, -1, -1);
    MEMORY[0x245CB6E40](v9, -1, -1);
  }

  v18 = v0[26];
  v35 = v0[21];
  v36 = v0[23];
  v37 = v0[20];
  v19 = v0[17];
  v20 = v0[14];
  v33 = v0[15];
  v34 = v0[22];
  v31 = v0[13];
  v32 = v0[16];
  v21 = v0[10];
  v22 = v0[11];
  v29 = v0[12];
  v30 = v0[9];
  v38[0] = MEMORY[0x277D84F98];
  sub_240061A78(v18, v38);

  sub_240068264(v3, v38, v18);
  swift_bridgeObjectRelease_n();

  v23 = v38[0];
  v24 = swift_allocObject();
  v24[2] = v21;
  v24[3] = v22;
  v24[4] = v23;
  v0[6] = sub_240068D80;
  v0[7] = v24;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_240061DCC;
  v0[5] = &block_descriptor_34;
  v25 = _Block_copy(v0 + 2);

  sub_240069AC4();
  v0[8] = v1;
  sub_240068EB0(&qword_281310F20, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C5618, &qword_24006A4B8);
  sub_240068DB0(&unk_281310F10, &unk_27E3C5618, &qword_24006A4B8);
  sub_240069C14();
  MEMORY[0x245CB6920](0, v19, v20, v25);
  _Block_release(v25);
  (*(v31 + 8))(v20, v29);
  (*(v32 + 8))(v19, v33);
  (*(v34 + 8))(v36, v35);
  v26 = v0[7];

  v27 = v0[1];

  return v27();
}

uint64_t sub_2400612F8()
{
  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_240069A34();
  __swift_project_value_buffer(v2, qword_281311078);
  v3 = v1;
  v4 = sub_240069A14();
  v5 = sub_240069BB4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24005F000, v4, v5, "couldn't get unhideable apps: %@", v7, 0xCu);
    sub_240068E50(v8, &qword_27E3C5628, &qword_24006A4C0);
    MEMORY[0x245CB6E40](v8, -1, -1);
    MEMORY[0x245CB6E40](v7, -1, -1);
  }

  v11 = v0[25];

  v0[26] = MEMORY[0x277D84F90];
  v12 = *(MEMORY[0x277D03178] + 4);
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_240060D50;
  v14 = v0[23];

  return MEMORY[0x2821593E0]();
}

uint64_t sub_2400614D8()
{
  v47 = v0;
  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_240069A34();
  __swift_project_value_buffer(v2, qword_281311078);
  v3 = v1;
  v4 = sub_240069A14();
  v5 = sub_240069BB4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24005F000, v4, v5, "couldn't get unlockable apps: %@", v7, 0xCu);
    sub_240068E50(v8, &qword_27E3C5628, &qword_24006A4C0);
    MEMORY[0x245CB6E40](v8, -1, -1);
    MEMORY[0x245CB6E40](v7, -1, -1);
  }

  v11 = v0[28];

  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v12 = v0[26];
  __swift_project_value_buffer(v2, qword_281311078);
  v13 = MEMORY[0x277D84F90];

  v14 = sub_240069A14();
  v15 = sub_240069BC4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[26];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v46[0] = v18;
    *v17 = 136315394;
    v19 = MEMORY[0x277D837D0];
    v20 = MEMORY[0x245CB6890](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
    v22 = sub_240065F70(v20, v21, v46);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = MEMORY[0x245CB6890](v16, v19);
    v25 = sub_240065F70(v23, v24, v46);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_24005F000, v14, v15, "Unlockable apps: %s, unhideable apps: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CB6E40](v18, -1, -1);
    MEMORY[0x245CB6E40](v17, -1, -1);
  }

  v26 = v0[26];
  v43 = v0[21];
  v44 = v0[23];
  v45 = v0[20];
  v27 = v0[17];
  v28 = v0[14];
  v41 = v0[15];
  v42 = v0[22];
  v39 = v0[13];
  v40 = v0[16];
  v29 = v0[10];
  v30 = v0[11];
  v37 = v0[12];
  v38 = v0[9];
  v46[0] = MEMORY[0x277D84F98];
  sub_240061A78(v26, v46);

  sub_240068264(v13, v46, v26);
  swift_bridgeObjectRelease_n();

  v31 = v46[0];
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = v30;
  v32[4] = v31;
  v0[6] = sub_240068D80;
  v0[7] = v32;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_240061DCC;
  v0[5] = &block_descriptor_34;
  v33 = _Block_copy(v0 + 2);

  sub_240069AC4();
  v0[8] = v13;
  sub_240068EB0(&qword_281310F20, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C5618, &qword_24006A4B8);
  sub_240068DB0(&unk_281310F10, &unk_27E3C5618, &qword_24006A4B8);
  sub_240069C14();
  MEMORY[0x245CB6920](0, v27, v28, v33);
  _Block_release(v33);
  (*(v39 + 8))(v28, v37);
  (*(v40 + 8))(v27, v41);
  (*(v42 + 8))(v44, v43);
  v34 = v0[7];

  v35 = v0[1];

  return v35();
}

uint64_t sub_240061A78(uint64_t a1, void *a2)
{
  v4 = sub_240069954();
  v47 = *(v4 - 8);
  v5 = v47[8];
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5630, &qword_24006A4C8);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v12 = *(a1 + 16);
  if (v12)
  {
    v45 = v47 + 4;
    v46 = v4;
    v41 = (v47 + 7);
    v42 = &v40 - v11;
    v13 = (a1 + 40);
    v43 = a2;
    v44 = v7;
    while (1)
    {
      v22 = *(v13 - 1);
      v21 = *v13;

      sub_240069934();
      v23 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *a2;
      v49 = v25;
      v27 = sub_240065A78(v22, v21);
      v28 = v25[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (v25[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_240066B78();
        }
      }

      else
      {
        sub_240066748(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_240065A78(v22, v21);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_17;
        }

        v27 = v32;
      }

      v34 = v49;
      v48 = v12;
      if (v31)
      {
        v15 = v46;
        v14 = v47;
        v16 = v47[9] * v27;
        v17 = v47[4];
        v18 = v42;
        v17(v42, v49[7] + v16, v46);
        v17((v34[7] + v16), v44, v15);
        v19 = v14[7];
        v7 = v44;
        v19(v18, 0, 1, v15);
      }

      else
      {
        v49[(v27 >> 6) + 8] |= 1 << v27;
        v35 = (v34[6] + 16 * v27);
        *v35 = v22;
        v35[1] = v21;
        v36 = v46;
        (v47[4])(v34[7] + v47[9] * v27, v7, v46);
        v37 = v34[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_16;
        }

        v34[2] = v39;
        v18 = v42;
        (*v41)(v42, 1, 1, v36);
      }

      v20 = v43;
      *v43 = v34;
      a2 = v20;
      sub_240068E50(v18, &qword_27E3C5630, &qword_24006A4C8);

      v13 += 2;
      v12 = v48 - 1;
      if (v48 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_240069CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_240061DCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_240061E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C55A8, &unk_24006A480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_240068BA8(a3, v27 - v11, &qword_27E3C55A8, &unk_24006A480);
  v13 = sub_240069B94();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_240068E50(v12, &qword_27E3C55A8, &unk_24006A480);
  }

  else
  {
    sub_240069B84();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_240069B74();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_240069B34() + 32;
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

      sub_240068E50(a3, &qword_27E3C55A8, &unk_24006A480);

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

  sub_240068E50(a3, &qword_27E3C55A8, &unk_24006A480);
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

uint64_t sub_240062110()
{
  v10 = sub_240069BE4();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240069BD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_240069AD4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_240068950();
  sub_240069AC4();
  v11 = MEMORY[0x277D84F90];
  sub_240068EB0(&qword_281310EF0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C5598, &unk_24006A520);
  sub_240068DB0(&qword_281310F00, &unk_27E3C5598, &unk_24006A520);
  sub_240069C14();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_240069C04();
  qword_281311070 = result;
  return result;
}

void sub_240062378(uint64_t a1)
{
  swift_allocObject();
  swift_weakInit();
  v2 = objc_allocWithZone(sub_240069994());
  v3 = sub_240069974();

  *a1 = v3;
  v4 = *MEMORY[0x277D26120];
  sub_240069984();
  v5 = *MEMORY[0x277D25CA0];
  sub_240069984();
  v6 = objc_opt_self();
  v7 = [v6 sharedConnection];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 isLockingAppsAllowed];

    *(a1 + 8) = v9;
    if (!v9)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v10 = [v6 sharedConnection];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 isHidingAppsAllowed];

LABEL_6:
      *(a1 + 9) = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2400624D0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2400626C0(a1);
  }

  return result;
}

uint64_t sub_240062530(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24006888C;
  *(v5 + 24) = v4;
  v8[4] = sub_240068898;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_240062698;
  v8[3] = &block_descriptor;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_2400626C0(uint64_t a1)
{
  v2 = sub_240069914();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240069904();
  v8 = *MEMORY[0x277D26120];
  v9 = sub_240069B24();
  v11 = v10;
  if (v9 == sub_240069B24() && v11 == v12)
  {

    goto LABEL_16;
  }

  v14 = sub_240069CB4();

  if (v14)
  {
LABEL_16:

    sub_240063084();
    return;
  }

  v15 = sub_240069904();
  v16 = *MEMORY[0x277D25CA0];
  v17 = sub_240069B24();
  v19 = v18;
  if (v17 == sub_240069B24() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_240069CB4();

    if ((v22 & 1) == 0)
    {
      if (qword_281311068 != -1)
      {
        swift_once();
      }

      v23 = sub_240069A34();
      __swift_project_value_buffer(v23, qword_281311078);
      (*(v3 + 16))(v6, a1, v2);
      v24 = sub_240069A14();
      v25 = sub_240069BC4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33 = v27;
        *v26 = 136315138;
        sub_240068EB0(&qword_27E3C5638, 255, MEMORY[0x277CC8900]);
        v28 = sub_240069CA4();
        v30 = v29;
        (*(v3 + 8))(v6, v2);
        v31 = sub_240065F70(v28, v30, &v33);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_24005F000, v24, v25, "iOSManagementExpert: unknown notification: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x245CB6E40](v27, -1, -1);
        MEMORY[0x245CB6E40](v26, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      return;
    }
  }

  sub_240062A98();
}

id sub_240062A98()
{
  v1 = v0;
  v2 = objc_opt_self();
  result = [v2 sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  v5 = [result isLockingAppsAllowed];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_6;
  }

  result = [v2 sharedConnection];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result isHidingAppsAllowed];

LABEL_6:
  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v8 = sub_240069A34();
  __swift_project_value_buffer(v8, qword_281311078);
  v9 = sub_240069A14();
  v10 = sub_240069BC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = v5;
    *(v11 + 8) = 1024;
    *(v11 + 10) = v7;
    _os_log_impl(&dword_24005F000, v9, v10, "Effective settings changed. Locking allowed: %{BOOL}d, hiding allowed: %{BOOL}d", v11, 0xEu);
    MEMORY[0x245CB6E40](v11, -1, -1);
  }

  v12 = *(v1 + 32);
  os_unfair_lock_lock(v12 + 12);
  sub_240062C70(&v12[4], v5, v7, &v13);
  os_unfair_lock_unlock(v12 + 12);
  sub_240062530(v13);
}

uint64_t sub_240062C70@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v4) = a3;
  v32 = a4;
  v6 = a2 & 1;
  v7 = sub_240069964();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30[-v14];
  v16 = &unk_281311000;
  if (*(a1 + 8) == v6)
  {
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v31 = v4;
    *(a1 + 8) = v6;
    if (qword_281311068 != -1)
    {
      swift_once();
    }

    v17 = sub_240069A34();
    __swift_project_value_buffer(v17, qword_281311078);
    v18 = sub_240069A14();
    v19 = sub_240069BC4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24005F000, v18, v19, "locking apps capability changed", v20, 2u);
      MEMORY[0x245CB6E40](v20, -1, -1);
    }

    *v15 = v6;
    (*(v8 + 104))(v15, *MEMORY[0x277CEBE40], v7);
    v21 = sub_240065D98(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = v21[2];
    v22 = v21[3];
    if (v4 >= v22 >> 1)
    {
      v21 = sub_240065D98(v22 > 1, v4 + 1, 1, v21);
    }

    v21[2] = v4 + 1;
    result = (*(v8 + 32))(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, v15, v7);
    LOBYTE(v4) = v31;
    v16 = &unk_281311000;
  }

  if (*(a1 + 9) != (v4 & 1))
  {
    if (v16[13] != -1)
    {
      swift_once();
    }

    v23 = sub_240069A34();
    __swift_project_value_buffer(v23, qword_281311078);
    v24 = sub_240069A14();
    v25 = sub_240069BC4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v4;
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24005F000, v24, v25, "hiding apps capability changed", v4, 2u);
      v27 = v4;
      LOBYTE(v4) = v26;
      MEMORY[0x245CB6E40](v27, -1, -1);
    }

    *(a1 + 9) = v4 & 1;
    *v12 = v4 & 1;
    (*(v8 + 104))(v12, *MEMORY[0x277CEBE38], v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_240065D98(0, v21[2] + 1, 1, v21);
    }

    v29 = v21[2];
    v28 = v21[3];
    if (v29 >= v28 >> 1)
    {
      v21 = sub_240065D98(v28 > 1, v29 + 1, 1, v21);
    }

    v21[2] = v29 + 1;
    result = (*(v8 + 32))(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, v12, v7);
  }

  *v32 = v21;
  return result;
}

uint64_t sub_240063084()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C55A8, &unk_24006A480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v6 = sub_240069A34();
  __swift_project_value_buffer(v6, qword_281311078);
  v7 = sub_240069A14();
  v8 = sub_240069BC4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24005F000, v7, v8, "Fetching protectability.", v9, 2u);
    MEMORY[0x245CB6E40](v9, -1, -1);
  }

  v10 = os_transaction_create();
  if (qword_281311050 != -1)
  {
    swift_once();
  }

  v11 = qword_281311070;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v1;
  v13 = sub_240069B94();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v11;
  v14[5] = sub_2400689E4;
  v14[6] = v12;

  v15 = v11;
  sub_240061E10(0, 0, v5, &unk_24006A498, v14);
}

uint64_t sub_2400632C8(uint64_t a1)
{
  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v2 = sub_240069A34();
  __swift_project_value_buffer(v2, qword_281311078);
  v3 = sub_240069A14();
  v4 = sub_240069BC4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24005F000, v3, v4, "Done fetching protectability.", v5, 2u);
    MEMORY[0x245CB6E40](v5, -1, -1);
  }

  return sub_2400633BC(a1);
}

uint64_t sub_2400633BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_240069AE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v31[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_281311050 != -1)
  {
    swift_once();
  }

  v9 = qword_281311070;
  *v8 = qword_281311070;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_240069AF4();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_281311068 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v11 = sub_240069A34();
  __swift_project_value_buffer(v11, qword_281311078);

  v12 = sub_240069A14();
  v13 = sub_240069BC4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31[0] = v15;
    *v14 = 136315138;
    sub_240069954();
    v16 = sub_240069B04();
    v18 = sub_240065F70(v16, v17, v31);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_24005F000, v12, v13, "Apps changed. New protectability: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x245CB6E40](v15, -1, -1);
    MEMORY[0x245CB6E40](v14, -1, -1);
  }

  v19 = *(v2 + 32);
  MEMORY[0x28223BE20](v20);
  *(&v30 - 2) = a1;
  os_unfair_lock_lock(v19 + 12);
  sub_2400687C4(&v19[4], v31);
  os_unfair_lock_unlock(v19 + 12);
  v21 = v31[1];
  v22 = v32;
  sub_240062530(v31[0]);

  if (v22 == 1)
  {
    sub_2400699D4();
    v23 = sub_240069B34();

    notify_post((v23 + 32));
  }

  v24 = *(v21 + 16);
  if (v24)
  {
    v25 = (v21 + 40);
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;

      v27(v28);

      v25 += 2;
      --v24;
    }

    while (v24);
  }
}

void sub_24006371C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v212 = a1;
  v188[0] = a3;
  v4 = sub_240069964();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v193 = (v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v192 = (v188 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v206 = (v188 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v205 = (v188 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v195 = (v188 - v16);
  MEMORY[0x28223BE20](v15);
  v194 = (v188 - v17);
  v18 = sub_240069954();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v196 = v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v188 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v188 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v191 = v188 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v190 = v188 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v199 = v188 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v227 = v188 - v36;
  MEMORY[0x28223BE20](v35);
  v207 = v188 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5570, &qword_24006A458);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v211 = v188 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v210 = (v188 - v42);
  v43 = a2 + 64;
  v44 = 1 << *(a2 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(a2 + 64);
  v197 = (v44 + 63) >> 6;
  v221 = v19 + 32;
  v216 = v19;
  v224 = (v19 + 8);
  v225 = (v19 + 16);
  v201 = *MEMORY[0x277CEBE30];
  v214 = (v5 + 104);
  v215 = v5;
  v213 = v5 + 32;
  v200 = *MEMORY[0x277CEBE28];

  v47 = 0;
  *&v48 = 136315650;
  v198 = v48;
  *&v48 = 136315394;
  v189 = v48;
  v228 = MEMORY[0x277D84F90];
  v208 = a2;
  v223 = v4;
  v217 = v18;
  *&v220 = v25;
  v204 = v28;
  v49 = v25;
  v209 = a2 + 64;
  if (!v46)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v50 = v47;
LABEL_16:
    v222 = (v46 - 1) & v46;
    v53 = __clz(__rbit64(v46)) | (v50 << 6);
    v54 = (*(v208 + 48) + 16 * v53);
    v55 = *v54;
    v56 = v54[1];
    v57 = v216;
    v58 = v207;
    (*(v216 + 16))(v207, *(v208 + 56) + *(v216 + 72) * v53, v18);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
    v60 = *(v59 + 48);
    v61 = v211;
    *v211 = v55;
    *(v61 + 1) = v56;
    v62 = v61;
    (*(v57 + 32))(&v61[v60], v58, v18);
    (*(*(v59 - 8) + 56))(v62, 0, 1, v59);

    v49 = v220;
LABEL_17:
    v63 = v210;
    sub_2400688D8(v62, v210);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
    if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
    {
      break;
    }

    v65 = *v63;
    v66 = v63[1];
    (*v221)(v227, v63 + *(v64 + 48), v18);
    v67 = *(v212 + 16);
    v68 = v223;
    v226 = v65;
    if (v67 && *(v67 + 16) && (v69 = sub_240065A78(v65, v66), (v70 & 1) != 0))
    {
      v71 = *(v67 + 56) + *(v216 + 72) * v69;
      v219 = *(v216 + 16);
      (v219)(v199, v71, v18);
      v72 = sub_240069944() & 1;
      if (v72 != (sub_240069944() & 1))
      {
        v73 = v190;
        if (qword_281311068 != -1)
        {
          swift_once();
        }

        v74 = sub_240069A34();
        __swift_project_value_buffer(v74, qword_281311078);
        (v219)(v73, v227, v18);

        v75 = sub_240069A14();
        v76 = sub_240069BC4();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v229 = v78;
          *v77 = v189;
          *(v77 + 4) = sub_240065F70(v65, v66, &v229);
          *(v77 + 12) = 1024;
          v203 = v75;
          v79 = sub_240069944();
          v80 = v73;
          v81 = v79 & 1;
          (*v224)(v80, v217);
          *(v77 + 14) = v81;
          v82 = v203;
          _os_log_impl(&dword_24005F000, v203, v76, "%s lockability changed to %{BOOL}d", v77, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v78);
          v83 = v78;
          v18 = v217;
          MEMORY[0x245CB6E40](v83, -1, -1);
          v84 = v77;
          v68 = v223;
          MEMORY[0x245CB6E40](v84, -1, -1);
        }

        else
        {
          (*v224)(v73, v18);
        }

        v118 = sub_240069944();
        v119 = v194;
        *v194 = v65;
        v119[1] = v66;
        *(v119 + 16) = v118 & 1;
        (*v214)(v119, v201, v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v228 = sub_240065D98(0, v228[2] + 1, 1, v228);
        }

        v121 = v228[2];
        v120 = v228[3];
        if (v121 >= v120 >> 1)
        {
          v228 = sub_240065D98(v120 > 1, v121 + 1, 1, v228);
        }

        v122 = v228;
        v228[2] = v121 + 1;
        (*(v215 + 32))(v122 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v121, v194, v68);
      }

      v123 = v227;
      v124 = sub_240069924() & 1;
      v125 = v199;
      if (v124 != (sub_240069924() & 1))
      {
        v126 = v66;
        if (qword_281311068 != -1)
        {
          swift_once();
        }

        v127 = sub_240069A34();
        __swift_project_value_buffer(v127, qword_281311078);
        v128 = v191;
        (v219)(v191, v227, v18);

        v129 = sub_240069A14();
        v130 = sub_240069BC4();

        v131 = os_log_type_enabled(v129, v130);
        v46 = v222;
        if (v131)
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v229 = v133;
          *v132 = v189;
          v203 = v129;
          v134 = v226;
          *(v132 + 4) = sub_240065F70(v226, v126, &v229);
          *(v132 + 12) = 1024;
          v135 = sub_240069924() & 1;
          v219 = *v224;
          v219(v128, v217);
          *(v132 + 14) = v135;
          v136 = v203;
          _os_log_impl(&dword_24005F000, v203, v130, "%s hideability changed to %{BOOL}d", v132, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v133);
          v137 = v133;
          v18 = v217;
          MEMORY[0x245CB6E40](v137, -1, -1);
          v138 = v132;
          v68 = v223;
          MEMORY[0x245CB6E40](v138, -1, -1);
        }

        else
        {
          v219 = *v224;
          v219(v128, v18);

          v134 = v226;
        }

        v140 = sub_240069924();
        v141 = v195;
        *v195 = v134;
        v141[1] = v126;
        *(v141 + 16) = v140 & 1;
        (*v214)(v141, v200, v68);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v199;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v228 = sub_240065D98(0, v228[2] + 1, 1, v228);
        }

        v145 = v228[2];
        v144 = v228[3];
        if (v145 >= v144 >> 1)
        {
          v228 = sub_240065D98(v144 > 1, v145 + 1, 1, v228);
        }

        v146 = v219;
        v219(v143, v18);
        v146(v227, v18);
        v147 = v228;
        v228[2] = v145 + 1;
        (*(v215 + 32))(v147 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v145, v195, v68);
        v49 = v220;
        goto LABEL_6;
      }

      v139 = *v224;
      (*v224)(v125, v18);
      v139(v123, v18);
      v43 = v209;
      v46 = v222;
      if (!v222)
      {
LABEL_8:
        if (v197 <= v47 + 1)
        {
          v51 = v47 + 1;
        }

        else
        {
          v51 = v197;
        }

        v52 = v51 - 1;
        while (1)
        {
          v50 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v50 >= v197)
          {
            v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
            v117 = v211;
            (*(*(v116 - 8) + 56))(v211, 1, 1, v116);
            v222 = 0;
            v47 = v52;
            v62 = v117;
            goto LABEL_17;
          }

          v46 = *(v43 + 8 * v50);
          ++v47;
          if (v46)
          {
            v47 = v50;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_101;
      }
    }

    else
    {
      if (qword_281311068 != -1)
      {
        swift_once();
      }

      v85 = sub_240069A34();
      __swift_project_value_buffer(v85, qword_281311078);
      v86 = *v225;
      v87 = v204;
      v88 = v227;
      (*v225)(v204, v227, v18);
      v86(v49, v88, v18);

      v89 = sub_240069A14();
      v90 = sub_240069BC4();

      v91 = os_log_type_enabled(v89, v90);
      v218 = v66;
      if (v91)
      {
        v92 = swift_slowAlloc();
        v203 = v89;
        v93 = v92;
        v202 = swift_slowAlloc();
        v229 = v202;
        *v93 = v198;
        *(v93 + 4) = sub_240065F70(v226, v66, &v229);
        *(v93 + 12) = 1024;
        v94 = sub_240069944() & 1;
        v95 = *v224;
        (*v224)(v87, v18);
        *(v93 + 14) = v94;
        *(v93 + 18) = 1024;
        v96 = sub_240069924() & 1;
        v219 = v95;
        v95(v49, v18);
        *(v93 + 20) = v96;
        v97 = v203;
        _os_log_impl(&dword_24005F000, v203, v90, "%s now has protectability info, lockable: %{BOOL}d, hideable: %{BOOL}d", v93, 0x18u);
        v98 = v202;
        __swift_destroy_boxed_opaque_existential_0(v202);
        MEMORY[0x245CB6E40](v98, -1, -1);
        MEMORY[0x245CB6E40](v93, -1, -1);
      }

      else
      {
        v99 = *v224;
        (*v224)(v49, v18);
        v219 = v99;
        v99(v87, v18);
      }

      v100 = v223;
      v101 = v227;
      v102 = sub_240069944();
      v46 = v222;
      if (v102)
      {
        v18 = v217;
        v103 = v218;
        v49 = v220;
        if ((sub_240069924() & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v103 = v218;

        v104 = sub_240069944();
        v105 = v205;
        *v205 = v226;
        v105[1] = v103;
        *(v105 + 16) = v104 & 1;
        (*v214)(v105, v201, v100);
        v106 = swift_isUniquelyReferenced_nonNull_native();
        v18 = v217;
        v49 = v220;
        if ((v106 & 1) == 0)
        {
          v228 = sub_240065D98(0, v228[2] + 1, 1, v228);
        }

        v108 = v228[2];
        v107 = v228[3];
        if (v108 >= v107 >> 1)
        {
          v228 = sub_240065D98(v107 > 1, v108 + 1, 1, v228);
        }

        v109 = v228;
        v228[2] = v108 + 1;
        (*(v215 + 32))(v109 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v108, v205, v100);
        if ((sub_240069924() & 1) == 0)
        {
LABEL_39:
          v110 = sub_240069924();
          v111 = v206;
          *v206 = v226;
          v111[1] = v103;
          *(v111 + 16) = v110 & 1;
          (*v214)(v111, v200, v100);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v228 = sub_240065D98(0, v228[2] + 1, 1, v228);
          }

          v112 = v219;
          v114 = v228[2];
          v113 = v228[3];
          if (v114 >= v113 >> 1)
          {
            v228 = sub_240065D98(v113 > 1, v114 + 1, 1, v228);
          }

          v112(v101, v18);
          v115 = v228;
          v228[2] = v114 + 1;
          (*(v215 + 32))(v115 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v114, v206, v100);
          goto LABEL_6;
        }
      }

      v219(v101, v18);

LABEL_6:
      v43 = v209;
      if (!v46)
      {
        goto LABEL_8;
      }
    }
  }

  v148 = *(v212 + 16);
  v149 = v223;
  v222 = v148;
  if (v148)
  {
    v150 = v148;
  }

  else
  {
    v148 = sub_240068520(MEMORY[0x277D84F90]);
    v150 = 0;
  }

  v226 = v150;
  swift_bridgeObjectRetain_n();
  v151 = sub_240064E04(v148);
  v152 = sub_240066FF4(v208, v151);
  v153 = v152 + 56;
  v154 = 1 << *(v152 + 32);
  v155 = -1;
  if (v154 < 64)
  {
    v155 = ~(-1 << v154);
  }

  v156 = v155 & *(v152 + 56);
  v157 = (v154 + 63) >> 6;
  v221 = v152;

  v158 = 0;
  *&v159 = 136315138;
  v220 = v159;
  if (!v156)
  {
LABEL_72:
    while (1)
    {
      v160 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        break;
      }

      if (v160 >= v157)
      {

        if (v222)
        {
          v182 = v208;
          v183 = sub_240065574(v226, v208);

          v184 = v183 ^ 1;
        }

        else
        {
          v184 = 1;
          v182 = v208;
        }

        v185 = v212;
        v186 = *(v212 + 24);
        *(v212 + 16) = v182;
        *(v185 + 24) = MEMORY[0x277D84F90];
        v187 = v188[0];
        *v188[0] = v228;
        *(v187 + 8) = v186;
        *(v187 + 16) = v184 & 1;
        return;
      }

      v156 = *(v153 + 8 * v160);
      ++v158;
      if (v156)
      {
        v158 = v160;
        goto LABEL_76;
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  while (1)
  {
LABEL_76:
    v161 = (*(v221 + 48) + ((v158 << 10) | (16 * __clz(__rbit64(v156)))));
    v162 = v161[1];
    v227 = *v161;
    v163 = qword_281311068;

    if (v163 != -1)
    {
      swift_once();
    }

    v164 = sub_240069A34();
    __swift_project_value_buffer(v164, qword_281311078);

    v165 = sub_240069A14();
    v166 = sub_240069BC4();

    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v229 = v168;
      *v167 = v220;
      *(v167 + 4) = sub_240065F70(v227, v162, &v229);
      _os_log_impl(&dword_24005F000, v165, v166, "%s lost protectability management", v167, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v168);
      MEMORY[0x245CB6E40](v168, -1, -1);
      v169 = v167;
      v149 = v223;
      MEMORY[0x245CB6E40](v169, -1, -1);
    }

    v170 = v196;
    v171 = v226;
    if (!v222)
    {
      break;
    }

    if (!*(v226 + 16))
    {
      goto LABEL_102;
    }

    v172 = sub_240065A78(v227, v162);
    if ((v173 & 1) == 0)
    {
      goto LABEL_103;
    }

    (*(v216 + 16))(v170, *(v171 + 56) + *(v216 + 72) * v172, v217);
    if ((sub_240069944() & 1) == 0)
    {
      v174 = v192;
      *v192 = v227;
      v174[1] = v162;
      *(v174 + 16) = 1;
      (*v214)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v228 = sub_240065D98(0, v228[2] + 1, 1, v228);
      }

      v176 = v228[2];
      v175 = v228[3];
      if (v176 >= v175 >> 1)
      {
        v228 = sub_240065D98(v175 > 1, v176 + 1, 1, v228);
      }

      v177 = v228;
      v228[2] = v176 + 1;
      (*(v215 + 32))(v177 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v176, v192, v149);
      v170 = v196;
    }

    v156 &= v156 - 1;
    if (sub_240069924())
    {
      (*v224)(v170, v217);

      if (!v156)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v178 = v193;
      *v193 = v227;
      v178[1] = v162;
      *(v178 + 16) = 1;
      (*v214)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v228 = sub_240065D98(0, v228[2] + 1, 1, v228);
      }

      v180 = v228[2];
      v179 = v228[3];
      if (v180 >= v179 >> 1)
      {
        v228 = sub_240065D98(v179 > 1, v180 + 1, 1, v228);
      }

      (*v224)(v196, v217);
      v181 = v228;
      v228[2] = v180 + 1;
      (*(v215 + 32))(v181 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v180, v193, v149);
      if (!v156)
      {
        goto LABEL_72;
      }
    }
  }

LABEL_104:
  __break(1u);
}

uint64_t sub_240064E04(uint64_t a1)
{
  result = MEMORY[0x245CB68D0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_240066EA4(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_240064F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(sub_240069954() - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = v21 - v14;
  if (*(a1 + 8) == 1)
  {
    v16 = *(a1 + 16);
    if (v16 && *(v16 + 16) && (v17 = result, result = sub_240065A78(a2, a3), (v18 & 1) != 0))
    {
      (*(v8 + 16))(v12, *(v16 + 56) + *(v8 + 72) * result, v17);
      (*(v8 + 32))(v15, v12, v17);
      v19 = sub_240069944();
      result = (*(v8 + 8))(v15, v17);
      v20 = v19 & 1;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  *a4 = v20;
  return result;
}

unint64_t sub_2400650C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_240069954();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = v22 - v15;
  if (*(a1 + 9) == 1)
  {
    v17 = *(a1 + 16);
    if (v17 && *(v17 + 16) && (v18 = result, result = sub_240065A78(a2, a3), (v19 & 1) != 0))
    {
      (*(v9 + 16))(v13, *(v17 + 56) + *(v9 + 72) * result, v18);
      (*(v9 + 32))(v16, v13, v18);
      v20 = sub_240069924();
      result = (*(v9 + 8))(v16, v18);
      v21 = v20 & 1;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  *a4 = v21;
  return result;
}

uint64_t sub_240065260()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2400652D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240065320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_240065380()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 48));
  if (*(v1 + 32))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = sub_240068520(MEMORY[0x277D84F90]);
  }

  os_unfair_lock_unlock((v1 + 48));
  return v2;
}

uint64_t sub_2400653E0()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 12);
  sub_240068770(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 12);
  return v3;
}

uint64_t sub_240065440()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 12);
  sub_240068754(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 12);
  return v3;
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

uint64_t sub_240065574(uint64_t a1, uint64_t a2)
{
  v4 = sub_240069954();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5570, &qword_24006A458);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_2400688D8(v22, v56);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_240065A78(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_240068EB0(&qword_27E3C5580, 255, MEMORY[0x277CEBE10]);
    v49 = sub_240069B14();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_240065A78(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_240069CE4();
  sub_240069B44();
  v6 = sub_240069CF4();

  return sub_240065AF0(a1, a2, v6);
}

unint64_t sub_240065AF0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_240069CB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_240065BA8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240065CA0;

  return v7(a1);
}

uint64_t sub_240065CA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_240065D98(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5588, &qword_24006A468);
  v10 = *(sub_240069964() - 8);
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
  v15 = *(sub_240069964() - 8);
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

uint64_t sub_240065F70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24006603C(v11, 0, 0, 1, a1, a2);
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
    sub_24006882C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24006603C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_240066148(a5, a6);
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
    result = sub_240069C64();
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

uint64_t sub_240066148(uint64_t a1, unint64_t a2)
{
  v4 = sub_240066194(a1, a2);
  sub_2400662C4(&unk_285205D00);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_240066194(uint64_t a1, unint64_t a2)
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

  v6 = sub_2400663B0(v5, 0);
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

  result = sub_240069C64();
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
        v10 = sub_240069B54();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2400663B0(v10, 0);
        result = sub_240069C54();
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

uint64_t sub_2400662C4(uint64_t result)
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

  result = sub_240066424(result, v12, 1, v3);
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

void *sub_2400663B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5568, &qword_24006A450);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_240066424(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5568, &qword_24006A450);
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

uint64_t sub_240066518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_240065A78(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_240066748(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_240065A78(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_240069CD4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v29 = v14;
    sub_240066B78();
    v14 = v29;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_240066AC8(v14, a2, a3, a1, v13);
    v30 = sub_240069954();
    (*(*(v30 - 8) + 56))(a4, 1, 1, v30);

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = v13[7];
  v22 = v14;
  v23 = sub_240069954();
  v24 = *(v23 - 8);
  v25 = v24;
  v26 = *(v24 + 72) * v22;
  v27 = *(v24 + 32);
  v27(a4, v21 + v26, v23);
  v27(v13[7] + v26, a1, v23);
  result = (*(v25 + 56))(a4, 0, 1, v23);
LABEL_11:
  *v6 = v13;
  return result;
}

uint64_t sub_240066748(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_240069954();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5560, &qword_24006A448);
  v46 = a2;
  result = sub_240069C84();
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
      sub_240069CE4();
      sub_240069B44();
      result = sub_240069CF4();
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

uint64_t sub_240066AC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_240069954();
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

char *sub_240066B78()
{
  v1 = v0;
  v36 = sub_240069954();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5560, &qword_24006A448);
  v4 = *v0;
  v5 = sub_240069C74();
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

uint64_t sub_240066DF8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_240066EA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_240069CE4();
  sub_240069B44();
  v9 = sub_240069CF4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_240069CB4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_240067C20(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_240066FF4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_240069CE4();

    sub_240069B44();
    v24 = sub_240069CF4();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_240069CB4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_2400679FC(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_240069CE4();

            sub_240069B44();
            v43 = sub_240069CF4();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_240069CB4() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_2400677C4(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x245CB6E40](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_240068948();
    goto LABEL_53;
  }

  result = MEMORY[0x245CB6E40](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_240067564(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5590, &unk_24006A470);
  result = sub_240069C34();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_240069CE4();
      sub_240069B44();
      result = sub_240069CF4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2400677C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_2400679FC(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_240069CE4();

        sub_240069B44();
        v20 = sub_240069CF4();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_240069CB4() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_2400679FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5590, &unk_24006A470);
  result = sub_240069C44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_240069CE4();

    sub_240069B44();
    result = sub_240069CF4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_240067C20(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_240067564(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_240067DA0();
      goto LABEL_16;
    }

    sub_240067EFC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_240069CE4();
  sub_240069B44();
  result = sub_240069CF4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_240069CB4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_240069CC4();
  __break(1u);
  return result;
}

void *sub_240067DA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5590, &unk_24006A470);
  v2 = *v0;
  v3 = sub_240069C24();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

uint64_t sub_240067EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5590, &unk_24006A470);
  result = sub_240069C34();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_240069CE4();

      sub_240069B44();
      result = sub_240069CF4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_240068134(uint64_t a1, uint64_t a2)
{
  v4 = sub_240069964();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*a1 + 16);
  if (v10)
  {
    v11 = *(a2 + 16);
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v9, v15, v4);
      sub_240069A44();
      result = (*(v12 - 8))(v9, v4);
      v15 += v16;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_240068264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_240069954();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5630, &qword_24006A4C8);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9 - 8);
  v13 = v18 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (a1 + 40);
    v19 = a3;
    do
    {
      v16 = *v15;
      v18[0] = *(v15 - 1);
      v17 = v18[0];
      v18[1] = v16;
      MEMORY[0x28223BE20](result);
      v18[-2] = v18;

      sub_240066DF8(sub_240068DF8, &v18[-4], v19);
      sub_240069934();
      sub_240066518(v8, v17, v16, v13);
      sub_240068E50(v13, &qword_27E3C5630, &qword_24006A4C8);

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  return result;
}

void *sub_240068418(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5550, &qword_24006A3F0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v1[2] = sub_240069A54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C5640, &qword_24006A4D0);
  v6 = swift_allocObject();
  *(v6 + 48) = 0;
  v7 = (v6 + 48);
  *(v6 + 16) = 0;
  v8 = v6 + 16;
  *(v6 + 24) = 257;
  v9 = MEMORY[0x277D84F90];
  *(v6 + 32) = 0;
  *(v6 + 40) = v9;
  v1[3] = a1;
  v1[4] = v6;

  v10 = a1;
  os_unfair_lock_lock(v7);
  sub_240068EF8(v8);
  os_unfair_lock_unlock(v7);

  sub_240063084();
  return v1;
}

unint64_t sub_240068520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5558, &qword_24006A440);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5560, &qword_24006A448);
    v8 = sub_240069C94();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_240068BA8(v10, v6, &qword_27E3C5558, &qword_24006A440);
      v12 = *v6;
      v13 = v6[1];
      result = sub_240065A78(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_240069954();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24006882C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_240068898()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2400688D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5570, &qword_24006A458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240068950()
{
  result = qword_281310EE8;
  if (!qword_281310EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281310EE8);
  }

  return result;
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2400689E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2400632C8(a1);
}

uint64_t sub_2400689EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240068AB4;

  return sub_240060918(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_240068AB4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_240068BA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_240068C10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240068FCC;

  return sub_240065BA8(a1, v5);
}

uint64_t sub_240068CC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240068AB4;

  return sub_240065BA8(a1, v5);
}

uint64_t sub_240068DB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_240068DF8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_240069CB4() & 1;
  }
}

uint64_t sub_240068E50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_240068EB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_240068EF8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_240062378(a1);
}

uint64_t sub_240068F30(uint64_t a1, int a2)
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

uint64_t sub_240068F50(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281310EF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281310EF8);
    }
  }
}

id APDServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id APDServer.init()()
{
  v0 = sub_240069BE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240069BD4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_240069AD4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v21 = OBJC_IVAR____TtC19AppProtectionDaemon9APDServer_serviceQueue;
  sub_240068950();
  sub_240069AC4();
  *&v24 = MEMORY[0x277D84F90];
  sub_240069590(&qword_281310EF0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C5598, &unk_24006A520);
  sub_240069364();
  sub_240069C14();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  v9 = sub_240069C04();
  v10 = v22;
  *&v22[v21] = v9;
  v11 = objc_opt_self();
  v12 = v9;
  v13 = [v11 defaultCenter];
  sub_2400699C4();
  sub_2400699A4();
  v14 = sub_2400699B4();

  v15 = type metadata accessor for iOSManagementExpert();
  swift_allocObject();
  v16 = sub_240068418(v12);

  v17 = sub_240069590(&qword_281311048, type metadata accessor for iOSManagementExpert);
  v18 = &v10[OBJC_IVAR____TtC19AppProtectionDaemon9APDServer_platformExpert];
  *v18 = v16;
  *(v18 + 8) = v24;
  *(v18 + 3) = v15;
  *(v18 + 4) = v17;
  v19 = type metadata accessor for APDServer();
  v23.receiver = v10;
  v23.super_class = v19;
  return objc_msgSendSuper2(&v23, sel_init);
}

unint64_t sub_240069364()
{
  result = qword_281310F00;
  if (!qword_281310F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E3C5598, &unk_24006A520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281310F00);
  }

  return result;
}

void sub_2400693EC()
{
  sub_240069A04();
  v1 = *(v0 + OBJC_IVAR____TtC19AppProtectionDaemon9APDServer_serviceQueue);
  v2 = OBJC_IVAR____TtC19AppProtectionDaemon9APDServer_platformExpert;
  sub_2400695FC();
  v4 = swift_allocObject();
  sub_240069650(v0 + v2, v4 + 16);
  v3 = v1;
  sub_2400699F4();
  sub_2400699E4();
  __break(1u);
}

id APDServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APDServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240069590(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2400695FC()
{
  result = qword_281311058;
  if (!qword_281311058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281311058);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2400696E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240069730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240069788(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24006981C()
{
  v0 = sub_240069A34();
  __swift_allocate_value_buffer(v0, qword_281311078);
  __swift_project_value_buffer(v0, qword_281311078);
  return sub_240069A24();
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