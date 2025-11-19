uint64_t sub_2409B3F74()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 464) = v3;
  v4 = *(v1 + 432);
  v5 = *(v1 + 424);
  if (v3)
  {
    v6 = sub_2409B430C;
  }

  else
  {
    v6 = sub_2409B40A4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2409B40A4()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 416);

  v3 = *(v0 + 184);

  if (v3)
  {
    v4 = *(v0 + 400);
    v38 = *(v0 + 408);
    v40 = *(v0 + 448);
    v5 = *(v0 + 392);
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = v3;
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);

    (*(v11 + 8))(v9, v12);
    v13 = v10;
    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v38, v5);
  }

  else
  {
    v14 = *(v0 + 440);
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C2AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "Got empty results from ephemeral proxied auth", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    v19 = *(v0 + 448);
    v18 = *(v0 + 456);
    v20 = *(v0 + 400);
    v39 = *(v0 + 392);
    v41 = *(v0 + 408);
    v21 = *(v0 + 320);
    v37 = *(v0 + 328);
    v23 = *(v0 + 304);
    v22 = *(v0 + 312);
    v25 = *(v0 + 288);
    v24 = *(v0 + 296);

    v13 = sub_24092624C(MEMORY[0x277D84F90]);
    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v37, v22);
    (*(v20 + 8))(v41, v39);
  }

  v26 = *(v0 + 408);
  v27 = *(v0 + 384);
  v29 = *(v0 + 352);
  v28 = *(v0 + 360);
  v30 = *(v0 + 328);
  v31 = *(v0 + 304);
  v32 = *(v0 + 280);
  v33 = *(v0 + 256);
  v34 = *(v0 + 232);

  v35 = *(v0 + 8);

  return v35(v13);
}

uint64_t sub_2409B430C()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  v4 = v0[52];
  v5 = v0[50];
  v24 = v0[49];
  v25 = v0[51];
  v6 = v0[40];
  v23 = v0[41];
  v8 = v0[38];
  v7 = v0[39];
  v10 = v0[36];
  v9 = v0[37];

  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v23, v7);
  (*(v5 + 8))(v25, v24);

  v11 = v0[58];
  v12 = v0[51];
  v13 = v0[48];
  v15 = v0[44];
  v14 = v0[45];
  v16 = v0[41];
  v17 = v0[38];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[29];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2409B4468(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCD0, &qword_240A33AF0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v6 = sub_240A2946C();
  v3[22] = v6;
  v7 = *(v6 - 8);
  v3[23] = v7;
  v8 = *(v7 + 64) + 15;
  v3[24] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_240A2987C();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = sub_240A298BC();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v16 = sub_240A2986C();
  v3[32] = v16;
  v17 = *(v16 - 8);
  v3[33] = v17;
  v18 = *(v17 + 64) + 15;
  v3[34] = swift_task_alloc();
  v19 = sub_240A2A33C();
  v3[35] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v21 = sub_240A2A39C();
  v3[37] = v21;
  v22 = *(v21 - 8);
  v3[38] = v22;
  v23 = *(v22 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v24 = sub_240A2A31C();
  v3[41] = v24;
  v25 = *(v24 - 8);
  v3[42] = v25;
  v26 = *(v25 + 64) + 15;
  v3[43] = swift_task_alloc();
  sub_240A2C21C();
  v3[44] = sub_240A2C20C();
  v28 = sub_240A2C1BC();
  v3[45] = v28;
  v3[46] = v27;

  return MEMORY[0x2822009F8](sub_2409B4810, v28, v27);
}

uint64_t sub_2409B4810()
{
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50DC00);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Configuring migration request with child identity token", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v69 = v0[35];
  v9 = v0[19];

  swift_getKeyPath();
  v0[47] = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel___observationRegistrar;
  v0[13] = v9;
  v0[48] = sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v10 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v66 = *(v6 + 16);
  v66(v5, v9 + v10, v7);
  sub_240A2A34C();
  v11 = *(v6 + 8);
  v11(v5, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    v12 = v0[44];
    v13 = v0[36];

    sub_2409B9164(v13, MEMORY[0x277CED950]);
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "Missing migrationInfo", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    sub_240926FD4();
    swift_allocError();
    *v17 = xmmword_240A35560;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 16) = 0;
    swift_willThrow();
LABEL_19:
    v55 = v0[43];
    v57 = v0[39];
    v56 = v0[40];
    v58 = v0[36];
    v59 = v0[34];
    v60 = v0[31];
    v61 = v0[28];
    v63 = v0[24];
    v62 = v0[25];
    v64 = v0[21];
    v68 = v0[20];

    v65 = v0[1];

    return v65();
  }

  v18 = v0[39];
  v19 = v0[37];
  v70 = v0[25];
  v20 = v0[19];
  (*(v0[42] + 32))(v0[43], v0[36], v0[41]);
  swift_getKeyPath();
  v0[14] = v20;
  sub_240A296EC();

  v66(v18, v9 + v10, v19);
  sub_240A2A36C();
  v11(v18, v19);
  v21 = sub_240A29A0C();
  if ((*(*(v21 - 8) + 48))(v70, 1, v21))
  {
    v22 = v0[44];
    v23 = v0[25];

    sub_240919300(v23, &unk_27E50C790, &unk_240A35770);
LABEL_16:
    v48 = sub_240A2AFFC();
    v49 = sub_240A2C2AC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2408FE000, v48, v49, "Missing migration companion device info", v50, 2u);
      MEMORY[0x245CCDDB0](v50, -1, -1);
    }

    v52 = v0[42];
    v51 = v0[43];
    v53 = v0[41];

    sub_2409B91C4();
    swift_allocError();
    *v54 = 2;
    swift_willThrow();
    (*(v52 + 8))(v51, v53);
    goto LABEL_19;
  }

  v24 = v0[27];
  v25 = v0[28];
  v26 = v0[25];
  v27 = v0[26];
  sub_240A298EC();
  sub_240919300(v26, &unk_27E50C790, &unk_240A35770);
  if ((*(v24 + 88))(v25, v27) != *MEMORY[0x277CED390])
  {
    v44 = v0[44];
    v45 = v0[27];
    v46 = v0[28];
    v47 = v0[26];

    (*(v45 + 8))(v46, v47);
    goto LABEL_16;
  }

  v29 = v0[33];
  v28 = v0[34];
  v31 = v0[31];
  v30 = v0[32];
  v32 = v0[29];
  v33 = v0[30];
  v34 = v0[28];
  v67 = v0[21];
  v71 = v0[43];
  v35 = v0[19];
  (*(v0[27] + 96))(v34, v0[26]);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DD00, &unk_240A330F0);
  v37 = *(v36 + 48);
  v38 = *(v34 + *(v36 + 64) + 8);

  (*(v29 + 32))(v28, v34, v30);
  (*(v33 + 32))(v31, v34 + v37, v32);
  swift_getKeyPath();
  v0[15] = v35;
  sub_240A296EC();

  v39 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag;
  swift_beginAccess();
  sub_240919A14(v35 + v39, (v0 + 2));
  sub_240A2A2FC();
  v40 = sub_240A2962C();
  (*(*(v40 - 8) + 56))(v67, 0, 1, v40);
  v41 = swift_task_alloc();
  v0[49] = v41;
  *v41 = v0;
  v41[1] = sub_2409B4FB0;
  v42 = v0[21];

  return sub_2409BE490((v0 + 2), v42);
}

uint64_t sub_2409B4FB0(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[49];
  v6 = *v2;
  v4[50] = v1;

  v7 = v4[21];
  if (v1)
  {
    sub_240919300(v7, &unk_27E50DCE0, &qword_240A32E20);
    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v8 = v4[45];
    v9 = v4[46];
    v10 = sub_2409B5720;
  }

  else
  {
    v4[51] = a1;
    sub_240919300(v7, &unk_27E50DCE0, &qword_240A32E20);
    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v8 = v4[45];
    v9 = v4[46];
    v10 = sub_2409B5128;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2409B5128()
{
  v1 = v0[51];
  v2 = v0[31];
  v3 = v0[24];
  v4 = v0[19];
  sub_240A2944C();

  v5 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  v0[52] = v5;
  v6 = sub_240A2989C();
  [v5 setPairedDevice_];

  v8 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel_ageMigrationController);
  v7 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel_ageMigrationController + 8);
  ObjectType = swift_getObjectType();
  v10 = *(MEMORY[0x277CEDD58] + 4);
  v11 = swift_task_alloc();
  v0[53] = v11;
  *v11 = v0;
  v11[1] = sub_2409B5244;

  return MEMORY[0x28213FE88](ObjectType, v7);
}

uint64_t sub_2409B5244(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v7 = *v1;
  *(*v1 + 432) = a1;

  v4 = *(v2 + 368);
  v5 = *(v2 + 360);

  return MEMORY[0x2822009F8](sub_2409B536C, v5, v4);
}

uint64_t sub_2409B536C()
{
  v1 = v0[54];
  v2 = v0[52];
  v31 = v0[48];
  v32 = v0[50];
  v30 = v0[47];
  v3 = v0[44];
  v28 = v0[43];
  v33 = v0[42];
  v34 = v0[41];
  v35 = v0[40];
  v36 = v0[39];
  v37 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v39 = v0[32];
  v22 = v0[30];
  v24 = v0[29];
  v25 = v0[31];
  v6 = v0[24];
  v7 = v0[22];
  v8 = v0[23];
  v26 = v6;
  v9 = v0[20];
  v38 = v0[21];
  v29 = v0[19];
  v21 = v0[18];
  v23 = v0[17];

  v27 = v2;
  [v2 setAnisetteDataProvider_];
  swift_unknownObjectRelease();
  v10 = [objc_opt_self() defaultSessionConfiguration];
  [v10 set:v2 appleIDContext:?];
  (*(v8 + 16))(v9, v6, v7);
  v11 = v10;

  v12 = sub_240A2A30C();
  v14 = v13;
  v15 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  (*(v5 + 16))(v9 + v15[8], v4, v39);
  (*(v22 + 16))(v9 + v15[9], v25, v24);
  *(v9 + v15[5]) = v11;
  v16 = (v9 + v15[6]);
  *v16 = v23;
  v16[1] = v21;
  v17 = (v9 + v15[7]);
  *v17 = v12;
  v17[1] = v14;
  *(v9 + v15[10]) = 0;
  (*(*(v15 - 1) + 56))(v9, 0, 1, v15);
  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v29;
  *(v18 + 24) = v9;
  v0[16] = v29;
  sub_240A296DC();

  (*(v8 + 8))(v26, v7);
  (*(v22 + 8))(v25, v24);
  (*(v5 + 8))(v4, v39);
  (*(v33 + 8))(v28, v34);

  sub_240919300(v9, &unk_27E50DCD0, &qword_240A33AF0);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2409B5720()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[29];
  v10 = v0[30];

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v11 = v0[43];
  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[36];
  v15 = v0[34];
  v16 = v0[31];
  v17 = v0[28];
  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[21];
  v23 = v0[20];
  v24 = v0[50];

  v21 = v0[1];

  return v21();
}

void sub_2409B58A8()
{
  sub_2409B5A3C();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2409B5AA0();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_240A2A39C();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_240A2972C();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2409B5A3C()
{
  if (!qword_27E50DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50C7A0, &qword_240A33100);
    v0 = sub_240A2C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50DC90);
    }
  }
}

void sub_2409B5AA0()
{
  if (!qword_27E50DCA0)
  {
    type metadata accessor for AgeMigrationViewModel.ServerUIContext(255);
    v0 = sub_240A2C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50DCA0);
    }
  }
}

void sub_2409B5B18(void *a1)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_240A2998C();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCD0, &qword_240A33AF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v19 = sub_240A2B00C();
  __swift_project_value_buffer(v19, qword_27E50DC00);
  v20 = sub_240A2AFFC();
  v21 = sub_240A2C29C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2408FE000, v20, v21, "RemoteUI will load - attaching headers in AgeMigrationViewModel", v22, 2u);
    MEMORY[0x245CCDDB0](v22, -1, -1);
  }

  swift_getKeyPath();
  v43 = v2;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v23 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__serverUIContext;
  swift_beginAccess();
  sub_240919298(v2 + v23, v12, &unk_27E50DCD0, &qword_240A33AF0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_240919300(v12, &unk_27E50DCD0, &qword_240A33AF0);
    v24 = sub_240A2AFFC();
    v25 = sub_240A2C2AC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2408FE000, v24, v25, "Missing serverUI context. RUI will probably not work correctly!", v26, 2u);
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }
  }

  else
  {
    sub_2409B8550(v12, v18);
    v27 = &v18[v13[6]];
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = sub_240A2BF1C();
    v31 = &v18[v13[7]];
    v32 = *v31;
    v33 = *(v31 + 1);
    v34 = sub_240A2BF1C();
    v35 = v42;
    [v42 ak:v30 addProxiedAuthorizationHeaderWithIdentityToken:v34 forAltDSID:?];

    [v35 ak:*MEMORY[0x277CEFF28] addAppProvidedContext:?];
    v36 = &v18[v13[8]];
    sub_240A2985C();
    v37 = sub_240A2996C();
    (*(v40 + 8))(v7, v41);
    [v35 ak:v37 addProxiedAnisetteHeaders:?];
    v38 = &v18[v13[9]];
    sub_240A2988C();
    v39 = sub_240A2BF1C();

    [v35 ak:v39 addProxiedClientInfoHeader:?];

    sub_2409B9164(v18, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
  }
}

uint64_t sub_2409B6024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_240A2A33C();
  v4[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = sub_240A2A39C();
  v4[16] = v7;
  v8 = *(v7 - 8);
  v4[17] = v8;
  v9 = *(v8 + 64) + 15;
  v4[18] = swift_task_alloc();
  sub_240A2C21C();
  v4[19] = sub_240A2C20C();
  v11 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409B6154, v11, v10);
}

uint64_t sub_2409B6154()
{
  v1 = v0;
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = v0[12];
  v26 = v0[13];

  swift_getKeyPath();
  v0[8] = v7;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v8 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v4 + 16))(v3, v7 + v8, v5);
  sub_240A2A34C();
  (*(v4 + 8))(v3, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2409B9164(v6, MEMORY[0x277CED950]);
  if (EnumCaseMultiPayload)
  {
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v10 = sub_240A2B00C();
    __swift_project_value_buffer(v10, qword_27E50DC00);
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C2AC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2408FE000, v11, v12, "If we're presenting RUI, we should be in migrating state", v13, 2u);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v14 = sub_240A2B00C();
    __swift_project_value_buffer(v14, qword_27E50DC00);
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C28C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "Migration finished. Notifying child.", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[12];

    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[9] = v20;
    sub_240A296EC();

    v0[10] = v20;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    v0[11] = v20;
    swift_getKeyPath();
    sub_240A296FC();
  }

  v21 = v1[18];
  v22 = v1[14];
  v23 = v1[15];

  v24 = v1[1];

  return v24();
}

uint64_t sub_2409B65F8(void *a1)
{
  v1 = [a1 allHeaderFields];
  v2 = sub_240A2BEBC();

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50DC00);

  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28[0] = v7;
    *v6 = 136315138;
    v8 = sub_240A2BECC();
    v10 = sub_240925464(v8, v9, v28);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2408FE000, v4, v5, "Age migration remoteUI headers: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v11 = *MEMORY[0x277CEFEE0];
  v26 = sub_240A2BF4C();
  v27 = v12;
  sub_240A2C44C();
  if (!*(v2 + 16) || (v13 = sub_240925A94(v28), (v14 & 1) == 0))
  {

    return sub_2409266D4(v28);
  }

  sub_240913DC0(*(v2 + 56) + 32 * v13, v29);
  sub_2409266D4(v28);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v16 = *MEMORY[0x277CEFED0];
  if (v26 == sub_240A2BF4C() && v27 == v17)
  {
  }

  else
  {
    v18 = sub_240A2C66C();

    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  v19 = sub_240A2AFFC();
  v20 = sub_240A2C28C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2408FE000, v19, v20, "Response headers indicated flow completion.", v21, 2u);
    MEMORY[0x245CCDDB0](v21, -1, -1);
  }

  v22 = sub_2409AE30C(v28);
  v24 = v23;
  v25 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    *(v24 + *(v25 + 40)) = 1;
  }

  return (v22)(v28, 0);
}

void sub_2409B6A10(uint64_t a1, void *a2)
{
  v5 = sub_240A2946C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v10 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v36 - v17;
  if (a2)
  {
    v19 = sub_240A2C24C();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v6 + 16))(v13, a1, v5);
    sub_240A2C21C();
    v20 = a2;
    v21 = a2;
    v36 = v2;
    v22 = sub_240A2C20C();
    v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    *(v25 + 16) = v22;
    *(v25 + 24) = v26;
    (*(v6 + 32))(v25 + v23, v13, v5);
    *(v25 + v24) = a2;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
    sub_2409230D4(0, 0, v18, &unk_240A35750, v25);
  }

  else
  {
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v27 = sub_240A2B00C();
    __swift_project_value_buffer(v27, qword_27E50DC00);
    (*(v6 + 16))(v10, a1, v5);
    v28 = sub_240A2AFFC();
    v29 = sub_240A2C29C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136315138;
      v32 = sub_240A2942C();
      v34 = v33;
      (*(v6 + 8))(v10, v5);
      v35 = sub_240925464(v32, v34, &v37);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2408FE000, v28, v29, "Request %s completed", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x245CCDDB0](v31, -1, -1);
      MEMORY[0x245CCDDB0](v30, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v10, v5);
    }
  }
}

uint64_t sub_2409B6DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_240A2A33C();
  v6[20] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v9 = sub_240A2946C();
  v6[22] = v9;
  v10 = *(v9 - 8);
  v6[23] = v10;
  v11 = *(v10 + 64) + 15;
  v6[24] = swift_task_alloc();
  sub_240A2C21C();
  v6[25] = sub_240A2C20C();
  v13 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409B6F1C, v13, v12);
}

uint64_t sub_2409B6F1C()
{
  v38 = v0;
  v1 = *(v0 + 200);

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = sub_240A2B00C();
  __swift_project_value_buffer(v7, qword_27E50DC00);
  (*(v3 + 16))(v2, v5, v4);
  v8 = v6;
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C2AC();

  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 176);
  if (v11)
  {
    v36 = *(v0 + 144);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315394;
    v17 = sub_240A2942C();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_240925464(v17, v19, &v37);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v22 = *(v0 + 80);
    v21 = *(v0 + 88);
    v23 = *(v0 + 96);
    v24 = sub_240A2C6CC();
    v26 = sub_240925464(v24, v25, &v37);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_2408FE000, v9, v10, "Request %s completed with error %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v16, -1, -1);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v27 = *(v0 + 192);
  v29 = *(v0 + 160);
  v28 = *(v0 + 168);
  v30 = *(v0 + 144);
  v31 = *(v0 + 152);
  sub_240A2A47C();
  v32 = *(v0 + 16);
  v33 = *(v0 + 32);
  *(v28 + 32) = *(v0 + 48);
  *v28 = v32;
  *(v28 + 16) = v33;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 104) = v31;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  *(v0 + 112) = v31;
  swift_getKeyPath();
  sub_240A2970C();

  swift_beginAccess();
  sub_240A2A35C();
  swift_endAccess();
  *(v0 + 120) = v31;
  swift_getKeyPath();
  sub_240A296FC();

  v34 = *(v0 + 8);

  return v34();
}

void sub_2409B73CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v32 - v7;
  v9 = *MEMORY[0x277CEFEE8];
  v33 = sub_240A2BF4C();
  v34 = v10;
  sub_240A2C44C();
  if (*(a1 + 16) && (v11 = sub_240925A94(v35), (v12 & 1) != 0))
  {
    sub_240913DC0(*(a1 + 56) + 32 * v11, v36);
    sub_2409266D4(v35);
    if (swift_dynamicCast())
    {
      v14 = v33;
      v13 = v34;
      v15 = *MEMORY[0x277CEFEC8];
      if (v14 == sub_240A2BF4C() && v13 == v16)
      {

LABEL_17:
        v27 = sub_240A2C24C();
        (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
        sub_240A2C21C();
        v28 = v2;
        v29 = sub_240A2C20C();
        v30 = swift_allocObject();
        v31 = MEMORY[0x277D85700];
        v30[2] = v29;
        v30[3] = v31;
        v30[4] = v28;
        sub_2409230D4(0, 0, v8, &unk_240A35740, v30);

        return;
      }

      v18 = sub_240A2C66C();

      if (v18)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    sub_2409266D4(v35);
  }

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v19 = sub_240A2B00C();
  __swift_project_value_buffer(v19, qword_27E50DC00);

  v20 = sub_240A2AFFC();
  v21 = sub_240A2C29C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35[0] = v23;
    *v22 = 136315138;
    v24 = sub_240A2BECC();
    v26 = sub_240925464(v24, v25, v35);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2408FE000, v20, v21, "AgeMigrationView RemoteUI handled button %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x245CCDDB0](v23, -1, -1);
    MEMORY[0x245CCDDB0](v22, -1, -1);
  }
}

uint64_t sub_2409B7734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_240A2A33C();
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  sub_240A2C21C();
  v4[11] = sub_240A2C20C();
  v8 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409B77FC, v8, v7);
}

uint64_t sub_2409B77FC()
{
  v1 = v0[11];

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50DC00);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "User did not agree to family or iCloud terms. Tearing down flow", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  *v6 = xmmword_240A315B0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v0[5] = v8;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v0[6] = v8;
  swift_getKeyPath();
  sub_240A2970C();

  swift_beginAccess();
  sub_240A2A35C();
  swift_endAccess();
  v0[7] = v8;
  swift_getKeyPath();
  sub_240A296FC();

  v9 = v0[1];

  return v9();
}

uint64_t sub_2409B7AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_240A2A33C();
  v4[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCD0, &qword_240A33AF0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  sub_240A2C21C();
  v4[19] = sub_240A2C20C();
  v12 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409B7C3C, v12, v11);
}

uint64_t sub_2409B7C3C()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];

  swift_getKeyPath();
  v0[8] = v5;
  sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v6 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__serverUIContext;
  swift_beginAccess();
  sub_240919298(v5 + v6, v4, &unk_27E50DCD0, &qword_240A33AF0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_240919300(v0[15], &unk_27E50DCD0, &qword_240A33AF0);
LABEL_10:
    if (qword_27E50AF70 != -1)
    {
      swift_once();
    }

    v15 = sub_240A2B00C();
    __swift_project_value_buffer(v15, qword_27E50DC00);
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "RemoteUI dismissed early, probably because user cancelled. Tearing down flow.", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];

    *v19 = xmmword_240A315B0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[9] = v21;
    sub_240A296EC();

    v0[10] = v21;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    v0[11] = v21;
    swift_getKeyPath();
    sub_240A296FC();

    goto LABEL_15;
  }

  v7 = v0[18];
  v8 = v0[16];
  sub_2409B8550(v0[15], v7);
  if (*(v7 + *(v8 + 40)) != 1)
  {
    sub_2409B9164(v0[18], type metadata accessor for AgeMigrationViewModel.ServerUIContext);
    goto LABEL_10;
  }

  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v9 = sub_240A2B00C();
  __swift_project_value_buffer(v9, qword_27E50DC00);
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[18];
  if (v12)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, "Ignoring dismiss message after migration flow completion because we want to continue to family server flow", v14, 2u);
    MEMORY[0x245CCDDB0](v14, -1, -1);
  }

  sub_2409B9164(v13, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
LABEL_15:
  v22 = v0[18];
  v23 = v0[14];
  v24 = v0[15];

  v25 = v0[1];

  return v25();
}

uint64_t sub_2409B8378()
{
  result = sub_240A2946C();
  if (v1 <= 0x3F)
  {
    result = sub_2409194E8(319, &unk_27E50DCC0, 0x277CCAD38);
    if (v2 <= 0x3F)
    {
      result = sub_240A2986C();
      if (v3 <= 0x3F)
      {
        result = sub_240A298BC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2409B8454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_2409B7AE0(a1, v4, v5, v6);
}

uint64_t sub_2409B8508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2409B8550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409B85E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_2409B7734(a1, v4, v5, v6);
}

uint64_t sub_2409B869C(uint64_t a1)
{
  v4 = *(sub_240A2946C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_240916360;

  return sub_2409B6DF4(a1, v7, v8, v1 + v5, v9, v10);
}

char *sub_2409B87D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelUpdate;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7A0, &qword_240A33100);
  v13 = *(*(v12 - 8) + 56);
  v13(&a5[v11], 1, 1, v12);
  v13(&a5[v11], 1, 1, v12);
  v14 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender];
  *v14 = 0;
  v14[1] = 0;
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v16 = result;
    v33 = sub_2409194E8(0, &unk_27E50DD80, 0x277CF02F0);
    v34 = MEMORY[0x277CEDE68];
    *&v32 = v16;
    sub_24090C218(&v32, &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag]);
    v17 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__serverUIContext;
    v18 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
    v19 = *(*(v18 - 8) + 56);
    v19(&a5[v17], 1, 1, v18);
    v19(&a5[v17], 1, 1, v18);
    *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter] = 0;
    v20 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate];
    *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *(v20 + 8) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    sub_240A2971C();
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v21 = result;
      v22 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

      *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager] = v22;
      v23 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel_ageMigrationController];
      *v23 = a1;
      v23[1] = a7;
      v24 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
      v25 = sub_240A2A39C();
      v26 = *(v25 - 8);
      (*(v26 + 16))(&a5[v24], a2, v25);
      swift_unknownObjectRetain();
      sub_240964BB4(v20);
      *(v20 + 8) = a4;
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay] = 0;
      v31.receiver = a5;
      v31.super_class = type metadata accessor for AgeMigrationViewModel(0);
      v27 = objc_msgSendSuper2(&v31, sel_init);
      swift_getKeyPath();
      *&v32 = v27;
      sub_2409B8508(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
      v28 = v27;
      sub_240A296EC();

      v29 = *&v28[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager];
      [v29 setDelegate_];

      (*(v26 + 8))(a2, v25);
      return v28;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2409B8BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7A0, &qword_240A33100);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD28, &qword_240A35808);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DD70, &qword_240A358F8);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_240919298(a1, &v27 - v19, &qword_27E50DD28, &qword_240A35808);
  sub_240919298(a2, &v20[v21], &qword_27E50DD28, &qword_240A35808);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_240919298(v20, v14, &qword_27E50DD28, &qword_240A35808);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      sub_2409B9580();
      v24 = sub_240A2BF0C();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v14, v4);
      sub_240919300(v20, &qword_27E50DD28, &qword_240A35808);
      v23 = v24 ^ 1;
      return v23 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_6;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
LABEL_6:
    sub_240919300(v20, &qword_27E50DD70, &qword_240A358F8);
    v23 = 1;
    return v23 & 1;
  }

  sub_240919300(v20, &qword_27E50DD28, &qword_240A35808);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_2409B8EC4(const char *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, void *))
{
  v8 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v24 - v12;
  if (qword_27E50AF70 != -1)
  {
    swift_once();
  }

  v14 = sub_240A2B00C();
  __swift_project_value_buffer(v14, qword_27E50DC00);
  v15 = sub_240A2AFFC();
  v16 = sub_240A2C29C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2408FE000, v15, v16, a1, v17, 2u);
    MEMORY[0x245CCDDB0](v17, -1, -1);
  }

  v18 = sub_240A2C24C();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  sub_240A2C21C();
  v19 = v8;
  v20 = sub_240A2C20C();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  a4(0, 0, v13, a3, v21);
}

uint64_t sub_2409B90B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_2409B6024(a1, v4, v5, v6);
}

uint64_t sub_2409B9164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2409B91C4()
{
  result = qword_27E50DCF8;
  if (!qword_27E50DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DCF8);
  }

  return result;
}

uint64_t sub_2409B9290()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2409B9314()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_24090C23C(v1);
  return sub_24090C1A0(v4);
}

uint64_t sub_2409B936C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_2409AF56C();
}

uint64_t sub_2409B943C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

void sub_2409B9464()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter) = v2;
  v4 = v2;
}

void sub_2409B94A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager) = v2;
  v4 = v2;
}

uint64_t sub_2409B94E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2409B9580()
{
  result = qword_27E50DD78;
  if (!qword_27E50DD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50C7A0, &qword_240A33100);
    sub_2409B8508(&unk_27E50DD50, MEMORY[0x277CED960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DD78);
  }

  return result;
}

uint64_t type metadata accessor for DiscoveredView()
{
  result = qword_27E50DDB0;
  if (!qword_27E50DDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409B96F4()
{
  sub_2409B9840(319, &qword_27E50DDC0, MEMORY[0x277CED678], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_24093CF64();
    if (v1 <= 0x3F)
    {
      sub_2409B9840(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2409B9840(319, &unk_27E50BD88, type metadata accessor for AKUserAgeRange, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2409B9840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2409B98C0()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50DD90);
  __swift_project_value_buffer(v0, qword_27E50DD90);
  return sub_240A2AE9C();
}

uint64_t sub_2409B990C@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v58 = &v56 - v5;
  v65 = type metadata accessor for PairingView();
  v6 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65, v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDC8, &qword_240A35988);
  v10 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66, v11);
  v67 = &v56 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDD0, &qword_240A35990);
  v13 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60, v14);
  v61 = (&v56 - v15);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDD8, &qword_240A35998);
  v16 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63, v17);
  v64 = &v56 - v18;
  v19 = sub_240A29EFC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v57 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v56 - v26;
  v28 = sub_240A29E6C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v56 - v36;
  v59 = v2;
  v62 = v1;
  MEMORY[0x245CCC9B0](v2);
  sub_240A29E0C();
  v38 = *(v29 + 8);
  v38(v37, v28);
  v39 = (*(v20 + 88))(v27, v19);
  if (v39 != *MEMORY[0x277CED6A0])
  {
    if (v39 == *MEMORY[0x277CED698] || v39 == *MEMORY[0x277CED6A8])
    {
      (*(v20 + 8))(v27, v19);
      goto LABEL_6;
    }

    if (v39 != *MEMORY[0x277CED6B0])
    {
      if (v39 == *MEMORY[0x277CED6B8])
      {
        (*(v20 + 8))(v27, v19);
      }

      else if (v39 != *MEMORY[0x277CED690])
      {
        v69 = 0;
        v70 = 0xE000000000000000;
        sub_240A2C47C();
        MEMORY[0x245CCCD90](0xD000000000000027, 0x8000000240A3DD30);
        MEMORY[0x245CCC9B0](v59);
        v55 = v57;
        sub_240A29E0C();
        v38(v34, v28);
        sub_240A2C57C();
        (*(v20 + 8))(v55, v19);
        result = sub_240A2C58C();
        __break(1u);
        return result;
      }

      sub_2409BA178(&v69);
      v49 = v69;
      v50 = v70;
      v51 = v72;
      v52 = v71;
      v53 = v61;
      *v61 = v69;
      v53[1] = v50;
      *(v53 + 8) = v52;
      *(v53 + 18) = v51;
      swift_storeEnumTagMultiPayload();
      sub_2409BD3C0(v49, v50, v52, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDE0, &qword_240A359F8);
      sub_2409BD084();
      sub_2409BE3BC(&qword_27E50C160, type metadata accessor for PairingView);
      v54 = v64;
      sub_240A2B6EC();
      sub_2409BD294(v54, v67);
      swift_storeEnumTagMultiPayload();
      sub_2409BD304();
      sub_240A2B6EC();
      sub_2409BD3D0(v49, v50, v52, v51);
      return sub_240919300(v54, &qword_27E50DDD8, &qword_240A35998);
    }
  }

  (*(v20 + 96))(v27, v19);
  v40 = *(v27 + 1);

  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v42 = sub_240A2A0DC();
  (*(*(v42 - 8) + 8))(&v27[v41], v42);
LABEL_6:
  v43 = v58;
  v44 = v62;
  sub_240A2BD1C();
  swift_getKeyPath();
  sub_240A2BD0C();

  sub_240919300(v43, &qword_27E50DDA8, &unk_240A35910);
  LOBYTE(v44) = *(v44 + *(type metadata accessor for DiscoveredView() + 24));
  v45 = v65;
  v46 = *(v65 + 24);
  *&v9[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v9[*(v45 + 20)] = v44;
  sub_2409BD3E4(v9, v61, type metadata accessor for PairingView);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDE0, &qword_240A359F8);
  sub_2409BD084();
  sub_2409BE3BC(&qword_27E50C160, type metadata accessor for PairingView);
  v47 = v64;
  sub_240A2B6EC();
  sub_2409BD294(v47, v67);
  swift_storeEnumTagMultiPayload();
  sub_2409BD304();
  sub_240A2B6EC();
  sub_240919300(v47, &qword_27E50DDD8, &qword_240A35998);
  return sub_240940380(v9);
}

uint64_t sub_2409BA178@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A29DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DiscoveredView();
  v11 = v1 + *(v10 + 32);
  sub_240945D78(v9);
  v12 = (*(v5 + 88))(v9, v4);
  if (v12 == *MEMORY[0x277CED638] || v12 == *MEMORY[0x277CED630])
  {
    sub_2409BAC44(&v25);
    *&v22 = v25;
    *(&v22 + 1) = BYTE8(v25);
    v23 = 0;
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDF8, &qword_240A35A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE08, &qword_240A35A08);
    sub_2409BD110();
    sub_2409BD18C();
    result = sub_240A2B6EC();
    v15 = v25;
    v16 = v26;
    v17 = v27;
  }

  else
  {
    v18 = *(v2 + *(v10 + 24));
    v19 = sub_240A2A0EC();
    if (v19)
    {
      sub_2409BA528(&v25);
      v22 = v25;
      v23 = v26;
    }

    else
    {
      sub_2409BA80C(&v25);
      v22 = v25;
      LOBYTE(v23) = v26;
      HIBYTE(v23) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE18, &qword_240A35A10);
    sub_2409BD210();
    sub_240A2B6EC();
    if (HIBYTE(v26))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    v22 = v25;
    v23 = v20 | v26;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDF8, &qword_240A35A00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE08, &qword_240A35A08);
    sub_2409BD110();
    sub_2409BD18C();
    sub_240A2B6EC();
    v21 = v25;
    v16 = v26;
    v17 = v27;
    result = (*(v5 + 8))(v9, v4);
    v15 = v21;
  }

  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 18) = v17;
  return result;
}

uint64_t sub_2409BA460(uint64_t a1)
{
  v2 = sub_240A29EFC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_240A29E1C();
}

uint64_t sub_2409BA528@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v1 = type metadata accessor for DiscoveredView();
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v18 = sub_240A2BFDC();
  *&v23 = v18;
  *(&v23 + 1) = v4;
  *&v24 = sub_240A2BFDC();
  *(&v24 + 1) = v5;
  v25 = 0xD00000000000001DLL;
  v26 = 0x8000000240A3DEB0;
  v27 = 0;
  v28 = 0;
  v29 = [objc_opt_self() systemBlueColor];
  v30 = xmmword_240A35900;
  v31 = 0;
  v32 = sub_240A2C06C();
  v33 = v6;
  v34 = sub_240A2C06C();
  v35 = v7;
  v36 = 0;
  v37 = 0;
  sub_2409BD3E4(v20, &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiscoveredView);
  v8 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v9 = swift_allocObject();
  sub_2409BD44C(&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = objc_allocWithZone(type metadata accessor for StartCardViewController());
  v11 = sub_240A1D920(&v23, 0, 0, sub_2409BD660, v9);
  v22 = 1;
  sub_240A2BD3C();
  v12 = v23;
  v13 = v24;
  *&v23 = v11;
  *(&v23 + 1) = MEMORY[0x277D84F90];
  v24 = v12;
  LOBYTE(v25) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE48, &qword_240A35A28);
  sub_2409BD678(&qword_27E50DE50, &qword_27E50DE48, &qword_240A35A28);
  v14 = sub_240A2BCDC();
  v15 = sub_240A2B88C();
  result = sub_240A2B3AC();
  v17 = v21;
  *v21 = v14;
  v17[1] = result;
  *(v17 + 16) = v15;
  return result;
}

uint64_t sub_2409BA80C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DiscoveredView();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v43 = v7;
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240A29DBC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_240A2B52C();
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2 + *(v4 + 36);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v50 = *v22;
  }

  else
  {
    v39 = v18;
    v40 = v10;
    v24 = v19;

    sub_240A2C2BC();
    v25 = sub_240A2B84C();
    v41 = v8;
    v26 = a1;
    v27 = v25;
    sub_240A2AFEC();

    a1 = v26;
    v8 = v41;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v23, 0);
    (*(v24 + 8))(v21, v39);
    v10 = v40;
  }

  v28 = v2 + *(v4 + 32);
  sub_240945D78(v14);
  v29 = sub_2409BB534(v51);
  (*(v10 + 8))(v14, v9, v29);
  sub_2409BD3E4(v2, v8, type metadata accessor for DiscoveredView);
  v30 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v31 = swift_allocObject();
  sub_2409BD44C(v8, v31 + v30);
  v32 = objc_allocWithZone(type metadata accessor for StartCardViewController());
  v33 = sub_240A1D920(v51, 0, 0, sub_2409BE330, v31);
  v49 = 1;
  sub_240A2BD3C();
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v44 = v33;
  v45 = MEMORY[0x277D84F90];
  v46 = v34;
  v47 = v35;
  v48 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE48, &qword_240A35A28);
  sub_2409BD678(&qword_27E50DE50, &qword_27E50DE48, &qword_240A35A28);
  v37 = sub_240A2BCDC();
  LOBYTE(v30) = sub_240A2B88C();
  result = sub_240A2B3AC();
  *a1 = v37;
  *(a1 + 8) = result;
  *(a1 + 16) = v30;
  return result;
}

uint64_t sub_2409BAC44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_240A29DBC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DiscoveredView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v13 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v33 - v16;
  v18 = v1 + *(v15 + 20);
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v38) = v19;
  *(&v38 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  sub_240A2BC5C();
  if (v35 == 1)
  {
    sub_2409BB91C(&v38);
    v35 = v38;
    v36 = v39;
    v37 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE38, &qword_240A35A20);
    sub_2409BD678(&qword_27E50DE40, &qword_27E50DE38, &qword_240A35A20);
    *&v35 = sub_240A2BCDC();
    BYTE8(v35) = 0;
  }

  else
  {
    sub_2409BD3E4(v1, v17, type metadata accessor for DiscoveredView);
    v21 = *(v9 + 80);
    v34 = a1;
    v22 = (v21 + 16) & ~v21;
    v23 = swift_allocObject();
    sub_2409BD44C(v17, v23 + v22);
    sub_2409BD3E4(v1, v13, type metadata accessor for DiscoveredView);
    v24 = swift_allocObject();
    sub_2409BD44C(v13, v24 + v22);
    v25 = *(v8 + 32);
    v26 = *(v1 + *(v8 + 24));
    sub_240945D78(v7);
    v27 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsStartViewController());
    v28 = AuthenticateAccountsStartViewController.init(connect:listAccounts:flowKind:deviceClass:)(sub_2409BD4B0, v23, sub_2409BD4C8, v24, v26, v7);
    LOBYTE(v35) = 1;
    sub_240A2BD3C();
    v29 = v38;
    v30 = v39;
    *&v38 = v28;
    *(&v38 + 1) = MEMORY[0x277D84F90];
    v39 = v29;
    v40 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE28, &qword_240A35A18);
    sub_2409BD678(&qword_27E50DE30, &qword_27E50DE28, &qword_240A35A18);
    *&v35 = sub_240A2BCDC();
    BYTE8(v35) = 1;
    a1 = v34;
  }

  result = sub_240A2B6EC();
  v32 = BYTE8(v38);
  *a1 = v38;
  *(a1 + 8) = v32;
  return result;
}

uint64_t sub_2409BAFD4(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveredView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = sub_240A2C24C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2409BD3E4(a1, v6, type metadata accessor for DiscoveredView);
  sub_240A2C21C();
  v13 = sub_240A2C20C();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_2409BD44C(v6, v15 + v14);
  sub_2409230D4(0, 0, v11, &unk_240A35A38, v15);
}

uint64_t sub_2409BB1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_240A2AD8C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_240A2C21C();
  v4[6] = sub_240A2C20C();
  v9 = sub_240A2C1BC();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_2409BB294, v9, v8);
}

uint64_t sub_2409BB294()
{
  v1 = v0[5];
  sub_240A2AD7C();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_2409BB348;
  v3 = v0[5];
  v4 = v0[2];

  return sub_2409BD7BC(v3, v4);
}

uint64_t sub_2409BB348()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2409BB4CC, v7, v6);
}

uint64_t sub_2409BB4CC()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

double sub_2409BB534@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_240A29DBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_240A2C00C();
  v9 = v8;
  v10 = sub_240A2BFFC();
  v12 = v11;
  (*(v3 + 104))(v7, *MEMORY[0x277CED628], v2);
  sub_2409BE3BC(&qword_27E50DE60, MEMORY[0x277CED648]);
  sub_240A2C13C();
  sub_240A2C13C();
  (*(v3 + 8))(v7, v2);
  if (v27 == v26)
  {
    v13 = 0xD000000000000016;
  }

  else
  {
    v13 = 0xD000000000000018;
  }

  if (v27 == v26)
  {
    v14 = "proximity_generic_iphone";
  }

  else
  {
    v14 = "_DEVICE_SUBTITLE";
  }

  v15 = v14 | 0x8000000000000000;
  v16 = sub_240A2C06C();
  v18 = v17;
  v19 = sub_240A2C06C();
  v21 = v20;
  v22 = [objc_opt_self() labelColor];
  *a1 = v25;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  *(a1 + 48) = 0;
  *(a1 + 56) = 2;
  *(a1 + 64) = v22;
  *&result = 3;
  *(a1 + 72) = xmmword_240A35900;
  *(a1 + 88) = 0;
  *(a1 + 96) = v16;
  *(a1 + 104) = v18;
  *(a1 + 112) = v19;
  *(a1 + 120) = v21;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_2409BB7B0()
{
  v0 = sub_240A29E6C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  if (qword_27E50AF78 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50DD90);
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "User chose to connect. Updating model", v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0]();
  sub_240A29E2C();
  return sub_240A2BCFC();
}

uint64_t sub_2409BB91C@<X0>(void *a1@<X8>)
{
  v58 = a1;
  v1 = type metadata accessor for DiscoveredView();
  v2 = v1 - 8;
  v54 = *(v1 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v52 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A29DBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D43340]) init];
  v65 = 1;
  sub_240A2BD3C();
  v56 = v60;
  v57 = aBlock;
  v53 = v61;
  v12 = *(v2 + 40);
  sub_240945D78(v10);
  sub_240A2C05C();
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_240A2C06C();

  v14 = sub_240A2BF1C();

  [v11 setTitle_];

  v15 = v51[1];
  v16 = v52;
  sub_240945D78(v10);
  sub_240A2C05C();
  v13(v10, v5);
  sub_240A2C06C();

  v17 = sub_240A2BF1C();

  [v11 setSubtitle_];

  v55 = v11;
  [v11 setDismissalType_];
  sub_2409BD3E4(v15, v16, type metadata accessor for DiscoveredView);
  v18 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v19 = swift_allocObject();
  sub_2409BD44C(v16, v19 + v18);
  v65 = v53;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2409BD4E0;
  *(v20 + 24) = v19;

  v21 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_240937BAC(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_240937BAC((v22 > 1), v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  v24 = &v21[2 * v23];
  v24[4] = sub_24093A2A0;
  v24[5] = v20;
  v25 = v65;
  sub_2409BD3E4(v15, v16, type metadata accessor for DiscoveredView);
  v26 = swift_allocObject();
  sub_2409BD44C(v16, v26 + v18);
  LOBYTE(aBlock) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_2409BD4F8;
  *(v27 + 24) = v26;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_240937BAC(0, v21[2] + 1, 1, v21);
  }

  v29 = v21[2];
  v28 = v21[3];
  if (v29 >= v28 >> 1)
  {
    v21 = sub_240937BAC((v28 > 1), v29 + 1, 1, v21);
  }

  v21[2] = v29 + 1;
  v30 = &v21[2 * v29];
  v30[4] = sub_24093A8F0;
  v30[5] = v27;
  v31 = aBlock;
  sub_2409BD3E4(v15, v16, type metadata accessor for DiscoveredView);
  v32 = swift_allocObject();
  sub_2409BD44C(v16, v32 + v18);
  v65 = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_2409BD594;
  *(v33 + 24) = v32;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_240937BAC(0, v21[2] + 1, 1, v21);
  }

  v35 = v21[2];
  v34 = v21[3];
  if (v35 >= v34 >> 1)
  {
    v21 = sub_240937BAC((v34 > 1), v35 + 1, 1, v21);
  }

  v21[2] = v35 + 1;
  v36 = &v21[2 * v35];
  v36[4] = sub_24093A8F0;
  v36[5] = v33;
  v37 = v65;
  sub_240A2C06C();
  sub_2409BD3E4(v15, v16, type metadata accessor for DiscoveredView);
  v38 = swift_allocObject();
  sub_2409BD44C(v16, v38 + v18);
  v39 = swift_allocObject();
  v40 = v55;
  swift_unknownObjectUnownedInit();
  v41 = swift_allocObject();
  v41[2] = sub_2409BD5AC;
  v41[3] = v38;
  v41[4] = v39;
  v42 = v40;

  v43 = sub_240A2BF1C();

  v63 = sub_2409977DC;
  v64 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_2409DFF20;
  v62 = &block_descriptor_15;
  v44 = _Block_copy(&aBlock);
  v45 = [objc_opt_self() actionWithTitle:v43 style:0 handler:v44];

  _Block_release(v44);

  v46 = v42;

  v49 = v57;
  v48 = v58;
  *v58 = v46;
  v48[1] = v21;
  v50 = v56;
  v48[2] = v49;
  v48[3] = v50;
  *(v48 + 32) = v37;
  return result;
}

uint64_t sub_2409BC108()
{
  v0 = sub_240A29E6C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0]();
  sub_240A29E2C();
  return sub_240A2BCFC();
}

uint64_t sub_2409BC1B8()
{
  sub_240A2BE1C();
  sub_240A2B2DC();
}

uint64_t sub_2409BC224(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DiscoveredView() + 20));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  return sub_240A2BC6C();
}

uint64_t sub_2409BC2A0(void *a1)
{
  v36 = a1;
  v35 = sub_240A299DC();
  v1 = *(v35 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v35, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A29E6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v35 - v15;
  v17 = sub_240A29A0C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0](v23);
  v24 = *MEMORY[0x277CED1A0];
  sub_240A29E5C();
  (*(v7 + 8))(v11, v6);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_240919300(v16, &unk_27E50C790, &unk_240A35770);
  }

  (*(v18 + 32))(v22, v16, v17);
  sub_240A299FC();
  sub_240A299CC();
  v27 = v26;
  (*(v1 + 8))(v5, v35);
  if (!v27)
  {
    sub_240A2C06C();
  }

  v28 = sub_240A2BF1C();
  v29 = [objc_opt_self() systemImageNamed_];

  v30 = [objc_opt_self() systemBlueColor];
  v31 = objc_allocWithZone(MEMORY[0x277D43338]);
  v32 = sub_240A2BF1C();
  v33 = sub_240A2BF1C();

  v34 = [v31 initWithTitle:v32 detailText:v33 icon:v29 tintColor:v30 valueChangedBlock:0];

  return (*(v18 + 8))(v22, v17);
}

uint64_t sub_2409BC6D4(void *a1)
{
  v37 = a1;
  v36 = sub_240A299DC();
  v1 = *(v36 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v36, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A29E6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v36 - v15;
  v17 = sub_240A29A0C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0](v23);
  v24 = *MEMORY[0x277CED1C0];
  sub_240A29E5C();
  (*(v7 + 8))(v11, v6);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_240919300(v16, &unk_27E50C790, &unk_240A35770);
  }

  (*(v18 + 32))(v22, v16, v17);
  sub_240A299FC();
  sub_240A299CC();
  v27 = v26;
  (*(v1 + 8))(v5, v36);
  v28 = v22;
  if (!v27)
  {
    sub_240A2C06C();
  }

  v29 = sub_240A2BF1C();
  v30 = [objc_opt_self() _systemImageNamed_];

  v31 = [objc_opt_self() systemBlueColor];
  v32 = objc_allocWithZone(MEMORY[0x277D43338]);
  v33 = sub_240A2BF1C();
  v34 = sub_240A2BF1C();

  v35 = [v32 initWithTitle:v33 detailText:v34 icon:v30 tintColor:v31 valueChangedBlock:0];

  return (*(v18 + 8))(v28, v17);
}

uint64_t sub_2409BCB0C(void *a1)
{
  v36 = a1;
  v35 = sub_240A299DC();
  v1 = *(v35 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v35, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240A29E6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v35 - v15;
  v17 = sub_240A29A0C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0](v23);
  v24 = *MEMORY[0x277CED1B0];
  sub_240A29E5C();
  (*(v7 + 8))(v11, v6);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_240919300(v16, &unk_27E50C790, &unk_240A35770);
  }

  (*(v18 + 32))(v22, v16, v17);
  sub_240A299FC();
  sub_240A299CC();
  v27 = v26;
  (*(v1 + 8))(v5, v35);
  if (!v27)
  {
    sub_240A2C06C();
  }

  v28 = sub_240A2BF1C();
  v29 = [objc_opt_self() _systemImageNamed_];

  v30 = [objc_opt_self() systemBlueColor];
  v31 = objc_allocWithZone(MEMORY[0x277D43338]);
  v32 = sub_240A2BF1C();
  v33 = sub_240A2BF1C();

  v34 = [v31 initWithTitle:v32 detailText:v33 icon:v29 tintColor:v30 valueChangedBlock:0];

  return (*(v18 + 8))(v22, v17);
}

uint64_t sub_2409BCF50(void *a1, void *a2)
{
  v4 = sub_240A29E6C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  [a2 setEnabled_];
  [a1 setDismissalType_];
  sub_240A2C06C();
  v7 = sub_240A2BF1C();

  [a1 showActivityIndicatorWithStatus_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0]();
  sub_240A29E2C();
  return sub_240A2BCFC();
}

unint64_t sub_2409BD084()
{
  result = qword_27E50DDE8;
  if (!qword_27E50DDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DDE0, &qword_240A359F8);
    sub_2409BD110();
    sub_2409BD18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DDE8);
  }

  return result;
}

unint64_t sub_2409BD110()
{
  result = qword_27E50DDF0;
  if (!qword_27E50DDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DDF8, &qword_240A35A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DDF0);
  }

  return result;
}

unint64_t sub_2409BD18C()
{
  result = qword_27E50DE00;
  if (!qword_27E50DE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DE08, &qword_240A35A08);
    sub_2409BD210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DE00);
  }

  return result;
}

unint64_t sub_2409BD210()
{
  result = qword_27E50DE10;
  if (!qword_27E50DE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DE18, &qword_240A35A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DE10);
  }

  return result;
}

uint64_t sub_2409BD294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDD8, &qword_240A35998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2409BD304()
{
  result = qword_27E50DE20;
  if (!qword_27E50DE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DDD8, &qword_240A35998);
    sub_2409BD084();
    sub_2409BE3BC(&qword_27E50C160, type metadata accessor for PairingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DE20);
  }

  return result;
}

uint64_t sub_2409BD3C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return j__swift_retain(a1);
  }

  else
  {
  }
}

uint64_t sub_2409BD3D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return j__swift_release();
  }

  else
  {
  }
}

uint64_t sub_2409BD3E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409BD44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409BD510(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DiscoveredView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2409BD5AC(void *a1, void *a2)
{
  v4 = *(*(type metadata accessor for DiscoveredView() - 8) + 80);

  return sub_2409BCF50(a1, a2);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409BD678(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2409BD6CC(uint64_t a1)
{
  v4 = *(type metadata accessor for DiscoveredView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240915E50;

  return sub_2409BB1A0(a1, v6, v7, v1 + v5);
}

uint64_t sub_2409BD7BC(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = *(*(sub_240A29E6C() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_240A29DBC();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_240A2AD8C();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v2[10] = v8;
  v10 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  (*(v9 + 16))();
  sub_240A2C21C();
  v2[12] = sub_240A2C20C();
  v12 = sub_240A2C1BC();
  v2[13] = v12;
  v2[14] = v11;

  return MEMORY[0x2822009F8](sub_2409BD968, v12, v11);
}

uint64_t sub_2409BD968()
{
  if (qword_27E50AF78 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  v0[15] = __swift_project_value_buffer(v1, qword_27E50DD90);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "User chose to connect. Updating model", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = v0[4];

  v9 = sub_240A2BFDC();
  v11 = v10;
  v0[16] = v10;
  v12 = v8 + *(type metadata accessor for DiscoveredView() + 32);
  sub_240945D78(v5);
  v13 = sub_240A2BFCC();
  v15 = v14;
  v0[17] = v14;
  (*(v6 + 8))(v5, v7);
  v16 = *(MEMORY[0x277CEDD70] + 4);
  v17 = swift_task_alloc();
  v0[18] = v17;
  *v17 = v0;
  v17[1] = sub_2409BDB88;
  v18 = v0[11];
  v19 = v0[9];
  v20 = MEMORY[0x277CEDD60];

  return MEMORY[0x28213FED0](2, v9, v11, v13, v15, v19, v20);
}

uint64_t sub_2409BDB88(uint64_t a1, char a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 144);
  v7 = *v3;
  v5[19] = a1;
  *(v5 + 160) = a2;

  v8 = v4[17];
  v9 = v4[16];
  v10 = v4[11];
  v11 = v4[10];
  v12 = v4[9];
  if (v2)
  {
    v13 = v4[17];

    (*(v11 + 8))(v10, v12);
    v14 = v5[13];
    v15 = v5[14];
    v16 = sub_2409BDE40;
  }

  else
  {
    (*(v11 + 8))(v4[11], v4[9]);

    v14 = v5[13];
    v15 = v5[14];
    v16 = sub_2409BDD74;
  }

  return MEMORY[0x2822009F8](v16, v14, v15);
}

uint64_t sub_2409BDD74()
{
  v1 = v0[12];
  v3 = v0[4];
  v2 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0]();
  sub_240A29E2C();
  sub_240A2BCFC();
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2409BDE40()
{
  v35 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);

  v4 = *(v0 + 120);
  if (v1)
  {
    v5 = v2;
    v6 = sub_240A2AFFC();
    v7 = sub_240A2C2AC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v8 = 136315138;
      *(v0 + 16) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
      v10 = sub_240A2BF9C();
      v12 = sub_240925464(v10, v11, &v34);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2408FE000, v6, v7, "Local authentication failed due to error %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x245CCDDB0](v9, -1, -1);
      v13 = v8;
LABEL_6:
      MEMORY[0x245CCDDB0](v13, -1, -1);

      goto LABEL_10;
    }

    v23 = *(v0 + 152);

    v24 = v23;
  }

  else
  {
    v14 = v2;
    v6 = sub_240A2AFFC();
    v15 = sub_240A2C2AC();
    v16 = os_log_type_enabled(v6, v15);
    v17 = *(v0 + 152);
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315138;
      *(v0 + 24) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE58, &qword_240A35A48);
      v20 = sub_240A2BF9C();
      v22 = sub_240925464(v20, v21, &v34);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2408FE000, v6, v15, "Current device is not capable of biometrics. Error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x245CCDDB0](v19, -1, -1);
      v13 = v18;
      goto LABEL_6;
    }

    v24 = v17;
  }

  sub_240963F50(v24);
LABEL_10:
  v25 = *(v0 + 152);
  v27 = *(v0 + 32);
  v26 = *(v0 + 40);
  v28 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0]();
  sub_240A29E4C();
  sub_240A2BCFC();
  sub_240963F50(v25);
  v29 = *(v0 + 88);
  v30 = *(v0 + 64);
  v31 = *(v0 + 40);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for DiscoveredView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910) + 32);
  v9 = sub_240A29E6C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[5] + 8);

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_240A29DBC();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = v1[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_240A29DBC();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  sub_24090C1E4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409BE348(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DiscoveredView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2409BE3BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2409BE404()
{
  result = qword_27E50DE68;
  if (!qword_27E50DE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DE70, &qword_240A35A50);
    sub_2409BD304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DE68);
  }

  return result;
}

uint64_t sub_2409BE490(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_240A2B00C();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v7 = sub_240A2962C();
  v2[18] = v7;
  v8 = *(v7 - 8);
  v2[19] = v8;
  v9 = *(v8 + 64) + 15;
  v2[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v11 = sub_240A295AC();
  v2[22] = v11;
  v12 = *(v11 - 8);
  v2[23] = v12;
  v13 = *(v12 + 64) + 15;
  v2[24] = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2409BE6B0, 0, 0);
}

uint64_t sub_2409BE6B0()
{
  v5 = *MEMORY[0x277D85DE8];
  *(v0 + 200) = sub_240A2C21C();
  *(v0 + 208) = sub_240A2C20C();
  v1 = sub_240A2C1BC();
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2409BE77C, v1, v2);
}

uint64_t sub_2409BE77C()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 208);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2409BE810, 0, 0);
}

uint64_t sub_2409BE810()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  *(v0 + 216) = sub_240A2C20C();
  v2 = sub_240A2C1BC();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2409BE8D0, v2, v3);
}

uint64_t sub_2409BE8D0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 216);

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2409BE964, 0, 0);
}

uint64_t sub_2409BE964()
{
  v1 = v0;
  v11 = *MEMORY[0x277D85DE8];
  v2 = v0[11];
  v3 = sub_240A2BF1C();
  v1[28] = v3;
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v4);
  v6 = *(MEMORY[0x277CEDA80] + 4);
  v7 = swift_task_alloc();
  v1[29] = v7;
  *v7 = v1;
  v7[1] = sub_2409BEA88;
  v8 = v1[21];
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x28213F898](v8, v3, v4, v5);
}

uint64_t sub_2409BEA88()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_2409BF344;
  }

  else
  {
    v3 = sub_2409BEBC8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2409BEBC8()
{
  v81 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 120);
    sub_240919300(v3, &qword_27E50C7E0, &qword_240A33150);
    sub_240A2AE9C();
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C2AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2408FE000, v5, v6, "Missing migration URL from URL bag", v7, 2u);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }

    v8 = *(v0 + 224);
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 104);

    (*(v10 + 8))(v9, v11);
    sub_2409B91C4();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();

    goto LABEL_14;
  }

  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  v15 = *(v0 + 136);
  v16 = *(v0 + 96);
  (*(v2 + 32))(*(v0 + 192), v3, v1);
  sub_2409BF428(v16, v15);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v17 = *(v0 + 128);
    sub_240919300(*(v0 + 136), &unk_27E50DCE0, &qword_240A32E20);
    sub_240A2AE5C();
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C2AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v18, v19, "Missing pendingDOB", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    v21 = *(v0 + 224);
    v23 = *(v0 + 184);
    v22 = *(v0 + 192);
    v24 = *(v0 + 176);
    v25 = *(v0 + 128);
    v26 = *(v0 + 104);
    v27 = *(v0 + 112);

    (*(v27 + 8))(v25, v26);
    sub_240926FD4();
    swift_allocError();
    *v28 = xmmword_240A35560;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *(v28 + 16) = 0;
    swift_willThrow();

    (*(v23 + 8))(v22, v24);
    goto LABEL_14;
  }

  v29 = *(v0 + 192);
  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
  v30 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v31 = sub_240A2957C();
  v32 = [v30 initWithURL_];

  v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v34 = sub_240A2BF1C();
  [v33 setDateFormat_];

  v35 = sub_240A295EC();
  v36 = [v33 stringFromDate_];

  v37 = sub_240A2BF4C();
  v39 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE78, &qword_240A35A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  *(inited + 32) = 0x7961646874726962;
  v41 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v37;
  *(inited + 56) = v39;
  sub_2409264C8(inited);
  swift_setDeallocating();
  sub_240919300(v41, &qword_27E50DE80, qword_240A35A68);
  v42 = sub_240A2BF1C();
  [v32 setHTTPMethod_];

  v43 = sub_240A2BF1C();
  v44 = sub_240A2BF1C();
  v80 = v32;
  [v32 setValue:v43 forHTTPHeaderField:v44];

  v45 = objc_opt_self();
  v46 = sub_240A2BE9C();

  *(v0 + 80) = 0;
  v47 = [v45 dataWithJSONObject:v46 options:0 error:v0 + 80];

  v48 = *(v0 + 80);
  v49 = *(v0 + 224);
  v50 = *(v0 + 184);
  v51 = *(v0 + 192);
  v79 = *(v0 + 176);
  if (!v47)
  {
    v63 = *(v0 + 152);
    v62 = *(v0 + 160);
    v64 = *(v0 + 144);
    v65 = v48;
    sub_240A2953C();

    swift_willThrow();
    (*(v63 + 8))(v62, v64);
    (*(v50 + 8))(v51, v79);
LABEL_14:
    v66 = *(v0 + 192);
    v68 = *(v0 + 160);
    v67 = *(v0 + 168);
    v70 = *(v0 + 128);
    v69 = *(v0 + 136);
    v71 = *(v0 + 120);

    v72 = *(v0 + 8);
    v73 = *MEMORY[0x277D85DE8];

    return v72();
  }

  v52 = v33;
  v53 = *(v0 + 152);
  v54 = *(v0 + 160);
  v74 = *(v0 + 144);
  v75 = *(v0 + 168);
  v76 = *(v0 + 136);
  v77 = *(v0 + 128);
  v78 = *(v0 + 120);
  v55 = sub_240A295DC();
  v57 = v56;

  v58 = sub_240A295CC();
  sub_24092D960(v55, v57);
  [v80 setHTTPBody_];

  (*(v53 + 8))(v54, v74);
  (*(v50 + 8))(v51, v79);

  v59 = *(v0 + 8);
  v60 = *MEMORY[0x277D85DE8];

  return v59(v80);
}

uint64_t sub_2409BF344()
{
  v11 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_2409BF428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AISFlowStepChildSetupError.__allocating_init(error:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error) = a1;
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_240A2B0DC();
  *(v5 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v5;
}

void *AISFlowStepChildSetupError.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error);
  v2 = v1;
  return v1;
}

uint64_t AISFlowStepChildSetupError.init(error:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11[-v7];
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error) = a1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v11[15] = 0;
  sub_240A2B0DC();
  (*(v4 + 32))(v1 + v9, v8, v3);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v1;
}

uint64_t AISFlowStepChildSetupError.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  return v0;
}

uint64_t AISFlowStepChildSetupError.__deallocating_deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for AISFlowStepChildSetupError()
{
  result = qword_27E50DE88;
  if (!qword_27E50DE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_2409BF8EC(uint64_t a1))()
{
  v3 = OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  sub_240A2AF2C();

  *(a1 + 16) = *(a1 + 17);
  return sub_2409BF958;
}

uint64_t sub_2409BF968(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v4 = a1;

  sub_240A2AF2C();

  return v6;
}

uint64_t sub_2409BF9C8(void *a1)
{
  v2 = *(v1 + *a1);

  sub_240A2AF2C();

  return v4;
}

void sub_2409BFA1C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&a1[*a4];
  v5 = a1;

  sub_240A2AF3C();
}

uint64_t sub_2409BFA7C(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);

  sub_240A2AF3C();
}

uint64_t sub_2409BFAC4@<X0>(void *a1@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *(*a1 + *a2);

  sub_240A2AF2C();

  *a3 = v6;
  return result;
}

uint64_t sub_2409BFB18(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;

  sub_240A2AF3C();
}

uint64_t (*sub_2409BFB68(uint64_t a1))()
{
  v3 = OBJC_IVAR_____AISSetupViewController___isPreEstablishedClient;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);

  sub_240A2AF2C();

  *(a1 + 16) = *(a1 + 17);
  return sub_2409C45A4;
}

uint64_t sub_2409BFBD4(uint64_t a1)
{
  v1 = *(*a1 + *(a1 + 8));
  *(a1 + 17) = *(a1 + 16);

  sub_240A2AF3C();
}

void sub_2409BFC28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR_____AISSetupViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2409BFC88()
{
  v1 = OBJC_IVAR_____AISSetupViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2409BFCD4(uint64_t a1)
{
  v3 = OBJC_IVAR_____AISSetupViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *SetupViewController.__allocating_init(dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:contextBuilder:reportHandler:)(void *a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v119 = a8;
  v100 = a7;
  v120 = a6;
  v118 = a5;
  v110 = a2;
  v108 = a1;
  v14 = sub_240A2981C();
  v116 = *(v14 - 8);
  v117 = v14;
  v15 = *(v116 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v115 = &v94[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v19);
  v114 = &v94[-v20];
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v21 = *(*(v107 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v107, v22);
  v105 = &v94[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v25);
  v104 = &v94[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v98 = &v94[-v30];
  v31 = type metadata accessor for SetupView();
  v32 = (v31 - 8);
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v94[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = objc_allocWithZone(v9);
  *&v37[OBJC_IVAR_____AISSetupViewController_hostingController] = 0;
  LOBYTE(v121) = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DEB0, &unk_240A35AE0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_240A2AF1C();
  *&v37[OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss] = v41;
  LOBYTE(v121) = a4;
  v42 = *(v38 + 48);
  v43 = *(v38 + 52);
  swift_allocObject();

  v44 = sub_240A2AF1C();
  *&v37[OBJC_IVAR_____AISSetupViewController___isPreEstablishedClient] = v44;
  v131.receiver = v37;
  v131.super_class = v9;

  v45 = objc_msgSendSuper2(&v131, sel_initWithNibName_bundle_, 0, 0);
  sub_240A2C21C();
  v113 = a2;
  v46 = v45;

  v47 = v46;
  v112 = a1;
  v48 = sub_240A2C20C();
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v41;
  v111 = v41;

  v51 = sub_240A2C20C();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = v50;
  v52[4] = v41;
  sub_240A2BD2C();
  v103 = v128;
  v102 = v129;
  v101 = v130;

  v53 = sub_240A2C20C();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = v50;
  v54[4] = v44;
  v109 = v44;

  v55 = sub_240A2C20C();
  v56 = swift_allocObject();
  v56[2] = v55;
  v56[3] = v50;
  v56[4] = v44;
  sub_240A2BD2C();
  v97 = v125;
  v96 = v126;
  v95 = v127;
  v57 = swift_allocObject();
  v106 = v47;
  swift_unknownObjectWeakInit();

  v58 = swift_allocObject();
  v99 = v57;
  v59 = v100;
  v58[2] = v57;
  v58[3] = v59;
  v58[4] = v119;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);

  sub_240A2C32C();
  v60 = sub_240A2B01C();
  (*(*(v60 - 8) + 56))(v98, 1, 1, v60);
  v100 = sub_240A2A1BC();
  LOBYTE(v123) = 0;
  sub_240A2BC4C();
  v61 = *(&v121 + 1);
  v36[48] = v121;
  *(v36 + 7) = v61;
  v62 = v32[12];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v64 = v104;
  (*(*(v63 - 8) + 56))(v104, 1, 1, v63);
  sub_240919298(v64, v105, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v64, &qword_27E50C700, &unk_240A32F50);
  v65 = &v36[v32[13]];
  v123 = 0;
  v124 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v66 = v122;
  *v65 = v121;
  *(v65 + 2) = v66;
  v67 = v32[14];
  *&v36[v67] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v68 = v32[15];
  *&v36[v68] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v69 = v32[16];
  *&v36[v69] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v70 = &v36[v32[17]];
  *v70 = swift_getKeyPath();
  v70[8] = 0;
  v71 = &v36[v32[18]];
  *v71 = swift_getKeyPath();
  v71[8] = 0;
  v72 = &v36[v32[19]];
  *v72 = swift_getKeyPath();
  v72[8] = 0;
  v73 = v32[20];
  v74 = v32[21];
  v75 = &v36[v32[24]];
  LOBYTE(v123) = 1;
  sub_240A2BC4C();
  v76 = *(&v121 + 1);
  *v75 = v121;
  *(v75 + 1) = v76;
  v77 = v114;
  sub_240A2979C();
  v78 = v32[11];
  v79 = v116;
  v80 = v117;
  (*(v116 + 16))(v115, v77, v117);
  sub_240A2BC4C();
  (*(v79 + 8))(v77, v80);
  v81 = v120;
  *v36 = v118;
  *(v36 + 1) = v81;
  *(v36 + 2) = sub_2409C13BC;
  *(v36 + 3) = v58;
  *&v36[v73] = v108;
  *&v36[v74] = v110;
  *(v36 + 4) = v100;
  v82 = &v36[v32[22]];
  v83 = v102;
  *v82 = v103;
  *(v82 + 1) = v83;
  v82[16] = v101;
  v84 = &v36[v32[23]];
  v85 = v96;
  *v84 = v97;
  *(v84 + 1) = v85;
  v84[16] = v95;
  v86 = objc_allocWithZone(sub_240A29DEC());

  *(v36 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v87 = sub_240A297AC();
  sub_240A2A04C();
  v87(&v121, 0);
  sub_240A2BC6C();

  v88 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v89 = sub_240A2B5EC();

  v90 = OBJC_IVAR_____AISSetupViewController_hostingController;
  v91 = v106;
  swift_beginAccess();
  v92 = *&v91[v90];
  *&v91[v90] = v89;

  return v91;
}

char *SetupViewController.init(dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:contextBuilder:reportHandler:)(void *a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v118 = a8;
  v100 = a7;
  v119 = a6;
  v117 = a5;
  v109 = a2;
  v107 = a1;
  v14 = sub_240A2981C();
  v115 = *(v14 - 8);
  v116 = v14;
  v15 = *(v115 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v114 = &v94[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v19);
  v113 = &v94[-v20];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v21 = *(*(v106 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v106, v22);
  v104 = &v94[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v94[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v98 = &v94[-v31];
  v32 = type metadata accessor for SetupView();
  v33 = (v32 - 8);
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v94[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9[OBJC_IVAR_____AISSetupViewController_hostingController] = 0;
  LOBYTE(v120) = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DEB0, &unk_240A35AE0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_240A2AF1C();
  *&v9[OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss] = v41;
  LOBYTE(v120) = a4;
  v42 = *(v38 + 48);
  v43 = *(v38 + 52);
  swift_allocObject();

  v44 = sub_240A2AF1C();
  *&v9[OBJC_IVAR_____AISSetupViewController___isPreEstablishedClient] = v44;
  v45 = type metadata accessor for SetupViewController();
  v130.receiver = v9;
  v130.super_class = v45;

  v46 = objc_msgSendSuper2(&v130, sel_initWithNibName_bundle_, 0, 0);
  sub_240A2C21C();
  v112 = a2;
  v47 = v46;

  v48 = v47;
  v111 = a1;
  v49 = sub_240A2C20C();
  v50 = swift_allocObject();
  v51 = MEMORY[0x277D85700];
  v50[2] = v49;
  v50[3] = v51;
  v50[4] = v41;
  v110 = v41;

  v52 = sub_240A2C20C();
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = v51;
  v53[4] = v41;
  sub_240A2BD2C();
  v103 = v127;
  v102 = v128;
  v101 = v129;

  v54 = sub_240A2C20C();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v51;
  v55[4] = v44;
  v108 = v44;

  v56 = sub_240A2C20C();
  v57 = swift_allocObject();
  v57[2] = v56;
  v57[3] = v51;
  v57[4] = v44;
  sub_240A2BD2C();
  v97 = v124;
  v96 = v125;
  v95 = v126;
  v58 = swift_allocObject();
  v105 = v48;
  swift_unknownObjectWeakInit();

  v59 = swift_allocObject();
  v99 = v58;
  v60 = v100;
  v59[2] = v58;
  v59[3] = v60;
  v59[4] = v118;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);

  sub_240A2C32C();
  v61 = sub_240A2B01C();
  (*(*(v61 - 8) + 56))(v98, 1, 1, v61);
  v100 = sub_240A2A1BC();
  LOBYTE(v122) = 0;
  sub_240A2BC4C();
  v62 = *(&v120 + 1);
  v37[48] = v120;
  *(v37 + 7) = v62;
  v63 = v33[12];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  (*(*(v64 - 8) + 56))(v27, 1, 1, v64);
  sub_240919298(v27, v104, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v27, &qword_27E50C700, &unk_240A32F50);
  v65 = &v37[v33[13]];
  v122 = 0;
  v123 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v66 = v121;
  *v65 = v120;
  *(v65 + 2) = v66;
  v67 = v33[14];
  *&v37[v67] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v68 = v33[15];
  *&v37[v68] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v69 = v33[16];
  *&v37[v69] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v70 = &v37[v33[17]];
  *v70 = swift_getKeyPath();
  v70[8] = 0;
  v71 = &v37[v33[18]];
  *v71 = swift_getKeyPath();
  v71[8] = 0;
  v72 = &v37[v33[19]];
  *v72 = swift_getKeyPath();
  v72[8] = 0;
  v73 = v33[20];
  v74 = v33[21];
  v75 = &v37[v33[24]];
  LOBYTE(v122) = 1;
  sub_240A2BC4C();
  v76 = *(&v120 + 1);
  *v75 = v120;
  *(v75 + 1) = v76;
  v77 = v113;
  sub_240A2979C();
  v78 = v33[11];
  v79 = v115;
  v80 = v116;
  (*(v115 + 16))(v114, v77, v116);
  sub_240A2BC4C();
  (*(v79 + 8))(v77, v80);
  v81 = v119;
  *v37 = v117;
  *(v37 + 1) = v81;
  *(v37 + 2) = sub_2409C45A0;
  *(v37 + 3) = v59;
  *&v37[v73] = v107;
  *&v37[v74] = v109;
  *(v37 + 4) = v100;
  v82 = &v37[v33[22]];
  v83 = v102;
  *v82 = v103;
  *(v82 + 1) = v83;
  v82[16] = v101;
  v84 = &v37[v33[23]];
  v85 = v96;
  *v84 = v97;
  *(v84 + 1) = v85;
  v84[16] = v95;
  v86 = objc_allocWithZone(sub_240A29DEC());

  *(v37 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v87 = sub_240A297AC();
  sub_240A2A04C();
  v87(&v120, 0);
  sub_240A2BC6C();

  v88 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v89 = sub_240A2B5EC();

  v90 = OBJC_IVAR_____AISSetupViewController_hostingController;
  v91 = v105;
  swift_beginAccess();
  v92 = *&v91[v90];
  *&v91[v90] = v89;

  return v91;
}

void sub_2409C1238(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v17 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_240919298(a1, v12, &qword_27E50C6E0, &qword_240A32F18);
    v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    sub_2409974DC(v12, v16 + v15);

    sub_2409C3A54(1, sub_2409C4528, v16);
  }

  else
  {
    a3(a1);
  }
}

char *SetupViewController.__allocating_init(context:dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:reportHandler:)(void *a1, void *a2, void *a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v108 = a3;
  v122 = a2;
  v118 = sub_240A2981C();
  v115 = *(v118 - 8);
  v15 = *(v115 + 64);
  v17 = MEMORY[0x28223BE20](v118, v16);
  v114 = &v95[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v19);
  v113 = &v95[-v20];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v21 = *(*(v109 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v109, v22);
  v107 = &v95[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v25);
  v105 = &v95[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v100 = &v95[-v30];
  v31 = type metadata accessor for SetupView();
  v32 = (v31 - 8);
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v95[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = objc_allocWithZone(v8);
  v121 = swift_allocObject();
  *(v121 + 16) = a1;
  v37 = swift_allocObject();
  v120 = v37;
  *(v37 + 16) = a6;
  *(v37 + 24) = a7;
  v117 = a7;
  v38 = type metadata accessor for SetupViewController();
  v39 = objc_allocWithZone(v38);
  *&v39[OBJC_IVAR_____AISSetupViewController_hostingController] = 0;
  LOBYTE(v123) = a4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DEB0, &unk_240A35AE0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v116 = a1;

  v43 = sub_240A2AF1C();
  *&v39[OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss] = v43;
  LOBYTE(v123) = a5;
  v44 = *(v40 + 48);
  v45 = *(v40 + 52);
  swift_allocObject();

  v46 = sub_240A2AF1C();
  *&v39[OBJC_IVAR_____AISSetupViewController___isPreEstablishedClient] = v46;
  v133.receiver = v39;
  v133.super_class = v38;

  v47 = objc_msgSendSuper2(&v133, sel_initWithNibName_bundle_, 0, 0);
  sub_240A2C21C();
  v112 = a3;
  v48 = v47;

  v49 = v48;
  v111 = v122;
  v50 = sub_240A2C20C();
  v51 = swift_allocObject();
  v52 = MEMORY[0x277D85700];
  v51[2] = v50;
  v51[3] = v52;
  v51[4] = v43;
  v110 = v43;

  v53 = sub_240A2C20C();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = v52;
  v54[4] = v43;
  sub_240A2BD2C();
  v103 = v130;
  v102 = v131;
  v101 = v132;

  v55 = sub_240A2C20C();
  v56 = swift_allocObject();
  v56[2] = v55;
  v56[3] = v52;
  v56[4] = v46;
  v106 = v46;

  v57 = sub_240A2C20C();
  v58 = swift_allocObject();
  v58[2] = v57;
  v58[3] = v52;
  v58[4] = v46;
  sub_240A2BD2C();
  v98 = v127;
  v97 = v128;
  v96 = v129;
  v59 = swift_allocObject();
  v104 = v49;
  swift_unknownObjectWeakInit();

  v60 = swift_allocObject();
  v99 = v59;
  v60[2] = v59;
  v60[3] = sub_2409C41A8;
  v60[4] = v120;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);

  sub_240A2C32C();
  v61 = sub_240A2B01C();
  (*(*(v61 - 8) + 56))(v100, 1, 1, v61);
  v100 = sub_240A2A1BC();
  LOBYTE(v125) = 0;
  sub_240A2BC4C();
  v62 = *(&v123 + 1);
  v36[48] = v123;
  *(v36 + 7) = v62;
  v63 = v32[12];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v65 = v105;
  (*(*(v64 - 8) + 56))(v105, 1, 1, v64);
  sub_240919298(v65, v107, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v65, &qword_27E50C700, &unk_240A32F50);
  v66 = &v36[v32[13]];
  v125 = 0;
  v126 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v67 = v124;
  *v66 = v123;
  *(v66 + 2) = v67;
  v68 = v32[14];
  *&v36[v68] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v69 = v32[15];
  *&v36[v69] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v70 = v32[16];
  *&v36[v70] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v71 = &v36[v32[17]];
  *v71 = swift_getKeyPath();
  v71[8] = 0;
  v72 = &v36[v32[18]];
  *v72 = swift_getKeyPath();
  v72[8] = 0;
  v73 = &v36[v32[19]];
  *v73 = swift_getKeyPath();
  v73[8] = 0;
  v74 = v32[20];
  v75 = v32[21];
  v76 = &v36[v32[24]];
  LOBYTE(v125) = 1;
  sub_240A2BC4C();
  v77 = *(&v123 + 1);
  *v76 = v123;
  *(v76 + 1) = v77;
  v78 = v113;
  sub_240A2979C();
  v79 = v32[11];
  v80 = v115;
  v81 = v118;
  (*(v115 + 16))(v114, v78, v118);
  sub_240A2BC4C();
  (*(v80 + 8))(v78, v81);
  v83 = v121;
  v82 = v122;
  *v36 = sub_2409C41A0;
  *(v36 + 1) = v83;
  *(v36 + 2) = sub_2409C45A0;
  *(v36 + 3) = v60;
  *&v36[v74] = v82;
  *&v36[v75] = v108;
  *(v36 + 4) = v100;
  v84 = &v36[v32[22]];
  v85 = v102;
  *v84 = v103;
  *(v84 + 1) = v85;
  v84[16] = v101;
  v86 = &v36[v32[23]];
  v87 = v97;
  *v86 = v98;
  *(v86 + 1) = v87;
  v86[16] = v96;
  objc_allocWithZone(sub_240A29DEC());

  *(v36 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v88 = sub_240A297AC();
  sub_240A2A04C();
  v88(&v123, 0);
  sub_240A2BC6C();

  v89 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v90 = sub_240A2B5EC();

  v91 = OBJC_IVAR_____AISSetupViewController_hostingController;
  v92 = v104;
  swift_beginAccess();
  v93 = *&v92[v91];
  *&v92[v91] = v90;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v92;
}

char *SetupViewController.init(context:dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:reportHandler:)(void *a1, void *a2, void *a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v107 = a3;
  v120 = a2;
  v116 = sub_240A2981C();
  v114 = *(v116 - 8);
  v13 = *(v114 + 64);
  v15 = MEMORY[0x28223BE20](v116, v14);
  v113 = &v94[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v17);
  v112 = &v94[-v18];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v19 = *(*(v108 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v108, v20);
  v105 = &v94[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v23);
  v104 = &v94[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v99 = &v94[-v28];
  v29 = type metadata accessor for SetupView();
  v30 = (v29 - 8);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v94[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = swift_allocObject();
  *(v119 + 16) = a1;
  v35 = swift_allocObject();
  v118 = v35;
  *(v35 + 16) = a6;
  *(v35 + 24) = a7;
  v117 = a7;
  v36 = type metadata accessor for SetupViewController();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR_____AISSetupViewController_hostingController] = 0;
  LOBYTE(v121) = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DEB0, &unk_240A35AE0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v115 = a1;

  v41 = sub_240A2AF1C();
  *&v37[OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss] = v41;
  LOBYTE(v121) = a5;
  v42 = *(v38 + 48);
  v43 = *(v38 + 52);
  swift_allocObject();

  v44 = sub_240A2AF1C();
  *&v37[OBJC_IVAR_____AISSetupViewController___isPreEstablishedClient] = v44;
  v131.receiver = v37;
  v131.super_class = v36;

  v45 = objc_msgSendSuper2(&v131, sel_initWithNibName_bundle_, 0, 0);
  sub_240A2C21C();
  v111 = a3;
  v46 = v45;

  v47 = v46;
  v110 = v120;
  v48 = sub_240A2C20C();
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v41;
  v109 = v41;

  v51 = sub_240A2C20C();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = v50;
  v52[4] = v41;
  sub_240A2BD2C();
  v102 = v128;
  v101 = v129;
  v100 = v130;

  v53 = sub_240A2C20C();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = v50;
  v54[4] = v44;
  v106 = v44;

  v55 = sub_240A2C20C();
  v56 = swift_allocObject();
  v56[2] = v55;
  v56[3] = v50;
  v56[4] = v44;
  sub_240A2BD2C();
  v97 = v125;
  v96 = v126;
  v95 = v127;
  v57 = swift_allocObject();
  v103 = v47;
  swift_unknownObjectWeakInit();

  v58 = swift_allocObject();
  v98 = v57;
  v58[2] = v57;
  v58[3] = sub_2409C45AC;
  v58[4] = v118;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);

  sub_240A2C32C();
  v59 = sub_240A2B01C();
  (*(*(v59 - 8) + 56))(v99, 1, 1, v59);
  v99 = sub_240A2A1BC();
  LOBYTE(v123) = 0;
  sub_240A2BC4C();
  v60 = *(&v121 + 1);
  v34[48] = v121;
  *(v34 + 7) = v60;
  v61 = v30[12];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v63 = v104;
  (*(*(v62 - 8) + 56))(v104, 1, 1, v62);
  sub_240919298(v63, v105, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v63, &qword_27E50C700, &unk_240A32F50);
  v64 = &v34[v30[13]];
  v123 = 0;
  v124 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v65 = v122;
  *v64 = v121;
  *(v64 + 2) = v65;
  v66 = v30[14];
  *&v34[v66] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v67 = v30[15];
  *&v34[v67] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v68 = v30[16];
  *&v34[v68] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v69 = &v34[v30[17]];
  *v69 = swift_getKeyPath();
  v69[8] = 0;
  v70 = &v34[v30[18]];
  *v70 = swift_getKeyPath();
  v70[8] = 0;
  v71 = &v34[v30[19]];
  *v71 = swift_getKeyPath();
  v71[8] = 0;
  v72 = v30[20];
  v73 = v30[21];
  v74 = &v34[v30[24]];
  LOBYTE(v123) = 1;
  sub_240A2BC4C();
  v75 = *(&v121 + 1);
  *v74 = v121;
  *(v74 + 1) = v75;
  v76 = v112;
  sub_240A2979C();
  v77 = v30[11];
  v78 = v114;
  v79 = v116;
  (*(v114 + 16))(v113, v76, v116);
  sub_240A2BC4C();
  (*(v78 + 8))(v76, v79);
  v81 = v119;
  v80 = v120;
  *v34 = sub_2409C459C;
  *(v34 + 1) = v81;
  *(v34 + 2) = sub_2409C45A0;
  *(v34 + 3) = v58;
  *&v34[v72] = v80;
  *&v34[v73] = v107;
  *(v34 + 4) = v99;
  v82 = &v34[v30[22]];
  v83 = v101;
  *v82 = v102;
  *(v82 + 1) = v83;
  v82[16] = v100;
  v84 = &v34[v30[23]];
  v85 = v96;
  *v84 = v97;
  *(v84 + 1) = v85;
  v84[16] = v95;
  v86 = objc_allocWithZone(sub_240A29DEC());

  *(v34 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v87 = sub_240A297AC();
  sub_240A2A04C();
  v87(&v121, 0);
  sub_240A2BC6C();

  v88 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v89 = sub_240A2B5EC();

  v90 = OBJC_IVAR_____AISSetupViewController_hostingController;
  v91 = v103;
  swift_beginAccess();
  v92 = *&v91[v90];
  *&v91[v90] = v89;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v91;
}

uint64_t sub_2409C29B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v42 = a1;
  v4 = sub_240A29C7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v37 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v37 - v20;
  v22 = sub_240A2B00C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v5 + 16))(v21, v42, v4);
    v28 = a2;
    sub_240A29C4C();

    v29 = v4;
  }

  else
  {
    v37 = v4;
    v38 = v10;
    v39 = v14;
    v40 = v18;
    sub_240A2AE7C();
    v30 = sub_240A2AFFC();
    v31 = sub_240A2C2BC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2408FE000, v30, v31, "Client passed in a nil objc context, this will be a fatal error soon in the future!!!", v32, 2u);
      MEMORY[0x245CCDDB0](v32, -1, -1);
    }

    (*(v23 + 8))(v27, v22);
    v29 = v37;
    (*(v5 + 16))(v38, v42, v37);
    v33 = *MEMORY[0x277CED1A0];
    sub_240A29C0C();
    v34 = *MEMORY[0x277CED1C0];
    sub_240A29BDC();
    v35 = *MEMORY[0x277CED1B0];
    sub_240A29BDC();
    sub_240A29C1C();
  }

  return (*(v5 + 8))(v42, v29);
}

void sub_2409C2CC0(uint64_t a1, void (*a2)(void *, void *), uint64_t a3)
{
  v62 = a3;
  v63 = a2;
  v4 = sub_240A2B00C();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v59 = &v56 - v11;
  v64 = sub_240A29ACC();
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v64, v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = (&v56 - v28);
  sub_240919298(a1, &v56 - v28, &qword_27E50C6E0, &qword_240A32F18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v29;
    sub_240A2AE7C();
    v31 = v30;
    v32 = sub_240A2AFFC();
    v33 = sub_240A2C2AC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v30;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_2408FE000, v32, v33, "Returning setup error from vc: %@", v34, 0xCu);
      sub_240919300(v35, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v35, -1, -1);
      MEMORY[0x245CCDDB0](v34, -1, -1);
    }

    (*(v60 + 8))(v9, v61);
    v38 = v30;
    v63(0, v30);
  }

  else
  {
    v39 = v29;
    v40 = v64;
    (*(v12 + 32))(v24, v39, v64);
    sub_240A2AE7C();
    v41 = *(v12 + 16);
    v41(v21, v24, v40);
    v42 = sub_240A2AFFC();
    v43 = sub_240A2C28C();
    v44 = v24;
    if (os_log_type_enabled(v42, v43))
    {
      v45 = swift_slowAlloc();
      v58 = v24;
      v46 = v45;
      v57 = swift_slowAlloc();
      v65 = v57;
      *v46 = 136315138;
      v47 = v64;
      v41(v17, v21, v64);
      v48 = sub_240A2BF9C();
      v50 = v49;
      v51 = v47;
      v52 = *(v12 + 8);
      v52(v21, v51);
      v53 = sub_240925464(v48, v50, &v65);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_2408FE000, v42, v43, "Returning setup report from vc converted into objc: %s", v46, 0xCu);
      v54 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x245CCDDB0](v54, -1, -1);
      v44 = v58;
      MEMORY[0x245CCDDB0](v46, -1, -1);
    }

    else
    {

      v52 = *(v12 + 8);
      v52(v21, v64);
    }

    (*(v60 + 8))(v59, v61);
    v55 = sub_240A29ABC();
    v63(v55, 0);

    v52(v44, v64);
  }
}

void sub_2409C32A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_240A2952C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id SetupViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SetupViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR_____AISSetupViewController_hostingController) = 0;
  sub_240A2C58C();
  __break(1u);
}

void sub_2409C3404()
{
  v1 = v0;
  v2 = sub_240A2B80C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v65.receiver = v0;
  v65.super_class = type metadata accessor for SetupViewController();
  objc_msgSendSuper2(&v65, sel_viewDidLoad);
  v5 = OBJC_IVAR_____AISSetupViewController_hostingController;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (!v6)
  {
    __break(1u);
    goto LABEL_28;
  }

  v7 = v6;
  sub_240A2B7FC();
  sub_240A2B5AC();

  v8 = *&v0[v5];
  if (!v8)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = v8;
  v10 = sub_240A2B3BC();
  v12 = sub_240A2B5BC();
  if ((*v11 & v10) != 0)
  {
    *v11 &= ~v10;
  }

  v12(v64, 0);

  v13 = *&v1[v5];
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = [v13 view];
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = *&v1[v5];
  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v16 willMoveToParentViewController_];
  if (!*&v1[v5])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v1 addChildViewController_];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v18 = v17;
  v19 = *&v1[v5];
  if (!v19)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = [v19 view];
  if (!v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v21 = v20;
  [v18 addSubview_];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_240A318E0;
  v25 = *&v1[v5];
  if (!v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = [v25 view];
  if (!v26)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v23 topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v24 + 32) = v30;
  v31 = *&v1[v5];
  if (!v31)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v32 = [v31 view];
  if (!v32)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v23 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v24 + 40) = v36;
  v37 = *&v1[v5];
  if (!v37)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v38 = [v37 view];
  if (!v38)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v23 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v24 + 48) = v42;
  v43 = *&v1[v5];
  if (!v43)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v44 = [v43 view];
  if (!v44)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = [v23 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v24 + 56) = v48;
  v49 = *&v1[v5];
  if (!v49)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v50 = [v49 view];
  if (!v50)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v51 = v50;
  v52 = [v50 centerXAnchor];

  v53 = [v23 centerXAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v24 + 64) = v54;
  v55 = *&v1[v5];
  if (!v55)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v56 = [v55 view];
  if (!v56)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v57 = v56;
  v58 = objc_opt_self();
  v59 = [v57 centerYAnchor];

  v60 = [v23 centerYAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v24 + 72) = v61;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v62 = sub_240A2C15C();

  [v58 activateConstraints_];

  v63 = *&v1[v5];
  if (v63)
  {
    [v63 didMoveToParentViewController_];

    return;
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_2409C3A54(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v47 - v11;
  v13 = sub_240A2B00C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v47 - v21;
  v23 = *&v3[OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss];

  sub_240A2AF2C();

  if (v50 == 1)
  {
    sub_240A2AE7C();
    v24 = v4;
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C29C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v49 = a3;
      v28 = v27;
      v29 = swift_slowAlloc();
      v48 = a2;
      v30 = a1;
      v31 = v29;
      *v28 = 138412290;
      *(v28 + 4) = v24;
      *v29 = v24;
      v32 = v24;
      _os_log_impl(&dword_2408FE000, v25, v26, "Auto dismiss is enabled, dismissing view controller: %@", v28, 0xCu);
      sub_240919300(v31, &unk_27E50B730, &qword_240A30CE0);
      v33 = v31;
      a1 = v30;
      a2 = v48;
      MEMORY[0x245CCDDB0](v33, -1, -1);
      v34 = v28;
      a3 = v49;
      MEMORY[0x245CCDDB0](v34, -1, -1);
    }

    (*(v14 + 8))(v22, v13);
    v35 = sub_240A2C24C();
    (*(*(v35 - 8) + 56))(v12, 1, 1, v35);
    sub_240A2C21C();
    v36 = v24;
    sub_240964BBC(a2, a3);
    v37 = sub_240A2C20C();
    v38 = swift_allocObject();
    v39 = MEMORY[0x277D85700];
    *(v38 + 16) = v37;
    *(v38 + 24) = v39;
    *(v38 + 32) = v36;
    *(v38 + 40) = a1 & 1;
    *(v38 + 48) = a2;
    *(v38 + 56) = a3;
    sub_2409230D4(0, 0, v12, &unk_240A35C80, v38);
  }

  else
  {
    sub_240A2AE7C();
    v41 = v4;
    v42 = sub_240A2AFFC();
    v43 = sub_240A2C29C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_2408FE000, v42, v43, "Auto dismiss is disabled, leaving view controller up: %@", v44, 0xCu);
      sub_240919300(v45, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v45, -1, -1);
      MEMORY[0x245CCDDB0](v44, -1, -1);
    }

    result = (*(v14 + 8))(v19, v13);
    if (a2)
    {
      return a2(result);
    }
  }

  return result;
}

uint64_t sub_2409C3E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 96) = a5;
  *(v7 + 64) = a4;
  sub_240A2C21C();
  *(v7 + 88) = sub_240A2C20C();
  v9 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409C3F1C, v9, v8);
}

uint64_t sub_2409C3F1C()
{
  v1 = v0[11];
  v2 = v0[9];

  if (v2)
  {
    v3 = v0[10];
    v0[6] = v0[9];
    v0[7] = v3;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2409EC704;
    v0[5] = &block_descriptor_16;
    v2 = _Block_copy(v0 + 2);
    v4 = v0[7];
  }

  [v0[8] dismissViewControllerAnimated:*(v0 + 96) completion:v2];
  _Block_release(v2);
  v5 = v0[1];

  return v5();
}

id SetupViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_240A2BF1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SetupViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2409C41B0(char *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  return sub_240A2AF3C();
}

uint64_t objectdestroyTm_8(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_2409C4430(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_240915E50;

  return sub_2409C3E7C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409C4528()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2409C45D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2409C461C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_2409C467C()
{
  sub_2409989F4();

  return sub_240A2B53C();
}

uint64_t sub_2409C4704(void (*a1)(void))
{
  a1();
  sub_240A2B53C();
  return v2;
}

uint64_t sub_2409C474C()
{
  sub_2409987A8();
  sub_240A2B53C();
  return v1;
}

uint64_t sub_2409C4788()
{
  sub_2409988A4();
  sub_240A2B53C();
  return v1;
}

uint64_t sub_2409C47C4()
{
  sub_2409989A0();

  return sub_240A2B53C();
}

uint64_t sub_2409C4870@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CED640];
  v3 = sub_240A29DBC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2409C48E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2409C495C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_2409C495C()
{
  result = qword_27E50DEB8;
  if (!qword_27E50DEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D910, qword_240A35F80);
    sub_2409C4A10(&qword_27E50DEC0, MEMORY[0x277CED668]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DEB8);
  }

  return result;
}

uint64_t sub_2409C4A10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2409C4AA4()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2409C4B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v39 = a6;
  v35 = a4;
  v36 = a3;
  v42 = a7;
  v41 = *(a5 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v11;
  type metadata accessor for NavigationControllerReader.ReaderRepresentable();
  v33 = sub_240A2B38C();
  WitnessTable = swift_getWitnessTable();
  v53 = WitnessTable;
  v54 = MEMORY[0x277CDF900];
  v40 = MEMORY[0x277CDFAD8];
  v34 = swift_getWitnessTable();
  v38 = sub_240A2B6DC();
  v12 = sub_240A2B38C();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v37 = &v30 - v20;
  v49 = a1;
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50E070, &qword_240A36110);
  sub_240A2BC5C();
  Strong = swift_unknownObjectWeakLoadStrong();

  v36(Strong);

  v45 = a1;
  v46 = a2;
  sub_240A2BC7C();
  v45 = v49;
  v46 = v50;
  v47 = v51;
  sub_240A2BACC();

  v45 = v49;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  sub_240A2BDEC();
  v22 = v32;
  v23 = v39;
  v24 = v30;
  sub_240A2B9FC();

  (*(v41 + 8))(v24, v22);
  v25 = swift_getWitnessTable();
  v43 = v23;
  v44 = v25;
  swift_getWitnessTable();
  v26 = v13[2];
  v27 = v37;
  v26(v37, v18, v12);
  v28 = v13[1];
  v28(v18, v12);
  v26(v42, v27, v12);
  return (v28)(v27, v12);
}

id sub_2409C4F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *MEMORY[0x277D85000];
  v6 = (v3 + qword_27E50DF58);
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7 = *((v5 & v4) + 0x50);
  v8 = *((v5 & v4) + 0x58);
  v10.receiver = v3;
  v10.super_class = type metadata accessor for NavigationControllerReader.Reader();
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2409C5018()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for NavigationControllerReader.Reader();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2409C50F4(void *a1)
{
  v1 = a1;
  sub_2409C5018();
}

void sub_2409C513C(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2409C59C0();
}

uint64_t sub_2409C51A8(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for NavigationControllerReader.Reader();
  objc_msgSendSuper2(&v10, sel_didMoveToParentViewController_, a1);
  v7 = *(v1 + qword_27E50DF58);
  v8 = *(v1 + qword_27E50DF58 + 8);
  v9 = *(v1 + qword_27E50DF58 + 16);

  v5 = [v1 navigationController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DFE0, &qword_240A36090);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50DFE8, &qword_240A36098);
  sub_240A2BCFC();
}

void sub_2409C5308(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_2409C51A8(a3);
}

id sub_2409C5374(uint64_t a1, char a2)
{
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for NavigationControllerReader.Reader();
  objc_msgSendSuper2(&v13, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  v10 = *(v2 + qword_27E50DF58);
  v11 = *(v2 + qword_27E50DF58 + 8);
  v12 = *(v2 + qword_27E50DF58 + 16);

  result = [v2 view];
  if (result)
  {
    v8 = result;
    v9 = sub_2409C5620(result);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DFE0, &qword_240A36090);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50DFE8, &qword_240A36098);
    sub_240A2BCFC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2409C54F4(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a1;
  sub_2409C5374(a3, a4);
}

id sub_2409C5568(void *a1)
{
  v2 = [a1 nextResponder];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [a1 nextResponder];
  if (result)
  {
    v5 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v6 = sub_2409C5568();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_2409C5620(void *a1)
{
  v1 = a1;
  while (1)
  {
    v2 = v1;
    v3 = sub_2409C5568(v2);
    if (v3)
    {
      break;
    }

LABEL_3:
    v1 = [v2 superview];

    if (!v1)
    {
      return v1;
    }
  }

  v4 = v3;
  v1 = [v3 navigationController];

  if (!v1)
  {
    goto LABEL_3;
  }

  return v1;
}

void sub_2409C56D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v6 = a4;

  sub_2409C5A1C();
}

id sub_2409C5748()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NavigationControllerReader.Reader();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2409C57B8(uint64_t a1)
{
  v1 = *(a1 + qword_27E50DF58);
  v2 = *(a1 + qword_27E50DF58 + 8);
  v3 = *(a1 + qword_27E50DF58 + 16);
}

uint64_t sub_2409C5820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50DFE8, &qword_240A36098);
  sub_240A2BD1C();
  return v1;
}

id sub_2409C5874(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return sub_2409C5BDC();
}

uint64_t sub_2409C5888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_2409C5904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_2409C5980()
{
  swift_getWitnessTable();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_2409C5A4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2409C5AFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2409C5B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2409C5B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2409C5BDC()
{
  v0 = type metadata accessor for NavigationControllerReader.Reader();
  v1 = sub_2409C5820();
  v3 = v2;
  v5 = v4;
  v6 = objc_allocWithZone(v0);
  return sub_2409C4F8C(v1, v3, v5);
}

id sub_2409C5C78()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_240A2BF1C();
  if (!v4)
  {
    v6 = 0;
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v6 = sub_240A2BF1C();
  if (!v0[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = v0[4];
  v8 = sub_240A2BF1C();
LABEL_6:
  v9 = [objc_allocWithZone(type metadata accessor for OnBoardingProgressView.Coordinator()) initWithTitle:v5 detailText:v6 symbolName:v8 contentLayout:v0[6]];

  return v9;
}

void sub_2409C5D24()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for OnBoardingProgressView.Coordinator();
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = OBJC_IVAR____TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator_activityIndicator;
  v3 = *&v0[OBJC_IVAR____TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator_activityIndicator];
  *&v0[OBJC_IVAR____TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator_activityIndicator] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  v5 = [v0 contentView];
  if (!*&v0[v2])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_240A308E0;
  v8 = *&v0[v2];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = [v8 centerXAnchor];
  v10 = [v0 contentView];
  v11 = [v10 centerXAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = *&v0[v2];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = [v13 centerYAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v16 centerYAnchor];

  v19 = [v14 constraintEqualToAnchor_];
  *(v7 + 40) = v19;
  sub_24092F234();
  v20 = sub_240A2C15C();

  [v17 activateConstraints_];

  v21 = *&v0[v2];
  if (v21)
  {
    [v21 startAnimating];
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_2409C5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator_activityIndicator] = 0;
  v11 = sub_240A2BF1C();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_240A2BF1C();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for OnBoardingProgressView.Coordinator();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_symbolName_contentLayout_, v11, v12, v13, a7);

  return v14;
}

id sub_2409C628C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnBoardingProgressView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2409C6304()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E100, &unk_240A36388);
  sub_240A2B81C();
  return v1;
}

id sub_2409C634C@<X0>(void *a1@<X8>)
{
  result = sub_2409C5C78();
  *a1 = result;
  return result;
}

uint64_t sub_2409C6374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409C6468();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2409C63D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409C6468();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2409C643C()
{
  sub_2409C6468();
  sub_240A2B7CC();
  __break(1u);
}

unint64_t sub_2409C6468()
{
  result = qword_27E50E108;
  if (!qword_27E50E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E108);
  }

  return result;
}

uint64_t type metadata accessor for SignInView()
{
  result = qword_27E50E128;
  if (!qword_27E50E128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409C6530()
{
  sub_2409C6758(319, &qword_27E50E138, MEMORY[0x277CED500], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_2409C66F4();
    if (v1 <= 0x3F)
    {
      sub_2409C6758(319, &unk_27E50D900, MEMORY[0x277CED260], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2409C67BC(319, &qword_27E50B600, MEMORY[0x277CED748], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2409C6758(319, &unk_27E50BD70, MEMORY[0x277CED338], MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            sub_2409C67BC(319, &qword_27E50B5F8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2409C66F4()
{
  if (!qword_27E50F570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50F540, &unk_240A34F50);
    v0 = sub_240A2BC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50F570);
    }
  }
}

void sub_2409C6758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2409C67BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2409C6828()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50E110);
  __swift_project_value_buffer(v0, qword_27E50E110);
  return sub_240A2AE7C();
}

uint64_t sub_2409C6874@<X0>(uint64_t a1@<X8>)
{
  v459 = a1;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v390 = *(v461 - 8);
  v2 = *(v390 + 64);
  MEMORY[0x28223BE20](v461, v3);
  v389 = &v384 - v4;
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E140, &qword_240A36400);
  v392 = *(v460 - 8);
  v5 = *(v392 + 64);
  MEMORY[0x28223BE20](v460, v6);
  v391 = &v384 - v7;
  v439 = type metadata accessor for SignInView();
  v396 = *(v439 - 8);
  v8 = *(v396 + 64);
  MEMORY[0x28223BE20](v439, v9);
  v397 = v10;
  v399 = &v384 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v406 = type metadata accessor for FamilyRepairView();
  v11 = *(*(v406 - 8) + 64);
  MEMORY[0x28223BE20](v406, v12);
  v401 = (&v384 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v407 = sub_240A2A46C();
  v400 = *(v407 - 8);
  v14 = *(v400 + 64);
  v16 = MEMORY[0x28223BE20](v407, v15);
  v398 = &v384 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v402 = &v384 - v19;
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E148, &qword_240A36408);
  v20 = *(*(v403 - 8) + 64);
  MEMORY[0x28223BE20](v403, v21);
  v404 = &v384 - v22;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E150, &qword_240A36410);
  v23 = *(*(v437 - 8) + 64);
  MEMORY[0x28223BE20](v437, v24);
  v405 = &v384 - v25;
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D730, &qword_240A34FD0);
  v420 = *(v440 - 8);
  v26 = *(v420 + 64);
  MEMORY[0x28223BE20](v440, v27);
  v419 = &v384 - v28;
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E158, &qword_240A36418);
  v29 = *(*(v434 - 8) + 64);
  MEMORY[0x28223BE20](v434, v30);
  v436 = &v384 - v31;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E160, &qword_240A36420);
  v32 = *(*(v431 - 8) + 64);
  MEMORY[0x28223BE20](v431, v33);
  v432 = &v384 - v34;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E168, &qword_240A36428);
  v35 = *(*(v435 - 8) + 64);
  MEMORY[0x28223BE20](v435, v36);
  v433 = &v384 - v37;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E170, &qword_240A36430);
  v38 = *(*(v452 - 8) + 64);
  MEMORY[0x28223BE20](v452, v39);
  v438 = &v384 - v40;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E178, &qword_240A36438);
  v41 = *(*(v427 - 8) + 64);
  MEMORY[0x28223BE20](v427, v42);
  v429 = (&v384 - v43);
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E180, &qword_240A36440);
  v44 = *(*(v428 - 8) + 64);
  MEMORY[0x28223BE20](v428, v45);
  v415 = &v384 - v46;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E188, &qword_240A36448);
  v47 = *(*(v430 - 8) + 64);
  MEMORY[0x28223BE20](v430, v48);
  v442 = &v384 - v49;
  v446 = type metadata accessor for TermsView();
  v50 = *(*(v446 - 8) + 64);
  MEMORY[0x28223BE20](v446, v51);
  v454 = &v384 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = sub_240A2A18C();
  v441 = *(v455 - 1);
  v53 = *(v441 + 64);
  MEMORY[0x28223BE20](v455, v54);
  v453 = &v384 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E190, &qword_240A36450);
  v56 = *(*(v443 - 8) + 64);
  MEMORY[0x28223BE20](v443, v57);
  v444 = &v384 - v58;
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E198, &qword_240A36458);
  v59 = *(*(v449 - 8) + 64);
  MEMORY[0x28223BE20](v449, v60);
  v445 = &v384 - v61;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1A0, &qword_240A36460);
  v62 = *(*(v456 - 8) + 64);
  MEMORY[0x28223BE20](v456, v63);
  v463 = &v384 - v64;
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1A8, &qword_240A36468);
  v65 = *(*(v462 - 1) + 64);
  MEMORY[0x28223BE20](v462, v66);
  v464 = &v384 - v67;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1B0, &qword_240A36470);
  v68 = *(*(v450 - 8) + 64);
  MEMORY[0x28223BE20](v450, v69);
  v448 = &v384 - v70;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1B8, &qword_240A36478);
  v71 = *(*(v393 - 8) + 64);
  MEMORY[0x28223BE20](v393, v72);
  v394 = &v384 - v73;
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1C0, &qword_240A36480);
  v74 = *(*(v447 - 8) + 64);
  MEMORY[0x28223BE20](v447, v75);
  v395 = &v384 - v76;
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1C8, &qword_240A36488);
  v77 = *(*(v451 - 8) + 64);
  MEMORY[0x28223BE20](v451, v78);
  v80 = (&v384 - v79);
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1D0, &qword_240A36490);
  v81 = *(*(v458 - 8) + 64);
  MEMORY[0x28223BE20](v458, v82);
  v457 = &v384 - v83;
  v425 = sub_240A2975C();
  v424 = *(v425 - 8);
  v84 = *(v424 + 64);
  v86 = MEMORY[0x28223BE20](v425, v85);
  v414 = &v384 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x28223BE20](v86, v88);
  v408 = &v384 - v90;
  v92 = MEMORY[0x28223BE20](v89, v91);
  v386 = &v384 - v93;
  MEMORY[0x28223BE20](v92, v94);
  v385 = &v384 - v95;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1D8, &qword_240A36498);
  v96 = *(*(v416 - 8) + 64);
  MEMORY[0x28223BE20](v416, v97);
  v418 = (&v384 - v98);
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1E0, &qword_240A364A0);
  v99 = *(*(v417 - 8) + 64);
  MEMORY[0x28223BE20](v417, v100);
  v409 = &v384 - v101;
  v423 = sub_240A2B52C();
  v422 = *(v423 - 8);
  v102 = *(v422 + 64);
  MEMORY[0x28223BE20](v423, v103);
  v421 = &v384 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1E8, &qword_240A364A8);
  v106 = *(*(v105 - 8) + 64);
  v108 = MEMORY[0x28223BE20](v105, v107);
  v426 = &v384 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = MEMORY[0x28223BE20](v108, v110);
  v388 = &v384 - v112;
  MEMORY[0x28223BE20](v111, v113);
  v387 = &v384 - v114;
  v115 = sub_240A29B1C();
  v116 = *(v115 - 8);
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v115, v118);
  v120 = (&v384 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = sub_240A29B5C();
  v122 = *(v121 - 8);
  v123 = *(v122 + 64);
  v125 = MEMORY[0x28223BE20](v121, v124);
  v411 = &v384 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v125, v127);
  v129 = &v384 - v128;
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  v130 = v1;
  MEMORY[0x245CCC9B0]();
  sub_240A29B2C();
  v131 = *(v122 + 8);
  v413 = v121;
  v412 = v122 + 8;
  v131(v129, v121);
  v132 = v115;
  v133 = (*(v116 + 88))(v120, v115);
  if (v133 == *MEMORY[0x277CED4F8])
  {
    (*(v116 + 96))(v120, v115);
    v134 = v441;
    v135 = v453;
    (*(v441 + 32))(v453, v120, v455);
    v136 = v454;
    sub_2409CAF20(v135, v454);
    sub_2409CC72C(v136, v444, type metadata accessor for TermsView);
    swift_storeEnumTagMultiPayload();
    sub_2409CBFC8();
    sub_2409CC53C(&qword_27E50E220, type metadata accessor for TermsView);
    v137 = v445;
    sub_240A2B6EC();
    sub_240919298(v137, v448, &qword_27E50E198, &qword_240A36458);
    swift_storeEnumTagMultiPayload();
    sub_2409CBF44();
    sub_2409CC13C();
    sub_240A2B6EC();
    sub_240919300(v137, &qword_27E50E198, &qword_240A36458);
    sub_240919298(v80, v464, &qword_27E50E1C8, &qword_240A36488);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v138 = v457;
    sub_240A2B6EC();
    sub_240919300(v80, &qword_27E50E1C8, &qword_240A36488);
    sub_240919298(v138, v463, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v139 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v140 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    v141 = sub_24091C4F8();
    v142 = sub_24099EBA0();
    *&v479 = v461;
    *(&v479 + 1) = MEMORY[0x277D837D0];
    *&v480 = v139;
    *(&v480 + 1) = MEMORY[0x277CE0BD8];
    *&v481 = v140;
    *(&v481 + 1) = v141;
    v482 = v142;
    v483 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v138, &qword_27E50E1D0, &qword_240A36490);
    sub_2409CC794(v454, type metadata accessor for TermsView);
    return (*(v134 + 8))(v453, v455);
  }

  v453 = v131;
  v144 = v130;
  v454 = v105;
  v455 = v80;
  v145 = v464;
  if (v133 == *MEMORY[0x277CED4C8])
  {
    (*(v116 + 8))(v120, v115);
    v146 = v439;
    v147 = v144 + *(v439 + 40);
    v148 = *v147;
    if (*(v147 + 8) == 1)
    {
      v149 = v442;
      if ((v148 & 1) == 0)
      {
LABEL_6:
        v150 = *(v146 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
        v151 = v414;
        sub_240A2BC5C();
        v152 = v424 + 88;
        v153 = v425;
        v154 = (*(v424 + 88))(v151, v425);
        v155 = (v152 - 80);
        if (v154 == *MEMORY[0x277CED240])
        {
          (*v155)(v151, v153);
          v156 = v411;
          MEMORY[0x245CCC9B0](v410);
          v157 = sub_240A29ADC();
          v159 = v158;
          (v453)(v156, v413);
          started = type metadata accessor for SetupStartViewController();
          v161 = objc_allocWithZone(started);
          v162 = &v161[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
          *v162 = v157;
          v162[1] = v159;
          v468.receiver = v161;
          v468.super_class = started;
          v163 = objc_msgSendSuper2(&v468, sel_initWithContentView_, 0);
          LOBYTE(v469) = 1;
          sub_240A2BD3C();
          v164 = v479;
          v165 = v480;
          sub_240A2C06C();
          v166 = v163;
          v167 = sub_240A2BF1C();

          [v166 showActivityIndicatorWithStatus_];

          LOBYTE(v167) = sub_240A2B88C();
          v168 = sub_240A2B3AC();
          v477 = 0;
          v469 = v166;
          v470 = MEMORY[0x277D84F90];
          v471 = v164;
          v472 = v165;
          *v473 = *v478;
          *&v473[3] = *&v478[3];
          v474 = v168;
          v475 = v167;
          v476 = 0;
        }

        else
        {
          (*v155)(v151, v153);
          v209 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
          LOBYTE(v469) = 1;
          sub_240A2BD3C();
          v210 = v479;
          v211 = v480;
          sub_240A2C06C();
          v212 = v209;
          v213 = sub_240A2BF1C();

          [v212 showActivityIndicatorWithStatus_];

          LOBYTE(v213) = sub_240A2B88C();
          v214 = sub_240A2B3AC();
          v477 = 1;
          v469 = v212;
          v470 = MEMORY[0x277D84F90];
          v471 = v210;
          v472 = v211;
          *v473 = *v478;
          *&v473[3] = *&v478[3];
          v474 = v214;
          v475 = v213;
          v476 = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
        sub_240936BEC();
        sub_240936CA4();
        sub_240A2B6EC();
        v215 = v480;
        v216 = v429;
        *v429 = v479;
        v216[1] = v215;
        v216[2] = v481;
        *(v216 + 24) = v482;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
        sub_2409CC3C8();
        sub_240936B60();
        sub_240A2B6EC();
        v200 = v461;
        goto LABEL_19;
      }
    }

    else
    {

      sub_240A2C2BC();
      v193 = sub_240A2B84C();
      sub_240A2AFEC();

      v194 = v421;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24090C1E4(v148, 0);
      (*(v422 + 8))(v194, v423);
      v149 = v442;
      if (v479 != 1)
      {
        goto LABEL_6;
      }
    }

    v195 = v144 + *(v146 + 32);
    v196 = *v195;
    v197 = *(v195 + 8);
    LOBYTE(v479) = v196;
    *(&v479 + 1) = v197;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
    sub_240A2BC5C();
    v198 = v415;
    sub_2409CABA0(v469);
    v199 = (v198 + *(v428 + 36));
    *v199 = sub_2409CB248;
    v199[1] = 0;
    v199[2] = 0;
    v199[3] = 0;
    sub_240919298(v198, v429, &qword_27E50E180, &qword_240A36440);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_2409CC3C8();
    sub_240936B60();
    sub_240A2B6EC();
    sub_240919300(v198, &qword_27E50E180, &qword_240A36440);
    v200 = v461;
LABEL_19:
    sub_240919298(v149, v432, &qword_27E50E188, &qword_240A36448);
    swift_storeEnumTagMultiPayload();
    sub_2409CC33C();
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0);
    v217 = v433;
    sub_240A2B6EC();
    sub_240919298(v217, v436, &qword_27E50E168, &qword_240A36428);
    swift_storeEnumTagMultiPayload();
    sub_2409CC284();
    sub_2409CC454();
    v218 = v438;
    sub_240A2B6EC();
    sub_240919300(v217, &qword_27E50E168, &qword_240A36428);
    sub_240919298(v218, v464, &qword_27E50E170, &qword_240A36430);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v219 = v457;
    sub_240A2B6EC();
    sub_240919300(v218, &qword_27E50E170, &qword_240A36430);
    sub_240919298(v219, v463, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v220 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v221 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    v222 = sub_24091C4F8();
    v223 = sub_24099EBA0();
    *&v479 = v200;
    *(&v479 + 1) = MEMORY[0x277D837D0];
    *&v480 = v220;
    *(&v480 + 1) = MEMORY[0x277CE0BD8];
    *&v481 = v221;
    *(&v481 + 1) = v222;
    v482 = v223;
    v483 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v219, &qword_27E50E1D0, &qword_240A36490);
    v224 = v442;
    v225 = &qword_27E50E188;
    v226 = &qword_240A36448;
    return sub_240919300(v224, v225, v226);
  }

  v169 = v463;
  if (v133 == *MEMORY[0x277CED4B8])
  {
    (*(v116 + 8))(v120, v132);
    v170 = v439;
    v171 = v144 + *(v439 + 40);
    v172 = *v171;
    if (*(v171 + 8) == 1)
    {
      v173 = v145;
      if ((v172 & 1) == 0)
      {
LABEL_11:
        v174 = *(v170 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
        v175 = v408;
        sub_240A2BC5C();
        v176 = v424 + 88;
        v177 = v425;
        v178 = (*(v424 + 88))(v175, v425);
        v179 = (v176 - 80);
        if (v178 == *MEMORY[0x277CED240])
        {
          (*v179)(v175, v177);
          v180 = v411;
          MEMORY[0x245CCC9B0](v410);
          v181 = sub_240A29ADC();
          v183 = v182;
          (v453)(v180, v413);
          v184 = type metadata accessor for SetupStartViewController();
          v185 = objc_allocWithZone(v184);
          v186 = &v185[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
          *v186 = v181;
          v186[1] = v183;
          v467.receiver = v185;
          v467.super_class = v184;
          v187 = objc_msgSendSuper2(&v467, sel_initWithContentView_, 0);
          LOBYTE(v469) = 1;
          sub_240A2BD3C();
          v188 = v479;
          v189 = v480;
          sub_240A2C06C();
          v190 = v187;
          v191 = sub_240A2BF1C();

          [v190 showActivityIndicatorWithStatus_];

          LOBYTE(v191) = sub_240A2B88C();
          v192 = sub_240A2B3AC();
          v477 = 0;
          v469 = v190;
          v470 = MEMORY[0x277D84F90];
          v471 = v188;
          v472 = v189;
          *v473 = *v478;
          *&v473[3] = *&v478[3];
          v474 = v192;
          v475 = v191;
          v476 = 0;
        }

        else
        {
          (*v179)(v175, v177);
          v242 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
          LOBYTE(v469) = 1;
          sub_240A2BD3C();
          v243 = v479;
          v244 = v480;
          sub_240A2C06C();
          v245 = v242;
          v246 = sub_240A2BF1C();

          [v245 showActivityIndicatorWithStatus_];

          LOBYTE(v246) = sub_240A2B88C();
          v247 = sub_240A2B3AC();
          v477 = 1;
          v469 = v245;
          v470 = MEMORY[0x277D84F90];
          v471 = v243;
          v472 = v244;
          *v473 = *v478;
          *&v473[3] = *&v478[3];
          v474 = v247;
          v475 = v246;
          v476 = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
        sub_240936BEC();
        sub_240936CA4();
        sub_240A2B6EC();
        v248 = v480;
        v249 = v418;
        *v418 = v479;
        v249[1] = v248;
        v249[2] = v481;
        *(v249 + 24) = v482;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
        sub_2409CC054();
        sub_240936B60();
        v233 = v426;
        sub_240A2B6EC();
        goto LABEL_26;
      }
    }

    else
    {

      sub_240A2C2BC();
      v227 = sub_240A2B84C();
      sub_240A2AFEC();

      v228 = v421;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24090C1E4(v172, 0);
      (*(v422 + 8))(v228, v423);
      v173 = v145;
      if (v479 != 1)
      {
        goto LABEL_11;
      }
    }

    v229 = v144 + *(v170 + 32);
    v230 = *v229;
    v231 = *(v229 + 8);
    LOBYTE(v479) = v230;
    *(&v479 + 1) = v231;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
    sub_240A2BC5C();
    v232 = v409;
    sub_2409CABA0(v469);
    sub_240919298(v232, v418, &qword_27E50E1E0, &qword_240A364A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_2409CC054();
    sub_240936B60();
    v233 = v426;
    sub_240A2B6EC();
    sub_240919300(v232, &qword_27E50E1E0, &qword_240A364A0);
LABEL_26:
    v250 = v445;
    sub_240919298(v233, v444, &qword_27E50E1E8, &qword_240A364A8);
    swift_storeEnumTagMultiPayload();
    sub_2409CBFC8();
    sub_2409CC53C(&qword_27E50E220, type metadata accessor for TermsView);
    sub_240A2B6EC();
    sub_240919298(v250, v448, &qword_27E50E198, &qword_240A36458);
    swift_storeEnumTagMultiPayload();
    sub_2409CBF44();
    sub_2409CC13C();
    v251 = v455;
    sub_240A2B6EC();
    sub_240919300(v250, &qword_27E50E198, &qword_240A36458);
    sub_240919298(v251, v173, &qword_27E50E1C8, &qword_240A36488);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v252 = v457;
    sub_240A2B6EC();
    sub_240919300(v251, &qword_27E50E1C8, &qword_240A36488);
    sub_240919298(v252, v463, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v253 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v254 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    v255 = sub_24091C4F8();
    v256 = sub_24099EBA0();
    *&v479 = v461;
    *(&v479 + 1) = MEMORY[0x277D837D0];
    *&v480 = v253;
    *(&v480 + 1) = MEMORY[0x277CE0BD8];
    *&v481 = v254;
    *(&v481 + 1) = v255;
    v482 = v256;
    v483 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v252, &qword_27E50E1D0, &qword_240A36490);
    v224 = v426;
LABEL_27:
    v225 = &qword_27E50E1E8;
    v226 = &qword_240A364A8;
    return sub_240919300(v224, v225, v226);
  }

  if (v133 == *MEMORY[0x277CED4C0])
  {
    (*(v116 + 8))(v120, v132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    v201 = v419;
    sub_240A2B21C();
    (*(v420 + 16))(v432, v201, v440);
    swift_storeEnumTagMultiPayload();
    sub_2409CC33C();
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0);
    v202 = v433;
    sub_240A2B6EC();
    sub_240919298(v202, v436, &qword_27E50E168, &qword_240A36428);
    swift_storeEnumTagMultiPayload();
    sub_2409CC284();
    sub_2409CC454();
    v203 = v438;
    sub_240A2B6EC();
    sub_240919300(v202, &qword_27E50E168, &qword_240A36428);
    sub_240919298(v203, v145, &qword_27E50E170, &qword_240A36430);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v204 = v457;
    sub_240A2B6EC();
    sub_240919300(v203, &qword_27E50E170, &qword_240A36430);
    sub_240919298(v204, v169, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v205 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v206 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    v207 = sub_24091C4F8();
    v208 = sub_24099EBA0();
    *&v479 = v461;
    *(&v479 + 1) = MEMORY[0x277D837D0];
    *&v480 = v205;
    *(&v480 + 1) = MEMORY[0x277CE0BD8];
    *&v481 = v206;
    *(&v481 + 1) = v207;
    v482 = v208;
    v483 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v204, &qword_27E50E1D0, &qword_240A36490);
    return (*(v420 + 8))(v419, v440);
  }

  if (v133 == *MEMORY[0x277CED4D8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    v234 = v419;
    sub_240A2B21C();
    (*(v420 + 16))(v404, v234, v440);
    swift_storeEnumTagMultiPayload();
    v455 = MEMORY[0x277CDD7F8];
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0);
    sub_2409CC53C(&qword_27E50CB28, type metadata accessor for FamilyRepairView);
    v235 = v405;
    sub_240A2B6EC();
    sub_240919298(v235, v436, &qword_27E50E150, &qword_240A36410);
    swift_storeEnumTagMultiPayload();
    sub_2409CC284();
    sub_2409CC454();
    v236 = v438;
    sub_240A2B6EC();
    sub_240919300(v235, &qword_27E50E150, &qword_240A36410);
    sub_240919298(v236, v145, &qword_27E50E170, &qword_240A36430);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v237 = v457;
    sub_240A2B6EC();
    sub_240919300(v236, &qword_27E50E170, &qword_240A36430);
    sub_240919298(v237, v463, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v238 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v239 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    v240 = sub_24091C4F8();
    v241 = sub_24099EBA0();
    *&v479 = v461;
    *(&v479 + 1) = MEMORY[0x277D837D0];
    *&v480 = v238;
    *(&v480 + 1) = MEMORY[0x277CE0BD8];
    *&v481 = v239;
    *(&v481 + 1) = v240;
    v482 = v241;
    v483 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v237, &qword_27E50E1D0, &qword_240A36490);
    (*(v420 + 8))(v419, v440);
    return (*(v116 + 8))(v120, v132);
  }

  if (v133 == *MEMORY[0x277CED4D0])
  {
    (*(v116 + 96))(v120, v132);
    v257 = v400;
    v258 = v402;
    v259 = v407;
    (*(v400 + 32))(v402, v120, v407);
    v455 = sub_240A2C06C();
    v261 = v260;
    v262 = *(v257 + 16);
    v263 = v398;
    v262(v398, v258, v259);
    v264 = v144;
    v265 = v144 + *(v439 + 32);
    v266 = *v265;
    v267 = *(v265 + 8);
    LOBYTE(v479) = v266;
    *(&v479 + 1) = v267;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
    sub_240A2BC5C();
    v268 = v469;
    v269 = v399;
    sub_2409CC72C(v264, v399, type metadata accessor for SignInView);
    v270 = (*(v396 + 80) + 16) & ~*(v396 + 80);
    v271 = swift_allocObject();
    sub_2409CC584(v269, v271 + v270);
    KeyPath = swift_getKeyPath();
    v273 = v401;
    *v401 = KeyPath;
    *(v273 + 8) = 0;
    *(v273 + 16) = swift_getKeyPath();
    *(v273 + 24) = 0;
    *(v273 + 32) = v455;
    *(v273 + 40) = v261;
    v274 = v406;
    v275 = v407;
    v262((v273 + *(v406 + 28)), v263, v407);
    LOBYTE(v469) = v268;
    sub_240A2BC4C();
    v455 = *(v257 + 8);
    v455(v263, v275);
    v276 = *(&v479 + 1);
    v277 = v273 + *(v274 + 32);
    *v277 = v479;
    *(v277 + 8) = v276;
    v278 = (v273 + *(v274 + 36));
    *v278 = sub_2409CC5E8;
    v278[1] = v271;
    sub_2409CC72C(v273, v404, type metadata accessor for FamilyRepairView);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0);
    sub_2409CC53C(&qword_27E50CB28, type metadata accessor for FamilyRepairView);
    v279 = v405;
    sub_240A2B6EC();
    sub_240919298(v279, v436, &qword_27E50E150, &qword_240A36410);
    swift_storeEnumTagMultiPayload();
    sub_2409CC284();
    sub_2409CC454();
    v280 = v438;
    sub_240A2B6EC();
    sub_240919300(v279, &qword_27E50E150, &qword_240A36410);
    sub_240919298(v280, v145, &qword_27E50E170, &qword_240A36430);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v281 = v457;
    sub_240A2B6EC();
    sub_240919300(v280, &qword_27E50E170, &qword_240A36430);
    sub_240919298(v281, v463, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v282 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v283 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    v284 = sub_24091C4F8();
    v285 = sub_24099EBA0();
    *&v479 = v461;
    *(&v479 + 1) = MEMORY[0x277D837D0];
    *&v480 = v282;
    *(&v480 + 1) = MEMORY[0x277CE0BD8];
    *&v481 = v283;
    *(&v481 + 1) = v284;
    v482 = v285;
    v483 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v281, &qword_27E50E1D0, &qword_240A36490);
    sub_2409CC794(v273, type metadata accessor for FamilyRepairView);
    return (v455)(v402, v407);
  }

  v286 = v457;
  if (v133 == *MEMORY[0x277CED4E0])
  {
    v287 = v132;
    v288 = v461;
    (*(v116 + 96))(v120, v287);
    v289 = *v120;
    v290 = v120[1];
    v292 = v120[2];
    v291 = v120[3];
    v293 = v389;
    sub_240A2B22C();
    v469 = v289;
    v470 = v290;
    v464 = v290;
    v478[0] = 1;
    v294 = sub_240A2BD3C();
    v462 = &v384;
    v454 = *(&v479 + 1);
    v455 = v479;
    LODWORD(v457) = v480;
    v296 = MEMORY[0x28223BE20](v294, v295);
    MEMORY[0x28223BE20](v296, v297);
    v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D740, &qword_240A34FE0);
    v453 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    v298 = sub_24091C4F8();
    v383 = sub_24099EBA0();
    v299 = v391;
    sub_240A2BA9C();

    (*(v390 + 8))(v293, v288);

    v300 = v392;
    v301 = v460;
    (*(v392 + 16))(v463, v299, v460);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    *&v479 = v288;
    *(&v479 + 1) = MEMORY[0x277D837D0];
    *&v480 = v452;
    *(&v480 + 1) = MEMORY[0x277CE0BD8];
    *&v481 = v453;
    *(&v481 + 1) = v298;
    v482 = v383;
    v483 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    return (*(v300 + 8))(v299, v301);
  }

  v302 = v144;
  if (v133 == *MEMORY[0x277CED4E8])
  {
    v303 = v439;
    v304 = v144 + *(v439 + 40);
    v305 = *v304;
    v306 = v448;
    if (*(v304 + 8) == 1)
    {
      if (v305)
      {
LABEL_45:
        v350 = v144 + *(v303 + 32);
        v351 = *v350;
        v352 = *(v350 + 8);
        LOBYTE(v479) = v351;
        *(&v479 + 1) = v352;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
        sub_240A2BC5C();
        v353 = v409;
        sub_2409CABA0(v469);
        sub_240919298(v353, v418, &qword_27E50E1E0, &qword_240A364A0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
        sub_2409CC054();
        sub_240936B60();
        v354 = v387;
        sub_240A2B6EC();
        sub_240919300(v353, &qword_27E50E1E0, &qword_240A364A0);
LABEL_52:
        sub_240919298(v354, v394, &qword_27E50E1E8, &qword_240A364A8);
        swift_storeEnumTagMultiPayload();
        sub_2409CBFC8();
        v377 = v395;
        sub_240A2B6EC();
        sub_240919298(v377, v306, &qword_27E50E1C0, &qword_240A36480);
        swift_storeEnumTagMultiPayload();
        sub_2409CBF44();
        sub_2409CC13C();
        v378 = v455;
        sub_240A2B6EC();
        sub_240919300(v377, &qword_27E50E1C0, &qword_240A36480);
        sub_240919298(v378, v464, &qword_27E50E1C8, &qword_240A36488);
        swift_storeEnumTagMultiPayload();
        sub_2409CBEB8();
        sub_2409CC1F8();
        sub_240A2B6EC();
        sub_240919300(v378, &qword_27E50E1C8, &qword_240A36488);
        sub_240919298(v286, v463, &qword_27E50E1D0, &qword_240A36490);
        swift_storeEnumTagMultiPayload();
        sub_2409CBE2C();
        v379 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
        v380 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
        v381 = sub_24091C4F8();
        v382 = sub_24099EBA0();
        *&v479 = v461;
        *(&v479 + 1) = MEMORY[0x277D837D0];
        *&v480 = v379;
        *(&v480 + 1) = MEMORY[0x277CE0BD8];
        *&v481 = v380;
        *(&v481 + 1) = v381;
        v482 = v382;
        v483 = MEMORY[0x277CE0BC8];
        swift_getOpaqueTypeConformance2();
        sub_240A2B6EC();
        sub_240919300(v286, &qword_27E50E1D0, &qword_240A36490);
        v224 = v354;
        goto LABEL_27;
      }
    }

    else
    {

      sub_240A2C2BC();
      v348 = sub_240A2B84C();
      sub_240A2AFEC();

      v349 = v421;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24090C1E4(v305, 0);
      (*(v422 + 8))(v349, v423);
      if (v479 == 1)
      {
        goto LABEL_45;
      }
    }

    v307 = *(v303 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    v308 = v385;
    sub_240A2BC5C();
    v309 = v424 + 88;
    v310 = v425;
    v311 = (*(v424 + 88))(v308, v425);
    v312 = (v309 - 80);
    if (v311 == *MEMORY[0x277CED240])
    {
      (*v312)(v308, v310);
      v313 = v411;
      MEMORY[0x245CCC9B0](v410);
      v314 = sub_240A29ADC();
      v316 = v315;
      (v453)(v313, v413);
      v317 = type metadata accessor for SetupStartViewController();
      v318 = objc_allocWithZone(v317);
      v319 = &v318[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
      *v319 = v314;
      v319[1] = v316;
      v465.receiver = v318;
      v465.super_class = v317;
      v320 = objc_msgSendSuper2(&v465, sel_initWithContentView_, 0);
      LOBYTE(v469) = 1;
      sub_240A2BD3C();
      v321 = v479;
      v322 = v480;
      sub_240A2C06C();
      v323 = v320;
      v324 = sub_240A2BF1C();

      [v323 showActivityIndicatorWithStatus_];

      LOBYTE(v324) = sub_240A2B88C();
      v325 = sub_240A2B3AC();
      v477 = 0;
      v469 = v323;
      v470 = MEMORY[0x277D84F90];
      v471 = v321;
      v472 = v322;
      *v473 = *v478;
      *&v473[3] = *&v478[3];
      v474 = v325;
      v475 = v324;
      v476 = 0;
    }

    else
    {
      (*v312)(v308, v310);
      v361 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
      LOBYTE(v469) = 1;
      sub_240A2BD3C();
      v362 = v479;
      v363 = v480;
      sub_240A2C06C();
      v364 = v361;
      v365 = sub_240A2BF1C();

      [v364 showActivityIndicatorWithStatus_];

      LOBYTE(v365) = sub_240A2B88C();
      v366 = sub_240A2B3AC();
      v477 = 1;
      v469 = v364;
      v470 = MEMORY[0x277D84F90];
      v471 = v362;
      v472 = v363;
      *v473 = *v478;
      *&v473[3] = *&v478[3];
      v474 = v366;
      v475 = v365;
      v476 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
    sub_240936BEC();
    sub_240936CA4();
    sub_240A2B6EC();
    v367 = v480;
    v368 = v418;
    *v418 = v479;
    v368[1] = v367;
    v368[2] = v481;
    *(v368 + 24) = v482;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_2409CC054();
    sub_240936B60();
    v354 = v387;
    sub_240A2B6EC();
    goto LABEL_52;
  }

  v306 = v448;
  v326 = v439;
  if (v133 == *MEMORY[0x277CED4F0])
  {
    v327 = v302 + *(v439 + 40);
    v328 = *v327;
    if (*(v327 + 8) == 1)
    {
      if ((v328 & 1) == 0)
      {
LABEL_42:
        v329 = *(v326 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
        v330 = v386;
        sub_240A2BC5C();
        v331 = v424 + 88;
        v332 = v425;
        v333 = (*(v424 + 88))(v330, v425);
        v334 = (v331 - 80);
        if (v333 == *MEMORY[0x277CED240])
        {
          (*v334)(v330, v332);
          v335 = v411;
          MEMORY[0x245CCC9B0](v410);
          v336 = sub_240A29ADC();
          v338 = v337;
          (v453)(v335, v413);
          v339 = type metadata accessor for SetupStartViewController();
          v340 = objc_allocWithZone(v339);
          v341 = &v340[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
          *v341 = v336;
          v341[1] = v338;
          v466.receiver = v340;
          v466.super_class = v339;
          v342 = objc_msgSendSuper2(&v466, sel_initWithContentView_, 0);
          LOBYTE(v469) = 1;
          sub_240A2BD3C();
          v343 = v479;
          v344 = v480;
          sub_240A2C06C();
          v345 = v342;
          v346 = sub_240A2BF1C();

          [v345 showActivityIndicatorWithStatus_];

          LOBYTE(v346) = sub_240A2B88C();
          v347 = sub_240A2B3AC();
          v477 = 0;
          v469 = v345;
          v470 = MEMORY[0x277D84F90];
          v471 = v343;
          v472 = v344;
          *v473 = *v478;
          *&v473[3] = *&v478[3];
          v474 = v347;
          v475 = v346;
          v476 = 0;
        }

        else
        {
          (*v334)(v330, v332);
          v369 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
          LOBYTE(v469) = 1;
          sub_240A2BD3C();
          v370 = v479;
          v371 = v480;
          sub_240A2C06C();
          v372 = v369;
          v373 = sub_240A2BF1C();

          [v372 showActivityIndicatorWithStatus_];

          LOBYTE(v373) = sub_240A2B88C();
          v374 = sub_240A2B3AC();
          v477 = 1;
          v469 = v372;
          v470 = MEMORY[0x277D84F90];
          v471 = v370;
          v472 = v371;
          *v473 = *v478;
          *&v473[3] = *&v478[3];
          v474 = v374;
          v475 = v373;
          v476 = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
        sub_240936BEC();
        sub_240936CA4();
        sub_240A2B6EC();
        v375 = v480;
        v376 = v418;
        *v418 = v479;
        v376[1] = v375;
        v376[2] = v481;
        *(v376 + 24) = v482;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
        sub_2409CC054();
        sub_240936B60();
        v354 = v388;
        sub_240A2B6EC();
        goto LABEL_52;
      }
    }

    else
    {

      sub_240A2C2BC();
      v355 = sub_240A2B84C();
      sub_240A2AFEC();

      v356 = v421;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24090C1E4(v328, 0);
      (*(v422 + 8))(v356, v423);
      if (v479 != 1)
      {
        goto LABEL_42;
      }
    }

    v357 = (v302 + *(v326 + 32));
    v358 = *v357;
    v359 = *(v357 + 1);
    LOBYTE(v479) = v358;
    *(&v479 + 1) = v359;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
    sub_240A2BC5C();
    v360 = v409;
    sub_2409CABA0(v469);
    sub_240919298(v360, v418, &qword_27E50E1E0, &qword_240A364A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_2409CC054();
    sub_240936B60();
    v354 = v388;
    sub_240A2B6EC();
    sub_240919300(v360, &qword_27E50E1E0, &qword_240A364A0);
    goto LABEL_52;
  }

  result = sub_240A2C65C();
  __break(1u);
  return result;
}

uint64_t sub_2409CABA0(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B638, &qword_240A30C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v20 - v11;
  v13 = type metadata accessor for TeenSetupContinueOnParentOrGuardianView();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    sub_2409CC72C(v17, v12, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    swift_storeEnumTagMultiPayload();
    sub_2409CC53C(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    sub_240A2B6EC();
    return sub_2409CC794(v17, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
  }

  else
  {
    v20[0] = sub_240A2C06C();
    v20[1] = v19;
    sub_24091C4F8();
    sub_240A2B24C();
    (*(v3 + 16))(v12, v7, v2);
    swift_storeEnumTagMultiPayload();
    sub_2409CC53C(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    sub_240A2B6EC();
    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_2409CAF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v2 = type metadata accessor for SignInView();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v30 = v5;
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A2A18C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF80 != -1)
  {
    swift_once();
  }

  v12 = sub_240A2B00C();
  __swift_project_value_buffer(v12, qword_27E50E110);
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C28C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2408FE000, v13, v14, "Show terms view", v15, 2u);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }

  v16 = *(v8 + 16);
  v17 = v31;
  v16(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v7);
  sub_2409CC72C(v29, v6, type metadata accessor for SignInView);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = (v9 + *(v28 + 80) + v18) & ~*(v28 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v18, v11, v7);
  sub_2409CC584(v6, v20 + v19);
  v21 = type metadata accessor for TermsDelegate();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_acceptedCompletion];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v22[OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_finishedCompletion];
  *v24 = sub_2409CC658;
  v24[1] = v20;
  *v23 = 0;
  *(v23 + 1) = 0;
  v33.receiver = v22;
  v33.super_class = v21;
  v25 = objc_msgSendSuper2(&v33, sel_init);
  v16(v11, v17, v7);
  return sub_240A255F0(v11, v25, v32);
}

void sub_2409CB248()
{
  if (qword_27E50AF80 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50E110);
  oslog = sub_240A2AFFC();
  v1 = sub_240A2C28C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v1, "dimissTerms was set, but we're in Teen Setup. This should never happen.", v2, 2u);
    MEMORY[0x245CCDDB0](v2, -1, -1);
  }
}

uint64_t sub_2409CB330(uint64_t a1)
{
  v2 = sub_240A29B5C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = sub_240A29B1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240A2A46C();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  (*(v6 + 104))(v10, *MEMORY[0x277CED4D0], v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  MEMORY[0x245CCC9B0]();
  sub_240A29B3C();
  return sub_240A2BCFC();
}

uint64_t sub_2409CB4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v36 = a5;
  v34 = a2;
  v37 = a6;
  v8 = type metadata accessor for SignInView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v12 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D330, &qword_240A34C68);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v34 - v22;
  v38 = sub_240A2C06C();
  v39 = v24;
  sub_240A2B18C();
  v25 = sub_240A2B19C();
  (*(*(v25 - 8) + 56))(v17, 0, 1, v25);
  sub_2409CC72C(a1, v12, type metadata accessor for SignInView);
  v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_2409CC584(v12, v28 + v26);
  v29 = (v28 + v27);
  v30 = v35;
  *v29 = v34;
  v29[1] = a3;
  v31 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = v36;
  *v31 = v30;
  v31[1] = v32;
  sub_24091C4F8();

  sub_240A2BCBC();
  sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
  sub_240A2BA6C();
  return (*(v19 + 8))(v23, v18);
}

uint64_t sub_2409CB800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_240A29B5C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_240A29B1C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = a2;
  *(v16 + 1) = a3;
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  v16[32] = 1;
  (*(v17 + 104))(v16, *MEMORY[0x277CED4E0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  MEMORY[0x245CCC9B0]();
  sub_240A29B3C();
  return sub_240A2BCFC();
}

uint64_t sub_2409CB988@<X0>(uint64_t a1@<X8>)
{
  sub_24091C4F8();

  result = sub_240A2B9CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2409CB9F4()
{
  sub_240A2C06C();
  sub_24091C4F8();
  v0 = sub_240A2B9CC();
  v2 = v1;
  v4 = v3 & 1;
  sub_240A2BA6C();
  sub_240920658(v0, v2, v4);
}

uint64_t sub_2409CBAD0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_240A29B5C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A29B1C();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A18C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF80 != -1)
  {
    swift_once();
  }

  v18 = sub_240A2B00C();
  __swift_project_value_buffer(v18, qword_27E50E110);
  v19 = sub_240A2AFFC();
  v20 = sub_240A2C28C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v24[1] = v6;
    v22 = v21;
    *v21 = 0;
    _os_log_impl(&dword_2408FE000, v19, v20, "Setting state to dismiss", v21, 2u);
    MEMORY[0x245CCDDB0](v22, -1, -1);
  }

  result = sub_240A2A17C();
  if (result)
  {
    sub_240A2A14C();
    sub_240A2A16C();
    (*(v13 + 16))(v11, v17, v12);
    (*(v25 + 104))(v11, *MEMORY[0x277CED4C8], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
    MEMORY[0x245CCC9B0]();
    sub_240A29B3C();
    sub_240A2BCFC();
    return (*(v13 + 8))(v17, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2409CBE24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2409CB988(a1);
}

unint64_t sub_2409CBE2C()
{
  result = qword_27E50E1F0;
  if (!qword_27E50E1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E1D0, &qword_240A36490);
    sub_2409CBEB8();
    sub_2409CC1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E1F0);
  }

  return result;
}

unint64_t sub_2409CBEB8()
{
  result = qword_27E50E1F8;
  if (!qword_27E50E1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E1C8, &qword_240A36488);
    sub_2409CBF44();
    sub_2409CC13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E1F8);
  }

  return result;
}

unint64_t sub_2409CBF44()
{
  result = qword_27E50E200;
  if (!qword_27E50E200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E1C0, &qword_240A36480);
    sub_2409CBFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E200);
  }

  return result;
}

unint64_t sub_2409CBFC8()
{
  result = qword_27E50E208;
  if (!qword_27E50E208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E1E8, &qword_240A364A8);
    sub_2409CC054();
    sub_240936B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E208);
  }

  return result;
}

unint64_t sub_2409CC054()
{
  result = qword_27E50E210;
  if (!qword_27E50E210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E1E0, &qword_240A364A0);
    sub_2409CC53C(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E210);
  }

  return result;
}

unint64_t sub_2409CC13C()
{
  result = qword_27E50E218;
  if (!qword_27E50E218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E198, &qword_240A36458);
    sub_2409CBFC8();
    sub_2409CC53C(&qword_27E50E220, type metadata accessor for TermsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E218);
  }

  return result;
}

unint64_t sub_2409CC1F8()
{
  result = qword_27E50E228;
  if (!qword_27E50E228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E170, &qword_240A36430);
    sub_2409CC284();
    sub_2409CC454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E228);
  }

  return result;
}

unint64_t sub_2409CC284()
{
  result = qword_27E50E230;
  if (!qword_27E50E230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E168, &qword_240A36428);
    sub_2409CC33C();
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E230);
  }

  return result;
}

unint64_t sub_2409CC33C()
{
  result = qword_27E50E238;
  if (!qword_27E50E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E188, &qword_240A36448);
    sub_2409CC3C8();
    sub_240936B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E238);
  }

  return result;
}

unint64_t sub_2409CC3C8()
{
  result = qword_27E50E240;
  if (!qword_27E50E240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E180, &qword_240A36440);
    sub_2409CC054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E240);
  }

  return result;
}

unint64_t sub_2409CC454()
{
  result = qword_27E50E248;
  if (!qword_27E50E248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E150, &qword_240A36410);
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0);
    sub_2409CC53C(&qword_27E50CB28, type metadata accessor for FamilyRepairView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E248);
  }

  return result;
}

uint64_t sub_2409CC53C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2409CC584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409CC5E8(uint64_t a1)
{
  v2 = *(*(type metadata accessor for SignInView() - 8) + 80);

  return sub_2409CB330(a1);
}

uint64_t sub_2409CC658(uint64_t a1)
{
  v3 = *(sub_240A2A18C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SignInView() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2409CBAD0(a1, v1 + v4);
}

uint64_t sub_2409CC72C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409CC794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2409CC7F4()
{
  v1 = *(type metadata accessor for SignInView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  return sub_2409CB800(v0 + v2, v6, v7, v8, v9);
}

unint64_t sub_2409CC894()
{
  result = qword_27E50E250;
  if (!qword_27E50E250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E258, &qword_240A36528);
    sub_2409CBE2C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BDD0, &unk_240A35010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    sub_24091C4F8();
    sub_24099EBA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E250);
  }

  return result;
}

id sub_2409CC9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for SignInOptionsView();
  v13 = *(v12 + 28);
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  sub_240919298(a2, a3 + *(v12 + 24), &qword_27E50BC98, &qword_240A31A10);
  v14 = objc_allocWithZone(MEMORY[0x277CF0178]);

  result = [v14 init];
  if (result)
  {
    v16 = result;
    v34 = v7;
    v35 = v6;
    v36 = v12;
    v37 = a2;
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v17 = result;
      v18 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

      v19 = type metadata accessor for SignInOptionAuthenticationController();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController] = 0;
      *&v20[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = 0;
      v21 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController;
      *&v20[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController] = 0;
      v22 = &v20[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback];
      *v22 = 0;
      v22[1] = 0;
      v23 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController__isBluetoothDisabled;
      v39 = 0;

      sub_240A2B0DC();
      (*(v34 + 32))(&v20[v23], v11, v35);
      v24 = *&v20[v21];
      *&v20[v21] = v16;
      v25 = v16;

      *&v20[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings] = a1;
      *&v20[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaOwnersManager] = v18;
      v20[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled] = 1;
      v26 = *v22;
      v27 = v22[1];
      *v22 = 0;
      v22[1] = 0;

      v28 = v18;
      sub_24090C1A0(v26);
      v20[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_isAccountCreation] = 0;
      v38.receiver = v20;
      v38.super_class = v19;
      objc_msgSendSuper2(&v38, sel_init);

      v29 = (a3 + *(v36 + 32));
      sub_2409D06C8(&qword_27E50E290, type metadata accessor for SignInOptionAuthenticationController);
      *v29 = sub_240A2B34C();
      v29[1] = v30;
      v31 = objc_allocWithZone(type metadata accessor for SignInOptionsCreateAccountController());
      v32 = sub_240915984(a1);

      result = sub_240919300(v37, &qword_27E50BC98, &qword_240A31A10);
      a3[1] = v32;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2409CCD80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2409CCDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for SignInOptionsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2A0, &qword_240A36628);
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v38 = v28 - v11;
  v29 = a1;
  sub_24092FD24(a1, v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = swift_allocObject();
  sub_2409CFDC0(v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DFE0, &qword_240A36090);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v46 = v15;
  sub_240A2BC4C();
  v28[1] = v40;
  v30 = v41;
  v42 = sub_2409CFE24;
  v43 = v14;
  sub_24092FD24(a1, v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  sub_2409CFDC0(v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v13);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2A8, &qword_240A36630);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2B0, &unk_240A36638);
  v32 = sub_24091CE28(&qword_27E50E2B8, &qword_27E50E2A8, &qword_240A36630);
  v31 = sub_2409CFC80();
  v34 = sub_2409CFCD4();
  sub_240A2BA5C();

  v18 = v29;
  sub_24092FD24(v29, v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_240A2C21C();
  v19 = sub_240A2C20C();
  v20 = (v12 + 32) & ~v12;
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  sub_2409CFDC0(v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_24092FD24(v18, v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_240A2C20C();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  sub_2409CFDC0(v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v20);
  sub_240A2BD2C();
  v39 = v18;
  v40 = v17;
  v41 = &type metadata for SignInOption;
  v42 = v33;
  v43 = v32;
  v44 = v31;
  v45 = v34;
  swift_getOpaqueTypeConformance2();
  v25 = v35;
  v26 = v38;
  sub_240A2BA8C();

  return (*(v36 + 8))(v26, v25);
}

uint64_t sub_2409CD2A0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for SignInOptionsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3 - 8, v6);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v23 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2E8, &qword_240A366A8);
  v11 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v12);
  v14 = &v23 - v13;
  v23 = *a1;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24092FD24(a1, v10);
  v16 = *(v4 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  sub_2409CFDC0(v10, v18 + v17);
  *(v18 + ((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v24;
  sub_24092FD24(a1, v24);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  sub_2409CFDC0(v20, v21 + ((v16 + 24) & ~v16));
  v28 = v23;
  v29 = sub_2409D0338;
  v30 = v18;
  v31 = sub_2409D03D4;
  v32 = v21;
  v27 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2F0, &qword_240A366B0);
  sub_2409D0440();
  sub_2409D0494();
  sub_240A2BADC();

  v14[*(v25 + 36)] = sub_240A2B87C();
  sub_2409D0710();
  sub_240A2BA7C();
  return sub_240919300(v14, &qword_27E50E2E8, &qword_240A366A8);
}

void sub_2409CD5A8(char a1)
{
  v2 = sub_240A2B33C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  if (a1)
  {
    v5 = *(type metadata accessor for SignInOptionsView() + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
    MEMORY[0x245CCC9B0]();
    sub_2409D09F4();
    sub_2409D0A48();
    sub_2409CFC80();
    sub_240A2B30C();
    sub_240A2BCFC();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_2409CD6DC(Strong);
  }
}

void sub_2409CD6DC(void *a1)
{
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = objc_allocWithZone(MEMORY[0x277CF0388]);
    v10 = a1;
    v19 = [v9 init];
    [v19 setPresentingViewController_];
    [v19 setAuthenticationType_];
    v11 = *(v1 + *(type metadata accessor for SignInOptionsView() + 32) + 8);
    *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled) = 0;
    v12 = *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController);
    *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController) = a1;
    v13 = v10;

    sub_240976A18(v19);
    v14 = v19;
  }

  else
  {
    sub_240A2AE9C();
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C2AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "navigationController is nil. Cannot proceed to proxSetup.", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
  }
}

void sub_2409CD8EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_240A2974C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240A2B00C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - v16;
  sub_240A2AE9C();
  v18 = sub_240A2AFFC();
  v19 = sub_240A2C29C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v10;
    v21 = v3;
    v22 = a2;
    v23 = v9;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_2408FE000, v18, v19, "SignInOptions: Begin create an account step", v20, 2u);
    v25 = v24;
    v9 = v23;
    a2 = v22;
    v3 = v21;
    v10 = v38;
    MEMORY[0x245CCDDB0](v25, -1, -1);
  }

  v26 = *(v10 + 8);
  v26(v17, v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    (*(v4 + 104))(v8, *MEMORY[0x277CED200], v3);
    v29 = sub_240A2973C();
    (*(v4 + 8))(v8, v3);
    v30 = *(a2 + 8);
    swift_unknownObjectWeakAssign();
    if (v29)
    {
      v31 = [objc_allocWithZone(MEMORY[0x277CEDE88]) init];
      [v31 setSignInFlowType_];
      [v31 setForceOfferAgeRangePicker_];
      [v31 setSetupSelfFlow_];
      [v31 setSetupLaterFlow_];
      v32 = [objc_allocWithZone(AISShieldViewController) initWithShieldFlowContext_];
      [v32 setDelegate_];

      [v28 pushViewController:v32 animated:1];
    }

    else
    {
      sub_240913F28();
    }
  }

  else
  {
    v33 = v39;
    sub_240A2AE9C();
    v34 = sub_240A2AFFC();
    v35 = sub_240A2C2AC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2408FE000, v34, v35, "navigationController is nil. Cannot proceed to account creation flow.", v36, 2u);
      MEMORY[0x245CCDDB0](v36, -1, -1);
    }

    v26(v33, v9);
  }
}

uint64_t sub_2409CDCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v75 = a2;
  v69 = sub_240A2B3DC();
  v63 = *(v69 - 8);
  v2 = *(v63 + 64);
  MEMORY[0x28223BE20](v69, v3);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E328, &qword_240A366C8);
  v61 = *(v64 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v64, v6);
  v60 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E340, &qword_240A366D0);
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v65 = &v59 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E320, &qword_240A366C0);
  v12 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74, v13);
  v68 = &v59 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E348, &qword_240A366D8);
  v15 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72, v16);
  v73 = &v59 - v17;
  v18 = type metadata accessor for SignInOptionsView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8, v21);
  v22 = sub_240A2B19C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E310, &qword_240A366B8);
  v27 = *(v71 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v71, v29);
  v31 = &v59 - v30;
  v32 = sub_240A2974C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 104))(v37, *MEMORY[0x277CED220], v32);
  v38 = sub_240A2973C();
  (*(v33 + 8))(v37, v32);
  if (v38)
  {
    sub_240A2B17C();
    sub_24092FD24(v70, &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v39 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v40 = swift_allocObject();
    sub_2409CFDC0(&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
    MEMORY[0x245CCC970](v26, sub_2409D0EBC, v40);
    v41 = v71;
    (*(v27 + 16))(v73, v31, v71);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50E308, &qword_27E50E310, &qword_240A366B8);
    sub_2409D054C();
    sub_240A2B6EC();
    return (*(v27 + 8))(v31, v41);
  }

  else
  {
    sub_24092FD24(v70, &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v44 = swift_allocObject();
    sub_2409CFDC0(&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C688, &unk_240A366E0);
    sub_24091CE28(&qword_27E50C690, &qword_27E50C688, &unk_240A366E0);
    v45 = v60;
    sub_240A2BC9C();
    v46 = v62;
    sub_240A2B3CC();
    v70 = MEMORY[0x277CDF028];
    v47 = sub_24091CE28(&qword_27E50E330, &qword_27E50E328, &qword_240A366C8);
    v48 = sub_2409D06C8(&qword_27E50C238, MEMORY[0x277CDDB18]);
    v49 = v64;
    v50 = v65;
    v51 = v69;
    sub_240A2BA1C();
    (*(v63 + 8))(v46, v51);
    (*(v61 + 8))(v45, v49);
    sub_240A2B56C();
    v52 = sub_240A2B9BC();
    v54 = v53;
    v56 = v55;
    v76 = v49;
    v77 = v51;
    v78 = v47;
    v79 = v48;
    swift_getOpaqueTypeConformance2();
    v57 = v67;
    v58 = v68;
    sub_240A2BA4C();
    sub_240920658(v52, v54, v56 & 1);

    (*(v66 + 8))(v50, v57);
    sub_240908AB8(v58, v73);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50E308, &qword_27E50E310, &qword_240A366B8);
    sub_2409D054C();
    sub_240A2B6EC();
    return sub_240919300(v58, &qword_27E50E320, &qword_240A366C0);
  }
}

uint64_t sub_2409CE568(uint64_t a1)
{
  v23 = sub_240A2B52C();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v22 - v10);
  v12 = sub_240A2B2AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SignInOptionsView();
  sub_240919298(a1 + *(v18 + 28), v11, &qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  else
  {
    v19 = *v11;
    sub_240A2C2BC();
    v20 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v23);
  }

  sub_240A2B29C();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_2409CE7F0()
{
  v0 = sub_240A2B56C();

  return MEMORY[0x282130010](v0);
}

uint64_t sub_2409CE84C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2D0, &qword_240A36690);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v36 - v9;
  v11 = type metadata accessor for PasswordSignInView(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2D8, &qword_240A36698);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v36 - v20;
  if (*a1 == 1)
  {
    v22 = *a2;
    v23 = type metadata accessor for SignInOptionsView();
    v36[1] = v6;
    v36[2] = a3;
    v24 = *(v23 + 24);
    v25 = *(v11 + 20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
    sub_240A2BD1C();
    *v15 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2E0, &qword_240A366A0);
    v26 = *(sub_240A2B41C() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_240A305D0;
    sub_240A2B40C();
    v30 = sub_2409D06C8(&qword_27E50BCC0, type metadata accessor for PasswordSignInView);
    MEMORY[0x245CCC7B0](2, v29, v11, v30);

    sub_2409D02DC(v15);
    (*(v17 + 16))(v10, v21, v16);
    swift_storeEnumTagMultiPayload();
    v37 = v11;
    v38 = v30;
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    return (*(v17 + 8))(v21, v16);
  }

  else
  {
    sub_240A2B56C();
    *v10 = sub_240A2B9BC();
    *(v10 + 1) = v32;
    v10[16] = v33 & 1;
    *(v10 + 3) = v34;
    swift_storeEnumTagMultiPayload();
    v35 = sub_2409D06C8(&qword_27E50BCC0, type metadata accessor for PasswordSignInView);
    v37 = v11;
    v38 = v35;
    swift_getOpaqueTypeConformance2();
    return sub_240A2B6EC();
  }
}

uint64_t sub_2409CEC7C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SignInOptionsView() + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v5;
  return result;
}

uint64_t sub_2409CED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + *(type metadata accessor for SignInOptionsView() + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_240A2B12C();
}

uint64_t sub_2409CED90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for SignInOptionsView();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_240A2BB4C();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  MEMORY[0x28223BE20](v9, v10);
  v36 = sub_240A2C06C();
  v37 = v11;
  sub_24091C4F8();
  v12 = sub_240A2B9CC();
  v33 = v13;
  v34 = v12;
  v31 = v14;
  v32 = v15;
  v36 = sub_240A2C06C();
  v37 = v16;
  v17 = sub_240A2B9CC();
  v29[2] = v18;
  v29[3] = v17;
  v29[1] = v19;
  v36 = sub_240A2C06C();
  v37 = v20;
  v21 = sub_240A2B9CC();
  v23 = v22;
  v25 = v24;
  sub_24092FD24(a1, v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v27 = swift_allocObject();
  sub_2409CFDC0(v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  sub_240A2BB3C();
  sub_240920658(v21, v23, v25 & 1);

  sub_240A2BB2C();
  return sub_240A2BB1C();
}

void sub_2409CF050(uint64_t a1)
{
  v2 = type metadata accessor for SignInOptionsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = [objc_allocWithZone(MEMORY[0x277CBE010]) init];
  sub_24092FD24(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_2409CFDC0(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  aBlock[4] = sub_2409D0254;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409CCD80;
  aBlock[3] = &block_descriptor_17;
  v9 = _Block_copy(aBlock);

  [v6 setPowerState:5 completion:v9];
  _Block_release(v9);
}

void sub_2409CF1E0(void *a1, uint64_t a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v26 - v12;
  if (a1)
  {
    sub_240A2AE9C();
    v14 = a1;
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C2AC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_2408FE000, v15, v16, "Failed to enable bluetooth with error - %@", v17, 0xCu);
      sub_240919300(v18, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v18, -1, -1);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_240A2AE9C();
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C2CC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2408FE000, v21, v22, "Bluetooth turned on sucessfully", v23, 2u);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    (*(v5 + 8))(v13, v4);
    v24 = *(*(a2 + *(type metadata accessor for SignInOptionsView() + 32) + 8) + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController);
    v25 = v24;
    sub_2409CD6DC(v24);
  }
}

uint64_t sub_2409CF480(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v6 = v1 + *(a1 + 24);
  sub_240A2BD1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E298, &qword_240A36620);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2A0, &qword_240A36628);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2A8, &qword_240A36630);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2B0, &unk_240A36638);
  sub_24091CE28(&qword_27E50E2B8, &qword_27E50E2A8, &qword_240A36630);
  sub_2409CFC80();
  sub_2409CFCD4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_240A2B39C();
}

char *sub_2409CF650()
{
  v0 = objc_allocWithZone(type metadata accessor for SignInOptionsViewController());
  v1 = sub_24099B718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E378, &qword_240A367F0);
  sub_240A2B81C();
  *&v1[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_delegate + 8] = &off_285290DE8;
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t sub_2409CF6E8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_2409D0DC8();
}

id sub_2409CF728@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = type metadata accessor for SignInOptionsViewWrapper.Coordinator();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInSettings] = v3;
  v10 = &v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInOptionHandler];
  *v10 = v4;
  *(v10 + 1) = v5;
  v11 = &v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_createAccountActionHandler];
  *v11 = v6;
  *(v11 + 1) = v7;
  v13.receiver = v9;
  v13.super_class = v8;

  result = objc_msgSendSuper2(&v13, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_2409CF7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409D0D74();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2409CF848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409D0D74();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2409CF8AC()
{
  sub_2409D0D74();
  sub_240A2B7CC();
  __break(1u);
}

id sub_2409CF904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInOptionsViewWrapper.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SignInOptionsView()
{
  result = qword_27E50E278;
  if (!qword_27E50E278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409CFA38()
{
  type metadata accessor for AISSignInSettings();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SignInOptionsCreateAccountController();
    if (v1 <= 0x3F)
    {
      sub_2409CFB64(319, &qword_27E50D510, MEMORY[0x277CDD968], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_2409CFB64(319, &qword_27E50C9F8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2409CFBC8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2409CFB64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2409CFBC8()
{
  if (!qword_27E50E288)
  {
    type metadata accessor for SignInOptionAuthenticationController();
    sub_2409D06C8(&qword_27E50E290, type metadata accessor for SignInOptionAuthenticationController);
    v0 = sub_240A2B35C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50E288);
    }
  }
}

unint64_t sub_2409CFC80()
{
  result = qword_27E50E2C0;
  if (!qword_27E50E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E2C0);
  }

  return result;
}

unint64_t sub_2409CFCD4()
{
  result = qword_27E50E2C8;
  if (!qword_27E50E2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2B0, &unk_240A36638);
    type metadata accessor for PasswordSignInView(255);
    sub_2409D06C8(&qword_27E50BCC0, type metadata accessor for PasswordSignInView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E2C8);
  }

  return result;
}

uint64_t sub_2409CFDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInOptionsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409CFE24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignInOptionsView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2409CD2A0(v4, a1);
}

uint64_t sub_2409CFEA4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SignInOptionsView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2409CE84C(a1, v6, a2);
}

uint64_t sub_2409CFF24@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for SignInOptionsView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2409CEC7C(v6, a1);
}

uint64_t objectdestroy_23Tm_0()
{
  v1 = type metadata accessor for SignInOptionsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = (v0 + v3 + v1[6]);
  v9 = *v8;

  v10 = *(v8 + 1);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10) + 32);
  v12 = sub_240A2B33C();
  (*(*(v12 - 8) + 8))(&v8[v11], v12);
  v13 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_240A2B2AC();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409D0148(uint64_t a1)
{
  v3 = *(type metadata accessor for SignInOptionsView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2409CED10(a1, v4, v5, v6);
}

void sub_2409D01C4()
{
  v1 = *(type metadata accessor for SignInOptionsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2409CF050(v2);
}

uint64_t sub_2409D0224(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_2409D0254(void *a1)
{
  v3 = *(type metadata accessor for SignInOptionsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_2409CF1E0(a1, v4);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409D02DC(uint64_t a1)
{
  v2 = type metadata accessor for PasswordSignInView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2409D0338(char a1)
{
  v3 = *(type metadata accessor for SignInOptionsView() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2409CD5A8(a1 & 1);
}

void sub_2409D03D4()
{
  v1 = *(type metadata accessor for SignInOptionsView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_2409CD8EC(v2, v3);
}

unint64_t sub_2409D0440()
{
  result = qword_27E50E2F8;
  if (!qword_27E50E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E2F8);
  }

  return result;
}

unint64_t sub_2409D0494()
{
  result = qword_27E50E300;
  if (!qword_27E50E300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2F0, &qword_240A366B0);
    sub_24091CE28(&qword_27E50E308, &qword_27E50E310, &qword_240A366B8);
    sub_2409D054C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E300);
  }

  return result;
}

unint64_t sub_2409D054C()
{
  result = qword_27E50E318;
  if (!qword_27E50E318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E320, &qword_240A366C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E328, &qword_240A366C8);
    sub_240A2B3DC();
    sub_24091CE28(&qword_27E50E330, &qword_27E50E328, &qword_240A366C8);
    sub_2409D06C8(&qword_27E50C238, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_2409D06C8(&qword_27E50CBC0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E318);
  }

  return result;
}

uint64_t sub_2409D06C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2409D0710()
{
  result = qword_27E50E338;
  if (!qword_27E50E338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2E8, &qword_240A366A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2F0, &qword_240A366B0);
    sub_2409D0440();
    sub_2409D0494();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E338);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for SignInOptionsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = (v0 + v3 + v1[6]);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10) + 32);
  v11 = sub_240A2B33C();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);
  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_240A2B2AC();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_2409D09F4()
{
  result = qword_27E50E350;
  if (!qword_27E50E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E350);
  }

  return result;
}

unint64_t sub_2409D0A48()
{
  result = qword_27E50E358;
  if (!qword_27E50E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E358);
  }

  return result;
}

uint64_t sub_2409D0A9C(char a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    if (a1)
    {
      v15 = 0x64726F7773736150;
    }

    else
    {
      v15 = 0x20797469786F7250;
    }

    if (a1)
    {
      v16 = 0xEE007972746E6520;
    }

    else
    {
      v16 = 0xED00007075746553;
    }

    v17 = sub_240925464(v15, v16, &v23);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2408FE000, v10, v11, "%s selected", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    v18 = v13;
    v2 = v22;
    MEMORY[0x245CCDDB0](v18, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v20 = *(v2 + OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInOptionHandler);
  v19 = *(v2 + OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInOptionHandler + 8);

  v20(a1 & 1);
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

uint64_t sub_2409D0CD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2409D0D18(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2409D0D74()
{
  result = qword_27E50E370;
  if (!qword_27E50E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E370);
  }

  return result;
}

uint64_t sub_2409D0DC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E378, &qword_240A367F0);
  sub_240A2B81C();
  v1 = *&v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInSettings];
  *&v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInSettings] = *v0;

  sub_240A2B81C();
  v2 = v0[2];
  v3 = &v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInOptionHandler];
  v4 = *&v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInOptionHandler + 8];
  *v3 = v0[1];
  *(v3 + 1) = v2;

  sub_240A2B81C();
  v5 = v0[4];
  v6 = &v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_createAccountActionHandler];
  v7 = *&v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_createAccountActionHandler + 8];
  *v6 = v0[3];
  *(v6 + 1) = v5;
}

uint64_t RepairView.init(contextBuilder:reportHandler:repairController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v8 = sub_240A29A9C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for RepairView();
  v21 = v20[8];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  sub_240919298(v19, v16, &qword_27E50C058, &qword_240A31F50);
  sub_240A2BC4C();
  sub_240919300(v19, &qword_27E50C058, &qword_240A31F50);
  v23 = a6 + v20[9];
  v39 = 0;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C070, &qword_240A31F68);
  sub_240A2BC4C();
  v24 = v42;
  *v23 = v41;
  *(v23 + 2) = v24;
  v25 = v20[10];
  *(a6 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  sub_240A29A4C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C078, &qword_240A31FA8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v39 = sub_240A29CDC();
  result = sub_240A2BC4C();
  v30 = *(&v41 + 1);
  a6[5] = v41;
  a6[6] = v30;
  v31 = v35;
  v32 = v36;
  *a6 = a1;
  a6[1] = v31;
  v34 = v37;
  v33 = v38;
  a6[2] = v32;
  a6[3] = v34;
  a6[4] = v33;
  return result;
}

uint64_t type metadata accessor for RepairView()
{
  result = qword_27E50E3D8;
  if (!qword_27E50E3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2409D1198()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50E380);
  __swift_project_value_buffer(v0, qword_27E50E380);
  return sub_240A2AEAC();
}

uint64_t sub_2409D11E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_240A2B52C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for RepairView();
  sub_240919298(v1 + *(v14 + 40), v13, &qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_240A2B2AC();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_240A2C2BC();
    v18 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_2409D13EC()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24094DBBC;

  return sub_2409D1498();
}

uint64_t sub_2409D1498()
{
  v1[9] = v0;
  v2 = sub_240A2BE4C();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = sub_240A2BE6C();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = *(type metadata accessor for RepairView() - 8);
  v1[16] = v8;
  v1[17] = *(v8 + 64);
  v1[18] = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v1[19] = v9;
  v1[20] = *(v9 + 64);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = sub_240A2C21C();
  v1[24] = sub_240A2C20C();
  v11 = sub_240A2C1BC();
  v1[25] = v11;
  v1[26] = v10;

  return MEMORY[0x2822009F8](sub_2409D16C4, v11, v10);
}

uint64_t sub_2409D16C4()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[27] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CEDE70] + 4);
  v4 = swift_task_alloc();
  v0[28] = v4;
  v5 = sub_240A29B9C();
  *v4 = v0;
  v4[1] = sub_2409D1798;
  v6 = v0[22];

  return MEMORY[0x2821400E8](v6, &unk_240A36990, v2, v5);
}

uint64_t sub_2409D1798()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_2409D18DC, v5, v4);
}

uint64_t sub_2409D18DC()
{
  *(v0 + 232) = *(*(v0 + 72) + 32);
  sub_240A2A27C();
  sub_2409DB744(&qword_27E50E508, MEMORY[0x277CED930]);
  v2 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409D199C, v2, v1);
}

uint64_t sub_2409D199C()
{
  v1 = v0[29];
  v0[30] = sub_240A2A26C();
  v2 = v0[25];
  v3 = v0[26];

  return MEMORY[0x2822009F8](sub_2409D1A04, v2, v3);
}

uint64_t sub_2409D1A04()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];
  v18 = v0[30];
  v19 = v0[14];
  v20 = v0[13];
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[10];
  v17 = v0[11];
  sub_2409DBB30(v0[9], v6, type metadata accessor for RepairView);
  sub_240919298(v2, v1, &qword_27E50C088, &unk_240A32000);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v5 + *(v4 + 80) + v8) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_2409DB944(v6, v10 + v8, type metadata accessor for RepairView);
  sub_24093A86C(v1, v10 + v9, &qword_27E50C088, &unk_240A32000);
  v0[6] = sub_2409DB58C;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2409EC704;
  v0[5] = &block_descriptor_18;
  v11 = _Block_copy(v0 + 2);
  sub_240A2BE5C();
  v0[8] = MEMORY[0x277D84F90];
  sub_2409DB744(&qword_27E50CF10, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF90, &unk_240A30E50);
  sub_24091CE28(&qword_27E50CF20, &qword_27E50EF90, &unk_240A30E50);
  sub_240A2C3FC();
  MEMORY[0x245CCD000](0, v14, v15, v11);
  _Block_release(v11);

  (*(v17 + 8))(v15, v16);
  (*(v19 + 8))(v14, v20);
  v12 = v0[7];

  return MEMORY[0x2822009F8](sub_2409D1CE4, 0, 0);
}

uint64_t sub_2409D1CE4()
{
  v1 = *(v0 + 184);
  *(v0 + 248) = sub_240A2C20C();
  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409D1D70, v3, v2);
}

uint64_t sub_2409D1D70()
{
  v1 = v0[31];
  v2 = v0[9];

  sub_2409D1F98();
  v3 = v0[25];
  v4 = v0[26];

  return MEMORY[0x2822009F8](sub_2409D1DDC, v3, v4);
}

uint64_t sub_2409D1DDC()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];

  sub_240919300(v3, &qword_27E50C088, &unk_240A32000);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2409D1E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_240A2C21C();
  *(v4 + 24) = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409D1F34, v6, v5);
}

uint64_t sub_2409D1F34()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_2409D1F98();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2409D1F98()
{
  v0 = sub_240A2B2AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF88 != -1)
  {
    swift_once();
  }

  v6 = sub_240A2B00C();
  __swift_project_value_buffer(v6, qword_27E50E380);
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C28C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v7, v8, "Dismissing repair view & invalidating repair controller", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  sub_2409D11E4(v5);
  sub_240A2B29C();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_2409D212C(uint64_t a1)
{
  v1[2] = sub_240A2C21C();
  v1[3] = sub_240A2C20C();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_24097BAF4;

  return sub_2409D21EC(a1);
}

uint64_t sub_2409D21EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for RepairView() - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  v4 = sub_240A2AC8C();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_240A29D6C();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_240A29D5C();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_240A2C21C();
  v2[18] = sub_240A2C20C();
  v14 = sub_240A2C1BC();
  v2[19] = v14;
  v2[20] = v13;

  return MEMORY[0x2822009F8](sub_2409D2410, v14, v13);
}

uint64_t sub_2409D2410()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[13];
  v23 = v0[12];
  v5 = v0[9];
  v21 = v0[15];
  v22 = v0[8];
  v6 = v0[6];
  v19 = v0[5];
  v20 = v0[7];
  v18 = v0[4];
  v7 = v0[3];
  v8 = *v7;
  v9 = v7[1];
  sub_240A29D4C();
  v8(v1);
  (*(v3 + 16))(v1, v2, v4);
  sub_240979B08();
  sub_240A2C32C();
  sub_2409DBB30(v7, v6, type metadata accessor for RepairView);
  v10 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v11 = swift_allocObject();
  sub_2409DB944(v6, v11 + v10, type metadata accessor for RepairView);
  sub_240A2AC7C();
  sub_240A29D1C();
  (*(v22 + 8))(v5, v20);
  sub_240A29D2C();
  v12 = *(v0[3] + 32);
  v13 = *(MEMORY[0x277CED928] + 4);
  v24 = (*MEMORY[0x277CED928] + MEMORY[0x277CED928]);
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_240989598;
  v15 = v0[12];
  v16 = v0[2];

  return v24(v16, v15);
}

uint64_t sub_2409D26E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_240A2BE7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_240979B08();
  *v13 = sub_240A2C32C();
  (*(v9 + 104))(v13, *MEMORY[0x277D85200], v8);
  v14 = sub_240A2BE8C();
  result = (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v16 = sub_240A2BE1C();
    MEMORY[0x28223BE20](v16, v17);
    *&v18[-32] = a1;
    *&v18[-24] = a4;
    *&v18[-16] = a2;
    *&v18[-8] = a3;
    sub_240A2B2DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2409D2874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v54 = a2;
  v5 = sub_240A29A9C();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v50 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v47 - v24;
  if (qword_27E50AF88 != -1)
  {
    swift_once();
  }

  v26 = sub_240A2B00C();
  __swift_project_value_buffer(v26, qword_27E50E380);
  v62 = *(v17 + 16);
  v62(v25, a1, v16);
  v27 = sub_240A2AFFC();
  v28 = sub_240A2C29C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v58 = v48;
    *v29 = 136315138;
    v62(v22, v25, v16);
    v30 = sub_240A2BF9C();
    v49 = a1;
    v32 = v31;
    (*(v17 + 8))(v25, v16);
    v33 = sub_240925464(v30, v32, &v58);
    a1 = v49;

    *(v29 + 4) = v33;
    _os_log_impl(&dword_2408FE000, v27, v28, "RepairView updated with %s", v29, 0xCu);
    v34 = v48;
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x245CCDDB0](v34, -1, -1);
    MEMORY[0x245CCDDB0](v29, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v25, v16);
  }

  v35 = v50;
  v62(v50, a1, v16);
  (*(v17 + 56))(v35, 0, 1, v16);
  v36 = type metadata accessor for RepairView();
  v37 = *(v36 + 32);
  sub_240919298(v35, v51, &qword_27E50C058, &qword_240A31F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);
  v38 = v54;
  sub_240A2BC6C();
  sub_240919300(v35, &qword_27E50C058, &qword_240A31F50);
  v39 = (v38 + *(v36 + 36));
  v40 = *(v39 + 2);
  v58 = *v39;
  v59 = v40;
  v41 = swift_allocObject();
  v42 = v53;
  *(v41 + 16) = v52;
  *(v41 + 24) = v42;
  v60 = sub_2409976C4;
  v61 = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E408, &qword_240A368D0);
  sub_240A2BC6C();
  v43 = *(v38 + 48);
  *&v58 = *(v38 + 40);
  *(&v58 + 1) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  v44 = v55;
  MEMORY[0x245CCA960](v16);
  v45 = sub_240A29CBC();
  sub_240A29A8C();
  (*(v56 + 8))(v44, v57);
  v45(&v58, 0);
}

uint64_t RepairView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for RepairView();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = sub_240A29A9C();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E398, &qword_240A36828);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A0, &qword_240A36830);
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v29, v17);
  v19 = &v27 - v18;
  sub_2409D318C(v1, v14);
  v20 = *(v1 + 48);
  v32 = *(v1 + 40);
  v33 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  sub_240A29CCC();

  sub_2409DBB30(v1, &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RepairView);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_2409DB944(&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for RepairView);
  v23 = sub_2409DA9E0();
  v24 = sub_2409DB744(&qword_27E50E3D0, MEMORY[0x277CED4A0]);
  sub_240A2BAFC();

  (*(v30 + 8))(v9, v5);
  sub_240919300(v14, &qword_27E50E398, &qword_240A36828);
  v32 = v10;
  v33 = v5;
  v34 = v23;
  v35 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_240A2BA7C();
  return (*(v15 + 8))(v19, v25);
}

uint64_t sub_2409D318C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a2;
  v178 = sub_240A29A1C();
  v159 = *(v178 - 8);
  v3 = *(v159 + 64);
  MEMORY[0x28223BE20](v178, v4);
  v177 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E410, &qword_240A368D8);
  v6 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157, v7);
  v149 = &v149 - v8;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E418, &qword_240A368E0);
  v9 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180, v10);
  v179 = &v149 - v11;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E420, &qword_240A368E8);
  v12 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175, v13);
  v176 = (&v149 - v14);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E428, &qword_240A368F0);
  v15 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155, v16);
  v156 = &v149 - v17;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E430, &qword_240A368F8);
  v18 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160, v19);
  v158 = &v149 - v20;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E438, &qword_240A36900);
  v21 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190, v22);
  v161 = &v149 - v23;
  v24 = type metadata accessor for RepairView();
  v150 = *(v24 - 8);
  v25 = *(v150 + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v151 = v27;
  v152 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  v28 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154, v29);
  v153 = &v149 - v30;
  v174 = sub_240A29A5C();
  v173 = *(v174 - 1);
  v31 = *(v173 + 64);
  MEMORY[0x28223BE20](v174, v32);
  v172 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E440, &qword_240A36908);
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34 - 8, v36);
  v188 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v187 = &v149 - v40;
  v171 = sub_240A2A8FC();
  v170 = *(v171 - 8);
  v41 = *(v170 + 64);
  MEMORY[0x28223BE20](v171, v42);
  v169 = &v149 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E448, &qword_240A36910);
  v45 = *(*(v44 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v44 - 8, v46);
  v186 = &v149 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v49);
  v194 = &v149 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E450, &qword_240A36918);
  v52 = *(*(v51 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v51 - 8, v53);
  v185 = &v149 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v56);
  v193 = &v149 - v57;
  v184 = sub_240A2A9AC();
  v183 = *(v184 - 8);
  v58 = *(v183 + 64);
  MEMORY[0x28223BE20](v184, v59);
  v192 = &v149 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_240A2981C();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61, v64);
  v66 = &v149 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_240A29A9C();
  v162 = v67;
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  v71 = MEMORY[0x28223BE20](v67, v70);
  v168 = &v149 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71, v73);
  v75 = &v149 - v74;
  v182 = sub_240A2A10C();
  v181 = *(v182 - 8);
  v76 = *(v181 + 64);
  MEMORY[0x28223BE20](v182, v77);
  v79 = &v149 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = a1;
  v80 = *(a1 + 40);
  v164 = *(a1 + 48);
  *&v198 = v80;
  *(&v198 + 1) = v164;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  sub_240A29CCC();

  sub_240A29A3C();
  v163 = *(v68 + 8);
  v163(v75, v67);
  v165 = v68 + 8;
  sub_240A297BC();
  v81 = *(v62 + 8);
  v191 = (v62 + 8);
  v82 = v61;
  v81(v66, v61);
  v83 = v164;
  *&v198 = v80;
  *(&v198 + 1) = v164;
  sub_240A2BC5C();
  sub_240A29CCC();

  sub_240A29A3C();
  v84 = v75;
  v85 = v162;
  v86 = v163;
  v163(v84, v162);
  sub_240A2977C();
  v87 = v66;
  v88 = v167;
  v81(v87, v82);
  v191 = v79;
  sub_2409D4BCC(v193);
  v89 = v169;
  sub_240A2A90C();
  sub_2409D51F8(v89, v194);
  (*(v170 + 8))(v89, v171);
  *&v198 = v80;
  *(&v198 + 1) = v83;
  v90 = v173;
  sub_240A2BC5C();
  v91 = v168;
  sub_240A29CCC();

  v92 = v172;
  sub_240A29A6C();
  v93 = v92;
  v86(v91, v85);
  v94 = v174;
  v95 = (*(v90 + 88))(v92, v174);
  if (v95 == *MEMORY[0x277CED478])
  {
    (*(v90 + 96))(v92, v94);
    v96 = v159;
    (*(v159 + 32))(v177, v93, v178);
    sub_2409D89FC(&v198);
    v97 = v198;
    v195 = v198;
    v173 = *(&v198 + 1);
    v196 = v199;
    v197 = v200;

    v174 = v97;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E458, &qword_240A36920);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    sub_2409DAC58();
    sub_240A2B6EC();
    v98 = v200;
    v99 = v201;
    v100 = v199;
    v101 = v176;
    *v176 = v198;
    v101[1] = v100;
    *(v101 + 32) = v98;
    *(v101 + 33) = v99;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4F0, &qword_240A36960);
    sub_2409DADC0();
    sub_2409DB130(&qword_27E50E4E8, &qword_27E50E4F0, &qword_240A36960, sub_2409DAC58);
    v102 = v161;
    sub_240A2B6EC();
    sub_240919298(v102, v179, &qword_27E50E438, &qword_240A36900);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
    sub_2409DAD08();
    sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
    v103 = v187;
    sub_240A2B6EC();

    sub_240919300(v102, &qword_27E50E438, &qword_240A36900);
    (*(v96 + 8))(v177, v178);
  }

  else
  {
    v104 = v176;
    if (v95 == *MEMORY[0x277CED488])
    {
      v105 = v153;
      sub_240A2B22C();
      v106 = v88;
      v107 = v152;
      sub_2409DBB30(v106, v152, type metadata accessor for RepairView);
      v108 = (*(v150 + 80) + 16) & ~*(v150 + 80);
      v109 = swift_allocObject();
      sub_2409DB944(v107, v109 + v108, type metadata accessor for RepairView);
      v110 = (v105 + *(v154 + 36));
      *v110 = sub_2409DB3DC;
      v110[1] = v109;
      v110[2] = 0;
      v110[3] = 0;
      sub_240919298(v105, v156, &qword_27E50CA50, &unk_240A33750);
      swift_storeEnumTagMultiPayload();
      sub_240972938();
      sub_2409DAE4C();
      v111 = v158;
      sub_240A2B6EC();
      sub_240919298(v111, v104, &qword_27E50E430, &qword_240A368F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4F0, &qword_240A36960);
      sub_2409DADC0();
      sub_2409DB130(&qword_27E50E4E8, &qword_27E50E4F0, &qword_240A36960, sub_2409DAC58);
      v112 = v161;
      sub_240A2B6EC();
      sub_240919300(v111, &qword_27E50E430, &qword_240A368F8);
      sub_240919298(v112, v179, &qword_27E50E438, &qword_240A36900);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
      sub_2409DAD08();
      sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
      v103 = v187;
      sub_240A2B6EC();
      sub_240919300(v112, &qword_27E50E438, &qword_240A36900);
      sub_240919300(v105, &qword_27E50CA50, &unk_240A33750);
    }

    else if (v95 == *MEMORY[0x277CED470])
    {
      v113 = v149;
      sub_2409D55FC(v149);
      sub_240919298(v113, v156, &qword_27E50E410, &qword_240A368D8);
      swift_storeEnumTagMultiPayload();
      sub_240972938();
      sub_2409DAE4C();
      v114 = v158;
      sub_240A2B6EC();
      sub_240919298(v114, v104, &qword_27E50E430, &qword_240A368F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4F0, &qword_240A36960);
      sub_2409DADC0();
      sub_2409DB130(&qword_27E50E4E8, &qword_27E50E4F0, &qword_240A36960, sub_2409DAC58);
      v115 = v161;
      sub_240A2B6EC();
      sub_240919300(v114, &qword_27E50E430, &qword_240A368F8);
      sub_240919298(v115, v179, &qword_27E50E438, &qword_240A36900);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
      sub_2409DAD08();
      sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
      v103 = v187;
      sub_240A2B6EC();
      sub_240919300(v115, &qword_27E50E438, &qword_240A36900);
      sub_240919300(v113, &qword_27E50E410, &qword_240A368D8);
    }

    else if (v95 == *MEMORY[0x277CED498])
    {
      sub_240A2A07C();
      if (sub_240A2A05C())
      {
        v116 = _s14AppleIDSetupUI22ProxCardViewControllerC026newRepairAccountInProgressefG0ACyFZ_0();
        LOBYTE(v195) = 1;
        sub_240A2BD3C();
        v118 = *(&v198 + 1);
        v117 = v198;
        v119 = v199;
        sub_240A2C06C();
        v120 = v116;
        v121 = sub_240A2BF1C();

        [v120 showActivityIndicatorWithStatus_];

        v122 = MEMORY[0x277D84F90];
      }

      else
      {
        v120 = 0;
        v122 = 0;
        v117 = 0;
        v118 = 0;
        v119 = 0;
      }

      v129 = v161;
      LODWORD(v177) = v119;
      v178 = v117;
      *&v195 = v120;
      *(&v195 + 1) = v122;
      *&v196 = v117;
      *(&v196 + 1) = v118;
      LOBYTE(v197) = v119;
      HIBYTE(v197) = 1;
      sub_2409DB31C(v120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E458, &qword_240A36920);
      sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
      sub_2409DAC58();
      sub_240A2B6EC();
      v130 = v200;
      v131 = v201;
      v132 = v199;
      *v104 = v198;
      *(v104 + 16) = v132;
      *(v104 + 32) = v130;
      *(v104 + 33) = v131;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4F0, &qword_240A36960);
      sub_2409DADC0();
      sub_2409DB130(&qword_27E50E4E8, &qword_27E50E4F0, &qword_240A36960, sub_2409DAC58);
      sub_240A2B6EC();
      sub_240919298(v129, v179, &qword_27E50E438, &qword_240A36900);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
      sub_2409DAD08();
      sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
      v103 = v187;
      sub_240A2B6EC();
      sub_2409DB37C(v120);
      sub_240919300(v129, &qword_27E50E438, &qword_240A36900);
    }

    else
    {
      v123 = v179;
      if (v95 == *MEMORY[0x277CED490])
      {
        sub_240A2A07C();
        if (sub_240A2A05C())
        {
          sub_2409D8EA0(&v198);
          v125 = *(&v198 + 1);
          v124 = v198;
          v127 = *(&v199 + 1);
          v126 = v199;
          v128 = v200;
        }

        else
        {
          v124 = 0;
          v125 = 0;
          v126 = 0;
          v127 = 0;
          v128 = 0;
        }

        *&v195 = v124;
        *(&v195 + 1) = v125;
        *&v196 = v126;
        *(&v196 + 1) = v127;
        v197 = v128;
        sub_2409DB31C(v124);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E458, &qword_240A36920);
        sub_2409DAC58();
        sub_240A2B6EC();
        v137 = v200;
        v138 = v201;
        v139 = v199;
        *v123 = v198;
        *(v123 + 16) = v139;
        *(v123 + 32) = v137;
        *(v123 + 33) = v138;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
        sub_2409DAD08();
        sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
        v103 = v187;
        sub_240A2B6EC();
        sub_2409DB37C(v124);
      }

      else
      {
        v195 = 0u;
        v196 = 0u;
        v197 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E458, &qword_240A36920);
        sub_2409DAC58();
        sub_240A2B6EC();
        v133 = v200;
        v134 = v201;
        v135 = v199;
        *v123 = v198;
        *(v123 + 16) = v135;
        *(v123 + 32) = v133;
        *(v123 + 33) = v134;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
        sub_2409DAD08();
        sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
        v136 = v187;
        sub_240A2B6EC();
        (*(v90 + 8))(v93, v94);
        v103 = v136;
      }
    }
  }

  v140 = v193;
  v141 = v185;
  sub_240919298(v193, v185, &qword_27E50E450, &qword_240A36918);
  v142 = v194;
  v143 = v186;
  sub_240919298(v194, v186, &qword_27E50E448, &qword_240A36910);
  v144 = v188;
  sub_240919298(v103, v188, &qword_27E50E440, &qword_240A36908);
  v145 = v103;
  v146 = v189;
  sub_240919298(v141, v189, &qword_27E50E450, &qword_240A36918);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E500, &qword_240A36968);
  sub_240919298(v143, v146 + *(v147 + 48), &qword_27E50E448, &qword_240A36910);
  sub_240919298(v144, v146 + *(v147 + 64), &qword_27E50E440, &qword_240A36908);
  sub_240919300(v145, &qword_27E50E440, &qword_240A36908);
  sub_240919300(v142, &qword_27E50E448, &qword_240A36910);
  sub_240919300(v140, &qword_27E50E450, &qword_240A36918);
  (*(v183 + 8))(v192, v184);
  (*(v181 + 8))(v191, v182);
  sub_240919300(v144, &qword_27E50E440, &qword_240A36908);
  sub_240919300(v143, &qword_27E50E448, &qword_240A36910);
  return sub_240919300(v141, &qword_27E50E450, &qword_240A36918);
}