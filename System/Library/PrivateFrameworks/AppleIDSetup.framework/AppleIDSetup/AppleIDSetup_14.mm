uint64_t sub_2406C6354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_240759C44();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v9 = type metadata accessor for MachRepairMessage();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3B8, &qword_240776B38) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3C0, &unk_240776B40);
  v5[18] = v13;
  v14 = *(v13 - 8);
  v5[19] = v14;
  v15 = *(v14 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406C6564, 0, 0);
}

uint64_t sub_2406C6564()
{
  v1 = v0[20];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3B0, &qword_240776B20);
  sub_24075A444();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_2406C662C;
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[18];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_2406C662C()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2406C6728, 0, 0);
}

uint64_t sub_2406C6728()
{
  v42 = v0;
  v1 = v0[17];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4B8500);
    v3 = sub_240759AC4();
    v4 = sub_24075A5C4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "End of outgoing messages to daemon", v5, 2u);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }

    v6 = v0[20];
    v8 = v0[16];
    v7 = v0[17];
    v10 = v0[14];
    v9 = v0[15];
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[11];
    v38 = v0[8];
    v39 = v0[7];
    v40 = v0[6];

    v14 = v0[1];

    return v14();
  }

  else
  {
    sub_2406CC580(v1, v0[16], type metadata accessor for MachRepairMessage);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v16 = v0[15];
    v17 = v0[16];
    v18 = sub_240759AE4();
    v0[22] = __swift_project_value_buffer(v18, qword_27E4B8500);
    sub_2406CB400(v17, v16, type metadata accessor for MachRepairMessage);
    v19 = sub_240759AC4();
    v20 = sub_24075A5D4();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[15];
    if (v21)
    {
      v23 = v0[14];
      v24 = v0[9];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = 136315138;
      sub_2406CB400(v22, v23, type metadata accessor for MachRepairMessage);
      v27 = sub_24075A0E4();
      v29 = v28;
      sub_2406CB3A0(v22, type metadata accessor for MachRepairMessage);
      v30 = sub_2405BBA7C(v27, v29, &v41);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_240579000, v19, v20, "Sending message: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x245CC76B0](v26, -1, -1);
      MEMORY[0x245CC76B0](v25, -1, -1);
    }

    else
    {

      sub_2406CB3A0(v22, type metadata accessor for MachRepairMessage);
    }

    v31 = v0[16];
    v32 = v0[3];
    v33 = swift_task_alloc();
    v0[23] = v33;
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    v34 = *(MEMORY[0x277D85A40] + 4);
    v35 = swift_task_alloc();
    v0[24] = v35;
    *v35 = v0;
    v35[1] = sub_2406C6BB8;
    v36 = v0[8];
    v37 = v0[4];

    return MEMORY[0x2822008A0](v36, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_2406CC83C, v33, v37);
  }
}

uint64_t sub_2406C6BB8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_2406C733C;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_2406C6CD4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2406C6CD4()
{
  v76 = v0;
  v1 = v0[22];
  v2 = *(v0[5] + 16);
  v2(v0[7], v0[8], v0[4]);
  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v75[0] = v72;
    *v10 = 136315138;
    v2(v8, v6, v9);
    v11 = sub_24075A0E4();
    v13 = v12;
    v14 = *(v7 + 8);
    v14(v6, v9);
    v15 = sub_2405BBA7C(v11, v13, v75);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v3, v4, "Sent message and received reply: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x245CC76B0](v72, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {
    v16 = v0[4];
    v17 = v0[5];

    v14 = *(v17 + 8);
    v14(v6, v16);
  }

  v18 = v0[25];
  v19 = v0[13];
  v21 = v0[8];
  v20 = v0[9];
  sub_2406CCB20(&qword_27E4B8300, type metadata accessor for MachRepairMessage);
  sub_240759C34();
  if (v18)
  {
    v22 = v0[5] + 8;
    v14(v0[8], v0[4]);
    v23 = v0[22];
    sub_2406CB400(v0[16], v0[11], type metadata accessor for MachRepairMessage);
    v24 = v18;
    v25 = sub_240759AC4();
    v26 = sub_24075A5E4();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[16];
    if (v27)
    {
      v29 = v0[14];
      v30 = v0[11];
      v31 = v0[9];
      v73 = v0[16];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v75[0] = v34;
      *v32 = 136315394;
      sub_2406CB400(v30, v29, type metadata accessor for MachRepairMessage);
      v35 = sub_24075A0E4();
      v37 = v36;
      sub_2406CB3A0(v30, type metadata accessor for MachRepairMessage);
      v38 = sub_2405BBA7C(v35, v37, v75);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      v39 = v18;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v40;
      *v33 = v40;
      _os_log_impl(&dword_240579000, v25, v26, "Failed to send message (%s) with error: %@", v32, 0x16u);
      sub_2405B8A50(v33, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x245CC76B0](v34, -1, -1);
      MEMORY[0x245CC76B0](v32, -1, -1);

      v41 = v73;
    }

    else
    {
      v56 = v0[11];

      sub_2406CB3A0(v56, type metadata accessor for MachRepairMessage);
      v41 = v28;
    }
  }

  else
  {
    v42 = v0[22];
    sub_2406CB400(v0[13], v0[12], type metadata accessor for MachRepairMessage);
    v43 = sub_240759AC4();
    v44 = sub_24075A5D4();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[16];
    if (v45)
    {
      v47 = v0[14];
      v48 = v0[12];
      v49 = v0[9];
      v71 = v0[4];
      v74 = v0[8];
      v69 = v0[13];
      v70 = v0[5] + 8;
      v68 = v0[16];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v75[0] = v51;
      *v50 = 136315138;
      sub_2406CB400(v48, v47, type metadata accessor for MachRepairMessage);
      v52 = sub_24075A0E4();
      v54 = v53;
      sub_2406CB3A0(v48, type metadata accessor for MachRepairMessage);
      v55 = sub_2405BBA7C(v52, v54, v75);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_240579000, v43, v44, "Decoded response: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x245CC76B0](v51, -1, -1);
      MEMORY[0x245CC76B0](v50, -1, -1);

      sub_2406CB3A0(v69, type metadata accessor for MachRepairMessage);
      v14(v74, v71);
      v41 = v68;
    }

    else
    {
      v58 = v0[12];
      v57 = v0[13];
      v59 = v0[8];
      v61 = v0[4];
      v60 = v0[5];

      sub_2406CB3A0(v58, type metadata accessor for MachRepairMessage);
      sub_2406CB3A0(v57, type metadata accessor for MachRepairMessage);
      v14(v59, v61);
      v41 = v46;
    }
  }

  sub_2406CB3A0(v41, type metadata accessor for MachRepairMessage);
  v62 = *(MEMORY[0x277D85798] + 4);
  v63 = swift_task_alloc();
  v0[21] = v63;
  *v63 = v0;
  v63[1] = sub_2406C662C;
  v64 = v0[20];
  v65 = v0[17];
  v66 = v0[18];

  return MEMORY[0x2822003E8](v65, 0, 0, v66);
}

uint64_t sub_2406C733C()
{
  v31 = v0;
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[22];
  sub_2406CB400(v0[16], v0[11], type metadata accessor for MachRepairMessage);
  v4 = v2;
  v5 = sub_240759AC4();
  v6 = sub_24075A5E4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = v0[14];
    v10 = v0[11];
    v11 = v0[9];
    v29 = v0[16];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v12 = 136315394;
    sub_2406CB400(v10, v9, type metadata accessor for MachRepairMessage);
    v15 = sub_24075A0E4();
    v17 = v16;
    sub_2406CB3A0(v10, type metadata accessor for MachRepairMessage);
    v18 = sub_2405BBA7C(v15, v17, &v30);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_240579000, v5, v6, "Failed to send message (%s) with error: %@", v12, 0x16u);
    sub_2405B8A50(v13, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CC76B0](v14, -1, -1);
    MEMORY[0x245CC76B0](v12, -1, -1);

    v21 = v29;
  }

  else
  {
    v22 = v0[11];

    sub_2406CB3A0(v22, type metadata accessor for MachRepairMessage);
    v21 = v8;
  }

  sub_2406CB3A0(v21, type metadata accessor for MachRepairMessage);
  v23 = *(MEMORY[0x277D85798] + 4);
  v24 = swift_task_alloc();
  v0[21] = v24;
  *v24 = v0;
  v24[1] = sub_2406C662C;
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[18];

  return MEMORY[0x2822003E8](v26, 0, 0, v27);
}

uint64_t sub_2406C7610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v40 = a1;
  v41 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = sub_240759BE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession);
  if (v18)
  {
    v39 = v4;
    v19 = qword_27E4B5F70;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_240759AE4();
    __swift_project_value_buffer(v20, qword_27E4BC350);

    v21 = sub_240759AC4();
    v22 = sub_24075A5D4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v23 = 136315138;
      v42 = v18;
      sub_240759BD4();

      v24 = sub_24075A0E4();
      v26 = v6;
      v27 = sub_2405BBA7C(v24, v25, &v43);

      *(v23 + 4) = v27;
      v6 = v26;
      _os_log_impl(&dword_240579000, v21, v22, "Activating inactive session: %s", v23, 0xCu);
      v28 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x245CC76B0](v28, -1, -1);
      MEMORY[0x245CC76B0](v23, -1, -1);
    }

    v29 = *(v39 + 112);
    sub_240759B24();
    sub_240759B64();
    sub_240759B54();
    sub_240759BB4();
    if (v6)
    {
    }
  }

  else
  {
    sub_2405B044C(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_endpoint, v12, &qword_27E4B9B18, &qword_24076CB30);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_2405B8A50(v12, &qword_27E4B9B18, &qword_24076CB30);
      if (qword_27E4B5F70 != -1)
      {
        swift_once();
      }

      v30 = sub_240759AE4();
      __swift_project_value_buffer(v30, qword_27E4BC350);
      v31 = sub_240759AC4();
      v32 = sub_24075A5D4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_240579000, v31, v32, "Creating new repair xpc session from scratch", v33, 2u);
        MEMORY[0x245CC76B0](v33, -1, -1);
      }

      v34 = sub_2406C7E34(0xD000000000000022, 0x8000000240786820);
      if (!v5)
      {
        return v34;
      }
    }

    else
    {
      (*(v14 + 32))(v17, v12, v13);
      v35 = sub_2406C7AB4(v17, v40, v41, a3, a4);
      if (!v5)
      {
        v18 = v35;
      }

      (*(v14 + 8))(v17, v13);
    }
  }

  return v18;
}

uint64_t sub_2406C7AB4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v8 = sub_240759B44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240759BE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v21 = sub_240759AE4();
  __swift_project_value_buffer(v21, qword_27E4BC350);
  v22 = *(v12 + 16);
  v39 = a1;
  v45 = v22;
  v22(v20, a1, v11);
  v23 = sub_240759AC4();
  v24 = sub_24075A5D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = v5;
    v26 = v25;
    v35 = swift_slowAlloc();
    v46 = v35;
    *v26 = 136315138;
    v45(v18, v20, v11);
    v27 = sub_24075A0E4();
    v36 = a5;
    v29 = v28;
    (*(v12 + 8))(v20, v11);
    v30 = sub_2405BBA7C(v27, v29, &v46);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_240579000, v23, v24, "Creating new session with xpc endpoint: %s", v26, 0xCu);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x245CC76B0](v31, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v20, v11);
  }

  sub_240759BD4();
  v45(v38, v39, v11);
  v32 = *(v41 + 112);
  sub_240759B34();

  return sub_240759BC4();
}

uint64_t sub_2406C7E34(uint64_t a1, unint64_t a2)
{
  v4 = sub_240759B44();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4BC350);

  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2405BBA7C(a1, a2, &v15);
    _os_log_impl(&dword_240579000, v7, v8, "Creating new session for mach service: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  sub_240759BD4();
  v11 = *(v14 + 112);

  v12 = v11;
  sub_240759B34();

  return sub_240759B14();
}

id __RepairController.init(queue:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_240759BE4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = type metadata accessor for RepairController();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = a1;
  swift_defaultActor_initialize();
  *(v10 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession) = 0;
  *(v10 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession) = 0;
  *(v10 + 112) = v11;
  sub_2405E150C(v5, v10 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  *(v10 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession) = 0;
  v12 = type metadata accessor for __RepairController();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR_____AISRepairController_repairController] = v10;
  v16.receiver = v13;
  v16.super_class = v12;

  v14 = objc_msgSendSuper2(&v16, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t sub_2406C82F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[118] = a7;
  v7[117] = a6;
  v7[116] = a5;
  v7[115] = a4;
  v8 = sub_240759C94();
  v7[119] = v8;
  v9 = *(v8 - 8);
  v7[120] = v9;
  v10 = *(v9 + 64) + 15;
  v7[121] = swift_task_alloc();
  v11 = sub_240759CE4();
  v7[122] = v11;
  v12 = *(v11 - 8);
  v7[123] = v12;
  v13 = *(v12 + 64) + 15;
  v7[124] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406C8418, 0, 0);
}

uint64_t sub_2406C8418()
{
  v0[125] = *(v0[115] + OBJC_IVAR_____AISRepairController_repairController);
  v1 = swift_task_alloc();
  v0[126] = v1;
  *v1 = v0;
  v1[1] = sub_2406C84C4;
  v2 = v0[116];

  return sub_2406C1AB0((v0 + 32), v2);
}

uint64_t sub_2406C84C4()
{
  v2 = *(*v1 + 1008);
  v5 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v3 = sub_2406C8B00;
  }

  else
  {
    v3 = sub_2406C85D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2406C85D8()
{
  v45 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 336);
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  v3 = *(v0 + 352);
  *(v0 + 112) = v3;
  v4 = *(v0 + 368);
  *(v0 + 128) = v4;
  v5 = *(v0 + 256);
  v6 = *(v0 + 272);
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  v7 = *(v0 + 288);
  v8 = *(v0 + 304);
  *(v0 + 48) = v7;
  *(v0 + 64) = v8;
  *(v0 + 184) = v8;
  *(v0 + 168) = v7;
  *(v0 + 152) = v6;
  *(v0 + 136) = v5;
  *(v0 + 248) = v4;
  *(v0 + 232) = v3;
  *(v0 + 216) = v2;
  *(v0 + 200) = v1;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v9 = sub_240759AE4();
  __swift_project_value_buffer(v9, qword_27E4BC350);
  sub_2405B044C(v0 + 16, v0 + 376, &qword_27E4BC398, &unk_240776B00);
  v10 = 0;
  v11 = sub_240759AC4();
  v12 = sub_24075A5C4();
  sub_2405B8A50(v0 + 16, &qword_27E4BC398, &unk_240776B00);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v44 = v14;
    *v13 = 136315394;
    v15 = *(v0 + 216);
    *(v0 + 680) = *(v0 + 200);
    *(v0 + 696) = v15;
    *(v0 + 712) = *(v0 + 232);
    *(v0 + 728) = *(v0 + 248);
    v16 = *(v0 + 152);
    *(v0 + 616) = *(v0 + 136);
    *(v0 + 632) = v16;
    v17 = *(v0 + 184);
    *(v0 + 648) = *(v0 + 168);
    *(v0 + 664) = v17;
    sub_2405B044C(v0 + 16, v0 + 736, &qword_27E4BC398, &unk_240776B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC398, &unk_240776B00);
    v18 = sub_24075A0E4();
    v20 = sub_2405BBA7C(v18, v19, &v44);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    *(v0 + 912) = 0;
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v22 = sub_24075A0E4();
    v24 = sub_2405BBA7C(v22, v23, &v44);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_240579000, v11, v12, "Returning repair report converted into objc: %s with error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v14, -1, -1);
    MEMORY[0x245CC76B0](v13, -1, -1);
  }

  v25 = *(v0 + 992);
  v42 = *(v0 + 984);
  v43 = *(v0 + 976);
  v26 = *(v0 + 968);
  v41 = *(v0 + 960);
  v27 = *(v0 + 952);
  v28 = *(v0 + 944);
  v29 = *(v0 + 936);
  v30 = *(*(v0 + 1000) + 112);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v28;
  v32 = *(v0 + 216);
  *(v31 + 96) = *(v0 + 200);
  *(v31 + 112) = v32;
  *(v31 + 128) = *(v0 + 232);
  v33 = *(v0 + 248);
  v34 = *(v0 + 152);
  *(v31 + 32) = *(v0 + 136);
  *(v31 + 48) = v34;
  v35 = *(v0 + 184);
  *(v31 + 64) = *(v0 + 168);
  *(v31 + 80) = v35;
  *(v31 + 144) = v33;
  *(v31 + 152) = 0;
  *(v0 + 888) = sub_2406CC5FC;
  *(v0 + 896) = v31;
  *(v0 + 856) = MEMORY[0x277D85DD0];
  *(v0 + 864) = 1107296256;
  *(v0 + 872) = sub_240644810;
  *(v0 + 880) = &block_descriptor_70;
  v36 = _Block_copy((v0 + 856));
  sub_2405B044C(v0 + 16, v0 + 496, &qword_27E4BC398, &unk_240776B00);
  v37 = v30;
  sub_24057B5BC(v29);
  sub_240759CC4();
  *(v0 + 904) = MEMORY[0x277D84F90];
  sub_2406CCB20(&qword_27E4B9B58, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v25, v26, v36);
  _Block_release(v36);

  sub_2405B8A50(v0 + 16, &qword_27E4BC398, &unk_240776B00);
  (*(v41 + 8))(v26, v27);
  (*(v42 + 8))(v25, v43);
  v38 = *(v0 + 896);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2406C8B00()
{
  v49 = v0;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1016);
  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4BC350);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1016);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to repair with error: %@", v7, 0xCu);
    sub_2405B8A50(v8, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v11 = *(v0 + 1016);

  v12 = v11;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E4BC350);
  sub_2405B044C(v0 + 16, v0 + 376, &qword_27E4BC398, &unk_240776B00);
  v13 = v11;
  v14 = sub_240759AC4();
  v15 = sub_24075A5C4();
  sub_2405B8A50(v0 + 16, &qword_27E4BC398, &unk_240776B00);

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v48 = v17;
    *v16 = 136315394;
    v18 = *(v0 + 216);
    *(v0 + 680) = *(v0 + 200);
    *(v0 + 696) = v18;
    *(v0 + 712) = *(v0 + 232);
    *(v0 + 728) = *(v0 + 248);
    v19 = *(v0 + 152);
    *(v0 + 616) = *(v0 + 136);
    *(v0 + 632) = v19;
    v20 = *(v0 + 184);
    *(v0 + 648) = *(v0 + 168);
    *(v0 + 664) = v20;
    sub_2405B044C(v0 + 16, v0 + 736, &qword_27E4BC398, &unk_240776B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC398, &unk_240776B00);
    v21 = sub_24075A0E4();
    v23 = sub_2405BBA7C(v21, v22, &v48);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    *(v0 + 912) = v11;
    v24 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v25 = sub_24075A0E4();
    v27 = sub_2405BBA7C(v25, v26, &v48);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_240579000, v14, v15, "Returning repair report converted into objc: %s with error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v17, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  v28 = v11;
  v29 = *(v0 + 992);
  v46 = *(v0 + 984);
  v47 = *(v0 + 976);
  v30 = *(v0 + 968);
  v44 = *(v0 + 952);
  v45 = *(v0 + 960);
  v31 = *(v0 + 944);
  v32 = *(v0 + 936);
  v33 = *(*(v0 + 1000) + 112);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v31;
  v35 = *(v0 + 216);
  *(v34 + 96) = *(v0 + 200);
  *(v34 + 112) = v35;
  *(v34 + 128) = *(v0 + 232);
  v36 = *(v0 + 248);
  v37 = *(v0 + 152);
  *(v34 + 32) = *(v0 + 136);
  *(v34 + 48) = v37;
  v38 = *(v0 + 184);
  *(v34 + 64) = *(v0 + 168);
  *(v34 + 80) = v38;
  *(v34 + 144) = v36;
  *(v34 + 152) = v28;
  *(v0 + 888) = sub_2406CC5FC;
  *(v0 + 896) = v34;
  *(v0 + 856) = MEMORY[0x277D85DD0];
  *(v0 + 864) = 1107296256;
  *(v0 + 872) = sub_240644810;
  *(v0 + 880) = &block_descriptor_70;
  v39 = _Block_copy((v0 + 856));
  sub_2405B044C(v0 + 16, v0 + 496, &qword_27E4BC398, &unk_240776B00);
  v40 = v33;
  sub_24057B5BC(v32);
  sub_240759CC4();
  *(v0 + 904) = MEMORY[0x277D84F90];
  sub_2406CCB20(&qword_27E4B9B58, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v29, v30, v39);
  _Block_release(v39);

  sub_2405B8A50(v0 + 16, &qword_27E4BC398, &unk_240776B00);
  (*(v45 + 8))(v30, v44);
  (*(v46 + 8))(v29, v47);
  v41 = *(v0 + 896);

  v42 = *(v0 + 8);

  return v42();
}

void sub_2406C9138(void (*a1)(void *, uint64_t), uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (a1)
  {
    if (*(a3 + 1))
    {
      v15 = a3[5];
      v16 = a3[6];
      v6 = *a3;
      v11 = a3[1];
      v12 = a3[2];
      v14 = a3[4];
      v13 = a3[3];
      v10 = *a3;
      v19 = *(a3 + 14);
      v17 = v19;
      v18[5] = v15;
      v18[6] = v16;
      v18[3] = v13;
      v18[4] = v14;
      v18[1] = v11;
      v18[2] = v12;
      v18[0] = v6;
      sub_2406425C8(v18, v20);
      RepairReport.into()(v7);
      v9 = v8;
      v20[4] = v14;
      v20[5] = v15;
      v20[6] = v16;
      v21 = v17;
      v20[0] = v10;
      v20[1] = v11;
      v20[2] = v12;
      v20[3] = v13;
      sub_2405EEB18(v20);
    }

    else
    {
      v9 = 0;
    }

    a1(v9, a4);
  }
}

uint64_t sub_2406C93A0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v74 = a7;
  v75 = a8;
  v84 = a3;
  v85 = a6;
  v73 = a5;
  v83 = a2;
  v10 = sub_240759C94();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  MEMORY[0x28223BE20](v10);
  v78 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_240759CE4();
  v77 = *(v79 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v72 = &v68 - v17;
  v68 = type metadata accessor for RepairContext();
  v70 = *(v68 - 8);
  v18 = *(v70 + 64);
  v19 = MEMORY[0x28223BE20](v68);
  v20 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = &v68 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v68 - v24;
  MEMORY[0x28223BE20](v23);
  v71 = &v68 - v26;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v27 = sub_240759AE4();
  __swift_project_value_buffer(v27, qword_27E4BC350);
  v28 = a1;
  v29 = sub_240759AC4();
  v30 = sub_24075A5C4();

  v31 = os_log_type_enabled(v29, v30);
  v86 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v28;
    *v33 = v28;
    v34 = v28;
    _os_log_impl(&dword_240579000, v29, v30, a4, v32, 0xCu);
    sub_2405B8A50(v33, &qword_27E4B92A0, &qword_240762400);
    v35 = v33;
    v20 = v86;
    MEMORY[0x245CC76B0](v35, -1, -1);
    MEMORY[0x245CC76B0](v32, -1, -1);
  }

  v36 = v28;
  v37 = sub_240759AC4();
  v38 = sub_24075A5D4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    *(v39 + 4) = v36;
    *v40 = v36;
    v41 = v36;
    _os_log_impl(&dword_240579000, v37, v38, "Attempting to build repair context with compat objective-c context: %@", v39, 0xCu);
    sub_2405B8A50(v40, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v40, -1, -1);
    v42 = v39;
    v20 = v86;
    MEMORY[0x245CC76B0](v42, -1, -1);
  }

  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v98 = 0;
  v97 = 192;
  v96 = 0;
  v99 = 0u;
  v100 = 0u;
  v101 = 1;
  v102 = 2;
  v103 = 0;
  AutomaticSetupModelExchange.init(queue:)(0, v110);
  v105 = &type metadata for AutomaticRepairModelExchange;
  v106 = &protocol witness table for AutomaticRepairModelExchange;
  v43 = swift_allocObject();
  v104 = v43;
  v43[115] = &unk_240768A90;
  v43[116] = 0;
  v43[117] = &unk_240768A98;
  v43[118] = 0;
  v43[119] = &unk_240768AA0;
  v43[120] = 0;
  v43[121] = &unk_240768AA8;
  v43[122] = 0;
  v43[123] = &unk_240768AB0;
  v43[124] = 0;
  memcpy(v43 + 2, v110, 0x388uLL);
  v107 = 0;
  v108 = 0;
  RepairContext.Builder._context(_:)(v36);
  RepairContext.Builder.build()(v25);
  v44 = v71;
  sub_2406CC580(v25, v71, type metadata accessor for RepairContext);
  v45 = v69;
  sub_2406CB400(v44, v69, type metadata accessor for RepairContext);
  v46 = v82;
  v47 = sub_240759AC4();
  v48 = sub_24075A5D4();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v109[0] = v82;
    *v49 = 136315394;
    *&v87 = *&v46[OBJC_IVAR_____AISRepairController_repairController];
    type metadata accessor for RepairController();

    v50 = sub_24075A0E4();
    v52 = sub_2405BBA7C(v50, v51, v109);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2080;
    sub_2406CB400(v45, v86, type metadata accessor for RepairContext);
    v53 = sub_24075A0E4();
    v55 = v54;
    sub_2406CB3A0(v45, type metadata accessor for RepairContext);
    v56 = sub_2405BBA7C(v53, v55, v109);

    *(v49 + 14) = v56;
    _os_log_impl(&dword_240579000, v47, v48, "Calling repair controller (%s with built context: %s", v49, 0x16u);
    v57 = v82;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v57, -1, -1);
    v58 = v49;
    v20 = v86;
    MEMORY[0x245CC76B0](v58, -1, -1);
  }

  else
  {

    sub_2406CB3A0(v45, type metadata accessor for RepairContext);
  }

  v59 = sub_24075A3D4();
  v60 = v72;
  (*(*(v59 - 8) + 56))(v72, 1, 1, v59);
  sub_2406CB400(v44, v20, type metadata accessor for RepairContext);
  v61 = (*(v70 + 80) + 40) & ~*(v70 + 80);
  v62 = swift_allocObject();
  v62[2] = 0;
  v62[3] = 0;
  v62[4] = v46;
  sub_2406CC580(v20, v62 + v61, type metadata accessor for RepairContext);
  v63 = (v62 + ((v18 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
  v65 = v83;
  v64 = v84;
  *v63 = v83;
  v63[1] = v64;
  v66 = v46;
  v85(v65, v64);
  sub_240602F08(0, 0, v60, v74, v62);

  return sub_2406CB3A0(v44, type metadata accessor for RepairContext);
}

uint64_t sub_2406C9EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_240759C94();
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();
  v11 = sub_240759CE4();
  v7[25] = v11;
  v12 = *(v11 - 8);
  v7[26] = v12;
  v13 = *(v12 + 64) + 15;
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406C9FFC, 0, 0);
}

uint64_t sub_2406C9FFC()
{
  v0[28] = *(v0[18] + OBJC_IVAR_____AISRepairController_repairController);
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_2406CA0A8;
  v2 = v0[19];

  return sub_2406C299C((v0 + 8), v2);
}

uint64_t sub_2406CA0A8()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_2406CA634;
  }

  else
  {
    v3 = sub_2406CA1BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2406CA1BC()
{
  v35 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4BC350);
  sub_2406424AC(v1, v2);
  v6 = 0;
  v7 = sub_240759AC4();
  v8 = sub_24075A5C4();
  sub_240609C34(v1, v2);

  v33 = v4;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315394;
    v0[12] = v1;
    v0[13] = v2;
    v0[14] = v3;
    v0[15] = v4;
    sub_2406424AC(v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC390, &unk_240776AF0);
    v11 = sub_24075A0E4();
    v13 = sub_2405BBA7C(v11, v12, &v34);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[17] = 0;
    v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v15 = sub_24075A0E4();
    v17 = sub_2405BBA7C(v15, v16, &v34);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_240579000, v7, v8, "Returning symptom report converted into objc: %s with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  v26 = v0[27];
  v31 = v0[26];
  v32 = v0[25];
  v30 = v0[23];
  v18 = v0[21];
  v28 = v0[24];
  v29 = v0[22];
  v19 = v0[20];
  v20 = *(v0[28] + 112);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v18;
  v21[4] = v1;
  v21[5] = v2;
  v21[6] = v3;
  v21[7] = v33;
  v21[8] = 0;
  v0[6] = sub_2406CC5E8;
  v0[7] = v21;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_240644810;
  v0[5] = &block_descriptor_63_0;
  v27 = _Block_copy(v0 + 2);
  sub_2406424AC(v1, v2);
  v22 = v20;
  sub_24057B5BC(v19);
  sub_240759CC4();
  v0[16] = MEMORY[0x277D84F90];
  sub_2406CCB20(&qword_27E4B9B58, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v26, v28, v27);
  _Block_release(v27);

  sub_240609C34(v1, v2);
  (*(v30 + 8))(v28, v29);
  (*(v31 + 8))(v26, v32);
  v23 = v0[7];

  v24 = v0[1];

  return v24();
}

uint64_t sub_2406CA634()
{
  v42 = v0;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4BC350);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to generate symptom report with error: %@", v7, 0xCu);
    sub_2405B8A50(v8, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v11 = v0[30];

  v12 = v11;
  if (qword_27E4B5F70 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27E4BC350);
  sub_2406424AC(0, 0);
  v13 = v11;
  v14 = sub_240759AC4();
  v15 = sub_24075A5C4();
  sub_240609C34(0, 0);

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41 = v17;
    *v16 = 136315394;
    *(v0 + 6) = 0u;
    *(v0 + 7) = 0u;
    sub_2406424AC(0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC390, &unk_240776AF0);
    v18 = sub_24075A0E4();
    v20 = sub_2405BBA7C(v18, v19, &v41);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v0[17] = v11;
    v21 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8A20, qword_240767ED0);
    v22 = sub_24075A0E4();
    v24 = sub_2405BBA7C(v22, v23, &v41);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_240579000, v14, v15, "Returning symptom report converted into objc: %s with error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v17, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  v25 = v0[27];
  v39 = v0[26];
  v40 = v0[25];
  v26 = v0[24];
  v27 = v0[21];
  v37 = v0[22];
  v38 = v0[23];
  v28 = v0[20];
  v29 = *(v0[28] + 112);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v27;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  *(v30 + 64) = v11;
  v0[6] = sub_2406CC5E8;
  v0[7] = v30;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_240644810;
  v0[5] = &block_descriptor_63_0;
  v31 = _Block_copy(v0 + 2);
  sub_2406424AC(0, 0);
  v36 = v11;
  v32 = v29;
  sub_24057B5BC(v28);
  sub_240759CC4();
  v0[16] = MEMORY[0x277D84F90];
  sub_2406CCB20(&qword_27E4B9B58, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B60, &unk_240770600);
  sub_240635FA0(&qword_27E4B9B68, &qword_27E4B9B60, &unk_240770600);
  sub_24075A794();
  MEMORY[0x245CC6370](0, v25, v26, v31);
  _Block_release(v31);

  sub_240609C34(0, 0);
  (*(v38 + 8))(v26, v37);
  (*(v39 + 8))(v25, v40);
  v33 = v0[7];

  v34 = v0[1];

  return v34();
}

void sub_2406CABB8(void (*a1)(id, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a4)
    {

      v9 = SymptomReport.into()();
    }

    else
    {
      v9 = 0;
    }

    a1(v9, a7);
  }
}

id __RepairController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id __RepairController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __RepairController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2406CAE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a1;
  v38 = a2;
  v6 = sub_24075A634();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24075A624();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9AF8, &qword_24076CB20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v34 - v16;
  v18 = sub_240759CB4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_240759CE4();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v27 = v37;
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession) = 0;
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_activeSession) = 0;
  if (!v27)
  {
    v34[0] = v26;
    v34[1] = v10;
    v34[2] = v13;
    v37 = a3;
    qos_class_self();
    sub_240759CA4();
    v28 = *(v19 + 48);
    if (v28(v17, 1, v18) == 1)
    {
      (*(v19 + 104))(v22, *MEMORY[0x277D851B0], v18);
      v29 = v28(v17, 1, v18);
      v30 = v35;
      v31 = v9;
      if (v29 != 1)
      {
        sub_2405B8A50(v17, &qword_27E4B9AF8, &qword_24076CB20);
      }
    }

    else
    {
      (*(v19 + 32))(v22, v17, v18);
      v30 = v35;
      v31 = v9;
    }

    v35 = sub_2406082EC();
    sub_240759CD4();
    v39 = MEMORY[0x277D84F90];
    sub_2406CCB20(&qword_280FAD6F8, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B08, &qword_24076CB28);
    sub_240635FA0(&qword_280FAD728, &qword_27E4B9B08, &qword_24076CB28);
    sub_24075A794();
    (*(v30 + 104))(v31, *MEMORY[0x277D85260], v36);
    v27 = sub_24075A664();
    a3 = v37;
  }

  *(v4 + 112) = v27;
  sub_2405E150C(v38, v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_endpoint, &qword_27E4B9B18, &qword_24076CB30);
  v32 = *(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession);
  *(v4 + OBJC_IVAR____TtC12AppleIDSetup16RepairController_inactiveSession) = a3;

  return v4;
}

uint64_t type metadata accessor for RepairController()
{
  result = qword_27E4BC370;
  if (!qword_27E4BC370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2406CB2E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_2406C17EC(a1, v4, v5, v6);
}

uint64_t sub_2406CB398(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2406A90DC(a1);
}

uint64_t sub_2406CB3A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2406CB400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2406CB4A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RepairContext() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2405DA4B0;

  return sub_2406C82F0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroy_11Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_14Tm()
{
  v109 = type metadata accessor for RepairContext();
  v110 = *(*(v109 - 8) + 80);
  v106 = *(*(v109 - 8) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v107 = (v110 + 40) & ~v110;
  v2 = v0 + v107;
  v3 = *(v0 + v107 + 8);

  v4 = *(v0 + v107 + 24);

  v5 = *(v0 + v107 + 40);

  v6 = *(v0 + v107 + 56);

  v7 = *(v0 + v107 + 72);

  v108 = type metadata accessor for RepairModel();
  v8 = v0 + v107 + *(v108 + 20);
  sub_240604AB8(*(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32) | ((*(v8 + 36) | (*(v8 + 38) << 16)) << 32));
  v9 = *(v8 + 88);
  if (v9 <= 0xF9)
  {
    sub_2405AEA70(*(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), v9);
  }

  v10 = *(v8 + 112);

  v11 = *(v8 + 128);

  v12 = *(v8 + 160);

  sub_240604AE0(*(v8 + 184), *(v8 + 192), *(v8 + 200), *(v8 + 208));
  v13 = *(v8 + 216);

  v14 = *(v8 + 224);

  sub_240604AE0(*(v8 + 240), *(v8 + 248), *(v8 + 256), *(v8 + 264));
  v15 = *(v8 + 272);

  v16 = *(v8 + 288);
  if (v16 != 1)
  {

    v17 = *(v8 + 304);
    if (v17 >> 60 != 15)
    {
      sub_2405BCD98(*(v8 + 296), v17);
    }
  }

  if (*(v8 + 328))
  {

    v18 = *(v8 + 336);

    v19 = *(v8 + 344);
  }

  v20 = *(v8 + 360);

  v21 = *(v8 + 376);

  v22 = type metadata accessor for SetupModel();
  v23 = (v8 + *(v22 + 36));
  v24 = type metadata accessor for IdMSAccount();
  v25 = *(*(v24 - 1) + 48);
  if (!v25(v23, 1, v24))
  {
    v26 = v23[1];

    v27 = v23[3];

    v28 = v23[5];

    v29 = v23[7];

    v30 = v23[9];

    v31 = v25;
    v32 = v24[5];
    v33 = sub_2407595A4();
    v34 = v23 + v32;
    v25 = v31;
    (*(*(v33 - 8) + 8))(v34, v33);
    v35 = (v23 + v24[6]);
    v99 = v35[18];
    v102 = v35[19];
    sub_240604B08(*v35, v35[1], v35[2], v35[3], v35[4], v35[5], v35[6], v35[7], v35[8], v35[9], v35[10], v35[11], v35[12], v35[13], v35[14], v35[15], v35[16], v35[17]);
    v36 = *(v23 + v24[7]);

    v37 = (v23 + v24[8]);
    if (*v37 != 1)
    {
    }
  }

  v38 = type metadata accessor for AuthenticationModel(0);
  v39 = (v23 + v38[5]);
  if (v39[1])
  {

    v40 = v39[3];

    v41 = v39[5];

    v42 = v39[7];

    v43 = v39[9];
  }

  v44 = *(v23 + v38[7] + 8);

  v45 = *(v23 + v38[8]);

  v46 = v23 + v38[10];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v105 = v25;
      v48 = *(v46 + 1);

      v49 = *(v46 + 3);

      v50 = *(v46 + 5);

      v51 = *(v46 + 7);

      v52 = *(v46 + 9);

      v53 = v24[5];
      v54 = sub_2407595A4();
      (*(*(v54 - 8) + 8))(&v46[v53], v54);
      v55 = &v46[v24[6]];
      v100 = v55[18];
      v103 = v55[19];
      sub_240604B08(*v55, v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v55[16], v55[17]);
      v56 = *&v46[v24[7]];

      v57 = &v46[v24[8]];
      if (*v57 != 1)
      {
      }

      v25 = v105;
      break;
    case 2u:
    case 3u:
      v58 = *(v46 + 1);

      v59 = *(v46 + 3);

      v60 = *(v46 + 6);

      v61 = v46[96];
      if (v61 != 255)
      {
        sub_2405B0558(*(v46 + 8), *(v46 + 9), *(v46 + 10), *(v46 + 11), v61);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v46 + 5) != 1)
      {

        v47 = *(v46 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v63 = *(v46 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v62 = *v46;

      break;
    default:
      break;
  }

  v64 = (v23 + v38[11]);
  if (*v64)
  {
    v65 = v64[1];
  }

  v66 = (v8 + *(v22 + 40));
  if (!v25(v66, 1, v24))
  {
    v67 = *(v66 + 1);

    v68 = *(v66 + 3);

    v69 = *(v66 + 5);

    v70 = *(v66 + 7);

    v71 = *(v66 + 9);

    v72 = v24[5];
    v73 = sub_2407595A4();
    (*(*(v73 - 8) + 8))(&v66[v72], v73);
    v74 = &v66[v24[6]];
    v101 = v74[18];
    v104 = v74[19];
    sub_240604B08(*v74, v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8], v74[9], v74[10], v74[11], v74[12], v74[13], v74[14], v74[15], v74[16], v74[17]);
    v75 = *&v66[v24[7]];

    v76 = &v66[v24[8]];
    if (*v76 != 1)
    {
    }
  }

  v77 = type metadata accessor for SignInModel();
  v78 = &v66[v77[5]];
  if (*(v78 + 1))
  {

    v79 = *(v78 + 3);

    v80 = *(v78 + 5);

    v81 = *(v78 + 7);

    v82 = *(v78 + 9);

    v83 = *(v78 + 11);
    if (v83 >> 60 != 15)
    {
      sub_2405BCD98(*(v78 + 10), v83);
    }
  }

  v84 = *&v66[v77[6]];

  v85 = *&v66[v77[7]];

  v86 = &v66[v77[10]];
  if (*(v86 + 1))
  {

    v87 = *(v86 + 2);

    v88 = *(v86 + 3);
  }

  v89 = *&v66[v77[11] + 8];

  v90 = *&v66[v77[14] + 8];

  sub_240604C7C(*&v66[v77[16]], *&v66[v77[16] + 8], v66[v77[16] + 16]);
  v91 = *&v66[v77[17] + 8];

  v92 = &v66[v77[19]];
  sub_240604C90(*v92, *(v92 + 1), *(v92 + 2), *(v92 + 3), *(v92 + 4), *(v92 + 5), *(v92 + 6), *(v92 + 7), *(v92 + 8), *(v92 + 9), *(v92 + 10), *(v92 + 11), v92[96]);
  v93 = v2 + *(v108 + 24);
  v94 = *(v93 + 40);
  if (v94 <= 0xFA)
  {
    sub_2405EE680(*v93, *(v93 + 8), *(v93 + 16), *(v93 + 24), *(v93 + 32), v94);
  }

  v95 = (v106 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v2 + *(v109 + 20));
  if (v96[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  if (*(v0 + v95))
  {
    v97 = *(v0 + v95 + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v95 + 16, v110 | 7);
}

uint64_t sub_2406CBE48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RepairContext() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2405DA4B0;

  return sub_2406C9EDC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

void sub_2406CBF8C()
{
  sub_240635A98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of RepairController.repair(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of RepairController.generateSymptomReport(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405CE450;

  return v10(a1, a2);
}

uint64_t sub_2406CC384()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2406C4768((v0 + 16), v0 + v2, v5);
}

uint64_t sub_2406CC46C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2406CC494(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8000, &unk_240776AD0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2406C49BC(a1, v1 + v4, v7);
}

uint64_t sub_2406CC580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_2406CC614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3A0, &qword_240776B10) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RepairContext() - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2406C5860(a1, v2 + v6, v10, a2);
}

uint64_t sub_2406CC710(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC3B0, &qword_240776B20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_2406C6354(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2406CC83C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2406C1010(a1);
}

uint64_t sub_2406CC848(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_240759C44() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RepairContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC380, &qword_240776AC8) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2405DA4B0;

  return sub_2406C5F18(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_85Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2406CCAA4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC1B8, &qword_2407761F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2406BBA5C(a1, v4);
}

uint64_t sub_2406CCB20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2406CCD68@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a1();
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t sub_2406CCE40@<X0>(void (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  a1();
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, 0, 1, v5);
}

uint64_t sub_2406CCF18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_2406CCFF8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id AISDaemonInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISDaemonInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISDaemonInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AISDaemonInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISDaemonInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12AppleIDSetup18AISDaemonInterfaceC03xpcD0So14NSXPCInterfaceCyFZ_0()
{
  [objc_opt_self() interfaceWithProtocol_];
  type metadata accessor for SignOutContext();
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8940, &qword_240767DC0);
  [v0 addObject_];
  swift_unknownObjectRelease();
  v1 = v0;
  sub_24075A524();

  result = sub_24075A9C4();
  __break(1u);
  return result;
}

uint64_t Message.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2407597B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Message.metrics.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*Message.metrics.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_3;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*Message.command.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_3;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t static Message.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_240759784() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for Message();
  if (*(a1 + *(v7 + 36)) != *(a2 + *(v7 + 36)))
  {
    return 0;
  }

  v8 = v7;
  v9 = *(v7 + 40);
  v10 = *(a1 + v9);
  v15 = *(a2 + v9);
  v16 = v10;

  v11 = static Message.Metrics.== infix(_:_:)(&v16, &v15);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(v8 + 44);
  v13 = *(*(a4 + 24) + 8);
  return sub_24075A054() & 1;
}

uint64_t sub_2406CD5DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2406CD738(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x7363697274656DLL;
  if (a1 != 2)
  {
    v2 = 0x646E616D6D6F63;
  }

  if (a1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2406CD7A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2406CD738(*v1);
}

uint64_t sub_2406CD7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_2406CD5DC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2406CD7E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2406CD834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.encode(to:)(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = v5;
  type metadata accessor for Message.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_24075AC24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v27 = 0;
  sub_2407597B4();
  sub_2405D5548(&qword_27E4BC3C8);
  v12 = v22;
  sub_24075ABE4();
  if (!v12)
  {
    v13 = v19;
    v14 = *(v3 + v21[9]);
    v26 = 1;
    sub_24075ABF4();
    v23 = *(v3 + v21[10]);
    v25 = 2;
    type metadata accessor for Message.Metrics();

    swift_getWitnessTable();
    sub_24075ABE4();

    v15 = v21[11];
    v24 = 3;
    v16 = *(v13 + 16);
    sub_24075ABE4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t Message.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_2407597B4();
  sub_2405D5548(&qword_27E4B7438);
  sub_24075A004();
  v5 = *(v2 + *(a2 + 36));
  sub_24075AE94();
  v12 = *(v2 + *(a2 + 40));
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for Message.Metrics();

  Message.Metrics.hash(into:)(a1, v8);

  v9 = *(v7 + 24);
  v10 = v2 + *(a2 + 44);
  return sub_24075A004();
}

uint64_t Message.hashValue.getter(uint64_t a1)
{
  sub_24075AE64();
  Message.hash(into:)(v3, a1);
  return sub_24075AED4();
}

uint64_t Message.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v32 = *(a2 - 1);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](a1);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2407597B4();
  v36 = *(v38 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Message.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_24075AB44();
  v35 = *(v41 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v41);
  v13 = &v30 - v12;
  v37 = a3;
  v14 = type metadata accessor for Message();
  v31 = *(v14 - 1);
  v15 = *(v31 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v13;
  v19 = v42;
  sub_24075AF34();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v35;
  v21 = v36;
  v42 = v17;
  v22 = v37;
  v47 = 0;
  sub_2405D5548(qword_27E4BC3D0);
  v23 = v38;
  sub_24075AAF4();
  v24 = v23;
  v25 = v42;
  (*(v21 + 32))(v42, v39, v24);
  v46 = 1;
  v25[v14[9]] = sub_24075AB04();
  v39 = a2;
  type metadata accessor for Message.Metrics();
  v45 = 2;
  swift_getWitnessTable();
  sub_24075AAF4();
  *&v25[v14[10]] = v43;
  v44 = 3;
  v26 = *(v22 + 8);
  v27 = v39;
  sub_24075AAF4();
  (*(v20 + 8))(v40, v41);
  (*(v32 + 32))(&v25[v14[11]], v34, v27);
  v28 = v31;
  (*(v31 + 16))(v33, v25, v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v28 + 8))(v25, v14);
}

uint64_t sub_2406CE224(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  Message.hash(into:)(v4, a2);
  return sub_24075AED4();
}

uint64_t sub_2406CE268(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2406CE2FC(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_2406CE3C0(uint64_t a1)
{
  result = sub_2407597B4();
  if (v3 <= 0x3F)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    result = type metadata accessor for Message.Metrics();
    if (v6 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2406CE470(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_2407597B4() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + (v10 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1);
      }

      else
      {
        v23 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v8 + 48);

          return v25((v23 + v11 + 16) & ~v11, v9);
        }

        else
        {
          v24 = *(v23 + 8);
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + (v10 & 0xFFFFFFF8) + 16) & ~v11) + *(v8 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_2406CE6E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_2407597B4() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + (v12 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v16)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
LABEL_14:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

LABEL_51:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 == v15)
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }

  else
  {
    v24 = &a1[v12] & 0xFFFFFFFFFFFFFFF8;
    if ((v14 & 0x80000000) != 0)
    {
      v26 = *(v10 + 56);

      v26((v24 + v13 + 16) & ~v13, a2, v11);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v25 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v25 = (a2 - 1);
      }

      *(v24 + 8) = v25;
    }
  }
}

uint64_t sub_2406CEA64(uint64_t a1)
{
  v2 = sub_2406DB538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CEAA0(uint64_t a1)
{
  v2 = sub_2406DB538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CEADC(uint64_t a1)
{
  v2 = sub_2406DB69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CEB18(uint64_t a1)
{
  v2 = sub_2406DB69C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CEB54(uint64_t a1)
{
  v2 = sub_2406DB648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CEB90(uint64_t a1)
{
  v2 = sub_2406DB648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CEBCC(uint64_t a1)
{
  v2 = sub_2406DB4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CEC08(uint64_t a1)
{
  v2 = sub_2406DB4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CEC44(uint64_t a1)
{
  v2 = sub_2406DB854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CEC80(uint64_t a1)
{
  v2 = sub_2406DB854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CECBC(uint64_t a1)
{
  v2 = sub_2406DB5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CECF8(uint64_t a1)
{
  v2 = sub_2406DB5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406CED34(uint64_t a1)
{
  v2 = sub_2406DB758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406CED70(uint64_t a1)
{
  v2 = sub_2406DB758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1Command.Request.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC550, &qword_240776F60);
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = *(v94 + 64);
  MEMORY[0x28223BE20](v2);
  v91 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC558, &qword_240776F68);
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v5);
  v90 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC560, &qword_240776F70);
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = *(v88 + 64);
  MEMORY[0x28223BE20](v8);
  v87 = &v76 - v10;
  v85 = type metadata accessor for AuthenticateCommand.Request(0);
  v11 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v86 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC568, &qword_240776F78);
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = *(v83 + 64);
  MEMORY[0x28223BE20](v13);
  v82 = &v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC570, &qword_240776F80);
  v80 = *(v16 - 8);
  v81 = v16;
  v17 = *(v80 + 64);
  MEMORY[0x28223BE20](v16);
  v77 = &v76 - v18;
  v76 = type metadata accessor for SignInCommand.Request(0);
  v19 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC578, &qword_240776F88);
  v78 = *(v22 - 8);
  v79 = v22;
  v23 = *(v78 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v76 - v24;
  v26 = type metadata accessor for V1Command.Request(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC580, &qword_240776F90);
  v97 = *(v115 - 8);
  v30 = *(v97 + 64);
  MEMORY[0x28223BE20](v115);
  v32 = &v76 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DB4E4();
  v96 = v32;
  sub_24075AF74();
  sub_2406DC664(v98, v29, type metadata accessor for V1Command.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v54 = v86;
      sub_2406DB6F0(v29, v86, type metadata accessor for AuthenticateCommand.Request);
      LOBYTE(v105) = 3;
      sub_2406DB648();
      v55 = v87;
      v56 = v115;
      v57 = v96;
      sub_24075AB54();
      sub_2406DB7AC(&qword_27E4B8BD8, type metadata accessor for AuthenticateCommand.Request);
      v58 = v89;
      sub_24075ABE4();
      (*(v88 + 8))(v55, v58);
      sub_2406DB7F4(v54, type metadata accessor for AuthenticateCommand.Request);
      return (*(v97 + 8))(v57, v56);
    }

    else
    {
      v40 = v115;
      if (EnumCaseMultiPayload == 4)
      {
        v41 = *(v29 + 3);
        v107 = *(v29 + 2);
        v108 = v41;
        v109[0] = *(v29 + 4);
        *(v109 + 9) = *(v29 + 73);
        v42 = *(v29 + 1);
        v105 = *v29;
        v106 = v42;
        LOBYTE(v99) = 4;
        sub_2406DB5F4();
        v43 = v90;
        v44 = v96;
        sub_24075AB54();
        v101 = v107;
        v102 = v108;
        v103[0] = v109[0];
        *(v103 + 9) = *(v109 + 9);
        v99 = v105;
        v100 = v106;
        sub_2405F5F80();
        v45 = v93;
        sub_24075ABE4();
        (*(v92 + 8))(v43, v45);
        (*(v97 + 8))(v44, v40);
        return sub_2405F717C(&v105);
      }

      else
      {
        v68 = *v29;
        v69 = *(v29 + 1);
        v71 = *(v29 + 2);
        v70 = *(v29 + 3);
        v72 = *(v29 + 4);
        LOBYTE(v105) = 5;
        sub_2406DB538();
        v73 = v91;
        v74 = v96;
        sub_24075AB54();
        v98 = v68;
        *&v105 = v68;
        *(&v105 + 1) = v69;
        v93 = v69;
        *&v106 = v71;
        *(&v106 + 1) = v70;
        *&v107 = v72;
        sub_2406DB58C();
        v75 = v95;
        sub_24075ABE4();
        (*(v94 + 8))(v73, v75);
        (*(v97 + 8))(v74, v115);
        return sub_2406DB5E0(v98, v93);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DB6F0(v29, v21, type metadata accessor for SignInCommand.Request);
      LOBYTE(v105) = 1;
      sub_2406DB758();
      v35 = v77;
      v36 = v115;
      v37 = v96;
      sub_24075AB54();
      sub_2406DB7AC(&qword_27E4B9398, type metadata accessor for SignInCommand.Request);
      v38 = v81;
      sub_24075ABE4();
      (*(v80 + 8))(v35, v38);
      sub_2406DB7F4(v21, type metadata accessor for SignInCommand.Request);
      return (*(v97 + 8))(v37, v36);
    }

    else
    {
      v60 = *(v29 + 1);
      v98 = *v29;
      v59 = v98;
      v61 = *(v29 + 3);
      v94 = *(v29 + 2);
      v95 = v60;
      v62 = v29[32];
      LOBYTE(v105) = 2;
      sub_2406DB69C();
      v63 = v82;
      v64 = v115;
      v65 = v96;
      sub_24075AB54();
      *&v105 = v59;
      *(&v105 + 1) = v60;
      v66 = v94;
      *&v106 = v94;
      *(&v106 + 1) = v61;
      LOBYTE(v107) = v62;
      sub_2405E17C4();
      v67 = v84;
      sub_24075ABE4();
      (*(v83 + 8))(v63, v67);
      (*(v97 + 8))(v65, v64);
      return sub_2405E1818(v98, v95, v66, v61, v62);
    }
  }

  else
  {
    v46 = *(v29 + 9);
    v112 = *(v29 + 8);
    v113 = v46;
    v114 = *(v29 + 20);
    v47 = *(v29 + 5);
    v109[0] = *(v29 + 4);
    v109[1] = v47;
    v48 = *(v29 + 7);
    v110 = *(v29 + 6);
    v111 = v48;
    v49 = *(v29 + 1);
    v105 = *v29;
    v106 = v49;
    v50 = *(v29 + 3);
    v107 = *(v29 + 2);
    v108 = v50;
    LOBYTE(v99) = 0;
    sub_2406DB854();
    v51 = v115;
    v52 = v96;
    sub_24075AB54();
    v103[4] = v112;
    v103[5] = v113;
    v104 = v114;
    v103[0] = v109[0];
    v103[1] = v109[1];
    v103[2] = v110;
    v103[3] = v111;
    v99 = v105;
    v100 = v106;
    v101 = v107;
    v102 = v108;
    sub_2406C010C();
    v53 = v79;
    sub_24075ABE4();
    (*(v78 + 8))(v25, v53);
    (*(v97 + 8))(v52, v51);
    return sub_2406BD370(&v105);
  }
}

uint64_t V1Command.Request.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AuthenticateCommand.Request(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SignInCommand.Request(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for V1Command.Request(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2406DC664(v2, v15, type metadata accessor for V1Command.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v27 = *(v15 + 9);
      v62 = *(v15 + 8);
      v63 = v27;
      v64 = *(v15 + 20);
      v28 = *(v15 + 5);
      v59[0] = *(v15 + 4);
      v59[1] = v28;
      v29 = *(v15 + 7);
      v60 = *(v15 + 6);
      v61 = v29;
      v30 = *(v15 + 1);
      v55 = *v15;
      v56 = v30;
      v31 = *(v15 + 3);
      v57 = *(v15 + 2);
      v58 = v31;
      MEMORY[0x245CC6BA0](0);
      v53[8] = v62;
      v53[9] = v63;
      v54 = v64;
      v53[4] = v59[0];
      v53[5] = v59[1];
      v53[6] = v60;
      v53[7] = v61;
      v53[0] = v55;
      v53[1] = v56;
      v53[2] = v57;
      v53[3] = v58;
      HandshakeCommand.Request.hash(into:)(a1);
      return sub_2406BD370(&v55);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DB6F0(v15, v11, type metadata accessor for SignInCommand.Request);
      MEMORY[0x245CC6BA0](1);
      IdMSAccount.hash(into:)(a1);
      v17 = &v11[v8[5]];
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = *(v17 + 10);
      v21 = *(v17 + 11);
      sub_24075A114();
      sub_24075AE94();
      if (v21 >> 60 != 15)
      {
        sub_2407596D4();
      }

      v49 = v11[v8[6]];
      sub_24075AE94();
      v50 = v11[v8[7]];
      sub_24075AE94();
      return sub_2406DB7F4(v11, type metadata accessor for SignInCommand.Request);
    }

    v36 = *v15;
    v37 = *(v15 + 1);
    v39 = *(v15 + 2);
    v38 = *(v15 + 3);
    v40 = v15[32];
    MEMORY[0x245CC6BA0](2);
    if (v40)
    {
      v41 = 4;
    }

    else
    {
      v41 = 0;
    }

    v42 = (v38 >> 60) & 3 | v41;
    if (v42 <= 1)
    {
      if (v42)
      {
        MEMORY[0x245CC6BA0](3);
        return sub_24075AE94();
      }

      MEMORY[0x245CC6BA0](1);
      goto LABEL_31;
    }

    if (v42 == 2)
    {
      MEMORY[0x245CC6BA0](4);
      sub_24075A114();
      return sub_2405E1818(v36, v37, v39, v38, v40);
    }

    if (v42 == 3)
    {
      MEMORY[0x245CC6BA0](5);
      sub_24075A114();
LABEL_31:
      sub_2407596D4();
      return sub_2405E1818(v36, v37, v39, v38, v40);
    }

    if (v39 | v37 | v36 | v38)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_2406DB6F0(v15, v7, type metadata accessor for AuthenticateCommand.Request);
    MEMORY[0x245CC6BA0](3);
    IdMSAccount.hash(into:)(a1);
    v33 = &v7[*(v4 + 20)];
    v34 = *(v33 + 3);
    v57 = *(v33 + 2);
    v58 = v34;
    LOBYTE(v59[0]) = v33[64];
    v35 = *(v33 + 1);
    v55 = *v33;
    v56 = v35;
    sub_240601BC0();
    return sub_2406DB7F4(v7, type metadata accessor for AuthenticateCommand.Request);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v22 = *(v15 + 3);
    v57 = *(v15 + 2);
    v58 = v22;
    v59[0] = *(v15 + 4);
    *(v59 + 9) = *(v15 + 73);
    v23 = *(v15 + 1);
    v55 = *v15;
    v56 = v23;
    MEMORY[0x245CC6BA0](4);
    v24 = BYTE8(v59[1]) >> 6;
    if (!v24)
    {
      MEMORY[0x245CC6BA0](0);
      sub_24075A114();
      return sub_2405F717C(&v55);
    }

    if (v24 != 1)
    {
LABEL_39:
      v48 = 2;
      return MEMORY[0x245CC6BA0](v48);
    }

    v25 = *&v59[1];
    MEMORY[0x245CC6BA0](1);
    sub_24075A114();
    if (v25 <= 1)
    {
      if (!v25)
      {
        v26 = 0;
        goto LABEL_50;
      }

      if (v25 == 1)
      {
        v26 = 1;
        goto LABEL_50;
      }
    }

    else
    {
      switch(v25)
      {
        case 2:
          v26 = 2;
          goto LABEL_50;
        case 3:
          v26 = 3;
          goto LABEL_50;
        case 4:
          v26 = 5;
LABEL_50:
          MEMORY[0x245CC6BA0](v26);
LABEL_51:
          sub_24075AE94();
          return sub_2405F717C(&v55);
      }
    }

    MEMORY[0x245CC6BA0](4);
    sub_2405F115C(a1, v25);
    goto LABEL_51;
  }

  v43 = *v15;
  v44 = *(v15 + 1);
  v46 = *(v15 + 2);
  v45 = *(v15 + 3);
  v47 = *(v15 + 4);
  MEMORY[0x245CC6BA0](5);
  if (v44 == 22)
  {
    v48 = 1;
    return MEMORY[0x245CC6BA0](v48);
  }

  if (v44 == 21)
  {
LABEL_26:
    v48 = 0;
    return MEMORY[0x245CC6BA0](v48);
  }

  MEMORY[0x245CC6BA0](2);
  if (v44 == 20)
  {
    sub_24075AE94();
    v51 = v43;
    v52 = 20;
  }

  else
  {
    *&v55 = v43;
    *(&v55 + 1) = v44;
    *&v56 = v46;
    *(&v56 + 1) = v45;
    *&v57 = v47;
    sub_24075AE94();
    _AgeMigrationError.hash(into:)();
    v51 = v43;
    v52 = v44;
  }

  return sub_2406DB5E0(v51, v52);
}

uint64_t V1Command.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5C8, &qword_240776F98);
  v103 = *(v102 - 8);
  v3 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  v113 = &v86 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5D0, &qword_240776FA0);
  v99 = *(v101 - 8);
  v5 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v106 = &v86 - v6;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5D8, &qword_240776FA8);
  v100 = *(v98 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v98);
  v112 = &v86 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5E0, &qword_240776FB0);
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v105 = &v86 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5E8, &qword_240776FB8);
  v95 = *(v94 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  v104 = &v86 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5F0, &qword_240776FC0);
  v93 = *(v92 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  v109 = &v86 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC5F8, &unk_240776FC8);
  v114 = *(v111 - 8);
  v15 = *(v114 + 64);
  MEMORY[0x28223BE20](v111);
  v17 = &v86 - v16;
  v108 = type metadata accessor for V1Command.Request(0);
  v18 = *(*(v108 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v108);
  v90 = (&v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v86 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v86 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v86 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v86 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v86 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v86 - v35;
  v38 = a1[3];
  v37 = a1[4];
  v130 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_2406DB4E4();
  v110 = v17;
  v39 = v115;
  sub_24075AF34();
  if (!v39)
  {
    v88 = v31;
    v86 = v28;
    v87 = v34;
    v89 = v25;
    v40 = v109;
    v41 = v112;
    v42 = v113;
    v115 = v36;
    v43 = v111;
    v44 = v110;
    v45 = sub_24075AB34();
    v46 = (2 * *(v45 + 16)) | 1;
    v126 = v45;
    v127 = v45 + 32;
    v128 = 0;
    v129 = v46;
    v47 = sub_2405B8B00();
    if (v47 != 6 && v128 == v129 >> 1)
    {
      if (v47 > 2u)
      {
        if (v47 == 3)
        {
          LOBYTE(v116) = 3;
          sub_2406DB648();
          v68 = v43;
          sub_24075AA54();
          v69 = v114;
          type metadata accessor for AuthenticateCommand.Request(0);
          sub_2406DB7AC(&qword_27E4B8BD0, type metadata accessor for AuthenticateCommand.Request);
          v70 = v89;
          v71 = v98;
          sub_24075AAF4();
          (*(v100 + 8))(v41, v71);
          (*(v69 + 8))(v44, v68);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v75 = v70;
        }

        else
        {
          v58 = v114;
          if (v47 == 4)
          {
            LOBYTE(v116) = 4;
            sub_2406DB5F4();
            v59 = v106;
            sub_24075AA54();
            sub_2405F5F2C();
            v60 = v101;
            sub_24075AAF4();
            (*(v99 + 8))(v59, v60);
            (*(v58 + 8))(v44, v43);
            swift_unknownObjectRelease();
            v77 = v119;
            v78 = v91;
            *(v91 + 2) = v118;
            v78[3] = v77;
            v78[4] = *v120;
            *(v78 + 73) = *&v120[9];
            v79 = v117;
            *v78 = v116;
            v78[1] = v79;
            swift_storeEnumTagMultiPayload();
            v80 = v115;
            sub_2406DB6F0(v78, v115, type metadata accessor for V1Command.Request);
            v48 = v107;
LABEL_20:
            sub_2406DB6F0(v80, v48, type metadata accessor for V1Command.Request);
            return __swift_destroy_boxed_opaque_existential_1(v130);
          }

          LOBYTE(v116) = 5;
          sub_2406DB538();
          sub_24075AA54();
          sub_2406DB8A8();
          v74 = v102;
          sub_24075AAF4();
          (*(v103 + 8))(v42, v74);
          (*(v58 + 8))(v44, v43);
          swift_unknownObjectRelease();
          v83 = v118;
          v84 = v117;
          v85 = v90;
          *v90 = v116;
          v85[1] = v84;
          *(v85 + 4) = v83;
          swift_storeEnumTagMultiPayload();
          v75 = v85;
        }

        v80 = v115;
        sub_2406DB6F0(v75, v115, type metadata accessor for V1Command.Request);
        v48 = v107;
        goto LABEL_20;
      }

      v48 = v107;
      if (v47)
      {
        v49 = v43;
        if (v47 == 1)
        {
          LOBYTE(v116) = 1;
          sub_2406DB758();
          v50 = v104;
          sub_24075AA54();
          type metadata accessor for SignInCommand.Request(0);
          sub_2406DB7AC(&qword_27E4B9390, type metadata accessor for SignInCommand.Request);
          v51 = v88;
          v52 = v94;
          sub_24075AAF4();
          (*(v95 + 8))(v50, v52);
          (*(v114 + 8))(v44, v49);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v76 = v51;
LABEL_18:
          v80 = v115;
          sub_2406DB6F0(v76, v115, type metadata accessor for V1Command.Request);
          goto LABEL_20;
        }

        LOBYTE(v116) = 2;
        sub_2406DB69C();
        v72 = v105;
        sub_24075AA54();
        sub_2405E1BAC();
        v73 = v97;
        sub_24075AAF4();
        (*(v96 + 8))(v72, v73);
        (*(v114 + 8))(v44, v43);
        swift_unknownObjectRelease();
        v81 = v118;
        v82 = v117;
        v63 = v86;
        *v86 = v116;
        v63[1] = v82;
        *(v63 + 32) = v81;
      }

      else
      {
        LOBYTE(v116) = 0;
        sub_2406DB854();
        sub_24075AA54();
        sub_2406C00B8();
        v61 = v92;
        sub_24075AAF4();
        (*(v93 + 8))(v40, v61);
        (*(v114 + 8))(v44, v43);
        swift_unknownObjectRelease();
        v62 = v124;
        v63 = v87;
        *(v87 + 8) = v123;
        v63[9] = v62;
        *(v63 + 20) = v125;
        v64 = *&v120[16];
        v63[4] = *v120;
        v63[5] = v64;
        v65 = v122;
        v63[6] = v121;
        v63[7] = v65;
        v66 = v117;
        *v63 = v116;
        v63[1] = v66;
        v67 = v119;
        v63[2] = v118;
        v63[3] = v67;
      }

      swift_storeEnumTagMultiPayload();
      v76 = v63;
      goto LABEL_18;
    }

    v53 = sub_24075A8C4();
    swift_allocError();
    v55 = v54;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v55 = v108;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
    swift_willThrow();
    (*(v114 + 8))(v44, v43);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v130);
}

uint64_t sub_2406D0EE4(uint64_t a1)
{
  v2 = sub_2406DC6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D0F20(uint64_t a1)
{
  v2 = sub_2406DC6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D0F5C(uint64_t a1)
{
  v2 = sub_2406DC7C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D0F98(uint64_t a1)
{
  v2 = sub_2406DC7C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D0FD4(uint64_t a1)
{
  v2 = sub_2406DC774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D1010(uint64_t a1)
{
  v2 = sub_2406DC774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D104C(uint64_t a1)
{
  v2 = sub_2406DC610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D1088(uint64_t a1)
{
  v2 = sub_2406DC610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D10C4(uint64_t a1)
{
  v2 = sub_2406DC870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D1100(uint64_t a1)
{
  v2 = sub_2406DC870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D113C(uint64_t a1)
{
  v2 = sub_2406DC720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D1178(uint64_t a1)
{
  v2 = sub_2406DC720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D11B4(uint64_t a1)
{
  v2 = sub_2406DC81C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D11F0(uint64_t a1)
{
  v2 = sub_2406DC81C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1Command.Response.encode(to:)(void *a1)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC608, &qword_240776FD8);
  v82 = *(v83 - 8);
  v2 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v60 - v3;
  v79 = type metadata accessor for AgeMigrationCommand.Response(0);
  v4 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC610, &qword_240776FE0);
  v77 = *(v78 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = &v60 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC618, &qword_240776FE8);
  v74 = *(v75 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v60 - v9;
  v71 = type metadata accessor for AuthenticateCommand.Response(0);
  v10 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC620, &qword_240776FF0);
  v69 = *(v70 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v60 - v13;
  v66 = type metadata accessor for AnisetteCommand.Response();
  v14 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v67 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC628, &qword_240776FF8);
  v64 = *(v65 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v18 = &v60 - v17;
  v62 = type metadata accessor for SignInCommand.Response(0);
  v19 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC630, &qword_240777000);
  v61 = *(v63 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v24 = &v60 - v23;
  v25 = type metadata accessor for V1Command.Response(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC638, &qword_240777008);
  v84 = *(v86 - 8);
  v29 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v31 = &v60 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DC610();
  v85 = v31;
  sub_24075AF74();
  sub_2406DC664(v101, v28, type metadata accessor for V1Command.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v47 = *(v28 + 5);
      v98 = *(v28 + 4);
      v99 = v47;
      v100 = v28[96];
      v48 = *(v28 + 1);
      v94 = *v28;
      v95 = v48;
      v49 = *(v28 + 3);
      v96 = *(v28 + 2);
      v97 = v49;
      LOBYTE(v87) = 0;
      sub_2406DC870();
      v50 = v86;
      v51 = v85;
      sub_24075AB54();
      v91 = v98;
      v92 = v99;
      v93 = v100;
      v87 = v94;
      v88 = v95;
      v90 = v97;
      v89 = v96;
      sub_2406C03EC();
      v52 = v63;
      sub_24075ABE4();
      (*(v61 + 8))(v24, v52);
      (*(v84 + 8))(v51, v50);
      return sub_2406BFA90(&v94);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DB6F0(v28, v21, type metadata accessor for SignInCommand.Response);
      LOBYTE(v94) = 1;
      sub_2406DC81C();
      v34 = v86;
      v35 = v85;
      sub_24075AB54();
      sub_2406DB7AC(&qword_27E4B93C8, type metadata accessor for SignInCommand.Response);
      v36 = v65;
      sub_24075ABE4();
      (*(v64 + 8))(v18, v36);
      v37 = type metadata accessor for SignInCommand.Response;
    }

    else
    {
      v21 = v67;
      sub_2406DB6F0(v28, v67, type metadata accessor for AnisetteCommand.Response);
      LOBYTE(v94) = 2;
      sub_2406DC7C8();
      v55 = v68;
      v34 = v86;
      v35 = v85;
      sub_24075AB54();
      sub_2406DB7AC(&qword_27E4B7B70, type metadata accessor for AnisetteCommand.Response);
      v56 = v70;
      sub_24075ABE4();
      (*(v69 + 8))(v55, v56);
      v37 = type metadata accessor for AnisetteCommand.Response;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v21 = v72;
    sub_2406DB6F0(v28, v72, type metadata accessor for AuthenticateCommand.Response);
    LOBYTE(v94) = 3;
    sub_2406DC774();
    v53 = v73;
    v34 = v86;
    v35 = v85;
    sub_24075AB54();
    sub_2406DB7AC(&qword_27E4B8C08, type metadata accessor for AuthenticateCommand.Response);
    v54 = v75;
    sub_24075ABE4();
    (*(v74 + 8))(v53, v54);
    v37 = type metadata accessor for AuthenticateCommand.Response;
LABEL_11:
    sub_2406DB7F4(v21, v37);
    return (*(v84 + 8))(v35, v34);
  }

  v38 = v86;
  v39 = v85;
  if (EnumCaseMultiPayload == 4)
  {
    v40 = *v28;
    v41 = *(v28 + 1);
    v42 = *(v28 + 2);
    v43 = *(v28 + 3);
    LOBYTE(v94) = 4;
    sub_2406DC720();
    v44 = v76;
    sub_24075AB54();
    *&v94 = v40;
    *(&v94 + 1) = v41;
    *&v95 = v42;
    *(&v95 + 1) = v43;
    sub_2405F6260();
    v45 = v78;
    sub_24075ABE4();
    (*(v77 + 8))(v44, v45);
    (*(v84 + 8))(v39, v38);
    return sub_2405F7088(v40, v41, v42, v43);
  }

  else
  {
    v57 = v80;
    sub_2406DB6F0(v28, v80, type metadata accessor for AgeMigrationCommand.Response);
    LOBYTE(v94) = 5;
    sub_2406DC6CC();
    v58 = v81;
    sub_24075AB54();
    sub_2406DB7AC(&qword_27E4BC650, type metadata accessor for AgeMigrationCommand.Response);
    v59 = v83;
    sub_24075ABE4();
    (*(v82 + 8))(v58, v59);
    sub_2406DB7F4(v57, type metadata accessor for AgeMigrationCommand.Response);
    return (*(v84 + 8))(v39, v38);
  }
}

uint64_t V1Command.Response.hash(into:)(__int128 *a1)
{
  v71 = a1;
  v69 = type metadata accessor for AgeMigrationCommand.Response.ReceivedMigrationInfo(0);
  v2 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v70 = (&v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AgeMigrationCommand.Response(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v68 - v9;
  v11 = type metadata accessor for AuthenticateCommand.Response(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AnisetteCommand.Response();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SignInCommand.Response(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for V1Command.Response(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2406DC664(v1, v26, type metadata accessor for V1Command.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v37 = *(v26 + 5);
      v83 = *(v26 + 4);
      v84 = v37;
      v85 = v26[96];
      v38 = *(v26 + 1);
      v79 = *v26;
      v80 = v38;
      v39 = *(v26 + 3);
      v81 = *(v26 + 2);
      v82 = v39;
      MEMORY[0x245CC6BA0](0);
      v76 = v83;
      v77 = v84;
      v78 = v85;
      v72 = v79;
      v73 = v80;
      v75 = v82;
      v74 = v81;
      HandshakeCommand.Response.hash(into:)();
      return sub_2406BFA90(&v79);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DB6F0(v26, v22, type metadata accessor for SignInCommand.Response);
      v28 = v71;
      MEMORY[0x245CC6BA0](1);
      IdMSAccount.hash(into:)(v28);
      sub_2406206AC(v28, *&v22[*(v19 + 20)]);
      v29 = type metadata accessor for SignInCommand.Response;
      v30 = v22;
    }

    else
    {
      sub_2406DB6F0(v26, v18, type metadata accessor for AnisetteCommand.Response);
      v40 = v71;
      MEMORY[0x245CC6BA0](2);
      AnisetteCommand.Response.hash(into:)(v40);
      v29 = type metadata accessor for AnisetteCommand.Response;
      v30 = v18;
    }

    return sub_2406DB7F4(v30, v29);
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_2406DB6F0(v26, v14, type metadata accessor for AuthenticateCommand.Response);
    MEMORY[0x245CC6BA0](3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8B38, &qword_240777010);
    sub_2406DC8C4();
    sub_24075A004();
    v29 = type metadata accessor for AuthenticateCommand.Response;
    v30 = v14;
    return sub_2406DB7F4(v30, v29);
  }

  v31 = v71;
  if (EnumCaseMultiPayload != 4)
  {
    sub_2406DB6F0(v26, v10, type metadata accessor for AgeMigrationCommand.Response);
    MEMORY[0x245CC6BA0](5);
    sub_2406DC664(v10, v8, type metadata accessor for AgeMigrationCommand.Response);
    v41 = swift_getEnumCaseMultiPayload();
    if (v41 > 1)
    {
      if (v41 == 2)
      {
        v66 = 1;
      }

      else
      {
        v66 = 2;
      }

      MEMORY[0x245CC6BA0](v66);
    }

    else if (v41)
    {
      v67 = *(v8 + 1);
      v79 = *v8;
      v80 = v67;
      *&v81 = *(v8 + 4);
      MEMORY[0x245CC6BA0](3);
      _AgeMigrationError.hash(into:)();
      sub_2405E1900(&v79);
    }

    else
    {
      v42 = v70;
      sub_2406DB6F0(v8, v70, type metadata accessor for AgeMigrationCommand.Response.ReceivedMigrationInfo);
      MEMORY[0x245CC6BA0](0);
      v43 = *v42;
      v44 = v42[1];
      sub_24075A114();
      v45 = v42[2];
      v46 = v42[3];
      sub_24075A114();
      v47 = v42[4];
      v48 = v42[5];
      sub_24075A114();
      v49 = v69;
      v50 = *(v69 + 28);
      sub_240759744();
      sub_2406DB7AC(&qword_27E4BC680, MEMORY[0x277CC9578]);
      sub_24075A004();
      v51 = (v42 + v49[8]);
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = v51[3];
      v56 = v51[4];
      v57 = v51[5];
      v58 = v51[6];
      v59 = v51[7];
      v68 = v51[8];
      sub_24075A114();
      sub_24075A114();
      sub_24075A114();
      sub_24075A114();
      MEMORY[0x245CC6BE0](v68);
      v60 = v42 + v49[9];
      v61 = *(v60 + 3);
      v81 = *(v60 + 2);
      v82 = v61;
      LOBYTE(v83) = v60[64];
      v62 = *(v60 + 1);
      v79 = *v60;
      v80 = v62;
      IdMSAccount.DeviceInfo.hash(into:)();
      v63 = (v42 + v49[10]);
      v64 = *v63;
      v65 = v63[1];
      sub_24075A114();
      sub_2406DB7F4(v42, type metadata accessor for AgeMigrationCommand.Response.ReceivedMigrationInfo);
    }

    v29 = type metadata accessor for AgeMigrationCommand.Response;
    v30 = v10;
    return sub_2406DB7F4(v30, v29);
  }

  v32 = *v26;
  v33 = *(v26 + 1);
  v34 = *(v26 + 2);
  v35 = *(v26 + 3);
  MEMORY[0x245CC6BA0](4);
  if (v35 >> 62)
  {
    if (v35 >> 62 == 1)
    {
      MEMORY[0x245CC6BA0](1);
      return sub_24075AE94();
    }

    else
    {
      return MEMORY[0x245CC6BA0](2);
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](0);
    sub_24075A114();
    sub_2405ED470(v31, v35);
    return sub_2405F7088(v32, v33, v34, v35);
  }
}

uint64_t V1Command.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC688, &qword_240777018);
  v109 = *(v108 - 8);
  v3 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  v118 = &v90 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC690, &qword_240777020);
  v106 = *(v107 - 8);
  v5 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v117 = &v90 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC698, &qword_240777028);
  v105 = *(v104 - 8);
  v7 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  v116 = &v90 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6A0, &qword_240777030);
  v102 = *(v103 - 8);
  v9 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v111 = &v90 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6A8, &qword_240777038);
  v101 = *(v100 - 8);
  v11 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  v110 = &v90 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6B0, &qword_240777040);
  v99 = *(v97 - 8);
  v13 = *(v99 + 64);
  MEMORY[0x28223BE20](v97);
  v114 = &v90 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6B8, &qword_240777048);
  v119 = *(v15 - 8);
  v120 = v15;
  v16 = *(v119 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v90 - v17;
  v113 = type metadata accessor for V1Command.Response(0);
  v19 = *(*(v113 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v113);
  v98 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v96 = (&v90 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v90 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v90 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v90 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v90 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v90 - v36;
  v39 = a1[3];
  v38 = a1[4];
  v133 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_2406DC610();
  v115 = v18;
  v40 = v121;
  sub_24075AF34();
  if (!v40)
  {
    v91 = v35;
    v92 = v32;
    v93 = v29;
    v94 = v26;
    v41 = v114;
    v42 = v116;
    v121 = 0;
    v43 = v117;
    v44 = v118;
    v45 = v113;
    v95 = v37;
    v46 = v120;
    v47 = v115;
    v48 = sub_24075AB34();
    v49 = (2 * *(v48 + 16)) | 1;
    v129 = v48;
    v130 = v48 + 32;
    v131 = 0;
    v132 = v49;
    v50 = sub_2405B8B00();
    if (v50 == 6 || v131 != v132 >> 1)
    {
      v56 = sub_24075A8C4();
      swift_allocError();
      v58 = v57;
      v59 = v47;
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v58 = v45;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
      swift_willThrow();
      v61 = *(v119 + 8);
      v62 = v59;
LABEL_10:
      v61(v62, v46);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v133);
    }

    if (v50 <= 2u)
    {
      if (v50)
      {
        v51 = v121;
        if (v50 == 1)
        {
          LOBYTE(v122) = 1;
          sub_2406DC81C();
          v52 = v110;
          sub_24075AA54();
          if (!v51)
          {
            type metadata accessor for SignInCommand.Response(0);
            sub_2406DB7AC(&qword_27E4B93C0, type metadata accessor for SignInCommand.Response);
            v53 = v92;
            v54 = v100;
            sub_24075AAF4();
            v55 = v119;
            (*(v101 + 8))(v52, v54);
            (*(v55 + 8))(v47, v120);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v85 = v53;
LABEL_26:
            v89 = v95;
            sub_2406DB6F0(v85, v95, type metadata accessor for V1Command.Response);
            v64 = v112;
LABEL_28:
            sub_2406DB6F0(v89, v64, type metadata accessor for V1Command.Response);
            return __swift_destroy_boxed_opaque_existential_1(v133);
          }

          goto LABEL_23;
        }

        LOBYTE(v122) = 2;
        sub_2406DC7C8();
        v77 = v111;
        sub_24075AA54();
        if (!v51)
        {
          v78 = v47;
          v79 = v46;
          type metadata accessor for AnisetteCommand.Response();
          sub_2406DB7AC(&qword_27E4B7C00, type metadata accessor for AnisetteCommand.Response);
          v80 = v93;
          v81 = v103;
          sub_24075AAF4();
          (*(v102 + 8))(v77, v81);
          v70 = v80;
          (*(v119 + 8))(v78, v79);
          swift_unknownObjectRelease();
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v122) = 0;
        sub_2406DC870();
        v67 = v121;
        sub_24075AA54();
        if (!v67)
        {
          sub_2406C0398();
          v68 = v97;
          sub_24075AAF4();
          (*(v99 + 8))(v41, v68);
          (*(v119 + 8))(v47, v46);
          swift_unknownObjectRelease();
          v69 = v127;
          v70 = v91;
          *(v91 + 4) = v126;
          *(v70 + 80) = v69;
          *(v70 + 96) = v128;
          v71 = v123;
          *v70 = v122;
          *(v70 + 16) = v71;
          v72 = v125;
          *(v70 + 32) = v124;
          *(v70 + 48) = v72;
LABEL_25:
          swift_storeEnumTagMultiPayload();
          v85 = v70;
          goto LABEL_26;
        }
      }

LABEL_23:
      v61 = *(v119 + 8);
      v62 = v47;
      goto LABEL_10;
    }

    v64 = v112;
    if (v50 == 3)
    {
      LOBYTE(v122) = 3;
      sub_2406DC774();
      v73 = v42;
      v74 = v121;
      sub_24075AA54();
      if (!v74)
      {
        type metadata accessor for AuthenticateCommand.Response(0);
        sub_2406DB7AC(&qword_27E4B8C00, type metadata accessor for AuthenticateCommand.Response);
        v75 = v94;
        v76 = v104;
        sub_24075AAF4();
        (*(v105 + 8))(v73, v76);
        (*(v119 + 8))(v47, v120);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v85 = v75;
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (v50 == 4)
    {
      LOBYTE(v122) = 4;
      sub_2406DC720();
      v65 = v121;
      sub_24075AA54();
      if (v65)
      {
        goto LABEL_23;
      }

      sub_2405F620C();
      v66 = v107;
      sub_24075AAF4();
      (*(v106 + 8))(v43, v66);
      (*(v119 + 8))(v47, v46);
      swift_unknownObjectRelease();
      v86 = v123;
      v87 = v96;
      *v96 = v122;
      v87[1] = v86;
      swift_storeEnumTagMultiPayload();
      v88 = v87;
    }

    else
    {
      LOBYTE(v122) = 5;
      sub_2406DC6CC();
      v82 = v121;
      sub_24075AA54();
      if (v82)
      {
        goto LABEL_23;
      }

      type metadata accessor for AgeMigrationCommand.Response(0);
      sub_2406DB7AC(&qword_27E4BC6C0, type metadata accessor for AgeMigrationCommand.Response);
      v83 = v98;
      v84 = v108;
      sub_24075AAF4();
      (*(v109 + 8))(v44, v84);
      (*(v119 + 8))(v47, v120);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v88 = v83;
    }

    v89 = v95;
    sub_2406DB6F0(v88, v95, type metadata accessor for V1Command.Response);
    goto LABEL_28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v133);
}

uint64_t static V1CommandError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v37[0] = v4;
  v37[1] = v3;
  v37[2] = v5;
  v38 = v6;
  v39 = v7;
  v40 = v8;
  v41 = v9;
  v42 = v10;
  if (!v6)
  {
    if (!v10)
    {
      if (v4 == v7 && v3 == v8)
      {
        v22 = v9;
        sub_2406DC950(v4, v3, v9, 0);
        sub_2406DC950(v4, v3, v5, 0);
        sub_2405B8A50(v37, &qword_27E4BC6C8, &qword_240777050);
      }

      else
      {
        v24 = v7;
        v25 = v8;
        v26 = v9;
        v27 = sub_24075ACF4();
        v28 = v24;
        v22 = v26;
        sub_2406DC950(v28, v25, v26, 0);
        sub_2406DC950(v4, v3, v5, 0);
        sub_2405B8A50(v37, &qword_27E4BC6C8, &qword_240777050);
        v21 = 0;
        if ((v27 & 1) == 0)
        {
          return v21 & 1;
        }
      }

      v21 = v5 == v22;
      return v21 & 1;
    }

    goto LABEL_35;
  }

  if (v6 != 1)
  {
    v23 = v5 | v3;
    if (v5 | v3 | v4)
    {
      if (v4 != 1 || v23)
      {
        if (v4 != 2 || v23)
        {
          if (v4 != 3 || v23)
          {
            if (v10 != 2 || v7 != 4)
            {
              goto LABEL_35;
            }
          }

          else if (v10 != 2 || v7 != 3)
          {
            goto LABEL_35;
          }
        }

        else if (v10 != 2 || v7 != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v10 != 2 || v7 != 1)
      {
        goto LABEL_35;
      }

      if (v9 | v8)
      {
LABEL_35:
        sub_2406DC950(v7, v8, v9, v10);
        sub_2406DC950(v4, v3, v5, v6);
        goto LABEL_36;
      }
    }

    else if (v10 != 2 || v9 | v8 | v7)
    {
      goto LABEL_35;
    }

    sub_2405B8A50(v37, &qword_27E4BC6C8, &qword_240777050);
    v21 = 1;
    return v21 & 1;
  }

  if (v10 != 1)
  {
    goto LABEL_35;
  }

  v30 = *(v4 + 48);
  v11 = *(v4 + 64);
  v12 = *(v4 + 72);
  v13 = *(v4 + 40);
  v14 = *(v4 + 32);
  v15 = *(v7 + 32);
  v16 = *(v7 + 40);
  v17 = *(v7 + 48);
  v18 = *(v7 + 56);
  v19 = *(v7 + 64);
  v20 = *(v7 + 72);
  v34 = *(v4 + 16);
  v35 = v14;
  v36 = v13;
  v31 = *(v7 + 16);
  v32 = v15;
  v33 = v16;
  sub_2406DC950(v7, v8, v9, 1);
  sub_2406DC950(v4, v3, v5, 1);
  if ((static V1CommandError.== infix(_:_:)(&v34, &v31) & 1) == 0)
  {
LABEL_36:
    sub_2405B8A50(v37, &qword_27E4BC6C8, &qword_240777050);
    v21 = 0;
    return v21 & 1;
  }

  v34 = v30;
  v35 = v11;
  v36 = v12;
  *&v31 = v17;
  *(&v31 + 1) = v18;
  v32 = v19;
  v33 = v20;
  v21 = static V1CommandError.== infix(_:_:)(&v34, &v31);
  sub_2405B8A50(v37, &qword_27E4BC6C8, &qword_240777050);
  return v21 & 1;
}

uint64_t sub_2406D388C()
{
  v1 = 0x65736E6F70736572;
  if (*v0 != 1)
  {
    v1 = 0x6572756C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_2406D38E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406E0464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406D3910(uint64_t a1)
{
  v2 = sub_2406DC990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D394C(uint64_t a1)
{
  v2 = sub_2406DC990();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D3988(uint64_t a1)
{
  v2 = sub_2406DC9E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D39C4(uint64_t a1)
{
  v2 = sub_2406DC9E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D3A00(uint64_t a1)
{
  v2 = sub_2406DCB00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D3A3C(uint64_t a1)
{
  v2 = sub_2406DCB00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D3A78(uint64_t a1)
{
  v2 = sub_2406DCAAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D3AB4(uint64_t a1)
{
  v2 = sub_2406DCAAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1Command.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6D0, &qword_240777058);
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v49 = &v41 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6D8, &qword_240777060);
  v48 = *(v50 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v47 = &v41 - v6;
  v45 = type metadata accessor for V1Command.Response(0);
  v7 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6E0, &qword_240777068);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v42 = type metadata accessor for V1Command.Request(0);
  v13 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for V1Command(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC6E8, &qword_240777070);
  v20 = *(v54 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v54);
  v23 = &v41 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DC990();
  sub_24075AF74();
  sub_2406DC664(v53, v19, type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v19;
      v27 = v46;
      sub_2406DB6F0(v26, v46, type metadata accessor for V1Command.Response);
      LOBYTE(v55) = 1;
      sub_2406DCAAC();
      v28 = v47;
      v29 = v54;
      sub_24075AB54();
      sub_2406DB7AC(&qword_27E4BC710, type metadata accessor for V1Command.Response);
      v30 = v50;
      sub_24075ABE4();
      (*(v48 + 8))(v28, v30);
      sub_2406DB7F4(v27, type metadata accessor for V1Command.Response);
      return (*(v20 + 8))(v23, v29);
    }

    else
    {
      v34 = *(v19 + 1);
      v53 = *v19;
      v35 = v53;
      v36 = *(v19 + 2);
      v37 = v19[24];
      LOBYTE(v55) = 2;
      sub_2406DC9E4();
      v38 = v49;
      v39 = v54;
      sub_24075AB54();
      v55 = v35;
      v56 = v34;
      v57 = v36;
      v58 = v37;
      sub_2406DCA38();
      v40 = v52;
      sub_24075ABE4();
      (*(v51 + 8))(v38, v40);
      (*(v20 + 8))(v23, v39);
      return sub_2406DCA8C(v53, v34, v36, v37);
    }
  }

  else
  {
    sub_2406DB6F0(v19, v15, type metadata accessor for V1Command.Request);
    LOBYTE(v55) = 0;
    sub_2406DCB00();
    v32 = v54;
    sub_24075AB54();
    sub_2406DB7AC(&qword_27E4BC720, type metadata accessor for V1Command.Request);
    v33 = v44;
    sub_24075ABE4();
    (*(v43 + 8))(v12, v33);
    sub_2406DB7F4(v15, type metadata accessor for V1Command.Request);
    return (*(v20 + 8))(v23, v32);
  }
}

uint64_t V1Command.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for V1Command.Response(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for V1Command.Request(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for V1Command(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2406DC664(v1, v14, type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DB6F0(v14, v6, type metadata accessor for V1Command.Response);
      MEMORY[0x245CC6BA0](1);
      V1Command.Response.hash(into:)(a1);
      return sub_2406DB7F4(v6, type metadata accessor for V1Command.Response);
    }

    else
    {
      v17 = *v14;
      v18 = *(v14 + 1);
      v19 = *(v14 + 2);
      v20 = v14[24];
      MEMORY[0x245CC6BA0](2);
      v21[0] = v17;
      v21[1] = v18;
      v21[2] = v19;
      v22 = v20;
      V1CommandError.hash(into:)(a1);
      return sub_2406DCA8C(v17, v18, v19, v20);
    }
  }

  else
  {
    sub_2406DB6F0(v14, v10, type metadata accessor for V1Command.Request);
    MEMORY[0x245CC6BA0](0);
    V1Command.Request.hash(into:)(a1);
    return sub_2406DB7F4(v10, type metadata accessor for V1Command.Request);
  }
}

uint64_t sub_2406D43BC(void (*a1)(_BYTE *))
{
  sub_24075AE64();
  a1(v3);
  return sub_24075AED4();
}

uint64_t V1Command.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC728, &qword_240777078);
  v65 = *(v60 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x28223BE20](v60);
  v66 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC730, &qword_240777080);
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  v69 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC738, &qword_240777088);
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v67 = &v57 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC740, &qword_240777090);
  v71 = *(v68 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  v13 = &v57 - v12;
  v14 = type metadata accessor for V1Command(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v57 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v57 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_2406DC990();
  v29 = v72;
  sub_24075AF34();
  if (!v29)
  {
    v58 = v24;
    v57 = v18;
    v59 = v21;
    v30 = v67;
    v31 = v68;
    v72 = v26;
    v32 = v14;
    v34 = v69;
    v33 = v70;
    v35 = sub_24075AB34();
    v36 = (2 * *(v35 + 16)) | 1;
    v76 = v35;
    v77 = v35 + 32;
    v78 = 0;
    v79 = v36;
    v37 = sub_2405B8AF0();
    if (v37 != 3 && v78 == v79 >> 1)
    {
      if (v37)
      {
        if (v37 != 1)
        {
          LOBYTE(v73) = 2;
          sub_2406DC9E4();
          v50 = v66;
          sub_24075AA54();
          v67 = v14;
          sub_2406DCB54();
          v51 = v60;
          sub_24075AAF4();
          (*(v65 + 8))(v50, v51);
          (*(v71 + 8))(v13, v31);
          swift_unknownObjectRelease();
          v52 = v74;
          v53 = v75;
          v54 = v57;
          *v57 = v73;
          *(v54 + 2) = v52;
          *(v54 + 24) = v53;
          swift_storeEnumTagMultiPayload();
          v55 = v54;
LABEL_12:
          v56 = v72;
          sub_2406DB6F0(v55, v72, type metadata accessor for V1Command);
          sub_2406DB6F0(v56, v33, type metadata accessor for V1Command);
          return __swift_destroy_boxed_opaque_existential_1(v80);
        }

        LOBYTE(v73) = 1;
        sub_2406DCAAC();
        sub_24075AA54();
        v67 = v14;
        type metadata accessor for V1Command.Response(0);
        sub_2406DB7AC(&qword_27E4BC750, type metadata accessor for V1Command.Response);
        v38 = v59;
        v39 = v64;
        sub_24075AAF4();
        v40 = v34;
        v41 = v71;
        (*(v63 + 8))(v40, v39);
        (*(v41 + 8))(v13, v31);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v73) = 0;
        sub_2406DCB00();
        v48 = v30;
        sub_24075AA54();
        type metadata accessor for V1Command.Request(0);
        sub_2406DB7AC(&qword_27E4BC758, type metadata accessor for V1Command.Request);
        v38 = v58;
        v49 = v62;
        sub_24075AAF4();
        (*(v61 + 8))(v48, v49);
        (*(v71 + 8))(v13, v31);
        swift_unknownObjectRelease();
      }

      swift_storeEnumTagMultiPayload();
      v55 = v38;
      goto LABEL_12;
    }

    v42 = v13;
    v43 = sub_24075A8C4();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v45 = v32;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v71 + 8))(v42, v31);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

uint64_t sub_2406D4CA8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_24075AE64();
  a3(v5);
  return sub_24075AED4();
}

uint64_t sub_2406D4D0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_24075AE64();
  a4(v6);
  return sub_24075AED4();
}

void static V1CommandError.genericError(from:)(uint64_t a1@<X8>)
{
  v2 = sub_2407595C4();
  v3 = [v2 domain];
  v4 = sub_24075A0B4();
  v6 = v5;

  v7 = [v2 code];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0;
}

uint64_t sub_2406D4DD4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x636972656E6567;
    if (v1 != 1)
    {
      v5 = 0x64657473656ELL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 != 5)
    {
      v2 = 0x636E614372657375;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2406D4EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406E057C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406D4EE4(uint64_t a1)
{
  v2 = sub_2406DCBA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D4F20(uint64_t a1)
{
  v2 = sub_2406DCBA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D4F5C()
{
  if (*v0)
  {
    result = 1701080931;
  }

  else
  {
    result = 0x6E69616D6F64;
  }

  *v0;
  return result;
}

uint64_t sub_2406D4F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_2406D5064(uint64_t a1)
{
  v2 = sub_2406DCDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D50A0(uint64_t a1)
{
  v2 = sub_2406DCDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D50DC(uint64_t a1)
{
  v2 = sub_2406DCD4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D5118(uint64_t a1)
{
  v2 = sub_2406DCD4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D5154(uint64_t a1)
{
  v2 = sub_2406DCC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D5190(uint64_t a1)
{
  v2 = sub_2406DCC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D51CC(uint64_t a1)
{
  v2 = sub_2406DCCF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D5208(uint64_t a1)
{
  v2 = sub_2406DCCF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D5244(uint64_t a1)
{
  v2 = sub_2406DCCA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D5280(uint64_t a1)
{
  v2 = sub_2406DCCA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D52BC(uint64_t a1)
{
  v2 = sub_2406DCDF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D52F8(uint64_t a1)
{
  v2 = sub_2406DCDF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2406D5334(uint64_t a1)
{
  v2 = sub_2406DCBFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D5370(uint64_t a1)
{
  v2 = sub_2406DCBFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1CommandError.encode(to:)(void *a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC760, &qword_240777098);
  v58 = *(v59 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v54 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC768, &qword_2407770A0);
  v55 = *(v56 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC770, &qword_2407770A8);
  v61 = *(v62 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC778, &qword_2407770B0);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC780, &qword_2407770B8);
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v70 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC788, &qword_2407770C0);
  v68 = *(v15 - 8);
  v69 = v15;
  v16 = *(v68 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC790, &qword_2407770C8);
  v66 = *(v19 - 8);
  v67 = v19;
  v20 = *(v66 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC798, &qword_2407770D0);
  v24 = *(v23 - 8);
  v75 = v23;
  v76 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v54 - v26;
  v29 = *v1;
  v28 = v1[1];
  *v73 = v1[2];
  *&v73[8] = v28;
  v30 = *(v1 + 24);
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DCBA8();
  v74 = v27;
  sub_24075AF74();
  if (v30)
  {
    if (v30 == 1)
    {
      *&v73[8] = *(v29 + 16);
      v32 = *(v29 + 32);
      v33 = *(v29 + 40);
      v34 = *(v29 + 56);
      *v73 = *(v29 + 48);
      v35 = *(v29 + 64);
      v36 = *(v29 + 72);
      LOBYTE(v78) = 2;
      sub_2406DCD4C();
      v37 = v70;
      v39 = v74;
      v38 = v75;
      sub_24075AB54();
      v78 = *&v73[8];
      v79 = v32;
      v80 = v33;
      v81 = 0;
      sub_2406DCA38();
      v40 = v72;
      v41 = v77;
      sub_24075ABE4();
      if (!v41)
      {
        *&v78 = *v73;
        *(&v78 + 1) = v34;
        v79 = v35;
        v80 = v36;
        v81 = 1;
        sub_24075ABE4();
      }

      (*(v71 + 8))(v37, v40);
      return (*(v76 + 8))(v39, v38);
    }

    else
    {
      v47 = v75;
      if (*v73 | *&v73[8] | v29)
      {
        if (v29 == 1 && *v73 == 0)
        {
          LOBYTE(v78) = 3;
          sub_2406DCCF8();
          v48 = v63;
          v49 = v74;
          sub_24075AB54();
          (*(v64 + 8))(v48, v65);
        }

        else if (v29 == 2 && *v73 == 0)
        {
          LOBYTE(v78) = 4;
          sub_2406DCCA4();
          v51 = v60;
          v49 = v74;
          sub_24075AB54();
          (*(v61 + 8))(v51, v62);
        }

        else if (v29 == 3 && *v73 == 0)
        {
          LOBYTE(v78) = 5;
          sub_2406DCC50();
          v52 = v54;
          v49 = v74;
          sub_24075AB54();
          (*(v55 + 8))(v52, v56);
        }

        else
        {
          LOBYTE(v78) = 6;
          sub_2406DCBFC();
          v53 = v57;
          v49 = v74;
          sub_24075AB54();
          (*(v58 + 8))(v53, v59);
        }
      }

      else
      {
        LOBYTE(v78) = 0;
        sub_2406DCDF4();
        v49 = v74;
        sub_24075AB54();
        (*(v66 + 8))(v22, v67);
      }

      return (*(v76 + 8))(v49, v47);
    }
  }

  else
  {
    v42 = v68;
    LOBYTE(v78) = 1;
    sub_2406DCDA0();
    v44 = v74;
    v43 = v75;
    sub_24075AB54();
    LOBYTE(v78) = 0;
    v45 = v69;
    v46 = v77;
    sub_24075ABB4();
    if (!v46)
    {
      LOBYTE(v78) = 1;
      sub_24075ABD4();
    }

    (*(v42 + 8))(v18, v45);
    return (*(v76 + 8))(v44, v43);
  }
}

uint64_t V1CommandError.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  if (*(v1 + 24))
  {
    if (*(v1 + 24) == 1)
    {
      v6 = *(v3 + 16);
      v7 = *(v3 + 32);
      v8 = *(v3 + 40);
      v15 = *(v3 + 48);
      v9 = *(v3 + 64);
      v10 = *(v3 + 72);
      MEMORY[0x245CC6BA0](2);
      V1CommandError.hash(into:)(a1);
      return V1CommandError.hash(into:)(a1);
    }

    v13 = v5 | v4;
    if (v5 | v4 | v3)
    {
      if (v3 == 1 && v13 == 0)
      {
        v12 = 3;
      }

      else if (v3 != 2 || v13)
      {
        if (v3 != 3 || v13)
        {
          v12 = 6;
        }

        else
        {
          v12 = 5;
        }
      }

      else
      {
        v12 = 4;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    MEMORY[0x245CC6BA0](1);
    sub_24075A114();
    v12 = v5;
  }

  return MEMORY[0x245CC6BA0](v12);
}

uint64_t V1CommandError.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  V1CommandError.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t V1CommandError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC7E0, &qword_2407770D8);
  v74 = *(v79 - 8);
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v79);
  v85 = &v65 - v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC7E8, &qword_2407770E0);
  v76 = *(v78 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v81 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC7F0, &qword_2407770E8);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v84 = &v65 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC7F8, &qword_2407770F0);
  v68 = *(v70 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v80 = &v65 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC800, &qword_2407770F8);
  v75 = *(v77 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v83 = &v65 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC808, &qword_240777100);
  v69 = *(v71 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC810, &qword_240777108);
  v67 = *(v17 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC818, &qword_240777110);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_2406DCBA8();
  v28 = v87;
  sub_24075AF34();
  if (v28)
  {
    goto LABEL_12;
  }

  v29 = v20;
  v65 = v17;
  v66 = 0;
  v30 = v83;
  v31 = v84;
  v32 = v85;
  v87 = v22;
  v33 = v25;
  v34 = sub_24075AB34();
  v35 = (2 * *(v34 + 16)) | 1;
  v88 = v34;
  v89 = v34 + 32;
  v90 = 0;
  v91 = v35;
  v36 = sub_2405B8B04();
  if (v36 == 7 || v90 != v91 >> 1)
  {
    v45 = sub_24075A8C4();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v47 = &type metadata for V1CommandError;
    v49 = v33;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
LABEL_10:
    (*(v87 + 8))(v49, v21);
    goto LABEL_11;
  }

  if (v36 > 2u)
  {
    if (v36 <= 4u)
    {
      v37 = v82;
      v38 = v87;
      if (v36 == 3)
      {
        v92 = 3;
        sub_2406DCCF8();
        v39 = v80;
        v40 = v66;
        sub_24075AA54();
        if (!v40)
        {
          (*(v68 + 8))(v39, v70);
          (*(v38 + 8))(v33, v21);
          swift_unknownObjectRelease();
          v41 = 0;
          v42 = 0;
          v43 = 2;
          v44 = 1;
LABEL_28:
          v50 = v86;
          goto LABEL_34;
        }
      }

      else
      {
        v92 = 4;
        sub_2406DCCA4();
        v59 = v66;
        sub_24075AA54();
        if (!v59)
        {
          (*(v72 + 8))(v31, v73);
          (*(v38 + 8))(v33, v21);
          swift_unknownObjectRelease();
          v41 = 0;
          v42 = 0;
          v44 = 2;
          v43 = 2;
          goto LABEL_28;
        }
      }

      goto LABEL_30;
    }

    v54 = v82;
    v38 = v87;
    if (v36 == 5)
    {
      v92 = 5;
      sub_2406DCC50();
      v55 = v81;
      v56 = v66;
      sub_24075AA54();
      if (!v56)
      {
        (*(v76 + 8))(v55, v78);
        (*(v38 + 8))(v33, v21);
        swift_unknownObjectRelease();
        v41 = 0;
        v42 = 0;
        v43 = 2;
        v44 = 3;
LABEL_33:
        v50 = v86;
        v37 = v54;
        goto LABEL_34;
      }
    }

    else
    {
      v92 = 6;
      sub_2406DCBFC();
      v60 = v66;
      sub_24075AA54();
      if (!v60)
      {
        (*(v74 + 8))(v32, v79);
        (*(v38 + 8))(v33, v21);
        swift_unknownObjectRelease();
        v41 = 0;
        v42 = 0;
        v43 = 2;
        v44 = 4;
        goto LABEL_33;
      }
    }

LABEL_30:
    (*(v38 + 8))(v33, v21);
    goto LABEL_11;
  }

  if (!v36)
  {
    v92 = 0;
    sub_2406DCDF4();
    v49 = v25;
    v57 = v66;
    sub_24075AA54();
    if (!v57)
    {
      (*(v67 + 8))(v29, v65);
      (*(v87 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v44 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 2;
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v52 = v66;
  if (v36 == 1)
  {
    v92 = 1;
    sub_2406DCDA0();
    v49 = v33;
    sub_24075AA54();
    if (!v52)
    {
      v92 = 0;
      v53 = v71;
      v44 = sub_24075AAC4();
      v41 = v63;
      v92 = 1;
      v64 = sub_24075AAE4();
      (*(v69 + 8))(v16, v53);
      (*(v87 + 8))(v33, v21);
      swift_unknownObjectRelease();
      v42 = v64;
      v43 = 0;
LABEL_23:
      v50 = v86;
      v37 = v82;
LABEL_34:
      *v37 = v44;
      *(v37 + 8) = v41;
      *(v37 + 16) = v42;
      *(v37 + 24) = v43;
      return __swift_destroy_boxed_opaque_existential_1(v50);
    }

    goto LABEL_10;
  }

  v92 = 2;
  sub_2406DCD4C();
  v58 = v33;
  sub_24075AA54();
  if (!v52)
  {
    v44 = swift_allocObject();
    v92 = 0;
    sub_2406DCB54();
    v61 = v77;
    sub_24075AAF4();
    v62 = v87;
    v92 = 1;
    sub_24075AAF4();
    (*(v75 + 8))(v30, v61);
    (*(v62 + 8))(v58, v21);
    swift_unknownObjectRelease();
    v41 = 0;
    v42 = 0;
    v43 = 1;
    goto LABEL_23;
  }

  (*(v87 + 8))(v33, v21);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v50 = v86;
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_2406D6A8C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  V1CommandError.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_2406D6AEC()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_24075AE64();
  V1CommandError.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t V1InfoHeader.deviceIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t V1InfoHeader.deviceMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;
}

__n128 V1InfoHeader.deviceMetadata.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 8);
  v6 = *(v1 + 24);
  v7 = *(v1 + 40);

  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v9;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t V1InfoHeader.osMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 96);
  return sub_2406DCE48(v2, v3);
}

__n128 V1InfoHeader.osMetadata.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = *(v1 + 96);
  sub_2406DCE98(*(v1 + 48), *(v1 + 56));
  result = *a1;
  v12 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v12;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  return result;
}

uint64_t V1InfoHeader.frameworkMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2406DCEE8(v2, v3);
}

__n128 V1InfoHeader.frameworkMetadata.setter(uint64_t a1)
{
  v3 = v1[15];
  v4 = v1[16];
  sub_2406DCF2C(v1[13], v1[14]);
  result = *a1;
  *(v1 + 15) = *(a1 + 16);
  *(v1 + 13) = result;
  return result;
}

uint64_t V1InfoHeader.clientMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2406DCEE8(v2, v3);
}

__n128 V1InfoHeader.clientMetadata.setter(uint64_t a1)
{
  v3 = v1[19];
  v4 = v1[20];
  sub_2406DCF2C(v1[17], v1[18]);
  result = *a1;
  *(v1 + 19) = *(a1 + 16);
  *(v1 + 17) = result;
  return result;
}

uint64_t sub_2406D6F08()
{
  if (qword_27E4B5F80 != -1)
  {
    swift_once();
  }

  *(&xmmword_27E4BC4B8 + 8) = 0u;
  *&qword_27E4BC4D0 = 0u;
  *&qword_27E4BC4E0 = 0u;
  *&qword_27E4BC4F0 = 0u;
  *&xmmword_27E4BC458 = qword_27E4BC500;
  *(&xmmword_27E4BC458 + 8) = *algn_27E4BC508;
  unk_27E4BC470 = *&qword_27E4BC518;
  qword_27E4BC480 = qword_27E4BC528;
  xmmword_27E4BC488 = 0u;
  xmmword_27E4BC498 = 0u;
  xmmword_27E4BC4A8 = 0u;
  LOBYTE(xmmword_27E4BC4B8) = 0;

  sub_2406DCE98(0, 0);
  v0 = *(&xmmword_27E4BC4B8 + 1);
  v1 = unk_27E4BC4C8;
  *(&xmmword_27E4BC4B8 + 8) = 0u;
  *&qword_27E4BC4D0 = 0u;
  sub_2406DCF2C(v0, v1);
  v2 = qword_27E4BC4E0;
  v3 = unk_27E4BC4E8;
  *&qword_27E4BC4E0 = 0u;
  *&qword_27E4BC4F0 = 0u;

  return sub_2406DCF2C(v2, v3);
}

__n128 V1InfoHeader.init(deviceMetadata:osMetadata:frameworkMetadata:clientMetadata:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v12;
  *(a5 + 32) = a1[2];
  sub_2406DCE98(0, 0);
  v13 = *(a2 + 16);
  *(a5 + 48) = *a2;
  *(a5 + 64) = v13;
  *(a5 + 80) = v9;
  *(a5 + 88) = v10;
  *(a5 + 96) = v11;
  sub_2406DCF2C(0, 0);
  v14 = *a3;
  *(a5 + 120) = a3[1];
  *(a5 + 104) = v14;
  sub_2406DCF2C(0, 0);
  result = *a4;
  *(a5 + 152) = *(a4 + 16);
  *(a5 + 136) = result;
  return result;
}

uint64_t static V1InfoHeader.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E4B5F78 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = unk_27E4BC4C8;
  v13[8] = unk_27E4BC4D8;
  v13[9] = unk_27E4BC4E8;
  v2 = xmmword_27E4BC488;
  v3 = xmmword_27E4BC498;
  v13[4] = xmmword_27E4BC498;
  v13[5] = xmmword_27E4BC4A8;
  v4 = xmmword_27E4BC4A8;
  v5 = xmmword_27E4BC4B8;
  v13[6] = xmmword_27E4BC4B8;
  v13[7] = unk_27E4BC4C8;
  v13[0] = xmmword_27E4BC458;
  v13[1] = unk_27E4BC468;
  v7 = xmmword_27E4BC458;
  v6 = unk_27E4BC468;
  v8 = unk_27E4BC478;
  v13[2] = unk_27E4BC478;
  v13[3] = xmmword_27E4BC488;
  v9 = unk_27E4BC4E8;
  *(a1 + 128) = unk_27E4BC4D8;
  *(a1 + 144) = v9;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v1;
  *a1 = v7;
  *(a1 + 16) = v6;
  v14 = qword_27E4BC4F8;
  *(a1 + 160) = qword_27E4BC4F8;
  *(a1 + 32) = v8;
  *(a1 + 48) = v2;
  return sub_2406DCF70(v13, v12);
}

unint64_t sub_2406D71D8()
{
  v1 = 0x654D656369766564;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x654D746E65696C63;
  }

  if (*v0)
  {
    v1 = 0x61646174654D736FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2406D7264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406E07D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406D728C(uint64_t a1)
{
  v2 = sub_2406DCFA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D72C8(uint64_t a1)
{
  v2 = sub_2406DCFA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1InfoHeader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC820, &qword_240777118);
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v42 = *(v1 + 16);
  v43 = v7;
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 56);
  v40 = *(v1 + 48);
  v41 = v10;
  v13 = *(v1 + 72);
  v38 = *(v1 + 64);
  v39 = v12;
  v14 = *(v1 + 88);
  v36 = *(v1 + 80);
  v37 = v13;
  v53 = *(v1 + 96);
  v15 = *(v1 + 112);
  v34 = *(v1 + 104);
  v35 = v14;
  v16 = *(v1 + 128);
  v32 = *(v1 + 120);
  v33 = v15;
  v31 = v16;
  v17 = *(v1 + 144);
  v27 = *(v1 + 136);
  v28 = v17;
  v18 = *(v1 + 160);
  v29 = *(v1 + 152);
  v30 = v18;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DCFA8();

  sub_24075AF74();
  v46 = v43;
  v47 = v8;
  v48 = v42;
  v49 = v9;
  v50 = v41;
  v51 = v11;
  v54 = 0;
  sub_2406DCFFC();
  v20 = v44;
  sub_24075ABE4();
  if (v20)
  {

    return (*(v45 + 8))(v6, v3);
  }

  else
  {
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v45;

    v46 = v40;
    v47 = v39;
    v48 = v38;
    v49 = v37;
    v50 = v36;
    v51 = v35;
    v52 = v53;
    v54 = 1;
    sub_2406DCE48(v40, v39);
    sub_2406DD050();
    sub_24075AB94();
    sub_2406DCE98(v46, v47);
    v46 = v24;
    v47 = v23;
    v48 = v22;
    v49 = v31;
    v54 = 2;
    sub_2406DCEE8(v24, v23);
    sub_2406DD0A4();
    sub_24075AB94();
    sub_2406DCF2C(v46, v47);
    v46 = v27;
    v47 = v28;
    v48 = v29;
    v49 = v30;
    v54 = 3;
    sub_2406DCEE8(v27, v28);
    sub_24075AB94();
    sub_2406DCF2C(v46, v47);
    return (*(v25 + 8))(v6, v3);
  }
}

uint64_t V1InfoHeader.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v9 = v0[4];
  v10 = v0[6];
  v4 = v0[7];
  v11 = v0[9];
  v12 = v0[8];
  v13 = v0[11];
  v14 = v0[10];
  v15 = *(v0 + 96);
  v5 = v0[14];
  v16 = v0[13];
  v17 = v0[16];
  v6 = v0[18];
  v18 = v0[15];
  v19 = v0[17];
  v21 = v0[19];
  v20 = v0[20];
  if (v0[1])
  {
    v7 = *v0;
    sub_24075AE94();
    sub_24075A114();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24075AE94();
    if (v2)
    {
LABEL_3:
      sub_24075AE94();
      sub_24075A114();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  sub_24075AE94();
  if (v3)
  {
LABEL_4:
    sub_24075AE94();
    sub_24075A114();
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_8:
  sub_24075AE94();
  if (v4)
  {
LABEL_5:
    sub_24075AE94();
    sub_24075A114();
    sub_24075A114();
    sub_24075A114();
  }

LABEL_9:
  sub_24075AE94();
  if (!v5)
  {
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_11;
    }

    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();
  sub_24075A114();
  if (!v6)
  {
    return sub_24075AE94();
  }

LABEL_11:
  sub_24075AE94();
  sub_24075A114();

  return sub_24075A114();
}

uint64_t V1InfoHeader.hashValue.getter()
{
  sub_24075AE64();
  V1InfoHeader.hash(into:)();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC848, &qword_240777120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2406DCFA8();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_2406DCE98(0, 0);
    sub_2406DCF2C(0, 0);
    return sub_2406DCF2C(0, 0);
  }

  else
  {
    v44 = a2;
    v45 = v6;
    LOBYTE(v47) = 0;
    sub_2406DD0F8();
    v12 = v5;
    sub_24075AAF4();
    v13 = v56;
    v14 = v57;
    v38 = *(&v56 + 1);
    v39 = *(&v57 + 1);
    v40 = *(&v58 + 1);
    v15 = v58;
    LOBYTE(v47) = 1;
    sub_2406DD14C();
    sub_24075AAA4();
    v36 = v15;
    v37 = v14;
    v35 = v13;
    v41 = v56;
    v42 = v57;
    v43 = v58;
    v74 = v59;
    sub_2406DCE98(0, 0);
    LOBYTE(v47) = 2;
    sub_2406DD1A0();
    sub_24075AAA4();
    v34 = *(&v56 + 1);
    v16 = v56;
    v17 = v57;
    sub_2406DCF2C(0, 0);
    v75 = 3;
    sub_24075AAA4();
    (*(v45 + 8))(v9, v12);
    v18 = v70;
    v19 = v71;
    v45 = v70;
    v21 = v72;
    v20 = v73;
    sub_2406DCF2C(0, 0);
    v22 = v16;
    v33 = v16;
    v23 = v35;
    *&v47 = v35;
    *(&v47 + 1) = v38;
    *&v48 = v37;
    *(&v48 + 1) = v39;
    *&v49 = v36;
    *(&v49 + 1) = v40;
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v53[0] = v74;
    *&v53[8] = __PAIR128__(v34, v22);
    *&v53[24] = v17;
    *&v53[40] = v18;
    v24 = v19;
    *&v54 = v19;
    *(&v54 + 1) = v21;
    v25 = v20;
    v55 = v20;
    v26 = v44;
    *(v44 + 160) = v25;
    v27 = v52;
    v26[4] = v51;
    v26[5] = v27;
    v28 = v50;
    v26[2] = v49;
    v26[3] = v28;
    v29 = v54;
    v26[8] = *&v53[32];
    v26[9] = v29;
    v30 = *&v53[16];
    v26[6] = *v53;
    v26[7] = v30;
    v31 = v48;
    *v26 = v47;
    v26[1] = v31;
    sub_2406DCF70(&v47, &v56);
    __swift_destroy_boxed_opaque_existential_1(v46);
    *&v56 = v23;
    *(&v56 + 1) = v38;
    *&v57 = v37;
    *(&v57 + 1) = v39;
    *&v58 = v36;
    *(&v58 + 1) = v40;
    v59 = v41;
    v60 = v42;
    v61 = v43;
    v62 = v74;
    v63 = v33;
    v64 = v34;
    v65 = v17;
    v66 = v45;
    v67 = v24;
    v68 = v21;
    v69 = v25;
    return sub_2406DD1F4(&v56);
  }
}

uint64_t sub_2406D7E58()
{
  sub_24075AE64();
  V1InfoHeader.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_2406D7E9C()
{
  sub_24075AE64();
  V1InfoHeader.hash(into:)();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.DeviceMetadata.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t V1InfoHeader.DeviceMetadata.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t V1InfoHeader.DeviceMetadata.model.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t V1InfoHeader.DeviceMetadata.model.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t V1InfoHeader.DeviceMetadata.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t V1InfoHeader.DeviceMetadata.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall V1InfoHeader.DeviceMetadata.init(identifier:model:type:)(AppleIDSetup::V1InfoHeader::DeviceMetadata *__return_ptr retstr, Swift::String_optional identifier, Swift::String_optional model, Swift::String_optional type)
{
  retstr->identifier = identifier;
  retstr->model = model;
  retstr->type = type;
}

void sub_2406D8080()
{
  v0 = [objc_opt_self() currentDevice];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 uniqueDeviceIdentifier];
    if (v2)
    {
      v3 = v2;
      v4 = sub_24075A0B4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v9 = [v1 modelNumber];
    if (v9)
    {
      v10 = v9;
      v7 = sub_24075A0B4();
      v8 = v11;
    }

    else
    {

      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v4 = 0;
    v6 = 0;
  }

  qword_27E4BC500 = v4;
  *algn_27E4BC508 = v6;
  qword_27E4BC510 = v7;
  unk_27E4BC518 = v8;
  qword_27E4BC520 = 0;
  qword_27E4BC528 = 0;
}

uint64_t static V1InfoHeader.DeviceMetadata.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E4B5F80 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27E4BC528;
  *a1 = qword_27E4BC500;
  *(a1 + 8) = *algn_27E4BC508;
  *(a1 + 24) = *&qword_27E4BC518;
  *(a1 + 40) = v1;
}

uint64_t sub_2406D821C()
{
  v1 = 0x6C65646F6DLL;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2406D8270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406E0958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406D8298(uint64_t a1)
{
  v2 = sub_2406DD224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D82D4(uint64_t a1)
{
  v2 = sub_2406DD224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1InfoHeader.DeviceMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC868, &qword_240777128);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD224();
  sub_24075AF74();
  v18 = 0;
  v13 = v15[5];
  sub_24075AB64();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_24075AB64();
  v16 = 2;
  sub_24075AB64();
  return (*(v4 + 8))(v7, v3);
}

uint64_t V1InfoHeader.DeviceMetadata.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_24075AE94();
    sub_24075A114();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_24075AE94();
    if (v4)
    {
      goto LABEL_4;
    }

    return sub_24075AE94();
  }

  sub_24075AE94();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  if (!v4)
  {
    return sub_24075AE94();
  }

LABEL_4:
  sub_24075AE94();

  return sub_24075A114();
}

uint64_t V1InfoHeader.DeviceMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24075AE64();
  if (v2)
  {
    sub_24075AE94();
    sub_24075A114();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_24075AE94();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_24075AE94();
    return sub_24075AED4();
  }

  sub_24075AE94();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_24075AE94();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.DeviceMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC878, &qword_240777130);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD224();
  sub_24075AF34();
  if (!v2)
  {
    v29 = 0;
    v11 = sub_24075AA74();
    v14 = v13;
    v15 = v11;
    v28 = 1;
    v16 = sub_24075AA74();
    v18 = v17;
    v26 = v16;
    v27 = 2;
    v19 = sub_24075AA74();
    v20 = *(v6 + 8);
    v25 = v19;
    v21 = v9;
    v23 = v22;
    v20(v21, v5);
    *a2 = v15;
    a2[1] = v14;
    v24 = v25;
    a2[2] = v26;
    a2[3] = v18;
    a2[4] = v24;
    a2[5] = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406D8930()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_24075AE64();
  V1InfoHeader.DeviceMetadata.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_2406D8988()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_24075AE64();
  V1InfoHeader.DeviceMetadata.hash(into:)();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.OSMetadata.type.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t V1InfoHeader.OSMetadata.type.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t V1InfoHeader.OSMetadata.build.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t V1InfoHeader.OSMetadata.build.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t V1InfoHeader.OSMetadata.version.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t V1InfoHeader.OSMetadata.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall V1InfoHeader.OSMetadata.init(type:build:version:isInternal:)(AppleIDSetup::V1InfoHeader::OSMetadata *__return_ptr retstr, Swift::String type, Swift::String build, Swift::String version, Swift::Bool isInternal)
{
  retstr->type = type;
  retstr->build = build;
  retstr->version = version;
  retstr->isInternal = isInternal;
}

uint64_t sub_2406D8BB8()
{
  v1 = 1701869940;
  v2 = 0x6E6F6973726576;
  if (*v0 != 2)
  {
    v2 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    v1 = 0x646C697562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2406D8C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406E0A74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2406D8C54(uint64_t a1)
{
  v2 = sub_2406DD278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D8C90(uint64_t a1)
{
  v2 = sub_2406DD278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1InfoHeader.OSMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC880, &qword_240777138);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v16 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD278();
  sub_24075AF74();
  v20 = 0;
  v13 = v15[5];
  sub_24075ABB4();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_24075ABB4();
  v18 = 2;
  sub_24075ABB4();
  v17 = 3;
  sub_24075ABC4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t V1InfoHeader.OSMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  return sub_24075AE94();
}

uint64_t V1InfoHeader.OSMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.OSMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC890, &qword_240777140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD278();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v11 = sub_24075AAC4();
  v28 = v12;
  v31 = 1;
  v13 = sub_24075AAC4();
  v27 = v14;
  v25 = v13;
  v30 = 2;
  v24 = sub_24075AAC4();
  v26 = v15;
  v29 = 3;
  v17 = sub_24075AAD4();
  (*(v6 + 8))(v9, v5);
  v18 = v17 & 1;
  v20 = v27;
  v19 = v28;
  *a2 = v11;
  *(a2 + 8) = v19;
  v21 = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v20;
  v22 = v26;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22;
  *(a2 + 48) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406D92D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t sub_2406D9374()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  return sub_24075AE94();
}

uint64_t sub_2406D93E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.BundleMetadata.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t V1InfoHeader.BundleMetadata.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t V1InfoHeader.BundleMetadata.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t V1InfoHeader.BundleMetadata.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

AppleIDSetup::V1InfoHeader::BundleMetadata __swiftcall V1InfoHeader.BundleMetadata.init(bundleIdentifier:version:)(Swift::String bundleIdentifier, Swift::String version)
{
  *v2 = bundleIdentifier;
  v2[1] = version;
  result.version = version;
  result.bundleIdentifier = bundleIdentifier;
  return result;
}

void sub_2406D9598()
{
  qword_27E4BC530 = 0;
  *algn_27E4BC538 = 0xE000000000000000;
  qword_27E4BC540 = 0;
  unk_27E4BC548 = 0xE000000000000000;
}

uint64_t static V1InfoHeader.BundleMetadata.framework.getter@<X0>(void *a1@<X8>)
{
  if (qword_27E4B5F88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27E4BC538;
  v2 = qword_27E4BC540;
  v3 = unk_27E4BC548;
  *a1 = qword_27E4BC530;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static V1InfoHeader.BundleMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24075ACF4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24075ACF4();
    }
  }

  return result;
}

unint64_t sub_2406D96D8()
{
  if (*v0)
  {
    result = 0x6E6F6973726576;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_2406D9718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000240789440 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24075ACF4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2406D9800(uint64_t a1)
{
  v2 = sub_2406DD2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406D983C(uint64_t a1)
{
  v2 = sub_2406DD2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1InfoHeader.BundleMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC898, &qword_240777148);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD2CC();
  sub_24075AF74();
  v16 = 0;
  v12 = v14[3];
  sub_24075ABB4();
  if (!v12)
  {
    v15 = 1;
    sub_24075ABB4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t V1InfoHeader.BundleMetadata.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24075A114();

  return sub_24075A114();
}

uint64_t V1InfoHeader.BundleMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t V1InfoHeader.BundleMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BC8A8, &qword_240777150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406DD2CC();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_24075AAC4();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_24075AAC4();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2406D9CF4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24075ACF4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24075ACF4();
    }
  }

  return result;
}

uint64_t sub_2406D9D98()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_2406D9E00()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24075A114();

  return sub_24075A114();
}

uint64_t sub_2406D9E50()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t _s12AppleIDSetup12V1InfoHeaderV10OSMetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_24075ACF4()) && (v2 == v7 && v4 == v8 || (sub_24075ACF4()) && (v3 == v9 && v5 == v10 || (sub_24075ACF4()))
  {
    return v6 ^ v11 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t _s12AppleIDSetup12V1InfoHeaderV14DeviceMetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_24075ACF4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12AppleIDSetup12V1InfoHeaderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v57 = *(a1 + 64);
  v64 = *(a1 + 48);
  v65 = *(a1 + 72);
  v73 = *(a1 + 80);
  v60 = *(a1 + 88);
  v63 = *(a1 + 96);
  v56 = *(a1 + 112);
  v51 = *(a1 + 120);
  v52 = *(a1 + 128);
  v53 = *(a1 + 104);
  v45 = *(a1 + 136);
  v46 = *(a1 + 144);
  v43 = *(a1 + 152);
  v44 = *(a1 + 160);
  v4 = *a2;
  v5 = a2[5];
  v72 = a2[6];
  v59 = a2[8];
  v66 = a2[7];
  v67 = a2[9];
  v61 = a2[10];
  v58 = a2[11];
  v62 = *(a2 + 96);
  v54 = a2[14];
  v55 = a2[13];
  v74 = *a1;
  v49 = a2[15];
  v50 = a2[16];
  v71 = *(a1 + 8);
  v6 = *(a1 + 24);
  v80 = v4;
  v47 = a2[17];
  v48 = a2[18];
  v69 = *(a2 + 1);
  v68 = *(a2 + 3);
  v41 = a2[19];
  v42 = a2[20];
  v75 = v71;
  v76 = v6;
  v77 = v2;
  v81 = v69;
  v82 = v68;
  v83 = v5;
  v7 = _s12AppleIDSetup12V1InfoHeaderV14DeviceMetadataV2eeoiySbAE_AEtFZ_0(&v74, &v80);

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v3;
  if (!v3)
  {
    v15 = v64;
    sub_2406DCE48(v64, 0);
    if (!v66)
    {
      sub_2406DCE48(v72, 0);
      sub_2406DCE98(v64, 0);
      goto LABEL_21;
    }

    sub_2406DCE48(v72, v66);
    goto LABEL_16;
  }

  v9 = v64;
  if (!v66)
  {
    sub_2406DCE48(v64, v3);
    v15 = v64;
    sub_2406DCE48(v72, 0);
    sub_2406DCE48(v64, v3);

LABEL_16:
    sub_2406DCE98(v15, v3);
    v16 = v72;
    v17 = v66;
LABEL_30:
    sub_2406DCE98(v16, v17);
    return 0;
  }

  if ((v64 != v72 || v3 != v66) && (v10 = sub_24075ACF4(), v9 = v64, (v10 & 1) == 0) || (v57 != v59 || v65 != v67) && (v11 = v9, v12 = sub_24075ACF4(), v9 = v11, (v12 & 1) == 0))
  {
    sub_2406DCE48(v9, v8);
    sub_2406DCE48(v72, v66);
    sub_2406DCE48(v64, v8);
    v13 = v64;
    sub_2406DCE98(v72, v66);
LABEL_29:

    v16 = v13;
    v17 = v8;
    goto LABEL_30;
  }

  if (v73 == v61 && v60 == v58)
  {
    v13 = v9;
    sub_2406DCE48(v9, v8);
    v14 = v62;
    sub_2406DCE48(v72, v66);
    sub_2406DCE48(v13, v8);
    sub_2406DCE98(v72, v66);
    goto LABEL_20;
  }

  v70 = sub_24075ACF4();
  sub_2406DCE48(v64, v8);
  v14 = v62;
  sub_2406DCE48(v72, v66);
  sub_2406DCE48(v64, v8);
  v13 = v64;
  sub_2406DCE98(v72, v66);
  if ((v70 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:

  sub_2406DCE98(v13, v8);
  if ((v63 ^ v14))
  {
    return 0;
  }

LABEL_21:
  v18 = v56;
  if (!v56)
  {
    v20 = v52;
    v19 = v51;
    sub_2406DCEE8(v53, 0);
    if (!v54)
    {
      sub_2406DCEE8(v55, 0);
      v23 = 0;
      v21 = v53;
      goto LABEL_40;
    }

    v25 = v55;
    v27 = v49;
    v26 = v50;
    v22 = v54;
    sub_2406DCEE8(v55, v54);
    v21 = v53;
    v18 = 0;
LABEL_36:
    v74 = v21;
    *&v75 = v18;
    *(&v75 + 1) = v19;
    *&v76 = v20;
LABEL_54:
    *(&v76 + 1) = v25;
    v77 = v22;
    v78 = v27;
    v79 = v26;
    sub_2405B8A50(&v74, &qword_27E4BCC00, &qword_240779A90);
    return 0;
  }

  v19 = v51;
  v20 = v52;
  v21 = v53;
  v22 = v54;
  if (!v54)
  {
    sub_2406DCEE8(v53, v56);
    v25 = v55;
    v27 = v49;
    v26 = v50;
    sub_2406DCEE8(v55, 0);
    sub_2406DCEE8(v53, v56);

    goto LABEL_36;
  }

  if (v53 != v55 || v56 != v54)
  {
    v18 = v56;
    v21 = v53;
    if ((sub_24075ACF4() & 1) == 0)
    {
      sub_2406DCEE8(v53, v56);
      sub_2406DCEE8(v55, v54);
      sub_2406DCEE8(v53, v56);
      sub_2406DCF2C(v55, v54);

      sub_2406DCF2C(v53, v56);
      return 0;
    }
  }

  if (v51 == v49 && v52 == v50)
  {
    sub_2406DCEE8(v21, v56);
    sub_2406DCEE8(v55, v54);
    sub_2406DCEE8(v21, v56);
    sub_2406DCF2C(v55, v54);

    v23 = v56;
LABEL_40:
    sub_2406DCF2C(v21, v23);
    goto LABEL_41;
  }

  v28 = sub_24075ACF4();
  sub_2406DCEE8(v21, v18);
  sub_2406DCEE8(v55, v54);
  sub_2406DCEE8(v21, v18);
  sub_2406DCF2C(v55, v54);

  sub_2406DCF2C(v21, v18);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v29 = v46;
  if (!v46)
  {
    v31 = v44;
    v36 = v45;
    v37 = v43;
    sub_2406DCEE8(v45, 0);
    if (!v48)
    {
      sub_2406DCEE8(v47, 0);
      v34 = v45;
      v35 = 0;
      goto LABEL_58;
    }

    v25 = v47;
    v27 = v41;
    v26 = v42;
    v22 = v48;
    sub_2406DCEE8(v47, v48);
    v29 = 0;
    goto LABEL_53;
  }

  v31 = v44;
  v30 = v45;
  v22 = v48;
  if (!v48)
  {
    v37 = v43;
    v36 = v45;
    sub_2406DCEE8(v45, v46);
    v25 = v47;
    v27 = v41;
    v26 = v42;
    sub_2406DCEE8(v47, 0);
    sub_2406DCEE8(v45, v46);

LABEL_53:
    v74 = v36;
    *&v75 = v29;
    *(&v75 + 1) = v37;
    *&v76 = v31;
    goto LABEL_54;
  }

  if (v45 == v47 && v46 == v48 || (v32 = sub_24075ACF4(), v30 = v45, v29 = v46, (v32 & 1) != 0))
  {
    if (v43 == v41 && v44 == v42)
    {
      v33 = v30;
      sub_2406DCEE8(v30, v29);
      sub_2406DCEE8(v47, v48);
      sub_2406DCEE8(v33, v29);
      sub_2406DCF2C(v47, v48);

      v34 = v33;
      v35 = v29;
LABEL_58:
      sub_2406DCF2C(v34, v35);
      return 1;
    }

    v38 = v29;
    v39 = v30;
    v40 = sub_24075ACF4();
    sub_2406DCEE8(v39, v38);
    sub_2406DCEE8(v47, v48);
    sub_2406DCEE8(v39, v38);
    sub_2406DCF2C(v47, v48);

    sub_2406DCF2C(v39, v38);
    if (v40)
    {
      return 1;
    }
  }

  else
  {
    sub_2406DCEE8(v45, v46);
    sub_2406DCEE8(v47, v48);
    sub_2406DCEE8(v45, v46);
    sub_2406DCF2C(v47, v48);

    sub_2406DCF2C(v45, v46);
  }

  return 0;
}

uint64_t _s12AppleIDSetup9V1CommandO7RequestO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v3 = type metadata accessor for AuthenticateCommand.Request(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = (&v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SignInCommand.Request(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = (&v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for V1Command.Request(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v83 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v87 = &v83 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v86 = (&v83 - v23);
  MEMORY[0x28223BE20](v22);
  v25 = &v83 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC18, &qword_240779AA8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v83 - v29;
  v31 = &v83 + *(v28 + 56) - v29;
  sub_2406DC664(v88, &v83 - v29, type metadata accessor for V1Command.Request);
  sub_2406DC664(a2, v31, type metadata accessor for V1Command.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v34 = v87;
      sub_2406DC664(v30, v87, type metadata accessor for V1Command.Request);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v35 = v85;
        sub_2406DB6F0(v31, v85, type metadata accessor for AuthenticateCommand.Request);
        v36 = _s12AppleIDSetup19AuthenticateCommandV7RequestV2eeoiySbAE_AEtFZ_0(v34, v35);
        v37 = type metadata accessor for AuthenticateCommand.Request;
        goto LABEL_14;
      }

      v65 = type metadata accessor for AuthenticateCommand.Request;
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_2406DC664(v30, v16, type metadata accessor for V1Command.Request);
      v38 = v16[3];
      v113 = v16[2];
      v114 = v38;
      v115[0] = v16[4];
      *(v115 + 9) = *(v16 + 73);
      v39 = v16[1];
      v111 = *v16;
      v112 = v39;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_2405F717C(&v111);
        goto LABEL_25;
      }

      v40 = *(v31 + 3);
      v41 = *(v31 + 1);
      v103 = *(v31 + 2);
      v104 = v40;
      v42 = *(v31 + 3);
      v105[0] = *(v31 + 4);
      *(v105 + 9) = *(v31 + 73);
      v43 = *(v31 + 1);
      v101 = *v31;
      v102 = v43;
      v44 = v16[3];
      v97 = v16[2];
      v98 = v44;
      v99[0] = v16[4];
      *(v99 + 9) = *(v16 + 73);
      v45 = v16[1];
      v95 = *v16;
      v96 = v45;
      v91 = v103;
      v92 = v42;
      v93[0] = *(v31 + 4);
      *(v93 + 9) = *(v31 + 73);
      v89 = v101;
      v90 = v41;
      v36 = _s12AppleIDSetup13RepairCommandV7RequestO2eeoiySbAE_AEtFZ_0(&v95, &v89);
      sub_2405F717C(&v101);
      sub_2405F717C(&v111);
    }

    else
    {
      sub_2406DC664(v30, v13, type metadata accessor for V1Command.Request);
      v63 = *(v13 + 1);
      v101 = *v13;
      v102 = v63;
      *&v103 = *(v13 + 4);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        sub_2406E0BDC(&v101);
        goto LABEL_25;
      }

      v64 = *(v31 + 1);
      v111 = *v31;
      v112 = v64;
      *&v113 = *(v31 + 4);
      v36 = _s12AppleIDSetup19AgeMigrationCommandV7RequestO2eeoiySbAE_AEtFZ_0(&v101, &v111);
      sub_2406E0BDC(&v101);
      sub_2406E0BDC(&v111);
    }

    goto LABEL_27;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2406DC664(v30, v25, type metadata accessor for V1Command.Request);
    v46 = *(v25 + 9);
    v115[4] = *(v25 + 8);
    v115[5] = v46;
    v116 = *(v25 + 20);
    v47 = *(v25 + 5);
    v115[0] = *(v25 + 4);
    v115[1] = v47;
    v48 = *(v25 + 7);
    v115[2] = *(v25 + 6);
    v115[3] = v48;
    v49 = *(v25 + 1);
    v111 = *v25;
    v112 = v49;
    v50 = *(v25 + 3);
    v113 = *(v25 + 2);
    v114 = v50;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2406BD370(&v111);
      goto LABEL_25;
    }

    v66 = *(v31 + 7);
    v67 = *(v31 + 9);
    v108 = *(v31 + 8);
    v109 = v67;
    v68 = *(v31 + 3);
    v69 = *(v31 + 5);
    v105[0] = *(v31 + 4);
    v105[1] = v69;
    v70 = *(v31 + 5);
    v71 = *(v31 + 7);
    v106 = *(v31 + 6);
    v107 = v71;
    v72 = *(v31 + 1);
    v101 = *v31;
    v102 = v72;
    v73 = *(v31 + 3);
    v75 = *v31;
    v74 = *(v31 + 1);
    v103 = *(v31 + 2);
    v104 = v73;
    v76 = *(v25 + 9);
    v99[4] = *(v25 + 8);
    v99[5] = v76;
    v77 = *(v25 + 5);
    v99[0] = *(v25 + 4);
    v99[1] = v77;
    v78 = *(v25 + 7);
    v99[2] = *(v25 + 6);
    v99[3] = v78;
    v79 = *(v25 + 1);
    v95 = *v25;
    v96 = v79;
    v80 = *(v25 + 3);
    v97 = *(v25 + 2);
    v98 = v80;
    v81 = *(v31 + 9);
    v93[4] = v108;
    v93[5] = v81;
    v93[0] = v105[0];
    v93[1] = v70;
    v93[2] = v106;
    v93[3] = v66;
    v89 = v75;
    v90 = v74;
    v110 = *(v31 + 20);
    v100 = *(v25 + 20);
    v94 = *(v31 + 20);
    v91 = v103;
    v92 = v68;
    v36 = _s12AppleIDSetup16HandshakeCommandO7RequestV2eeoiySbAE_AEtFZ_0(&v95, &v89);
    sub_2406BD370(&v101);
    sub_2406BD370(&v111);
LABEL_27:
    v53 = v30;
    goto LABEL_28;
  }

  v33 = v31;
  if (EnumCaseMultiPayload == 1)
  {
    v34 = v86;
    sub_2406DC664(v30, v86, type metadata accessor for V1Command.Request);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v84;
      sub_2406DB6F0(v31, v84, type metadata accessor for SignInCommand.Request);
      v36 = _s12AppleIDSetup13SignInCommandV7RequestV2eeoiySbAE_AEtFZ_0(v34, v35);
      v37 = type metadata accessor for SignInCommand.Request;
LABEL_14:
      v51 = v30;
      v52 = v37;
      sub_2406DB7F4(v35, v37);
      sub_2406DB7F4(v34, v52);
      v53 = v51;
LABEL_28:
      sub_2406DB7F4(v53, type metadata accessor for V1Command.Request);
      return v36 & 1;
    }

    v65 = type metadata accessor for SignInCommand.Request;
LABEL_21:
    sub_2406DB7F4(v34, v65);
    goto LABEL_25;
  }

  sub_2406DC664(v30, v21, type metadata accessor for V1Command.Request);
  v55 = *v21;
  v54 = *(v21 + 1);
  v57 = *(v21 + 2);
  v56 = *(v21 + 3);
  v58 = v30;
  v59 = v21[32];
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v60 = *v31;
    v61 = *(v33 + 1);
    v88 = v58;
    v62 = *(v33 + 2);
    v87 = *(v33 + 3);
    LODWORD(v86) = v33[32];
    *&v111 = v55;
    *(&v111 + 1) = v54;
    *&v112 = v57;
    *(&v112 + 1) = v56;
    LOBYTE(v113) = v59;
    *&v101 = v60;
    *(&v101 + 1) = v61;
    *&v102 = v62;
    *(&v102 + 1) = v87;
    LOBYTE(v103) = v86;
    v36 = _s12AppleIDSetup15AnisetteCommandV7RequestO2eeoiySbAE_AEtFZ_0(&v111, &v101);
    sub_2405E1818(v60, v61, v62, v87, v86);
    sub_2405E1818(v55, v54, v57, v56, v59);
    v53 = v88;
    goto LABEL_28;
  }

  sub_2405E1818(v55, v54, v57, v56, v59);
  v30 = v58;
LABEL_25:
  sub_2405B8A50(v30, &qword_27E4BCC18, &qword_240779AA8);
  v36 = 0;
  return v36 & 1;
}

unint64_t sub_2406DB4E4()
{
  result = qword_27E4BC588;
  if (!qword_27E4BC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC588);
  }

  return result;
}

unint64_t sub_2406DB538()
{
  result = qword_27E4BC590;
  if (!qword_27E4BC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC590);
  }

  return result;
}

unint64_t sub_2406DB58C()
{
  result = qword_27E4BC598;
  if (!qword_27E4BC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC598);
  }

  return result;
}

uint64_t sub_2406DB5E0(uint64_t a1, unint64_t a2)
{
  if (a2 - 21 >= 2)
  {
    return sub_2405E170C(a1, a2);
  }

  return a1;
}

unint64_t sub_2406DB5F4()
{
  result = qword_27E4BC5A0;
  if (!qword_27E4BC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC5A0);
  }

  return result;
}

unint64_t sub_2406DB648()
{
  result = qword_27E4BC5A8;
  if (!qword_27E4BC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC5A8);
  }

  return result;
}

unint64_t sub_2406DB69C()
{
  result = qword_27E4BC5B0;
  if (!qword_27E4BC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC5B0);
  }

  return result;
}

uint64_t sub_2406DB6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2406DB758()
{
  result = qword_27E4BC5B8;
  if (!qword_27E4BC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC5B8);
  }

  return result;
}

uint64_t sub_2406DB7AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2406DB7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2406DB854()
{
  result = qword_27E4BC5C0;
  if (!qword_27E4BC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC5C0);
  }

  return result;
}

unint64_t sub_2406DB8A8()
{
  result = qword_27E4BC600;
  if (!qword_27E4BC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC600);
  }

  return result;
}

uint64_t _s12AppleIDSetup9V1CommandO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for V1Command.Response(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for V1Command.Request(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for V1Command(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC08, &qword_240779A98);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v41 - v24;
  v26 = &v41 + *(v23 + 56) - v24;
  sub_2406DC664(a1, &v41 - v24, type metadata accessor for V1Command);
  sub_2406DC664(a2, v26, type metadata accessor for V1Command);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2406DC664(v25, v18, type metadata accessor for V1Command);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v42;
        sub_2406DB6F0(v26, v42, type metadata accessor for V1Command.Response);
        v29 = _s12AppleIDSetup9V1CommandO8ResponseO2eeoiySbAE_AEtFZ_0(v18, v28);
        v30 = type metadata accessor for V1Command.Response;
        sub_2406DB7F4(v28, type metadata accessor for V1Command.Response);
        v31 = v18;
LABEL_13:
        sub_2406DB7F4(v31, v30);
        goto LABEL_14;
      }

      sub_2406DB7F4(v18, type metadata accessor for V1Command.Response);
    }

    else
    {
      sub_2406DC664(v25, v15, type metadata accessor for V1Command);
      v33 = *v15;
      v32 = *(v15 + 1);
      v34 = *(v15 + 2);
      v35 = v15[24];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = *v26;
        v37 = *(v26 + 1);
        v38 = *(v26 + 2);
        v39 = v26[24];
        v45[0] = v33;
        v45[1] = v32;
        v45[2] = v34;
        v46 = v35;
        v43[0] = v36;
        v43[1] = v37;
        v43[2] = v38;
        v44 = v39;
        v29 = static V1CommandError.== infix(_:_:)(v45, v43);
        sub_2406DCA8C(v36, v37, v38, v39);
        sub_2406DCA8C(v33, v32, v34, v35);
LABEL_14:
        sub_2406DB7F4(v25, type metadata accessor for V1Command);
        return v29 & 1;
      }

      sub_2406DCA8C(v33, v32, v34, v35);
    }
  }

  else
  {
    sub_2406DC664(v25, v20, type metadata accessor for V1Command);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2406DB6F0(v26, v10, type metadata accessor for V1Command.Request);
      v29 = _s12AppleIDSetup9V1CommandO7RequestO2eeoiySbAE_AEtFZ_0(v20, v10);
      v30 = type metadata accessor for V1Command.Request;
      sub_2406DB7F4(v10, type metadata accessor for V1Command.Request);
      v31 = v20;
      goto LABEL_13;
    }

    sub_2406DB7F4(v20, type metadata accessor for V1Command.Request);
  }

  sub_2405B8A50(v25, &qword_27E4BCC08, &qword_240779A98);
  v29 = 0;
  return v29 & 1;
}

uint64_t _s12AppleIDSetup9V1CommandO8ResponseO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v79 = a2;
  v2 = type metadata accessor for AgeMigrationCommand.Response(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AuthenticateCommand.Response(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnisetteCommand.Response();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SignInCommand.Response(0);
  v11 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v74 = (&v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for V1Command.Response(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v72 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v77 = (&v72 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v72 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v72 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = &v72 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCC10, &qword_240779AA0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v35 = &v72 - v34;
  v36 = &v72 + *(v33 + 56) - v34;
  sub_2406DC664(v78, &v72 - v34, type metadata accessor for V1Command.Response);
  sub_2406DC664(v79, v36, type metadata accessor for V1Command.Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v28 = v77;
      sub_2406DC664(v35, v77, type metadata accessor for V1Command.Response);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v58 = type metadata accessor for AuthenticateCommand.Response;
LABEL_23:
        v59 = v58;
        v60 = v28;
LABEL_27:
        sub_2406DB7F4(v60, v59);
LABEL_28:
        sub_2405B8A50(v35, &qword_27E4BCC10, &qword_240779AA0);
LABEL_29:
        v40 = 0;
        return v40 & 1;
      }

      v52 = v75;
      sub_2406DB6F0(v36, v75, type metadata accessor for AuthenticateCommand.Response);
      sub_240602168();
      v53 = v35;
      sub_2406021BC();
      sub_240602210();
      v40 = sub_240759964();
      v54 = type metadata accessor for AuthenticateCommand.Response;
      sub_2406DB7F4(v52, type metadata accessor for AuthenticateCommand.Response);
      v55 = v28;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_2406DC664(v35, v20, type metadata accessor for V1Command.Response);
        v42 = *v20;
        v41 = v20[1];
        v44 = v20[2];
        v43 = v20[3];
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v79 = v35;
          v45 = *v36;
          v46 = *(v36 + 1);
          v47 = *(v36 + 2);
          v48 = *(v36 + 3);
          *&v91 = v42;
          *(&v91 + 1) = v41;
          *&v92 = v44;
          *(&v92 + 1) = v43;
          *&v84 = v45;
          *(&v84 + 1) = v46;
          *&v85 = v47;
          *(&v85 + 1) = v48;
          v40 = _s12AppleIDSetup13RepairCommandV8ResponseO2eeoiySbAE_AEtFZ_0(&v91, &v84);
          sub_2405F7088(v45, v46, v47, v48);
          sub_2405F7088(v42, v41, v44, v43);
          sub_2406DB7F4(v79, type metadata accessor for V1Command.Response);
          return v40 & 1;
        }

        sub_2405F7088(v42, v41, v44, v43);
        goto LABEL_28;
      }

      sub_2406DC664(v35, v17, type metadata accessor for V1Command.Response);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v59 = type metadata accessor for AgeMigrationCommand.Response;
        v60 = v17;
        goto LABEL_27;
      }

      v57 = v76;
      sub_2406DB6F0(v36, v76, type metadata accessor for AgeMigrationCommand.Response);
      v40 = _s12AppleIDSetup19AgeMigrationCommandV8ResponseO2eeoiySbAE_AEtFZ_0(v17, v57);
      v53 = v35;
      v54 = type metadata accessor for AgeMigrationCommand.Response;
      sub_2406DB7F4(v57, type metadata accessor for AgeMigrationCommand.Response);
      v55 = v17;
    }

LABEL_20:
    sub_2406DB7F4(v55, v54);
    sub_2406DB7F4(v53, type metadata accessor for V1Command.Response);
    return v40 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2406DC664(v35, v30, type metadata accessor for V1Command.Response);
    v49 = *(v30 + 5);
    v95 = *(v30 + 4);
    v96 = v49;
    v97 = v30[96];
    v50 = *(v30 + 1);
    v91 = *v30;
    v92 = v50;
    v51 = *(v30 + 3);
    v93 = *(v30 + 2);
    v94 = v51;
    if (!swift_getEnumCaseMultiPayload())
    {
      v62 = *(v36 + 3);
      v63 = *(v36 + 5);
      v88 = *(v36 + 4);
      v89 = v63;
      v64 = *(v36 + 1);
      v84 = *v36;
      v85 = v64;
      v65 = *(v36 + 3);
      v67 = *v36;
      v66 = *(v36 + 1);
      v86 = *(v36 + 2);
      v87 = v65;
      v68 = *(v30 + 5);
      v82[4] = *(v30 + 4);
      v82[5] = v68;
      v69 = *(v30 + 1);
      v82[0] = *v30;
      v82[1] = v69;
      v70 = *(v30 + 3);
      v82[2] = *(v30 + 2);
      v82[3] = v70;
      v71 = *(v36 + 5);
      v80[4] = v88;
      v80[5] = v71;
      v80[0] = v67;
      v80[1] = v66;
      v90 = v36[96];
      v83 = v30[96];
      v81 = v36[96];
      v80[2] = v86;
      v80[3] = v62;
      v40 = _s12AppleIDSetup16HandshakeCommandO8ResponseV2eeoiySbAE_AEtFZ_0(v82, v80);
      sub_2406BFA90(&v84);
      sub_2406BFA90(&v91);
      sub_2406DB7F4(v35, type metadata accessor for V1Command.Response);
      return v40 & 1;
    }

    sub_2406BFA90(&v91);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2406DC664(v35, v25, type metadata accessor for V1Command.Response);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v59 = type metadata accessor for AnisetteCommand.Response;
      v60 = v25;
      goto LABEL_27;
    }

    v56 = v73;
    sub_2406DB6F0(v36, v73, type metadata accessor for AnisetteCommand.Response);
    v40 = _s12AppleIDSetup15AnisetteCommandV8ResponseO2eeoiySbAE_AEtFZ_0(v25, v56);
    v53 = v35;
    v54 = type metadata accessor for AnisetteCommand.Response;
    sub_2406DB7F4(v56, type metadata accessor for AnisetteCommand.Response);
    v55 = v25;
    goto LABEL_20;
  }

  sub_2406DC664(v35, v28, type metadata accessor for V1Command.Response);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v58 = type metadata accessor for SignInCommand.Response;
    goto LABEL_23;
  }

  v38 = v36;
  v39 = v74;
  sub_2406DB6F0(v38, v74, type metadata accessor for SignInCommand.Response);
  if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(v28, v39) & 1) == 0 || (sub_24061F3B8(*(v28 + *(v72 + 20)), *(v39 + *(v72 + 20))) & 1) == 0)
  {
    sub_2406DB7F4(v39, type metadata accessor for SignInCommand.Response);
    sub_2406DB7F4(v28, type metadata accessor for SignInCommand.Response);
    sub_2406DB7F4(v35, type metadata accessor for V1Command.Response);
    goto LABEL_29;
  }

  sub_2406DB7F4(v39, type metadata accessor for SignInCommand.Response);
  sub_2406DB7F4(v28, type metadata accessor for SignInCommand.Response);
  sub_2406DB7F4(v35, type metadata accessor for V1Command.Response);
  v40 = 1;
  return v40 & 1;
}

unint64_t sub_2406DC610()
{
  result = qword_27E4BC640;
  if (!qword_27E4BC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC640);
  }

  return result;
}

uint64_t sub_2406DC664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2406DC6CC()
{
  result = qword_27E4BC648;
  if (!qword_27E4BC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC648);
  }

  return result;
}

unint64_t sub_2406DC720()
{
  result = qword_27E4BC658;
  if (!qword_27E4BC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC658);
  }

  return result;
}

unint64_t sub_2406DC774()
{
  result = qword_27E4BC660;
  if (!qword_27E4BC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC660);
  }

  return result;
}

unint64_t sub_2406DC7C8()
{
  result = qword_27E4BC668;
  if (!qword_27E4BC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC668);
  }

  return result;
}

unint64_t sub_2406DC81C()
{
  result = qword_27E4BC670;
  if (!qword_27E4BC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC670);
  }

  return result;
}

unint64_t sub_2406DC870()
{
  result = qword_27E4BC678;
  if (!qword_27E4BC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC678);
  }

  return result;
}

unint64_t sub_2406DC8C4()
{
  result = qword_27E4B8B78;
  if (!qword_27E4B8B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8B38, &qword_240777010);
    sub_240602360();
    sub_2406023B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8B78);
  }

  return result;
}

uint64_t sub_2406DC950(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

unint64_t sub_2406DC990()
{
  result = qword_27E4BC6F0;
  if (!qword_27E4BC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC6F0);
  }

  return result;
}

unint64_t sub_2406DC9E4()
{
  result = qword_27E4BC6F8;
  if (!qword_27E4BC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC6F8);
  }

  return result;
}

unint64_t sub_2406DCA38()
{
  result = qword_27E4BC700;
  if (!qword_27E4BC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC700);
  }

  return result;
}

uint64_t sub_2406DCA8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

unint64_t sub_2406DCAAC()
{
  result = qword_27E4BC708;
  if (!qword_27E4BC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC708);
  }

  return result;
}

unint64_t sub_2406DCB00()
{
  result = qword_27E4BC718;
  if (!qword_27E4BC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC718);
  }

  return result;
}

unint64_t sub_2406DCB54()
{
  result = qword_27E4BC748;
  if (!qword_27E4BC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC748);
  }

  return result;
}

unint64_t sub_2406DCBA8()
{
  result = qword_27E4BC7A0;
  if (!qword_27E4BC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7A0);
  }

  return result;
}

unint64_t sub_2406DCBFC()
{
  result = qword_27E4BC7A8;
  if (!qword_27E4BC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7A8);
  }

  return result;
}

unint64_t sub_2406DCC50()
{
  result = qword_27E4BC7B0;
  if (!qword_27E4BC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7B0);
  }

  return result;
}

unint64_t sub_2406DCCA4()
{
  result = qword_27E4BC7B8;
  if (!qword_27E4BC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7B8);
  }

  return result;
}

unint64_t sub_2406DCCF8()
{
  result = qword_27E4BC7C0;
  if (!qword_27E4BC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7C0);
  }

  return result;
}

unint64_t sub_2406DCD4C()
{
  result = qword_27E4BC7C8;
  if (!qword_27E4BC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7C8);
  }

  return result;
}

unint64_t sub_2406DCDA0()
{
  result = qword_27E4BC7D0;
  if (!qword_27E4BC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7D0);
  }

  return result;
}

unint64_t sub_2406DCDF4()
{
  result = qword_27E4BC7D8;
  if (!qword_27E4BC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC7D8);
  }

  return result;
}

uint64_t sub_2406DCE48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2406DCE98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2406DCEE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2406DCF2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2406DCFA8()
{
  result = qword_27E4BC828;
  if (!qword_27E4BC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC828);
  }

  return result;
}

unint64_t sub_2406DCFFC()
{
  result = qword_27E4BC830;
  if (!qword_27E4BC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC830);
  }

  return result;
}

unint64_t sub_2406DD050()
{
  result = qword_27E4BC838;
  if (!qword_27E4BC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC838);
  }

  return result;
}

unint64_t sub_2406DD0A4()
{
  result = qword_27E4BC840;
  if (!qword_27E4BC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC840);
  }

  return result;
}

unint64_t sub_2406DD0F8()
{
  result = qword_27E4BC850;
  if (!qword_27E4BC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC850);
  }

  return result;
}

unint64_t sub_2406DD14C()
{
  result = qword_27E4BC858;
  if (!qword_27E4BC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC858);
  }

  return result;
}

unint64_t sub_2406DD1A0()
{
  result = qword_27E4BC860;
  if (!qword_27E4BC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC860);
  }

  return result;
}

unint64_t sub_2406DD224()
{
  result = qword_27E4BC870;
  if (!qword_27E4BC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC870);
  }

  return result;
}

unint64_t sub_2406DD278()
{
  result = qword_27E4BC888;
  if (!qword_27E4BC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC888);
  }

  return result;
}

unint64_t sub_2406DD2CC()
{
  result = qword_27E4BC8A0;
  if (!qword_27E4BC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC8A0);
  }

  return result;
}

uint64_t sub_2406DD320(uint64_t a1)
{
  result = sub_2406DB7AC(&qword_27E4BC8B8, type metadata accessor for V1Command.Request);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2406DD378(void *a1)
{
  a1[1] = sub_2406DB7AC(&qword_27E4BC758, type metadata accessor for V1Command.Request);
  a1[2] = sub_2406DB7AC(&qword_27E4BC720, type metadata accessor for V1Command.Request);
  result = sub_2406DB7AC(&qword_27E4BC8C0, type metadata accessor for V1Command.Request);
  a1[3] = result;
  return result;
}

uint64_t sub_2406DD46C(uint64_t a1)
{
  result = sub_2406DB7AC(&qword_27E4BC8D0, type metadata accessor for V1Command.Response);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2406DD4C4(void *a1)
{
  a1[1] = sub_2406DB7AC(&qword_27E4BC750, type metadata accessor for V1Command.Response);
  a1[2] = sub_2406DB7AC(&qword_27E4BC710, type metadata accessor for V1Command.Response);
  result = sub_2406DB7AC(&qword_27E4BC8D8, type metadata accessor for V1Command.Response);
  a1[3] = result;
  return result;
}

uint64_t sub_2406DD648(void *a1)
{
  a1[1] = sub_2406DB7AC(&qword_280FAD850, type metadata accessor for V1Command);
  a1[2] = sub_2406DB7AC(qword_280FAD868, type metadata accessor for V1Command);
  result = sub_2406DB7AC(&qword_280FAD860, type metadata accessor for V1Command);
  a1[3] = result;
  return result;
}

unint64_t sub_2406DD77C()
{
  result = qword_27E4BC8F8;
  if (!qword_27E4BC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC8F8);
  }

  return result;
}

unint64_t sub_2406DD7D4()
{
  result = qword_27E4BC900;
  if (!qword_27E4BC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC900);
  }

  return result;
}

unint64_t sub_2406DD868()
{
  result = qword_27E4BC908;
  if (!qword_27E4BC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC908);
  }

  return result;
}

unint64_t sub_2406DD8BC()
{
  result = qword_27E4BC910;
  if (!qword_27E4BC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC910);
  }

  return result;
}

unint64_t sub_2406DD910()
{
  result = qword_27E4BC918;
  if (!qword_27E4BC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC918);
  }

  return result;
}

unint64_t sub_2406DD968()
{
  result = qword_27E4BC920;
  if (!qword_27E4BC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC920);
  }

  return result;
}

unint64_t sub_2406DD9FC()
{
  result = qword_27E4BC928;
  if (!qword_27E4BC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC928);
  }

  return result;
}

unint64_t sub_2406DDA54()
{
  result = qword_27E4BC930;
  if (!qword_27E4BC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC930);
  }

  return result;
}

unint64_t sub_2406DDAE8()
{
  result = qword_27E4BC938;
  if (!qword_27E4BC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC938);
  }

  return result;
}

unint64_t sub_2406DDB40()
{
  result = qword_27E4BC940;
  if (!qword_27E4BC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC940);
  }

  return result;
}

uint64_t sub_2406DDBD4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2406DDC28()
{
  result = qword_27E4BC948;
  if (!qword_27E4BC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC948);
  }

  return result;
}

unint64_t sub_2406DDC80()
{
  result = qword_27E4BC950;
  if (!qword_27E4BC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC950);
  }

  return result;
}

uint64_t sub_2406DDCFC()
{
  result = type metadata accessor for V1Command.Request(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for V1Command.Response(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2406DDD78()
{
  result = type metadata accessor for SignInCommand.Request(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AuthenticateCommand.Request(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2406DDE14()
{
  result = type metadata accessor for SignInCommand.Response(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AnisetteCommand.Response();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AuthenticateCommand.Response(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AgeMigrationCommand.Response(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup14V1CommandErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_2406DDEE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2406DDF28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2406DDF70(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_2406DDF9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2406DDFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2406DE084(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2406DE0E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2406DE150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2406DE198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for V1CommandError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for V1CommandError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2406DE52C()
{
  result = qword_27E4BC958;
  if (!qword_27E4BC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC958);
  }

  return result;
}

unint64_t sub_2406DE584()
{
  result = qword_27E4BC960;
  if (!qword_27E4BC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC960);
  }

  return result;
}

unint64_t sub_2406DE5DC()
{
  result = qword_27E4BC968;
  if (!qword_27E4BC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC968);
  }

  return result;
}

unint64_t sub_2406DE634()
{
  result = qword_27E4BC970;
  if (!qword_27E4BC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC970);
  }

  return result;
}

unint64_t sub_2406DE68C()
{
  result = qword_27E4BC978;
  if (!qword_27E4BC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC978);
  }

  return result;
}

unint64_t sub_2406DE6E4()
{
  result = qword_27E4BC980;
  if (!qword_27E4BC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC980);
  }

  return result;
}

unint64_t sub_2406DE73C()
{
  result = qword_27E4BC988;
  if (!qword_27E4BC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC988);
  }

  return result;
}

unint64_t sub_2406DE794()
{
  result = qword_27E4BC990;
  if (!qword_27E4BC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC990);
  }

  return result;
}

unint64_t sub_2406DE7EC()
{
  result = qword_27E4BC998;
  if (!qword_27E4BC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC998);
  }

  return result;
}

unint64_t sub_2406DE844()
{
  result = qword_27E4BC9A0;
  if (!qword_27E4BC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BC9A0);
  }

  return result;
}