uint64_t sub_24063230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v9 = type metadata accessor for MachAgeMigrationMessage();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B90, &qword_24076CD20) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B98, &qword_24076CD28);
  v5[17] = v13;
  v14 = *(v13 - 8);
  v5[18] = v14;
  v15 = *(v14 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240632510, 0, 0);
}

uint64_t sub_240632510()
{
  v1 = v0[19];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B80, &qword_24076CD00);
  sub_24075A444();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_2406325D8;
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_2406325D8()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2406326D4, 0, 0);
}

uint64_t sub_2406326D4()
{
  v43 = v0;
  v1 = v0[16];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
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

    v6 = v0[19];
    v8 = v0[15];
    v7 = v0[16];
    v10 = v0[13];
    v9 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[8];
    v39 = v0[7];
    v40 = v0[6];

    v14 = v0[1];

    return v14();
  }

  else
  {
    sub_240635FFC(v1, v0[15], type metadata accessor for MachAgeMigrationMessage);
    if (qword_27E4B5EB0 != -1)
    {
      swift_once();
    }

    v16 = v0[14];
    v17 = v0[15];
    v18 = sub_240759AE4();
    v0[21] = __swift_project_value_buffer(v18, qword_27E4B8500);
    sub_240635B84(v17, v16, type metadata accessor for MachAgeMigrationMessage);
    v19 = sub_240759AC4();
    v20 = sub_24075A5D4();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[14];
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 136315138;
      v25 = MachAgeMigrationMessage.description.getter();
      v27 = v26;
      sub_240635BEC(v22, type metadata accessor for MachAgeMigrationMessage);
      v28 = sub_2405BBA7C(v25, v27, &v42);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_240579000, v19, v20, "Sending message: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x245CC76B0](v24, -1, -1);
      MEMORY[0x245CC76B0](v23, -1, -1);
    }

    else
    {

      sub_240635BEC(v22, type metadata accessor for MachAgeMigrationMessage);
    }

    v29 = v0[3];
    v30 = v29[3];
    v31 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v32 = *(v31 + 56);
    v41 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    v0[22] = v34;
    v35 = sub_2406362FC(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage);
    *v34 = v0;
    v34[1] = sub_240632B98;
    v36 = v0[15];
    v37 = v0[8];
    v38 = v0[9];

    return v41(v37, v36, v38, v35, v30, v31);
  }
}

uint64_t sub_240632B98()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2406332B8;
  }

  else
  {
    v3 = sub_240632CAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240632CAC()
{
  v69 = v0;
  v1 = v0[21];
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
    v65 = swift_slowAlloc();
    v68[0] = v65;
    *v10 = 136315138;
    v2(v8, v6, v9);
    v11 = sub_24075A0E4();
    v13 = v12;
    v14 = *(v7 + 8);
    v14(v6, v9);
    v15 = sub_2405BBA7C(v11, v13, v68);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_240579000, v3, v4, "Sent message and received reply: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x245CC76B0](v65, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  else
  {
    v16 = v0[4];
    v17 = v0[5];

    v14 = *(v17 + 8);
    v14(v6, v16);
  }

  v18 = v0[23];
  v19 = v0[13];
  v21 = v0[8];
  v20 = v0[9];
  sub_2406362FC(&qword_27E4B7D70, type metadata accessor for MachAgeMigrationMessage);
  sub_240759C34();
  if (v18)
  {
    v22 = v0[5] + 8;
    v14(v0[8], v0[4]);
    v23 = v0[21];
    sub_240635B84(v0[15], v0[11], type metadata accessor for MachAgeMigrationMessage);
    v24 = v18;
    v25 = sub_240759AC4();
    v26 = sub_24075A5E4();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[15];
    v29 = v0[11];
    if (v27)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v68[0] = v32;
      *v30 = 136315394;
      v66 = v28;
      v33 = MachAgeMigrationMessage.description.getter();
      v35 = v34;
      sub_240635BEC(v29, type metadata accessor for MachAgeMigrationMessage);
      v36 = sub_2405BBA7C(v33, v35, v68);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2112;
      v37 = v18;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v38;
      *v31 = v38;
      _os_log_impl(&dword_240579000, v25, v26, "Failed to send message (%s) with error: %@", v30, 0x16u);
      sub_2405B8A50(v31, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x245CC76B0](v32, -1, -1);
      MEMORY[0x245CC76B0](v30, -1, -1);

      v39 = v66;
    }

    else
    {

      sub_240635BEC(v29, type metadata accessor for MachAgeMigrationMessage);
      v39 = v28;
    }
  }

  else
  {
    v67 = v14;
    v40 = v0[21];
    sub_240635B84(v0[13], v0[12], type metadata accessor for MachAgeMigrationMessage);
    v41 = sub_240759AC4();
    v42 = sub_24075A5D4();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[15];
    v46 = v0[12];
    v45 = v0[13];
    v47 = v0[8];
    v49 = v0[4];
    v48 = v0[5];
    if (v43)
    {
      v64 = v0[4];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v68[0] = v51;
      *v50 = 136315138;
      v62 = v47;
      v63 = v44;
      v52 = MachAgeMigrationMessage.description.getter();
      v54 = v53;
      sub_240635BEC(v46, type metadata accessor for MachAgeMigrationMessage);
      v55 = sub_2405BBA7C(v52, v54, v68);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_240579000, v41, v42, "Decoded response: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x245CC76B0](v51, -1, -1);
      MEMORY[0x245CC76B0](v50, -1, -1);

      sub_240635BEC(v45, type metadata accessor for MachAgeMigrationMessage);
      v67(v62, v64);
      v39 = v63;
    }

    else
    {

      sub_240635BEC(v46, type metadata accessor for MachAgeMigrationMessage);
      sub_240635BEC(v45, type metadata accessor for MachAgeMigrationMessage);
      v67(v47, v49);
      v39 = v44;
    }
  }

  sub_240635BEC(v39, type metadata accessor for MachAgeMigrationMessage);
  v56 = *(MEMORY[0x277D85798] + 4);
  v57 = swift_task_alloc();
  v0[20] = v57;
  *v57 = v0;
  v57[1] = sub_2406325D8;
  v58 = v0[19];
  v59 = v0[16];
  v60 = v0[17];

  return MEMORY[0x2822003E8](v59, 0, 0, v60);
}

uint64_t sub_2406332B8()
{
  v27 = v0;
  v1 = v0[23];
  v2 = v0[21];
  sub_240635B84(v0[15], v0[11], type metadata accessor for MachAgeMigrationMessage);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  v8 = v0[11];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v9 = 136315394;
    v25 = v7;
    v12 = MachAgeMigrationMessage.description.getter();
    v14 = v13;
    sub_240635BEC(v8, type metadata accessor for MachAgeMigrationMessage);
    v15 = sub_2405BBA7C(v12, v14, &v26);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_240579000, v4, v5, "Failed to send message (%s) with error: %@", v9, 0x16u);
    sub_2405B8A50(v10, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);

    v18 = v25;
  }

  else
  {

    sub_240635BEC(v8, type metadata accessor for MachAgeMigrationMessage);
    v18 = v7;
  }

  sub_240635BEC(v18, type metadata accessor for MachAgeMigrationMessage);
  v19 = *(MEMORY[0x277D85798] + 4);
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_2406325D8;
  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[17];

  return MEMORY[0x2822003E8](v22, 0, 0, v23);
}

uint64_t sub_240633554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v91 = a4;
  v90 = a3;
  v89 = a2;
  v88 = a1;
  v87 = a5;
  v7 = sub_240759B44();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v85 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = &v79 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v79 - v15;
  v17 = sub_240759BE4();
  v86 = *(v17 - 8);
  v18 = *(v86 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v79 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v79 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  v30 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_inactiveSession;
  swift_beginAccess();
  sub_2405B044C(v6 + v30, &v95, &qword_27E4B9B20, &qword_24076CB38);
  if (v96)
  {
    sub_24058C9C0(&v95, &v97);
    if (qword_27E4B5F18 != -1)
    {
      swift_once();
    }

    v31 = sub_240759AE4();
    __swift_project_value_buffer(v31, qword_27E4B9AE0);
    sub_2405F7830(&v97, &v95);
    v32 = sub_240759AC4();
    v33 = sub_24075A5D4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v100 = v35;
      *v34 = 136315138;
      sub_2405F7830(&v95, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B40, &qword_24076CCC8);
      v36 = sub_24075A0E4();
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_1(&v95);
      v39 = sub_2405BBA7C(v36, v38, &v100);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_240579000, v32, v33, "Activating inactive session: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x245CC76B0](v35, -1, -1);
      MEMORY[0x245CC76B0](v34, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v95);
    }

    v51 = v98;
    v52 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, v98);
    (*(v52 + 16))(*(v93 + 112), v51, v52);
    v53 = v98;
    v54 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, v98);
    (*(v54 + 24))(v88, v89, v53, v54);
    v55 = v98;
    v56 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, v98);
    (*(v56 + 32))(v90, v91, v55, v56);
    v57 = v98;
    v58 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, v98);
    v59 = v92;
    (*(v58 + 40))(v57, v58);
    if (v59)
    {
      return __swift_destroy_boxed_opaque_existential_1(&v97);
    }

    else
    {
      return sub_24058C9C0(&v97, v87);
    }
  }

  else
  {
    v83 = v24;
    v84 = v21;
    sub_2405B8A50(&v95, &qword_27E4B9B20, &qword_24076CB38);
    sub_2405B044C(v93 + OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_endpoint, v16, &qword_27E4B9B18, &qword_24076CB30);
    v40 = v86;
    if ((*(v86 + 48))(v16, 1, v17) == 1)
    {
      sub_2405B8A50(v16, &qword_27E4B9B18, &qword_24076CB30);
      if (qword_27E4B5F18 != -1)
      {
        swift_once();
      }

      v41 = sub_240759AE4();
      __swift_project_value_buffer(v41, qword_27E4B9AE0);
      v42 = sub_240759AC4();
      v43 = sub_24075A5D4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v97 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_2405BBA7C(0xD000000000000028, 0x8000000240786850, &v97);
        _os_log_impl(&dword_240579000, v42, v43, "Creating new session for mach service: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x245CC76B0](v45, -1, -1);
        MEMORY[0x245CC76B0](v44, -1, -1);
      }

      v46 = sub_240759BD4();
      v47 = *(v93 + 112);
      sub_240759B34();

      v48 = v92;
      result = sub_240759B14();
      if (!v48)
      {
        v50 = v87;
        v87[3] = v46;
        v50[4] = &protocol witness table for XPCSession;
        *v50 = result;
      }
    }

    else
    {
      v60 = v17;
      v61 = v29;
      (*(v40 + 32))(v29, v16, v60);
      if (qword_27E4B5F18 != -1)
      {
        swift_once();
      }

      v62 = sub_240759AE4();
      __swift_project_value_buffer(v62, qword_27E4B9AE0);
      v63 = *(v40 + 16);
      v63(v27, v29, v60);
      v64 = sub_240759AC4();
      v82 = sub_24075A5D4();
      if (os_log_type_enabled(v64, v82))
      {
        v65 = swift_slowAlloc();
        v81 = v12;
        v66 = v65;
        v80 = swift_slowAlloc();
        *&v97 = v80;
        *v66 = 136315138;
        v63(v83, v27, v60);
        v83 = sub_24075A0E4();
        v67 = v61;
        v69 = v68;
        v85 = *(v40 + 8);
        v85(v27, v60);
        v70 = sub_2405BBA7C(v83, v69, &v97);
        v61 = v67;

        *(v66 + 4) = v70;
        _os_log_impl(&dword_240579000, v64, v82, "Creating new session with xpc endpoint: %s", v66, 0xCu);
        v71 = v80;
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x245CC76B0](v71, -1, -1);
        MEMORY[0x245CC76B0](v66, -1, -1);
      }

      else
      {

        v85 = *(v40 + 8);
        v85(v27, v60);
      }

      v72 = v63;
      v73 = v84;
      v74 = sub_240759BD4();
      v72(v73, v61, v60);
      v75 = *(v93 + 112);
      sub_240759B34();

      v76 = v92;
      v77 = sub_240759BC4();
      if (!v76)
      {
        v78 = v87;
        v87[3] = v74;
        v78[4] = &protocol witness table for XPCSession;
        *v78 = v77;
      }

      return (v85)(v61, v60);
    }
  }

  return result;
}

uint64_t sub_240633F40(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  v5 = type metadata accessor for AnisetteCommand.Response();
  *(v3 + 256) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  v7 = type metadata accessor for MachAgeMigrationMessage();
  *(v3 + 288) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  v9 = *(a2 + 16);
  *(v3 + 328) = *a2;
  *(v3 + 344) = v9;
  *(v3 + 129) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_240634060, v2, 0);
}

uint64_t sub_240634060()
{
  v65 = v0;
  v1 = *(v0 + 248);
  v2 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_activeSession;
  swift_beginAccess();
  sub_2405B044C(v1 + v2, v0 + 56, &qword_27E4B9B20, &qword_24076CB38);
  if (*(v0 + 80))
  {
    sub_24058C9C0((v0 + 56), v0 + 16);
    if (qword_27E4B5F18 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 129);
    v5 = *(v0 + 344);
    v4 = *(v0 + 352);
    v7 = *(v0 + 328);
    v6 = *(v0 + 336);
    v8 = sub_240759AE4();
    *(v0 + 360) = __swift_project_value_buffer(v8, qword_27E4B9AE0);
    sub_240635AF0(v7, v6, v5, v4, v3);
    v9 = sub_240759AC4();
    v10 = sub_24075A5D4();
    sub_2405E1818(v7, v6, v5, v4, v3);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 129);
      v13 = *(v0 + 344);
      v12 = *(v0 + 352);
      v15 = *(v0 + 328);
      v14 = *(v0 + 336);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v64[0] = v17;
      *v16 = 136315138;
      *(v0 + 176) = v15;
      *(v0 + 184) = v14;
      *(v0 + 192) = v13;
      *(v0 + 200) = v12;
      *(v0 + 208) = v11;
      sub_240635AF0(v15, v14, v13, v12, v11);
      v18 = sub_24075A0E4();
      v20 = sub_2405BBA7C(v18, v19, v64);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_240579000, v9, v10, "AgeMigrationController - Sending anisette request %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CC76B0](v17, -1, -1);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    v21 = *(v0 + 129);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v26 = *(v0 + 312);
    v27 = *(v0 + 288);
    v28 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *v26 = v25;
    *(v26 + 8) = v24;
    *(v26 + 16) = v23;
    *(v26 + 24) = v22;
    *(v26 + 32) = v21;
    swift_storeEnumTagMultiPayload();
    v29 = *(v28 + 48);
    sub_240635AF0(v25, v24, v23, v22, v21);
    v63 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    *(v0 + 368) = v31;
    sub_2406362FC(&qword_27E4B7D78, type metadata accessor for MachAgeMigrationMessage);
    sub_2406362FC(&qword_27E4B7D70, type metadata accessor for MachAgeMigrationMessage);
    *v31 = v0;
    v31[1] = sub_240634688;
    v33 = *(v0 + 312);
    v32 = *(v0 + 320);
    v34 = *(v0 + 288);

    return v63(v32, v33);
  }

  else
  {
    sub_2405B8A50(v0 + 56, &qword_27E4B9B20, &qword_24076CB38);
    if (qword_27E4B5F18 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 129);
    v38 = *(v0 + 344);
    v37 = *(v0 + 352);
    v40 = *(v0 + 328);
    v39 = *(v0 + 336);
    v41 = sub_240759AE4();
    __swift_project_value_buffer(v41, qword_27E4B9AE0);
    sub_240635AF0(v40, v39, v38, v37, v36);
    v42 = sub_240759AC4();
    v43 = sub_24075A5E4();
    sub_2405E1818(v40, v39, v38, v37, v36);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 129);
      v46 = *(v0 + 344);
      v45 = *(v0 + 352);
      v48 = *(v0 + 328);
      v47 = *(v0 + 336);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64[0] = v50;
      *v49 = 136315138;
      *(v0 + 96) = v48;
      *(v0 + 104) = v47;
      *(v0 + 112) = v46;
      *(v0 + 120) = v45;
      *(v0 + 128) = v44;
      sub_240635AF0(v48, v47, v46, v45, v44);
      v51 = sub_24075A0E4();
      v53 = sub_2405BBA7C(v51, v52, v64);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_240579000, v42, v43, "No active session to forward anisette request %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x245CC76B0](v50, -1, -1);
      MEMORY[0x245CC76B0](v49, -1, -1);
    }

    sub_2405DAFE4();
    swift_allocError();
    *v54 = 0u;
    *(v54 + 16) = 0u;
    *(v54 + 32) = 0;
    swift_willThrow();
    v56 = *(v0 + 312);
    v55 = *(v0 + 320);
    v58 = *(v0 + 296);
    v57 = *(v0 + 304);
    v60 = *(v0 + 272);
    v59 = *(v0 + 280);
    v61 = *(v0 + 264);

    v62 = *(v0 + 8);

    return v62();
  }
}

uint64_t sub_240634688()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 312);
  v6 = *(v2 + 248);
  sub_240635BEC(v5, type metadata accessor for MachAgeMigrationMessage);
  if (v0)
  {
    v7 = sub_240634D80;
  }

  else
  {
    v7 = sub_2406347E4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2406347E4()
{
  v63 = v0;
  v1 = *(v0 + 288);
  sub_240635B84(*(v0 + 320), *(v0 + 304), type metadata accessor for MachAgeMigrationMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 360);
  if (EnumCaseMultiPayload == 2)
  {
    v4 = *(v0 + 129);
    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v8 = *(v0 + 328);
    v7 = *(v0 + 336);
    v10 = *(v0 + 272);
    v9 = *(v0 + 280);
    sub_240635FFC(*(v0 + 304), v9, type metadata accessor for AnisetteCommand.Response);
    sub_240635B84(v9, v10, type metadata accessor for AnisetteCommand.Response);
    sub_240635AF0(v8, v7, v6, v5, v4);
    v11 = sub_240759AC4();
    v12 = sub_24075A5D4();
    sub_2405E1818(v8, v7, v6, v5, v4);
    if (os_log_type_enabled(v11, v12))
    {
      v60 = *(v0 + 129);
      v58 = *(v0 + 344);
      v59 = *(v0 + 352);
      v13 = *(v0 + 328);
      v14 = *(v0 + 336);
      v61 = *(v0 + 320);
      v16 = *(v0 + 264);
      v15 = *(v0 + 272);
      v17 = *(v0 + 256);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v62[0] = v19;
      *v18 = 136315394;
      sub_240635B84(v15, v16, type metadata accessor for AnisetteCommand.Response);
      v20 = sub_24075A0E4();
      v22 = v21;
      sub_240635BEC(v15, type metadata accessor for AnisetteCommand.Response);
      v23 = sub_2405BBA7C(v20, v22, v62);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      *(v0 + 136) = v13;
      *(v0 + 144) = v14;
      *(v0 + 152) = v58;
      *(v0 + 160) = v59;
      *(v0 + 168) = v60;
      sub_240635AF0(v13, v14, v58, v59, v60);
      v24 = sub_24075A0E4();
      v26 = sub_2405BBA7C(v24, v25, v62);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_240579000, v11, v12, "AgeMigrationController - Received anisette response %s for request %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v19, -1, -1);
      MEMORY[0x245CC76B0](v18, -1, -1);

      v27 = v61;
    }

    else
    {
      v38 = *(v0 + 320);
      v39 = *(v0 + 272);

      sub_240635BEC(v39, type metadata accessor for AnisetteCommand.Response);
      v27 = v38;
    }

    sub_240635BEC(v27, type metadata accessor for MachAgeMigrationMessage);
    v40 = *(v0 + 312);
    v41 = *(v0 + 320);
    v43 = *(v0 + 296);
    v42 = *(v0 + 304);
    v44 = *(v0 + 272);
    v45 = *(v0 + 264);
    sub_240635FFC(*(v0 + 280), *(v0 + 240), type metadata accessor for AnisetteCommand.Response);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v46 = *(v0 + 8);
  }

  else
  {
    sub_240635B84(*(v0 + 320), *(v0 + 296), type metadata accessor for MachAgeMigrationMessage);
    v28 = sub_240759AC4();
    v29 = sub_24075A5E4();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 296);
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v62[0] = v33;
      *v32 = 136315138;
      v34 = MachAgeMigrationMessage.description.getter();
      v36 = v35;
      sub_240635BEC(v31, type metadata accessor for MachAgeMigrationMessage);
      v37 = sub_2405BBA7C(v34, v36, v62);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_240579000, v28, v29, "Received unexpected mach age migration message when forwarding anisette request: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x245CC76B0](v33, -1, -1);
      MEMORY[0x245CC76B0](v32, -1, -1);
    }

    else
    {

      sub_240635BEC(v31, type metadata accessor for MachAgeMigrationMessage);
    }

    v47 = *(v0 + 320);
    v48 = *(v0 + 304);
    sub_2405DAFE4();
    swift_allocError();
    *v49 = xmmword_24076CB10;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    *(v49 + 16) = 0;
    swift_willThrow();
    sub_240635BEC(v47, type metadata accessor for MachAgeMigrationMessage);
    sub_240635BEC(v48, type metadata accessor for MachAgeMigrationMessage);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v51 = *(v0 + 312);
    v50 = *(v0 + 320);
    v53 = *(v0 + 296);
    v52 = *(v0 + 304);
    v55 = *(v0 + 272);
    v54 = *(v0 + 280);
    v56 = *(v0 + 264);

    v46 = *(v0 + 8);
  }

  return v46();
}

uint64_t sub_240634D80()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[47];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];

  v9 = v0[1];

  return v9();
}

void AgeMigrationController.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void AgeMigrationController.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_240634F28()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC12AppleIDSetup22AgeMigrationController_anisetteClient;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v6 = *(v0 + 8);
  v4 = swift_unknownObjectRetain();

  return v6(v4);
}

uint64_t sub_240634FB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_240635058;

  return sub_24062E1BC(v2 + 16, a2);
}

uint64_t sub_240635058()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 32);
    v7 = *(v2 + 56);
    *(v7 + 32) = *(v2 + 48);
    *v7 = v5;
    *(v7 + 16) = v6;
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_240635170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return sub_24062DD3C(a1, v4, v5, v6);
}

uint64_t sub_240635224(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x14)
  {
  }

  return result;
}

uint64_t sub_24063526C(uint64_t a1, unint64_t a2)
{
  if (a2 != 20)
  {
    return sub_240635224(a1, a2);
  }

  return a1;
}

uint64_t dispatch thunk of AgeMigrationControllerProtocol.anisetteClient.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE5D8;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AgeMigrationControllerProtocol.beginMigration(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2405DA4B0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AgeMigrationSession.send<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 48);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_2405DA4B0;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of AgeMigrationSession.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 56);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2405CE450;

  return v17(a1, a2, a3, a4, a5, a6);
}

void sub_24063580C()
{
  sub_240635A98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AgeMigrationController.beginMigration(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xD8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2);
}

void sub_240635A98()
{
  if (!qword_27E4B9B38)
  {
    sub_240759BE4();
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B9B38);
    }
  }
}

uint64_t sub_240635AF0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a4 >> 60) & 3 | v6;
  if (v7 == 3)
  {

    a2 = a4 & 0xCFFFFFFFFFFFFFFFLL;
    result = a3;

    return sub_2405BB9D4(result, a2);
  }

  if (v7 != 2)
  {
    if (v7)
    {
      return result;
    }

    return sub_2405BB9D4(result, a2);
  }
}

uint64_t sub_240635B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240635BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_240635C4C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_2406301DC((v0 + 16), v0 + v2, v5, v6);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240635D64(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_240630438(a1, v7, v1 + v4, v8);
}

uint64_t sub_240635E54()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AE0, &qword_2407634B8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AD0, &unk_24076CCE0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_24063096C(v0 + v2, v0 + v5, v8);
}

uint64_t sub_240635FA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_240635FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_240636064@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AgeMigrationContext() - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_240631820(a1, v2 + v6, v10, a2);
}

uint64_t sub_240636158(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B88, &qword_24076CD08) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_240631F60(a1, v4);
}

uint64_t sub_2406361D4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B80, &qword_24076CD00) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2405DA4B0;

  return sub_24063230C(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_2406362FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_240636344(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_240759C44() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AgeMigrationContext() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B48, &unk_24076CCD0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2405DA4B0;

  return sub_240631ED8(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

id AnisetteClient.__allocating_init(send:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t AnisetteClient.send.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send);
  v2 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send + 8);

  return v1;
}

id AnisetteClient.init(send:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for AnisetteClient();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_24063661C()
{
  v1[14] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for AnisetteCommand.Response();
  v1[18] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240636724, 0, 0);
}

uint64_t sub_240636724()
{
  v1 = *(v0 + 112) + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send;
  v2 = *v1;
  v3 = *(v1 + 8);
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = 1;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_240636844;
  v6 = *(v0 + 160);

  return v8(v6, v0 + 16);
}

uint64_t sub_240636844()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_24063DDEC;
  }

  else
  {
    v3 = sub_240636958;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240636958()
{
  v1 = *(v0 + 144);
  sub_240636B38(*(v0 + 160), *(v0 + 152));
  if (swift_getEnumCaseMultiPayload())
  {
    v2 = *(v0 + 152);
    sub_240636B9C(*(v0 + 160));
    sub_240636B9C(v2);
    LOBYTE(v3) = 0;
  }

  else
  {
    (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 152), *(v0 + 120));
    sub_240759954();
    v3 = *(v0 + 56);
    v4 = *(v0 + 160);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = *(v0 + 120);
    if (*(v0 + 80))
    {
      v8 = *(v0 + 64);
      v9 = *(v0 + 72);
      *(v0 + 88) = v3;
      *(v0 + 96) = v8;
      *(v0 + 104) = v9;
      sub_240602210();
      swift_willThrowTypedImpl();
      v21 = *(v0 + 88);
      v10 = *(v0 + 104);
      swift_allocError();
      *v11 = v21;
      *(v11 + 16) = v10;
      (*(v6 + 8))(v5, v7);
      sub_240636B9C(v4);
      v13 = *(v0 + 152);
      v12 = *(v0 + 160);
      v14 = *(v0 + 136);

      v15 = *(v0 + 8);
      v16 = 0;
      goto LABEL_7;
    }

    (*(v6 + 8))(*(v0 + 136), *(v0 + 120));
    sub_240636B9C(v4);
  }

  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v0 + 136);

  v15 = *(v0 + 8);
  v16 = v3 & 1;
LABEL_7:

  return v15(v16);
}

uint64_t sub_240636B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnisetteCommand.Response();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240636B9C(uint64_t a1)
{
  v2 = type metadata accessor for AnisetteCommand.Response();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240636D6C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24063DDE4;

  return sub_24063661C();
}

uint64_t sub_240636E14(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for AnisetteCommand.Response();
  v3[20] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240636F20, 0, 0);
}

uint64_t sub_240636F20()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 128) + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send;
  v4 = *v3;
  v5 = *(v3 + 8);
  *(v0 + 16) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = v1;
  *(v0 + 48) = 0;
  sub_2405BB9D4(v2, v1);
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_240637048;
  v8 = *(v0 + 176);

  return v10(v8, v0 + 16);
}

uint64_t sub_240637048()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(v2 + 192) = v0;

  sub_2405E1818(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  if (v0)
  {
    v4 = sub_240637350;
  }

  else
  {
    v4 = sub_24063716C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24063716C()
{
  v1 = *(v0 + 160);
  sub_240636B38(*(v0 + 176), *(v0 + 168));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    sub_240759954();
    v2 = *(v0 + 56);
    v3 = *(v0 + 176);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 136);
    if (*(v0 + 80))
    {
      v7 = *(v0 + 64);
      v8 = *(v0 + 72);
      *(v0 + 88) = v2;
      *(v0 + 96) = v7;
      *(v0 + 104) = v8;
      sub_240602210();
      swift_willThrowTypedImpl();
      v21 = *(v0 + 88);
      v9 = *(v0 + 104);
      swift_allocError();
      *v10 = v21;
      *(v10 + 16) = v9;
      (*(v5 + 8))(v4, v6);
      sub_240636B9C(v3);
      v12 = *(v0 + 168);
      v11 = *(v0 + 176);
      v13 = *(v0 + 152);

      v14 = *(v0 + 8);
      v15 = 0;
      goto LABEL_7;
    }

    (*(v5 + 8))(*(v0 + 152), *(v0 + 136));
    sub_240636B9C(v3);
  }

  else
  {
    v16 = *(v0 + 168);
    sub_240636B9C(*(v0 + 176));
    sub_240636B9C(v16);
    LOBYTE(v2) = 0;
  }

  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  v19 = *(v0 + 152);

  v14 = *(v0 + 8);
  v15 = v2 & 1;
LABEL_7:

  return v14(v15);
}

uint64_t sub_240637350()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_24063755C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_2407596C4();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_240637638;

  return sub_240636E14(v7, v9);
}

uint64_t sub_240637638(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[3];
  sub_2405BCD98(v5[4], v5[5]);
  if (v3)
  {
    v11 = sub_2407595C4();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_2406377F4()
{
  v1[14] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9350, &qword_24076B5F8);
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for AnisetteCommand.Response();
  v1[18] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406378FC, 0, 0);
}

uint64_t sub_2406378FC()
{
  v1 = *(v0 + 112) + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send;
  v2 = *v1;
  v3 = *(v1 + 8);
  *(v0 + 16) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 1;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_240637A1C;
  v6 = *(v0 + 160);

  return v8(v6, v0 + 16);
}

uint64_t sub_240637A1C()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_240637D14;
  }

  else
  {
    v3 = sub_240637B30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240637B30()
{
  v1 = *(v0 + 144);
  sub_240636B38(*(v0 + 160), *(v0 + 152));
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 152), *(v0 + 120));
    sub_240759954();
    v2 = *(v0 + 56);
    v3 = *(v0 + 160);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    if (*(v0 + 80))
    {
      v7 = *(v0 + 64);
      v8 = *(v0 + 72);
      *(v0 + 88) = v2;
      *(v0 + 96) = v7;
      *(v0 + 104) = v8;
      sub_240602210();
      swift_willThrowTypedImpl();
      v21 = *(v0 + 88);
      v9 = *(v0 + 104);
      swift_allocError();
      *v10 = v21;
      *(v10 + 16) = v9;
      (*(v5 + 8))(v4, v6);
      sub_240636B9C(v3);
      v12 = *(v0 + 152);
      v11 = *(v0 + 160);
      v13 = *(v0 + 136);

      v14 = *(v0 + 8);
      v15 = 0;
      goto LABEL_7;
    }

    (*(v5 + 8))(*(v0 + 136), *(v0 + 120));
    sub_240636B9C(v3);
  }

  else
  {
    v16 = *(v0 + 152);
    sub_240636B9C(*(v0 + 160));
    sub_240636B9C(v16);
    LOBYTE(v2) = 0;
  }

  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v0 + 136);

  v14 = *(v0 + 8);
  v15 = v2 & 1;
LABEL_7:

  return v14(v15);
}

uint64_t sub_240637D14()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_240637F0C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_240637FB4;

  return sub_2406377F4();
}

uint64_t sub_240637FB4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_2407595C4();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_240638144(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 57) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9BB8, &qword_24076CD70);
  *(v2 + 136) = v3;
  v4 = *(v3 - 8);
  *(v2 + 144) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v6 = type metadata accessor for AnisetteCommand.Response();
  *(v2 + 160) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240638250, 0, 0);
}

uint64_t sub_240638250()
{
  v1 = *(v0 + 128) + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send;
  v2 = *v1;
  v3 = *(v1 + 8);
  *(v0 + 64) = *(v0 + 57);
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0x1000000000000000;
  *(v0 + 96) = 0;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_240638374;
  v6 = *(v0 + 176);

  return v8(v6, v0 + 64);
}

uint64_t sub_240638374()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_24063874C;
  }

  else
  {
    v3 = sub_240638488;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240638488()
{
  v1 = *(v0 + 160);
  sub_240636B38(*(v0 + 176), *(v0 + 168));
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    sub_240759954();
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 176);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 136);
    if (*(v0 + 56))
    {
      *(v0 + 104) = v3;
      *(v0 + 112) = v2;
      *(v0 + 120) = v4;
      sub_240602210();
      swift_willThrowTypedImpl();
      v26 = *(v0 + 104);
      v9 = *(v0 + 120);
      swift_allocError();
      *v10 = v26;
      *(v10 + 16) = v9;
      (*(v7 + 8))(v6, v8);
      sub_240636B9C(v5);
      v12 = *(v0 + 168);
      v11 = *(v0 + 176);
      v13 = *(v0 + 152);

      v14 = *(v0 + 8);

      return v14();
    }

    v18 = *(v0 + 40);
    v27 = *(v0 + 48);
    v25 = *(v0 + 176);
    v17 = [objc_allocWithZone(MEMORY[0x277CF0160]) init];
    v19 = sub_24075A084();
    [v17 setMachineID_];

    v20 = sub_24075A084();
    [v17 setOneTimePassword_];

    [v17 setRoutingInfo_];
    (*(v7 + 8))(v6, v8);
    sub_240636B9C(v25);
    sub_2406387CC(v3, v2, v4, v18, v27, 0);
  }

  else
  {
    v16 = *(v0 + 168);
    sub_240636B9C(*(v0 + 176));
    sub_240636B9C(v16);
    v17 = 0;
  }

  v22 = *(v0 + 168);
  v21 = *(v0 + 176);
  v23 = *(v0 + 152);

  v24 = *(v0 + 8);

  return v24(v17);
}

uint64_t sub_24063874C()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2406387CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2406389A0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_240638A5C;

  return sub_240638144(a1);
}

uint64_t sub_240638A5C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_2407595C4();

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

uint64_t sub_240638BFC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9BB8, &qword_24076CD70);
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for AnisetteCommand.Response();
  v3[22] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240638D08, 0, 0);
}

uint64_t sub_240638D08()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144) + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send;
  v3 = *v2;
  v4 = *(v2 + 8);
  *(v0 + 64) = *(v0 + 128);
  *(v0 + 72) = v1;
  *(v0 + 80) = xmmword_24076CD40;
  *(v0 + 96) = 0;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_240638E38;
  v7 = *(v0 + 192);

  return v9(v7, v0 + 64);
}

uint64_t sub_240638E38()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v6 = *v1;
  *(v2 + 208) = v0;

  sub_2405E1818(*(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));
  if (v0)
  {
    v4 = sub_240639220;
  }

  else
  {
    v4 = sub_240638F5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240638F5C()
{
  v1 = *(v0 + 176);
  sub_240636B38(*(v0 + 192), *(v0 + 184));
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 184), *(v0 + 152));
    sub_240759954();
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 192);
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 152);
    if (*(v0 + 56))
    {
      *(v0 + 104) = v3;
      *(v0 + 112) = v2;
      *(v0 + 120) = v4;
      sub_240602210();
      swift_willThrowTypedImpl();
      v26 = *(v0 + 104);
      v9 = *(v0 + 120);
      swift_allocError();
      *v10 = v26;
      *(v10 + 16) = v9;
      (*(v7 + 8))(v6, v8);
      sub_240636B9C(v5);
      v12 = *(v0 + 184);
      v11 = *(v0 + 192);
      v13 = *(v0 + 168);

      v14 = *(v0 + 8);

      return v14();
    }

    v18 = *(v0 + 40);
    v27 = *(v0 + 48);
    v25 = *(v0 + 192);
    v17 = [objc_allocWithZone(MEMORY[0x277CF0160]) init];
    v19 = sub_24075A084();
    [v17 setMachineID_];

    v20 = sub_24075A084();
    [v17 setOneTimePassword_];

    [v17 setRoutingInfo_];
    (*(v7 + 8))(v6, v8);
    sub_240636B9C(v25);
    sub_2406387CC(v3, v2, v4, v18, v27, 0);
  }

  else
  {
    v16 = *(v0 + 184);
    sub_240636B9C(*(v0 + 192));
    sub_240636B9C(v16);
    v17 = 0;
  }

  v22 = *(v0 + 184);
  v21 = *(v0 + 192);
  v23 = *(v0 + 168);

  v24 = *(v0 + 8);

  return v24(v17);
}

uint64_t sub_240639220()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];

  v5 = v0[1];

  return v5();
}

uint64_t sub_240639428(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_24075A0B4();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2406394FC;

  return sub_240638BFC(v5, v7);
}

uint64_t sub_2406394FC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_2407595C4();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_2406396B8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BC0, &qword_24077F1B0);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for AnisetteCommand.Response();
  v2[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2406397F8, 0, 0);
}

uint64_t sub_2406397F8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 112);
  sub_240759424();
  v3 = sub_240759634();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 176);
  if (v5 == 1)
  {
    sub_240639EB4(*(v0 + 176));
    v7 = 0x80000002407876E0;
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = sub_2407595F4();
    v7 = v9;
    (*(v4 + 8))(v6, v3);
  }

  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  v12 = sub_240759434();
  *(v0 + 184) = v12;
  *(v0 + 192) = v13;
  if (v13 >> 60 == 15)
  {
    v12 = 0;
  }

  v14 = v11 + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send;
  v16 = *(v11 + OBJC_IVAR____TtC12AppleIDSetup14AnisetteClient_send);
  v15 = *(v14 + 8);
  *(v0 + 16) = v8;
  if (v13 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  *(v0 + 24) = v7;
  *(v0 + 32) = v12;
  *(v0 + 40) = v13 | 0x3000000000000000;
  *(v0 + 48) = 0;
  sub_2405BB9D4(v12, v13);
  v21 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_2406399FC;
  v19 = *(v0 + 168);

  return v21(v19, v0 + 16);
}

uint64_t sub_2406399FC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v6 = *v1;
  *(v2 + 208) = v0;

  sub_2405E1818(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  if (v0)
  {
    v4 = sub_240639E0C;
  }

  else
  {
    v4 = sub_240639B20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240639B20()
{
  v1 = *(v0 + 152);
  sub_240636B38(*(v0 + 168), *(v0 + 160));
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 160), *(v0 + 128));
    sub_240759954();
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
    v4 = *(v0 + 192);
    v5 = *(v0 + 168);
    v6 = *(v0 + 136);
    v32 = *(v0 + 144);
    v7 = *(v0 + 128);
    if (v4 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v0 + 184);
    }

    if (v4 >> 60 == 15)
    {
      v9 = 0xC000000000000000;
    }

    else
    {
      v9 = *(v0 + 192);
    }

    if (*(v0 + 80))
    {
      *(v0 + 88) = *(v0 + 56);
      *(v0 + 96) = v2;
      *(v0 + 104) = v3;
      sub_240602210();
      swift_willThrowTypedImpl();
      v30 = *(v0 + 88);
      v10 = *(v0 + 104);
      swift_allocError();
      *v11 = v30;
      *(v11 + 16) = v10;
      sub_2405BCD98(v8, v9);
      (*(v6 + 8))(v32, v7);
      sub_240636B9C(v5);
      v13 = *(v0 + 168);
      v12 = *(v0 + 176);
      v14 = *(v0 + 160);
      v15 = *(v0 + 144);

      v16 = *(v0 + 8);

      return v16();
    }

    v31 = *(v0 + 168);
    v23 = objc_allocWithZone(MEMORY[0x277CF0190]);
    v24 = sub_240759F54();
    sub_240639F1C();
    v22 = [v23 initWithDictionary_];

    sub_2405BCD98(v8, v9);
    (*(v6 + 8))(v32, v7);
    sub_240636B9C(v31);
  }

  else
  {
    v18 = *(v0 + 192);
    v19 = *(v0 + 160);
    if (v18 >> 60 == 15)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(v0 + 184);
    }

    if (v18 >> 60 == 15)
    {
      v21 = 0xC000000000000000;
    }

    else
    {
      v21 = *(v0 + 192);
    }

    sub_240636B9C(*(v0 + 168));
    sub_2405BCD98(v20, v21);
    sub_240636B9C(v19);
    v22 = 0;
  }

  v26 = *(v0 + 168);
  v25 = *(v0 + 176);
  v27 = *(v0 + 160);
  v28 = *(v0 + 144);

  v29 = *(v0 + 8);

  return v29(v22);
}

uint64_t sub_240639E0C()
{
  v1 = v0[24];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[23];
  }

  if (v1 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
  }

  else
  {
    v3 = v0[24];
  }

  sub_2405BCD98(v2, v3);
  v4 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_240639EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24063A0B0(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_240759454();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_240759404();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_24063A1DC;

  return sub_2406396B8(v9);
}

uint64_t sub_24063A1DC(void *a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 56);
  v8 = *v2;

  v9 = v5[6];
  v10 = v5[2];
  (*(v5[4] + 8))(v5[5], v5[3]);

  if (v3)
  {
    v11 = sub_2407595C4();

    (v9)[2](v9, 0, v11);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v12 = v6[5];

  v13 = *(v8 + 8);

  return v13();
}

uint64_t static AnisetteClient.receive(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 680) = a3;
  *(v3 + 672) = a1;
  v4 = *(a2 + 16);
  *(v3 + 688) = *a2;
  *(v3 + 704) = v4;
  *(v3 + 315) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_24063A400, 0, 0);
}

uint64_t sub_24063A400()
{
  v1 = *(v0 + 712);
  if (*(v0 + 315))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (v1 >> 60) & 3 | v2;
  if (v3 <= 1)
  {
    if (v3)
    {
      v21 = *(v0 + 688);
      v22 = swift_task_alloc();
      *(v0 + 728) = v22;
      *v22 = v0;
      v22[1] = sub_24063A930;
      v23 = *(v0 + 680);

      return sub_24063BE94(v0 + 368, v23, v21 & 1);
    }

    else
    {
      v10 = swift_task_alloc();
      *(v0 + 784) = v10;
      *v10 = v0;
      v10[1] = sub_24063AF58;
      v11 = *(v0 + 696);
      v12 = *(v0 + 688);
      v13 = *(v0 + 680);

      return sub_24063BB48(v0 + 608, v13, v12, v11);
    }
  }

  else if (v3 == 2)
  {
    v14 = *(v0 + 696);
    v15 = swift_task_alloc();
    *(v0 + 744) = v15;
    *v15 = v0;
    v15[1] = sub_24063AA44;
    v16 = *(v0 + 688);
    v17 = *(v0 + 680);

    return sub_24063C2A8(v0 + 272, v17, v16, v14);
  }

  else if (v3 == 3)
  {
    v4 = *(v0 + 696);
    v5 = swift_task_alloc();
    *(v0 + 760) = v5;
    *v5 = v0;
    v5[1] = sub_24063AB58;
    v6 = *(v0 + 704);
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);

    return sub_24063C6D4(v0 + 592, v7, v4, v6, v1 & 0xCFFFFFFFFFFFFFFFLL, v8);
  }

  else
  {
    v18 = *(v0 + 680);
    if (*(v0 + 696) | *(v0 + 704) | v1 | *(v0 + 688))
    {
      v19 = v0 + 16;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 313;
      *(v0 + 24) = sub_24063A820;
      v20 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_24063BA7C;
      *(v0 + 168) = &block_descriptor_4;
      *(v0 + 176) = v20;
      [v18 eraseWithCompletion_];
    }

    else
    {
      v19 = v0 + 80;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 314;
      *(v0 + 88) = sub_24063AC6C;
      v24 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_24063BA7C;
      *(v0 + 232) = &block_descriptor_19;
      *(v0 + 240) = v24;
      [v18 provisionWithCompletion_];
    }

    return MEMORY[0x282200938](v19);
  }
}

uint64_t sub_24063A820()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 720) = v2;
  if (v2)
  {
    v3 = sub_24063B314;
  }

  else
  {
    v3 = sub_24063B244;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24063A930()
{
  v2 = *(*v1 + 728);
  v5 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v3 = sub_24063B528;
  }

  else
  {
    v3 = sub_24063B414;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24063AA44()
{
  v2 = *(*v1 + 744);
  v5 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v3 = sub_24063B760;
  }

  else
  {
    v3 = sub_24063B64C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24063AB58()
{
  v2 = *(*v1 + 760);
  v5 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v3 = sub_24063B970;
  }

  else
  {
    v3 = sub_24063B884;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24063AC6C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 776) = v2;
  if (v2)
  {
    v3 = sub_24063AE54;
  }

  else
  {
    v3 = sub_24063AD7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24063AD7C()
{
  v1 = *(v0 + 314);
  v2 = *(v0 + 672);
  v3 = *(v0 + 776) != 0;
  *(v0 + 560) = v1;
  *(v0 + 568) = 0u;
  *(v0 + 584) = v3;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v1, v3);
  v4 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24063AE54()
{
  v1 = *(v0 + 776);
  swift_willThrow();
  *(v0 + 664) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075AE14();
  v3 = *(v0 + 672);
  v4 = *(v0 + 776) != 0;
  *(v0 + 560) = v2;
  *(v0 + 568) = v5;
  *(v0 + 576) = 0;
  *(v0 + 584) = v4;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v1, v4);
  v6 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24063AF58()
{
  v2 = *(*v1 + 784);
  v5 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = sub_24063B148;
  }

  else
  {
    v3 = sub_24063B06C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24063B06C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 672);
  v3 = *(v0 + 792) != 0;
  *(v0 + 528) = v1 & 1;
  *(v0 + 536) = 0u;
  *(v0 + 552) = v3;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v1, v3);
  v4 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24063B148()
{
  v1 = *(v0 + 792);
  *(v0 + 656) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075AE14();
  v3 = *(v0 + 672);
  v4 = *(v0 + 792) != 0;
  *(v0 + 528) = v2;
  *(v0 + 536) = v5;
  *(v0 + 544) = 0;
  *(v0 + 552) = v4;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v1, v4);
  v6 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24063B244()
{
  v1 = *(v0 + 313);
  v2 = *(v0 + 672);
  v3 = *(v0 + 720) != 0;
  *(v0 + 504) = 0;
  *(v0 + 512) = 0;
  *(v0 + 496) = v1;
  *(v0 + 520) = v3;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v1, v3);
  v4 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24063B314()
{
  v1 = *(v0 + 720);
  swift_willThrow();
  *(v0 + 648) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075AE14();
  v3 = *(v0 + 672);
  v4 = *(v0 + 720) != 0;
  *(v0 + 496) = v2;
  *(v0 + 504) = v5;
  *(v0 + 512) = 0;
  *(v0 + 520) = v4;
  sub_240602210();
  sub_240759944();
  sub_24063D00C(v1, v4);
  v6 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24063B414()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  *(v0 + 408) = 0;
  *(v0 + 440) = v4;
  *(v0 + 448) = v5;
  v6 = *(v0 + 672);
  v7 = *(v0 + 736) != 0;
  *(v0 + 416) = v2;
  *(v0 + 424) = v1;
  *(v0 + 432) = v3;
  *(v0 + 456) = v7;
  sub_240602210();

  sub_240759944();
  sub_24063CFA4(v2, v1, v3, v4, v5, v7);
  v8 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24063B528()
{
  v1 = *(v0 + 736);
  *(v0 + 368) = v1;
  *(v0 + 376) = 0u;
  *(v0 + 392) = 0u;
  *(v0 + 408) = v1 != 0;
  *(v0 + 640) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075AE14();
  v3 = *(v0 + 672);
  v4 = *(v0 + 736) != 0;
  *(v0 + 416) = v2;
  *(v0 + 424) = v5;
  *(v0 + 432) = 0;
  *(v0 + 456) = v4;
  sub_240602210();
  sub_240759944();
  sub_24063CFA4(v1, 0, 0, 0, 0, v4);
  v6 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24063B64C()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  *(v0 + 312) = 0;
  *(v0 + 344) = v4;
  *(v0 + 352) = v5;
  v6 = *(v0 + 672);
  v7 = *(v0 + 752) != 0;
  *(v0 + 320) = v2;
  *(v0 + 328) = v1;
  *(v0 + 336) = v3;
  *(v0 + 360) = v7;
  sub_240602210();

  sub_240759944();
  sub_24063CFA4(v2, v1, v3, v4, v5, v7);
  v8 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24063B760()
{
  v1 = *(v0 + 752);
  *(v0 + 272) = v1;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = v1 != 0;
  *(v0 + 632) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075AE14();
  v3 = *(v0 + 672);
  v4 = *(v0 + 752) != 0;
  *(v0 + 320) = v2;
  *(v0 + 328) = v5;
  *(v0 + 336) = 0;
  *(v0 + 360) = v4;
  sub_240602210();
  sub_240759944();
  sub_24063CFA4(v1, 0, 0, 0, 0, v4);
  v6 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24063B884()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 672);
  v3 = *(v0 + 768) != 0;
  *(v0 + 472) = 0;
  *(v0 + 480) = 0;
  *(v0 + 464) = v1;
  *(v0 + 488) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B86D8, &unk_2407670A0);
  sub_240602210();
  sub_240759944();
  sub_24063CF98(v1, v3);
  v4 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24063B970()
{
  v1 = *(v0 + 768);
  *(v0 + 624) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2 = sub_24075AE14();
  v3 = *(v0 + 672);
  v4 = *(v0 + 768) != 0;
  *(v0 + 464) = v2;
  *(v0 + 472) = v5;
  *(v0 + 480) = 0;
  *(v0 + 488) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B86D8, &unk_2407670A0);
  sub_240602210();
  sub_240759944();
  sub_24063CF98(v1, v4);
  v6 = *(v0 + 672);
  type metadata accessor for AnisetteCommand.Response();
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24063BA7C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_24063BB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_24063BB6C, 0, 0);
}

uint64_t sub_24063BB6C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = sub_2407596B4();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_24063BCA4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BE0, &unk_24077D170);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24063BA7C;
  v0[13] = &block_descriptor_116;
  v0[14] = v5;
  [v3 syncWithSIMData:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24063BCA4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_24063BE24;
  }

  else
  {
    v3 = sub_24063BDB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24063BDB4()
{
  v1 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24063BE24()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_24063BE94(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 176) = a3;
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  return MEMORY[0x2822009F8](sub_24063BEB8, 0, 0);
}

uint64_t sub_24063BEB8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_24063BFE4;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FF8, &qword_240769328);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_240614C9C;
  *(v0 + 104) = &block_descriptor_120;
  *(v0 + 112) = v3;
  [v2 fetchAnisetteDataAndProvisionIfNecessary:v1 withCompletion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24063BFE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_24063C23C;
  }

  else
  {
    v3 = sub_24063C0F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_24063C0F4()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
    sub_24063DD00();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v13 = *(v0 + 8);
    goto LABEL_6;
  }

  result = [*(v0 + 144) machineID];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  v4 = sub_24075A0B4();
  v6 = v5;

  result = [v1 oneTimePassword];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(v0 + 152);
  v9 = sub_24075A0B4();
  v11 = v10;

  v12 = [v1 routingInfo];
  *v8 = v4;
  v8[1] = v6;
  v8[2] = v9;
  v8[3] = v11;
  v8[4] = v12;
  v13 = *(v0 + 8);
LABEL_6:

  return v13();
}

uint64_t sub_24063C23C()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 168);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24063C2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x2822009F8](sub_24063C2CC, 0, 0);
}

uint64_t sub_24063C2CC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_24075A084();
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24063C404;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FF8, &qword_240769328);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240614C9C;
  v0[13] = &block_descriptor_124;
  v0[14] = v5;
  [v3 legacyAnisetteDataForDSID:v4 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24063C404()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_24063C664;
  }

  else
  {
    v3 = sub_24063C514;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_24063C514()
{
  v1 = *(v0 + 144);

  if (!v1)
  {
    sub_24063DD00();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v13 = *(v0 + 8);
    goto LABEL_6;
  }

  result = [v1 machineID];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  v4 = sub_24075A0B4();
  v6 = v5;

  result = [v1 oneTimePassword];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(v0 + 152);
  v9 = sub_24075A0B4();
  v11 = v10;

  v12 = [v1 routingInfo];
  *v8 = v4;
  v8[1] = v6;
  v8[2] = v9;
  v8[3] = v11;
  v8[4] = v12;
  v13 = *(v0 + 8);
LABEL_6:

  return v13();
}

uint64_t sub_24063C664()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[24];
  v4 = v0[1];

  return v4();
}

uint64_t sub_24063C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = sub_240759454();
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v11 = sub_240759634();
  v6[29] = v11;
  v12 = *(v11 - 8);
  v6[30] = v12;
  v13 = *(v12 + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24063C83C, 0, 0);
}

uint64_t sub_24063C83C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[20];
  v5 = v0[21];
  sub_240759614();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_240639EB4(v0[28]);
    sub_24063DD00();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v8 = v0[31];
    v7 = v0[32];
    v10 = v0[27];
    v9 = v0[28];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[31];
    v14 = v0[32];
    v16 = v0[29];
    v15 = v0[30];
    v17 = v0[27];
    v18 = v0[23];
    v22 = v0[24];
    v19 = v0[22];
    (*(v15 + 32))(v14, v0[28], v16);
    (*(v15 + 16))(v13, v14, v16);
    sub_240759414();
    sub_2405BB9D4(v19, v18);
    sub_240759444();
    v20 = sub_2407593F4();
    v0[33] = v20;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_24063CAC8;
    v21 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C08, &qword_24076CEC0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240614C9C;
    v0[13] = &block_descriptor_128;
    v0[14] = v21;
    [v22 fetchPeerAttestationDataForRequest:v20 completion:?];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_24063CAC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_24063CDD0;
  }

  else
  {
    v3 = sub_24063CBD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24063CBD8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 240);
  v3 = *(v0 + 208);

  v4 = (v2 + 8);
  v5 = *(v0 + 256);
  if (v1)
  {
    v6 = *(v0 + 232);
    v24 = v6;
    v25 = *(v0 + 248);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v23 = *(v0 + 152);
    v10 = [v1 attestationHeaders];
    v11 = sub_240759F74();

    (*(v8 + 8))(v7, v9);
    (*v4)(v5, v24);
    *v23 = v11;
  }

  else
  {
    v13 = *(v0 + 232);
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    v16 = *(v0 + 200);
    sub_24063DD00();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    (*(v15 + 8))(v14, v16);
    (*v4)(v5, v13);
    v19 = *(v0 + 248);
    v18 = *(v0 + 256);
    v21 = *(v0 + 216);
    v20 = *(v0 + 224);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24063CDD0()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  swift_willThrow();
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v9 = v0[34];
  v11 = v0[31];
  v10 = v0[32];
  v13 = v0[27];
  v12 = v0[28];

  v14 = v0[1];

  return v14();
}

id AnisetteClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnisetteClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnisetteClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24063CF98(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_24063CFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

void sub_24063D00C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t dispatch thunk of AnisetteClient.provisionAnisette()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24063DDE8;

  return v6();
}

uint64_t dispatch thunk of AnisetteClient.syncAnisette(withSIMData:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24063D29C;

  return v10(a1, a2);
}

uint64_t sub_24063D29C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of AnisetteClient.eraseAnisette()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24063DDE8;

  return v6();
}

uint64_t dispatch thunk of AnisetteClient.fetchAnisetteDataAndProvisionIfNecessary(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24063D29C;

  return v8(a1);
}

uint64_t dispatch thunk of AnisetteClient.legacyAnisetteData(forDSID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24063DDE8;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AnisetteClient.fetchPeerAttestationData(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24063DDE8;

  return v8(a1);
}

uint64_t sub_24063D850()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_24063A0B0(v2, v3, v4);
}

uint64_t sub_24063D904()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_240639428(v2, v3, v4);
}

uint64_t sub_24063D9B8()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405DA4B0;

  return sub_2406389A0(v2, v4, v3);
}

uint64_t sub_24063DA6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240637F0C(v2, v3);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24063DB60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2405CE450;

  return sub_24063755C(v2, v3, v4);
}

uint64_t objectdestroy_70Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24063DC54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_240636D6C(v2, v3);
}

unint64_t sub_24063DD00()
{
  result = qword_27E4B9C00;
  if (!qword_27E4B9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9C00);
  }

  return result;
}

unint64_t sub_24063DD68()
{
  result = qword_27E4B9C10;
  if (!qword_27E4B9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9C10);
  }

  return result;
}

uint64_t sub_24063DE14(uint64_t a1, uint64_t a2)
{
  v3[18] = a1;
  v3[19] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[20] = v5;
  v3[21] = v6;

  return MEMORY[0x2822009F8](sub_24063DEB4, 0, 0);
}

uint64_t sub_24063DEB4()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_24063DFDC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C20, &qword_24076CFD8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24063E25C;
  v0[13] = &block_descriptor_5;
  v0[14] = v4;
  [v2 urlForKey:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24063DFDC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 160);
  if (*(*v0 + 48))
  {
    v4 = *(v1 + 48);
    swift_willThrow();
  }

  else
  {
    sub_24063E450(*(v1 + 160), *(*v0 + 144));
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t dispatch thunk of AISAKURLBagProtocol.url(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2405CE450;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_24063E25C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v14 = swift_allocError();
    *v15 = a3;
    v16 = a3;

    return MEMORY[0x282200958](v13, v14);
  }

  else
  {
    if (a2)
    {
      sub_240759604();
      v17 = sub_240759634();
      (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    }

    else
    {
      v18 = sub_240759634();
      (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    }

    sub_24063E450(v10, v12);
    sub_24063E450(v12, *(*(v13 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_24063E450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ViewServiceConfiguration.serviceName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ViewServiceConfiguration.serviceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ViewServiceConfiguration.viewControllerClassName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ViewServiceConfiguration.viewControllerClassName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ViewServiceConfiguration.cbDeviceXpcRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ViewServiceConfiguration() + 24);

  return sub_24063E660(v3, a1);
}

uint64_t type metadata accessor for ViewServiceConfiguration()
{
  result = qword_27E4B9CB0;
  if (!qword_27E4B9CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24063E660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ViewServiceConfiguration.cbDeviceXpcRepresentation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ViewServiceConfiguration() + 24);

  return sub_24063E714(a1, v3);
}

uint64_t sub_24063E714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ViewServiceConfiguration.init(serviceName:viewControllerClassName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(type metadata accessor for ViewServiceConfiguration() + 24);
  v11 = sub_240759C14();
  result = (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  *(a5 + 3) = a4;
  return result;
}

uint64_t sub_24063E860()
{
  v0 = type metadata accessor for ViewServiceConfiguration();
  __swift_allocate_value_buffer(v0, qword_27E4B9C28);
  v1 = __swift_project_value_buffer(v0, qword_27E4B9C28);
  v2 = *(v0 + 24);
  v3 = sub_240759C14();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD00000000000001FLL;
  *(v1 + 1) = 0x8000000240786D90;
  *(v1 + 2) = 0xD00000000000002ELL;
  *(v1 + 3) = 0x8000000240787970;
  return result;
}

uint64_t sub_24063E94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewServiceConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24063E9B0()
{
  v0 = type metadata accessor for ViewServiceConfiguration();
  __swift_allocate_value_buffer(v0, qword_27E4B9C40);
  v1 = __swift_project_value_buffer(v0, qword_27E4B9C40);
  v2 = *(v0 + 24);
  v3 = sub_240759C14();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000018;
  *(v1 + 1) = 0x8000000240787920;
  *(v1 + 2) = 0xD000000000000029;
  *(v1 + 3) = 0x8000000240787940;
  return result;
}

uint64_t sub_24063EA9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ViewServiceConfiguration();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_24063E94C(v6, a3);
}

uint64_t ViewServiceConfiguration.cbDeviceXpcRepresentation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_240759C14();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = *(type metadata accessor for ViewServiceConfiguration() + 24);
  sub_2405B8A50(v2 + v11, &qword_27E4B9C58, &qword_24076CFE0);
  sub_24063EC38(v8, v2 + v11);
  return sub_24063ECA8(v2, a2);
}

uint64_t sub_24063EC38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24063ECA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewServiceConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24063ED10()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E65636976726573;
  }
}

uint64_t sub_24063ED78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2406400F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24063EDA0(uint64_t a1)
{
  v2 = sub_24063FD3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24063EDDC(uint64_t a1)
{
  v2 = sub_24063FD3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewServiceConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C60, &qword_24076CFE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24063FD3C();
  sub_24075AF74();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_24075ABB4();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_24075ABB4();
    v16 = *(type metadata accessor for ViewServiceConfiguration() + 24);
    v17[13] = 2;
    sub_240759C14();
    sub_24064021C(&qword_27E4B9C70, MEMORY[0x277D855F8]);
    sub_24075AB94();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ViewServiceConfiguration.hash(into:)()
{
  v1 = sub_240759C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_24075A114();
  v12 = v0[2];
  v13 = v0[3];
  sub_24075A114();
  v14 = type metadata accessor for ViewServiceConfiguration();
  sub_24063E660(v0 + *(v14 + 24), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_24075AE94();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_24075AE94();
  sub_24064021C(&qword_27E4B9C78, MEMORY[0x277D855F8]);
  sub_24075A004();
  return (*(v2 + 8))(v5, v1);
}

uint64_t ViewServiceConfiguration.hashValue.getter()
{
  v1 = sub_240759C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  sub_24075AE64();
  v10 = *v0;
  v11 = v0[1];
  sub_24075A114();
  v12 = v0[2];
  v13 = v0[3];
  sub_24075A114();
  v14 = type metadata accessor for ViewServiceConfiguration();
  sub_24063E660(v0 + *(v14 + 24), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_24075AE94();
    sub_24064021C(&qword_27E4B9C78, MEMORY[0x277D855F8]);
    sub_24075A004();
    (*(v2 + 8))(v5, v1);
  }

  return sub_24075AED4();
}

uint64_t ViewServiceConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C80, &qword_24076CFF0);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - v10;
  v12 = type metadata accessor for ViewServiceConfiguration();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = (v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 32);
  v18 = sub_240759C14();
  v19 = *(*(v18 - 8) + 56);
  v29 = v17;
  v19(v16 + v17, 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24063FD3C();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2405B8A50(v16 + v29, &qword_27E4B9C58, &qword_24076CFE0);
  }

  else
  {
    v21 = v27;
    v32 = 0;
    *v16 = sub_24075AAC4();
    v16[1] = v22;
    v25[1] = v22;
    v31 = 1;
    v16[2] = sub_24075AAC4();
    v16[3] = v23;
    v30 = 2;
    sub_24064021C(&qword_27E4B9C88, MEMORY[0x277D855F8]);
    sub_24075AAA4();
    (*(v21 + 8))(v11, v28);
    sub_24063E714(v7, v16 + v29);
    sub_24063E94C(v16, v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24063FD90(v16);
  }
}

uint64_t sub_24063F7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_240759C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  sub_24075AE64();
  v13 = *v2;
  v14 = v2[1];
  sub_24075A114();
  v15 = v2[2];
  v16 = v2[3];
  sub_24075A114();
  sub_24063E660(v2 + *(a2 + 24), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_24075AE94();
    sub_24064021C(&qword_27E4B9C78, MEMORY[0x277D855F8]);
    sub_24075A004();
    (*(v5 + 8))(v8, v4);
  }

  return sub_24075AED4();
}

BOOL _s12AppleIDSetup24ViewServiceConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_240759C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9CE0, &unk_24076D220);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24075ACF4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for ViewServiceConfiguration() + 24);
  v18 = *(v13 + 48);
  sub_24063E660(a1 + v17, v16);
  sub_24063E660(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_24063E660(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_24064021C(&qword_27E4B9CE8, MEMORY[0x277D855F8]);
      v21 = sub_24075A054();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_2405B8A50(v16, &qword_27E4B9C58, &qword_24076CFE0);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_12:
    sub_2405B8A50(v16, &qword_27E4B9CE0, &unk_24076D220);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_2405B8A50(v16, &qword_27E4B9C58, &qword_24076CFE0);
  return 1;
}

unint64_t sub_24063FD3C()
{
  result = qword_27E4B9C68;
  if (!qword_27E4B9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9C68);
  }

  return result;
}

uint64_t sub_24063FD90(uint64_t a1)
{
  v2 = type metadata accessor for ViewServiceConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24063FDEC(void *a1)
{
  a1[1] = sub_24064021C(&qword_27E4B9C90, type metadata accessor for ViewServiceConfiguration);
  a1[2] = sub_24064021C(&qword_27E4B9C98, type metadata accessor for ViewServiceConfiguration);
  result = sub_24064021C(&qword_27E4B9CA0, type metadata accessor for ViewServiceConfiguration);
  a1[3] = result;
  return result;
}

void sub_24063FF08()
{
  sub_24063FF84();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24063FF84()
{
  if (!qword_27E4B9CC0)
  {
    sub_240759C14();
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B9CC0);
    }
  }
}

unint64_t sub_24063FFF0()
{
  result = qword_27E4B9CC8;
  if (!qword_27E4B9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9CC8);
  }

  return result;
}

unint64_t sub_240640048()
{
  result = qword_27E4B9CD0;
  if (!qword_27E4B9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9CD0);
  }

  return result;
}

unint64_t sub_2406400A0()
{
  result = qword_27E4B9CD8;
  if (!qword_27E4B9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9CD8);
  }

  return result;
}

uint64_t sub_2406400F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002407878E0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000240787900 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24064021C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2406402CC()
{
  result = qword_27E4B9CF0;
  if (!qword_27E4B9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9CF0);
  }

  return result;
}

unint64_t sub_240640324()
{
  result = qword_27E4B9CF8;
  if (!qword_27E4B9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9CF8);
  }

  return result;
}

unint64_t sub_240640378(void *a1)
{
  a1[1] = sub_2406403B0();
  a1[2] = sub_240640404();
  result = sub_240640458();
  a1[3] = result;
  return result;
}

unint64_t sub_2406403B0()
{
  result = qword_27E4B9D00;
  if (!qword_27E4B9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9D00);
  }

  return result;
}

unint64_t sub_240640404()
{
  result = qword_27E4B9D08;
  if (!qword_27E4B9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9D08);
  }

  return result;
}

unint64_t sub_240640458()
{
  result = qword_27E4B9D10;
  if (!qword_27E4B9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9D10);
  }

  return result;
}

unint64_t sub_2406404AC()
{
  result = qword_27E4B9D18;
  if (!qword_27E4B9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9D18);
  }

  return result;
}

unint64_t sub_240640504()
{
  result = qword_27E4B9D20[0];
  if (!qword_27E4B9D20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E4B9D20);
  }

  return result;
}

uint64_t dispatch thunk of BluetoothBase.activate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2405CE450;

  return v9(a1, a2);
}

void sub_240640738(uint64_t a1)
{
  sub_240640B60(319, &qword_27E4B9DA8);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
    sub_24075AEE4();
    if (v4 <= 0x3F)
    {
      sub_240640B60(319, &qword_27E4B9DB0);
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_240640814(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 81;
  if (v3 + 1 > 0x51)
  {
    v4 = v3 + 1;
  }

  v5 = 251 - (6u >> (8 * v4));
  if (v4 > 3)
  {
    v5 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_29;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_29:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_240640964(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x51)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 81;
  }

  v7 = 251 - (6u >> (8 * v6));
  if (v6 > 3)
  {
    v7 = 251;
  }

  v8 = v6 + 1;
  if (v7 >= a3)
  {
    v9 = 0;
    if (v7 < a2)
    {
      goto LABEL_20;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        a1[v6] = -a2;
        return;
      }

      *&a1[v8] = 0;
    }

    else if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  v9 = 1;
  if (v8 <= 3)
  {
    v10 = ((~(-1 << (8 * v8)) + a3 - v7) >> (8 * v8)) + 1;
    v11 = HIWORD(v10);
    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v10 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v9 = 4;
    }

    else
    {
      v9 = v13;
    }
  }

  if (v7 >= a2)
  {
    goto LABEL_24;
  }

LABEL_20:
  v14 = ~v7 + a2;
  if (v8 >= 4)
  {
    bzero(a1, v8);
    *a1 = v14;
    v15 = 1;
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v15 = (v14 >> (8 * v8)) + 1;
  if (v6 == -1)
  {
LABEL_40:
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v16 = v14 & ~(-1 << (8 * v8));
  bzero(a1, v8);
  if (v8 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_40;
  }

  if (v8 == 2)
  {
    *a1 = v16;
    if (v9 > 1)
    {
LABEL_44:
      if (v9 == 2)
      {
        *&a1[v8] = v15;
      }

      else
      {
        *&a1[v8] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v9 > 1)
    {
      goto LABEL_44;
    }
  }

LABEL_41:
  if (v9)
  {
    a1[v8] = v15;
  }
}

void sub_240640B60(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
    v3 = sub_24075AEE4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_240640BE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_240640C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_240640CA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_240640CE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BleAdvertisementFlags(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for BleAdvertisementFlags(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t AgeMigrationContext.description.getter()
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_24075A864();

  v6 = 0xD00000000000001BLL;
  v7 = 0x80000002407879A0;
  v1 = AgeMigrationModel.description.getter();
  MEMORY[0x245CC5E60](v1);

  MEMORY[0x245CC5E60](0x6E6168637865202CLL, 0xEC000000203A6567);
  v2 = type metadata accessor for AgeMigrationContext();
  sub_240640FA4(v0 + *(v2 + 20), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B50, &qword_24076D670);
  v3 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v3);

  return v6;
}

uint64_t type metadata accessor for AgeMigrationContext()
{
  result = qword_27E4B9DB8;
  if (!qword_27E4B9DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240640FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B50, &qword_24076D670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 AgeMigrationContext.init(model:exchange:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_240641060(a1, a3);
  v5 = a3 + *(type metadata accessor for AgeMigrationContext() + 20);
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v7;
  *(v5 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_240641060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeMigrationModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2406410F0()
{
  type metadata accessor for AgeMigrationModel(319);
  if (v0 <= 0x3F)
  {
    sub_240641174();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240641174()
{
  if (!qword_27E4B9DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9DD0, &qword_24076D6F8);
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B9DC8);
    }
  }
}

uint64_t sub_2406411E0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v36 = MEMORY[0x277D84F90];
    sub_24075A934();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    result = sub_24075A7A4();
    if (result < 0 || (v6 = result, result >= 1 << *(v1 + 32)))
    {
LABEL_23:
      __break(1u);
      return v36;
    }

    else
    {
      v7 = *(v1 + 36);
      v28 = v1 + 64;
      v29 = v2;
      v8 = 1;
      v31 = v1 + 56;
      v32 = v1;
      v30 = v7;
      while (1)
      {
        v9 = v6 >> 6;
        if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          break;
        }

        if (v7 != *(v1 + 36))
        {
          goto LABEL_27;
        }

        v10 = (*(v1 + 48) + 96 * v6);
        v11 = v10[1];
        v34[0] = *v10;
        v13 = v10[3];
        v12 = v10[4];
        v14 = v10[2];
        *&v35[9] = *(v10 + 73);
        v34[1] = v11;
        v34[2] = v14;
        v34[3] = v13;
        *v35 = v12;
        if (*&v35[16] > 4uLL)
        {
          v15 = 0;
        }

        else
        {
          v15 = qword_24076D9B0[*&v35[16]];
        }

        v16 = v35[24];
        v17 = objc_allocWithZone(AISSymptom);
        sub_2405F1048(v34, v33);
        v18 = sub_24075A084();
        v33[0] = 0x296C6C756E28;
        v33[1] = 0xE600000000000000;
        [v17 initWithAltDSID:v18 priority:v16 problemFlag:v15 errorInfo:sub_24075AD74()];
        swift_unknownObjectRelease();

        sub_2405F10A4(v34);
        sub_24075A914();
        v19 = *(v36 + 16);
        sub_24075A944();
        sub_24075A954();
        result = sub_24075A924();
        v1 = v32;
        v20 = 1 << *(v32 + 32);
        if (v6 >= v20)
        {
          goto LABEL_28;
        }

        v4 = v31;
        v21 = *(v31 + 8 * v9);
        if ((v21 & (1 << v6)) == 0)
        {
          goto LABEL_29;
        }

        v7 = v30;
        if (v30 != *(v32 + 36))
        {
          goto LABEL_30;
        }

        v22 = v21 & (-2 << (v6 & 0x3F));
        if (v22)
        {
          v6 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v9 << 6;
          v24 = v9 + 1;
          v25 = (v28 + 8 * v9);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              result = sub_24061CD88(v6, v30, 0);
              v6 = __clz(__rbit64(v26)) + v23;
              goto LABEL_20;
            }
          }

          result = sub_24061CD88(v6, v30, 0);
          v6 = v20;
        }

LABEL_20:
        if (v8 == v29)
        {
          return v36;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          ++v8;
          if (v6 < 1 << *(v32 + 32))
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  return result;
}

uint64_t RepairReport.accountID.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2405AF99C(v8, &v7);
}

uint64_t RepairReport.altDSID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RepairReport.newSymptomReport.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2406424AC(v2, v3);
}

__n128 RepairReport.init(accountID:repairedSymptoms:newSymptomReport:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v4;
  *(a4 + 64) = a1[4];
  v5 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *a3;
  v7 = *(a3 + 16);
  *(a4 + 88) = *a3;
  *(a4 + 80) = a2;
  *(a4 + 104) = v7;
  return result;
}

__n128 RepairReport.init(altDSID:repairedSymptoms:newSymptomReport:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  result = *a4;
  v6 = *(a4 + 16);
  *(a5 + 88) = *a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 80) = a3;
  *(a5 + 104) = v6;
  return result;
}

uint64_t sub_2406415C4()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_24064162C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240642940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240641654(uint64_t a1)
{
  v2 = sub_2406424FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240641690(uint64_t a1)
{
  v2 = sub_2406424FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RepairReport.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9DD8, &qword_24076D700);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = v1[3];
  v44 = v1[2];
  v45 = v9;
  v46 = v1[4];
  v10 = v1[1];
  v42 = *v1;
  v43 = v10;
  v11 = *(v1 + 11);
  v47 = *(v1 + 10);
  v12 = *(v1 + 13);
  v24 = *(v1 + 12);
  v25 = v11;
  v22 = *(v1 + 14);
  v23 = v12;
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_2405AF99C(&v42, &v37);
  sub_2406424FC();
  sub_24075AF74();
  v39 = v44;
  v40 = v45;
  v41 = v46;
  v37 = v42;
  v38 = v43;
  v36 = 0;
  sub_2406185FC();
  sub_24075ABE4();
  if (v2)
  {
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v31 = v37;
    v32 = v38;
    sub_240618468(&v31);
  }

  else
  {
    v19 = v24;
    v18 = v25;
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v31 = v37;
    v32 = v38;
    sub_240618468(&v31);
    v26 = v47;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9DE8, &qword_24076D708);
    sub_240642550(&qword_27E4B9DF0, sub_2405F5858);
    sub_24075ABE4();
    v26 = v18;
    v27 = v19;
    v28 = v23;
    v29 = v22;
    v30 = 2;
    sub_2406424AC(v18, v19);
    sub_2405EE9C8();
    sub_24075AB94();
    sub_240609C34(v26, v27);
  }

  return (*(v5 + 8))(v8, v17);
}

uint64_t RepairReport.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[12];
  v8 = v1[14];
  sub_24075A114();
  sub_2405ECD74(a1, v6);
  if (!v7)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();

  return sub_2405ED470(a1, v8);
}

uint64_t RepairReport.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[12];
  v6 = v0[14];
  sub_24075AE64();
  sub_24075A114();
  sub_2405ECD74(v8, v4);
  sub_24075AE94();
  if (v5)
  {
    sub_24075A114();
    sub_2405ED470(v8, v6);
  }

  return sub_24075AED4();
}

uint64_t RepairReport.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9DF8, &qword_24076D710);
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v20 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406424FC();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v49 = 0;
  sub_2406186F8();
  v11 = v21;
  sub_24075AAF4();
  v45 = v40;
  v46 = v41;
  v47 = v42;
  v43 = v38;
  v44 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9DE8, &qword_24076D708);
  LOBYTE(v22) = 1;
  sub_240642550(&qword_27E4B9E00, sub_2405F5900);
  sub_24075AAF4();
  v20 = *&v30[0];
  v48 = 2;
  sub_2405EEDE4();
  sub_24075AAA4();
  (*(v10 + 8))(v8, v11);
  v12 = v35;
  v14 = v36;
  v13 = v37;
  v24 = v45;
  v25 = v46;
  v26 = v47;
  v22 = v43;
  v23 = v44;
  v15 = v20;
  *&v27 = v20;
  *(&v27 + 1) = v35;
  v28 = v36;
  v29 = v37;
  *(a2 + 112) = v37;
  v16 = v27;
  *(a2 + 64) = v26;
  *(a2 + 80) = v16;
  *(a2 + 96) = v28;
  v17 = v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v17;
  v18 = v23;
  *a2 = v22;
  *(a2 + 16) = v18;
  sub_2406425C8(&v22, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30[2] = v45;
  v30[3] = v46;
  v30[4] = v47;
  v30[0] = v43;
  v30[1] = v44;
  v31 = v15;
  v32 = v12;
  v33 = v14;
  v34 = v13;
  return sub_2405EEB18(v30);
}

uint64_t sub_240641EB4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[12];
  v6 = v0[14];
  sub_24075AE64();
  sub_24075A114();
  sub_2405ECD74(v8, v4);
  sub_24075AE94();
  if (v5)
  {
    sub_24075A114();
    sub_2405ED470(v8, v6);
  }

  return sub_24075AED4();
}

uint64_t sub_240641F68(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[12];
  v8 = v1[14];
  sub_24075A114();
  sub_2405ECD74(a1, v6);
  if (!v7)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();

  return sub_2405ED470(a1, v8);
}

uint64_t sub_240642010()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[12];
  v6 = v0[14];
  sub_24075AE64();
  sub_24075A114();
  sub_2405ECD74(v8, v4);
  sub_24075AE94();
  if (v5)
  {
    sub_24075A114();
    sub_2405ED470(v8, v6);
  }

  return sub_24075AED4();
}

void __swiftcall RepairReport.into()(AISRepairReport *__return_ptr retstr)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[10];
  v5 = v1[11];
  v7 = v1[12];
  v6 = v1[13];
  v8 = v1[14];

  sub_2406411E0(v4);
  if (v7)
  {

    v9 = SymptomReport.into()();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_allocWithZone(AISRepairReport);
  v11 = sub_24075A084();

  sub_240642600();
  v12 = sub_24075A2B4();

  [v10 initWithAltDSID:v11 repairedSymptoms:v12 symptomReport:v9];
}

BOOL _s12AppleIDSetup12RepairReportV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[10];
  v2 = a1[11];
  v5 = a1[12];
  v4 = a1[13];
  v6 = a1[14];
  v8 = a2[10];
  v7 = a2[11];
  v10 = a2[12];
  v9 = a2[13];
  v11 = a2[14];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24075ACF4() & 1) == 0 || (sub_2407455F8(v3, v8) & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v10)
    {
      if (v2 == v7 && v5 == v10 || (sub_24075ACF4() & 1) != 0)
      {
        sub_2406424AC(v2, v5);
        sub_2406424AC(v7, v10);
        sub_2406424AC(v2, v5);
        v12 = sub_2406B7F50(v6, v11);
        sub_240609C34(v7, v10);

        sub_240609C34(v2, v5);
        return (v12 & 1) != 0;
      }

      sub_2406424AC(v2, v5);
      sub_2406424AC(v7, v10);
      sub_2406424AC(v2, v5);
      sub_240609C34(v7, v10);

      v14 = v2;
      v15 = v5;
      goto LABEL_16;
    }

    sub_2406424AC(v2, v5);
    sub_2406424AC(v7, 0);
    sub_2406424AC(v2, v5);

LABEL_15:
    sub_240609C34(v2, v5);
    v14 = v7;
    v15 = v10;
LABEL_16:
    sub_240609C34(v14, v15);
    return 0;
  }

  sub_2406424AC(v2, 0);
  if (v10)
  {
    sub_2406424AC(v7, v10);
    goto LABEL_15;
  }

  sub_2406424AC(v7, 0);
  sub_240609C34(v2, 0);
  return 1;
}

uint64_t sub_2406424AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2406424FC()
{
  result = qword_27E4B9DE0;
  if (!qword_27E4B9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9DE0);
  }

  return result;
}

uint64_t sub_240642550(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9DE8, &qword_24076D708);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240642600()
{
  result = qword_27E4B9E08;
  if (!qword_27E4B9E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4B9E08);
  }

  return result;
}

unint64_t sub_24064264C(void *a1)
{
  a1[1] = sub_2405EEE38();
  a1[2] = sub_2405EEAC4();
  result = sub_240642684();
  a1[3] = result;
  return result;
}

unint64_t sub_240642684()
{
  result = qword_27E4B9E10;
  if (!qword_27E4B9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9E10);
  }

  return result;
}

unint64_t sub_2406426DC()
{
  result = qword_27E4B9E18;
  if (!qword_27E4B9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9E18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup13SymptomReportVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_240642774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2406427BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24064283C()
{
  result = qword_27E4B9E20;
  if (!qword_27E4B9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9E20);
  }

  return result;
}

unint64_t sub_240642894()
{
  result = qword_27E4B9E28;
  if (!qword_27E4B9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9E28);
  }

  return result;
}

unint64_t sub_2406428EC()
{
  result = qword_27E4B9E30;
  if (!qword_27E4B9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9E30);
  }

  return result;
}

uint64_t sub_240642940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002407879C0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002407879E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t CancellableActor.handleCancellation(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for AnyCancellable();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  CancellableActor.into()(a3, (&v15 - v9));
  v11 = &v10[*(v6 + 36)];
  v12 = *(v11 + 3);
  v13 = *(v11 + 4);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v13 + 24))(a1, v12, v13);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_240642C14(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v6 = *(a2 + 80);
  v5 = *(a2 + 88);
  v7 = type metadata accessor for _Coordinated.Coerced();
  WitnessTable = swift_getWitnessTable();
  return CancellableActor.handleCancellation(error:)(a1, v7, WitnessTable);
}

uint64_t sub_240642CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v6 = *v4;
  v7 = a4(0, *(a2 + 80));
  WitnessTable = swift_getWitnessTable();
  return CancellableActor.handleCancellation(error:)(a1, v7, WitnessTable);
}

uint64_t AnyCancellable.wrappedValue.setter(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  __swift_destroy_boxed_opaque_existential_1((v2 + v4));

  return sub_24058C9C0(a1, v2 + v4);
}

uint64_t (*AnyCancellable.wrappedValue.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_3;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t AnyCancellable.init<A>(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_2407597A4();
  type metadata accessor for AnyCancellableID();
  swift_storeEnumTagMultiPayload();
  swift_getAssociatedConformanceWitness();
  v8 = (a4 + *(type metadata accessor for AnyCancellable() + 36));
  v8[3] = a2;
  v8[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  v10 = *(*(a2 - 8) + 32);

  return v10(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyCancellable.init<A>(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = a1;
  type metadata accessor for AnyCancellableID();
  swift_storeEnumTagMultiPayload();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for AnyCancellable();
  v9 = (a4 + *(result + 36));
  v9[3] = a2;
  v9[4] = a3;
  *v9 = a1;
  return result;
}

uint64_t AnyCancellable.init<A>(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for AnyCancellableID();
  swift_storeEnumTagMultiPayload();
  v6 = *(a2 + 8);
  swift_getAssociatedConformanceWitness();
  v7 = (a3 + *(type metadata accessor for AnyCancellable() + 36));
  v7[3] = type metadata accessor for AnyCancellable._Actor();
  result = swift_getWitnessTable();
  v7[4] = result;
  *v7 = a1;
  return result;
}

uint64_t AnyCancellable.handleCancellation(error:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 36));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 24))(a1, v5, v6);
}

uint64_t sub_240643058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v21 - v15;
  v17 = sub_24075A3D4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, a1, a3);
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  *(v19 + 6) = a5;
  *(v19 + 7) = a2;
  (*(v10 + 32))(&v19[v18], v12, a3);
  swift_unknownObjectRetain();
  sub_240602F08(0, 0, v16, &unk_24076DBE8, v19);
}

uint64_t sub_240643244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  v8[6] = *(a8 + 24);
  v8[7] = (a8 + 24) & 0xFFFFFFFFFFFFLL | 0x4C42000000000000;
  v9 = *(a8 + 16);
  v11 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2406432D4, v11, v10);
}

uint64_t sub_2406432D4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  (*(v0 + 48))(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t AnyCancellableID.hash(into:)()
{
  v1 = sub_2407597B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnyCancellableID();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_240643A50(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x245CC6BA0](1);
    sub_240643FF0(&qword_27E4B7438, MEMORY[0x277CC95F0]);
    sub_24075A004();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = *v9;
    MEMORY[0x245CC6BA0](0);
    return MEMORY[0x245CC6BA0](v11);
  }
}

uint64_t AnyCancellableID.hashValue.getter()
{
  v1 = v0;
  v2 = sub_2407597B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnyCancellableID();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24075AE64();
  sub_240643A50(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x245CC6BA0](1);
    sub_240643FF0(&qword_27E4B7438, MEMORY[0x277CC95F0]);
    sub_24075A004();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    MEMORY[0x245CC6BA0](0);
    MEMORY[0x245CC6BA0](v11);
  }

  return sub_24075AED4();
}

uint64_t sub_240643700(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_2407597B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24075AE64();
  sub_240643A50(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x245CC6BA0](1);
    sub_240643FF0(&qword_27E4B7438, MEMORY[0x277CC95F0]);
    sub_24075A004();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v14 = *v13;
    MEMORY[0x245CC6BA0](0);
    MEMORY[0x245CC6BA0](v14);
  }

  return sub_24075AED4();
}

uint64_t Cancellable.into()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  swift_getAssociatedTypeWitness();
  return AnyCancellable.init<A>(wrappedValue:)(v9, a1, a2, a3);
}

uint64_t CancellableActor.into()@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *(a1 + 8);
  swift_getAssociatedTypeWitness();
  AnyCancellable.init<A>(wrappedValue:)(v2, a1, a2);

  return swift_unknownObjectRetain();
}

uint64_t sub_240643A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCancellableID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AnyCancellableID()
{
  result = qword_27E4B9EC8;
  if (!qword_27E4B9EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240643B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCancellableID();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_240643B7C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F58, &unk_24076DBF0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *a1;
  *(&v15 - v6) = v8;
  type metadata accessor for AnyCancellableID();
  swift_storeEnumTagMultiPayload();
  v10 = &v7[*(v4 + 44)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F60, &unk_240782830);
  *(v10 + 3) = v11;
  v12 = sub_2406442F8();
  *(v10 + 4) = v12;
  *v10 = v8;
  v16 = v9;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v13 = *(v12 + 24);

  v13(&v16, v11, v12);
  return sub_2405B8A50(v7, &qword_27E4B9F58, &unk_24076DBF0);
}

uint64_t _s12AppleIDSetup16AnyCancellableIDO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2407597B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyCancellableID();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v25 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F70, &qword_24076DC00);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v25 - v19;
  v21 = *(v18 + 56);
  sub_240643A50(a1, &v25 - v19);
  sub_240643A50(a2, &v20[v21]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_240643A50(v20, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = *v15 == *&v20[v21];
      goto LABEL_6;
    }

LABEL_8:
    sub_2405B8A50(v20, &qword_27E4B9F70, &qword_24076DC00);
    v22 = 0;
    return v22 & 1;
  }

  sub_240643A50(v20, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v20[v21], v4);
  v22 = sub_240759784();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v13, v4);
LABEL_6:
  sub_24064435C(v20);
  return v22 & 1;
}

uint64_t sub_240643FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_240644060(uint64_t a1)
{
  result = type metadata accessor for AnyCancellableID();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    swift_getExtendedExistentialTypeMetadata();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_240644120()
{
  result = sub_2407597B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24064418C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2406441C8(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 24;
  v2 = *(a2 + 24);
  v4 = *(*(v3 + 8) + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_2406441E8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2405CE450;

  return sub_240643244(a1, v9, v10, v7, v1 + v8, v4, v5, v6);
}

unint64_t sub_2406442F8()
{
  result = qword_27E4B9F68;
  if (!qword_27E4B9F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B9F60, &unk_240782830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9F68);
  }

  return result;
}

uint64_t sub_24064435C(uint64_t a1)
{
  v2 = type metadata accessor for AnyCancellableID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2406443B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2405B044C(a3, v24 - v10, &unk_27E4B9BF0, &qword_240762710);
  v12 = sub_24075A3D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2405B8A50(v11, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24075A344();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24075A104() + 32;

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

      sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);

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

  sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24064465C@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24075AEE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14[-v11];
  a1(v7);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v12, v8);
}

uint64_t sub_240644810(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_240644870()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4B9F78);
  v1 = __swift_project_value_buffer(v0, qword_27E4B9F78);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B8518);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SharingBaseServiceType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24075AA34();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2406449A0()
{
  v0 = *MEMORY[0x277D54D50];
  v1 = sub_24075A0B4();
  v3 = v2;
  if (v1 == sub_24075A0B4() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_24075ACF4();
  }

  return v6 & 1;
}

uint64_t sub_240644A30()
{
  sub_24075AE64();
  v0 = *MEMORY[0x277D54D50];
  sub_24075A0B4();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_240644A98()
{
  v0 = *MEMORY[0x277D54D50];
  sub_24075A0B4();
  sub_24075A114();
}

uint64_t sub_240644AF4()
{
  sub_24075AE64();
  v0 = *MEMORY[0x277D54D50];
  sub_24075A0B4();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_240644B58@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24075AA34();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_240644BAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x277D54D50];
  result = sub_24075A0B4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_240644BE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1F0, &qword_24076E2E8);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1F8, &qword_24076E2F0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v0 + 16) = result;
  off_27E4B9F90 = v0;
  return result;
}

void *sub_240644C54()
{
  v1 = *(*(v0 + 112) + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t SharingServerBase.fixedPin.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t SharingServerBase.targetAuthTag.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t sub_240644D58(int a1)
{
  result = swift_beginAccess();
  *(v1 + 168) = a1;
  return result;
}

uint64_t SharingServerBase.legacySymptomReport.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[25];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2406424AC(v2, v3);
}

uint64_t SharingServerBase.stateHandler.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

void sub_240644E40()
{
  swift_beginAccess();
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = qword_27E4B5F30;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_240759AE4();
    __swift_project_value_buffer(v4, qword_27E4B9F78);
    v5 = v3;

    v6 = sub_240759AC4();
    v7 = sub_24075A5D4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      v10 = sub_240644C54();
      *(v8 + 4) = v10;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v5;
      *v9 = v10;
      v9[1] = v1;
      v11 = v5;
      _os_log_impl(&dword_240579000, v6, v7, "Disabling needs setup on service: %@ with session: %@", v8, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A0, &qword_240762400);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v9, -1, -1);
      MEMORY[0x245CC76B0](v8, -1, -1);
    }

    v12 = sub_240644C54();
    if (v12)
    {
      v13 = v12;
      [v12 setNeedsSetup_];
    }

    goto LABEL_14;
  }

  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  __swift_project_value_buffer(v14, qword_27E4B9F78);

  v15 = sub_240759AC4();
  v16 = sub_24075A5D4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = sub_240644C54();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_240579000, v15, v16, "Enabling needs setup on service: %@", v17, 0xCu);
    sub_2405B8A50(v18, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v18, -1, -1);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  v20 = sub_240644C54();
  if (v20)
  {
    v5 = v20;
    [v20 setNeedsSetup_];
LABEL_14:
  }
}

void *sub_240645144()
{
  v0 = sub_24064E9E8();
  v1 = v0;
  return v0;
}

uint64_t sub_240645170(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v6 = v1[26];
  v5 = v1[27];
  swift_beginAccess();
  v7 = *(v4 + 80);
  v8 = *(v4 + 88);
  type metadata accessor for AnyTransportBuilder();
  v9 = type metadata accessor for BluetoothBaseState();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v12, v2 + 30, v9);
  v6(v2, a1, v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_24064527C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for AnyTransportBuilder();
  v6 = type metadata accessor for BluetoothBaseState();
  return (*(*(v6 - 8) + 16))(a1, v1 + 30, v6);
}

uint64_t SharingServerBase.__allocating_init(queue:advertisementRate:fixedPin:targetAuthTag:pinType:serviceType:deviceActionType:legacySymptomReport:service:tags:stateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, __int128 *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = swift_allocObject();
  SharingServerBase.init(queue:advertisementRate:fixedPin:targetAuthTag:pinType:serviceType:deviceActionType:legacySymptomReport:service:tags:stateHandler:)(a1, a2, a3, a4, a5, a6, a7, v22, a9, a10, a11, a12, a13, a14);
  return v21;
}

uint64_t SharingServerBase.init(queue:advertisementRate:fixedPin:targetAuthTag:pinType:serviceType:deviceActionType:legacySymptomReport:service:tags:stateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, __int128 *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v25 = a10[1];
  v26 = *a10;
  swift_defaultActor_initialize();
  *(v14 + 232) = 0u;
  *(v14 + 305) = 0u;
  *(v14 + 280) = 0u;
  *(v14 + 296) = 0u;
  *(v14 + 248) = 0u;
  *(v14 + 264) = 0u;
  *(v14 + 321) = 4;
  *(v14 + 328) = 0;
  if (qword_27E4B5F38 != -1)
  {
    swift_once();
  }

  v18 = off_27E4B9F90;
  sub_24064E760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9F98, &qword_24076DC30);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FA0, &qword_24076DC38);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = a11;
  *(v19 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FA8, &qword_24076DC40);
  v21 = swift_allocObject();
  *(v21 + 32) = 0;
  *(v21 + 16) = sub_24064E9D8;
  *(v21 + 24) = 0;
  *(v19 + 16) = v21;
  v22 = v18[2];
  MEMORY[0x28223BE20](v21);
  v23 = a11;

  os_unfair_lock_lock((v22 + 24));
  sub_24064EA1C((v22 + 16));
  os_unfair_lock_unlock((v22 + 24));

  *(v15 + 112) = v19;
  *(v15 + 120) = a1;
  *(v15 + 128) = a2;
  *(v15 + 136) = a3;
  *(v15 + 144) = a4;
  *(v15 + 152) = a5;
  *(v15 + 160) = a6;
  *(v15 + 168) = a7;
  *(v15 + 172) = a9;
  *(v15 + 176) = v26;
  *(v15 + 192) = v25;
  *(v15 + 208) = a13;
  *(v15 + 216) = a14;
  *(v15 + 224) = a12;
  return v15;
}

void *SharingServerBase.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_27E4B9F78);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_240579000, v4, v5, "SharingServerBase deallocated", v6, 2u);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  sub_240647E44(1);
  v7 = v1[14];

  v8 = v1[18];

  v9 = v1[20];

  v10 = v1[24];
  v11 = v1[25];
  sub_240609C34(v1[22], v1[23]);
  v12 = v1[27];

  v13 = v1[28];

  v14 = *(v2 + 80);
  v15 = *(v2 + 88);
  type metadata accessor for AnyTransportBuilder();
  v16 = type metadata accessor for BluetoothBaseState();
  (*(*(v16 - 8) + 8))(v1 + 30, v16);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t SharingServerBase.__deallocating_deinit()
{
  SharingServerBase.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_240645810()
{
  *(v1 + 1080) = v0;
  *(v1 + 1088) = *v0;
  return MEMORY[0x2822009F8](sub_240645858, v0, 0);
}

uint64_t sub_240645858()
{
  v1 = *(v0 + 1080);
  sub_24064527C(v0 + 184);
  if (*(v0 + 265) != 4 || *(v0 + 264) || (v2 = vorrq_s8(vorrq_s8(*(v0 + 200), *(v0 + 232)), vorrq_s8(*(v0 + 216), *(v0 + 248))), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | *(v0 + 192) | *(v0 + 184)))
  {
    v25 = *(v0 + 1088);
    v27 = *(v25 + 80);
    v26 = *(v25 + 88);
    type metadata accessor for AnyTransportBuilder();
    v28 = type metadata accessor for BluetoothBaseState();
    (*(*(v28 - 8) + 8))(v0 + 184, v28);
    type metadata accessor for SharingServerBase.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v29 = 3;
    swift_willThrow();
    v30 = *(v0 + 8);
  }

  else
  {
    v3 = *(v0 + 1088);
    v4 = *(v0 + 1080);
    v5 = *(v3 + 80);
    v6 = *(v3 + 88);
    type metadata accessor for AnyTransportBuilder();
    v7 = type metadata accessor for BluetoothBaseState();
    *(v0 + 1096) = v7;
    v8 = *(v7 - 8);
    v9 = *(v8 + 8);
    *(v0 + 1104) = v9;
    *(v0 + 1112) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v0 + 184, v7);
    *(v0 + 272) = 1;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 337) = 0u;
    *(v0 + 353) = 4;
    sub_24064EAA4(v0 + 272);
    v9(v0 + 272, v7);
    v10 = sub_240644C54();
    if (v10)
    {
      v11 = v10;
      [v10 setDispatchQueue_];
    }

    v12 = *(v0 + 1080);
    v13 = sub_240644C54();
    v14 = MEMORY[0x277D54D50];
    if (v13)
    {
      v15 = v13;
      [v13 setLabel_];
    }

    v16 = *(v0 + 1080);
    v17 = sub_240644C54();
    if (v17)
    {
      v18 = v17;
      [v17 setAdvertiseRate_];
    }

    v19 = *(v0 + 1080);
    v20 = sub_240644C54();
    if (v20)
    {
      v21 = v20;
      v22 = *(v0 + 1080);
      if (*(v22 + 144))
      {
        v23 = *(v22 + 136);
        v24 = sub_24075A084();
      }

      else
      {
        v24 = 0;
      }

      [v21 setFixedPIN_];
    }

    v32 = *(v0 + 1080);
    v33 = sub_240644C54();
    if (v33)
    {
      v34 = v33;
      v35 = *(v0 + 1080);
      v36 = *(v35 + 160);
      if (v36)
      {
        v37 = *(v35 + 152);
        v38 = *(v35 + 160);

        v39 = sub_2406250C8(v37, v36);
        v41 = v40;
        v36 = sub_2407596B4();
        sub_2405BCD98(v39, v41);
      }

      [v34 setTargetAuthTag_];
    }

    v42 = *(v0 + 1080);
    v43 = sub_240644C54();
    if (v43)
    {
      v44 = v43;
      [v43 setIdentifier_];
    }

    v45 = *(v0 + 1080);
    v46 = sub_240644C54();
    if (v46)
    {
      v47 = v46;
      [v46 setNeedsSetup_];
    }

    v48 = *(v0 + 1080);
    v49 = sub_240644C54();
    if (v49)
    {
      v50 = v49;
      [v49 setOverrideScreenOff_];
    }

    v51 = *(v0 + 1080);
    v52 = sub_240644C54();
    if (v52)
    {
      v53 = v52;
      [v52 setDeviceActionType_];
    }

    v54 = *(v0 + 1080);
    v55 = sub_240644C54();
    if (v55)
    {
      v56 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB0, &unk_24076DC50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_240765570;
      *(v0 + 1064) = 0x6C7070612E6D6F63;
      *(v0 + 1072) = 0xEF6E696D64612E65;
      sub_24075A814();
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = 1;
      sub_2405BD674(inited);
      swift_setDeallocating();
      sub_2405B8A50(inited + 32, &unk_27E4B73D0, &qword_240770790);
      v58 = sub_240759F54();

      [v56 setPairSetupACL_];
    }

    v59 = *(v0 + 1080);
    v60 = sub_240644C54();
    if (v60)
    {
      v61 = v60;
      v62 = *(v0 + 1080);
      v63 = swift_beginAccess();
      if ((*(v62 + 168) & 0x80000000) != 0)
      {
        __break(1u);
        return MEMORY[0x282200938](v63);
      }

      [v61 setPinType_];
    }

    v64 = *(v0 + 1080);
    v65 = sub_240644C54();
    if (v65)
    {
      v66 = v65;
      [v65 setSessionFlags_];
    }

    v67 = *(v0 + 1080);
    v68 = sub_240644C54();
    if (v68)
    {
      v69 = v68;
      v70 = *(v0 + 1080);
      v71 = swift_allocObject();
      swift_weakInit();
      v72 = swift_allocObject();
      v72[2] = v5;
      v72[3] = v6;
      v72[4] = v71;
      *(v0 + 544) = sub_24064EBDC;
      *(v0 + 552) = v72;
      *(v0 + 512) = MEMORY[0x277D85DD0];
      *(v0 + 520) = 1107296256;
      *(v0 + 528) = sub_240646B08;
      *(v0 + 536) = &block_descriptor_6;
      v73 = _Block_copy((v0 + 512));
      v74 = *(v0 + 552);

      [v69 setShowPINHandlerEx_];
      _Block_release(v73);
    }

    v75 = *(v0 + 1080);
    v76 = sub_240644C54();
    if (v76)
    {
      v77 = v76;
      v78 = *(v0 + 1080);
      v79 = swift_allocObject();
      swift_weakInit();
      v80 = swift_allocObject();
      v80[2] = v5;
      v80[3] = v6;
      v80[4] = v79;
      *(v0 + 592) = sub_24064EC30;
      *(v0 + 600) = v80;
      *(v0 + 560) = MEMORY[0x277D85DD0];
      *(v0 + 568) = 1107296256;
      *(v0 + 576) = sub_240644810;
      *(v0 + 584) = &block_descriptor_10_0;
      v81 = _Block_copy((v0 + 560));
      v82 = *(v0 + 600);

      [v77 setHidePINHandler_];
      _Block_release(v81);
    }

    v83 = *(v0 + 1080);
    v84 = sub_240644C54();
    if (v84)
    {
      v85 = v84;
      v86 = *(v0 + 1080);
      v87 = swift_allocObject();
      swift_weakInit();
      v88 = swift_allocObject();
      v88[2] = v5;
      v88[3] = v6;
      v88[4] = v87;
      *(v0 + 640) = sub_24064EC88;
      *(v0 + 648) = v88;
      *(v0 + 608) = MEMORY[0x277D85DD0];
      *(v0 + 616) = 1107296256;
      *(v0 + 624) = sub_240646C20;
      *(v0 + 632) = &block_descriptor_17;
      v89 = _Block_copy((v0 + 608));
      v90 = *(v0 + 648);

      [v85 setSessionStartedHandler_];
      _Block_release(v89);
    }

    v91 = *(v0 + 1080);
    v92 = sub_240644C54();
    if (v92)
    {
      v93 = v92;
      v94 = *(v0 + 1080);
      v95 = swift_allocObject();
      swift_weakInit();
      v96 = swift_allocObject();
      v96[2] = v5;
      v96[3] = v6;
      v96[4] = v95;
      *(v0 + 688) = sub_24064ECCC;
      *(v0 + 696) = v96;
      *(v0 + 656) = MEMORY[0x277D85DD0];
      *(v0 + 664) = 1107296256;
      *(v0 + 672) = sub_240646FBC;
      *(v0 + 680) = &block_descriptor_24;
      v97 = _Block_copy((v0 + 656));
      v98 = *(v0 + 696);

      [v93 setSessionEndedHandler_];
      _Block_release(v97);
    }

    v99 = *(v0 + 1080);
    v100 = sub_240644C54();
    if (v100)
    {
      v101 = v100;
      v102 = *(v0 + 1080);
      v103 = swift_allocObject();
      swift_weakInit();
      v104 = swift_allocObject();
      v104[2] = v5;
      v104[3] = v6;
      v104[4] = v103;
      *(v0 + 736) = sub_24064ECD8;
      *(v0 + 744) = v104;
      *(v0 + 704) = MEMORY[0x277D85DD0];
      *(v0 + 712) = 1107296256;
      *(v0 + 720) = sub_240646C20;
      *(v0 + 728) = &block_descriptor_31;
      v105 = _Block_copy((v0 + 704));
      v106 = *(v0 + 744);

      [v101 setSessionSecuredHandler_];
      _Block_release(v105);
    }

    v107 = *(v0 + 1080);
    v108 = sub_240644C54();
    if (v108)
    {
      v109 = v108;
      v110 = *(v0 + 1080);
      v111 = swift_allocObject();
      swift_weakInit();
      v112 = swift_allocObject();
      v112[2] = v5;
      v112[3] = v6;
      v112[4] = v111;
      *(v0 + 784) = sub_24064ED1C;
      *(v0 + 792) = v112;
      *(v0 + 752) = MEMORY[0x277D85DD0];
      *(v0 + 760) = 1107296256;
      *(v0 + 768) = sub_240644810;
      *(v0 + 776) = &block_descriptor_38;
      v113 = _Block_copy((v0 + 752));
      v114 = *(v0 + 792);

      [v109 setInvalidationHandler_];
      _Block_release(v113);
    }

    v115 = *(v0 + 1080);
    v116 = sub_240644C54();
    if (v116)
    {
      v117 = v116;
      v118 = *(v0 + 1080);
      v119 = swift_allocObject();
      swift_weakInit();
      v120 = swift_allocObject();
      v120[2] = v5;
      v120[3] = v6;
      v120[4] = v119;
      *(v0 + 832) = sub_24064ED74;
      *(v0 + 840) = v120;
      *(v0 + 800) = MEMORY[0x277D85DD0];
      *(v0 + 808) = 1107296256;
      *(v0 + 816) = sub_240644810;
      *(v0 + 824) = &block_descriptor_45;
      v121 = _Block_copy((v0 + 800));
      v122 = *(v0 + 840);

      [v117 setInterruptionHandler_];
      _Block_release(v121);
    }

    v123 = *(v0 + 1080);
    v124 = sub_240644C54();
    if (v124)
    {
      v125 = v124;
      v126 = *(v0 + 1080);
      v127 = swift_allocObject();
      swift_weakInit();
      v128 = swift_allocObject();
      v128[2] = v5;
      v128[3] = v6;
      v128[4] = v127;
      *(v0 + 880) = sub_24064EDCC;
      *(v0 + 888) = v128;
      *(v0 + 848) = MEMORY[0x277D85DD0];
      *(v0 + 856) = 1107296256;
      *(v0 + 864) = sub_240647520;
      *(v0 + 872) = &block_descriptor_52;
      v129 = _Block_copy((v0 + 848));
      v130 = *(v0 + 888);

      [v125 setErrorHandler_];
      _Block_release(v129);
    }

    v131 = *(v0 + 1080);
    v132 = sub_240644C54();
    if (v132)
    {
      v133 = v132;
      *(v0 + 928) = sub_24064758C;
      *(v0 + 936) = 0;
      *(v0 + 896) = MEMORY[0x277D85DD0];
      *(v0 + 904) = 1107296256;
      *(v0 + 912) = sub_24064784C;
      *(v0 + 920) = &block_descriptor_55;
      v134 = _Block_copy((v0 + 896));
      [v133 setPeerDisconnectedHandler_];
      _Block_release(v134);
    }

    v135 = *(v0 + 1080);
    v136 = sub_240644C54();
    if (v136)
    {
      v137 = v136;
      *(v0 + 976) = sub_240651508;
      *(v0 + 984) = 0;
      *(v0 + 944) = MEMORY[0x277D85DD0];
      *(v0 + 952) = 1107296256;
      *(v0 + 960) = sub_240647520;
      *(v0 + 968) = &block_descriptor_58;
      v138 = _Block_copy((v0 + 944));
      [v137 setPairSetupCompletionHandler_];
      _Block_release(v138);
    }

    v139 = *(v0 + 1080);
    v140 = sub_240644C54();
    if (v140)
    {
      v141 = v140;
      v142 = *(v0 + 1080);
      v143 = swift_allocObject();
      swift_weakInit();
      v144 = swift_allocObject();
      v144[2] = v5;
      v144[3] = v6;
      v144[4] = v143;
      *(v0 + 1024) = sub_24064EE08;
      *(v0 + 1032) = v144;
      *(v0 + 992) = MEMORY[0x277D85DD0];
      *(v0 + 1000) = 1107296256;
      *(v0 + 1008) = sub_240647BD0;
      *(v0 + 1016) = &block_descriptor_65_0;
      v145 = _Block_copy((v0 + 992));
      v146 = *(v0 + 1032);

      [v141 setReceivedRequestHandler_];
      _Block_release(v145);
    }

    v147 = *(v0 + 1080);
    v148 = sub_240644C54();
    *(v0 + 1120) = v148;
    if (v148)
    {
      v149 = v148;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_240646838;
      v150 = swift_continuation_init();
      *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB8, &qword_24076DC60);
      *(v0 + 448) = MEMORY[0x277D85DD0];
      *(v0 + 456) = 1107296256;
      *(v0 + 464) = sub_240647D90;
      *(v0 + 472) = &block_descriptor_68;
      *(v0 + 480) = v150;
      [v149 activateWithCompletion_];
      v63 = v0 + 16;

      return MEMORY[0x282200938](v63);
    }

    v151 = *(v0 + 1112);
    v152 = *(v0 + 1104);
    v153 = *(v0 + 1096);
    v154 = *(v0 + 1080);
    *(v0 + 360) = 2;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 425) = 0u;
    *(v0 + 441) = 4;
    sub_24064EAA4(v0 + 360);
    v152(v0 + 360, v153);
    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_240646838()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1128) = v3;
  v4 = *(v1 + 1080);
  if (v3)
  {
    v5 = sub_240646A0C;
  }

  else
  {
    v5 = sub_240646958;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240646958()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  *(v0 + 360) = 2;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 425) = 0u;
  *(v0 + 441) = 4;
  sub_24064EAA4(v0 + 360);
  v2(v0 + 360, v3);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_240646A0C()
{
  v1 = v0[141];
  v2 = v0[140];
  swift_willThrow();

  v3 = v0[141];
  v4 = v0[1];

  return v4();
}

uint64_t sub_240646A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  return MEMORY[0x2822009F8](sub_240646AA4, a4, 0);
}

uint64_t sub_240646AA4()
{
  v1 = v0[2];
  sub_24064EE2C(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_240646B08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_24075A0B4();
  v7 = v6;

  v4(a2, v5, v7);
}

uint64_t sub_240646BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_240646BC0, a4, 0);
}

uint64_t sub_240646BC0()
{
  v1 = *(v0 + 16);
  sub_2406481D8(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_240646C20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_240646C88(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v8 = sub_240759AE4();
  __swift_project_value_buffer(v8, qword_27E4B9F78);
  v9 = a1;
  v10 = a2;
  v11 = sub_240759AC4();
  v12 = sub_24075A5D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v9;
    *v14 = v9;
    *(v13 + 12) = 2112;
    v15 = v9;
    if (a2)
    {
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v13 + 14) = v17;
    v14[1] = v18;
    _os_log_impl(&dword_240579000, v11, v12, "sessionEndedHandler called with session: %@ and error: %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A0, &qword_240762400);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v14, -1, -1);
    MEMORY[0x245CC76B0](v13, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = sub_24075A3D4();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    v22[5] = v9;
    v22[6] = a2;
    v23 = v9;
    v24 = a2;
    sub_240602F08(0, 0, v7, &unk_24076E2A0, v22);
  }

  return result;
}

uint64_t sub_240646F5C()
{
  v1 = *(v0 + 16);
  sub_24064EF10();
  v2 = *(v0 + 8);

  return v2();
}

void sub_240646FBC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_240647048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  __swift_project_value_buffer(v14, qword_27E4B9F78);
  v15 = a1;
  v16 = sub_240759AC4();
  v17 = sub_24075A5D4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_240579000, v16, v17, a5, v18, 0xCu);
    sub_2405B8A50(v19, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v19, -1, -1);
    MEMORY[0x245CC76B0](v18, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = sub_24075A3D4();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v22;
    v24[5] = v15;
    v25 = v15;
    sub_240602F08(0, 0, v13, a7, v24);
  }

  return result;
}

uint64_t sub_240647298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2406472B8, a4, 0);
}

uint64_t sub_2406472B8()
{
  v1 = *(v0 + 16);
  sub_240648F4C(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240647338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 24) = *a4;
  return MEMORY[0x2822009F8](sub_240647380, 0, 0);
}

uint64_t sub_240647380()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for SharingServerBase.Failure();
  swift_getWitnessTable();
  v0[4] = swift_allocError();
  *v5 = 4;

  return MEMORY[0x2822009F8](sub_240647430, v2, 0);
}

uint64_t sub_240647430()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_240649558(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2406474A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2406474C0, a4, 0);
}

uint64_t sub_2406474C0()
{
  v1 = *(v0 + 16);
  sub_240649558(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_240647520(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_24064758C(uint64_t a1, void *a2)
{
  v4 = sub_2407597B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v9 = sub_240759AE4();
  __swift_project_value_buffer(v9, qword_27E4B9F78);
  (*(v5 + 16))(v8, a1, v4);
  v10 = a2;
  v11 = sub_240759AC4();
  v12 = sub_24075A5D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v13 = 136315394;
    sub_240650B50();
    v15 = sub_24075AC34();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_2405BBA7C(v15, v17, &v24);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v13 + 14) = v20;
    *v14 = v21;
    _os_log_impl(&dword_240579000, v11, v12, "peerDisconnectedHandler called for peer: %s with error: %@", v13, 0x16u);
    sub_2405B8A50(v14, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v14, -1, -1);
    v22 = v23;
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245CC76B0](v22, -1, -1);
    MEMORY[0x245CC76B0](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_24064784C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2407597B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  sub_240759794();

  v12 = a3;
  v11(v9, a3);

  return (*(v6 + 8))(v9, v5);
}

void sub_240647960(void *a1, int a2)
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v4 = sub_240759AE4();
  __swift_project_value_buffer(v4, qword_27E4B9F78);
  v5 = a1;

  v6 = sub_240759AC4();
  v7 = sub_24075A5E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 138412802;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 1024;
    *(v8 + 14) = a2;
    *(v8 + 18) = 2080;
    v11 = v5;
    v12 = sub_240759F84();
    v14 = sub_2405BBA7C(v12, v13, &v18);

    *(v8 + 20) = v14;
    _os_log_impl(&dword_240579000, v6, v7, "receivedRequestHandler called: %@ flags: %u request: %s", v8, 0x1Cu);
    sub_2405B8A50(v9, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  oslog = sub_240759AC4();
  v15 = sub_24075A5D4();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_240579000, oslog, v15, "Interacting with modern device, ignoring received sharing request", v16, 2u);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }
}

void sub_240647BD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_240759F74();
  v9 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v9;

  v10 = a2;
  v8();
}

void sub_240647CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_2407595C4();
    if (a3)
    {
LABEL_3:
      v8 = sub_240759F54();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a4 + 16))(a4, a1, v7);
}

uint64_t sub_240647D90(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

void sub_240647E44(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v9 = sub_240759AE4();
  __swift_project_value_buffer(v9, qword_27E4B9F78);
  v10 = sub_240759AC4();
  v11 = sub_24075A5C4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315394;
    v14 = sub_24075AFC4();
    v16 = sub_2405BBA7C(v14, v15, &v23);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    _os_log_impl(&dword_240579000, v10, v11, "Invalidating %s for deinit: %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CC76B0](v13, -1, -1);
    MEMORY[0x245CC76B0](v12, -1, -1);
  }

  if (a1)
  {
    v22 = sub_240759AC4();
    v17 = sub_24075A5D4();
    if (os_log_type_enabled(v22, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_240579000, v22, v17, "Not changing to invalidated state, we are deinitialized", v18, 2u);
      MEMORY[0x245CC76B0](v18, -1, -1);
    }

    v19 = v22;
  }

  else
  {
    v20 = sub_24075A3D4();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v2;

    sub_240602F08(0, 0, v8, &unk_24076E2E0, v21);
  }
}

uint64_t sub_240648178()
{
  v1 = *(v0 + 16);
  sub_240649608();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2406481D8(void *a1)
{
  v3 = *v1;
  v4 = a1;
  sub_24064EA4C(a1);

  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v5 = sub_240759AE4();
  __swift_project_value_buffer(v5, qword_27E4B9F78);
  v6 = v4;
  v7 = sub_240759AC4();
  v8 = sub_24075A5C4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = a1;
    v11 = v6;
    _os_log_impl(&dword_240579000, v7, v8, "Communicating with modern OS, running tag exchange with session: %@", v9, 0xCu);
    sub_2405B8A50(v10, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

  sub_2406483E0(v6);
  v16 = 3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, 25);
  v20[25] = 4;
  sub_24064EAA4(&v16);
  v12 = *(v3 + 80);
  v13 = *(v3 + 88);
  type metadata accessor for AnyTransportBuilder();
  v14 = type metadata accessor for BluetoothBaseState();
  return (*(*(v14 - 8) + 8))(&v16, v14);
}

uint64_t sub_2406483E0(void *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_24075A3D4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(v3 + 80);
  v10 = *(v3 + 88);
  type metadata accessor for SharingServerBase();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = WitnessTable;
  v12[4] = v1;
  v12[5] = a1;
  swift_retain_n();
  v13 = a1;
  sub_2406443B8(0, 0, v7, &unk_24076E1D0, v12);
}

uint64_t sub_240648550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_240648574, a4, 0);
}

uint64_t sub_240648574()
{
  v1 = *(v0[3] + 224);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_240648610;
  v4 = v0[3];
  v3 = v0[4];

  return sub_240648784(v1, v3);
}

uint64_t sub_240648610(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 48) = a1 & 1;

    return MEMORY[0x2822009F8](sub_240648760, v9, 0);
  }
}

uint64_t sub_240648784(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_2406487D0, v2, 0);
}

uint64_t sub_2406487D0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for SharingServerBase();
  WitnessTable = swift_getWitnessTable();
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = *(v0 + 16);
  *(v6 + 16) = v2;
  *(v6 + 24) = v7;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_2406488FC;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, v2, WitnessTable, 0xD000000000000015, 0x8000000240787D10, sub_2406501BC, v6, v10);
}

uint64_t sub_2406488FC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_240648A40;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_240648A24;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240648A40()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2(0);
}

uint64_t sub_240648AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v4 = sub_240759AE4();
  __swift_project_value_buffer(v4, qword_27E4B9F78);

  v5 = sub_240759AC4();
  v6 = sub_24075A5D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    *&v25 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4BB810, &qword_2407747D0);
    v9 = sub_24075A0E4();
    v11 = sub_2405BBA7C(v9, v10, v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_240579000, v5, v6, "Received tag exchange response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  sub_24075A814();
  if (!*(a3 + 16) || (v12 = sub_2405BB338(v24), (v13 & 1) == 0))
  {
    sub_2405BD160(v24);
LABEL_14:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_15;
  }

  sub_2405BD1CC(*(a3 + 56) + 32 * v12, &v25);
  sub_2405BD160(v24);
  if (!*(&v26 + 1))
  {
LABEL_15:
    sub_2405B8A50(&v25, &qword_27E4BA1E8, &qword_24076E1C0);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v14 = LOBYTE(v24[0]);
    v15 = sub_240759AC4();
    v16 = sub_24075A5C4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v14;
      _os_log_impl(&dword_240579000, v15, v16, "Tag exchange resulted in peer deciding to accept: %{BOOL}d", v17, 8u);
      MEMORY[0x245CC76B0](v17, -1, -1);
    }

    LOBYTE(v24[0]) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E0, &qword_24076E1B8);
    return sub_24075A364();
  }

LABEL_16:
  v19 = sub_240759AC4();
  v20 = sub_24075A5E4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_240579000, v19, v20, "Failed to parse tag exchange response", v21, 2u);
    MEMORY[0x245CC76B0](v21, -1, -1);
  }

  sub_2405B8998();
  v22 = swift_allocError();
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 6;
  v24[0] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BA1E0, &qword_24076E1B8);
  return sub_24075A354();
}

uint64_t sub_240648E68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_240759F74();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_240759F74();
  }

LABEL_4:

  v9 = a2;
  v7(a2, v8, v4);
}

uint64_t sub_240648F4C(void *a1)
{
  v3 = *v1;
  v4 = a1;
  sub_24064EA4C(a1);

  v8 = *(v3 + 80);
  v9 = *(v3 + 88);
  type metadata accessor for AnyTransportBuilder();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24064465C(sub_240650198, v5, v10);
  v10[81] = 2;
  sub_24064EAA4(v10);
  v6 = type metadata accessor for BluetoothBaseState();
  return (*(*(v6 - 8) + 8))(v10, v6);
}

void sub_240649060(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v39 = a3;
  v4 = type metadata accessor for MessageSessionTransport();
  v5 = sub_24075A714();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v40 = &v37 - v18;
  v19 = [a1 messageSessionTemplate];
  if (!v19)
  {
    type metadata accessor for SharingServerBase.Failure();
    swift_getWitnessTable();
    v21 = swift_allocError();
    *v23 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v20 = v19;
  MessageSessionTransport.init(templateSession:identifier:)(v20, 0xD000000000000040, 0x8000000240787A00, v10);
  if ((*(v11 + 48))(v10, 1, v4) == 1)
  {
    (*(v6 + 8))(v10, v5);
    type metadata accessor for SharingServerBase.Failure();
    swift_getWitnessTable();
    v21 = swift_allocError();
    *v22 = 2;
    swift_willThrow();

LABEL_5:
    *v41 = v21;
    return;
  }

  v41 = v20;
  v24 = v40;
  (*(v11 + 32))(v40, v10, v4);
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v25 = sub_240759AE4();
  __swift_project_value_buffer(v25, qword_27E4B9F78);
  v26 = *(v11 + 16);
  v26(v17, v24, v4);
  v27 = sub_240759AC4();
  v28 = sub_24075A5C4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v29 = 136315138;
    v26(v38, v17, v4);
    v38 = sub_24075A0E4();
    v31 = v30;
    v32 = *(v11 + 8);
    v32(v17, v4);
    v33 = sub_2405BBA7C(v38, v31, &v42);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_240579000, v27, v28, "Created transport for message session: %s", v29, 0xCu);
    v34 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x245CC76B0](v34, -1, -1);
    v35 = v29;
    v24 = v40;
    MEMORY[0x245CC76B0](v35, -1, -1);
  }

  else
  {

    v32 = *(v11 + 8);
    v32(v17, v4);
  }

  WitnessTable = swift_getWitnessTable();
  TransportBuilding.into()(v4, WitnessTable, v39);

  v32(v24, v4);
}

uint64_t sub_240649558(void *a1)
{
  v2 = *v1;
  v8 = a1;
  v9 = 1;
  v10 = 0;
  v3 = a1;
  sub_24064EAA4(&v8);
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for AnyTransportBuilder();
  v6 = type metadata accessor for BluetoothBaseState();
  return (*(*(v6 - 8) + 8))(&v8, v6);
}

uint64_t sub_240649608()
{
  v1 = *v0;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4B9F78);
  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_240579000, v3, v4, "Invalidating sharing service.", v5, 2u);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }

  v6 = sub_240644C54();
  [v6 invalidate];

  v11 = 6;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, 25);
  v15[25] = 4;
  sub_24064EAA4(&v11);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  type metadata accessor for AnyTransportBuilder();
  v9 = type metadata accessor for BluetoothBaseState();
  return (*(*(v9 - 8) + 8))(&v11, v9);
}

unint64_t sub_2406497C8(unint64_t result)
{
  if (result >= 0xF)
  {
    return 15;
  }

  return result;
}

uint64_t sub_2406497E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BA8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_240649854(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2406498C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_240649930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_2406499A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2406497C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2406499CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2406497D8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2406499F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_240649A4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = swift_getWitnessTable();
  v4 = sub_2406500F0();

  return MEMORY[0x28211F498](a1, WitnessTable, v3, v4);
}

uint64_t sub_240649AF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = sub_2406500F0();

  return MEMORY[0x28211BAD0](a1, a2, WitnessTable, v5);
}

uint64_t sub_240649B6C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4B0;

  return sub_240645810();
}

uint64_t SharingClientBase.fixedPin.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t SharingClientBase.filter.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_24057B5BC(v1);
  return v1;
}

uint64_t SharingClientBase.stateHandler.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t sub_240649CD0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 88);
  type metadata accessor for MessageSessionTransport();
  v7 = type metadata accessor for BluetoothBaseState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v13 = *(v1 + 21);
  v12 = *(v1 + 22);
  v14 = *(v4 + 160);
  swift_beginAccess();
  (*(v8 + 16))(v11, &v2[v14], v7);
  v13(v2, a1, v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_240649E38@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for MessageSessionTransport();
  v7 = type metadata accessor for BluetoothBaseState();
  return (*(*(v7 - 8) + 16))(a1, v1 + v4, v7);
}

uint64_t SharingClientBase.__allocating_init(base:queue:fixedPin:serviceType:peerDevice:filter:stateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(v10 + 48);
  v19 = *(v10 + 52);
  v20 = swift_allocObject();
  SharingClientBase.init(base:queue:fixedPin:serviceType:peerDevice:filter:stateHandler:)(a1, a2, a3, a4, v21, a6, a7, a8, a9, a10);
  return v20;
}

void *SharingClientBase.init(base:queue:fixedPin:serviceType:peerDevice:filter:stateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *v10;
  swift_defaultActor_initialize();
  v17 = *(*v10 + 160);
  v18 = *(v16 + 80);
  v19 = *(v16 + 88);
  type metadata accessor for MessageSessionTransport();
  type metadata accessor for BluetoothBaseState();
  swift_storeEnumTagMultiPayload();
  v10[14] = a1;
  v10[15] = a2;
  v10[16] = a3;
  v10[17] = a4;
  v10[18] = a6;
  v10[19] = a7;
  v10[20] = a8;
  v10[21] = a9;
  v10[22] = a10;
  return v10;
}

char *SharingClientBase.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v3 = sub_240759AE4();
  __swift_project_value_buffer(v3, qword_27E4B9F78);
  v4 = sub_240759AC4();
  v5 = sub_24075A5C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_240579000, v4, v5, "SharingClientBase deallocated", v6, 2u);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  sub_24064C6AC(1);
  v7 = *(v1 + 17);

  v8 = *(v1 + 20);
  sub_24058CA60(*(v1 + 19));
  v9 = *(v1 + 22);

  v10 = *(*v1 + 160);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  type metadata accessor for MessageSessionTransport();
  v13 = type metadata accessor for BluetoothBaseState();
  (*(*(v13 - 8) + 8))(&v1[v10], v13);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t SharingClientBase.__deallocating_deinit()
{
  SharingClientBase.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24064A268()
{
  v1[66] = v0;
  v2 = *v0;
  v1[67] = *(*v0 + 80);
  v1[68] = *(v2 + 88);
  type metadata accessor for MessageSessionTransport();
  v3 = type metadata accessor for BluetoothBaseState();
  v1[69] = v3;
  v4 = *(v3 - 8);
  v1[70] = v4;
  v5 = *(v4 + 64) + 15;
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24064A374, v0, 0);
}

uint64_t sub_24064A374()
{
  v1 = v0[72];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[66];
  sub_240649E38(v1);
  LODWORD(v4) = swift_getEnumCaseMultiPayload();
  v5 = *(v2 + 8);
  v0[73] = v5;
  v0[74] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (v4 == 4)
  {
    v6 = v0[71];
    v7 = v0[69];
    v8 = v0[66];
    swift_storeEnumTagMultiPayload();
    sub_24064F4EC(v6);
    v5(v6, v7);
    v9 = v8[14];
    [v9 setDispatchQueue_];
    v10 = *MEMORY[0x277D54D50];
    [v9 setLabel_];
    if (v8[17])
    {
      v11 = *(v0[66] + 128);
      v12 = sub_24075A084();
    }

    else
    {
      v12 = 0;
    }

    v20 = v0[68];
    v21 = v0[67];
    v22 = v0[66];
    [v9 setFixedPIN_];

    [v9 setPeerDevice_];
    [v9 setServiceIdentifier_];
    [v9 setSessionFlags_];
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v21;
    v24[3] = v20;
    v24[4] = v23;
    v0[22] = sub_24064F674;
    v0[23] = v24;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_24064B298;
    v0[21] = &block_descriptor_78;
    v25 = _Block_copy(v0 + 18);
    v26 = v0[23];

    [v9 setPromptForPINHandler_];
    _Block_release(v25);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v21;
    v28[3] = v20;
    v28[4] = v27;
    v0[28] = sub_24064F680;
    v0[29] = v28;
    v0[24] = MEMORY[0x277D85DD0];
    v0[25] = 1107296256;
    v0[26] = sub_240646B08;
    v0[27] = &block_descriptor_85;
    v29 = _Block_copy(v0 + 24);
    v30 = v0[29];

    [v9 setShowPINHandlerEx_];
    _Block_release(v29);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    v32[2] = v21;
    v32[3] = v20;
    v32[4] = v31;
    v0[34] = sub_24064F6BC;
    v0[35] = v32;
    v0[30] = MEMORY[0x277D85DD0];
    v0[31] = 1107296256;
    v0[32] = sub_240644810;
    v0[33] = &block_descriptor_92;
    v33 = _Block_copy(v0 + 30);
    v34 = v0[35];

    [v9 setHidePINHandler_];
    _Block_release(v33);
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    v36[2] = v21;
    v36[3] = v20;
    v36[4] = v35;
    v0[40] = sub_24064F714;
    v0[41] = v36;
    v0[36] = MEMORY[0x277D85DD0];
    v0[37] = 1107296256;
    v0[38] = sub_240644810;
    v0[39] = &block_descriptor_99;
    v37 = _Block_copy(aBlock);
    v38 = v0[41];

    [v9 setSessionStartedHandler_];
    _Block_release(v37);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    v40[2] = v21;
    v40[3] = v20;
    v40[4] = v39;
    v0[46] = sub_24064F76C;
    v0[47] = v40;
    v0[42] = MEMORY[0x277D85DD0];
    v0[43] = 1107296256;
    v0[44] = sub_240644810;
    v0[45] = &block_descriptor_106;
    v41 = _Block_copy(v0 + 42);
    v42 = v0[47];

    [v9 setInvalidationHandler_];
    _Block_release(v41);
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v44[2] = v21;
    v44[3] = v20;
    v44[4] = v43;
    v0[52] = sub_24064F7C4;
    v0[53] = v44;
    v0[48] = MEMORY[0x277D85DD0];
    v0[49] = 1107296256;
    v0[50] = sub_240644810;
    v0[51] = &block_descriptor_113;
    v45 = _Block_copy(v0 + 48);
    v46 = v0[53];

    [v9 setInterruptionHandler_];
    _Block_release(v45);
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v48[2] = v21;
    v48[3] = v20;
    v48[4] = v47;
    v0[58] = sub_24064F81C;
    v0[59] = v48;
    v0[54] = MEMORY[0x277D85DD0];
    v0[55] = 1107296256;
    v0[56] = sub_240647520;
    v0[57] = &block_descriptor_120_0;
    v49 = _Block_copy(v0 + 54);
    v50 = v0[59];

    [v9 setErrorHandler_];
    _Block_release(v49);
    v0[64] = sub_240651508;
    v0[65] = 0;
    v0[60] = MEMORY[0x277D85DD0];
    v0[61] = 1107296256;
    v0[62] = sub_240647520;
    v0[63] = &block_descriptor_123;
    v51 = _Block_copy(v0 + 60);
    [v9 setPairSetupCompletionHandler_];
    _Block_release(v51);
    v0[2] = v0;
    v0[3] = sub_24064AC50;
    v52 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB8, &qword_24076DC60);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240647D90;
    v0[13] = &block_descriptor_126;
    v0[14] = v52;
    [v9 activateWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v13 = v0[68];
    v14 = v0[67];
    type metadata accessor for SharingClientBase.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v16 = v0[72];
    v17 = v0[71];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_24064AC50()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 600) = v3;
  v4 = *(v1 + 528);
  if (v3)
  {
    v5 = sub_24064AF7C;
  }

  else
  {
    v5 = sub_24064AD70;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24064AD70()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[71];
  v4 = v0[69];
  v5 = v0[66];
  swift_storeEnumTagMultiPayload();
  sub_24064F4EC(v3);
  v2(v3, v4);
  v6 = swift_task_alloc();
  v0[76] = v6;
  *v6 = v0;
  v6[1] = sub_24064AE48;
  v7 = v0[66];

  return sub_24064BEC4();
}

uint64_t sub_24064AE48()
{
  v1 = *v0;
  v2 = *(*v0 + 608);
  v7 = *v0;

  v3 = *(v1 + 576);
  v4 = *(v1 + 568);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_24064AF7C()
{
  v1 = v0[75];
  swift_willThrow();
  v2 = v0[75];
  v3 = v0[72];
  v4 = v0[71];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24064AFFC(int a1, int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v8 = sub_240759AE4();
  __swift_project_value_buffer(v8, qword_27E4B9F78);
  v9 = sub_240759AC4();
  v10 = sub_24075A5D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = a1;
    *(v11 + 8) = 1024;
    *(v11 + 10) = a2;
    _os_log_impl(&dword_240579000, v9, v10, "promptForPINHandler called with flags: %u and throttleSeconds: %d", v11, 0xEu);
    MEMORY[0x245CC76B0](v11, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_24075A3D4();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = a1;
    *(v15 + 44) = a2;
    sub_240602F08(0, 0, v7, &unk_24076E240, v15);
  }

  return result;
}

uint64_t sub_24064B20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *(v6 + 24) = a5;
  *(v6 + 28) = a6;
  *(v6 + 16) = a4;
  return MEMORY[0x2822009F8](sub_24064B230, a4, 0);
}

uint64_t sub_24064B230()
{
  sub_24064CB38(*(v0 + 24), *(v0 + 28), *(*(v0 + 16) + 112));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24064B298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_24064B2F8(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v15 = sub_240759AE4();
  __swift_project_value_buffer(v15, qword_27E4B9F78);

  v16 = sub_240759AC4();
  v17 = sub_24075A5D4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 67109378;
    *(v18 + 4) = a1;
    *(v18 + 8) = 2080;
    *(v18 + 10) = sub_2405BBA7C(v24, a3, &v25);
    _os_log_impl(&dword_240579000, v16, v17, "showPINHandlerEx called with flags: %u and password: %s", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CC76B0](v19, -1, -1);
    MEMORY[0x245CC76B0](v18, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v22 = sub_24075A3D4();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v21;
    *(v23 + 40) = a1;
    *(v23 + 48) = v24;
    *(v23 + 56) = a3;

    sub_240602F08(0, 0, v14, a8, v23);
  }

  return result;
}

uint64_t sub_24064B568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  return MEMORY[0x2822009F8](sub_24064B58C, a4, 0);
}

uint64_t sub_24064B58C()
{
  v1 = v0[2];
  sub_2406506DC(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24064B60C()
{
  sub_24065080C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24064B688()
{
  sub_24064CA20(*(*(v0 + 16) + 112));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24064B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), const char *a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  __swift_project_value_buffer(v14, qword_27E4B9F78);
  v15 = sub_240759AC4();
  v16 = a4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_240579000, v15, v16, a5, v17, 2u);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = sub_24075A3D4();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    sub_240602F08(0, 0, v13, a7, v21);
  }

  return result;
}

uint64_t sub_24064B8F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 24) = *a4;
  return MEMORY[0x2822009F8](sub_24064B93C, 0, 0);
}

uint64_t sub_24064B93C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for SharingClientBase.Failure();
  swift_getWitnessTable();
  v0[4] = swift_allocError();
  *v5 = 4;

  return MEMORY[0x2822009F8](sub_24064B9EC, v2, 0);
}

uint64_t sub_24064B9EC()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_24064D610(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24064BA5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v12 = sub_240759AE4();
  __swift_project_value_buffer(v12, qword_27E4B9F78);
  v13 = a1;
  v14 = sub_240759AC4();
  v15 = sub_24075A5E4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    if (a1)
    {
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v16 + 4) = v19;
    *v17 = v20;
    _os_log_impl(&dword_240579000, v14, v15, "errorHandler called: %@", v16, 0xCu);
    sub_2405B8A50(v17, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v17, -1, -1);
    MEMORY[0x245CC76B0](v16, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v22 = result;
      v23 = sub_24075A3D4();
      (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v22;
      v24[5] = a1;
      v25 = a1;
      sub_240602F08(0, 0, v11, a6, v24);
    }
  }

  return result;
}

uint64_t sub_24064BCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24064BCF4, a4, 0);
}

uint64_t sub_24064BCF4()
{
  v1 = *(v0 + 16);
  sub_24064D610(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void sub_24064BD54(void *a1)
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_27E4B9F78);
  v3 = a1;
  oslog = sub_240759AC4();
  v4 = sub_24075A5D4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a1)
    {
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v5 + 4) = v8;
    *v6 = v9;
    _os_log_impl(&dword_240579000, oslog, v4, "pairSetupCompletionHandler called with error: %@", v5, 0xCu);
    sub_2405B8A50(v6, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v6, -1, -1);
    MEMORY[0x245CC76B0](v5, -1, -1);
  }
}

uint64_t sub_24064BEE4()
{
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_240759AE4();
  v0[27] = __swift_project_value_buffer(v2, qword_27E4B9F78);

  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + 112);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&dword_240579000, v3, v4, "Attempting to pair verify base: %@", v6, 0xCu);
    sub_2405B8A50(v7, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v7, -1, -1);
    MEMORY[0x245CC76B0](v6, -1, -1);
  }

  v10 = v0[26];

  v11 = *(v10 + 112);
  v0[28] = v11;
  v0[2] = v0;
  v0[3] = sub_24064C12C;
  v12 = swift_continuation_init();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9FB8, &qword_24076DC60);
  v0[29] = v13;
  v0[25] = v13;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_240647D90;
  v0[21] = &block_descriptor_194;
  v0[22] = v12;
  [v11 pairVerifyWithFlags:8 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24064C12C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 208);
  if (v3)
  {
    v5 = sub_24064C2B4;
  }

  else
  {
    v5 = sub_24064C24C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24064C24C()
{
  v1 = v0[26];
  sub_24064CF0C(v0[28]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24064C2B4()
{
  v1 = v0[30];
  v2 = v0[27];
  swift_willThrow();
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
    _os_log_impl(&dword_240579000, v4, v5, "Failed to pair verify with error: %@, attempting pair setup", v7, 0xCu);
    sub_2405B8A50(v8, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  v11 = v0[28];
  v12 = v0[29];

  v0[10] = v0;
  v0[11] = sub_24064C4A0;
  v13 = swift_continuation_init();
  v0[25] = v12;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_240647D90;
  v0[21] = &block_descriptor_197;
  v0[22] = v13;
  [v11 pairSetupWithFlags:8 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_24064C4A0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 248) = v3;
  v4 = *(v1 + 208);
  if (v3)
  {
    v5 = sub_24064C630;
  }

  else
  {
    v5 = sub_24064C5C0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24064C5C0()
{
  v1 = *(v0 + 208);
  sub_24064CF0C(*(v0 + 224));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24064C630()
{
  v1 = v0[30];
  v2 = v0[31];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[31];

  return v3();
}

void sub_24064C6AC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v8 = sub_240759AE4();
  __swift_project_value_buffer(v8, qword_27E4B9F78);

  v9 = sub_240759AC4();
  v10 = sub_24075A5C4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    v13 = *(v1 + 112);
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    v14 = v13;
    _os_log_impl(&dword_240579000, v9, v10, "Invalidating %@ for deinit: %{BOOL}d", v11, 0x12u);
    sub_2405B8A50(v12, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v12, -1, -1);
    MEMORY[0x245CC76B0](v11, -1, -1);
  }

  [*(v1 + 112) invalidate];
  if (a1)
  {
    v21 = sub_240759AC4();
    v15 = sub_24075A5D4();
    if (os_log_type_enabled(v21, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_240579000, v21, v15, "Not changing to invalidated state, we are deinitialized", v16, 2u);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    v17 = v21;
  }

  else
  {
    v18 = sub_24075A3D4();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v2;

    sub_240602F08(0, 0, v7, &unk_24076E250, v19);
  }
}

uint64_t sub_24064C9C0()
{
  v1 = *(v0 + 16);
  sub_24064D50C();
  v2 = *(v0 + 8);

  return v2();
}

void sub_24064CA20(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for MessageSessionTransport();
  v5 = type metadata accessor for BluetoothBaseState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v10 - v8;
  swift_storeEnumTagMultiPayload();
  sub_24064F4EC(v9);
  (*(v6 + 8))(v9, v5);
  sub_24064D734(a1);
}

uint64_t sub_24064CB38(uint64_t a1, int a2, void *a3)
{
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  type metadata accessor for MessageSessionTransport();
  v9 = type metadata accessor for BluetoothBaseState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *v13 = (a1 << 32) | 1;
  *(v13 + 8) = __PAIR128__(a2 >> 31, a2) * 0xDE0B6B3A7640000;
  *(v13 + 3) = sub_24065017C;
  *(v13 + 4) = v14;
  v13[40] = 1;
  swift_storeEnumTagMultiPayload();
  v15 = a3;
  sub_24064F4EC(v13);
  return (*(v10 + 8))(v13, v9);
}

void sub_24064CCBC(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    if (qword_27E4B5F30 != -1)
    {
      swift_once();
    }

    v5 = sub_240759AE4();
    __swift_project_value_buffer(v5, qword_27E4B9F78);
    oslog = sub_240759AC4();
    v6 = sub_24075A5E4();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a1;
      _os_log_impl(&dword_240579000, oslog, v6, "Unable to change to new pin type because SharingClient only supports 4 digit codes: %d", v7, 8u);
      MEMORY[0x245CC76B0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27E4B5F30 != -1)
    {
      swift_once();
    }

    v10 = sub_240759AE4();
    __swift_project_value_buffer(v10, qword_27E4B9F78);

    v11 = sub_240759AC4();
    v12 = sub_24075A5C4();
    sub_240650188(a1, a2, 0);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2405BBA7C(a1, a2, &v16);
      _os_log_impl(&dword_240579000, v11, v12, "Trying pair setup with pin: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x245CC76B0](v14, -1, -1);
      MEMORY[0x245CC76B0](v13, -1, -1);
    }

    oslog = sub_24075A084();
    [a4 pairSetupTryPIN_];
  }
}

uint64_t sub_24064CF0C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for MessageSessionTransport();
  v5 = type metadata accessor for BluetoothBaseState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v13 = v3;
  v14 = v4;
  v15 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
  sub_24064465C(sub_240650158, v10, v9);
  swift_storeEnumTagMultiPayload();
  sub_24064F4EC(v9);
  return (*(v6 + 8))(v9, v5);
}

void sub_24064D080(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v34 = a2;
  v33 = a3;
  v4 = type metadata accessor for MessageSessionTransport();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = sub_24075A714();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = [a1 messageSessionTemplate];
  if (!v16)
  {
    type metadata accessor for SharingClientBase.Failure();
    swift_getWitnessTable();
    v18 = swift_allocError();
    *v20 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v17 = v16;
  MessageSessionTransport.init(templateSession:identifier:)(v17, 0xD000000000000040, 0x8000000240787A00, v15);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    (*(v12 + 8))(v15, v11);
    type metadata accessor for SharingClientBase.Failure();
    swift_getWitnessTable();
    v18 = swift_allocError();
    *v19 = 2;
    swift_willThrow();

LABEL_5:
    *v34 = v18;
    return;
  }

  v34 = v17;
  v21 = v33;
  (*(v5 + 32))(v33, v15, v4);
  if (qword_27E4B5F30 != -1)
  {
    swift_once();
  }

  v22 = sub_240759AE4();
  __swift_project_value_buffer(v22, qword_27E4B9F78);
  v23 = *(v5 + 16);
  v23(v10, v21, v4);
  v24 = sub_240759AC4();
  v25 = sub_24075A5C4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v26 = 136315138;
    v23(v32, v10, v4);
    v27 = sub_24075A0E4();
    v29 = v28;
    (*(v5 + 8))(v10, v4);
    v30 = sub_2405BBA7C(v27, v29, &v35);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_240579000, v24, v25, "Created transport for message session: %s", v26, 0xCu);
    v31 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x245CC76B0](v31, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }
}