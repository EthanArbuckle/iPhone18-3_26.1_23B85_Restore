void sub_2408089C8(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_2408D3490();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a2[8];
  v15 = [v14 accountForService_];
  if (v15)
  {
    v16 = v15;
    v17 = [v14 altDSIDForAccount:v15 service:v13];
    if (v17)
    {
      v18 = v17;
      v19 = sub_2408D4D30();
      v67 = v20;

      if (qword_27E506928 != -1)
      {
        swift_once();
      }

      v21 = sub_2408D4B20();
      __swift_project_value_buffer(v21, qword_27E506FF0);
      v22 = v13;
      v23 = sub_2408D4B10();
      v24 = sub_2408D4F20();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v65 = a3;
        v26 = v25;
        v66 = swift_slowAlloc();
        v69 = v66;
        *v26 = 136315138;
        v68 = v22;
        type metadata accessor for AIDAServiceType(0);
        v27 = v22;
        v28 = sub_2408D4D40();
        v30 = sub_2408CC504(v28, v29, &v69);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_2407CF000, v23, v24, "Discovered eligible account for: %s", v26, 0xCu);
        v31 = v66;
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        MEMORY[0x245CC9F60](v31, -1, -1);
        v32 = v26;
        a3 = v65;
        MEMORY[0x245CC9F60](v32, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2408D71B0;
      *(inited + 32) = v22;
      v34 = v22;
      v35 = sub_2408709E4(inited);
      swift_setDeallocating();
      sub_24080F6B4(inited + 32, type metadata accessor for AIDAServiceType);

      v36 = v67;
      *a3 = v19;
      a3[1] = v36;
      a3[2] = v35;
      return;
    }
  }

  v67 = v12;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v37 = sub_2408D4B20();
  __swift_project_value_buffer(v37, qword_27E506FF0);
  v38 = v13;
  v39 = sub_2408D4B10();
  v40 = sub_2408D4F20();

  v41 = os_log_type_enabled(v39, v40);
  v66 = v9;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v65 = a3;
    v43 = v42;
    v64 = swift_slowAlloc();
    v69 = v64;
    *v43 = 136315138;
    v68 = v38;
    type metadata accessor for AIDAServiceType(0);
    v44 = v38;
    v45 = sub_2408D4D40();
    v47 = sub_2408CC504(v45, v46, &v69);

    *(v43 + 4) = v47;
    v4 = v3;
    _os_log_impl(&dword_2407CF000, v39, v40, "Did not find the account for service: %s", v43, 0xCu);
    v48 = v64;
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x245CC9F60](v48, -1, -1);
    v49 = v43;
    a3 = v65;
    MEMORY[0x245CC9F60](v49, -1, -1);
  }

  v50 = *MEMORY[0x277CED1B0];
  v51 = sub_2408D4D30();
  v53 = v52;
  v54 = sub_2408D4D30();
  v56 = v67;
  if (v51 == v54 && v53 == v55)
  {
  }

  else
  {
    v57 = sub_2408D5240();

    if ((v57 & 1) == 0)
    {
LABEL_18:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return;
    }
  }

  v58 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, a2[12]);
  v59 = v66;
  (v66[13])(v56, *MEMORY[0x277CED218], v8);
  v60 = sub_2408D4770();
  (v59[1])(v56, v8);
  if (v60)
  {
    goto LABEL_18;
  }

  v61 = sub_2408094C8();
  if (!v4)
  {
    *a3 = v61;
    a3[1] = v62;
    a3[2] = v63;
  }
}

uint64_t sub_240808F44@<X0>(uint64_t a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_2408D3490();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = a2[7];
  v14 = sub_2408D4D00();
  v15 = [v13 authKitAccountWithAltDSID_];

  if (v15)
  {
    sub_2408D5030();

    v16 = sub_2408D3970();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  }

  else
  {
    v16 = sub_2408D3970();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  sub_2408D3970();
  v31 = *(*(v16 - 8) + 48);
  if (!v31(v12, 1, v16))
  {
    v17 = sub_2408D3950();
    *v18 = sub_24086E620(a1, *v18);
    v17(v34, 0);
  }

  v19 = *MEMORY[0x277CED1B0];
  if (sub_2408764B4(*MEMORY[0x277CED1B0], a1))
  {
    v20 = a2[13];
    __swift_project_boxed_opaque_existential_1(a2 + 9, a2[12]);
    v21 = v32;
    (*(v32 + 104))(v8, *MEMORY[0x277CED218], v5);
    v22 = sub_2408D4770();
    (*(v21 + 8))(v8, v5);
    if ((v22 & 1) == 0)
    {
      if (qword_27E506928 != -1)
      {
        swift_once();
      }

      v23 = sub_2408D4B20();
      __swift_project_value_buffer(v23, qword_27E506FF0);
      v24 = sub_2408D4B10();
      v25 = sub_2408D4F10();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2407CF000, v24, v25, "Explicitly adding GameCenter to services for IdMS account, only as a temporary workaround", v26, 2u);
        MEMORY[0x245CC9F60](v26, -1, -1);
      }

      if (!v31(v12, 1, v16))
      {
        v27 = v19;
        v28 = sub_2408D3950();
        sub_24086A4D4(&v35, v27);

        v28(v34, 0);
      }
    }
  }

  return sub_24080F060(v12, v33, &unk_27E506A20, &unk_2408D67F0);
}

uint64_t sub_2408094C8()
{
  v2 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v3 = sub_2408D4B20();
  __swift_project_value_buffer(v3, qword_27E506FF0);
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F20();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2407CF000, v4, v5, "Checking for GameCenter account", v6, 2u);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v7 = [*(v2 + 56) primaryAuthKitAccount];
  if (!v7 || (v8 = v7, v9 = [v7 aida_alternateDSID], v8, !v9))
  {
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "No primary AuthKit account found on device. Cannot get altDSID to search for GameCenter account.";
LABEL_19:
      _os_log_impl(&dword_2407CF000, v15, v16, v18, v17, 2u);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

LABEL_20:

    return 0;
  }

  v10 = sub_2408D4D30();

  v11 = [objc_opt_self() defaultStore];
  if (!v11)
  {
LABEL_17:

    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Did not find the account for GameCenter";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v12 = v11;
  v13 = *MEMORY[0x277CED1B0];
  v14 = sub_2408D4F60();
  if (v1)
  {

    return v10;
  }

  if (!v14)
  {

    goto LABEL_17;
  }

  v19 = v14;
  v20 = sub_2408D4B10();
  v21 = sub_2408D4F20();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2407CF000, v20, v21, "Discovered eligible account for GameCenter", v22, 2u);
    MEMORY[0x245CC9F60](v22, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2408D71B0;
  *(inited + 32) = v13;
  v24 = v13;
  sub_2408709E4(inited);
  swift_setDeallocating();
  sub_24080F6B4(inited + 32, type metadata accessor for AIDAServiceType);

  return v10;
}

uint64_t sub_240809854(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_240809878, 0, 0);
}

uint64_t sub_240809878()
{
  v1 = v0[3];
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_2408D3910();
  v0[5] = v3;
  v4 = v3;
  v5 = v0[4];

  if ([*(v5 + 56) securityLevelForAccount_] == 2)
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v6 = sub_2408D4B20();
    __swift_project_value_buffer(v6, qword_27E506FF0);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "Account is SA account. Skipping preflight repair.", v9, 2u);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    v10 = v0[1];

    return v10(1);
  }

  else
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v12 = sub_2408D4B20();
    v0[6] = __swift_project_value_buffer(v12, qword_27E506FF0);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F20();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2407CF000, v13, v14, "Performing Preflight Repair ...", v15, 2u);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    v16 = v0[3];

    v17 = swift_task_alloc();
    v0[7] = v17;
    *(v17 + 16) = v16;
    v18 = *(MEMORY[0x277CED860] + 4);
    v22 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v19 = swift_task_alloc();
    v0[8] = v19;
    *v19 = v0;
    v19[1] = sub_240809BA4;
    v20 = v0[2];
    v21 = MEMORY[0x277D839B0];

    return v22(v0 + 10, sub_24080F050, v17, &unk_2408D75B0, 0, v21);
  }
}

uint64_t sub_240809BA4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_240809DB8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_240809CC0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240809CC0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "User completed repair with success: %{BOOL}d", v7, 8u);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_240809DB8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_240809E2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D3970();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2408D45F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3);
  sub_2408D4540();
  (*(v9 + 104))(v12, *MEMORY[0x277CEDC68], v8);
  return sub_2408D4610();
}

uint64_t sub_240809FB8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D45F0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2408D4560();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24080A0D4, 0, 0);
}

uint64_t sub_24080A0D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_2408D4600();
  if ((*(v2 + 88))(v1, v4) == *MEMORY[0x277CEDC78])
  {
    v6 = v0[8];
    v5 = v0[9];
    v8 = v0[6];
    v7 = v0[7];
    (*(v0[5] + 96))(v8, v0[4]);
    (*(v6 + 32))(v5, v8, v7);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E506FF0);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F10();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "Finished preflight repair", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];
    v16 = v0[2];

    v17 = sub_2408D4550();
    (*(v14 + 8))(v13, v15);
    *v16 = v17 & 1;
    v18 = *MEMORY[0x277CEDCB0];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v19 - 8) + 104))(v16, v18, v19);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v20 = sub_2408D4B20();
    __swift_project_value_buffer(v20, qword_27E506FF0);
    v21 = sub_2408D4B10();
    v22 = sub_2408D4F20();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2407CF000, v21, v22, "Waiting on preflight to finish", v23, 2u);
      MEMORY[0x245CC9F60](v23, -1, -1);
    }

    v24 = v0[2];

    v25 = *MEMORY[0x277CEDCA8];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v26 - 8) + 104))(v24, v25, v26);
  }

  v27 = v0[9];
  v28 = v0[6];

  v29 = v0[1];

  return v29();
}

void sub_24080A424()
{
  if (*(v0 + 136))
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v1 = sub_2408D4B20();
    __swift_project_value_buffer(v1, qword_27E506FF0);
    oslog = sub_2408D4B10();
    v2 = sub_2408D4F20();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2407CF000, oslog, v2, "We already have profile and process assertions, skipping assertion acquisition.", v3, 2u);
      MEMORY[0x245CC9F60](v3, -1, -1);
    }
  }

  else
  {
    v4 = v0;
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v5 = sub_2408D4B20();
    __swift_project_value_buffer(v5, qword_27E506FF0);
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F20();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "Acquiring user profile and process assertions", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v9 = sub_2408D4B00();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_2408D4AE0();
    v13 = *(v4 + 136);
    *(v4 + 136) = v12;

    oslog = sub_2408D4B10();
    v14 = sub_2408D4F10();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v21 = *(v4 + 136);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5070F0, &qword_2408D75A8);
      v17 = sub_2408D4D40();
      v19 = sub_2408CC504(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2407CF000, oslog, v14, "Acquired process transaction: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x245CC9F60](v16, -1, -1);
      MEMORY[0x245CC9F60](v15, -1, -1);

      return;
    }
  }
}

uint64_t sub_24080A730()
{
  v1 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E506FF0);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v14 = *(v1 + 136);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5070F0, &qword_2408D75A8);
    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v3, v4, "Relinquishing process transaction: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  if (*(v1 + 136))
  {
    v10 = *(v1 + 136);

    MEMORY[0x245CC8F30](v11);

    v12 = *(v1 + 136);
  }

  *(v1 + 136) = 0;
}

uint64_t sub_24080A8E0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_24080A904, 0, 0);
}

uint64_t sub_24080A904()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2 = *(MEMORY[0x277CEDE70] + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = type metadata accessor for AuthenticationReport(0);
  *v3 = v0;
  v3[1] = sub_24080A9DC;

  return MEMORY[0x2821400E8](v0 + 16, &unk_2408D7500, v1, v4);
}

uint64_t sub_24080A9DC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24080AAF4, 0, 0);
}

uint64_t sub_24080AAF4()
{
  if (*(v0 + 24))
  {
    *(v0 + 32) = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);

    return v3(v4);
  }
}

uint64_t sub_24080AE44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2408D3BA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v10 = sub_2408D4B20();
  __swift_project_value_buffer(v10, qword_27E506FF0);
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F20();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2407CF000, v11, v12, "Setting sign in model state to .showTerms", v13, 2u);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  if (*(a2 + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms))
  {
    v14 = *(a2 + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5070E0, &qword_2408D75A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2408D73B0;
    v16 = *MEMORY[0x277CEC720];
    *(inited + 32) = *MEMORY[0x277CEC720];
    v17 = *MEMORY[0x277CEC728];
    v18 = *MEMORY[0x277CEC730];
    *(inited + 40) = *MEMORY[0x277CEC728];
    *(inited + 48) = v18;
    v19 = *MEMORY[0x277CEC738];
    v28 = v6;
    v20 = *MEMORY[0x277CEC740];
    *(inited + 56) = v19;
    *(inited + 64) = v20;
    v21 = v16;
    v22 = v17;
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v6 = v28;
    sub_2408737A0(inited);
    swift_setDeallocating();
    type metadata accessor for AATermsEntry(0);
    swift_arrayDestroy();
  }

  v26 = a3;
  sub_2408D41A0();
  (*(v6 + 104))(v9, *MEMORY[0x277CED4F8], v5);
  return sub_2408D3BC0();
}

uint64_t sub_24080B110(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D3BA0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2408D41C0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24080B22C, 0, 0);
}

uint64_t sub_24080B22C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_2408D3BB0();
  if ((*(v2 + 88))(v1, v4) == *MEMORY[0x277CED4C8])
  {
    v6 = v0[8];
    v5 = v0[9];
    v8 = v0[6];
    v7 = v0[7];
    (*(v0[5] + 96))(v8, v0[4]);
    (*(v6 + 32))(v5, v8, v7);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E506FF0);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F10();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "Finished showing terms", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];
    v16 = v0[2];

    v17 = sub_2408D41B0();
    (*(v14 + 8))(v13, v15);
    *v16 = v17 & 1;
    v18 = *MEMORY[0x277CEDCB0];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v19 - 8) + 104))(v16, v18, v19);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v20 = sub_2408D4B20();
    __swift_project_value_buffer(v20, qword_27E506FF0);
    v21 = sub_2408D4B10();
    v22 = sub_2408D4F20();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2407CF000, v21, v22, "Waiting on terms to finish", v23, 2u);
      MEMORY[0x245CC9F60](v23, -1, -1);
    }

    v24 = v0[2];

    v25 = *MEMORY[0x277CEDCA8];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D60, &qword_2408D6D08);
    (*(*(v26 - 8) + 104))(v24, v25, v26);
  }

  v27 = v0[9];
  v28 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t sub_24080B70C(void *a1, void *a2, void *aBlock, void *a4)
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
  v10[1] = sub_24080B7F4;

  return sub_24080E450(v9);
}

uint64_t sub_24080B7F4(char a1, void *a2)
{
  v4 = v2;
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 32);
  v10 = *(*v3 + 24);
  v11 = *(*v3 + 16);
  v12 = *v3;

  v13 = (v8 + 16);
  v14 = *(v12 + 40);
  if (v4)
  {
    v15 = sub_2408D33E0();

    (*v13)(v14, 0, 0, v15);
    _Block_release(v14);
  }

  else
  {
    (*v13)(v14, a1 & 1, a2, 0);
    _Block_release(v14);
  }

  v16 = *(v12 + 8);

  return v16();
}

uint64_t sub_24080BB60(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 1);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_24080BBDC(uint64_t a1, void *a2)
{
  v3 = sub_2408D3BA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2407EEDBC(0, &qword_27E5070C8, 0x277CB8F30);
  v8 = a2;
  sub_2408D5020();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5070D0, &qword_2408D7540);
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  (*(v4 + 104))(v7, *MEMORY[0x277CED4B8], v3);
  return sub_2408D3BC0();
}

uint64_t sub_24080BEC8(void *a1, void *a2, void *aBlock, void *a4)
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
  v10[1] = sub_24080BFB0;

  return (sub_24080EABC)(v9);
}

uint64_t sub_24080BFB0(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v8 = *(v10 + 8);

  return v8();
}

id sub_24080C160()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSignInContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24080C214(uint64_t a1, uint64_t a2)
{
  result = sub_24080D61C(&qword_27E5070B8, a2, type metadata accessor for LocalSetupService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24080C26C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_2407FF060(a1, v5, v4);
}

uint64_t sub_24080C318(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24086F2F4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24080C384(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24080C384(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2408D5210();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AIDAServiceType(0);
        v5 = sub_2408D4DF0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24080C590(v7, v8, a1, v4);
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
    return sub_24080C480(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24080C480(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = sub_2408D4D30();
      v14 = v13;
      if (v12 == sub_2408D4D30() && v14 == v15)
      {

LABEL_5:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v17 = sub_2408D5240();

      if ((v17 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v18;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24080C590(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v110 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v6 = *v110;
    if (!*v110)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v100 = v5;
      v101 = *(v8 + 2);
      if (v101 >= 2)
      {
        while (*a3)
        {
          v5 = v101 - 1;
          v102 = *&v8[16 * v101];
          v103 = *&v8[16 * v101 + 24];
          sub_24080CC64((*a3 + 8 * v102), (*a3 + 8 * *&v8[16 * v101 + 16]), (*a3 + 8 * v103), v6);
          if (v100)
          {
          }

          if (v103 < v102)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_24086E528(v8);
          }

          if (v101 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v104 = &v8[16 * v101];
          *v104 = v102;
          *(v104 + 1) = v103;
          result = sub_24086E49C(v101 - 1);
          v101 = *(v8 + 2);
          if (v101 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_24086E528(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      v11 = *(*a3 + 8 * v7);
      v12 = *(*a3 + 8 * v9);
      v13 = sub_2408D4D30();
      v15 = v14;
      v17 = v13 == sub_2408D4D30() && v15 == v16;
      v106 = v5;
      if (v17)
      {
        v113 = 0;
      }

      else
      {
        v113 = sub_2408D5240();
      }

      v108 = v9;
      v18 = (v10 + 8 * v9 + 16);
      v111 = 8 * v9;
      v19 = 8 * v9 + 8;
      do
      {
        v5 = v7;
        v22 = v19;
        if (++v7 >= v6)
        {
          break;
        }

        v23 = v8;
        v24 = v6;
        v25 = v7;
        v27 = *(v18 - 1);
        v26 = *v18;
        v28 = sub_2408D4D30();
        v30 = v29;
        v32 = v28 == sub_2408D4D30() && v30 == v31;
        v20 = v32 ? 0 : sub_2408D5240();

        v21 = v113 ^ v20;
        ++v18;
        v19 = v22 + 8;
        v7 = v25;
        v6 = v24;
        v8 = v23;
      }

      while ((v21 & 1) == 0);
      if (v113)
      {
        v33 = v108;
        if (v7 < v108)
        {
          goto LABEL_134;
        }

        if (v108 >= v7)
        {
          v5 = v106;
          v9 = v108;
          goto LABEL_31;
        }

        v34 = v111;
        do
        {
          if (v33 != v5)
          {
            v36 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v37 = *(v36 + v34);
            *(v36 + v34) = *(v36 + v22);
            *(v36 + v22) = v37;
          }

          ++v33;
          v22 -= 8;
          v34 += 8;
        }

        while (v33 < v5--);
      }

      v5 = v106;
      v9 = v108;
    }

LABEL_31:
    v38 = a3[1];
    if (v7 < v38)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_240869E00(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v55 = *(v8 + 2);
    v54 = *(v8 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_240869E00((v54 > 1), v55 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v56;
    v57 = &v8[16 * v55];
    *(v57 + 4) = v9;
    *(v57 + 5) = v7;
    v58 = *v110;
    if (!*v110)
    {
      goto LABEL_142;
    }

    if (v55)
    {
      while (1)
      {
        v59 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v60 = *(v8 + 4);
          v61 = *(v8 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_73:
          if (v63)
          {
            goto LABEL_121;
          }

          v76 = &v8[16 * v56];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_124;
          }

          v82 = &v8[16 * v59 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_128;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v56 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v86 = &v8[16 * v56];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_87:
        if (v81)
        {
          goto LABEL_123;
        }

        v89 = &v8[16 * v59];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_126;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_94:
        v97 = v59 - 1;
        if (v59 - 1 >= v56)
        {
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v98 = *&v8[16 * v97 + 32];
        v6 = *&v8[16 * v59 + 40];
        sub_24080CC64((*a3 + 8 * v98), (*a3 + 8 * *&v8[16 * v59 + 32]), (*a3 + 8 * v6), v58);
        if (v5)
        {
        }

        if (v6 < v98)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24086E528(v8);
        }

        if (v97 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v99 = &v8[16 * v97];
        *(v99 + 4) = v98;
        *(v99 + 5) = v6;
        result = sub_24086E49C(v59);
        v56 = *(v8 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v8[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_119;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_120;
      }

      v71 = &v8[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_122;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_125;
      }

      if (v75 >= v67)
      {
        v93 = &v8[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_129;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v39 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v39 >= v38)
  {
    v39 = a3[1];
  }

  if (v39 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v39)
  {
    goto LABEL_53;
  }

  v107 = v5;
  v109 = v9;
  v40 = *a3;
  v6 = *a3 + 8 * v7 - 8;
  v41 = v9 - v7;
  v112 = v39;
LABEL_42:
  v114 = v7;
  v42 = *(v40 + 8 * v7);
  v43 = v41;
  v44 = v6;
  while (1)
  {
    v45 = *v44;
    v46 = sub_2408D4D30();
    v48 = v47;
    if (v46 == sub_2408D4D30() && v48 == v49)
    {

LABEL_41:
      v7 = v114 + 1;
      v6 += 8;
      --v41;
      if (v114 + 1 == v112)
      {
        v7 = v112;
        v5 = v107;
        v9 = v109;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v51 = sub_2408D5240();

    if ((v51 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v40)
    {
      break;
    }

    v52 = *v44;
    *v44 = v44[1];
    v44[1] = v52;
    --v44;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_24080CC64(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      v17 = *v4;
      v18 = sub_2408D4D30();
      v20 = v19;
      v22 = v18 == sub_2408D4D30() && v20 == v21;
      if (v22)
      {
        break;
      }

      v23 = sub_2408D5240();

      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v6;
      v22 = v7 == v6;
      v6 += 8;
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v22 = v7 == v4;
    v4 += 8;
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v36 = v6;
      v24 = v6 - 8;
      v5 -= 8;
      v25 = v14;
      while (1)
      {
        v26 = *(v25 - 1);
        v25 -= 8;
        v6 = v24;
        v27 = *v24;
        v28 = sub_2408D4D30();
        v30 = v29;
        v32 = v28 == sub_2408D4D30() && v30 == v31;
        v33 = v32 ? 0 : sub_2408D5240();

        v34 = v5 + 8;
        if (v33)
        {
          break;
        }

        v24 = v6;
        if (v34 != v14)
        {
          *v5 = *v25;
        }

        v5 -= 8;
        v14 = v25;
        if (v25 <= v4)
        {
          v14 = v25;
          v6 = v36;
          goto LABEL_47;
        }
      }

      if (v34 != v36)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_47:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_24080CF48(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24080CFF0(uint64_t *a1, uint64_t *a2)
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

id sub_24080D080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v5 = v2;

  return sub_2407D256C(v3, v4);
}

unint64_t sub_24080D0C8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_2408CCB30(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_2408C7EFC(v15, i & 1);
    v17 = *a3;
    result = sub_2408CCB30(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_2408D5280();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v27 = (v19[6] + 16 * result);
    *v27 = v8;
    v27[1] = v7;
    *(v19[7] + 8 * result) = v9;
    v28 = v19[2];
    v14 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v29;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v26 = result;
  sub_2408C5700();
  result = v26;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = *(v19[7] + 8 * result);
  v21 = result;

  sub_24082A3C4(v9, v20);
  v23 = v22;

  v24 = v19[7];
  v25 = *(v24 + 8 * v21);
  *(v24 + 8 * v21) = v23;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v9 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v36 = *a3;

      result = sub_2408CCB30(v9, v6);
      v38 = v36[2];
      v39 = (v37 & 1) == 0;
      v14 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v14)
      {
        break;
      }

      v8 = v37;
      if (v36[3] < v40)
      {
        sub_2408C7EFC(v40, 1);
        v41 = *a3;
        result = sub_2408CCB30(v9, v6);
        if ((v8 & 1) != (v42 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v30 = *(v3[7] + 8 * result);
        v31 = result;

        sub_24082A3C4(v7, v30);
        v33 = v32;

        v34 = v3[7];
        v35 = *(v34 + 8 * v31);
        *(v34 + 8 * v31) = v33;
      }

      else
      {
        v3[(result >> 6) + 8] |= 1 << result;
        v43 = (v3[6] + 16 * result);
        *v43 = v9;
        v43[1] = v6;
        *(v3[7] + 8 * result) = v7;
        v44 = v3[2];
        v14 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v3[2] = v45;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_24080D380(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24080D3EC()
{
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E506FF0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Requesting Terms ...", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = sub_2408D4B10();
  v6 = sub_2408D4F50();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2407CF000, v5, v6, "Pre Sign In terms is not supported", v7, 2u);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v8 = sub_2408D3500();
  sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
  swift_allocError();
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277CED280], v8);
  swift_willThrow();
  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_24080D61C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_24080D664()
{
  result = qword_27E5070C0;
  if (!qword_27E5070C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5070C0);
  }

  return result;
}

uint64_t sub_24080D6B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407DB6F0;

  return sub_24080BEC8(v2, v3, v5, v4);
}

id sub_24080D778(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D4B20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2408D3B90())
  {
    sub_2408D4910();
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F10();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "CDP setup is suppressed for this sign in", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }

  else
  {
    sub_2408076AC(a2);
    v12 = objc_allocWithZone(MEMORY[0x277CFD4A8]);
    v13 = sub_2408D4C90();

    v11 = [v12 initWithAuthenticationResults_];

    if (v11)
    {
      v14 = v11;
      v15 = sub_2408D3B60();
      [v14 setSharingChannel_];
    }
  }

  return v11;
}

uint64_t sub_24080D964(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2408D4B20();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_2408D3C20();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[12] = v9;
  v10 = *(MEMORY[0x277CED858] + 4);
  v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v11 = swift_task_alloc();
  v2[13] = v11;
  *v11 = v2;
  v11[1] = sub_24080DAE0;

  return v13(v9);
}

uint64_t sub_24080DAE0()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24080DBDC, 0, 0);
}

uint64_t sub_24080DBDC()
{
  v47 = v0;
  v1 = *(v0 + 96);
  v43 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = sub_24080D778(v1, *(v0 + 40));
  v7 = v6;
  v8 = sub_2408D3B90();
  v9 = type metadata accessor for CloudSignInContext();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_cdpContext;
  *&v10[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_cdpContext] = 0;
  v12 = OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms;
  *&v10[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_requiredTerms] = 0;
  *&v10[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_model] = v5;
  v42 = v6;
  *&v10[v11] = v6;
  v10[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_skipCDPEnablement] = v8 & 1;
  v10[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_backgroundDataclassEnablement] = 0;
  v10[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_skipDataclassEnablement] = 0;
  *&v10[v12] = 0;
  v10[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_shouldStashLoginResponse] = 0;
  *&v10[OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_findMyActivationAction] = 2;
  *(v0 + 16) = v10;
  *(v0 + 24) = v9;

  v45 = objc_msgSendSuper2((v0 + 16), sel_init);
  sub_2408D4910();
  (*(v2 + 16))(v43, v1, v3);
  v13 = v7;
  v14 = sub_2408D4B10();
  v15 = sub_2408D4F10();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 88);
  v18 = *(v0 + 96);
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v44 = *(v0 + 64);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);
  if (v16)
  {
    v38 = v15;
    v23 = *(v0 + 72);
    v24 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46 = v40;
    *v24 = 136315394;
    sub_24080D61C(&unk_27E5071B0, 255, MEMORY[0x277CED500]);
    v41 = v18;
    v25 = sub_2408D5220();
    v39 = v21;
    v27 = v26;
    v28 = *(v20 + 8);
    v28(v17, v23);
    v29 = sub_2408CC504(v25, v27, &v46);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v13;
    *v37 = v42;
    v30 = v13;
    _os_log_impl(&dword_2407CF000, v14, v38, "Created new CloudSignInContext with model:%s, cdpContext:%@", v24, 0x16u);
    sub_2407D9440(v37, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v37, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x245CC9F60](v40, -1, -1);
    MEMORY[0x245CC9F60](v24, -1, -1);

    (*(v22 + 8))(v44, v39);
    v28(v41, v23);
  }

  else
  {

    v31 = *(v20 + 8);
    v31(v17, v19);
    (*(v22 + 8))(v44, v21);
    v31(v18, v19);
  }

  v33 = *(v0 + 88);
  v32 = *(v0 + 96);
  v34 = *(v0 + 64);

  v35 = *(v0 + 8);

  return v35(v45);
}

id sub_24080DFB4()
{
  v0 = sub_2408D4B20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CEE698]) init];
  [v5 setCanMakeAccountActive_];
  [v5 setIgnoreAccountConversion_];
  sub_2408D4910();
  v6 = v5;
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_2407CF000, v7, v8, "Created AMS sign in context: %@", v9, 0xCu);
    sub_2407D9440(v10, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_24080E18C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v47 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v49 = a5;
  v50 = v7;
  v48 = v11;
  while (v10)
  {
    v57 = a4;
    v20 = v12;
LABEL_14:
    v22 = __clz(__rbit64(v10)) | (v20 << 6);
    v23 = *(*(a1 + 48) + 8 * v22);
    v24 = *(a1 + 56) + 16 * v22;
    v25 = *v24;
    v26 = *(v24 + 8);
    v55[0] = v23;
    v55[1] = v25;
    v56 = v26;
    v27 = v23;
    sub_2407D256C(v25, v26);
    a2(v53, v55);

    sub_24080F17C(v25, v26);
    v29 = v53[0];
    v28 = v53[1];
    v30 = v54;
    v31 = *a5;
    v33 = sub_2408CCC7C(v53[0]);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_25;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if ((v57 & 1) == 0)
      {
        sub_2408C6540();
      }
    }

    else
    {
      sub_2408C94F8(v36, v57 & 1);
      v38 = *a5;
      v39 = sub_2408CCC7C(v29);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_27;
      }

      v33 = v39;
    }

    v10 &= v10 - 1;
    v41 = *a5;
    if (v37)
    {
      v13 = 16 * v33;
      v14 = v41[7] + 16 * v33;
      v15 = *v14;
      v16 = *(v14 + 8);
      sub_2407D256C(*v14, v16);
      sub_24080F17C(v28, v30);

      v17 = v41[7] + v13;
      v18 = *v17;
      v19 = *(v17 + 8);
      *v17 = v15;
      *(v17 + 8) = v16;
      sub_24080F17C(v18, v19);
    }

    else
    {
      v41[(v33 >> 6) + 8] |= 1 << v33;
      *(v41[6] + 8 * v33) = v29;
      v42 = v41[7] + 16 * v33;
      *v42 = v28;
      *(v42 + 8) = v30;
      v43 = v41[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_26;
      }

      v41[2] = v45;
    }

    a4 = 1;
    v12 = v20;
    a5 = v49;
    v7 = v50;
    v11 = v48;
  }

  v21 = v12;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v11)
    {
      sub_2407D17F4();
    }

    v10 = *(v7 + 8 * v20);
    ++v21;
    if (v10)
    {
      v57 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  type metadata accessor for AIDAServiceType(0);
  result = sub_2408D5280();
  __break(1u);
  return result;
}

uint64_t sub_24080E450(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2408D3490();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24080E510, 0, 0);
}

uint64_t sub_24080E510()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v4 = sub_2408D3480();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v5 = sub_2408D4B20();
    *(v0 + 56) = __swift_project_value_buffer(v5, qword_27E506FF0);
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F10();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "Attempting to present terms", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v10 = *(v0 + 16);
    v9 = *(v0 + 24);

    v11 = *(v9 + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_model);
    v12 = swift_task_alloc();
    *(v0 + 64) = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = *(MEMORY[0x277CED860] + 4);
    v25 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *v14 = v0;
    v14[1] = sub_24080E82C;
    v15 = MEMORY[0x277D839B0];

    return v25(v0 + 88, sub_24080F048, v12, &unk_2408D7590, 0, v15);
  }

  else
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v17 = sub_2408D4B20();
    __swift_project_value_buffer(v17, qword_27E506FF0);
    v18 = sub_2408D4B10();
    v19 = sub_2408D4F10();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2407CF000, v18, v19, "terms are not supported for this platform yet", v20, 2u);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    v21 = *(v0 + 48);
    v22 = *(v0 + 16);

    v23 = *(v0 + 8);
    v24 = *(v0 + 16);

    return v23(0, v24);
  }
}

uint64_t sub_24080E82C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_24080EA48;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_24080E948;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24080E948()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "Finished agreeing to terms with result: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  v8 = *(v0 + 8);
  v9 = *(v0 + 16);

  return v8(v2, v9);
}

uint64_t sub_24080EA48()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3(0);
}

uint64_t sub_24080EABC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24080EADC, 0, 0);
}

uint64_t sub_24080EADC()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____TtC18AppleIDSetupDaemon18CloudSignInContext_model);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277CED870] + 4);
  v7 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_24080EBC0;

  return v7(sub_24080EEC0, v3);
}

uint64_t sub_24080EBC0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24080ED08, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];
    v6 = v3[6] == 0;

    return v5(v6);
  }
}

uint64_t sub_24080ED08()
{
  v1 = v0[4];

  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_2408D4B20();
  __swift_project_value_buffer(v3, qword_27E506FF0);
  v4 = v2;
  v5 = sub_2408D4B10();
  v6 = sub_2408D4F30();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2407CF000, v5, v6, "Failed to present progress view with error: %@", v9, 0xCu);
    sub_2407D9440(v10, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];
  v14 = v0[6] == 0;

  return v13(v14);
}

uint64_t sub_24080EEC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407D379C;

  return sub_24080BB60(v2, v3, v5);
}

uint64_t sub_24080EF88()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2407DB6F0;

  return sub_24080B70C(v2, v3, v5, v4);
}

uint64_t sub_24080F060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24080F0C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407DB6F0;

  return sub_240807214(a1, v4, v5, v6);
}

void sub_24080F17C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_24080F1B4(uint64_t a1)
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
  v10[1] = sub_2407DB6F0;

  return sub_2408053B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24080F288(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_240802A60(a1, v5, v4);
}

uint64_t sub_24080F334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInReport(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24080F398(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2407DB6F0;

  return sub_240800804(a1, v1);
}

unint64_t sub_24080F430()
{
  result = qword_27E507218;
  if (!qword_27E507218)
  {
    sub_2407EEDBC(255, &qword_27E507210, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507218);
  }

  return result;
}

uint64_t sub_24080F4B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407D379C;

  return sub_2407FF060(a1, v5, v4);
}

void sub_24080F564(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_24080F58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInReport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24080F600(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_2407F7F70(a1, v5, v4);
}

uint64_t sub_24080F6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18AppleIDSetupDaemon17LocalSetupServiceC7FailureO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24080F72C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24080F780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void sub_24080F800(uint64_t a1)
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
      sub_2408104CC();
      if (v9 <= 0x3F)
      {
        v12 = *(v8 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_24080F950()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507280);
  __swift_project_value_buffer(v0, qword_27E507280);
  return sub_2408D4940();
}

id *sub_24080F99C()
{
  v1 = *v0;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_2408D3990();
  sub_240811714(&qword_27E506AD8, MEMORY[0x277CED460]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277CED458], v2);
  sub_24080FCE0(v3);

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 16));
  v5 = *(v0 + *(*v0 + 17));

  v6 = *(v0 + *(*v0 + 18));

  v7 = *(*v0 + 19);
  v8 = v1[11];
  v9 = sub_2408D5060();
  (*(*(v9 - 8) + 8))(v0 + v7, v9);

  v10 = v0 + *(*v0 + 22);
  v11 = *v10;
  v12 = *(v10 + 1);
  v14 = *(v10 + 2);
  v13 = *(v10 + 3);

  v15 = *(v0 + *(*v0 + 23));

  v16 = *(v0 + *(*v0 + 24));

  sub_2407D9440(v0 + *(*v0 + 25), &qword_27E507328, &qword_2408D7900);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24080FC68(uint64_t a1)
{
  sub_24080F99C();

  return MEMORY[0x282200960](a1);
}

uint64_t sub_24080FCE0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v63 - v11;
  v13 = *(v4[11] - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v63 - v15;
  v69 = v16;
  v72 = sub_2408D5060();
  v17 = *(v72 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v72);
  v67 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - v21;
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v68 = v17;
  v73 = v13;
  v23 = sub_2408D4B20();
  __swift_project_value_buffer(v23, qword_27E507280);
  v24 = a1;
  v25 = sub_2408D4B10();
  v26 = sub_2408D4F10();

  v27 = os_log_type_enabled(v25, v26);
  v66 = v12;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v65 = v4;
    v29 = v28;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v76[0] = v31;
    *v29 = 136315394;
    v32 = sub_2408D53B0();
    v34 = sub_2408CC504(v32, v33, v76);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2112;
    v35 = a1;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 14) = v36;
    *v30 = v36;
    _os_log_impl(&dword_2407CF000, v25, v26, "%s handling isolated cancellation with error: %@", v29, 0x16u);
    sub_2407D9440(v30, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x245CC9F60](v31, -1, -1);
    v37 = v29;
    v4 = v65;
    MEMORY[0x245CC9F60](v37, -1, -1);
  }

  v38 = *(*v2 + 128);
  v76[0] = a1;
  v39 = v4[10];
  v40 = v4[12];
  v41 = *(v40 + 8);
  sub_2408D3640();
  v42 = *&v2[*(*v2 + 144)];
  v75 = a1;
  v43 = v4[13];
  v44 = v69;
  v76[0] = v39;
  v76[1] = v69;
  v76[2] = v40;
  v76[3] = v43;
  type metadata accessor for RemoteSetupService();
  swift_getWitnessTable();
  sub_2408D4270();
  v45 = *(*v2 + 152);
  swift_beginAccess();
  v46 = v68;
  v47 = v72;
  (*(v68 + 16))(v22, &v2[v45], v72);
  v48 = v73;
  if ((*(v73 + 48))(v22, 1, v44))
  {
    (*(v46 + 8))(v22, v47);
  }

  else
  {
    v49 = v63;
    (*(v48 + 16))(v63, v22, v44);
    (*(v46 + 8))(v22, v47);
    v75 = a1;
    v50 = *(v43 + 8);
    sub_2408D3640();
    (*(v48 + 8))(v49, v44);
  }

  v51 = v66;
  v52 = *&v2[*(*v2 + 136)];
  sub_2407D2B30(a1);
  v53 = *v2;
  if (*&v2[*(*v2 + 184)])
  {
    v75 = a1;
    sub_2408D3D80();
    sub_240811714(&qword_27E506DB8, MEMORY[0x277CED5B0]);

    sub_2408D4270();

    v53 = *v2;
  }

  if (*&v2[*(v53 + 192)])
  {
    v75 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
    sub_2408116B0();
    sub_2408D4270();

    v53 = *v2;
  }

  v54 = *(v53 + 200);
  swift_beginAccess();
  sub_2407EEE04(&v2[v54], v51, &qword_27E507328, &qword_2408D7900);
  v55 = (*(v70 + 48))(v51, 1, v71);
  v56 = v73;
  if (v55)
  {
    sub_2407D9440(v51, &qword_27E507328, &qword_2408D7900);
  }

  else
  {
    v57 = v70;
    v58 = v71;
    v59 = v64;
    (*(v70 + 16))(v64, v51, v71);
    sub_2407D9440(v51, &qword_27E507328, &qword_2408D7900);
    v74 = a1;
    v60 = a1;
    sub_2408D4E90();
    (*(v57 + 8))(v59, v58);
  }

  v61 = v67;
  (*(v56 + 56))(v67, 1, 1, v44);
  swift_beginAccess();
  (*(v46 + 40))(&v2[v45], v61, v72);
  return swift_endAccess();
}

void sub_2408104CC()
{
  if (!qword_27E507318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E507320, qword_2408D77F0);
    v0 = sub_2408D5060();
    if (!v1)
    {
      atomic_store(v0, &qword_27E507318);
    }
  }
}

uint64_t sub_240810530(uint64_t a1, void *a2)
{
  v3 = sub_2408D39E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AD0, &qword_2408D6868);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = sub_2408D3990();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v24 - v18;
  v24[5] = a2;
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v21 = swift_dynamicCast();
  v22 = *(v13 + 56);
  if (v21)
  {
    v22(v11, 0, 1, v12);
    (*(v13 + 32))(v19, v11, v12);
    v17 = v19;
  }

  else
  {
    v22(v11, 1, 1, v12);
    sub_2407D9440(v11, &qword_27E506AD0, &qword_2408D6868);
    swift_getErrorValue();
    sub_2408D52B0();
  }

  (*(v13 + 16))(v7, v17, v12);
  (*(v4 + 104))(v7, *MEMORY[0x277CED478], v3);
  sub_2408D3A00();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_24081081C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D39E0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408108DC, 0, 0);
}

uint64_t sub_2408108DC()
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
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v6 = sub_2408D4B20();
    __swift_project_value_buffer(v6, qword_27E507280);
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
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v12 = sub_2408D4B20();
    __swift_project_value_buffer(v12, qword_27E507280);
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

uint64_t sub_240810B40(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2408D39E0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240810C00, 0, 0);
}

uint64_t sub_240810C00()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_2408D39F0();
  v5 = (*(v2 + 88))(v1, v4);
  v6 = *MEMORY[0x277CED490];
  (*(v2 + 8))(v1, v4);
  v7 = v0[2];
  if (v5 == v6)
  {
    v8 = MEMORY[0x277CEDCA8];
  }

  else
  {
    *v7 = 0;
    v8 = MEMORY[0x277CEDCB0];
  }

  v9 = *v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D88, &qword_2408D6D40);
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_240810D38(uint64_t a1, uint64_t a2)
{
  sub_2407D9440(a2, &qword_27E507328, &qword_2408D7900);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_240810E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - v7;
  v49 = sub_2408D38D0();
  v9 = *(v49 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v49);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v46 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v46 - v22;
  v24 = sub_2408D3EC0();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v23, a2, v24);
  (*(v25 + 56))(v23, 0, 1, v24);
  v50 = a1;
  v26 = sub_2408D39A0();
  v27 = sub_2408D3560();
  sub_2408D3FE0();
  v27(v52, 0);
  v26(v53, 0);
  sub_2407EEE04(v51, v8, &unk_27E506A20, &unk_2408D67F0);
  v28 = sub_2408D3970();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v8, 1, v28) == 1)
  {
    return sub_2407D9440(v8, &unk_27E506A20, &unk_2408D67F0);
  }

  sub_2408D38F0();
  (*(v29 + 8))(v8, v28);
  v31 = v9;
  v32 = *(v9 + 32);
  v33 = v49;
  v32(v19, v17, v49);
  v51 = v19;
  v34 = sub_2408D38B0();
  v36 = v35;
  v37 = v48;
  sub_2408D3A10();
  v38 = sub_2408D38B0();
  v40 = v39;
  v41 = v37;
  v42 = *(v31 + 8);
  v42(v41, v33);
  if (v34 == v38 && v36 == v40)
  {
  }

  else
  {
    v43 = sub_2408D5240();

    if ((v43 & 1) == 0)
    {
      v45 = v51;
      return (v42)(v45, v33);
    }
  }

  v44 = v51;
  (*(v31 + 16))(v47, v51, v33);
  sub_2408D3A20();
  v45 = v44;
  return (v42)(v45, v33);
}

uint64_t sub_2408112A8()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277CEDCB0];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24081135C(uint64_t a1, unsigned int *a2)
{
  v3 = sub_2408D39E0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *a2);
  return sub_2408D3A00();
}

uint64_t sub_24081142C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  type metadata accessor for RemoteRepairService();
  swift_getWitnessTable();
  return sub_2408D4270();
}

uint64_t sub_2408114DC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24081153C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D3630();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2408D39E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v11 + 104))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CED470]);
  sub_2408D3A00();
  (*(v4 + 16))(v7, a2, v3);
  return sub_2408D39C0();
}

unint64_t sub_2408116B0()
{
  result = qword_27E507330[0];
  if (!qword_27E507330[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E506A48, &qword_2408D6808);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E507330);
  }

  return result;
}

uint64_t sub_240811714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24081175C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18AppleIDSetupDaemon19RemoteRepairServiceC7FailureOyxq__G(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2408117D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24081181C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_240811860(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2408118AC()
{
  v1 = *v0;
  sub_2408D5300();
  if (v1)
  {
    v2 = 8101;
  }

  else
  {
    v2 = 8100;
  }

  MEMORY[0x245CC9750](v2);
  return sub_2408D5320();
}

uint64_t sub_2408118FC()
{
  if (*v0)
  {
    v1 = 8101;
  }

  else
  {
    v1 = 8100;
  }

  return MEMORY[0x245CC9750](v1);
}

uint64_t sub_240811934()
{
  v1 = *v0;
  sub_2408D5300();
  if (v1)
  {
    v2 = 8101;
  }

  else
  {
    v2 = 8100;
  }

  MEMORY[0x245CC9750](v2);
  return sub_2408D5320();
}

void *sub_240811980@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 8101)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 8100)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2408119A8(uint64_t *a1@<X8>)
{
  v2 = 8100;
  if (*v1)
  {
    v2 = 8101;
  }

  *a1 = v2;
}

uint64_t sub_2408119C0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_2408D4B20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D4930();
  sub_240812D1C(a1, v32);
  v13 = sub_2408D4B10();
  v14 = sub_2408D4F20();
  if (!os_log_type_enabled(v13, v14))
  {
    sub_240812D54(a1);

    (*(v9 + 8))(v12, v8);
    goto LABEL_5;
  }

  v29 = v8;
  v30 = v7;
  v31 = v2;
  v15 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v32[0] = v28;
  *v15 = 136315138;
  v16 = [*(a1 + 24) userInfo];
  if (v16)
  {
    v17 = v16;
    sub_240812D54(a1);
    sub_2408D4CB0();

    v18 = sub_2408D4CC0();
    v20 = v19;

    v21 = sub_2408CC504(v18, v20, v32);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v13, v14, "SignOutServiceDelegate processing aps message: %s", v15, 0xCu);
    v22 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x245CC9F60](v22, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);

    (*(v9 + 8))(v12, v29);
    v7 = v30;
    v2 = v31;
LABEL_5:
    v23 = sub_2408D4E60();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v25 = *(a1 + 48);
    *(v24 + 64) = *(a1 + 32);
    *(v24 + 80) = v25;
    *(v24 + 96) = *(a1 + 64);
    v26 = *(a1 + 16);
    *(v24 + 32) = *a1;
    *(v24 + 48) = v26;
    *(v24 + 112) = v2;
    sub_240812D1C(a1, v32);

    sub_24083AB60(0, 0, v7, &unk_2408D7AC0, v24);
  }

  result = sub_240812D54(a1);
  __break(1u);
  return result;
}

uint64_t sub_240811D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2408D4B20();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240811E10, 0, 0);
}

uint64_t sub_240811E10()
{
  v1 = v0[9];
  sub_2408D4930();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "SignOutServiceDelegate sending sign out command", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];

  v10 = *(v7 + 8);
  v0[10] = v10;
  v10(v5, v6);
  v12 = v8[6];
  v11 = v8[7];
  v13 = v8[8];
  v14 = v8[9];
  v15 = objc_allocWithZone(sub_2408D4190());

  v16 = sub_2408D4160();
  v0[11] = v16;
  v17 = *(v9 + 16);
  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  v18[1] = sub_240811F9C;

  return sub_24087D810(v16);
}

uint64_t sub_240811F9C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_2408121E8;
  }

  else
  {
    v5 = sub_2408120B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2408120B4()
{
  v1 = *(v0 + 64);
  sub_2408D4930();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2407CF000, v2, v3, "SignOutServiceDelegate finished sign out command with success: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);

  v6(v7, v8);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2408121E8()
{
  v27 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);

  sub_2408D4930();
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F20();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 48);
    v24 = *(v0 + 56);
    v25 = *(v0 + 80);
    v8 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v0 + 16) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v12 = sub_2408D4D40();
    v14 = sub_2408CC504(v12, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2407CF000, v4, v5, "SignOutServiceDelegate error occurred on sign out command: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);

    v25(v24, v8);
  }

  else
  {
    v15 = *(v0 + 80);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 40);

    v15(v16, v18);
  }

  v20 = *(v0 + 64);
  v19 = *(v0 + 72);
  v21 = *(v0 + 56);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2408123F8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_240812458()
{
  result = qword_27E5073B8;
  if (!qword_27E5073B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5073B8);
  }

  return result;
}

unint64_t sub_2408124B0()
{
  result = qword_27E5073C0;
  if (!qword_27E5073C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5073C0);
  }

  return result;
}

void sub_240812504(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2408D4B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  *&v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  *&v52 = &v47 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  sub_2408D4930();
  v16 = a1;
  v17 = sub_2408D4B10();
  v18 = sub_2408D4F20();
  if (!os_log_type_enabled(v17, v18))
  {

    v27 = *(v5 + 8);
    v27(v15, v4);
    v26 = v4;
LABEL_5:
    v28 = [v16 userInfo];
    if (v28)
    {
      v29 = v28;
      v30 = sub_2408D4CB0();

      v54[0] = 6581603;
      v54[1] = 0xE300000000000000;
      sub_2408D50D0();
      if (*(v30 + 16) && (v31 = sub_2408CCDE4(v61), (v32 & 1) != 0))
      {
        sub_2407EEB40(*(v30 + 56) + 32 * v31, v55);
        sub_240812CC8(v61);
        if (swift_dynamicCast())
        {
          if (v54[0] == 8100)
          {
            v33 = 0;
            goto LABEL_23;
          }

          if (v54[0] == 8101)
          {
            v33 = 1;
LABEL_23:
            sub_24087C8B0(v30, &v69);
            v65 = v69;
            v66 = v70;
            v67 = v71;
            v55[0] = 6581603;
            v55[1] = 0xE300000000000000;
            LOBYTE(v56) = v33;
            HIDWORD(v56) = *&v68[3];
            *(&v56 + 1) = *v68;
            v57 = v16;
            v59 = v70;
            v58 = v69;
            v60 = v71;
            v42 = v56;
            v52 = v70;
            v53 = v69;
            v51 = v71;
            v61[0] = 6581603;
            v61[1] = 0xE300000000000000;
            v62 = v33;
            *&v63[3] = *&v68[3];
            *v63 = *v68;
            v64 = v16;
            sub_240812D1C(v55, v54);
            sub_240812D54(v61);
            v46 = v51;
            v45 = v52;
            v44 = v53;
            v43 = xmmword_2408D79E0;
            goto LABEL_21;
          }
        }
      }

      else
      {

        sub_240812CC8(v61);
      }

      v38 = v53;
      sub_2408D4930();
      v39 = sub_2408D4B10();
      v40 = sub_2408D4F30();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2407CF000, v39, v40, "SignOutServiceDelegate received push message with unknown cmd, failing initialization", v41, 2u);
        MEMORY[0x245CC9F60](v41, -1, -1);
      }

      v37 = v38;
    }

    else
    {
      sub_2408D4930();
      v34 = sub_2408D4B10();
      v35 = sub_2408D4F30();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2407CF000, v34, v35, "SignOutServiceDelegate received push message with empty userInfo, failing initialization", v36, 2u);
        MEMORY[0x245CC9F60](v36, -1, -1);
      }

      v37 = v13;
    }

    v27(v37, v26);

    v42 = 0;
    v16 = 0;
    v43 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
LABEL_21:
    *a2 = v43;
    *(a2 + 16) = v42;
    *(a2 + 24) = v16;
    *(a2 + 32) = v44;
    *(a2 + 48) = v45;
    *(a2 + 64) = v46;
    return;
  }

  v47 = v13;
  v48 = v5;
  v49 = v4;
  *&v51 = a2;
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v61[0] = v20;
  *v19 = 136315138;
  v21 = [v16 userInfo];
  v50 = v16;

  if (v21)
  {
    sub_2408D4CB0();

    v22 = sub_2408D4CC0();
    v24 = v23;

    v25 = sub_2408CC504(v22, v24, v61);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_2407CF000, v17, v18, "SignOutServiceDelegate initializing push message with payload: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x245CC9F60](v20, -1, -1);
    MEMORY[0x245CC9F60](v19, -1, -1);

    v26 = v49;
    v27 = *(v48 + 8);
    v27(v15, v49);
    v16 = v50;
    a2 = v51;
    v13 = v47;
    goto LABEL_5;
  }

  __break(1u);
}

BOOL sub_240812B54(char a1)
{
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 & 1;
  sub_2408D4930();
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = v7 | 0x1FA4;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v7 ^ 1;
    _os_log_impl(&dword_2407CF000, v8, v9, "SignOutServiceDelegate should process aps command: %ld, decision : %{BOOL}d", v10, 0x12u);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return v7 == 0;
}

uint64_t sub_240812D84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407D379C;

  return sub_240811D38(a1, v4, v5, (v1 + 4), v6);
}

uint64_t getEnumTagSinglePayload for SignOutPushServiceDelegate.Command(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SignOutPushServiceDelegate.Command(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_240812FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_240813004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24081306C()
{
  result = qword_27E5073C8;
  if (!qword_27E5073C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5073C8);
  }

  return result;
}

uint64_t sub_2408130C0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_2408130E4, 0, 0);
}

uint64_t sub_2408130E4()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_240813A0C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24085F49C;
  v0[13] = &block_descriptor_6;
  v0[14] = v3;
  [v1 signOutOfAllServicesUsingContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24081320C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_240813230, 0, 0);
}

uint64_t sub_240813230()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_240813358;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24085F49C;
  v0[13] = &block_descriptor_2;
  v0[14] = v3;
  [v1 removeAccount:v2 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240813358()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v0 + 160);
    v3 = *(v1 + 8);
    v5 = *v0;
  }

  return v3(v4);
}

id sub_240813474(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_2408D4D00();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 aa:v4 appleAccountWithAltDSID:?];

  return v5;
}

uint64_t sub_2408134F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_240813A08;

  return v11(a1, a2, a3);
}

uint64_t sub_24081361C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_240813744;

  return v11(a1, a2, a3);
}

uint64_t sub_240813744(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2408138A4(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = sub_2408D4DB0();
  }

  else
  {
    v3 = 0;
  }

  v10[0] = 0;
  v4 = [v1 accountsWithAccountTypeIdentifiers:v3 error:v10];

  v5 = v10[0];
  if (v4)
  {
    sub_24081399C();
    v2 = sub_2408D4DC0();
    v6 = v5;
  }

  else
  {
    v7 = v10[0];
    sub_2408D33F0();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_24081399C()
{
  result = qword_27E5070C8;
  if (!qword_27E5070C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5070C8);
  }

  return result;
}

uint64_t sub_240813A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E506C48);

  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315650;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507460, &unk_2408D7F00);
    v11 = sub_2408D4D40();
    v13 = sub_2408CC504(v11, v12, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v14 = sub_2408D4D40();
    v16 = sub_2408CC504(v14, v15, &v23);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074E8, &qword_2408D8040);
    v17 = sub_2408D4D40();
    v19 = sub_2408CC504(v17, v18, &v23);

    *(v9 + 24) = v19;
    _os_log_impl(&dword_2407CF000, v7, v8, "Configuring %s for external usage with model: %s router: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  v20 = *(v3 + 248);
  *(v3 + 248) = a1;

  v21 = *(v3 + 240);
  *(v3 + 240) = a2;
}

uint64_t sub_240813C98(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_2408D3A60();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = sub_2408D3630();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v9 = *(v8 + 64) + 15;
  v3[20] = swift_task_alloc();
  v10 = type metadata accessor for ProximityTransportConnector.LegacySetupCompleted();
  v3[21] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v12 = sub_2408D4B20();
  v3[25] = v12;
  v13 = *(v12 - 8);
  v3[26] = v13;
  v14 = *(v13 + 64) + 15;
  v3[27] = swift_task_alloc();
  v15 = sub_2408D3500();
  v3[28] = v15;
  v16 = *(v15 - 8);
  v3[29] = v16;
  v17 = *(v16 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  v3[33] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240813F30, v2, 0);
}

uint64_t sub_240813F30()
{
  v1 = v0[14];
  v2 = *(v1 + 248);
  *(v1 + 248) = v0[13];

  v3 = sub_2408D34B0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[38] = sub_2408D34C0();
  sub_2408D49E0();
  v6 = sub_2408D48E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v0[39] = sub_2408D48C0();
  sub_2408D48D0();
  v0[40] = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_240814028, 0, 0);
}

uint64_t sub_240814028()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 112);
  sub_24080A424();

  return MEMORY[0x2822009F8](sub_240814094, v2, 0);
}

uint64_t sub_240814094()
{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  v1[1] = vextq_s8(*(v0 + 104), *(v0 + 104), 8uLL);
  v2 = *(MEMORY[0x277CEDE70] + 4);
  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  *v3 = v0;
  v3[1] = sub_240814164;
  v4 = *(v0 + 296);
  v5 = *(v0 + 120);

  return MEMORY[0x2821400E8](v4, &unk_2408D8230, v1, v5);
}

uint64_t sub_240814164()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24081427C, 0, 0);
}

uint64_t sub_24081427C()
{
  v1 = v0[33];
  sub_2407EEE04(v0[37], v0[36], &qword_27E506EF8, &qword_2408D76B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[36];
  if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    sub_2407D9440(v3, &qword_27E506EF8, &qword_2408D76B0);
  }

  v4 = v0[40];
  v5 = v0[14];
  sub_24080A730();

  return MEMORY[0x2822009F8](sub_240814344, v5, 0);
}

uint64_t sub_240814344()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  sub_2408D48B0();
  sub_2408D34A0();
  sub_2407EEE04(v3, v4, &qword_27E506EF8, &qword_2408D76B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 304);
  v8 = *(v0 + 312);
  v9 = *(v0 + 296);
  v10 = *(v0 + 280);
  if (EnumCaseMultiPayload != 1)
  {
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = *(v0 + 96);
    sub_2407D9440(*(v0 + 296), &qword_27E506EF8, &qword_2408D76B0);

    (*(v33 + 32))(v34, v10, v32);
    goto LABEL_7;
  }

  v11 = (v0 + 48);
  v12 = *(v0 + 256);
  v13 = *(v0 + 224);
  v14 = *v10;
  *(v0 + 344) = *v10;
  *(v0 + 40) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  swift_willThrowTypedImpl();

  sub_2407D9440(v9, &qword_27E506EF8, &qword_2408D76B0);
  *(v0 + 48) = v14;
  v15 = v14;
  if (swift_dynamicCast())
  {
    (*(*(v0 + 232) + 32))(*(v0 + 248), *(v0 + 256), *(v0 + 224));
    v16 = sub_240880C4C();
    v17 = *(v0 + 248);
    if (v16)
    {
      v19 = *(v0 + 232);
      v18 = *(v0 + 240);
      v21 = *(v0 + 216);
      v20 = *(v0 + 224);

      sub_2408D4910();
      v22 = *(v19 + 16);
      v22(v18, v17, v20);
      v23 = sub_2408D4B10();
      v24 = sub_2408D4F20();
      v25 = os_log_type_enabled(v23, v24);
      v27 = *(v0 + 232);
      v26 = *(v0 + 240);
      v28 = *(v0 + 224);
      if (v25)
      {
        v108 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v108 = 138412290;
        sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
        swift_allocError();
        v22(v29, v26, v28);
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = *(v27 + 8);
        v31(v26, v28);
        *(v108 + 4) = v30;
        *v111 = v30;
        _os_log_impl(&dword_2407CF000, v23, v24, "Setup flow cancelled with %@", v108, 0xCu);
        sub_2407D9440(v111, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v111, -1, -1);
        MEMORY[0x245CC9F60](v108, -1, -1);
      }

      else
      {

        v31 = *(v27 + 8);
        v31(v26, v28);
      }

      v87 = *(v0 + 248);
      v88 = *(v0 + 224);
      (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      swift_allocError();
      v22(v89, v87, v88);
      swift_willThrow();
      v31(v87, v88);
      goto LABEL_36;
    }

    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
  }

  *(v0 + 56) = v14;
  v46 = v14;
  if (swift_dynamicCast())
  {

    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    *(v0 + 352) = __swift_project_value_buffer(*(v0 + 200), qword_27E506C48);
    v47 = sub_2408D4B10();
    v48 = sub_2408D4F10();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2407CF000, v47, v48, "RemoteSetupService caught user selected Manual", v49, 2u);
      MEMORY[0x245CC9F60](v49, -1, -1);
    }

    v50 = *(v0 + 112);

    swift_beginAccess();
    v51 = *(v50 + 120);
    if (v51)
    {
      v52 = *(v0 + 224);
      v53 = *(v0 + 232);
      *(v0 + 80) = v51;
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      v54 = swift_allocError();
      (*(v53 + 104))(v55, *MEMORY[0x277CED2D8], v52);
      *(v0 + 88) = v54;
      type metadata accessor for ProximityTransportConnector();
      sub_2408763D8(&qword_27E506E78, 255, type metadata accessor for ProximityTransportConnector);

      sub_2408D3640();
    }

    v56 = *(MEMORY[0x277CED858] + 4);
    v115 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v57 = swift_task_alloc();
    *(v0 + 360) = v57;
    *v57 = v0;
    v57[1] = sub_24081502C;
    v58 = *(v0 + 160);
    v59 = *(v0 + 104);

    return v115(v58);
  }

  v11 = (v0 + 64);
  v61 = *(v0 + 192);
  v62 = *(v0 + 168);

  *(v0 + 64) = v14;
  v63 = v14;
  if (swift_dynamicCast())
  {
    v65 = *(v0 + 184);
    v64 = *(v0 + 192);

    sub_240875B98(v64, v65, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v67 = *(v0 + 176);
    v66 = *(v0 + 184);
    __swift_project_value_buffer(*(v0 + 200), qword_27E506C48);
    sub_240875C00(v66, v67, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
    v68 = sub_2408D4B10();
    v69 = sub_2408D4F10();
    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v0 + 176);
    if (v70)
    {
      v72 = *(v0 + 168);
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      sub_2408763D8(&qword_27E5075E0, 255, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
      swift_allocError();
      sub_240875C00(v71, v75, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
      v76 = _swift_stdlib_bridgeErrorToNSError();
      sub_240875C68(v71, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
      *(v73 + 4) = v76;
      *v74 = v76;
      _os_log_impl(&dword_2407CF000, v68, v69, "Caught LegacySetupCompleted result: %@", v73, 0xCu);
      sub_2407D9440(v74, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v74, -1, -1);
      MEMORY[0x245CC9F60](v73, -1, -1);
    }

    else
    {

      sub_240875C68(v71, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
    }

    v90 = *(v0 + 264);
    sub_2407EEE04(*(v0 + 184), *(v0 + 272), &qword_27E506EF8, &qword_2408D76B0);
    v91 = swift_getEnumCaseMultiPayload();
    v92 = *(v0 + 272);
    v93 = *(v0 + 184);
    if (v91 == 1)
    {
      *(v0 + 72) = *v92;
      swift_willThrowTypedImpl();
      sub_240875C68(v93, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
LABEL_36:

      v95 = *(v0 + 288);
      v94 = *(v0 + 296);
      v97 = *(v0 + 272);
      v96 = *(v0 + 280);
      v99 = *(v0 + 248);
      v98 = *(v0 + 256);
      v100 = *(v0 + 240);
      v101 = *(v0 + 216);
      v102 = *(v0 + 184);
      v103 = *(v0 + 192);
      v107 = *(v0 + 176);
      v110 = *(v0 + 160);
      v113 = *(v0 + 136);

      v45 = *(v0 + 8);
      goto LABEL_37;
    }

    v104 = *(v0 + 120);
    v105 = *(v0 + 128);
    v106 = *(v0 + 96);
    sub_240875C68(*(v0 + 184), type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
    (*(v105 + 32))(v106, v92, v104);

LABEL_7:
    v36 = *(v0 + 288);
    v35 = *(v0 + 296);
    v38 = *(v0 + 272);
    v37 = *(v0 + 280);
    v40 = *(v0 + 248);
    v39 = *(v0 + 256);
    v41 = *(v0 + 240);
    v42 = *(v0 + 216);
    v44 = *(v0 + 184);
    v43 = *(v0 + 192);
    v109 = *(v0 + 176);
    v112 = *(v0 + 160);
    v114 = *(v0 + 136);

    v45 = *(v0 + 8);
LABEL_37:

    return v45();
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 200), qword_27E506C48);
  v77 = v14;
  v78 = sub_2408D4B10();
  v79 = sub_2408D4F20();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    v82 = v14;
    v83 = _swift_stdlib_bridgeErrorToNSError();
    *(v80 + 4) = v83;
    *v81 = v83;
    _os_log_impl(&dword_2407CF000, v78, v79, "Error received during setup is: %@", v80, 0xCu);
    sub_2407D9440(v81, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v81, -1, -1);
    MEMORY[0x245CC9F60](v80, -1, -1);
  }

  v84 = swift_task_alloc();
  *(v0 + 384) = v84;
  *v84 = v0;
  v84[1] = sub_2408157D0;
  v85 = *(v0 + 104);
  v86 = *(v0 + 112);

  return sub_240815AC0(v14, v85);
}

uint64_t sub_24081502C()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24081513C, v2, 0);
}

uint64_t sub_24081513C()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = sub_2408D35A0();
  (*(v3 + 8))(v2, v4);
  v6 = sub_2408D4B10();
  if (v5)
  {
    v7 = sub_2408D4F30();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2407CF000, v6, v7, "Throwing custom manual implementation error", v8, 2u);
      MEMORY[0x245CC9F60](v8, -1, -1);
    }

    v9 = *(v0 + 224);
    v10 = *(v0 + 232);

    sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    (*(v10 + 104))(v11, *MEMORY[0x277CED2B8], v9);
    swift_willThrow();

    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v17 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 240);
    v19 = *(v0 + 216);
    v20 = *(v0 + 184);
    v21 = *(v0 + 192);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    v32 = *(v0 + 136);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = sub_2408D4F20();
    if (os_log_type_enabled(v6, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2407CF000, v6, v24, "Calling base to perform manual setup", v25, 2u);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    v26 = swift_task_alloc();
    *(v0 + 368) = v26;
    *v26 = v0;
    v26[1] = sub_24081545C;
    v27 = *(v0 + 320);
    v28 = *(v0 + 136);
    v29 = *(v0 + 104);

    return sub_2407F7188(v28, v29);
  }
}

uint64_t sub_24081545C()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_2408156B8;
  }

  else
  {
    v6 = sub_240815588;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240815588()
{
  (*(*(v0 + 128) + 32))(*(v0 + 96), *(v0 + 136), *(v0 + 120));

  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 216);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v15 = *(v0 + 136);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2408156B8()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v15 = *(v0 + 136);
  v16 = *(v0 + 376);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2408157D0()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v6 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v5 = *(v2 + 112);

    return MEMORY[0x2822009F8](sub_2408158E4, v5, 0);
  }

  return result;
}

uint64_t sub_2408158E4()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v15 = *(v0 + 136);
  v16 = *(v0 + 392);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2408159FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407D379C;

  return sub_2408167FC(a1, a3);
}

uint64_t sub_240815AC0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v5 = sub_2408D4130();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = sub_2408D3630();
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v3[15] = v11;
  v3[2] = a1;
  v12 = *(MEMORY[0x277CED858] + 4);
  v15 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v13 = swift_task_alloc();
  v3[16] = v13;
  *v13 = v3;
  v13[1] = sub_240815C44;

  return v15(v11);
}

uint64_t sub_240815C44()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240815D54, v2, 0);
}

uint64_t sub_240815D54()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  sub_2408D3570();
  (*(v2 + 8))(v1, v3);
  LOBYTE(v1) = sub_2408D4070();
  (*(v6 + 8))(v4, v5);
  if (v1)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v7 = v0[7];
    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E506C48);
    v9 = v7;
    v10 = v7;
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F10();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[7];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v0[6] = v14;
      v17 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      v18 = sub_2408D5230();
      v19 = v0[7];
      if (v18)
      {
      }

      else
      {
        swift_allocError();
        *v32 = v19;
      }

      v33 = v0[7];
      v34 = _swift_stdlib_bridgeErrorToNSError();

      *(v15 + 4) = v34;
      *v16 = v34;
      _os_log_impl(&dword_2407CF000, v11, v12, "Skipping showing error: %@", v15, 0xCu);
      sub_2407D9440(v16, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v16, -1, -1);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    else
    {
    }

    v0[5] = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v35 = sub_2408D5230();
    v36 = v0[7];
    if (v35)
    {
    }

    else
    {
      swift_allocError();
      *v37 = v36;
    }

    swift_willThrow();
    v38 = v0[15];
    v39 = v0[12];

    v40 = v0[1];

    return v40();
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v20 = v0[7];
    v21 = sub_2408D4B20();
    __swift_project_value_buffer(v21, qword_27E506C48);
    v22 = v20;
    v23 = sub_2408D4B10();
    v24 = sub_2408D4F10();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[7];
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v0[4] = v26;
      v29 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      v30 = sub_2408D5230();
      v31 = v0[7];
      if (v30)
      {
      }

      else
      {
        swift_allocError();
        *v42 = v31;
      }

      v43 = v0[7];
      v44 = _swift_stdlib_bridgeErrorToNSError();

      *(v27 + 4) = v44;
      *v28 = v44;
      _os_log_impl(&dword_2407CF000, v23, v24, "Presenting error to user before proceeding: %@", v27, 0xCu);
      sub_2407D9440(v28, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v28, -1, -1);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    else
    {
    }

    v45 = swift_task_alloc();
    v0[17] = v45;
    *(v45 + 16) = v0 + 2;
    v46 = *(MEMORY[0x277CED860] + 4);
    v49 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v47 = swift_task_alloc();
    v0[18] = v47;
    *v47 = v0;
    v47[1] = sub_2408162BC;
    v48 = v0[8];

    return v49();
  }
}

uint64_t sub_2408162BC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_2408164D4;
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 72);

    v5 = sub_2408163E4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408163E4()
{
  v1 = v0[7];
  v0[3] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v3 = sub_2408D5230();
  v4 = v0[7];
  if (v3)
  {
  }

  else
  {
    swift_allocError();
    *v5 = v4;
  }

  swift_willThrow();
  v6 = v0[15];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2408164D4()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24081654C(uint64_t a1, void *a2)
{
  v3 = sub_2408D35B0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507268, &qword_2408D8240);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  v11 = sub_2408D3500();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = a2;
  v20[1] = a2;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v10, 0, 1, v11);
    (*(v12 + 32))(v15, v10, v11);
    (*(v12 + 16))(v6, v15, v11);
    v18(v6, 0, 6, v11);
    sub_2408D35D0();
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    v18(v10, 1, 1, v11);
    sub_2407D9440(v10, &qword_27E507268, &qword_2408D8240);
    sub_2408D52A0();
    v18(v6, 0, 6, v11);
    return sub_2408D35D0();
  }
}

uint64_t sub_2408167FC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507480, &qword_2408D7F40) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v5 = sub_2408D3D60();
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240816904, v2, 0);
}

uint64_t sub_240816904()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v0[18] = v2;
  if (v2)
  {
    v0[5] = sub_2408D3630();
    v0[6] = sub_2408763D8(&qword_27E507498, 255, MEMORY[0x277CED360]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v4 = *(MEMORY[0x277CED858] + 4);
    v17 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_240816BB0;
    v6 = v0[11];

    return v17(boxed_opaque_existential_1);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E506C48);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F10();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "We do not have a valid connector. Cancelling early.", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[13];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_240816BB0()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 160) = v5;
  *v5 = v4;
  v5[1] = sub_240816D0C;
  v6 = *(v1 + 104);

  return sub_2407EF354(v6, v1 + 16);
}

uint64_t sub_240816D0C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 96);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_240816E24, v3, 0);
}

uint64_t sub_240816E24()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[18];
    sub_2407D9440(v3, &qword_27E507480, &qword_2408D7F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v5 = 0;
    swift_willThrow();

    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[13];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[16];
    v11 = v0[17];
    (*(v2 + 32))(v11, v3, v1);
    (*(v2 + 16))(v12, v11, v1);
    v13 = (*(v2 + 88))(v12, v1);
    if (v13 == *MEMORY[0x277CED560])
    {
      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v14 = sub_2408D4B20();
      __swift_project_value_buffer(v14, qword_27E506C48);
      v15 = sub_2408D4B10();
      v16 = sub_2408D4F10();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2407CF000, v15, v16, "Setting up as client", v17, 2u);
        MEMORY[0x245CC9F60](v17, -1, -1);
      }

      v18 = v0[18];

      v28 = sub_2408176E0;
      v19 = swift_task_alloc();
      v0[21] = v19;
      *v19 = v0;
      v20 = sub_240817294;
    }

    else
    {
      if (v13 != *MEMORY[0x277CED568])
      {
        return sub_2408D5190();
      }

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
        *v24 = 0;
        _os_log_impl(&dword_2407CF000, v22, v23, "Setting up as server", v24, 2u);
        MEMORY[0x245CC9F60](v24, -1, -1);
      }

      v18 = v0[18];

      v28 = sub_2408227C4;
      v19 = swift_task_alloc();
      v0[23] = v19;
      *v19 = v0;
      v20 = sub_240817510;
    }

    v19[1] = v20;
    v25 = v0[11];
    v26 = v0[12];
    v27 = v0[10];

    return v28(v27, v25, v18);
  }
}

uint64_t sub_240817294()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_24081746C;
  }

  else
  {
    v6 = sub_2408173C0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408173C0()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];

  (*(v4 + 8))(v2, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24081746C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[15];

  (*(v4 + 8))(v2, v3);
  v5 = v0[22];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_240817510()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_24081763C;
  }

  else
  {
    v6 = sub_240876448;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24081763C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[15];

  (*(v4 + 8))(v2, v3);
  v5 = v0[24];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2408176E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v7 = sub_2408D3970();
  v4[20] = v7;
  v8 = *(v7 - 8);
  v4[21] = v8;
  v9 = *(v8 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v10 = sub_2408D3D60();
  v4[24] = v10;
  v11 = *(v10 - 8);
  v4[25] = v11;
  v12 = *(v11 + 64) + 15;
  v4[26] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v4[27] = v13;
  v14 = *(v13 - 8);
  v4[28] = v14;
  v15 = *(v14 + 64) + 15;
  v4[29] = swift_task_alloc();
  v16 = swift_task_alloc();
  v4[30] = v16;
  *v16 = v4;
  v16[1] = sub_2408178FC;

  return sub_240828170(a2);
}

uint64_t sub_2408178FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v5 = *(*v2 + 144);
  v8 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v6 = sub_240817C7C;
  }

  else
  {
    v6 = sub_240817A28;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240817A28()
{
  v20 = v0;
  v1 = v0[31];

  v0[33] = sub_2408709F8(v2);

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v3 = sub_2408D4B20();
  v0[34] = __swift_project_value_buffer(v3, qword_27E506C48);
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F20();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = v0[20];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8]);

    v10 = sub_2408D4EF0();
    v12 = v11;

    v13 = sub_2408CC504(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v4, v5, "Attempting authentication for discovered accounts: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  v14 = swift_task_alloc();
  v0[35] = v14;
  *v14 = v0;
  v14[1] = sub_240817D1C;
  v15 = v0[29];
  v16 = v0[16];
  v17 = v0[17];

  return sub_2408813B8(v15, v16);
}

uint64_t sub_240817C7C()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_240817D1C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v9 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 264);
    v5 = *(v2 + 144);

    v6 = sub_240818210;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = sub_240817E44;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_240817E44()
{
  v1 = v0[17];
  (*(v0[25] + 104))(v0[26], *MEMORY[0x277CED560], v0[24]);

  return MEMORY[0x2822009F8](sub_240817ECC, v1, 0);
}

uint64_t sub_240817ECC()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  sub_2407EEE04(v1 + 120, v0 + 16, &qword_27E506E98, &qword_2408D7FA0);
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_2407D9440(v0 + 16, &qword_27E506E98, &qword_2408D7FA0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
  }

  v5 = *(v0 + 264);
  v6 = swift_task_alloc();
  *(v0 + 296) = v6;
  *v6 = v0;
  v6[1] = sub_240818044;
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = *(v0 + 144);

  return sub_24082A4B4(v8, v7, v0 + 56, v5);
}

uint64_t sub_240818044(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *(*v2 + 264);
  v7 = *(*v2 + 208);
  v8 = *(*v2 + 200);
  v9 = *(*v2 + 192);
  v10 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  (*(v8 + 8))(v7, v9);

  sub_2407D9440(v4 + 56, &qword_27E507FA0, &qword_2408D7FB0);
  v11 = *(v3 + 144);
  if (v1)
  {
    v12 = sub_24081847C;
  }

  else
  {
    v12 = sub_2408182B8;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_240818210()
{
  v1 = v0[31];

  v2 = v0[36];
  v3 = v0[29];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[19];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2408182B8()
{
  v17 = v0;
  v1 = v0[38];
  v2 = v0[34];

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[38];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[14] = v5;
    sub_2408D3D80();

    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Discovered server and established router: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[40] = v11;
  *v11 = v0;
  v11[1] = sub_240818540;
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[16];

  return sub_240818DD0(v12, v14);
}

uint64_t sub_24081847C()
{
  v1 = v0[31];
  (*(v0[28] + 8))(v0[29], v0[27]);

  v2 = v0[39];
  v3 = v0[29];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[19];

  v8 = v0[1];

  return v8();
}

uint64_t sub_240818540()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_240818A08;
  }

  else
  {
    v6 = sub_24081866C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24081866C()
{
  v37 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &unk_27E506A20, &unk_2408D67F0);
    v4 = v0[31];
  }

  else
  {
    v5 = v0[34];
    v7 = v0[22];
    v6 = v0[23];
    (*(v2 + 32))(v6, v3, v1);
    v8 = *(v2 + 16);
    v8(v7, v6, v1);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[21];
    v12 = v0[22];
    v14 = v0[20];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v15 = 136315138;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
      v16 = sub_2408D5220();
      v34 = v8;
      v18 = v17;
      v35 = *(v13 + 8);
      v35(v12, v14);
      v19 = sub_2408CC504(v16, v18, &v36);
      v8 = v34;

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2407CF000, v9, v10, "Updating accounts with selection: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x245CC9F60](v33, -1, -1);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    else
    {

      v35 = *(v13 + 8);
      v35(v12, v14);
    }

    v20 = v0[31];
    v21 = v0[23];
    v22 = v0[20];
    v23 = v0[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507780, &unk_2408D85C0);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2408D71B0;
    v8(v26 + v25, v21, v22);
    v4 = sub_240870BF0(v26);
    swift_setDeallocating();
    v35(v26 + v25, v22);
    swift_deallocClassInstance();
    v35(v21, v22);
  }

  v0[42] = v4;

  v27 = swift_task_alloc();
  v0[43] = v27;
  *v27 = v0;
  v27[1] = sub_240818ADC;
  v28 = v0[38];
  v29 = v0[18];
  v30 = v0[15];
  v31 = v0[16];

  return sub_24081A428(v30, v28, v31, v4);
}

uint64_t sub_240818A08()
{
  v1 = v0[38];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];

  (*(v4 + 8))(v3, v5);

  v6 = v0[41];
  v7 = v0[29];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_240818ADC()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 352) = v0;

  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_240818CFC;
  }

  else
  {
    v7 = sub_240818C24;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_240818C24()
{
  v1 = v0[42];
  v2 = v0[38];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[19];

  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_240818CFC()
{
  v1 = v0[42];
  v2 = v0[38];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];

  (*(v4 + 8))(v3, v5);

  v6 = v0[44];
  v7 = v0[29];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[19];

  v12 = v0[1];

  return v12();
}

uint64_t sub_240818DD0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_2408D37E0();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = sub_2408D4130();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = sub_2408D3630();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v13 = sub_2408D3490();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240818FB4, v2, 0);
}

uint64_t sub_240818FB4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[9];
  v5 = v4[22];
  __swift_project_boxed_opaque_existential_1(v4 + 18, v4[21]);
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v6 = sub_2408D4770();
  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = *(MEMORY[0x277CED858] + 4);
    v24 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v8 = swift_task_alloc();
    v0[23] = v8;
    *v8 = v0;
    v8[1] = sub_240819258;
    v9 = v0[19];
    v10 = v0[8];

    return v24(v9);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v12 = sub_2408D4B20();
    __swift_project_value_buffer(v12, qword_27E506C48);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F10();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2407CF000, v13, v14, "Feature disabled, not asking for family member selection", v15, 2u);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    v16 = v0[7];

    v17 = sub_2408D3970();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = v0[22];
    v19 = v0[19];
    v20 = v0[16];
    v22 = v0[12];
    v21 = v0[13];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_240819258()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240819368, v2, 0);
}

uint64_t sub_240819368()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  sub_2408D3570();
  (*(v2 + 8))(v1, v3);
  v7 = sub_2408D4050();
  v0[24] = v7;
  (*(v6 + 8))(v4, v5);
  if ((v7 - 1) > 1)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v17 = sub_2408D4B20();
    __swift_project_value_buffer(v17, qword_27E506C48);
    v18 = sub_2408D4B10();
    v19 = sub_2408D4F20();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2407CF000, v18, v19, "age range not eligible for picking another member", v20, 2u);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    v21 = v0[7];

    v22 = sub_2408D3970();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v23 = v0[22];
    v24 = v0[19];
    v25 = v0[16];
    v27 = v0[12];
    v26 = v0[13];

    v28 = v0[1];

    return v28();
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    v0[25] = __swift_project_value_buffer(v8, qword_27E506C48);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_2407CF000, v9, v10, "Fetching family circle to ask for family member selection for age range: %lu", v11, 0xCu);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v12 = v0[9];

    sub_2407D91C4(v12 + 200, (v0 + 2));
    v13 = v0[5];
    v14 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
    v15 = *(MEMORY[0x277CEDD48] + 4);
    v16 = swift_task_alloc();
    v0[26] = v16;
    *v16 = v0;
    v16[1] = sub_2408196B8;

    return MEMORY[0x28213FE78](v13, v14);
  }
}

uint64_t sub_2408196B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v7 = *(v3 + 72);
  if (v1)
  {
    v8 = sub_24081A0D4;
  }

  else
  {
    v8 = sub_2408197EC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

size_t sub_2408197EC()
{
  v95 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F20();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2407CF000, v4, v5, "Finished fetching circle: %@", v7, 0xCu);
    sub_2407D9440(v8, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v10 = *(v0 + 216);

  v11 = &_swift_FORCE_LOAD___swiftAVFoundation___AppleIDSetupDaemon;
  v12 = [v10 me];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 isGuardian];

    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v32 = [*(v0 + 216) members];
    sub_2407EEDBC(0, &qword_27E507620, 0x277D08268);
    v33 = sub_2408D4DC0();

    if (v33 >> 62)
    {
      v34 = sub_2408D51A0();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v34)
    {
LABEL_5:
      v15 = *(v0 + 216);
      if (*(v0 + 192) == 1)
      {
        v16 = sub_2408D4F90();
        if (v16 >> 62)
        {
          v62 = v16;
          v17 = sub_2408D51A0();
          v16 = v62;
          if (v17)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
LABEL_8:
            v18 = v16;
            v94 = MEMORY[0x277D84F90];
            result = sub_24087B5DC(0, v17 & ~(v17 >> 63), 0);
            if ((v17 & 0x8000000000000000) == 0)
            {
              v20 = 0;
              v21 = *(v0 + 88);
              v22 = v94;
              v23 = v18;
              v91 = v18 & 0xC000000000000001;
              v24 = v18;
              do
              {
                if (v91)
                {
                  v25 = MEMORY[0x245CC9570](v20, v23);
                }

                else
                {
                  v25 = *(v23 + 8 * v20 + 32);
                }

                v26 = v25;
                v27 = *(v0 + 104);
                sub_2408D4FA0();

                v94 = v22;
                v29 = *(v22 + 16);
                v28 = *(v22 + 24);
                if (v29 >= v28 >> 1)
                {
                  sub_24087B5DC(v28 > 1, v29 + 1, 1);
                  v22 = v94;
                }

                v30 = *(v0 + 104);
                v31 = *(v0 + 80);
                ++v20;
                *(v22 + 16) = v29 + 1;
                (*(v21 + 32))(v22 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v29, v30, v31);
                v23 = v24;
              }

              while (v17 != v20);
LABEL_35:

              v11 = &_swift_FORCE_LOAD___swiftAVFoundation___AppleIDSetupDaemon;
LABEL_41:
              *(v0 + 232) = v22;
              v64 = *(v0 + 216);

              v65 = [v64 v11[108]];
              v66 = *(v0 + 216);
              if (v65)
              {

                v67 = [v66 canAddMembers];
              }

              else
              {
                v68 = [*(v0 + 216) members];
                sub_2407EEDBC(0, &qword_27E507620, 0x277D08268);
                v69 = sub_2408D4DC0();

                if (v69 >> 62)
                {
                  v70 = sub_2408D51A0();
                }

                else
                {
                  v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v67 = v70 == 0;
              }

              v71 = *(v0 + 200);

              v72 = sub_2408D4B10();
              v73 = sub_2408D4F20();

              if (os_log_type_enabled(v72, v73))
              {
                v74 = *(v0 + 80);
                v75 = swift_slowAlloc();
                v76 = swift_slowAlloc();
                v94 = v76;
                *v75 = 136315394;
                v77 = MEMORY[0x245CC9210](v22, v74);
                v79 = v78;

                v80 = sub_2408CC504(v77, v79, &v94);

                *(v75 + 4) = v80;
                *(v75 + 12) = 1024;
                *(v75 + 14) = v67;
                _os_log_impl(&dword_2407CF000, v72, v73, "Asking user to make a family member selection: %s canAddMembers: %{BOOL}d", v75, 0x12u);
                __swift_destroy_boxed_opaque_existential_0Tm(v76);
                MEMORY[0x245CC9F60](v76, -1, -1);
                MEMORY[0x245CC9F60](v75, -1, -1);
              }

              else
              {
              }

              v81 = *(v0 + 216);
              v82 = *(v0 + 192);
              v83 = swift_task_alloc();
              *(v0 + 240) = v83;
              *(v83 + 16) = v22;
              *(v83 + 24) = v67;
              v84 = swift_allocObject();
              *(v0 + 248) = v84;
              *(v84 + 16) = v81;
              *(v84 + 24) = v67;
              *(v84 + 32) = v82;
              v85 = *(MEMORY[0x277CED860] + 4);
              v93 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
              v86 = v81;
              v87 = swift_task_alloc();
              *(v0 + 256) = v87;
              v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
              *v87 = v0;
              v87[1] = sub_24081A17C;
              v89 = *(v0 + 56);
              v90 = *(v0 + 64);

              return v93(v89, sub_240875E70, v83, &unk_2408D82F0, v84, v88);
            }

            __break(1u);
            goto LABEL_54;
          }
        }

LABEL_40:

        v22 = MEMORY[0x277D84F90];
        goto LABEL_41;
      }

      v48 = sub_2408D4F80();
      if (v48 >> 62)
      {
        v63 = v48;
        v49 = sub_2408D51A0();
        v48 = v63;
        if (!v49)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v49)
        {
          goto LABEL_40;
        }
      }

      v50 = v48;
      v94 = MEMORY[0x277D84F90];
      result = sub_24087B5DC(0, v49 & ~(v49 >> 63), 0);
      if ((v49 & 0x8000000000000000) == 0)
      {
        v51 = 0;
        v52 = *(v0 + 88);
        v22 = v94;
        v53 = v50;
        v92 = v50 & 0xC000000000000001;
        v54 = v50;
        do
        {
          if (v92)
          {
            v55 = MEMORY[0x245CC9570](v51, v53);
          }

          else
          {
            v55 = *(v53 + 8 * v51 + 32);
          }

          v56 = v55;
          v57 = *(v0 + 96);
          sub_2408D4FA0();

          v94 = v22;
          v59 = *(v22 + 16);
          v58 = *(v22 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_24087B5DC(v58 > 1, v59 + 1, 1);
            v22 = v94;
          }

          v60 = *(v0 + 96);
          v61 = *(v0 + 80);
          ++v51;
          *(v22 + 16) = v59 + 1;
          (*(v52 + 32))(v22 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v59, v60, v61);
          v53 = v54;
        }

        while (v49 != v51);
        goto LABEL_35;
      }

LABEL_54:
      __break(1u);
      return result;
    }
  }

  v35 = *(v0 + 200);
  v36 = sub_2408D4B10();
  v37 = sub_2408D4F30();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2407CF000, v36, v37, "User is not a guardian and cannot sign in other users", v38, 2u);
    MEMORY[0x245CC9F60](v38, -1, -1);
  }

  v39 = *(v0 + 216);

  v40 = sub_2408D3500();
  sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
  swift_allocError();
  (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277CED2C0], v40);
  swift_willThrow();

  v42 = *(v0 + 176);
  v43 = *(v0 + 152);
  v44 = *(v0 + 128);
  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_24081A0D4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24081A17C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v11 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = sub_24081A360;
  }

  else
  {
    v7 = v2[30];
    v6 = v2[31];
    v8 = v2[29];
    v9 = v2[9];

    v5 = sub_24081A2C0;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24081A2C0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24081A360()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);

  v4 = *(v0 + 264);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 128);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24081A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v7 = sub_2408D3D70();
  v5[31] = v7;
  v8 = *(v7 - 8);
  v5[32] = v8;
  v9 = *(v8 + 64) + 15;
  v5[33] = swift_task_alloc();
  v10 = type metadata accessor for SignInReport(0);
  v5[34] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  v5[36] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v14 = sub_2408D3490();
  v5[42] = v14;
  v15 = *(v14 - 8);
  v5[43] = v15;
  v16 = *(v15 + 64) + 15;
  v5[44] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v18 = sub_2408D38D0();
  v5[46] = v18;
  v19 = *(v18 - 8);
  v5[47] = v19;
  v20 = *(v19 + 64) + 15;
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA0, &unk_2408D76A0) - 8) + 64) + 15;
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v22 = sub_2408D3E10();
  v5[57] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v5[58] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075E8, &qword_2408D8278) - 8) + 64) + 15;
  v5[59] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8) - 8) + 64) + 15;
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v5[62] = swift_task_alloc();
  v27 = sub_2408D4660();
  v5[63] = v27;
  v28 = *(v27 - 8);
  v5[64] = v28;
  v29 = *(v28 + 64) + 15;
  v5[65] = swift_task_alloc();
  v30 = sub_2408D3970();
  v5[66] = v30;
  v31 = *(v30 - 8);
  v5[67] = v31;
  v32 = *(v31 + 64) + 15;
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v33 = sub_2408D3C20();
  v5[77] = v33;
  v34 = *(v33 - 8);
  v5[78] = v34;
  v35 = *(v34 + 64) + 15;
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v36 = sub_2408D3630();
  v5[82] = v36;
  v37 = *(v36 - 8);
  v5[83] = v37;
  v38 = *(v37 + 64) + 15;
  v5[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24081AA18, v4, 0);
}

uint64_t sub_24081AA18()
{
  v20 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_2408D4B20();
  v0[85] = __swift_project_value_buffer(v2, qword_27E506C48);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v0[23] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Beginning setup as client with model: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = v0[28];
  v12 = *(v11 + 240);
  *(v11 + 240) = v0[25];

  v0[86] = sub_2407F585C(MEMORY[0x277D84F90]);
  v13 = *(MEMORY[0x277CED858] + 4);
  v18 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v14 = swift_task_alloc();
  v0[87] = v14;
  *v14 = v0;
  v14[1] = sub_24081AC54;
  v15 = v0[84];
  v16 = v0[26];

  return v18(v15);
}

uint64_t sub_24081AC54()
{
  v1 = *(*v0 + 696);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24081AD64, v2, 0);
}

void sub_24081AD64()
{
  v152 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 624);
  v6 = *(v0 + 616);
  v7 = *(v0 + 216);
  sub_2408D3540();
  v8 = *(v2 + 8);
  *(v0 + 704) = v8;
  *(v0 + 712) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = sub_2408D3B20();
  *(v0 + 720) = v9;
  v10 = *(v5 + 8);
  *(v0 + 728) = v10;
  *(v0 + 736) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v6);
  v11 = *(v7 + 16);
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = *(v0 + 536);
  v13 = *(v0 + 216);
  v14 = sub_2408782D0(*(v7 + 16), 0);
  v147 = sub_2408784D4(&v151, &v14[(*(v12 + 80) + 32) & ~*(v12 + 80)], v11, v13);

  sub_2407D17F4();
  if (v147 != v11)
  {
    __break(1u);
LABEL_4:

    v14 = MEMORY[0x277D84F90];
  }

  v151 = v14;
  sub_240872EC8(&v151, v9);

  v15 = *(v0 + 680);
  v16 = *(v0 + 216);
  v17 = v151;
  *(v0 + 744) = v151;

  v18 = sub_2408D4B10();
  v19 = sub_2408D4F20();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 528);
    v21 = *(v0 + 216);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v151 = v23;
    *v22 = 136315138;
    sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8]);
    v24 = sub_2408D4EF0();
    v26 = sub_2408CC504(v24, v25, &v151);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2407CF000, v18, v19, "Sorted discovered accounts: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x245CC9F60](v23, -1, -1);
    MEMORY[0x245CC9F60](v22, -1, -1);
  }

  v27 = *(v17 + 2);
  *(v0 + 752) = v27;
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v29 = *(v0 + 536);
    v30 = *(v0 + 688);
    *(v0 + 808) = 0;
    *(v0 + 800) = v28;
    *(v0 + 792) = v30;
    *(v0 + 784) = 0;
    v31 = *(v0 + 744);
    if (*(v31 + 16))
    {
      v32 = *(v0 + 608);
      v34 = *(v29 + 16);
      v33 = v29 + 16;
      v35 = *(v0 + 528);
      v36 = *(v33 + 64);
      *(v0 + 92) = v36;
      *(v0 + 816) = *(v33 + 56);
      *(v0 + 824) = v34;
      *(v0 + 832) = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v34(v32, v31 + ((v36 + 32) & ~v36), v35);
      v37 = *(MEMORY[0x277CED858] + 4);
      v148 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v38 = swift_task_alloc();
      *(v0 + 840) = v38;
      *v38 = v0;
      v39 = sub_24081BAE4;
      goto LABEL_10;
    }

    goto LABEL_52;
  }

  *(v0 + 768) = *(v0 + 688);
  *(v0 + 760) = v28;
  v42 = sub_2407F5674(v28);
  v43 = sub_2407F5A54(v28);
  v44 = *(v28 + 16);
  *(v0 + 776) = v44;
  if (!v44)
  {
    v71 = *(v0 + 744);

LABEL_24:

    *(v0 + 880) = v42;
    *(v0 + 872) = v43;
    v72 = *(v0 + 760);
    v73 = *(v0 + 720);

    v74 = *(v72 + 16);
    if (!v74)
    {
LABEL_36:
      v115 = *(v0 + 680);
      v116 = sub_2408D4B10();
      v117 = sub_2408D4F10();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *v118 = 0;
        _os_log_impl(&dword_2407CF000, v116, v117, "Sending termination command via router", v118, 2u);
        MEMORY[0x245CC9F60](v118, -1, -1);
      }

      v119 = *(v0 + 464);

      sub_2408D3E00();
      v120 = *(MEMORY[0x277CED570] + 4);
      v150 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
      v121 = swift_task_alloc();
      *(v0 + 888) = v121;
      v122 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608]);
      *v121 = v0;
      v121[1] = sub_24081D504;
      v124 = *(v0 + 464);
      v123 = *(v0 + 472);
      v125 = *(v0 + 456);
      v126 = *(v0 + 200);

      v150(v123, v124, v125, v122);
      return;
    }

    v75 = 0;
    v76 = *(v0 + 536);
    v149 = (v76 + 8);
    while (1)
    {
      v77 = *(v0 + 760);
      if (v75 >= *(v77 + 16))
      {
        goto LABEL_51;
      }

      v78 = *(v0 + 488);
      v79 = *(v76 + 16);
      v79(*(v0 + 584), v77 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v75, *(v0 + 528));
      sub_2408D37A0();
      v80 = sub_2408D3720();
      if ((*(*(v80 - 8) + 48))(v78, 1, v80) != 1)
      {
        break;
      }

      v81 = *(v0 + 488);
      ++v75;
      (*v149)(*(v0 + 584), *(v0 + 528));
      sub_2407D9440(v81, &qword_27E506A18, &qword_2408D67E8);
      if (v74 == v75)
      {
        goto LABEL_36;
      }
    }

    v145 = *(v0 + 768);
    v82 = *(v0 + 600);
    v83 = *(v0 + 592);
    v84 = *(v0 + 584);
    v85 = *(v0 + 536);
    v86 = *(v0 + 528);
    v87 = *(v0 + 424);
    sub_2407D9440(*(v0 + 488), &qword_27E506A18, &qword_2408D67E8);
    v88 = *(v85 + 32);
    v88(v83, v84, v86);
    v88(v82, v83, v86);
    sub_2408D38F0();
    if (v145[2] && (v89 = *(v0 + 768), v90 = sub_2408CCBA8(*(v0 + 424)), (v91 & 1) != 0))
    {
      v92 = *(v0 + 680);
      v93 = *(v0 + 600);
      v94 = *(v0 + 576);
      v95 = *(v0 + 528);
      v96 = *(v0 + 424);
      v97 = *(v0 + 368);
      v98 = *(v0 + 376);
      v99 = *(*(v0 + 768) + 56) + 16 * v90;
      v100 = *v99;
      *(v0 + 912) = *v99;
      v101 = *(v99 + 8);
      *(v0 + 89) = v101;
      v146 = v100;
      v144 = v101;
      sub_240875D9C(v100, v101);
      (*(v98 + 8))(v96, v97);
      v79(v94, v93, v95);
      v102 = sub_2408D4B10();
      v103 = sub_2408D4F20();
      v104 = os_log_type_enabled(v102, v103);
      v105 = *(v0 + 576);
      v106 = *(v0 + 528);
      if (v104)
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v151 = v108;
        *v107 = 136315138;
        sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
        v109 = sub_2408D5220();
        v111 = v110;
        v112 = *v149;
        (*v149)(v105, v106);
        v113 = sub_2408CC504(v109, v111, &v151);

        *(v107 + 4) = v113;
        _os_log_impl(&dword_2407CF000, v102, v103, "Attempting to run family repair on client for account: %s", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v108);
        MEMORY[0x245CC9F60](v108, -1, -1);
        MEMORY[0x245CC9F60](v107, -1, -1);
      }

      else
      {

        v112 = *v149;
        (*v149)(v105, v106);
      }

      *(v0 + 920) = v112;
      if ((v144 & 1) == 0)
      {

        v140 = swift_task_alloc();
        *(v0 + 928) = v140;
        *v140 = v0;
        v140[1] = sub_24081DFC4;
        v141 = *(v0 + 600);
        v142 = *(v0 + 224);
        v143 = *(v0 + 208);

        sub_240821198(v143, v141, v146);
        return;
      }

      v149 = (v0 + 920);
      *(v0 + 144) = v146;
      v128 = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      swift_willThrowTypedImpl();
      v129 = *(v0 + 680);
      v130 = v146;
      v131 = sub_2408D4B10();
      v132 = sub_2408D4F30();

      v133 = os_log_type_enabled(v131, v132);
      v134 = *(v0 + 89);
      v135 = *(v0 + 912);
      if (v133)
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *v136 = 138412290;
        v138 = v146;
        v139 = _swift_stdlib_bridgeErrorToNSError();
        *(v136 + 4) = v139;
        *v137 = v139;
        _os_log_impl(&dword_2407CF000, v131, v132, "Failed to run family repair: %@", v136, 0xCu);
        sub_2407D9440(v137, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v137, -1, -1);
        MEMORY[0x245CC9F60](v136, -1, -1);

        sub_24080F564(v135, v134);
      }

      else
      {
        sub_24080F564(*(v0 + 912), *(v0 + 89));
      }
    }

    else
    {
      (*(*(v0 + 376) + 8))(*(v0 + 424), *(v0 + 368));
    }

    v114 = *(v0 + 536) + 8;
    (*v149)(*(v0 + 600), *(v0 + 528));
    goto LABEL_36;
  }

  *(v0 + 108) = *(*(v0 + 536) + 80);
  *(v0 + 1064) = *MEMORY[0x277CED208];

  v45 = 0;
  while (1)
  {
    *(v0 + 984) = v43;
    *(v0 + 976) = v42;
    *(v0 + 968) = v45;
    *(v0 + 960) = v42;
    *(v0 + 952) = v43;
    *(v0 + 944) = 0;
    v49 = *(v0 + 760);
    if (v45 >= *(v49 + 16))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }

    v50 = *(v0 + 768);
    v51 = *(v0 + 568);
    v52 = *(v0 + 536);
    v53 = *(v0 + 528);
    v54 = *(v0 + 416);
    v55 = *(v52 + 16);
    v52 += 16;
    v56 = v49 + ((*(v0 + 108) + 32) & ~*(v0 + 108)) + *(v52 + 56) * v45;
    *(v0 + 992) = v55;
    *(v0 + 1000) = v52 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v55(v51, v56, v53);
    sub_2408D38F0();
    if (*(v50 + 16))
    {
      v57 = *(v0 + 768);
      v58 = sub_2408CCBA8(*(v0 + 416));
      if (v59)
      {
        break;
      }
    }

    v46 = *(v0 + 568);
    v47 = *(v0 + 536);
    v48 = *(v0 + 528);
    (*(*(v0 + 376) + 8))(*(v0 + 416), *(v0 + 368));
    (*(v47 + 8))(v46, v48);
LABEL_16:
    v45 = *(v0 + 968) + 1;
    if (v45 == *(v0 + 776))
    {
      v70 = *(v0 + 744);
      goto LABEL_24;
    }
  }

  v60 = *(v0 + 416);
  v62 = *(v0 + 368);
  v61 = *(v0 + 376);
  v63 = *(*(v0 + 768) + 56) + 16 * v58;
  v64 = *v63;
  *(v0 + 1032) = *v63;
  v65 = *(v63 + 8);
  sub_240875D9C(v64, v65);
  v66 = *(v61 + 8);
  *(v0 + 1040) = v66;
  *(v0 + 1048) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v66(v60, v62);
  if (v65)
  {
    v67 = *(v0 + 568);
    v68 = *(v0 + 536);
    v69 = *(v0 + 528);
    *(v0 + 152) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    (*(v68 + 8))(v67, v69);
    sub_24080F564(v64, 1);
    goto LABEL_16;
  }

  v127 = *(MEMORY[0x277CED858] + 4);
  v148 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v38 = swift_task_alloc();
  *(v0 + 1056) = v38;
  *v38 = v0;
  v39 = sub_24081FB44;
LABEL_10:
  v38[1] = v39;
  v40 = *(v0 + 672);
  v41 = *(v0 + 208);

  v148(v40);
}

uint64_t sub_24081BAE4()
{
  v1 = *(*v0 + 840);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24081BBF4, v2, 0);
}

uint64_t sub_24081BBF4()
{
  v15 = v0[103];
  v16 = v0[104];
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[84];
  v4 = v0[82];
  v5 = v0[76];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[62];
  v17 = v0[26];
  v18 = v0[28];
  sub_2408D3520();
  v2(v3, v4);
  swift_beginAccess();
  v15(v9, v5, v7);
  (*(v6 + 56))(v9, 0, 1, v7);
  sub_2408D4640();
  v10 = swift_task_alloc();
  v0[106] = v10;
  v10[2] = v18;
  v10[3] = v17;
  v10[4] = v8;
  v11 = *(MEMORY[0x277CEDE70] + 4);
  v12 = swift_task_alloc();
  v0[107] = v12;
  v13 = type metadata accessor for AuthenticationReport(0);
  v0[108] = v13;
  *v12 = v0;
  v12[1] = sub_24081BD94;

  return MEMORY[0x2821400E8](v0 + 10, &unk_2408D8288, v10, v13);
}

uint64_t sub_24081BD94()
{
  v1 = *(*v0 + 856);
  v2 = *(*v0 + 848);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24081BEC0, v3, 0);
}

uint64_t sub_24081BEC0()
{
  v269 = v0;
  v1 = *(v0 + 80);
  if (*(v0 + 88))
  {
    v2 = *(v0 + 800);
    v3 = *(v0 + 744);
    v4 = *(v0 + 720);
    v5 = *(v0 + 264);
    v6 = *(v0 + 248);
    v7 = v1;

    *(v0 + 112) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();

    *(v0 + 120) = v1;
    v8 = v1;
    if (swift_dynamicCast())
    {
      v9 = (*(*(v0 + 256) + 88))(*(v0 + 264), *(v0 + 248));
      if (v9 == *MEMORY[0x277CED588])
      {
        v10 = v9;
        v11 = *(v0 + 680);
        v259 = v1;
        sub_24080F564(v1, 1);
        v12 = sub_2408D4B10();
        v13 = sub_2408D4F20();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_2407CF000, v12, v13, "Throwing error during auth: CommandRouter.Failure.userCancelled", v14, 2u);
          MEMORY[0x245CC9F60](v14, -1, -1);
        }

        v15 = *(v0 + 792);
        v16 = *(v0 + 536);
        v252 = *(v0 + 528);
        v255 = *(v0 + 608);
        v17 = *(v0 + 520);
        v19 = *(v0 + 504);
        v18 = *(v0 + 512);
        v21 = *(v0 + 248);
        v20 = *(v0 + 256);

        sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590]);
        swift_allocError();
        (*(v20 + 104))(v22, v10, v21);
        swift_willThrow();
        sub_24080F564(v259, 1);

        (*(v18 + 8))(v17, v19);
        (*(v16 + 8))(v255, v252);
LABEL_19:

        v62 = *(v0 + 672);
        v63 = *(v0 + 648);
        v64 = *(v0 + 640);
        v65 = *(v0 + 632);
        v66 = *(v0 + 608);
        v67 = *(v0 + 600);
        v68 = *(v0 + 592);
        v69 = *(v0 + 584);
        v70 = *(v0 + 576);
        v71 = *(v0 + 568);
        v220 = *(v0 + 560);
        v221 = *(v0 + 552);
        v222 = *(v0 + 544);
        v223 = *(v0 + 520);
        v224 = *(v0 + 496);
        v225 = *(v0 + 488);
        v226 = *(v0 + 480);
        v227 = *(v0 + 472);
        v228 = *(v0 + 464);
        v229 = *(v0 + 448);
        v230 = *(v0 + 440);
        v231 = *(v0 + 432);
        v232 = *(v0 + 424);
        v233 = *(v0 + 416);
        v234 = *(v0 + 408);
        v235 = *(v0 + 400);
        v236 = *(v0 + 392);
        v237 = *(v0 + 384);
        v238 = *(v0 + 360);
        v239 = *(v0 + 352);
        v240 = *(v0 + 328);
        v241 = *(v0 + 320);
        v242 = *(v0 + 312);
        v244 = *(v0 + 304);
        v246 = *(v0 + 296);
        v249 = *(v0 + 280);
        v253 = *(v0 + 264);
        v256 = *(v0 + 240);
        v260 = *(v0 + 232);

        v72 = *(v0 + 8);

        return v72();
      }

      (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    }

    v45 = *(v0 + 680);

    v46 = v1;
    v47 = sub_2408D4B10();
    v48 = sub_2408D4F20();
    sub_24080F564(v1, 1);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v268[0] = v50;
      *v49 = 136315138;
      *(v0 + 128) = v1;
      v51 = v1;
      v52 = sub_2408D4D40();
      v54 = sub_2408CC504(v52, v53, v268);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_2407CF000, v47, v48, "Throwing error during auth: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x245CC9F60](v50, -1, -1);
      MEMORY[0x245CC9F60](v49, -1, -1);
    }

    v55 = *(v0 + 792);
    v56 = *(v0 + 608);
    v57 = *(v0 + 536);
    v58 = *(v0 + 528);
    v59 = *(v0 + 520);
    v60 = *(v0 + 504);
    v61 = *(v0 + 512);
    swift_willThrow();
    sub_24080F564(v1, 1);
    (*(v61 + 8))(v59, v60);
    (*(v57 + 8))(v56, v58);
    goto LABEL_19;
  }

  v23 = *(v0 + 680);
  sub_240875D9C(*(v0 + 80), 0);

  v24 = sub_2408D4B10();
  v25 = sub_2408D4F20();
  sub_24080F564(v1, 0);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 864);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v268[0] = v28;
    *v27 = 136315138;
    *(v0 + 136) = v1;

    v29 = sub_2408D4D40();
    v31 = sub_2408CC504(v29, v30, v268);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_2407CF000, v24, v25, "Report: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x245CC9F60](v28, -1, -1);
    MEMORY[0x245CC9F60](v27, -1, -1);
  }

  v32 = *(v0 + 368);
  v33 = *(v0 + 376);
  v35 = *(v0 + 232);
  v34 = *(v0 + 240);
  sub_2408CBA10(v34);
  sub_2407EEE04(v34, v35, &qword_27E507F00, &qword_2408D6D50);
  if ((*(v33 + 48))(v35, 1, v32) == 1)
  {
    sub_2407D9440(*(v0 + 240), &qword_27E507F00, &qword_2408D6D50);
    sub_24080F564(v1, 0);
    v264 = *(v0 + 784);
  }

  else
  {
    v36 = *(v0 + 784);
    v37 = *(v0 + 608);
    v38 = *(v0 + 384);
    (*(*(v0 + 376) + 32))(v38, *(v0 + 232), *(v0 + 368));
    sub_2407DDB18(v38, v37);
    v39 = *(v0 + 384);
    v40 = *(v0 + 368);
    if (v36)
    {
      v41 = *(*(v0 + 376) + 8);
      v42 = *(v0 + 384);
      v43 = *(v0 + 368);

      return v41(v42, v43);
    }

    v73 = *(v0 + 240);
    v265 = *(v0 + 376);
    sub_24080F564(v1, 0);
    (*(v265 + 8))(v39, v40);
    sub_2407D9440(v73, &qword_27E507F00, &qword_2408D6D50);
    v264 = 0;
  }

  v74 = *(v0 + 680);

  v75 = sub_2408D4B10();
  v76 = sub_2408D4F20();
  sub_24080F564(v1, 0);
  if (os_log_type_enabled(v75, v76))
  {
    v77 = *(v0 + 608);
    v78 = *(v0 + 528);
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v268[0] = v80;
    *v79 = 136315394;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
    v81 = sub_2408D5220();
    v83 = sub_2408CC504(v81, v82, v268);

    *(v79 + 4) = v83;
    *(v79 + 12) = 2080;
    *(v0 + 96) = v1;
    *(v0 + 104) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075F0, &qword_2408D8290);
    v84 = sub_2408D4D40();
    v86 = sub_2408CC504(v84, v85, v268);

    *(v79 + 14) = v86;
    _os_log_impl(&dword_2407CF000, v75, v76, "Finished authenticating account (%s) with report: %s", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v80, -1, -1);
    MEMORY[0x245CC9F60](v79, -1, -1);
  }

  v87 = v1;
  v247 = *(v0 + 824);
  v250 = *(v0 + 832);
  v254 = *(v0 + 800);
  v88 = *(v0 + 792);
  v89 = *(v0 + 608);
  v90 = *(v0 + 544);
  v91 = *(v0 + 528);
  v92 = *(v0 + 432);
  v94 = *(v0 + 368);
  v93 = *(v0 + 376);
  swift_beginAccess();
  sub_2408D38F0();
  swift_endAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v268[0] = v88;
  v261 = v87;
  sub_2408C9E10(v87, 0, v92, isUniquelyReferenced_nonNull_native);
  (*(v93 + 8))(v92, v94);
  v257 = v268[0];
  v247(v90, v89, v91);
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(v0 + 800);
  if ((v96 & 1) == 0)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v99 = *(v97 + 2);
    v98 = *(v97 + 3);
    if (v99 >= v98 >> 1)
    {
      v97 = sub_240869C28(v98 > 1, v99 + 1, 1, v97);
    }

    v100 = *(v0 + 816);
    v248 = *(v0 + 608);
    v251 = *(v0 + 752);
    v101 = *(v0 + 544);
    v102 = *(v0 + 536);
    v103 = *(v0 + 528);
    v105 = *(v0 + 504);
    v104 = *(v0 + 512);
    v243 = *(v0 + 520);
    v245 = *(v0 + 808) + 1;
    v106 = (*(v0 + 92) + 32) & ~*(v0 + 92);
    sub_24080F564(v261, 0);
    *(v97 + 2) = v99 + 1;
    (*(v102 + 32))(&v97[v106 + v100 * v99], v101, v103);
    (*(v104 + 8))(v243, v105);
    result = (*(v102 + 8))(v248, v103);
    if (v245 != v251)
    {
      break;
    }

    *(v0 + 768) = v257;
    *(v0 + 760) = v97;
    v107 = MEMORY[0x277D84F90];
    v108 = sub_2407F5674(MEMORY[0x277D84F90]);
    v109 = sub_2407F5A54(v107);
    v110 = *(v97 + 2);
    *(v0 + 776) = v110;
    v111 = v264;
    if (!v110)
    {
      v149 = *(v0 + 744);

LABEL_45:

      *(v0 + 880) = v108;
      *(v0 + 872) = v109;
      v97 = *(v0 + 760);
      v150 = *(v0 + 720);

      v151 = *(v97 + 2);
      if (!v151)
      {
LABEL_57:
        v191 = *(v0 + 680);
        v192 = sub_2408D4B10();
        v193 = sub_2408D4F10();
        if (os_log_type_enabled(v192, v193))
        {
          v194 = swift_slowAlloc();
          *v194 = 0;
          _os_log_impl(&dword_2407CF000, v192, v193, "Sending termination command via router", v194, 2u);
          MEMORY[0x245CC9F60](v194, -1, -1);
        }

        v195 = *(v0 + 464);

        sub_2408D3E00();
        v196 = *(MEMORY[0x277CED570] + 4);
        v267 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
        v197 = swift_task_alloc();
        *(v0 + 888) = v197;
        v198 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608]);
        *v197 = v0;
        v197[1] = sub_24081D504;
        v200 = *(v0 + 464);
        v199 = *(v0 + 472);
        v201 = *(v0 + 456);
        v202 = *(v0 + 200);

        return v267(v199, v200, v201, v198);
      }

      v152 = 0;
      v153 = *(v0 + 536);
      v264 = (v153 + 8);
      while (1)
      {
        v154 = *(v0 + 760);
        if (v152 >= *(v154 + 16))
        {
          goto LABEL_72;
        }

        v155 = *(v0 + 488);
        v156 = *(v153 + 16);
        v156(*(v0 + 584), v154 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v152, *(v0 + 528));
        sub_2408D37A0();
        v157 = sub_2408D3720();
        if ((*(*(v157 - 8) + 48))(v155, 1, v157) != 1)
        {
          break;
        }

        v97 = *(v0 + 488);
        ++v152;
        (*v264)(*(v0 + 584), *(v0 + 528));
        sub_2407D9440(v97, &qword_27E506A18, &qword_2408D67E8);
        if (v151 == v152)
        {
          goto LABEL_57;
        }
      }

      v262 = *(v0 + 768);
      v158 = *(v0 + 600);
      v159 = *(v0 + 592);
      v160 = *(v0 + 584);
      v161 = *(v0 + 536);
      v162 = *(v0 + 528);
      v163 = *(v0 + 424);
      sub_2407D9440(*(v0 + 488), &qword_27E506A18, &qword_2408D67E8);
      v164 = *(v161 + 32);
      v164(v159, v160, v162);
      v164(v158, v159, v162);
      sub_2408D38F0();
      if (*(v262 + 16) && (v165 = *(v0 + 768), v166 = sub_2408CCBA8(*(v0 + 424)), (v167 & 1) != 0))
      {
        v168 = *(v0 + 680);
        v169 = *(v0 + 600);
        v170 = *(v0 + 576);
        v171 = *(v0 + 528);
        v172 = *(v0 + 424);
        v173 = *(v0 + 368);
        v174 = *(v0 + 376);
        v175 = *(*(v0 + 768) + 56) + 16 * v166;
        v176 = *v175;
        *(v0 + 912) = *v175;
        v177 = *(v175 + 8);
        *(v0 + 89) = v177;
        v263 = v176;
        v258 = v177;
        sub_240875D9C(v176, v177);
        (*(v174 + 8))(v172, v173);
        v156(v170, v169, v171);
        v178 = sub_2408D4B10();
        v179 = sub_2408D4F20();
        v180 = os_log_type_enabled(v178, v179);
        v181 = *(v0 + 576);
        v182 = *(v0 + 528);
        if (v180)
        {
          v183 = swift_slowAlloc();
          v184 = swift_slowAlloc();
          v268[0] = v184;
          *v183 = 136315138;
          sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
          v185 = sub_2408D5220();
          v187 = v186;
          v188 = *v264;
          (*v264)(v181, v182);
          v189 = sub_2408CC504(v185, v187, v268);

          *(v183 + 4) = v189;
          _os_log_impl(&dword_2407CF000, v178, v179, "Attempting to run family repair on client for account: %s", v183, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v184);
          MEMORY[0x245CC9F60](v184, -1, -1);
          MEMORY[0x245CC9F60](v183, -1, -1);
        }

        else
        {

          v188 = *v264;
          (*v264)(v181, v182);
        }

        *(v0 + 920) = v188;
        if ((v258 & 1) == 0)
        {

          v216 = swift_task_alloc();
          *(v0 + 928) = v216;
          *v216 = v0;
          v216[1] = sub_24081DFC4;
          v217 = *(v0 + 600);
          v218 = *(v0 + 224);
          v219 = *(v0 + 208);

          return (sub_240821198)(v219, v217, v263);
        }

        v264 = (v0 + 920);
        *(v0 + 144) = v263;
        v204 = v263;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
        swift_willThrowTypedImpl();
        v205 = *(v0 + 680);
        v206 = v263;
        v207 = sub_2408D4B10();
        v208 = sub_2408D4F30();

        v209 = os_log_type_enabled(v207, v208);
        v210 = *(v0 + 89);
        v211 = *(v0 + 912);
        if (v209)
        {
          v212 = swift_slowAlloc();
          v213 = swift_slowAlloc();
          *v212 = 138412290;
          v214 = v263;
          v215 = _swift_stdlib_bridgeErrorToNSError();
          *(v212 + 4) = v215;
          *v213 = v215;
          _os_log_impl(&dword_2407CF000, v207, v208, "Failed to run family repair: %@", v212, 0xCu);
          sub_2407D9440(v213, &qword_27E506AB0, &unk_2408D6830);
          MEMORY[0x245CC9F60](v213, -1, -1);
          MEMORY[0x245CC9F60](v212, -1, -1);

          sub_24080F564(v211, v210);
        }

        else
        {
          sub_24080F564(*(v0 + 912), *(v0 + 89));
        }
      }

      else
      {
        (*(*(v0 + 376) + 8))(*(v0 + 424), *(v0 + 368));
      }

      v190 = *(v0 + 536) + 8;
      (*v264)(*(v0 + 600), *(v0 + 528));
      goto LABEL_57;
    }

    *(v0 + 108) = *(*(v0 + 536) + 80);
    *(v0 + 1064) = *MEMORY[0x277CED208];

    v112 = 0;
    while (1)
    {
      *(v0 + 984) = v109;
      *(v0 + 976) = v108;
      *(v0 + 968) = v112;
      *(v0 + 960) = v108;
      *(v0 + 952) = v109;
      *(v0 + 944) = v111;
      v115 = *(v0 + 760);
      if (v112 >= *(v115 + 16))
      {
        break;
      }

      v116 = *(v0 + 768);
      v117 = *(v0 + 568);
      v118 = *(v0 + 536);
      v119 = *(v0 + 528);
      v120 = *(v0 + 416);
      v121 = *(v118 + 16);
      v118 += 16;
      v122 = v115 + ((*(v0 + 108) + 32) & ~*(v0 + 108)) + *(v118 + 56) * v112;
      *(v0 + 992) = v121;
      *(v0 + 1000) = v118 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v121(v117, v122, v119);
      sub_2408D38F0();
      if (*(v116 + 16) && (v123 = *(v0 + 768), v124 = sub_2408CCBA8(*(v0 + 416)), (v125 & 1) != 0))
      {
        v126 = *(v0 + 416);
        v128 = *(v0 + 368);
        v127 = *(v0 + 376);
        v129 = *(*(v0 + 768) + 56) + 16 * v124;
        v97 = *v129;
        *(v0 + 1032) = *v129;
        v130 = *(v129 + 8);
        sub_240875D9C(v97, v130);
        v131 = *(v127 + 8);
        *(v0 + 1040) = v131;
        *(v0 + 1048) = (v127 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v131(v126, v128);
        if ((v130 & 1) == 0)
        {
          v203 = *(MEMORY[0x277CED858] + 4);
          v266 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
          v144 = swift_task_alloc();
          *(v0 + 1056) = v144;
          *v144 = v0;
          v145 = sub_24081FB44;
LABEL_40:
          v144[1] = v145;
          v146 = *(v0 + 672);
          v147 = *(v0 + 208);

          return v266(v146);
        }

        v132 = *(v0 + 568);
        v133 = *(v0 + 536);
        v134 = *(v0 + 528);
        *(v0 + 152) = v97;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
        swift_willThrowTypedImpl();
        (*(v133 + 8))(v132, v134);
        sub_24080F564(v97, 1);
        v111 = v264;
      }

      else
      {
        v97 = *(v0 + 568);
        v113 = *(v0 + 536);
        v114 = *(v0 + 528);
        (*(*(v0 + 376) + 8))(*(v0 + 416), *(v0 + 368));
        (*(v113 + 8))(v97, v114);
      }

      v112 = *(v0 + 968) + 1;
      if (v112 == *(v0 + 776))
      {
        v148 = *(v0 + 744);
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    v97 = sub_240869C28(0, *(v97 + 2) + 1, 1, v97);
  }

  v135 = *(v0 + 808) + 1;
  *(v0 + 808) = v135;
  *(v0 + 800) = v97;
  *(v0 + 792) = v257;
  *(v0 + 784) = v264;
  v136 = *(v0 + 744);
  if (v135 < *(v136 + 16))
  {
    v137 = *(v0 + 608);
    v138 = *(v0 + 536);
    v139 = *(v0 + 528);
    v140 = *(v138 + 16);
    v138 += 16;
    v141 = *(v138 + 64);
    *(v0 + 92) = v141;
    v142 = *(v138 + 56);
    *(v0 + 816) = v142;
    *(v0 + 824) = v140;
    *(v0 + 832) = v138 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v140(v137, v136 + ((v141 + 32) & ~v141) + v142 * v135, v139);
    v143 = *(MEMORY[0x277CED858] + 4);
    v266 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v144 = swift_task_alloc();
    *(v0 + 840) = v144;
    *v144 = v0;
    v145 = sub_24081BAE4;
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t sub_24081D504()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;

  v5 = *(v2 + 224);
  if (v0)
  {

    v6 = sub_24081D744;
  }

  else
  {
    v6 = sub_24081D63C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24081D63C()
{
  v1 = v0[59];
  v2 = sub_2408D3E40();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_2407D9440(v1, &qword_27E5075E8, &qword_2408D8278);
  v3 = swift_task_alloc();
  v0[112] = v3;
  *v3 = v0;
  v3[1] = sub_24081D84C;
  v4 = v0[28];
  v5 = v0[26];

  return sub_240822018(v5);
}

uint64_t sub_24081D744()
{
  v1 = v0[59];
  v2 = sub_2408D3E40();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_2407D9440(v1, &qword_27E5075E8, &qword_2408D8278);
  v3 = swift_task_alloc();
  v0[112] = v3;
  *v3 = v0;
  v3[1] = sub_24081D84C;
  v4 = v0[28];
  v5 = v0[26];

  return sub_240822018(v5);
}

uint64_t sub_24081D84C()
{
  v1 = *v0;
  v2 = *(*v0 + 896);
  v3 = *v0;

  v4 = *(MEMORY[0x277CED858] + 4);
  v9 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v5 = swift_task_alloc();
  v1[113] = v5;
  *v5 = v3;
  v5[1] = sub_24081D9B8;
  v6 = v1[84];
  v7 = v1[26];

  return v9(v6);
}

uint64_t sub_24081D9B8()
{
  v1 = *(*v0 + 904);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24081DAC8, v2, 0);
}

uint64_t sub_24081DAC8()
{
  v1 = v0[110];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[84];
  v5 = v0[82];
  v6 = v0[80];
  v7 = v0[56];
  v8 = v0[47];
  sub_2408D3540();
  v3(v4, v5);
  sub_2408D3B40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507250, &qword_2408D82A0);
  result = sub_2408D51B0();
  v10 = 0;
  v11 = v1 + 64;
  v77 = v8;
  v79 = v1;
  v12 = 1 << *(v1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v1 + 64);
  v15 = (v12 + 63) >> 6;
  v73 = result + 64;
  v81 = result;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v83 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = v82[54];
      v21 = v82[46];
      v22 = *(*(v79 + 48) + 8 * v19);
      (*(v77 + 16))(v20, *(v79 + 56) + *(v77 + 72) * v19, v21);
      v23 = v22;
      v24 = sub_2408D38B0();
      v26 = v25;
      (*(v77 + 8))(v20, v21);
      *(v73 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v81;
      *(v81[6] + 8 * v19) = v23;
      v27 = (v81[7] + 16 * v19);
      *v27 = v24;
      v27[1] = v26;
      v28 = v81[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v81[2] = v30;
      v14 = v83;
      if (!v83)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v10 >= v15)
      {
        break;
      }

      v18 = *(v11 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v83 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    v31 = v82[110];
    v32 = v82[109];
    v33 = v82[95];
    v41 = v82[92];
    v34 = v82[91];
    v42 = v82[84];
    v43 = v82[96];
    v35 = v82[80];
    v44 = v82[81];
    v45 = v82[79];
    v36 = v82[77];
    v46 = v82[76];
    v47 = v82[75];
    v48 = v82[74];
    v49 = v82[73];
    v50 = v82[72];
    v51 = v82[71];
    v52 = v82[70];
    v53 = v82[69];
    v54 = v82[68];
    v55 = v82[65];
    v56 = v82[62];
    v57 = v82[61];
    v58 = v82[60];
    v59 = v82[59];
    v37 = v82[55];
    v38 = v82[56];
    v60 = v82[58];
    v61 = v82[54];
    v62 = v82[53];
    v63 = v82[52];
    v64 = v82[51];
    v65 = v82[50];
    v66 = v82[49];
    v67 = v82[48];
    v68 = v82[45];
    v69 = v82[44];
    v70 = v82[41];
    v71 = v82[40];
    v72 = v82[39];
    v74 = v82[38];
    v75 = v82[37];
    v76 = v82[35];
    v78 = v82[33];
    v80 = v82[30];
    v84 = v82[29];
    v39 = v82[24];

    sub_2407EEE04(v38, v37, &qword_27E506DA0, &unk_2408D76A0);
    sub_2408D3A50();
    sub_2407D9440(v38, &qword_27E506DA0, &unk_2408D76A0);
    v34(v35, v36);

    v40 = v82[1];

    return v40();
  }

  return result;
}

uint64_t sub_24081DFC4()
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v8 = *v1;
  *(*v1 + 936) = v0;

  if (v0)
  {
    v4 = *(v2 + 224);
    v5 = sub_24081E318;
  }

  else
  {
    v6 = *(v2 + 224);
    sub_24080F564(*(v2 + 912), 0);
    v5 = sub_24081E0F0;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24081E0F0()
{
  v1 = *(v0 + 680);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 912);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Finished running family repair", v6, 2u);
    MEMORY[0x245CC9F60](v6, -1, -1);

    sub_24080F564(v5, 0);
  }

  else
  {
    sub_24080F564(*(v0 + 912), 0);
  }

  v7 = *(v0 + 536) + 8;
  (*(v0 + 920))(*(v0 + 600), *(v0 + 528));
  v8 = *(v0 + 680);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F10();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2407CF000, v9, v10, "Sending termination command via router", v11, 2u);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  v12 = *(v0 + 464);

  sub_2408D3E00();
  v13 = *(MEMORY[0x277CED570] + 4);
  v21 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v14 = swift_task_alloc();
  *(v0 + 888) = v14;
  v15 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608]);
  *v14 = v0;
  v14[1] = sub_24081D504;
  v17 = *(v0 + 464);
  v16 = *(v0 + 472);
  v18 = *(v0 + 456);
  v19 = *(v0 + 200);

  return v21(v16, v17, v18, v15);
}

uint64_t sub_24081E318()
{
  sub_24080F564(*(v0 + 912), 0);
  v1 = *(v0 + 936);
  v2 = *(v0 + 680);
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 89);
  v8 = *(v0 + 912);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to run family repair: %@", v9, 0xCu);
    sub_2407D9440(v10, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);

    sub_24080F564(v8, v7);
  }

  else
  {
    sub_24080F564(*(v0 + 912), *(v0 + 89));
  }

  v13 = *(v0 + 536) + 8;
  (*(v0 + 920))(*(v0 + 600), *(v0 + 528));
  v14 = *(v0 + 680);
  v15 = sub_2408D4B10();
  v16 = sub_2408D4F10();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2407CF000, v15, v16, "Sending termination command via router", v17, 2u);
    MEMORY[0x245CC9F60](v17, -1, -1);
  }

  v18 = *(v0 + 464);

  sub_2408D3E00();
  v19 = *(MEMORY[0x277CED570] + 4);
  v27 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v20 = swift_task_alloc();
  *(v0 + 888) = v20;
  v21 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608]);
  *v20 = v0;
  v20[1] = sub_24081D504;
  v23 = *(v0 + 464);
  v22 = *(v0 + 472);
  v24 = *(v0 + 456);
  v25 = *(v0 + 200);

  return v27(v22, v23, v24, v21);
}

uint64_t sub_24081E5D8()
{
  v1 = *(*v0 + 1024);
  v2 = *(*v0 + 1016);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24081E704, v3, 0);
}

void sub_24081E704()
{
  v271 = v0;
  v1 = *(v0 + 288);
  sub_2407EEE04(*(v0 + 328), *(v0 + 320), &unk_27E5071F0, &qword_2408D7640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 984);
    v3 = *(v0 + 976);
    v4 = *(v0 + 760);
    v5 = *(v0 + 744);
    v6 = *(v0 + 720);
    v7 = *(v0 + 680);
    v8 = *(v0 + 320);
    swift_bridgeObjectRelease_n();

    v9 = *v8;
    v10 = *v8;
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F20();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v9;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_2407CF000, v11, v12, "Finishing setupAsClient with error: %@", v13, 0xCu);
      sub_2407D9440(v14, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v14, -1, -1);
      MEMORY[0x245CC9F60](v13, -1, -1);
    }

    v17 = *(v0 + 1032);
    v253 = *(v0 + 736);
    v258 = *(v0 + 768);
    v18 = *(v0 + 728);
    v19 = *(v0 + 632);
    v20 = *(v0 + 616);
    v21 = *(v0 + 568);
    v22 = v11;
    v23 = *(v0 + 536);
    v24 = *(v0 + 528);
    v25 = *(v0 + 328);

    swift_willThrow();
    sub_24080F564(v17, 0);
    sub_2407D9440(v25, &unk_27E5071F0, &qword_2408D7640);
    (*(v23 + 8))(v21, v24);
    v18(v19, v20);

    v26 = *(v0 + 672);
    v27 = *(v0 + 648);
    v28 = *(v0 + 640);
    v29 = *(v0 + 632);
    v30 = *(v0 + 608);
    v31 = *(v0 + 600);
    v32 = *(v0 + 592);
    v33 = *(v0 + 584);
    v34 = *(v0 + 576);
    v35 = *(v0 + 568);
    v223 = *(v0 + 560);
    v224 = *(v0 + 552);
    v225 = *(v0 + 544);
    v226 = *(v0 + 520);
    v227 = *(v0 + 496);
    v228 = *(v0 + 488);
    v229 = *(v0 + 480);
    v230 = *(v0 + 472);
    v231 = *(v0 + 464);
    v232 = *(v0 + 448);
    v233 = *(v0 + 440);
    v234 = *(v0 + 432);
    v235 = *(v0 + 424);
    v236 = *(v0 + 416);
    v237 = *(v0 + 408);
    v238 = *(v0 + 400);
    v239 = *(v0 + 392);
    v240 = *(v0 + 384);
    v241 = *(v0 + 360);
    v242 = *(v0 + 352);
    v243 = *(v0 + 328);
    v244 = *(v0 + 320);
    v245 = *(v0 + 312);
    v246 = *(v0 + 304);
    v247 = *(v0 + 296);
    v249 = *(v0 + 280);
    v251 = *(v0 + 264);
    v254 = *(v0 + 240);
    v259 = *(v0 + 232);

    v36 = *(v0 + 8);

    v36();
    return;
  }

  v37 = *(v0 + 1000);
  v38 = *(v0 + 680);
  v39 = *(v0 + 328);
  v40 = *(v0 + 312);
  (*(v0 + 992))(*(v0 + 552), *(v0 + 568), *(v0 + 528));
  sub_2407EEE04(v39, v40, &unk_27E5071F0, &qword_2408D7640);
  v41 = sub_2408D4B10();
  v42 = sub_2408D4F20();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 552);
  v45 = *(v0 + 536);
  v46 = *(v0 + 528);
  v47 = *(v0 + 312);
  if (v43)
  {
    v255 = *(v0 + 304);
    v260 = *(v0 + 288);
    v48 = swift_slowAlloc();
    v264 = swift_slowAlloc();
    v270[0] = v264;
    *v48 = 136315394;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
    v49 = sub_2408D5220();
    v51 = v50;
    v250 = *(v45 + 8);
    v250(v44, v46);
    v52 = sub_2408CC504(v49, v51, v270);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    sub_2407EEE04(v47, v255, &unk_27E5071F0, &qword_2408D7640);
    v53 = sub_2408D4D40();
    v55 = v54;
    sub_2407D9440(v47, &unk_27E5071F0, &qword_2408D7640);
    v56 = sub_2408CC504(v53, v55, v270);

    *(v48 + 14) = v56;
    _os_log_impl(&dword_2407CF000, v41, v42, "Finished signing into account (%s) with report: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v264, -1, -1);
    MEMORY[0x245CC9F60](v48, -1, -1);
  }

  else
  {

    sub_2407D9440(v47, &unk_27E5071F0, &qword_2408D7640);
    v250 = *(v45 + 8);
    v250(v44, v46);
  }

  v57 = *(v0 + 1048);
  v58 = *(v0 + 1040);
  v59 = *(v0 + 952);
  v60 = *(v0 + 568);
  v61 = *(v0 + 432);
  v62 = *(v0 + 368);
  v63 = *(v0 + 328);
  v65 = *(v0 + 296);
  v64 = *(v0 + 304);
  v265 = *(v0 + 288);
  sub_2408D38F0();
  sub_2407EEE04(v63, v64, &unk_27E5071F0, &qword_2408D7640);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v270[0] = v59;
  sub_2408C9C1C(v64, v61, isUniquelyReferenced_nonNull_native);
  v58(v61, v62);
  v67 = v270[0];
  sub_2407EEE04(v63, v65, &unk_27E5071F0, &qword_2408D7640);
  v266 = v67;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v68 = *(v0 + 568);
    v69 = *(v0 + 528);
    v70 = *(v0 + 328);
    v71 = *(v0 + 296);
    v72 = *(v0 + 536) + 8;
    sub_24080F564(*(v0 + 1032), 0);
    sub_2407D9440(v70, &unk_27E5071F0, &qword_2408D7640);
    v250(v68, v69);
    sub_2407D9440(v71, &unk_27E5071F0, &qword_2408D7640);
    v73 = *(v0 + 1008);
    v74 = *(v0 + 976);
    v75 = *(v0 + 960);
    goto LABEL_32;
  }

  v76 = *(v0 + 1008);
  v77 = *(v0 + 272);
  v78 = *(v0 + 280);
  sub_240875B98(*(v0 + 296), v78, type metadata accessor for SignInReport);
  v79 = sub_24086ED9C(*(v78 + *(v77 + 20)));
  v248 = v76;
  sub_240845108(v79);
  v81 = 0;
  v82 = v80 + 56;
  v256 = v80 + 56;
  v261 = v80;
  v83 = -1;
  v84 = -1 << *(v80 + 32);
  if (-v84 < 64)
  {
    v83 = ~(-1 << -v84);
  }

  v85 = v83 & *(v80 + 56);
  v86 = (63 - v84) >> 6;
  v74 = *(v0 + 976);
  v75 = *(v0 + 960);
  v252 = v86;
  while (v85)
  {
    v87 = v81;
LABEL_22:
    v88 = *(v0 + 568);
    v90 = *(v0 + 392);
    v89 = *(v0 + 400);
    v92 = *(v0 + 368);
    v91 = *(v0 + 376);
    v93 = *(*(v261 + 48) + ((v87 << 9) | (8 * __clz(__rbit64(v85)))));
    sub_2408D38F0();
    v94 = v92;
    v95 = *(v91 + 32);
    v95(v90, v89, v94);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 160) = v75;
    v97 = sub_2408CCC7C(v93);
    v99 = v75[2];
    v100 = (v98 & 1) == 0;
    v101 = __OFADD__(v99, v100);
    v102 = v99 + v100;
    if (v101)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return;
    }

    v103 = v98;
    if (v75[3] >= v102)
    {
      if ((v96 & 1) == 0)
      {
        v111 = v97;
        sub_2408C5870();
        v97 = v111;
      }
    }

    else
    {
      sub_2408C81A4(v102, v96);
      v104 = *(v0 + 160);
      v97 = sub_2408CCC7C(v93);
      if ((v103 & 1) != (v105 & 1))
      {
        type metadata accessor for AIDAServiceType(0);

        sub_2408D5280();
        return;
      }
    }

    v85 &= v85 - 1;
    v75 = *(v0 + 160);
    v106 = *(v0 + 392);
    v107 = *(v0 + 368);
    v108 = *(v0 + 376);
    if (v103)
    {
      (*(v108 + 40))(v75[7] + *(v108 + 72) * v97, v106, v107);
    }

    else
    {
      v75[(v97 >> 6) + 8] |= 1 << v97;
      *(v75[6] + 8 * v97) = v93;
      v95(v75[7] + *(v108 + 72) * v97, v106, v107);
      v109 = v75[2];
      v101 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      if (v101)
      {
        goto LABEL_76;
      }

      v75[2] = v110;
    }

    v81 = v87;
    v74 = v75;
    v86 = v252;
    v82 = v256;
  }

  while (1)
  {
    v87 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v87 >= v86)
    {
      break;
    }

    v85 = *(v82 + 8 * v87);
    ++v81;
    if (v85)
    {
      goto LABEL_22;
    }
  }

  v112 = *(v0 + 568);
  v113 = *(v0 + 528);
  v114 = *(v0 + 328);
  v115 = *(v0 + 280);
  v116 = *(v0 + 536) + 8;
  sub_24080F564(*(v0 + 1032), 0);
  sub_2407D9440(v114, &unk_27E5071F0, &qword_2408D7640);
  v250(v112, v113);

  sub_240875C68(v115, type metadata accessor for SignInReport);
  v67 = v266;
  v73 = v248;
LABEL_32:
  v117 = *(v0 + 736);
  v118 = *(v0 + 728);
  v119 = *(v0 + 632);
  v120 = *(v0 + 616);
  sub_2407D9440(*(v0 + 320), &unk_27E5071F0, &qword_2408D7640);
  v118(v119, v120);
  for (i = *(v0 + 968) + 1; i != *(v0 + 776); i = *(v0 + 968) + 1)
  {
    *(v0 + 984) = v67;
    *(v0 + 976) = v74;
    *(v0 + 968) = i;
    *(v0 + 960) = v75;
    *(v0 + 952) = v67;
    *(v0 + 944) = v73;
    v136 = *(v0 + 760);
    if (i >= *(v136 + 16))
    {
      goto LABEL_73;
    }

    v137 = *(v0 + 768);
    v138 = *(v0 + 568);
    v139 = *(v0 + 536);
    v140 = *(v0 + 528);
    v141 = *(v0 + 416);
    v142 = *(v139 + 16);
    v139 += 16;
    v143 = v136 + ((*(v0 + 108) + 32) & ~*(v0 + 108)) + *(v139 + 56) * i;
    *(v0 + 992) = v142;
    *(v0 + 1000) = v139 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v142(v138, v143, v140);
    sub_2408D38F0();
    if (*(v137 + 16) && (v144 = *(v0 + 768), v145 = sub_2408CCBA8(*(v0 + 416)), (v146 & 1) != 0))
    {
      v147 = v73;
      v148 = *(v0 + 416);
      v150 = *(v0 + 368);
      v149 = *(v0 + 376);
      v151 = *(*(v0 + 768) + 56) + 16 * v145;
      v152 = *v151;
      *(v0 + 1032) = *v151;
      v153 = *(v151 + 8);
      sub_240875D9C(v152, v153);
      v154 = *(v149 + 8);
      *(v0 + 1040) = v154;
      *(v0 + 1048) = (v149 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v154(v148, v150);
      if ((v153 & 1) == 0)
      {
        v203 = *(MEMORY[0x277CED858] + 4);
        v269 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
        v204 = swift_task_alloc();
        *(v0 + 1056) = v204;
        *v204 = v0;
        v204[1] = sub_24081FB44;
        v205 = *(v0 + 672);
        v206 = *(v0 + 208);

        v269(v205);
        return;
      }

      v155 = *(v0 + 568);
      v156 = *(v0 + 536);
      v157 = *(v0 + 528);
      *(v0 + 152) = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      swift_willThrowTypedImpl();
      (*(v156 + 8))(v155, v157);
      sub_24080F564(v152, 1);
      v67 = v266;
      v73 = v147;
    }

    else
    {
      v133 = *(v0 + 568);
      v134 = *(v0 + 536);
      v135 = *(v0 + 528);
      (*(*(v0 + 376) + 8))(*(v0 + 416), *(v0 + 368));
      (*(v134 + 8))(v133, v135);
    }
  }

  v122 = *(v0 + 744);

  *(v0 + 880) = v74;
  *(v0 + 872) = v67;
  v123 = *(v0 + 760);
  v124 = *(v0 + 720);

  v125 = *(v123 + 16);
  if (v125)
  {
    v126 = 0;
    v127 = *(v0 + 536);
    v267 = (v127 + 8);
    while (1)
    {
      v128 = *(v0 + 760);
      if (v126 >= *(v128 + 16))
      {
        goto LABEL_74;
      }

      v129 = *(v0 + 488);
      v130 = *(v127 + 16);
      v130(*(v0 + 584), v128 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v126, *(v0 + 528));
      sub_2408D37A0();
      v131 = sub_2408D3720();
      if ((*(*(v131 - 8) + 48))(v129, 1, v131) != 1)
      {
        break;
      }

      v132 = *(v0 + 488);
      ++v126;
      (*v267)(*(v0 + 584), *(v0 + 528));
      sub_2407D9440(v132, &qword_27E506A18, &qword_2408D67E8);
      if (v125 == v126)
      {
        goto LABEL_53;
      }
    }

    v262 = *(v0 + 768);
    v158 = *(v0 + 600);
    v159 = *(v0 + 592);
    v160 = *(v0 + 584);
    v161 = *(v0 + 536);
    v162 = *(v0 + 528);
    v163 = *(v0 + 424);
    sub_2407D9440(*(v0 + 488), &qword_27E506A18, &qword_2408D67E8);
    v164 = *(v161 + 32);
    v164(v159, v160, v162);
    v164(v158, v159, v162);
    sub_2408D38F0();
    if (!*(v262 + 16) || (v165 = *(v0 + 768), v166 = sub_2408CCBA8(*(v0 + 424)), (v167 & 1) == 0))
    {
      (*(*(v0 + 376) + 8))(*(v0 + 424), *(v0 + 368));
LABEL_52:
      v190 = *(v0 + 536) + 8;
      (*v267)(*(v0 + 600), *(v0 + 528));
      goto LABEL_53;
    }

    v168 = *(v0 + 680);
    v169 = *(v0 + 600);
    v170 = *(v0 + 576);
    v171 = *(v0 + 528);
    v172 = *(v0 + 424);
    v173 = *(v0 + 368);
    v174 = *(v0 + 376);
    v175 = *(*(v0 + 768) + 56) + 16 * v166;
    v176 = *v175;
    *(v0 + 912) = *v175;
    v177 = *(v175 + 8);
    *(v0 + 89) = v177;
    v263 = v176;
    v257 = v177;
    sub_240875D9C(v176, v177);
    (*(v174 + 8))(v172, v173);
    v130(v170, v169, v171);
    v178 = sub_2408D4B10();
    v179 = sub_2408D4F20();
    v180 = os_log_type_enabled(v178, v179);
    v181 = *(v0 + 576);
    v182 = *(v0 + 528);
    if (v180)
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v270[0] = v184;
      *v183 = 136315138;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
      v185 = sub_2408D5220();
      v187 = v186;
      v188 = *v267;
      (*v267)(v181, v182);
      v189 = sub_2408CC504(v185, v187, v270);

      *(v183 + 4) = v189;
      _os_log_impl(&dword_2407CF000, v178, v179, "Attempting to run family repair on client for account: %s", v183, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v184);
      MEMORY[0x245CC9F60](v184, -1, -1);
      MEMORY[0x245CC9F60](v183, -1, -1);
    }

    else
    {

      v188 = *v267;
      (*v267)(v181, v182);
    }

    *(v0 + 920) = v188;
    if (v257)
    {
      v267 = (v0 + 920);
      *(v0 + 144) = v263;
      v207 = v263;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      swift_willThrowTypedImpl();
      v208 = *(v0 + 680);
      v209 = v263;
      v210 = sub_2408D4B10();
      v211 = sub_2408D4F30();

      v212 = os_log_type_enabled(v210, v211);
      v213 = *(v0 + 89);
      v214 = *(v0 + 912);
      if (v212)
      {
        v215 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        *v215 = 138412290;
        v217 = v263;
        v218 = _swift_stdlib_bridgeErrorToNSError();
        *(v215 + 4) = v218;
        *v216 = v218;
        _os_log_impl(&dword_2407CF000, v210, v211, "Failed to run family repair: %@", v215, 0xCu);
        sub_2407D9440(v216, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v216, -1, -1);
        MEMORY[0x245CC9F60](v215, -1, -1);

        sub_24080F564(v214, v213);
      }

      else
      {
        sub_24080F564(*(v0 + 912), *(v0 + 89));
      }

      goto LABEL_52;
    }

    v219 = swift_task_alloc();
    *(v0 + 928) = v219;
    *v219 = v0;
    v219[1] = sub_24081DFC4;
    v220 = *(v0 + 600);
    v221 = *(v0 + 224);
    v222 = *(v0 + 208);

    (sub_240821198)(v222, v220, v263);
  }

  else
  {
LABEL_53:
    v191 = *(v0 + 680);
    v192 = sub_2408D4B10();
    v193 = sub_2408D4F10();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      *v194 = 0;
      _os_log_impl(&dword_2407CF000, v192, v193, "Sending termination command via router", v194, 2u);
      MEMORY[0x245CC9F60](v194, -1, -1);
    }

    v195 = *(v0 + 464);

    sub_2408D3E00();
    v196 = *(MEMORY[0x277CED570] + 4);
    v268 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
    v197 = swift_task_alloc();
    *(v0 + 888) = v197;
    v198 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608]);
    *v197 = v0;
    v197[1] = sub_24081D504;
    v200 = *(v0 + 464);
    v199 = *(v0 + 472);
    v201 = *(v0 + 456);
    v202 = *(v0 + 200);

    v268(v199, v200, v201, v198);
  }
}

uint64_t sub_24081FB44()
{
  v1 = *(*v0 + 1056);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24081FC54, v2, 0);
}

uint64_t sub_24081FC54()
{
  v46 = *(v0 + 992);
  v47 = *(v0 + 1000);
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 672);
  v4 = *(v0 + 656);
  v5 = *(v0 + 632);
  v6 = *(v0 + 568);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v9 = *(v0 + 496);
  v49 = *(v0 + 408);
  v51 = *(v0 + 1032);
  sub_2408D3540();
  v2(v3, v4);
  v46(v9, v6, v8);
  (*(v7 + 56))(v9, 0, 1, v8);
  sub_2408D3BF0();
  sub_2408D38F0();
  v10 = *(v51 + 16);
  v11 = *(v0 + 944);
  if (v10)
  {
    *(v0 + 168) = v10;
    sub_2408CC144((v0 + 168), (v0 + 176), (v0 + 64));
    if (v11)
    {

      v11 = 0;
    }

    else
    {
      v12 = *(v0 + 72);
      v48 = *(v0 + 64);
    }
  }

  v13 = *(v0 + 1048);
  v14 = *(v0 + 1040);
  *(v0 + 1008) = v11;
  v52 = *(v0 + 1064);
  v45 = *(v0 + 632);
  v15 = *(v0 + 408);
  v16 = *(v0 + 368);
  v17 = *(v0 + 352);
  v18 = *(v0 + 360);
  v19 = *(v0 + 344);
  v50 = *(v0 + 336);
  v20 = *(v0 + 224);
  (*(*(v0 + 376) + 16))(*(v0 + 432), v15, v16);
  sub_2408D3750();
  v14(v15, v16);
  v21 = sub_2408D3770();
  (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  sub_2408D3A90();
  v22 = v20[22];
  __swift_project_boxed_opaque_existential_1(v20 + 18, v20[21]);
  (*(v19 + 104))(v17, v52, v50);
  LOBYTE(v13) = sub_2408D4770();
  (*(v19 + 8))(v17, v50);
  if (v13)
  {
    v23 = *(v0 + 760);
    if (*(v23 + 16))
    {
      v24 = *(v0 + 1000);
      v25 = *(v0 + 560);
      v26 = *(v0 + 536);
      v27 = *(v0 + 528);
      v28 = *(v0 + 480);
      (*(v0 + 992))(v25, v23 + ((*(v0 + 108) + 32) & ~*(v0 + 108)), v27);
      sub_2408D37A0();
      (*(v26 + 8))(v25, v27);
      v29 = sub_2408D3720();
      if ((*(*(v29 - 8) + 48))(v28, 1, v29) != 1)
      {
        v30 = *(v0 + 680);
        sub_2407D9440(*(v0 + 480), &qword_27E506A18, &qword_2408D67E8);
        v31 = sub_2408D4B10();
        v32 = sub_2408D4F10();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_2407CF000, v31, v32, "Age based account support is enabled, using termination to finish", v33, 2u);
          MEMORY[0x245CC9F60](v33, -1, -1);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v34 = *(v0 + 480);
      v35 = sub_2408D3720();
      (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
    }

    sub_2407D9440(*(v0 + 480), &qword_27E506A18, &qword_2408D67E8);
  }

LABEL_14:
  v36 = *(v0 + 632);
  v37 = *(v0 + 224);
  v38 = *(v0 + 208);
  v39 = swift_task_alloc();
  *(v0 + 1016) = v39;
  v39[2] = v37;
  v39[3] = v38;
  v39[4] = v36;
  v40 = *(MEMORY[0x277CEDE70] + 4);
  v41 = swift_task_alloc();
  *(v0 + 1024) = v41;
  *v41 = v0;
  v41[1] = sub_24081E5D8;
  v42 = *(v0 + 328);
  v43 = *(v0 + 272);

  return MEMORY[0x2821400E8](v42, &unk_2408D82B8, v39, v43);
}

uint64_t sub_2408200E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507230, &unk_2408D7680) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240820188, a1, 0);
}

uint64_t sub_240820188()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_2408D4660();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = *(MEMORY[0x277CEDCB8] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  v0[7] = v7;
  v8 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0);
  *v6 = v0;
  v6[1] = sub_24082034C;
  v9 = v0[5];
  v10 = v0[3];

  return MEMORY[0x28213FC20](v9, sub_2407EE4C0, 0, sub_2407EE4E4, 0, v7, v3, v8);
}

uint64_t sub_24082034C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v16 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = v4[2];
    sub_2407D9440(v4[5], &qword_27E507230, &unk_2408D7680);
    v7 = sub_240820788;
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v10 = v4[7];
    v11 = v4[3];
    v4[9] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0);
    v12 = sub_2408D4E00();
    v14 = v13;
    v7 = sub_2408204E4;
    v8 = v12;
    v9 = v14;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2408204E4()
{
  v1 = v0[9];
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A88, &qword_2408D6820);
  sub_2407D917C(&qword_27E506A90, &qword_27E506A88, &qword_2408D6820);
  v3 = sub_2408D4680();
  v0[10] = v3;

  sub_2407D9440(v2, &qword_27E507230, &unk_2408D7680);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_240820620;
  v5 = v0[2];

  return sub_24082CFC4(v3);
}

uint64_t sub_240820620(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[2];

    return MEMORY[0x2822009F8](sub_2408207EC, v7, 0);
  }

  else
  {
    v8 = v4[10];
    v9 = v4[5];

    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t sub_240820788()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2408207EC()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

BOOL sub_240820858(uint64_t a1)
{
  v2 = sub_2408D38D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  sub_2407EEE04(a1, &v16 - v12, &qword_27E507F00, &qword_2408D6D50);
  v14 = (*(v3 + 48))(v13, 1, v2);
  if (v14 != 1)
  {
    (*(v3 + 32))(v9, v13, v2);
    (*(v3 + 16))(v7, v9, v2);
    sub_2408D3900();
    (*(v3 + 8))(v9, v2);
  }

  return v14 == 1;
}

uint64_t sub_240820A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507228, &qword_2408D8160) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240820AE0, a2, 0);
}

uint64_t sub_240820AE0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_2408D3C20();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = *(MEMORY[0x277CEDCB8] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  v0[8] = v7;
  v8 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0);
  *v6 = v0;
  v6[1] = sub_240820CA4;
  v9 = v0[6];
  v10 = v0[4];

  return MEMORY[0x28213FC20](v9, sub_2407EE514, 0, sub_2407EE538, 0, v7, v3, v8);
}

uint64_t sub_240820CA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v16 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v6 = v4[3];
    sub_2407D9440(v4[6], &qword_27E507228, &qword_2408D8160);
    v7 = sub_2408210C8;
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v10 = v4[8];
    v11 = v4[4];
    v4[10] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0);
    v12 = sub_2408D4E00();
    v14 = v13;
    v7 = sub_240820E3C;
    v8 = v12;
    v9 = v14;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_240820E3C()
{
  v1 = v0[10];
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507238, &qword_2408D8180);
  sub_2407D917C(&unk_27E507240, &qword_27E507238, &qword_2408D8180);
  v3 = sub_2408D4680();
  v0[11] = v3;

  sub_2407D9440(v2, &qword_27E507228, &qword_2408D8160);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_240820F7C;
  v5 = v0[2];
  v6 = v0[3];

  return sub_24083B498(v5, v3);
}

uint64_t sub_240820F7C()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_24082112C, v4, 0);
  }

  else
  {
    v5 = v3[11];
    v6 = v3[6];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_2408210C8()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24082112C()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_240821198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_2408D3970();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v11 = sub_2408D3490();
  v4[16] = v11;
  v12 = *(v11 - 8);
  v4[17] = v12;
  v13 = *(v12 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24082132C, v3, 0);
}

uint64_t sub_24082132C()
{
  v92 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[7];
  v5 = v4[22];
  __swift_project_boxed_opaque_existential_1(v4 + 18, v4[21]);
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v6 = sub_2408D4770();
  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[5];
    sub_2408D38F0();
    v11 = sub_2408D3890();
    v13 = v12;
    v0[19] = v12;
    v14 = *(v9 + 8);
    v14(v7, v8);
    if (v13)
    {
      v15 = v0[6];
      v16 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport;
      if (*(v15 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport))
      {
        v17 = *(v15 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport);

        v18 = sub_2408CBED4();
        v20 = v19;

        v0[20] = v20;
        if (v20)
        {
          v21 = *(v15 + v16);
          if (v21)
          {
            v22 = *(v21 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_context);
            v0[21] = v22;
            if (v22)
            {
              v88 = v18;
              v23 = qword_27E506918;
              v86 = v22;
              if (v23 != -1)
              {
                swift_once();
              }

              v25 = v0[9];
              v24 = v0[10];
              v26 = v0[8];
              v27 = v0[5];
              v28 = sub_2408D4B20();
              v0[22] = __swift_project_value_buffer(v28, qword_27E506C48);
              (*(v25 + 16))(v24, v27, v26);
              v29 = sub_2408D4B10();
              v30 = sub_2408D4F10();
              v31 = os_log_type_enabled(v29, v30);
              v33 = v0[9];
              v32 = v0[10];
              v34 = v0[8];
              if (v31)
              {
                buf = swift_slowAlloc();
                v84 = swift_slowAlloc();
                v91[0] = v84;
                *buf = 136315138;
                sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
                v81 = v30;
                v35 = sub_2408D5220();
                v37 = v36;
                (*(v33 + 8))(v32, v34);
                v38 = sub_2408CC504(v35, v37, v91);

                *(buf + 4) = v38;
                _os_log_impl(&dword_2407CF000, v29, v81, "Performing family repair for family account: %s", buf, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v84);
                MEMORY[0x245CC9F60](v84, -1, -1);
                MEMORY[0x245CC9F60](buf, -1, -1);
              }

              else
              {

                (*(v33 + 8))(v32, v34);
              }

              v75 = v0[5];
              v76 = swift_task_alloc();
              v0[23] = v76;
              v76[2] = v86;
              v76[3] = v88;
              v76[4] = v20;
              v76[5] = v11;
              v76[6] = v13;
              v76[7] = v75;
              v77 = *(MEMORY[0x277CED860] + 4);
              v90 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
              v78 = swift_task_alloc();
              v0[24] = v78;
              v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507610, &qword_2408D82D8);
              *v78 = v0;
              v78[1] = sub_240821B94;
              v80 = v0[4];

              return v90(v0 + 2, sub_240875E5C, v76, &unk_2408D6D20, 0, v79);
            }
          }
        }
      }
    }

    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v49 = v0[11];
    v50 = v0[8];
    v51 = v0[9];
    v52 = v0[5];
    v53 = sub_2408D4B20();
    __swift_project_value_buffer(v53, qword_27E506C48);
    (*(v51 + 16))(v49, v52, v50);
    v54 = sub_2408D4B10();
    v55 = sub_2408D4F30();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v0[14];
      v57 = v0[12];
      bufa = v0[11];
      v85 = v14;
      v58 = v0[9];
      v89 = v0[8];
      v59 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v91[0] = v87;
      *v59 = 136315138;
      sub_2408D38F0();
      sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8]);
      v60 = sub_2408D5220();
      v62 = v61;
      v85(v56, v57);
      (*(v58 + 8))(bufa, v89);
      v63 = sub_2408CC504(v60, v62, v91);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_2407CF000, v54, v55, "Missing dsid from account: %s or family token", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      MEMORY[0x245CC9F60](v87, -1, -1);
      MEMORY[0x245CC9F60](v59, -1, -1);
    }

    else
    {
      v64 = v0[11];
      v65 = v0[8];
      v66 = v0[9];

      (*(v66 + 8))(v64, v65);
    }

    v67 = sub_2408D3500();
    sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    *v68 = 0xD00000000000004ELL;
    v68[1] = 0x80000002408DAE40;
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x277CED298], v67);
    swift_willThrow();
    v69 = v0[18];
    v71 = v0[14];
    v70 = v0[15];
    v73 = v0[10];
    v72 = v0[11];

    v48 = v0[1];
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v39 = sub_2408D4B20();
    __swift_project_value_buffer(v39, qword_27E506C48);
    v40 = sub_2408D4B10();
    v41 = sub_2408D4F20();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2407CF000, v40, v41, "Feature disabled, not running family repair", v42, 2u);
      MEMORY[0x245CC9F60](v42, -1, -1);
    }

    v43 = v0[18];
    v44 = v0[14];
    v45 = v0[15];
    v47 = v0[10];
    v46 = v0[11];

    v48 = v0[1];
  }

  return v48();
}