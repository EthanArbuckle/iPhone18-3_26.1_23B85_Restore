void sub_240956D38(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v42[-v13];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
    swift_beginAccess();
    v18 = *&v16[v17];
    v19 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
    swift_beginAccess();
    v20 = *&v16[v19];
    if (v20)
    {
      v21 = v18;
      v22 = [v20 pendingDOB];
      if (v22)
      {
        v23 = v22;
        sub_240A295FC();

        v24 = 0;
      }

      else
      {
        v24 = 1;
      }

      v35 = sub_240A2962C();
      (*(*(v35 - 8) + 56))(v11, v24, 1, v35);
      sub_24093A86C(v11, v14, &unk_27E50DCE0, &qword_240A32E20);
    }

    else
    {
      v33 = sub_240A2962C();
      (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
      v34 = v18;
    }

    v36 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
    swift_beginAccess();
    sub_240963E78(v14, v18 + v36);
    swift_endAccess();
    v37 = *&v16[v17];
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = a4;
    type metadata accessor for AISSignInSettings();
    v40 = swift_allocObject();
    v40[2] = v37;
    v40[3] = sub_240963EE8;
    v40[4] = v39;
    v40[5] = sub_240964BB0;
    v40[6] = 0;
    v41 = v37;
    sub_24095267C(v40, a3 & 1);
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v25 = sub_240A2B00C();
    __swift_project_value_buffer(v25, qword_27E50C4C0);
    v26 = sub_240A2AFFC();
    v27 = sub_240A2C2BC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136315138;
      v30 = sub_240A2C7BC();
      v32 = sub_240925464(v30, v31, &v43);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2408FE000, v26, v27, "%s has been released and unable to launch personalized setup", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x245CCDDB0](v29, -1, -1);
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }
  }
}

void sub_24095712C(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50C4C0);
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "Calling to finish signing in", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    sub_24094E018(a1, a2 & 1);
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v10 = sub_240A2B00C();
    __swift_project_value_buffer(v10, qword_27E50C4C0);
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C2BC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = sub_240A2C7BC();
      v17 = sub_240925464(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2408FE000, v11, v12, "%s released while waiting for completion handler", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x245CCDDB0](v14, -1, -1);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }
  }
}

void sub_240957368()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v27[-v3];
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50C4C0);
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C28C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "ConnectToFamilyViewController - Launching connect using email/phone.", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController);
    if (v11)
    {
      v12 = sub_240A2C24C();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      sub_240A2C21C();
      v13 = v11;
      v14 = v10;
      v15 = sub_240A2C20C();
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v14;
      v16[5] = v13;
      sub_2409230D4(0, 0, v4, &unk_240A32E30, v16);
    }

    else
    {
      v18 = sub_240A2AFFC();
      v19 = sub_240A2C2AC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2408FE000, v18, v19, "ConnectToFamilyViewController - Failed to obtain nav controller for connect using email/phone.", v20, 2u);
        MEMORY[0x245CCDDB0](v20, -1, -1);
      }

      v21 = &v10[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
      swift_beginAccess();
      v22 = *v21;
      if (*v21)
      {
        v23 = *(v21 + 1);
        v24 = sub_240A2976C();
        sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0]);
        v25 = swift_allocError();
        (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277CED2D0], v24);

        v22(v25, 0);
        sub_24090C1A0(v22);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_240957704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_240A2C21C();
  v5[4] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_24095779C, v7, v6);
}

uint64_t sub_24095779C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2409451EC;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_240957C2C(v4, v3, v3);
}

void sub_240957840(int a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    if (swift_dynamicCast())
    {
      if (v31 == 5)
      {
        if (qword_27E50AEE0 != -1)
        {
          swift_once();
        }

        v7 = sub_240A2B00C();
        __swift_project_value_buffer(v7, qword_27E50C4C0);
        v8 = sub_240A2AFFC();
        v9 = sub_240A2C28C();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_2408FE000, v8, v9, "ConnectToFamilyViewController - Connect using email/phone backed out by user. no action required.)", v10, 2u);
          MEMORY[0x245CCDDB0](v10, -1, -1);
        }

        return;
      }

      sub_240915CE4(v30, v31);
    }

    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v18 = sub_240A2B00C();
    __swift_project_value_buffer(v18, qword_27E50C4C0);
    v19 = a2;
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C28C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = a2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_2408FE000, v20, v21, "ConnectToFamilyViewController - Connect using email/phone encountered %@", v22, 0xCu);
      sub_240919300(v23, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v23, -1, -1);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v26 = a3 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v27 = *v26;
    if (*v26)
    {
      v28 = *(v26 + 8);
      v29 = a2;
      sub_24090C23C(v27);
      v27(a2, 0);

      sub_24090C1A0(v27);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v11 = sub_240A2B00C();
    __swift_project_value_buffer(v11, qword_27E50C4C0);
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C28C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2408FE000, v12, v13, "ConnectToFamilyViewController - Connect using email/phone completed.", v14, 2u);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    v15 = a3 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v16 = *v15;
    if (*v15)
    {
      v17 = *(v15 + 8);

      v16(0, 0);
      sub_24090C1A0(v16);
    }
  }
}

uint64_t sub_240957C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a1;
  v3[36] = a2;
  v5 = sub_240A2974C();
  v3[37] = v5;
  v6 = *(v5 - 8);
  v3[38] = v6;
  v7 = *(v6 + 64) + 15;
  v3[39] = swift_task_alloc();
  v8 = swift_allocObject();
  v3[40] = v8;
  *(v8 + 16) = a3;
  sub_240A2C21C();
  v3[41] = sub_240A2C20C();
  v10 = sub_240A2C1BC();
  v3[42] = v10;
  v3[43] = v9;

  return MEMORY[0x2822009F8](sub_240957D40, v10, v9);
}

uint64_t sub_240957D40()
{
  v71 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = (v0[36] + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  v6 = sub_240A2AB6C();
  v0[44] = v6;
  (*(v2 + 104))(v1, *MEMORY[0x277CED1F0], v3);
  v7 = sub_240A2973C();
  (*(v2 + 8))(v1, v3);
  if (v7)
  {
    v8 = v0[36];
    v9 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
    swift_beginAccess();
    v10 = *(v8 + v9);
    if (v10)
    {
      v11 = [v10 accountMigrationContext];
      v0[45] = v11;
      if (v11)
      {
        if (v6)
        {
          v12 = v11;
          v13 = v6;
          v14 = [v13 aa_firstName];
          if (v14)
          {
            v15 = v14;
            v16 = sub_240A2BF4C();
            v18 = v17;

            v19 = [v13 aa_lastName];
            if (v19)
            {
              v20 = v19;
              v21 = sub_240A2BF4C();
              v23 = v22;

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
              inited = swift_initStackObject();
              strcpy((inited + 32), "requestContext");
              *(inited + 16) = xmmword_240A32D00;
              v25 = MEMORY[0x277D837D0];
              *(inited + 47) = -18;
              strcpy((inited + 48), "ageMigration");
              *(inited + 61) = 0;
              *(inited + 62) = -5120;
              *(inited + 72) = v25;
              *(inited + 80) = 0xD000000000000012;
              *(inited + 88) = 0x8000000240A3C1D0;
              *(inited + 96) = v16;
              *(inited + 104) = v18;
              *(inited + 120) = v25;
              *(inited + 128) = 0xD000000000000011;
              *(inited + 168) = v25;
              *(inited + 136) = 0x8000000240A3C1F0;
              *(inited + 144) = v21;
              *(inited + 152) = v23;
              sub_240926374(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB00, &unk_240A38260);
              swift_arrayDestroy();
              v26 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
              v0[49] = v26;
              v27 = sub_240A2BE9C();
              [v26 setAdditionalParameters_];

              if (qword_27E50AEE0 != -1)
              {
                swift_once();
              }

              v28 = sub_240A2B00C();
              __swift_project_value_buffer(v28, qword_27E50C4C0);

              v29 = sub_240A2AFFC();
              v30 = sub_240A2C28C();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                v32 = swift_slowAlloc();
                v70 = v32;
                *v31 = 136315138;
                v33 = sub_240A2BECC();
                v35 = v34;

                v36 = sub_240925464(v33, v35, &v70);

                *(v31 + 4) = v36;
                _os_log_impl(&dword_2408FE000, v29, v30, "Notifying parent for services setup with additional parameters: %s", v31, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v32);
                MEMORY[0x245CCDDB0](v32, -1, -1);
                MEMORY[0x245CCDDB0](v31, -1, -1);
              }

              else
              {
              }

              type metadata accessor for ShieldSetup();
              v66 = swift_task_alloc();
              v0[50] = v66;
              *v66 = v0;
              v66[1] = sub_2409587C0;
              v67 = v0[40];
              v68 = v0[35];

              return sub_240A02C98(v26, v68, sub_240963E70, v67);
            }
          }

          v11 = v12;
        }
      }
    }
  }

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v37 = v0[36];
  v38 = sub_240A2B00C();
  __swift_project_value_buffer(v38, qword_27E50C4C0);
  v39 = v6;
  v40 = v37;
  v41 = sub_240A2AFFC();
  v42 = sub_240A2C28C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = v0[36];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v70 = v45;
    *v44 = 136315650;
    v46 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
    swift_beginAccess();
    v47 = *(v43 + v46);
    if (v47)
    {
      v47 = [v47 accountMigrationContext];
    }

    v0[34] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C630, &unk_240A32E40);
    v48 = sub_240A2BF9C();
    v50 = sub_240925464(v48, v49, &v70);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2080;
    if (v6 && (v51 = [v39 aa_firstName]) != 0)
    {
      v52 = v51;
      v53 = sub_240A2BF4C();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v0[30] = v53;
    v0[31] = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C3E0, &unk_240A30960);
    v56 = sub_240A2BF9C();
    v58 = sub_240925464(v56, v57, &v70);

    *(v44 + 14) = v58;
    *(v44 + 22) = 2080;
    if (v6)
    {
      v59 = [v39 aa_lastName];
      if (v59)
      {
        v60 = v59;
        v6 = sub_240A2BF4C();
        v62 = v61;

LABEL_28:
        v0[32] = v6;
        v0[33] = v62;
        v63 = sub_240A2BF9C();
        v65 = sub_240925464(v63, v64, &v70);

        *(v44 + 24) = v65;
        _os_log_impl(&dword_2408FE000, v41, v42, "Not setting age migration additional properties because either the feature flag is off, account migration context is nil, there is no primary account, or either the first or last name is nil. AccountMigrationContext=%s, firstName=%s, lastName=%s", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x245CCDDB0](v45, -1, -1);
        MEMORY[0x245CCDDB0](v44, -1, -1);
        goto LABEL_29;
      }

      v6 = 0;
    }

    v62 = 0;
    goto LABEL_28;
  }

LABEL_29:

  v0[46] = type metadata accessor for ShieldSetup();

  return MEMORY[0x2822009F8](sub_240958504, 0, 0);
}

uint64_t sub_240958504()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v0[47] = v1;
  v2 = swift_task_alloc();
  v0[48] = v2;
  *v2 = v0;
  v2[1] = sub_2409585E4;
  v3 = v0[46];
  v4 = v0[40];
  v5 = v0[35];

  return sub_240A02C98(v1, v5, sub_240963E70, v4);
}

uint64_t sub_2409585E4()
{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2409586E0, 0, 0);
}

uint64_t sub_2409586E0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return MEMORY[0x2822009F8](sub_240958744, v1, v2);
}

uint64_t sub_240958744()
{
  v1 = v0[40];

  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[39];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2409587C0()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v6 = *v0;

  v3 = *(v1 + 344);
  v4 = *(v1 + 336);

  return MEMORY[0x2822009F8](sub_2409588E0, v4, v3);
}

uint64_t sub_2409588E0()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);

  v3 = *(v0 + 392);
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);

  v6 = *(v0 + 8);

  return v6();
}

void sub_240958970()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50C4C0);
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C2CC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2408FE000, v3, v4, "User opted to connect later. Dismissing ConnectToFamilyViewController.", v5, 2u);
      MEMORY[0x245CCDDB0](v5, -1, -1);
    }

    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    aBlock[4] = sub_240964BE4;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2409EC704;
    aBlock[3] = &block_descriptor_113;
    v7 = _Block_copy(aBlock);
    v8 = v1;

    [v8 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

void sub_240958B2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24094C478();
  }
}

void sub_240958B80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel);
    if (v2)
    {
      v3 = v2;
      sub_2409B2498();
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v4 = sub_240A2B00C();
    __swift_project_value_buffer(v4, qword_27E50C4C0);
    v1 = sub_240A2AFFC();
    v5 = sub_240A2C2AC();
    if (os_log_type_enabled(v1, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2408FE000, v1, v5, "ConnectToFamilyViewController was deallocated while calling completion for Cancel on other options", v6, 2u);
      MEMORY[0x245CCDDB0](v6, -1, -1);
    }
  }
}

Swift::Void __swiftcall ConnectToFamilyViewController.cancelButtonAction()()
{
  v1 = v0;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C28C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "ConnectToFamilyViewController - User cancelled", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    v9 = sub_240A2976C();
    sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0]);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277CED2D8], v9);

    v7(v10, 0);
    sub_24090C1A0(v7);
  }
}

uint64_t sub_240958EC4(unint64_t a1, void *a2)
{
  v14 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_240A2C59C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245CCD150](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (a2 && (sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28), v10 = v8, v11 = a2, v12 = sub_240A2C37C(), v10, v11, (v12 & 1) != 0))
      {
      }

      else
      {
        sub_240A2C4EC();
        v6 = *(v14 + 16);
        sub_240A2C51C();
        sub_240A2C52C();
        sub_240A2C4FC();
      }

      if (v9 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_240959044(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2409591C8(a2);
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v5 = sub_240A2B00C();
    __swift_project_value_buffer(v5, qword_27E50C4C0);
    v6 = sub_240A2AFFC();
    v7 = sub_240A2C2BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      v10 = sub_240A2C7BC();
      v12 = sub_240925464(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2408FE000, v6, v7, "%s has been released and unable to handle successful sign-in.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x245CCDDB0](v9, -1, -1);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }
  }
}

uint64_t sub_2409591C8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v34 - v7;
  v9 = sub_240A2974C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, *MEMORY[0x277CED208], v9);
  v15 = sub_240A2973C();
  (*(v10 + 8))(v14, v9);
  if ((v15 & 1) != 0 && (v16 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration, swift_beginAccess(), v17 = *&v2[v16], v18 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v17 + v18) == 2))
  {
    sub_240950BEC();
    v19 = sub_240A2C24C();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    sub_240A2C21C();
    v20 = v2;
    v21 = a1;
    v22 = sub_240A2C20C();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v20;
    v23[5] = v21;
    sub_2409230D4(0, 0, v8, &unk_240A32E60, v23);
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v26 = sub_240A2B00C();
    __swift_project_value_buffer(v26, qword_27E50C4C0);
    v27 = sub_240A2AFFC();
    v28 = sub_240A2C29C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2408FE000, v27, v28, "Calling completion handler for successful setup...age based account is NOT supported or this is not a teen", v29, 2u);
      MEMORY[0x245CCDDB0](v29, -1, -1);
    }

    v30 = &v2[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
    result = swift_beginAccess();
    v31 = *v30;
    if (*v30)
    {
      v32 = *(v30 + 1);

      v33 = sub_240A2AA8C();
      v31(0, v33);
      sub_24090C1A0(v31);
    }
  }

  return result;
}

void sub_240959544(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &aBlock - v12;
  v14 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v15 = *&v2[v14];
  if (!v15)
  {
    v19 = sub_240A2962C();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
LABEL_7:
    sub_240919300(v13, &unk_27E50DCE0, &qword_240A32E20);
LABEL_8:
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v22 = sub_240A2B00C();
    __swift_project_value_buffer(v22, qword_27E50C4C0);
    v23 = a1;
    v24 = sub_240A2AFFC();
    v25 = sub_240A2C2AC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      aBlock = a1;
      v28 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
      if (sub_240A2C64C())
      {
      }

      else
      {
        swift_allocError();
        *v37 = a1;
      }

      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v38;
      *v27 = v38;
      _os_log_impl(&dword_2408FE000, v24, v25, "Failed to sign in with error: %@", v26, 0xCu);
      sub_240919300(v27, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v27, -1, -1);
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }

    v39 = [v2 navigationController];
    if (v39)
    {
      v40 = v39;
    }

    return;
  }

  v16 = [v15 pendingDOB];
  if (v16)
  {
    v17 = v16;
    sub_240A295FC();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = sub_240A2962C();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v10, v18, 1, v20);
  sub_24093A86C(v10, v13, &unk_27E50DCE0, &qword_240A32E20);
  if ((*(v21 + 48))(v13, 1, v20) == 1)
  {
    goto LABEL_7;
  }

  sub_240919300(v13, &unk_27E50DCE0, &qword_240A32E20);
  v53 = a1;
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  if (v48 != 1)
  {
    sub_240964124(aBlock, v48);
    goto LABEL_8;
  }

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v30 = sub_240A2B00C();
  __swift_project_value_buffer(v30, qword_27E50C4C0);
  v31 = a1;
  v32 = sub_240A2AFFC();
  v33 = sub_240A2C28C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    aBlock = a1;
    v36 = a1;
    if (sub_240A2C64C())
    {
    }

    else
    {
      swift_allocError();
      *v41 = a1;
    }

    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v42;
    *v35 = v42;
    _os_log_impl(&dword_2408FE000, v32, v33, "User cancelled AgeMigration flow. Terminating with error: %@", v34, 0xCu);
    sub_240919300(v35, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v35, -1, -1);
    MEMORY[0x245CCDDB0](v34, -1, -1);
  }

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = a1;
  v44[4] = ObjectType;
  v51 = sub_2409641BC;
  v52 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_2409EC704;
  v50 = &block_descriptor_165;
  v45 = _Block_copy(&aBlock);
  v46 = a1;

  [v2 dismissViewControllerAnimated:1 completion:v45];
  _Block_release(v45);
}

uint64_t sub_240959BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_240A2C21C();
  v5[4] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_240959C78, v7, v6);
}

uint64_t sub_240959C78()
{
  v1 = v0[3];
  v2 = sub_240A2AA8C();
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_240959D1C;
  v4 = v0[2];

  return sub_24094F488(v2);
}

uint64_t sub_240959D1C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_240964C14, v5, v4);
}

void sub_240959E60(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v11 = sub_240A2B00C();
    __swift_project_value_buffer(v11, qword_27E50C4C0);
    v4 = sub_240A2AFFC();
    v12 = sub_240A2C2BC();
    if (os_log_type_enabled(v4, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = sub_240A2C7BC();
      v17 = sub_240925464(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2408FE000, v4, v12, "%s has been released and completion was not called.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x245CCDDB0](v14, -1, -1);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    goto LABEL_9;
  }

  v4 = Strong;
  v5 = Strong + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
LABEL_9:

    return;
  }

  v7 = *(v5 + 8);
  v8 = a2;
  sub_24090C23C(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  v9 = sub_240A2C64C();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = swift_allocError();
    *v18 = a2;
  }

  v6(v10, 0);
  sub_24090C1A0(v6);
}

void sub_24095A0A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24095A224();
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50C4C0);
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C2BC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      v7 = sub_240A2C7BC();
      v9 = sub_240925464(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_2408FE000, v3, v4, "%s has been released and unable to handle successful setup.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x245CCDDB0](v6, -1, -1);
      MEMORY[0x245CCDDB0](v5, -1, -1);
    }
  }
}

uint64_t sub_24095A224()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v31 - v5;
  v7 = sub_240A2974C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v12, *MEMORY[0x277CED208], v7);
  v13 = sub_240A2973C();
  (*(v8 + 8))(v12, v7);
  if ((v13 & 1) != 0 && (v14 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration, swift_beginAccess(), v15 = *&v1[v14], v16 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v15 + v16) == 2))
  {
    v17 = sub_240A2C24C();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_240A2C21C();
    v18 = v1;
    v19 = sub_240A2C20C();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v18;
    sub_2409230D4(0, 0, v6, &unk_240A32F38, v20);
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v23 = sub_240A2B00C();
    __swift_project_value_buffer(v23, qword_27E50C4C0);
    v24 = sub_240A2AFFC();
    v25 = sub_240A2C29C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2408FE000, v24, v25, "Calling completion handler for successful setup...age based account is NOT supported or this is not a teen", v26, 2u);
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }

    v27 = &v1[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
    result = swift_beginAccess();
    v28 = *v27;
    if (*v27)
    {
      v29 = *(v27 + 1);
      sub_24090C23C(v28);
      v30 = sub_24092624C(MEMORY[0x277D84F90]);
      v28(0, v30);
      sub_24090C1A0(v28);
    }
  }

  return result;
}

void sub_24095A588(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6F0, &unk_240A32F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v41 - v7;
  v9 = sub_240A2976C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v41 - v17;
  v42 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  v20 = swift_dynamicCast();
  v21 = *(v10 + 56);
  if (v20)
  {
    v21(v8, 0, 1, v9);
    (*(v10 + 32))(v18, v8, v9);
    (*(v10 + 16))(v15, v18, v9);
    v22 = (*(v10 + 88))(v15, v9);
    v23 = *(v10 + 8);
    if (v22 == *MEMORY[0x277CED2B8])
    {
      v23(v15, v9);
      sub_24095AFEC();
      v23(v18, v9);
      return;
    }

    v23(v18, v9);
    v23(v15, v9);
  }

  else
  {
    v21(v8, 1, 1, v9);
    sub_240919300(v8, &unk_27E50C6F0, &unk_240A32F40);
  }

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v24 = sub_240A2B00C();
  __swift_project_value_buffer(v24, qword_27E50C4C0);
  v25 = a1;
  v26 = sub_240A2AFFC();
  v27 = sub_240A2C2AC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v42 = a1;
    v30 = a1;
    if (sub_240A2C64C())
    {
    }

    else
    {
      swift_allocError();
      *v31 = a1;
    }

    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v32;
    *v29 = v32;
    _os_log_impl(&dword_2408FE000, v26, v27, "Failed to sign in with error: %@", v28, 0xCu);
    sub_240919300(v29, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v29, -1, -1);
    MEMORY[0x245CCDDB0](v28, -1, -1);
  }

  v33 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v34 = *v33;
  if (*v33)
  {
    v35 = *(v33 + 8);
    v41 = a1;
    v36 = a1;
    sub_24090C23C(v34);
    v37 = sub_240A2C64C();
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = swift_allocError();
      *v39 = a1;
    }

    v40 = sub_24092624C(MEMORY[0x277D84F90]);
    v34(v38, v40);
    sub_24090C1A0(v34);
  }
}

void sub_24095AA48(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6F0, &unk_240A32F40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v39 - v9;
  v11 = sub_240A2976C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v39 - v19;
  *&v40 = a1;
  *(&v40 + 1) = a2;
  sub_240915CD0(a1, a2);
  v21 = swift_dynamicCast();
  v22 = *(v12 + 56);
  if (v21)
  {
    v22(v10, 0, 1, v11);
    (*(v12 + 32))(v20, v10, v11);
    (*(v12 + 16))(v17, v20, v11);
    v23 = (*(v12 + 88))(v17, v11);
    v24 = *(v12 + 8);
    if (v23 == *MEMORY[0x277CED2B8])
    {
      v24(v17, v11);
      sub_24095AFEC();
      v24(v20, v11);
      return;
    }

    v24(v20, v11);
    v24(v17, v11);
  }

  else
  {
    v22(v10, 1, 1, v11);
    sub_240919300(v10, &unk_27E50C6F0, &unk_240A32F40);
  }

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v25 = sub_240A2B00C();
  __swift_project_value_buffer(v25, qword_27E50C4C0);
  sub_240915CD0(a1, a2);
  v26 = sub_240A2AFFC();
  v27 = sub_240A2C2AC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *&v40 = a1;
    *(&v40 + 1) = a2;
    sub_240915CD0(a1, a2);
    sub_240915CF8();
    if (sub_240A2C64C())
    {
      sub_240915CE4(v40, *(&v40 + 1));
    }

    else
    {
      swift_allocError();
      *v30 = v40;
    }

    v31 = _swift_stdlib_bridgeErrorToNSError();
    sub_240915CE4(a1, a2);
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_2408FE000, v26, v27, "Failed to sign in with error: %@", v28, 0xCu);
    sub_240919300(v29, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v29, -1, -1);
    MEMORY[0x245CCDDB0](v28, -1, -1);
  }

  else
  {
    sub_240915CE4(a1, a2);
  }

  v32 = v3 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v33 = *v32;
  if (*v32)
  {
    v34 = *(v32 + 8);
    *&v39 = a1;
    *(&v39 + 1) = a2;
    sub_240915CD0(a1, a2);
    sub_24090C23C(v33);
    sub_240915CF8();
    v35 = sub_240A2C64C();
    if (v35)
    {
      v36 = v35;
      sub_240915CE4(v39, *(&v39 + 1));
    }

    else
    {
      v36 = swift_allocError();
      *v37 = v39;
    }

    v38 = sub_24092624C(MEMORY[0x277D84F90]);
    v33(v36, v38);
    sub_24090C1A0(v33);
  }
}

uint64_t sub_24095AF3C()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2409559C8;

  return sub_24094F488(0);
}

uint64_t sub_24095AFEC()
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50C4C0);
  v2 = v0;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C28C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
    swift_beginAccess();
    v8 = *&v2[v7];
    *(v5 + 4) = v8;
    *v6 = v8;
    v9 = v8;
    _os_log_impl(&dword_2408FE000, v3, v4, "User selected to set up without another device, proceeding with configuration: %@", v5, 0xCu);
    sub_240919300(v6, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v6, -1, -1);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v11 = *&v2[v10];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AISSignInSettings();
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = sub_240964C04;
  v13[4] = v12;
  v13[5] = sub_240964BB0;
  v13[6] = 0;
  v14 = v11;
  sub_24095267C(v13, 1);
}

void sub_24095B1F8(uint64_t (*a1)(void), const char *a2)
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50C4C0);
  oslog = sub_240A2AFFC();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v5, a2, v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }
}

void sub_24095B2F0(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24094E018(a1, a2 & 1);
  }
}

uint64_t sub_24095B360(char a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a1)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50C4C0);
    v7 = a3;
    v8 = sub_240A2AFFC();
    v9 = sub_240A2C28C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_2408FE000, v8, v9, "Removed proto account: %@", v10, 0xCu);
      sub_240919300(v11, &unk_27E50B730, &qword_240A30CE0);
LABEL_10:
      MEMORY[0x245CCDDB0](v11, -1, -1);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v14 = sub_240A2B00C();
    __swift_project_value_buffer(v14, qword_27E50C4C0);
    v15 = a2;
    v8 = sub_240A2AFFC();
    v16 = sub_240A2C28C();

    if (os_log_type_enabled(v8, v16))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      v17 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
      v18 = sub_240A2BF9C();
      v20 = sub_240925464(v18, v19, &v24);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_2408FE000, v8, v16, "Failed to remove proto account with erro: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      goto LABEL_10;
    }
  }

  return a4(v21, v22);
}

void sub_24095B6C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() sharedBag];
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x277CF0100];
    (*(v3 + 16))(v7, a1, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, v7, v2);
    sub_240A20798(v10, v9, sub_240964800, v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_24095B854(char a1, void *a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v10 = a2;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27E50C4C0);
    v11 = a2;
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C2AC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_2408FE000, v12, v13, "Failed to perform stolen device protection check with error - %@", v14, 0xCu);
      sub_240919300(v15, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v15, -1, -1);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    v21[14] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
    sub_240A2C1CC();
  }

  else
  {
    sub_240A2AE9C();
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C29C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = a1 & 1;
      _os_log_impl(&dword_2408FE000, v18, v19, "Completed stolen device protection check with success - %{BOOL}d", v20, 8u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v21[15] = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
    sub_240A2C1CC();
  }
}

uint64_t sub_24095BB34()
{
  sub_240A2C21C();
  v0[27] = sub_240A2C20C();
  v2 = sub_240A2C1BC();
  v0[28] = v2;
  v0[29] = v1;

  return MEMORY[0x2822009F8](sub_24095BBC8, v2, v1);
}

uint64_t sub_24095BBC8()
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  v0[30] = __swift_project_value_buffer(v1, qword_27E50C4C0);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C28C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AgeMigrationViewModel did finish migration step. Clearing pendingDOB which should clear the CFU", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v0[31] = v5;
  v6 = [v5 defaultStore];
  v0[32] = v6;
  if (v6)
  {
    v7 = v6;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_24095BDC8;
    v8 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6A8, qword_240A36C50);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_240964C08;
    v0[21] = &block_descriptor_172;
    v0[22] = v8;
    [v7 aa:v0 + 18 primaryAppleAccountWithCompletion:?];
    v6 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v6);
}

uint64_t sub_24095BDC8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_24095C350;
  }

  else
  {
    v6 = sub_24095BEF8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24095BEF8()
{
  v1 = v0[26];
  v2 = v0[32];
  v0[34] = v1;

  if (v1)
  {
    v3 = v0[31];
    [v1 aa:0 setPendingDOB:?];
    v4 = [v3 defaultStore];
    v0[35] = v4;
    if (v4)
    {
      v5 = v4;
      v0[10] = v0;
      v0[15] = v0 + 26;
      v0[11] = sub_24095C124;
      v6 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_240A13784;
      v0[21] = &block_descriptor_176;
      v0[22] = v6;
      [v5 saveVerifiedAccount:v1 withCompletionHandler:v0 + 18];
      v4 = v0 + 10;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v4);
  }

  else
  {
    v7 = v0[30];
    v8 = v0[27];

    v9 = sub_240A2AFFC();
    v10 = sub_240A2C2AC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2408FE000, v9, v10, "There is no primary account to clear the pendingDOB", v11, 2u);
      MEMORY[0x245CCDDB0](v11, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24095C124()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_24095C3C8;
  }

  else
  {
    v6 = sub_24095C254;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24095C254()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[30];
  v4 = v0[27];

  v5 = sub_240A2AFFC();
  v6 = sub_240A2C29C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[34];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v5, v6, "Finished saving verified account with nil pendingDOB. CFU should be gone.", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  else
  {

    v5 = v8;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24095C350()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[27];

  swift_willThrow();

  v4 = v0[33];
  v5 = v0[1];

  return v5();
}

uint64_t sub_24095C3C8()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[27];

  swift_willThrow();

  v5 = v0[36];
  v6 = v0[1];

  return v6();
}

uint64_t sub_24095C44C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_24095C51C(void *a1)
{
  v2 = v1;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50C4C0);
  v5 = a1;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C28C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_240A2BF4C();
    v14 = v13;

    v15 = sub_240925464(v12, v14, v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2408FE000, v6, v7, "AgeMigrationViewModel requested termination. VM: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  v19[4] = sub_240963C40;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2409EC704;
  v19[3] = &block_descriptor_72;
  v17 = _Block_copy(v19);
  v18 = v2;

  [v18 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_24095C764(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);

    v3(0, 0);
    return sub_24090C1A0(v3);
  }

  return result;
}

uint64_t sub_24095C7D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v10 - v3;
  v5 = sub_240A2C24C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_240A2C21C();
  v6 = sub_240A2C20C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  sub_2409F6830(0, 0, v4, &unk_240A32EC0, v7);
}

void sub_24095C948(void *a1, char a2)
{
  v3 = v2;
  v7 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_navigationStackFilter);
  v6 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_navigationStackFilter + 8);
  v8 = OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_underlyingNavigationController;
  v9 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_underlyingNavigationController);

  v10 = [v9 viewControllers];
  sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
  v11 = sub_240A2C16C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A32D10;
  *(inited + 32) = a1;
  v13 = a1;
  sub_24095D914(inited);
  v7(v11);

  v14 = *(v3 + v8);
  v15 = sub_240A2C15C();

  [v14 setViewControllers:v15 animated:a2 & 1];
}

void sub_24095CB28(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_underlyingNavigationController);
  if (a3)
  {
    v12[4] = a3;
    v12[5] = a4;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_2409EC704;
    v12[3] = &block_descriptor_56;
    v9 = _Block_copy(v12);
    v10 = v7;
    sub_24090C23C(a3);
  }

  else
  {
    v11 = v7;
    v9 = 0;
  }

  [v7 presentViewController:a1 animated:a2 & 1 completion:v9];
  _Block_release(v9);
}

void sub_24095CD00(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_underlyingNavigationController);
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_2409EC704;
    v10[3] = &block_descriptor_7;
    v7 = _Block_copy(v10);
    v8 = v5;
    sub_24090C23C(a2);
  }

  else
  {
    v9 = v5;
    v7 = 0;
  }

  [v5 dismissViewControllerAnimated:a1 & 1 completion:v7];
  _Block_release(v7);
}

id sub_24095CF58(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_24095CFE0(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration());
  swift_unknownObjectRetain();
  v5 = [v4 init];
  v6 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v7 = [objc_opt_self() sharedInstance];
  v8 = type metadata accessor for ConnectToFamilyViewController();
  v9 = objc_allocWithZone(v8);
  v37[3] = sub_2409194E8(0, &qword_27E50C6C0, 0x277CF0130);
  v37[4] = MEMORY[0x277CEDE48];
  v37[0] = v7;
  v10 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context] = 0;
  v11 = &v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
  *v11 = 0;
  v11[1] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController] = 0;
  v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_isFamilyInviteAvailable] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_childSetupController] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationHostingController] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_signInController] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_shieldFlowContext] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration] = v5;
  swift_beginAccess();
  v12 = *&v9[v10];
  *&v9[v10] = 0;
  v33 = v7;
  v13 = v5;

  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider] = v6;
  sub_240919A14(v37, &v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager]);
  swift_beginAccess();
  v14 = *v11;
  v15 = v11[1];
  *v11 = sub_240964B40;
  v11[1] = v3;
  v32 = v6;

  sub_24090C1A0(v14);
  sub_240919A14(v37, &v36);
  v35[0] = 0;
  v35[1] = 0;
  v35[2] = v13;
  sub_240949ECC();
  v16 = sub_240A2BF1C();

  sub_24094A010();
  v17 = sub_240A2BF1C();

  v34.receiver = v9;
  v34.super_class = v8;
  v18 = objc_msgSendSuper2(&v34, sel_initWithTitle_detailText_symbolName_contentLayout_, v16, v17, 0, 3);

  v19 = v18;
  v20 = [v19 buttonTray];
  v21 = [objc_opt_self() boldButton];
  sub_24094A27C();
  v22 = sub_240A2BF1C();

  [v21 setTitle:v22 forState:0];

  v23 = sub_24094A55C(0);
  [v21 addAction:v23 forControlEvents:64];

  [v20 addButton_];
  v24 = [v19 buttonTray];

  v25 = [objc_opt_self() linkButton];
  sub_24094A874();
  v26 = sub_240A2BF1C();

  [v25 setTitle:v26 forState:0];

  v27 = sub_24094AAD8(0);
  [v25 addAction:v27 forControlEvents:64];

  [v24 addButton_];
  v28 = v19;
  v29 = [v28 navigationItem];
  v30 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v28 action:sel_cancelButtonAction];

  [v29 setLeftBarButtonItem_];

  sub_2409648F0(v35);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return v28;
}

void sub_24095D4C0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CEDE80]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v6 = sub_240A2BE9C();
    v8 = [v5 initWithAuthResults_];

    v7 = v8;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  v9 = v7;
  if ([a3 respondsToSelector_])
  {
    if (a1)
    {
      a1 = sub_240A2952C();
    }

    [a3 shieldSetupDidFinishWithResult:v9 viewControllersToRemove:0 error:a1];
  }

  else
  {
    if (a1)
    {
      a1 = sub_240A2952C();
    }

    [a3 shieldSetupDidFinishWithResult:v9 error:a1];
  }

  v7 = a1;
LABEL_13:
}

uint64_t sub_24095D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240964AEC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24095D66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240964AEC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24095D6D0()
{
  sub_240964AEC();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_24095D6F8()
{
  result = sub_240A2BFEC();
  qword_27E5161F0 = result;
  *algn_27E5161F8 = v1;
  return result;
}

uint64_t sub_24095D734()
{
  result = sub_240A2BFEC();
  qword_27E516200 = result;
  *algn_27E516208 = v1;
  return result;
}

uint64_t sub_24095D770()
{
  result = sub_240A2BFEC();
  qword_27E516210 = result;
  *algn_27E516218 = v1;
  return result;
}

uint64_t sub_24095D7AC()
{
  result = sub_240A2BFDC();
  qword_27E516220 = result;
  *algn_27E516228 = v1;
  return result;
}

uint64_t sub_24095D7E8()
{
  result = sub_240A2BFEC();
  qword_27E516230 = result;
  *algn_27E516238 = v1;
  return result;
}

uint64_t sub_24095D824()
{
  result = sub_240A2BFEC();
  qword_27E516240 = result;
  *algn_27E516248 = v1;
  return result;
}

uint64_t sub_24095D860()
{
  result = sub_240A2BFEC();
  qword_27E516250 = result;
  *algn_27E516258 = v1;
  return result;
}

uint64_t sub_24095D89C()
{
  result = sub_240A2BFEC();
  qword_27E516260 = result;
  *algn_27E516268 = v1;
  return result;
}

uint64_t sub_24095D8D8()
{
  result = sub_240A2BFEC();
  qword_27E516270 = result;
  *algn_27E516278 = v1;
  return result;
}

uint64_t sub_24095D914(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_240A2C59C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_240A2C59C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_24095DA04(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_24095DAC0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24095DA04(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_240A2C59C();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_240A2C49C();
    *v1 = result;
  }

  return result;
}

uint64_t sub_24095DAC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_240A2C59C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_240A2C59C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24091CE28(&qword_27E50C5F8, &qword_27E50C5F0, &qword_240A32E08);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C5F0, &qword_240A32E08);
            v9 = sub_24095DC74(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_24095DC74(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CCD150](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24095DCF4;
  }

  __break(1u);
  return result;
}

id sub_24095DCFC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10)
{
  v46[3] = a9;
  v46[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a5, a9);
  v18 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context] = 0;
  v19 = &a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
  *v19 = 0;
  v19[1] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController] = 0;
  a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_isFamilyInviteAvailable] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_childSetupController] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationHostingController] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_signInController] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_shieldFlowContext] = 0;
  swift_unknownObjectWeakInit();
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration] = a1;
  swift_beginAccess();
  v20 = *&a8[v18];
  *&a8[v18] = a2;
  v21 = a1;
  v22 = a2;

  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider] = a4;
  sub_240919A14(v46, &a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager]);
  swift_beginAccess();
  v23 = *v19;
  v24 = v19[1];
  *v19 = a6;
  v19[1] = a7;
  swift_unknownObjectRetain();
  sub_24090C23C(a6);
  sub_24090C1A0(v23);
  sub_240919A14(v46, &v45);
  v44[0] = a2;
  v44[1] = a3;
  v44[2] = v21;
  v41 = a3;
  sub_240949ECC();
  v25 = sub_240A2BF1C();

  sub_24094A010();
  v26 = sub_240A2BF1C();

  v43.receiver = a8;
  v43.super_class = type metadata accessor for ConnectToFamilyViewController();
  v27 = objc_msgSendSuper2(&v43, sel_initWithTitle_detailText_symbolName_contentLayout_, v25, v26, 0, 3);

  v28 = v27;
  v29 = [v28 buttonTray];
  v30 = [objc_opt_self() boldButton];
  sub_24094A27C();
  v31 = sub_240A2BF1C();

  [v30 setTitle:v31 forState:0];

  v32 = sub_24094A55C(a3);
  [v30 addAction:v32 forControlEvents:64];

  [v29 addButton_];
  v33 = [v28 buttonTray];

  v34 = [objc_opt_self() linkButton];
  sub_24094A874();
  v35 = sub_240A2BF1C();

  [v34 setTitle:v35 forState:0];

  v36 = sub_24094AAD8(a3);
  [v34 addAction:v36 forControlEvents:64];

  [v33 addButton_];
  if (a3)
  {
    v37 = v41;
  }

  else
  {
    v38 = v28;
    v39 = [v38 navigationItem];
    v37 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v38 action:sel_cancelButtonAction];

    [v39 setLeftBarButtonItem_];
  }

  sub_24090C1A0(a6);
  sub_2409648F0(v44);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v28;
}

uint64_t sub_24095E1A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_24094B690(a1, v4, v5, v6);
}

uint64_t sub_24095E258(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_240A295AC();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_240A2C21C();
  v2[25] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v2[26] = v7;
  v2[27] = v6;

  return MEMORY[0x2822009F8](sub_24095E364, v7, v6);
}

uint64_t sub_24095E364()
{
  v18 = v0;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_240A2B00C();
  v0[28] = __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = v1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = sub_240A2BF4C();
    v11 = sub_240925464(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2408FE000, v4, v5, "Checking if endpoint: %s is available", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v12 = v0[23];
  v14 = v0[18];
  v13 = v0[19];
  v0[2] = v0;
  v0[7] = v12;
  v0[3] = sub_24095E5B4;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C618, &qword_240A32E18);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24094BD9C;
  v0[13] = &block_descriptor_60;
  v0[14] = v15;
  [v14 URLForEndpoint:v13 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24095E5B4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_24095E9A0;
  }

  else
  {
    v6 = sub_24095E6E4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24095E6E4()
{
  v37 = v0;
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];

  (*(v7 + 32))(v3, v4, v6);
  (*(v7 + 16))(v5, v3, v6);
  v9 = v8;
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[24];
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[20];
  if (v12)
  {
    v17 = v0[19];
    v35 = v0[24];
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v18 = 136315394;
    v19 = sub_240A2BF4C();
    v21 = sub_240925464(v19, v20, &v36);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_24096471C(&qword_27E50C628, MEMORY[0x277CC9260]);
    v22 = sub_240A2C62C();
    v24 = v23;
    v25 = *(v15 + 8);
    v25(v14, v16);
    v26 = sub_240925464(v22, v24, &v36);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_2408FE000, v10, v11, "Endpoint %s is available: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v34, -1, -1);
    MEMORY[0x245CCDDB0](v18, -1, -1);

    v25(v35, v16);
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v14, v16);
    v27(v13, v16);
  }

  v29 = v0[23];
  v28 = v0[24];
  v30 = v0[22];

  v31 = v0[1];
  v32 = v0[29] == 0;

  return v31(v32);
}

uint64_t sub_24095E9A0()
{
  v27 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[25];
  v4 = v0[19];

  swift_willThrow();
  v5 = v4;
  v6 = v1;
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C2AC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[29];
  if (v9)
  {
    v11 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 136315394;
    v15 = sub_240A2BF4C();
    v17 = sub_240925464(v15, v16, &v26);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v10;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_2408FE000, v7, v8, "Unable to check if endpoint: %s is available: %@", v12, 0x16u);
    sub_240919300(v13, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  else
  {
  }

  v21 = v0[23];
  v20 = v0[24];
  v22 = v0[22];

  v23 = v0[1];
  v24 = v0[29] == 0;

  return v23(v24);
}

void sub_24095EBB0(uint64_t a1)
{
  v2 = v1;
  v4 = *MEMORY[0x277CED1A0];
  v5 = sub_240A2BF4C();
  if (*(a1 + 16))
  {
    v7 = sub_240925A1C(v5, v6);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(a1 + 56) + 8 * v7);
      v11 = [v10 error];
      if (v11)
      {
        v12 = v11;
        if (qword_27E50AEE0 != -1)
        {
          swift_once();
        }

        v13 = sub_240A2B00C();
        __swift_project_value_buffer(v13, qword_27E50C4C0);
        v14 = v12;
        v15 = sub_240A2AFFC();
        v16 = sub_240A2C2AC();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          v19 = v14;
          v20 = _swift_stdlib_bridgeErrorToNSError();
          *(v17 + 4) = v20;
          *v18 = v20;
          _os_log_impl(&dword_2408FE000, v15, v16, "ConnectToFamilyViewController - Sign in controller came back with %@", v17, 0xCu);
          sub_240919300(v18, &unk_27E50B730, &qword_240A30CE0);
          MEMORY[0x245CCDDB0](v18, -1, -1);
          MEMORY[0x245CCDDB0](v17, -1, -1);
        }

        v21 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
        swift_beginAccess();
        v22 = *v21;
        if (*v21)
        {
          v23 = *(v21 + 8);

          v24 = [v10 error];
          v22();

          sub_24090C1A0(v22);
        }

        else
        {
        }
      }

      else
      {
        if (qword_27E50AEE0 != -1)
        {
          swift_once();
        }

        v35 = sub_240A2B00C();
        __swift_project_value_buffer(v35, qword_27E50C4C0);

        v36 = sub_240A2AFFC();
        v37 = sub_240A2C28C();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v46 = v39;
          *v38 = 136315138;
          sub_2409194E8(0, &qword_27E50C610, 0x277CED1E0);
          v40 = sub_240A2BECC();
          v42 = sub_240925464(v40, v41, &v46);

          *(v38 + 4) = v42;
          _os_log_impl(&dword_2408FE000, v36, v37, "ConnectToFamilyViewController - Sign in controller succeeded with results: %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x245CCDDB0](v39, -1, -1);
          MEMORY[0x245CCDDB0](v38, -1, -1);
        }

        v43 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
        swift_beginAccess();
        v44 = *v43;
        if (*v43)
        {
          v45 = *(v43 + 8);

          v44(0, MEMORY[0x277D84F98]);
          sub_24090C1A0(v44);
        }
      }

      return;
    }
  }

  else
  {
  }

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v25 = sub_240A2B00C();
  __swift_project_value_buffer(v25, qword_27E50C4C0);
  v26 = sub_240A2AFFC();
  v27 = sub_240A2C2AC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2408FE000, v26, v27, "ConnectToFamilyViewController - Sign in controller called back without cloud result.", v28, 2u);
    MEMORY[0x245CCDDB0](v28, -1, -1);
  }

  v29 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v30 = *v29;
  if (*v29)
  {
    v31 = *(v29 + 8);
    v32 = sub_240A2976C();
    sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0]);
    v33 = swift_allocError();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277CED2D0], v32);

    v30(v33, 0);
    sub_24090C1A0(v30);
  }
}

void _s14AppleIDSetupUI29ConnectToFamilyViewControllerC016onboardingSignInH9DidCancelyySo012UINavigationH0CF_0()
{
  v1 = v0;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "ConnectToFamilyViewController - Sign in controller skipped.", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
  }
}

uint64_t sub_24095F278()
{
  v1[4] = v0;
  v1[5] = sub_240A2C21C();
  v1[6] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_24095F314, v3, v2);
}

uint64_t sub_24095F314()
{
  p_super_class = [objc_opt_self() defaultStore];
  if (p_super_class)
  {
    v9 = p_super_class;
    receiver = v0[2].receiver;
    super_class = v0[2].super_class;
    v12 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];
    v0[4].super_class = v12;

    [(objc_class *)v12 setDelegate:receiver];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_240A32D10;
    v14 = objc_allocWithZone(MEMORY[0x277CF0390]);
    v15 = v12;
    *(v13 + 32) = [v14 init];
    v16 = objc_allocWithZone(MEMORY[0x277CECA58]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7B8, &unk_240A33140);
    v17 = sub_240A2C15C();

    v18 = [v16 initWithAccountManager:v15 presenter:receiver hooks:v17];
    v0[5].receiver = v18;

    v19 = type metadata accessor for StolenDeviceProtectionViewModel();
    v20 = objc_allocWithZone(v19);
    v21 = &v20[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
    *v21 = 0;
    *(v21 + 1) = 0;
    *&v20[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_remoteUIPresenter] = v18;
    v0[1].receiver = v20;
    v0[1].super_class = v19;
    v22 = v18;
    v23 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[5].super_class = v23;
    [v22 setDelegate_];
    v24 = sub_240A2C20C();
    v0[6].receiver = v24;
    v25 = swift_task_alloc();
    v0[6].super_class = v25;
    *(v25 + 16) = v23;
    v26 = *(MEMORY[0x277D859E0] + 4);
    v27 = swift_task_alloc();
    v0[7].receiver = v27;
    *v27 = v0;
    v27[1] = sub_24095F5C0;
    v3 = MEMORY[0x277D85700];
    v8 = MEMORY[0x277D839B0];
    v6 = sub_240964764;
    p_super_class = &v0[7].super_class;
    v5 = 0x8000000240A3C630;
    v2 = v24;
    v4 = 0xD000000000000029;
    v7 = v25;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822007B8](p_super_class, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24095F5C0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24095F720, v6, v5);
}

uint64_t sub_24095F720()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);

  v4 = *(v0 + 120);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_24095F7A4(uint64_t a1)
{
  v2 = sub_240A2AC2C();
  if (!*(a1 + 16))
  {

LABEL_8:
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v16 = sub_240A2B00C();
    __swift_project_value_buffer(v16, qword_27E50C4C0);
    v17 = sub_240A2AFFC();
    v18 = sub_240A2C29C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2408FE000, v17, v18, "No IDMS tokens. Cannot get PLT", v19, 2u);
      MEMORY[0x245CCDDB0](v19, -1, -1);
    }

    return 0;
  }

  v4 = sub_240925A1C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_240913DC0(*(a1 + 56) + 32 * v4, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7B0, &unk_240A33130);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = sub_240A2AC3C();
  if (*(v20 + 16))
  {
    v9 = sub_240925A1C(v7, v8);
    v11 = v10;

    if (v11)
    {
      v12 = (*(v20 + 56) + 16 * v9);
      v14 = *v12;
      v13 = v12[1];

      return v14;
    }
  }

  else
  {
  }

  return 0;
}

char *sub_24095F97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelUpdate;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7A0, &qword_240A33100);
  v11 = *(*(v10 - 8) + 56);
  v11(&a5[v9], 1, 1, v10);
  v11(&a5[v9], 1, 1, v10);
  v12 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender];
  *v12 = 0;
  v12[1] = 0;
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v14 = result;
    v31 = sub_2409194E8(0, &unk_27E50DD80, 0x277CF02F0);
    v32 = MEMORY[0x277CEDE68];
    *&v30 = v14;
    sub_24090C218(&v30, &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag]);
    v15 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__serverUIContext;
    v16 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
    v17 = *(*(v16 - 8) + 56);
    v17(&a5[v15], 1, 1, v16);
    v17(&a5[v15], 1, 1, v16);
    *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter] = 0;
    v18 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate];
    *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *(v18 + 8) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    sub_240A2971C();
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v19 = result;
      v20 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

      *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager] = v20;
      v21 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel_ageMigrationController];
      v22 = MEMORY[0x277CEDCE0];
      *v21 = a1;
      v21[1] = v22;
      v23 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
      v24 = sub_240A2A39C();
      v25 = *(v24 - 8);
      (*(v25 + 16))(&a5[v23], a2, v24);
      swift_unknownObjectRetain();
      sub_24090C1F0(v18);
      *(v18 + 8) = a4;
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay] = 0;
      v29.receiver = a5;
      v29.super_class = type metadata accessor for AgeMigrationViewModel(0);
      v26 = objc_msgSendSuper2(&v29, sel_init);
      swift_getKeyPath();
      *&v30 = v26;
      sub_24096471C(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
      v27 = v26;
      sub_240A296EC();

      v28 = *&v27[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager];
      [v28 setDelegate_];

      (*(v25 + 8))(a2, v24);
      return v27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24095FD70(uint64_t a1)
{
  v65 = a1;
  v1 = type metadata accessor for AgeMigrationView();
  v2 = *(v1 - 8);
  v63 = v1 - 8;
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1 - 8, v4);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v61 = (&v59 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v66 = &v59 - v12;
  v13 = sub_240A2975C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v59 - v22;
  v24 = sub_240A2A39C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v59 - v32;
  sub_240A2A38C();
  v34 = sub_240A29A0C();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v23, v65, v34);
  (*(v35 + 56))(v23, 0, 1, v34);
  sub_240A2A37C();
  (*(v14 + 104))(v18, *MEMORY[0x277CED258], v13);
  sub_240A2A2CC();
  sub_240A2AABC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  sub_240A2C32C();
  v36 = sub_240A2B01C();
  (*(*(v36 - 8) + 56))(v66, 1, 1, v36);
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v37 = sub_240A2AAAC();
  v65 = v25;
  v66 = v24;
  (*(v25 + 16))(v30, v33, v24);
  v38 = objc_allocWithZone(type metadata accessor for AgeMigrationViewModel(0));

  v39 = v60;
  v40 = v60;
  v62 = v37;
  v41 = sub_24095F97C(v37, v30, v39, &off_28528D990, v38);

  v42 = *&v40[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel];
  *&v40[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel] = v41;
  v43 = v41;

  KeyPath = swift_getKeyPath();
  v45 = v61;
  *v61 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v46 = *(v63 + 28);
  sub_24096471C(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  v47 = v43;
  sub_240A2BD9C();
  v48 = objc_allocWithZone(type metadata accessor for AgeMigrationHostingController());
  sub_24092F130(v45, v64);
  v49 = sub_240A2B5EC();
  sub_24092F194(v45);
  v50 = *&v40[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationHostingController];
  *&v40[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationHostingController] = v49;
  v51 = v49;

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v52 = sub_240A2B00C();
  __swift_project_value_buffer(v52, qword_27E50C4C0);
  v53 = sub_240A2AFFC();
  v54 = sub_240A2C29C();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_2408FE000, v53, v54, "Pushing AgeMigrationView", v55, 2u);
    MEMORY[0x245CCDDB0](v55, -1, -1);
  }

  v56 = [v40 navigationController];
  if (v56)
  {
    v57 = v56;
    [v56 pushViewController:v51 animated:1];

    return (*(v65 + 8))(v33, v66);
  }

  else
  {
    (*(v65 + 8))(v33, v66);
  }
}

uint64_t sub_2409603D0()
{
  v1[25] = v0;
  v2 = sub_240A2B00C();
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C760, &qword_240A330C8) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C768, &qword_240A330D0) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v7 = sub_240A298BC();
  v1[32] = v7;
  v8 = *(v7 - 8);
  v1[33] = v8;
  v9 = *(v8 + 64) + 15;
  v1[34] = swift_task_alloc();
  v10 = sub_240A2986C();
  v1[35] = v10;
  v11 = *(v10 - 8);
  v1[36] = v11;
  v12 = *(v11 + 64) + 15;
  v1[37] = swift_task_alloc();
  v13 = sub_240A2998C();
  v1[38] = v13;
  v14 = *(v13 - 8);
  v1[39] = v14;
  v15 = *(v14 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v16 = sub_240A2987C();
  v1[42] = v16;
  v17 = *(v16 - 8);
  v1[43] = v17;
  v18 = *(v17 + 64) + 15;
  v1[44] = swift_task_alloc();
  v19 = *(*(sub_240A294BC() - 8) + 64) + 15;
  v1[45] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C770, &qword_240A330D8) - 8) + 64) + 15;
  v1[46] = swift_task_alloc();
  v21 = sub_240A29A0C();
  v1[47] = v21;
  v22 = *(v21 - 8);
  v1[48] = v22;
  v23 = *(v22 + 64) + 15;
  v1[49] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB78, &qword_240A32E80) - 8) + 64) + 15;
  v1[50] = swift_task_alloc();
  v25 = sub_240A299DC();
  v1[51] = v25;
  v26 = *(v25 - 8);
  v1[52] = v26;
  v27 = *(v26 + 64) + 15;
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  sub_240A2C21C();
  v1[55] = sub_240A2C20C();
  v29 = sub_240A2C1BC();
  v1[56] = v29;
  v1[57] = v28;

  return MEMORY[0x2822009F8](sub_24096081C, v29, v28);
}

uint64_t sub_24096081C()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[25];
  sub_240950F64(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[55];
    v6 = v0[50];

    sub_240919300(v6, &qword_27E50BB78, &qword_240A32E80);
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[26], qword_27E50C4C0);
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C2AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "No primary account ID, cannot begin age migration", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    v10 = v0[25];

    v11 = v10 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v12 = *v11;
    if (*v11)
    {
      v13 = *(v11 + 8);
      sub_240926FD4();
      v14 = swift_allocError();
      *v15 = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0;

      v12(v14, 0);
      sub_24090C1A0(v12);
    }

    v17 = v0[53];
    v16 = v0[54];
    v19 = v0[49];
    v18 = v0[50];
    v21 = v0[45];
    v20 = v0[46];
    v22 = v0[44];
    v24 = v0[40];
    v23 = v0[41];
    v25 = v0[37];
    v30 = v0[34];
    v31 = v0[31];
    v32 = v0[30];
    v33 = v0[29];
    v34 = v0[28];

    v26 = v0[1];

    return v26();
  }

  else
  {
    (*(v0[52] + 32))(v0[54], v0[50], v0[51]);
    v28 = swift_task_alloc();
    v0[58] = v28;
    *v28 = v0;
    v28[1] = sub_240960B60;
    v29 = v0[25];

    return sub_24095F278();
  }
}

uint64_t sub_240960B60()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v6 = *v0;

  v3 = *(v1 + 456);
  v4 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_240960C80, v4, v3);
}

uint64_t sub_240960C80()
{
  v1 = [*(v0 + 200) buttonTray];
  v2 = [v1 allButtons];

  *(v0 + 472) = sub_2409194E8(0, &qword_27E50C6D8, 0x277D37690);
  v3 = sub_240A2C16C();

  if (v3 >> 62)
  {
    result = sub_240A2C59C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245CCD150](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
LABEL_9:

  [v6 showsBusyIndicator];

  v7 = swift_task_alloc();
  *(v0 + 480) = v7;
  *v7 = v0;
  v7[1] = sub_240960E00;
  v8 = *(v0 + 432);
  v9 = *(v0 + 200);

  return sub_24095215C(v8);
}

uint64_t sub_240960E00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v7 = *(v3 + 456);
  v8 = *(v3 + 448);
  if (v1)
  {
    v9 = sub_2409620D0;
  }

  else
  {
    v9 = sub_240960F44;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_240960F44()
{
  v55 = v0;
  v1 = v0[61];
  if (!v1)
  {
    v1 = sub_24092624C(MEMORY[0x277D84F90]);
  }

  v2 = sub_240A1E87C(v1);
  v0[63] = v2;

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[26], qword_27E50C4C0);

  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v54 = v6;
    *v5 = 136315138;
    v7 = sub_240A2BECC();
    v9 = sub_240925464(v7, v8, &v54);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2408FE000, v3, v4, "Silent auth completed successfully with results: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x245CCDDB0](v6, -1, -1);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v10 = v0[49];
  v12 = v0[45];
  v11 = v0[46];
  v14 = v0[43];
  v13 = v0[44];
  v15 = v0[42];
  (*(v0[52] + 16))(v0[53], v0[54], v0[51]);
  v16 = sub_240A298DC();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_240A294AC();
  v17 = *MEMORY[0x277CED3A0];
  v18 = *(v14 + 104);
  v0[64] = v18;
  v0[65] = (v14 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(v13, v17, v15);
  sub_240A299EC();
  v0[66] = sub_24095F7A4(v2);
  v0[67] = v19;
  if (v19)
  {
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C29C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v20, v21, "Silent auth obtained PLT from response", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v23 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
    v0[68] = v23;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = sub_24096154C;
    v24 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C780, &qword_240A330E8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240964C08;
    v0[13] = &block_descriptor_266;
    v0[14] = v24;
    [v23 anisetteDataWithCompletion_];
    v25 = (v0 + 2);

    return MEMORY[0x282200938](v25);
  }

  v26 = v0[55];

  v27 = v0[59];
  v28 = v0[25];
  sub_24095FD70(v0[49]);
  v29 = [v28 buttonTray];
  v30 = [v29 allButtons];

  v31 = sub_240A2C16C();
  if (v31 >> 62)
  {
    v25 = sub_240A2C59C();
    if (v25)
    {
      goto LABEL_15;
    }

LABEL_20:

    goto LABEL_21;
  }

  v25 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x245CCD150](0, v31);
  }

  else
  {
    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x282200938](v25);
    }

    v32 = *(v31 + 32);
  }

  v33 = v32;

  [v33 hidesBusyIndicator];

LABEL_21:
  v34 = v0[54];
  v35 = v0[51];
  v36 = v0[52];
  (*(v0[48] + 8))(v0[49], v0[47]);
  (*(v36 + 8))(v34, v35);
  v38 = v0[53];
  v37 = v0[54];
  v40 = v0[49];
  v39 = v0[50];
  v42 = v0[45];
  v41 = v0[46];
  v43 = v0[44];
  v45 = v0[40];
  v44 = v0[41];
  v46 = v0[37];
  v49 = v0[34];
  v50 = v0[31];
  v51 = v0[30];
  v52 = v0[29];
  v53 = v0[28];

  v47 = v0[1];

  return v47();
}

uint64_t sub_24096154C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 552) = v3;
  if (v3)
  {
    v4 = v1[67];
    v5 = v1[63];

    v6 = v1[56];
    v7 = v1[57];
    v8 = sub_240962474;
  }

  else
  {
    v6 = v1[56];
    v7 = v1[57];
    v8 = sub_240961670;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

id sub_240961670()
{
  v1 = *(v0 + 192);
  if (!v1)
  {
    v34 = *(v0 + 536);
    v35 = *(v0 + 504);
    v36 = *(v0 + 440);
    v37 = *(v0 + 224);

    sub_240A2AE9C();
    v38 = sub_240A2AFFC();
    v39 = sub_240A2C2AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2408FE000, v38, v39, "Unable to get anisette data", v40, 2u);
      MEMORY[0x245CCDDB0](v40, -1, -1);
    }

    v41 = *(v0 + 544);
    v43 = *(v0 + 384);
    v42 = *(v0 + 392);
    v44 = *(v0 + 376);
    v46 = *(v0 + 216);
    v45 = *(v0 + 224);
    v47 = *(v0 + 208);

    (*(v46 + 8))(v45, v47);
    sub_240926FD4();
    v32 = swift_allocError();
    *v48 = xmmword_240A32D20;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0;
    *(v48 + 16) = 0;
    swift_willThrow();

    (*(v43 + 8))(v42, v44);
LABEL_12:
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 208), qword_27E50C4C0);
    v49 = v32;
    v50 = sub_240A2AFFC();
    v51 = sub_240A2C2AC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = v32;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_2408FE000, v50, v51, "Failed to perform authentication or migration: %@", v52, 0xCu);
      sub_240919300(v53, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v53, -1, -1);
      MEMORY[0x245CCDDB0](v52, -1, -1);
    }

    v56 = *(v0 + 472);
    v57 = *(v0 + 200);

    v58 = [v57 buttonTray];
    v59 = [v58 allButtons];

    v60 = sub_240A2C16C();
    if (v60 >> 62)
    {
      if (sub_240A2C59C())
      {
        goto LABEL_18;
      }
    }

    else if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v60 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x245CCD150](0, v60);
        goto LABEL_21;
      }

      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v61 = *(v60 + 32);
LABEL_21:
        v62 = v61;
LABEL_30:
        v80 = *(v0 + 200);

        [v62 hidesBusyIndicator];

        v81 = v80 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
        swift_beginAccess();
        v82 = *v81;
        v83 = *(v0 + 432);
        v84 = *(v0 + 408);
        v85 = *(v0 + 416);
        if (*v81)
        {
          v86 = *(v81 + 8);
          v87 = v32;
          sub_24090C23C(v82);
          v82(v32, 0);

          sub_24090C1A0(v82);
        }

        (*(v85 + 8))(v83, v84);
        goto LABEL_38;
      }

      __break(1u);
LABEL_35:
      result = sub_240A2C59C();
      if (!result)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    v62 = 0;
    goto LABEL_30;
  }

  result = [*(v0 + 192) machineID];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v3 = result;
  sub_240A2BF4C();

  result = [v1 oneTimePassword];
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v4 = result;
  v6 = *(v0 + 320);
  v5 = *(v0 + 328);
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 296);
  sub_240A2BF4C();

  v115 = v1;
  [v1 routingInfo];
  sub_240A2997C();
  (*(v7 + 16))(v6, v5, v8);
  sub_240A2984C();
  result = [objc_opt_self() currentDevice];
  if (!result)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = *(v0 + 504);
  v12 = *(v0 + 440);
  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  v16 = *(v0 + 240);
  v15 = *(v0 + 248);

  v17 = sub_240A29AAC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_240A2C36C();

  sub_240919300(v16, &qword_27E50C760, &qword_240A330C8);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v18 = *(v0 + 536);
    v19 = *(v0 + 248);
    v20 = *(v0 + 232);

    sub_240919300(v19, &qword_27E50C768, &qword_240A330D0);
    sub_240A2AE9C();
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C2AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2408FE000, v21, v22, "Unable to get device info", v23, 2u);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    v24 = *(v0 + 384);
    v117 = *(v0 + 376);
    v120 = *(v0 + 392);
    v110 = *(v0 + 328);
    v25 = *(v0 + 312);
    v106 = *(v0 + 544);
    v108 = *(v0 + 304);
    v27 = *(v0 + 288);
    v26 = *(v0 + 296);
    v28 = *(v0 + 280);
    v29 = *(v0 + 232);
    v31 = *(v0 + 208);
    v30 = *(v0 + 216);

    (*(v30 + 8))(v29, v31);
    sub_240926FD4();
    v32 = swift_allocError();
    *v33 = xmmword_240A32D20;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0;
    *(v33 + 16) = 0;
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
    (*(v25 + 8))(v110, v108);
    (*(v24 + 8))(v120, v117);
    goto LABEL_12;
  }

  v107 = *(v0 + 520);
  v104 = *(v0 + 536);
  v105 = *(v0 + 512);
  v109 = *(v0 + 392);
  v63 = *(v0 + 352);
  v102 = *(v0 + 528);
  v103 = *(v0 + 336);
  v121 = *(v0 + 328);
  v64 = *(v0 + 312);
  v111 = v64;
  v113 = *(v0 + 544);
  v118 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 296);
  v68 = *(v0 + 272);
  v67 = *(v0 + 280);
  v69 = *(v0 + 256);
  v70 = *(v0 + 264);
  (*(v70 + 32))(v68, *(v0 + 248), v69);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DD00, &unk_240A330F0);
  v72 = *(v71 + 48);
  v73 = (v63 + *(v71 + 64));
  (*(v65 + 16))(v63, v66, v67);
  (*(v70 + 16))(v63 + v72, v68, v69);
  *v73 = v102;
  v73[1] = v104;
  v105(v63, *MEMORY[0x277CED390], v103);
  sub_240A298FC();

  (*(v70 + 8))(v68, v69);
  (*(v65 + 8))(v66, v67);
  (*(v111 + 8))(v121, v118);
  v74 = *(v0 + 472);
  v75 = *(v0 + 200);
  sub_24095FD70(*(v0 + 392));
  v76 = [v75 buttonTray];
  v77 = [v76 allButtons];

  v60 = sub_240A2C16C();
  if (v60 >> 62)
  {
    goto LABEL_35;
  }

  result = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_24:
  if ((v60 & 0xC000000000000001) != 0)
  {
    v78 = MEMORY[0x245CCD150](0, v60);
    goto LABEL_27;
  }

  if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_43;
  }

  v78 = *(v60 + 32);
LABEL_27:
  v79 = v78;

  [v79 hidesBusyIndicator];

LABEL_37:
  v88 = *(v0 + 432);
  v89 = *(v0 + 408);
  v90 = *(v0 + 416);
  (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
  (*(v90 + 8))(v88, v89);
LABEL_38:
  v92 = *(v0 + 424);
  v91 = *(v0 + 432);
  v94 = *(v0 + 392);
  v93 = *(v0 + 400);
  v96 = *(v0 + 360);
  v95 = *(v0 + 368);
  v97 = *(v0 + 352);
  v99 = *(v0 + 320);
  v98 = *(v0 + 328);
  v100 = *(v0 + 296);
  v112 = *(v0 + 272);
  v114 = *(v0 + 248);
  v116 = *(v0 + 240);
  v119 = *(v0 + 232);
  v122 = *(v0 + 224);

  v101 = *(v0 + 8);

  return v101();
}

uint64_t sub_2409620D0()
{
  v1 = v0[55];

  v2 = v0[62];
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[26], qword_27E50C4C0);
  v3 = v2;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2408FE000, v4, v5, "Failed to perform authentication or migration: %@", v6, 0xCu);
    sub_240919300(v7, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v10 = v0[59];
  v11 = v0[25];

  v12 = [v11 buttonTray];
  v13 = [v12 allButtons];

  v14 = sub_240A2C16C();
  if (v14 >> 62)
  {
    result = sub_240A2C59C();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x245CCD150](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;
LABEL_13:
  v18 = v0[25];

  [v17 hidesBusyIndicator];

  v19 = v18 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v20 = *v19;
  v21 = v0[54];
  v22 = v0[51];
  v23 = v0[52];
  if (*v19)
  {
    v24 = *(v19 + 8);
    v25 = v2;
    sub_24090C23C(v20);
    v20(v2, 0);

    sub_24090C1A0(v20);
  }

  (*(v23 + 8))(v21, v22);
  v27 = v0[53];
  v26 = v0[54];
  v29 = v0[49];
  v28 = v0[50];
  v31 = v0[45];
  v30 = v0[46];
  v32 = v0[44];
  v34 = v0[40];
  v33 = v0[41];
  v35 = v0[37];
  v37 = v0[34];
  v38 = v0[31];
  v39 = v0[30];
  v40 = v0[29];
  v41 = v0[28];

  v36 = v0[1];

  return v36();
}

uint64_t sub_240962474()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[55];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];

  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  v7 = v0[69];
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[26], qword_27E50C4C0);
  v8 = v7;
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C2AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2408FE000, v9, v10, "Failed to perform authentication or migration: %@", v11, 0xCu);
    sub_240919300(v12, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  v15 = v0[59];
  v16 = v0[25];

  v17 = [v16 buttonTray];
  v18 = [v17 allButtons];

  v19 = sub_240A2C16C();
  if (v19 >> 62)
  {
    result = sub_240A2C59C();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x245CCD150](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v21 = *(v19 + 32);
  }

  v22 = v21;
LABEL_13:
  v23 = v0[25];

  [v22 hidesBusyIndicator];

  v24 = v23 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v25 = *v24;
  v26 = v0[54];
  v27 = v0[51];
  v28 = v0[52];
  if (*v24)
  {
    v29 = *(v24 + 8);
    v30 = v7;
    sub_24090C23C(v25);
    v25(v7, 0);

    sub_24090C1A0(v25);
  }

  (*(v28 + 8))(v26, v27);
  v32 = v0[53];
  v31 = v0[54];
  v34 = v0[49];
  v33 = v0[50];
  v36 = v0[45];
  v35 = v0[46];
  v37 = v0[44];
  v39 = v0[40];
  v38 = v0[41];
  v40 = v0[37];
  v42 = v0[34];
  v43 = v0[31];
  v44 = v0[30];
  v45 = v0[29];
  v46 = v0[28];

  v41 = v0[1];

  return v41();
}

void sub_240962848(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;

  v9 = a3;
  v10 = [a1 protoAccount];
  if (v10)
  {
    v11 = v10;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v12 = sub_240A2B00C();
    __swift_project_value_buffer(v12, qword_27E50C4C0);
    v13 = v11;
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C29C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v11;
      v18 = v13;
      _os_log_impl(&dword_2408FE000, v14, v15, "Attempting to remove proto account: %@", v16, 0xCu);
      sub_240919300(v17, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v17, -1, -1);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    v19 = [v13 accountStore];
    if (v19)
    {
      v20 = v19;
      v21 = swift_allocObject();
      v21[2] = v13;
      v21[3] = sub_240963F68;
      v21[4] = v8;
      v28[4] = sub_240963F74;
      v28[5] = v21;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 1107296256;
      v28[2] = sub_240A1EFE0;
      v28[3] = &block_descriptor_130;
      v22 = _Block_copy(v28);
      v23 = v13;

      [v20 removeAccount:v23 withCompletionHandler:v22];
      _Block_release(v22);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v24 = sub_240A2B00C();
    __swift_project_value_buffer(v24, qword_27E50C4C0);
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C29C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2408FE000, v25, v26, "Asked to remove proto account but none exists, returning early", v27, 2u);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    sub_240959044(a2, v9);
  }
}

uint64_t sub_240962BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C740, &unk_240A33098);
    v3 = sub_240A2C45C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_240A2BF4C();
      sub_240A2C72C();
      v29 = v7;
      sub_240A2C09C();
      v9 = sub_240A2C74C();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_240A2BF4C();
        v20 = v19;
        if (v18 == sub_240A2BF4C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_240A2C66C();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_240962DF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = [a1 protoAccount];
  if (v7)
  {
    v8 = v7;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50C4C0);
    v10 = v8;
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C29C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v8;
      v15 = v10;
      _os_log_impl(&dword_2408FE000, v11, v12, "Attempting to remove proto account: %@", v13, 0xCu);
      sub_240919300(v14, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v14, -1, -1);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    v16 = [v10 accountStore];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      v18[2] = v10;
      v18[3] = sub_2409643A4;
      v18[4] = v6;
      v25[4] = sub_240964BC0;
      v25[5] = v18;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 1107296256;
      v25[2] = sub_240A1EFE0;
      v25[3] = &block_descriptor_206;
      v19 = _Block_copy(v25);
      v20 = v10;

      [v17 removeAccount:v20 withCompletionHandler:v19];
      _Block_release(v19);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v21 = sub_240A2B00C();
    __swift_project_value_buffer(v21, qword_27E50C4C0);
    v22 = sub_240A2AFFC();
    v23 = sub_240A2C29C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2408FE000, v22, v23, "Asked to remove proto account but none exists, returning early", v24, 2u);
      MEMORY[0x245CCDDB0](v24, -1, -1);
    }

    sub_24095A0A8();
  }
}

id sub_240963180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v38[3] = sub_2409194E8(0, &qword_27E50C6C0, 0x277CF0130);
  v38[4] = MEMORY[0x277CEDE48];
  v38[0] = a2;
  v37[3] = sub_2409194E8(0, &qword_27E50C6C8, 0x277CB8F48);
  v37[4] = MEMORY[0x277CEDE40];
  v37[0] = a3;
  v12 = &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler];
  *v12 = 0;
  v12[1] = 0;
  sub_240919298(a1, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_pendingDOB], &unk_27E50DCE0, &qword_240A32E20);
  sub_240919A14(v38, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountManager]);
  sub_240919A14(v37, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountStore]);
  *v12 = a4;
  v12[1] = a5;
  sub_24090C23C(a4);
  sub_240A2BFEC();
  [objc_opt_self() deviceIsiPad];
  sub_240A2BFEC();
  sub_240A2BFEC();
  v13 = sub_240A2BF1C();

  v14 = sub_240A2BF1C();

  v15 = sub_240A2BF1C();
  v36.receiver = a6;
  v36.super_class = type metadata accessor for ChildSafetyFeaturesViewController();
  v16 = objc_msgSendSuper2(&v36, sel_initWithTitle_detailText_symbolName_contentLayout_, v13, v14, v15, 2);

  v17 = v16;
  v18 = [v17 buttonTray];
  v19 = [objc_opt_self() boldButton];
  sub_240A2BFEC();
  v20 = sub_240A2BF1C();

  [v19 setTitle:v20 forState:0];

  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_240A2C39C();
  [v19 addAction:v22 forControlEvents:{64, 0, 0, 0, sub_2409642C4, v21}];

  [v18 addButton_];
  sub_240A2BFEC();
  v23 = sub_240A2BF1C();

  sub_240A2BFEC();
  v24 = sub_240A2BF1C();

  v25 = sub_240A2BF1C();
  [v17 addBulletedListItemWithTitle:v23 description:v24 symbolName:v25];

  sub_240A2BFEC();
  v26 = sub_240A2BF1C();

  sub_240A2BFEC();
  v27 = sub_240A2BF1C();

  v28 = sub_240A2BF1C();
  [v17 addBulletedListItemWithTitle:v26 description:v27 symbolName:v28];

  sub_240A2BFEC();
  v29 = sub_240A2BF1C();

  sub_240A2BFEC();
  v30 = sub_240A2BF1C();

  v31 = sub_240A2BF1C();
  [v17 addBulletedListItemWithTitle:v29 description:v30 symbolName:v31];

  sub_240A2BFEC();
  v32 = sub_240A2BF1C();

  v33 = sub_240A2BF1C();

  v34 = sub_240A2BF1C();
  [v17 addBulletedListItemWithTitle:v32 description:v33 symbolName:v34];

  sub_240919300(a1, &unk_27E50DCE0, &qword_240A32E20);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v38);
  return v17;
}

unint64_t _s14AppleIDSetupUI29ConnectToFamilyViewControllerC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0(void *a1)
{
  v1 = [a1 accountStore];
  v2 = [v1 aa_primaryAppleAccount];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7D0, &unk_240A315C0);
    inited = swift_initStackObject();
    v4 = MEMORY[0x277CED1A0];
    *(inited + 16) = xmmword_240A305D0;
    v5 = *v4;
    *(inited + 32) = v5;
    *(inited + 40) = v2;
    v6 = v5;
    v7 = sub_2409265DC(inited);
    swift_setDeallocating();
    sub_240919300(inited + 32, &qword_27E50B9D0, &unk_240A356C0);
    return v7;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];

    return sub_2409265DC(v9);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240963BD4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_240963C10(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

void sub_240963C5C()
{
  v1 = v0;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C28C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Age migration view model requested other options. Presenting secondary action view controller", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = sub_240956298(1);
  [v1 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_240963DB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240915E50;

  return sub_240957704(a1, v4, v5, v7, v6);
}

uint64_t sub_240963E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_240963EE8(void *a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_24095712C(a1, a2 & 1);
}

unint64_t sub_240963EF4()
{
  result = qword_27E50C650;
  if (!qword_27E50C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C650);
  }

  return result;
}

uint64_t sub_240963F80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240916360;

  return sub_240959BE0(a1, v4, v5, v7, v6);
}

uint64_t sub_240964048()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  return sub_240A2C1CC();
}

uint64_t sub_240964124(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x14)
  {
  }

  return result;
}

uint64_t objectdestroy_148Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_2409641C8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240915E50;

  return sub_24095BB34();
}

uint64_t sub_2409642DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_24095590C(a1, v4, v5, v6, (v1 + 5));
}

void sub_2409643A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24095A0A8();
}

uint64_t objectdestroy_126Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24096442C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_24095AF3C();
}

uint64_t objectdestroy_123Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24096453C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_240916360;

  return sub_240987D08(a1, a2, v2);
}

uint64_t objectdestroy_99Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24096465C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_240916360;

  return sub_24094DB10();
}

uint64_t sub_24096471C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_140Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_240964800(char a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230) - 8) + 80);

  sub_24095B854(a1, a2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_240964920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240964968(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_2409649D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_240964A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_240964A98()
{
  result = qword_27E50C7F0;
  if (!qword_27E50C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C7F0);
  }

  return result;
}

unint64_t sub_240964AEC()
{
  result = qword_27E50C7F8[0];
  if (!qword_27E50C7F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E50C7F8);
  }

  return result;
}

uint64_t sub_240964C6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewControllerRepresentable.Coordinator();

  a3(v13);
  v14 = sub_240965618(a1, a2);
  (*(v9 + 8))(v12, a5);
  return v14;
}

uint64_t sub_240964D80(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + qword_27E516280 + 16));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

void sub_240964DD8(void *a1)
{
  v1 = *MEMORY[0x277D85000] & *a1;
  v2 = *(v1 + qword_27E516280);
  v3 = *(v1 + qword_27E516280 + 8);
  sub_2409656E4();
}

uint64_t sub_240964E4C(void *a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v2;
  v31 = sub_240A2B00C();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v7 + qword_27E516280);
  v14 = *(v7 + qword_27E516280 + 8);
  v15 = type metadata accessor for ViewControllerRepresentable.Coordinator();
  v32.receiver = v3;
  v32.super_class = v15;
  v16 = a2 & 1;
  objc_msgSendSuper2(&v32, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  sub_240A2AE7C();
  v17 = a1;
  v18 = sub_240A2AFFC();
  v19 = sub_240A2C28C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412546;
    *(v20 + 4) = v17;
    *v21 = a1;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v16;
    v22 = v17;
    _os_log_impl(&dword_2408FE000, v18, v19, "View did move to window (%@), shouldAppear: %{BOOL}d", v20, 0x12u);
    sub_240915C68(v21);
    MEMORY[0x245CCDDB0](v21, -1, -1);
    v23 = v20;
    v6 = MEMORY[0x277D85000];
    MEMORY[0x245CCDDB0](v23, -1, -1);
  }

  result = (*(v8 + 8))(v12, v31);
  if (a1)
  {
    v25 = v3 + *((*v6 & *v3) + qword_27E516280 + 16);
    v27 = *v25;
    v26 = *(v25 + 1);

    v27(v3);

    v28 = (v3 + *((*v6 & *v3) + qword_27E516280 + 16));
    v29 = v28[1];
    *v28 = nullsub_1;
    v28[1] = 0;
  }

  return result;
}

void sub_240965128(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a1;
  sub_240964E4C(a3, a4);
}

id sub_24096524C()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + qword_27E516280);
  v3 = *(v1 + qword_27E516280 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ViewControllerRepresentable.Coordinator();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_240965330()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2409653A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_240965678();
}

uint64_t sub_2409653AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  result = sub_240964C6C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_2409653E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_240965460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_2409654DC()
{
  swift_getWitnessTable();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_24096551C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*((*MEMORY[0x277D85000] & *v2) + qword_27E516280) - 8) + 64);
  v4 = MEMORY[0x28223BE20](a1, a2);
  v6 = (v2 + *(v5 + 16));
  *v6 = v4;
  v6[1] = v7;
  (*(v8 + 16))(&v12 - v9, v10);
  return sub_240A2B5EC();
}

uint64_t sub_240965618(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27E516280);
  v6 = *(v2 + qword_27E516280 + 8);
  v7 = objc_allocWithZone(type metadata accessor for ViewControllerRepresentable.Coordinator());
  return sub_24096551C(a1, a2);
}

uint64_t sub_240965678()
{
  type metadata accessor for ViewControllerRepresentable();
  swift_getWitnessTable();
  sub_240A2B83C();
  sub_240A2B81C();
  return v1;
}

id sub_240965770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISDeviceImage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2409657C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_240A2969C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[2] = sub_240A2BFAC();
  v18[3] = v10;
  v18[0] = 6513005;
  v18[1] = 0xE300000000000000;
  sub_24091C4F8();
  v11 = sub_240A2C3CC();

  if (v11)
  {
    (*(v5 + 104))(v9, *MEMORY[0x277D426A8], v4);
    sub_240A2968C();
    (*(v5 + 8))(v9, v4);
    sub_240A2967C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_240A2BF1C();

    [objc_opt_self() imageNamed:v14 inBundle:v13 compatibleWithTraitCollection:a3];
  }

  else
  {
    if (qword_27E50AFA0 != -1)
    {
      swift_once();
    }

    v15 = qword_27E516340;
    v16 = sub_240A2BF1C();
    v17 = [objc_opt_self() imageNamed:v16 inBundle:v15];

    if (!v17)
    {
      __break(1u);
    }
  }
}

void sub_240965A54(id a1, id a2, uint64_t a3)
{
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C900, &unk_240A334B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v30 - v15;
  v17 = sub_240A296BC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    sub_240A296CC();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_240965E64(v16);
LABEL_11:
      sub_240A2AE9C();
      v27 = sub_240A2AFFC();
      v28 = sub_240A2C2AC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_2408FE000, v27, v28, "Unable to fetch device image.", v29, 2u);
        MEMORY[0x245CCDDB0](v29, -1, -1);
      }

      (*(v7 + 8))(v11, v6);
      sub_2409657C8(a1, a2, 0);
      return;
    }

LABEL_8:
    v31 = a3;
    (*(v18 + 32))(v22, v16, v17);
    sub_240A296AC();
    if (v23)
    {
      sub_240A2967C();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      v26 = sub_240A2BF1C();

      [objc_opt_self() imageNamed:v26 inBundle:v25 compatibleWithTraitCollection:v31];

      (*(v18 + 8))(v22, v17);
      return;
    }

    (*(v18 + 8))(v22, v17);
    goto LABEL_11;
  }

  if (qword_27E50AFA0 != -1)
  {
    swift_once();
  }

  a2 = qword_27E516340;
  v22 = sub_240A2BF1C();
  a1 = [objc_opt_self() imageNamed:v22 inBundle:a2];

  if (!a1)
  {
    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_240965E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C900, &unk_240A334B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240965EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_240915E50;

  return v11(a1, a2, a3);
}

uint64_t sub_24096602C(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[2] = *v2;
  sub_240A2C21C();
  v3[6] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409660CC, v5, v4);
}

uint64_t sub_2409660CC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v0[3] = off_28528BFC8(v3);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C908, &qword_240A33520));
  v5 = sub_240A2B5EC();
  [v3 showViewController:v5 animated:1];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2409661B4(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[2] = *v2;
  sub_240A2C21C();
  v3[6] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240966254, v5, v4);
}

uint64_t sub_240966254()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v0[3] = off_28528D710(v3);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C908, &qword_240A33520));
  v5 = sub_240A2B5EC();
  [v3 showViewController:v5 animated:1];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24096633C()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50C910);
  __swift_project_value_buffer(v0, qword_27E50C910);
  return sub_240A2AE6C();
}

uint64_t sub_240966488()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2409664E8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___AISSafetySettingsViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_240966580;
}

void sub_240966580(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id SafetySettingsViewController.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = 0;
  *&v3[OBJC_IVAR___AISSafetySettingsViewController_context] = a1;
  *&v3[OBJC_IVAR___AISSafetySettingsViewController_configuration] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id SafetySettingsViewController.init(with:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = 0;
  *&v1[OBJC_IVAR___AISSafetySettingsViewController_context] = a1;
  *&v1[OBJC_IVAR___AISSafetySettingsViewController_configuration] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SafetySettingsViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

id SafetySettingsViewController.__allocating_init(with:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = 0;
  *&v5[OBJC_IVAR___AISSafetySettingsViewController_context] = a1;
  *&v5[OBJC_IVAR___AISSafetySettingsViewController_configuration] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id SafetySettingsViewController.init(with:configuration:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = 0;
  *&v2[OBJC_IVAR___AISSafetySettingsViewController_context] = a1;
  *&v2[OBJC_IVAR___AISSafetySettingsViewController_configuration] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SafetySettingsViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

id SafetySettingsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SafetySettingsViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___AISSafetySettingsViewController_progressHostingController) = 0;
  sub_240A2C58C();
  __break(1u);
}

void sub_240966A24()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for SafetySettingsViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2409674C8();
}

void sub_240966AB4(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SafetySettingsViewController();
  objc_msgSendSuper2(&v11, sel_viewWillAppear_, a1 & 1);
  v4 = *&v2[OBJC_IVAR___AISSafetySettingsViewController_context];
  sub_240A2AA1C();
  v5 = sub_240A2AAEC();
  if (v5 == sub_240A2AAEC())
  {
    v6 = [v2 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 isNavigationBarHidden];

      if (v8)
      {
        v9 = [v2 navigationController];
        if (v9)
        {
          v10 = v9;
          [v9 setNavigationBarHidden:0 animated:0];
        }
      }
    }
  }
}

uint64_t sub_240966BEC(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SafetySettingsViewController();
  v15.receiver = v1;
  v15.super_class = v8;
  objc_msgSendSuper2(&v15, sel_viewDidAppear_, a1 & 1);
  v9 = sub_240A2C24C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_240A2C21C();
  v10 = v1;
  v11 = sub_240A2C20C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  sub_2409230D4(0, 0, v7, &unk_240A33560, v12);
}

uint64_t sub_240966D34()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24094DBBC;

  return sub_240966F38();
}

uint64_t sub_240966F38()
{
  v1[2] = v0;
  sub_240A2C21C();
  v1[3] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_240966FD0, v3, v2);
}

uint64_t sub_240966FD0()
{
  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50C910);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Starting to present safety settings...", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = [v5 navigationController];
  v7 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
  v0[6] = v7;

  [v7 setPresentationType_];
  v8 = *&v5[OBJC_IVAR___AISSafetySettingsViewController_context];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_240967188;
  v10 = v0[2];

  return sub_240967B8C(v8);
}

uint64_t sub_240967188(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *v1;
  v3[8] = a1;

  v6 = swift_task_alloc();
  v3[9] = v6;
  *v6 = v5;
  v6[1] = sub_2409672D8;
  v7 = v3[6];

  return sub_240968EA8(v7, a1);
}

uint64_t sub_2409672D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = a1;

  v4 = *(v2 + 40);
  v5 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_240967400, v5, v4);
}

uint64_t sub_240967400()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  if ([v1 success])
  {
    v3 = *(v0 + 16);
    sub_24096835C(1);
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = [*(v0 + 80) error];
    sub_2409684C8(v5);
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 48);

  v8 = *(v0 + 8);

  return v8();
}

void sub_2409674C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v60 - v10;
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 systemBackgroundColor];
  [v13 setBackgroundColor_];

  sub_240A2B22C();
  (*(v3 + 16))(v8, v11, v2);
  sub_24096ADFC();
  v60[1] = sub_240A2BCDC();
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C908, &qword_240A33520));
  v17 = sub_240A2B5EC();
  v18 = [v17 view];
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  v20 = [v14 clearColor];
  [v19 setBackgroundColor_];

  v21 = [v17 view];
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = v23;
  v25 = [v17 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  [v24 addSubview_];

  [v17 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_240A33530;
  v28 = [v17 view];
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  v60[0] = v11;
  v30 = [v28 topAnchor];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v27 + 32) = v34;
  v35 = [v17 view];
  if (!v35)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v1 view];
  if (!v38)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v27 + 40) = v41;
  v42 = [v17 view];
  if (!v42)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v43 = v42;
  v44 = v3;
  v45 = [v42 trailingAnchor];

  v46 = [v1 view];
  if (!v46)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v47 = v46;
  v48 = v2;
  v49 = [v46 trailingAnchor];

  v50 = [v45 constraintEqualToAnchor_];
  *(v27 + 48) = v50;
  v51 = [v17 view];

  if (!v51)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v52 = [v51 bottomAnchor];

  v53 = [v1 view];
  if (v53)
  {
    v54 = v53;
    v55 = objc_opt_self();
    v56 = [v54 bottomAnchor];

    v57 = [v52 constraintEqualToAnchor_];
    *(v27 + 56) = v57;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v58 = sub_240A2C15C();

    [v55 activateConstraints_];

    (*(v44 + 8))(v60[0], v48);
    v59 = *&v1[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController];
    *&v1[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = v17;

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_240967AD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240966D34();
}

uint64_t sub_240967B8C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_240A2C21C();
  v2[23] = sub_240A2C20C();
  v4 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240967C24, v4, v3);
}

uint64_t sub_240967C24()
{
  v31 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  v3 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v4 = sub_240968020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  *(inited + 32) = 0x5265674172657375;
  v6 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 40) = 0xEC00000065676E61;
  *(inited + 48) = v4;
  sub_240926374(inited);
  swift_setDeallocating();
  sub_240919300(v6, &qword_27E50BB00, &unk_240A38260);
  v7 = MEMORY[0x277D837D0];
  v8 = sub_240A2BE9C();

  [v3 setAdditionalParameters_];

  v9 = [v3 additionalParameters];
  if (v9)
  {
    v10 = *(v0 + 168);
    v11 = v9;
    v12 = sub_240A2BEBC();

    sub_240A2AA1C();
    *(v0 + 96) = sub_240A2AADC();
    *(v0 + 120) = v7;
    *(v0 + 104) = v13;
    sub_24091C780((v0 + 96), (v0 + 128));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v12;
    sub_2409F6038((v0 + 128), 0x6574736575716572, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
    if (v12)
    {
      v15 = sub_240A2BE9C();
    }

    else
    {
      v15 = 0;
    }

    [v3 setAdditionalParameters_];
  }

  else
  {
    [v3 setAdditionalParameters_];
  }

  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v16 = sub_240A2B00C();
  __swift_project_value_buffer(v16, qword_27E50C910);
  v17 = v3;
  v18 = sub_240A2AFFC();
  v19 = sub_240A2C29C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315138;
    v22 = [v17 additionalParameters];
    if (v22)
    {
      v23 = v22;
      v24 = sub_240A2BEBC();
    }

    else
    {
      v24 = 0;
    }

    *(v0 + 160) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C980, &unk_240A33640);
    v25 = sub_240A2BF9C();
    v27 = sub_240925464(v25, v26, &v30);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_2408FE000, v18, v19, "Created circle context with parameters: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x245CCDDB0](v21, -1, -1);
    MEMORY[0x245CCDDB0](v20, -1, -1);
  }

  v28 = *(v0 + 8);

  return v28(v17);
}

id sub_240968020()
{
  v1 = *(v0 + OBJC_IVAR___AISSafetySettingsViewController_configuration);
  if (v1 && (v2 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *&v1[v2]))
  {
    v3 = qword_27E50AF30;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_240A2B00C();
    __swift_project_value_buffer(v5, qword_27E50C910);
    v6 = v4;
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *&v1[v2];

      _os_log_impl(&dword_2408FE000, v7, v8, "Using userAgeRange from configuration: %lu", v9, 0xCu);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    else
    {

      v7 = v6;
    }

    v12 = *&v1[v2];
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 primaryAuthKitAccount];
    if (v11)
    {
      v6 = v11;
      v12 = [v10 userAgeRangeForAccount:v11];
      if (qword_27E50AF30 != -1)
      {
        swift_once();
      }

      v13 = sub_240A2B00C();
      __swift_project_value_buffer(v13, qword_27E50C910);
      v14 = sub_240A2AFFC();
      v15 = sub_240A2C29C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v12;
        _os_log_impl(&dword_2408FE000, v14, v15, "Fetched userAgeRange from primary account: %lu", v16, 0xCu);
        MEMORY[0x245CCDDB0](v16, -1, -1);
      }
    }

    else
    {
      if (qword_27E50AF30 != -1)
      {
        swift_once();
      }

      v17 = sub_240A2B00C();
      __swift_project_value_buffer(v17, qword_27E50C910);
      v18 = sub_240A2AFFC();
      v19 = sub_240A2C29C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2408FE000, v18, v19, "No primary account found for age range", v20, 2u);
        MEMORY[0x245CCDDB0](v20, -1, -1);
      }

      v12 = 0;
      v6 = v10;
    }
  }

  return v12;
}

void sub_24096835C(char a1)
{
  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C910);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully configured safety settings", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  sub_2409693C4();
  v6 = [objc_allocWithZone(MEMORY[0x277CEDE78]) initWithIsSafetySettingsApplied_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong safetySettingsDidFinishWithResult:v6 viewControllersToRemove:0 error:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_2409684C8(void *a1)
{
  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C910);
  v3 = a1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = a1;
    v16 = v7;
    *v6 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v9 = sub_240A2BF9C();
    v11 = sub_240925464(v9, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2408FE000, v4, v5, "Failed to configure safety settings with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CEDE78]) initWithIsSafetySettingsApplied_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a1)
    {
      a1 = sub_240A2952C();
    }

    [v14 safetySettingsDidFinishWithResult:v12 viewControllersToRemove:0 error:{a1, v15, v16}];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_2409686D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240968780;

  return sub_24096A488(a1);
}

uint64_t sub_240968780(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_240968A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_240A2C21C();
  v3[5] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240968AAC, v5, v4);
}

uint64_t sub_240968AAC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_240968B80;
  v8 = v0[2];

  return sub_24096A488(v8);
}

uint64_t sub_240968B80(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 48);
  if (v3)
  {
    v12 = sub_240A2952C();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 48), a1 & 1, 0);
  }

  _Block_release(*(v6 + 48));
  v13 = *(v10 + 8);

  return v13();
}

id SafetySettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id SafetySettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240968EA8(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  sub_240A2C21C();
  v2[21] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[22] = v4;
  v2[23] = v3;

  return MEMORY[0x2822009F8](sub_240968F40, v4, v3);
}

uint64_t sub_240968F40()
{
  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_240A2B00C();
  v0[24] = __swift_project_value_buffer(v2, qword_27E50C910);
  v3 = v1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2408FE000, v4, v5, "Performing circle request with context: %@", v7, 0xCu);
    sub_240919300(v8, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v11 = v0[19];
  v10 = v0[20];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24096917C;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A271E4;
  v0[13] = &block_descriptor_8;
  v0[14] = v12;
  [v11 performWithContext:v10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24096917C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240969284, v2, v1);
}

uint64_t sub_240969284()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  v3 = *(v0 + 144);
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_2408FE000, v4, v5, "Finished performing circle request with response: %@", v6, 0xCu);
    sub_240919300(v7, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9(v3);
}

void sub_2409693C4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 primaryAuthKitAccount];

  if (v1)
  {
    oslog = [objc_allocWithZone(MEMORY[0x277CF02D0]) init];
    [oslog markSafetyScreenSeenForAccount:v1];
    if (qword_27E50AF30 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50C910);
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C29C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2408FE000, v3, v4, "Successfully marked safety screen as seen for account", v5, 2u);
      MEMORY[0x245CCDDB0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AF30 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50C910);
    oslog = sub_240A2AFFC();
    v7 = sub_240A2C2AC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v7, "No primary account found to mark safety screen as seen", v8, 2u);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }
  }
}

uint64_t sub_2409695E0()
{
  if ((sub_240A2A9DC() & 1) == 0)
  {
    return 0;
  }

  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50C910);
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C29C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Safety settings already enabled - not showing safety settings", v3, 2u);
    MEMORY[0x245CCDDB0](v3, -1, -1);
  }

  return 1;
}

uint64_t sub_240969834(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    if (qword_27E50AF30 != -1)
    {
      swift_once();
    }

    v16 = sub_240A2B00C();
    __swift_project_value_buffer(v16, qword_27E50C910);
    v5 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v5, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v5, v17, "No account manager provided - not eligible for any flow", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    goto LABEL_23;
  }

  v5 = a3;
  v6 = [v5 userAgeRangeForAccount:a2];
  if (!a1 || a1 == 2)
  {
    if (v6 != 2 && v6 != 1)
    {
      v7 = v6;
      if (qword_27E50AF30 != -1)
      {
        swift_once();
      }

      v8 = sub_240A2B00C();
      __swift_project_value_buffer(v8, qword_27E50C910);
      v9 = sub_240A2AFFC();
      v10 = sub_240A2C29C();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_22;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 134218242;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2080;
      v13 = sub_240A2AADC();
      v15 = sub_240925464(v13, v14, &v23);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_2408FE000, v9, v10, "Age range %lu not eligible for %s flow - not showing safety settings", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245CCDDB0](v12, -1, -1);
LABEL_21:
      MEMORY[0x245CCDDB0](v11, -1, -1);
LABEL_22:

LABEL_23:
      return 0;
    }

    goto LABEL_16;
  }

  if (a1 == 1)
  {
    if (v6 != 2)
    {
      v20 = v6;
      if (qword_27E50AF30 != -1)
      {
        swift_once();
      }

      v21 = sub_240A2B00C();
      __swift_project_value_buffer(v21, qword_27E50C910);
      v9 = sub_240A2AFFC();
      v22 = sub_240A2C29C();
      if (!os_log_type_enabled(v9, v22))
      {
        goto LABEL_22;
      }

      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v20;
      _os_log_impl(&dword_2408FE000, v9, v22, "Age range %lu not eligible for mini-buddy flow - not showing safety settings", v11, 0xCu);
      goto LABEL_21;
    }

LABEL_16:

    return 1;
  }

  result = sub_240A2C67C();
  __break(1u);
  return result;
}

uint64_t sub_240969B7C(void *a1)
{
  v2 = sub_240A2BF1C();
  v3 = [a1 accountPropertyForKey_];

  if (v3)
  {
    sub_240A2C3DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_240919300(v14, &qword_27E50C6D0, &unk_240A33620);
    goto LABEL_13;
  }

  sub_2409194E8(0, &unk_27E50C960, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  v4 = v11;
  if (![v11 BOOLValue])
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50C910);
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "User has already seen safety screen - not showing safety settings", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v9 = 1;
LABEL_15:

  return v9;
}

uint64_t sub_240969D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_240A2974C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  sub_240A2C21C();
  v5[10] = sub_240A2C20C();
  v10 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240969E58, v10, v9);
}

uint64_t sub_240969E58()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);

  v6 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  (*(v4 + 104))(v2, *MEMORY[0x277CED210], v3);
  LOBYTE(v5) = sub_240A2AACC();
  (*(v4 + 8))(v2, v3);
  if ((v5 & 1) == 0)
  {
    if (qword_27E50AF30 != -1)
    {
      swift_once();
    }

    v14 = sub_240A2B00C();
    __swift_project_value_buffer(v14, qword_27E50C910);
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C29C();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_35;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "ageBasedAccountRestrictions is not enabled - not showing safety settings";
    goto LABEL_34;
  }

  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 16);
  v8 = sub_240A2B00C();
  __swift_project_value_buffer(v8, qword_27E50C910);
  v9 = v7;
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 16);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    sub_240A2AA1C();
    *(v13 + 4) = sub_240A2AAEC();

    _os_log_impl(&dword_2408FE000, v10, v11, "Starting shouldPresentSafetySettings checks for flow type: %ld", v13, 0xCu);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  else
  {

    v10 = *(v0 + 16);
  }

  v19 = *(v0 + 32);

  v20 = v19[4];
  __swift_project_boxed_opaque_existential_0(v19, v19[3]);
  LOBYTE(v20) = sub_240A2AD6C();
  v15 = sub_240A2AFFC();
  v16 = sub_240A2C29C();
  v21 = os_log_type_enabled(v15, v16);
  if ((v20 & 1) == 0)
  {
    if (v21)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Network is not reachable - not showing safety settings";
LABEL_34:
      _os_log_impl(&dword_2408FE000, v15, v16, v18, v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

LABEL_35:
    v44 = 0;
    goto LABEL_36;
  }

  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2408FE000, v15, v16, "Network reachability check passed", v22, 2u);
    MEMORY[0x245CCDDB0](v22, -1, -1);
  }

  v23 = *(v0 + 24);

  if (!v23 || (v24 = [*(v0 + 24) primaryAuthKitAccount]) == 0)
  {
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C29C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "No primary account found - not showing safety settings";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v15 = v24;
  v25 = sub_240A2AFFC();
  v26 = sub_240A2C29C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2408FE000, v25, v26, "Primary account check passed", v27, 2u);
    MEMORY[0x245CCDDB0](v27, -1, -1);
  }

  v28 = *(v0 + 48);

  if (sub_2409695E0())
  {
    goto LABEL_35;
  }

  v29 = sub_240A2AFFC();
  v30 = sub_240A2C29C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2408FE000, v29, v30, "ScreenTime settings check passed", v31, 2u);
    MEMORY[0x245CCDDB0](v31, -1, -1);
  }

  v32 = *(v0 + 16);
  v33 = *(v0 + 24);

  v34 = sub_240A2AA1C();
  if ((sub_240969834(v34, v15, v33) & 1) == 0)
  {
    goto LABEL_35;
  }

  v35 = sub_240A2AFFC();
  v36 = sub_240A2C29C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2408FE000, v35, v36, "Age eligibility check passed", v37, 2u);
    MEMORY[0x245CCDDB0](v37, -1, -1);
  }

  if (sub_240969B7C(v15))
  {
    goto LABEL_35;
  }

  v38 = sub_240A2AFFC();
  v39 = sub_240A2C29C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2408FE000, v38, v39, "Safety screen seen check passed", v40, 2u);
    MEMORY[0x245CCDDB0](v40, -1, -1);
  }

  v41 = sub_240A2AFFC();
  v42 = sub_240A2C29C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2408FE000, v41, v42, "All checks passed - showing safety settings", v43, 2u);
    MEMORY[0x245CCDDB0](v43, -1, -1);
  }

  v44 = 1;
LABEL_36:

  v45 = *(v0 + 72);

  v46 = *(v0 + 8);

  return v46(v44);
}

uint64_t sub_24096A488(uint64_t a1)
{
  v1[17] = a1;
  sub_240A2C21C();
  v1[18] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[19] = v3;
  v1[20] = v2;

  return MEMORY[0x2822009F8](sub_24096A520, v3, v2);
}

uint64_t sub_24096A520()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 168) = v1;
  v2 = [objc_opt_self() sharedNetworkObserver];
  v3 = sub_2409194E8(0, &qword_27E50EE10, 0x277CF0278);
  v4 = MEMORY[0x277CEDE58];
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 16) = v2;
  v5 = sub_240A2A12C();
  v6 = sub_240A2A11C();
  v7 = MEMORY[0x277CED7C0];
  *(v0 + 56) = v6;
  *(v0 + 80) = v5;
  *(v0 + 88) = v7;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_24096A694;
  v9 = *(v0 + 136);

  return (sub_240969D5C)(v9, v1, v0 + 16, v0 + 56, v0 + 96);
}

uint64_t sub_24096A694(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v12 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v6 = *(v4 + 168);
    sub_240919300(v4 + 96, &unk_27E50C950, &qword_240A38240);

    v7 = *(v4 + 152);
    v8 = *(v4 + 160);
    v9 = sub_24096A874;
  }

  else
  {
    v10 = *(v4 + 168);
    *(v4 + 192) = a1 & 1;
    sub_240919300(v4 + 96, &unk_27E50C950, &qword_240A38240);

    __swift_destroy_boxed_opaque_existential_0((v4 + 56));
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v7 = *(v4 + 152);
    v8 = *(v4 + 160);
    v9 = sub_24096A80C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24096A80C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);
  v3 = *(v0 + 192);

  return v2(v3);
}

uint64_t sub_24096A874()
{
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[23];

  return v2(0);
}

uint64_t dispatch thunk of SafetySettingsViewController.presentSafetySettings()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240916360;

  return v6();
}

uint64_t dispatch thunk of SafetySettingsViewController.shouldPresentSafetySettings(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x100);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24096AC20;

  return v8(a1);
}

uint64_t sub_24096AC20(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_24096AD1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_240968A10(v2, v3, v4);
}

unint64_t sub_24096ADFC()
{
  result = qword_27E50C990;
  if (!qword_27E50C990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BDD0, &unk_240A35010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C990);
  }

  return result;
}

uint64_t AISFlowStepComplete.prepareForPresentation()()
{
  v1[5] = v0;
  sub_240A2C21C();
  v1[6] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_24096AEF8, v3, v2);
}

uint64_t sub_24096AEF8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = v0[5];
    v4 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI19AISFlowStepComplete_authResponse);
    v7 = objc_allocWithZone(sub_240A2AB2C());
    v8 = v6;
    v9 = sub_240A2AB0C();
    v0[10] = v9;
    v10 = *(v4 + 48);
    v16 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_24096B0C4;

    return v16(v9, ObjectType, v4);
  }

  else
  {
    v14 = v0[6];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_24096B0C4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  swift_unknownObjectRelease();

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24096B220, v6, v5);
}

uint64_t sub_24096B220()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t AISFlowStepComplete.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  return v0;
}

uint64_t AISFlowStepComplete.__deallocating_deinit()
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

uint64_t type metadata accessor for AISFlowStepComplete()
{
  result = qword_27E50C9B0;
  if (!qword_27E50C9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AgeMigrationView()
{
  result = qword_27E50C9E8;
  if (!qword_27E50C9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24096B528()
{
  sub_24096B60C(319, &qword_27E50C9F8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24096B60C(319, &qword_27E50CA00, type metadata accessor for AgeMigrationViewModel, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24096B60C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24096B68C()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50C9C0);
  __swift_project_value_buffer(v0, qword_27E50C9C0);
  return sub_240A2AE5C();
}

uint64_t sub_24096B6D8@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v84 = sub_240A2A10C();
  v97 = *(v84 - 8);
  v2 = *(v97 + 64);
  MEMORY[0x28223BE20](v84, v3);
  v83 = &OpaqueTypeConformance2 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v82 = *(v86 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v86, v6);
  v78 = &OpaqueTypeConformance2 - v7;
  v8 = type metadata accessor for AgeMigrationView();
  v9 = v8 - 8;
  v90 = *(v8 - 8);
  v91 = *(v90 + 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v81 = &OpaqueTypeConformance2 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v88 = &OpaqueTypeConformance2 - v14;
  v87 = sub_240A2A39C();
  v98 = *(v87 - 8);
  v15 = *(v98 + 64);
  MEMORY[0x28223BE20](v87, v16);
  v18 = &OpaqueTypeConformance2 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA08, &qword_240A33728);
  v19 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73, v20);
  v22 = &OpaqueTypeConformance2 - v21;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA10, &qword_240A33730);
  v77 = *(v75 - 8);
  v23 = *(v77 + 64);
  MEMORY[0x28223BE20](v75, v24);
  v74 = &OpaqueTypeConformance2 - v25;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA18, &qword_240A33738);
  v80 = *(v79 - 8);
  v26 = *(v80 + 64);
  MEMORY[0x28223BE20](v79, v27);
  v89 = &OpaqueTypeConformance2 - v28;
  sub_24096C20C(v22);
  v29 = sub_240972764();
  sub_240A2BA7C();
  sub_240919300(v22, &qword_27E50CA08, &qword_240A33728);
  v92 = *(v9 + 28);
  v30 = v1;
  v85 = v1;
  sub_240A2BD7C();
  v31 = v101;
  swift_getKeyPath();
  v101 = v31;
  v95 = sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v32 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v33 = v98;
  v34 = *(v98 + 16);
  v93 = v98 + 16;
  v94 = v34;
  v35 = v18;
  v36 = v18;
  v37 = v87;
  v34(v35, &v31[v32], v87);

  v38 = v88;
  sub_240974F30(v30, v88, type metadata accessor for AgeMigrationView);
  v39 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v40 = swift_allocObject();
  sub_240974EC8(v38, v40 + v39, type metadata accessor for AgeMigrationView);
  v101 = v73;
  v102 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = sub_240975108(&unk_27E50DD50, MEMORY[0x277CED960]);
  v76 = v36;
  v41 = v75;
  v42 = v74;
  sub_240A2BAFC();

  v43 = *(v33 + 8);
  v98 = v33 + 8;
  v90 = v43;
  v43(v36, v37);
  (*(v77 + 8))(v42, v41);
  v44 = v85;
  v45 = v78;
  v46 = v86;
  sub_240A2BD8C();
  swift_getKeyPath();
  sub_240A2BDAC();

  (*(v82 + 8))(v45, v46);
  v78 = v99;
  LODWORD(v82) = v100;
  v47 = v88;
  sub_240974F30(v44, v88, type metadata accessor for AgeMigrationView);
  v48 = swift_allocObject();
  sub_240974EC8(v47, v48 + v39, type metadata accessor for AgeMigrationView);
  v49 = v81;
  sub_240974F30(v44, v81, type metadata accessor for AgeMigrationView);
  v50 = swift_allocObject();
  sub_240974EC8(v49, v50 + v39, type metadata accessor for AgeMigrationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB00, &qword_240A33820);
  v51 = v87;
  v101 = v41;
  v102 = v87;
  v103 = OpaqueTypeConformance2;
  v104 = v73;
  swift_getOpaqueTypeConformance2();
  sub_2409741C8();
  v52 = v79;
  v53 = v89;
  sub_240A2BABC();

  (*(v80 + 8))(v53, v52);
  KeyPath = swift_getKeyPath();
  sub_240A2BD7C();
  v55 = v101;
  swift_getKeyPath();
  v101 = v55;
  sub_240A296EC();

  v56 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v57 = v76;
  v58 = v51;
  v94(v76, &v55[v56], v51);
  v59 = v83;
  sub_240A2A29C();
  v90(v57, v58);
  v60 = sub_240A2A03C();

  v61 = *(v97 + 8);
  v97 += 8;
  v91 = v61;
  v62 = v84;
  v61(v59, v84);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB40, &qword_240A33860);
  v64 = v96;
  v65 = (v96 + *(v63 + 36));
  *v65 = KeyPath;
  v65[1] = v60;
  v66 = swift_getKeyPath();
  sub_240A2BD7C();
  v67 = v99;
  swift_getKeyPath();
  v99 = v67;
  sub_240A296EC();

  v68 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v94(v57, &v67[v68], v58);
  sub_240A2A29C();
  v90(v57, v58);
  v69 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB48, &unk_240A33890) + 36));
  v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE68, &qword_240A31CF8) + 28);
  sub_240A29FAC();

  result = v91(v59, v62);
  *v69 = v66;
  return result;
}

uint64_t sub_24096C20C@<X0>(uint64_t a1@<X8>)
{
  v178 = a1;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CAE8, &qword_240A337A8);
  v2 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159, v3);
  v139 = &v128 - v4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB60, &qword_240A33900);
  v5 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157, v6);
  v158 = &v128 - v7;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CAD8, &qword_240A337A0);
  v8 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171, v9);
  v161 = &v128 - v10;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v138 = *(v160 - 8);
  v11 = *(v138 + 64);
  MEMORY[0x28223BE20](v160, v12);
  v137 = &v128 - v13;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CAC8, &qword_240A33798);
  v14 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154, v15);
  v136 = &v128 - v16;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB68, &qword_240A33908);
  v17 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168, v18);
  v170 = &v128 - v19;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB70, &qword_240A33910);
  v20 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151, v21);
  v153 = &v128 - v22;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CAB8, &qword_240A33790);
  v23 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169, v24);
  v155 = &v128 - v25;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CAA8, &qword_240A33788);
  v26 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177, v27);
  v172 = &v128 - v28;
  v152 = sub_240A2A46C();
  v135 = *(v152 - 8);
  v29 = *(v135 + 64);
  MEMORY[0x28223BE20](v152, v30);
  v134 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA98, &qword_240A33780);
  v32 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165, v33);
  v156 = &v128 - v34;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB78, &qword_240A33918);
  v35 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145, v36);
  v149 = &v128 - v37;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA68, &qword_240A33760);
  v38 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167, v39);
  v150 = &v128 - v40;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA78, &qword_240A33768);
  v41 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146, v42);
  v133 = &v128 - v43;
  v148 = sub_240A2A31C();
  v132 = *(v148 - 8);
  v44 = *(v132 + 64);
  MEMORY[0x28223BE20](v148, v45);
  v147 = &v128 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for DiscoveryView();
  v47 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144, v48);
  v131 = &v128 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB80, &qword_240A33920);
  v50 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174, v51);
  v176 = &v128 - v52;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB88, &qword_240A33928);
  v53 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162, v54);
  v164 = &v128 - v55;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB90, &unk_240A33930);
  v56 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141, v57);
  v142 = &v128 - v58;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA40, &qword_240A33748);
  v59 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163, v60);
  v143 = &v128 - v61;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA30, &qword_240A33740);
  v62 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175, v63);
  v166 = &v128 - v64;
  v65 = type metadata accessor for AgeMigrationView();
  v66 = v65 - 8;
  v129 = *(v65 - 8);
  v67 = *(v129 + 64);
  MEMORY[0x28223BE20](v65, v68);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  v69 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140, v70);
  v130 = &v128 - v71;
  v72 = sub_240A2A39C();
  v73 = *(v72 - 8);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72, v75);
  v77 = &v128 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_240A2A33C();
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78, v80);
  v82 = &v128 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(v66 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v173 = v1;
  sub_240A2BD7C();
  v84 = *&v179[0];
  swift_getKeyPath();
  *&v179[0] = v84;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v85 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v73 + 16))(v77, &v84[v85], v72);
  sub_240A2A34C();

  (*(v73 + 8))(v77, v72);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v123 = v137;
        sub_240A2B22C();
        v124 = v138;
        v125 = v160;
        (*(v138 + 16))(v158, v123, v160);
        swift_storeEnumTagMultiPayload();
        sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
        sub_240972EC8();
        v126 = v161;
        sub_240A2B6EC();
        sub_240919298(v126, v170, &qword_27E50CAD8, &qword_240A337A0);
        swift_storeEnumTagMultiPayload();
        sub_240972D84();
        sub_240972C1C(&qword_27E50CAD0, &qword_27E50CAD8, &qword_240A337A0, sub_240972EC8);
        v127 = v172;
        sub_240A2B6EC();
        sub_240919300(v126, &qword_27E50CAD8, &qword_240A337A0);
        sub_240919298(v127, v176, &qword_27E50CAA8, &qword_240A33788);
        swift_storeEnumTagMultiPayload();
        sub_2409727F0();
        sub_240972CCC();
        sub_240A2B6EC();
        sub_240919300(v127, &qword_27E50CAA8, &qword_240A33788);
        return (*(v124 + 8))(v123, v125);
      }

      v104 = v136;
      sub_240970494(v136);
      v99 = &qword_27E50CAC8;
      v100 = &qword_240A33798;
      sub_240919298(v104, v153, &qword_27E50CAC8, &qword_240A33798);
      swift_storeEnumTagMultiPayload();
      sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
      sub_240972E3C();
      v105 = v155;
      sub_240A2B6EC();
      sub_240919298(v105, v170, &qword_27E50CAB8, &qword_240A33790);
      swift_storeEnumTagMultiPayload();
      sub_240972D84();
      sub_240972C1C(&qword_27E50CAD0, &qword_27E50CAD8, &qword_240A337A0, sub_240972EC8);
      v106 = v172;
      sub_240A2B6EC();
      sub_240919300(v105, &qword_27E50CAB8, &qword_240A33790);
      v107 = &qword_27E50CAA8;
      v108 = &qword_240A33788;
      sub_240919298(v106, v176, &qword_27E50CAA8, &qword_240A33788);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v94 = v131;
        sub_24096F3CC(v131);
        sub_240974F30(v94, v142, type metadata accessor for DiscoveryView);
        swift_storeEnumTagMultiPayload();
        sub_240972938();
        sub_240975108(&qword_27E50CA58, type metadata accessor for DiscoveryView);
        v95 = v143;
        sub_240A2B6EC();
        sub_240919298(v95, v164, &qword_27E50CA40, &qword_240A33748);
        swift_storeEnumTagMultiPayload();
        sub_24097287C();
        sub_2409729F0();
        v96 = v166;
        sub_240A2B6EC();
        sub_240919300(v95, &qword_27E50CA40, &qword_240A33748);
        sub_240919298(v96, v176, &qword_27E50CA30, &qword_240A33740);
        swift_storeEnumTagMultiPayload();
        sub_2409727F0();
        sub_240972CCC();
        sub_240A2B6EC();
        sub_240919300(v96, &qword_27E50CA30, &qword_240A33740);
        return sub_240975090(v94, type metadata accessor for DiscoveryView);
      }

      v104 = v156;
      sub_240970040(v156);
      v99 = &qword_27E50CA98;
      v100 = &qword_240A33780;
      sub_240919298(v104, v149, &qword_27E50CA98, &qword_240A33780);
      swift_storeEnumTagMultiPayload();
      sub_240972AA8();
      sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
      v114 = v150;
      sub_240A2B6EC();
      sub_240919298(v114, v164, &qword_27E50CA68, &qword_240A33760);
      swift_storeEnumTagMultiPayload();
      sub_24097287C();
      sub_2409729F0();
      v106 = v166;
      sub_240A2B6EC();
      sub_240919300(v114, &qword_27E50CA68, &qword_240A33760);
      v107 = &qword_27E50CA30;
      v108 = &qword_240A33740;
      sub_240919298(v106, v176, &qword_27E50CA30, &qword_240A33740);
    }

    swift_storeEnumTagMultiPayload();
    sub_2409727F0();
    sub_240972CCC();
    sub_240A2B6EC();
    sub_240919300(v106, v107, v108);
    v103 = v104;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v117 = v130;
      sub_240A2B22C();
      sub_240974F30(v173, &v128 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
      v118 = (*(v129 + 80) + 16) & ~*(v129 + 80);
      v119 = swift_allocObject();
      sub_240974EC8(&v128 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0), v119 + v118, type metadata accessor for AgeMigrationView);
      v120 = (v117 + *(v140 + 36));
      *v120 = sub_2409744E4;
      v120[1] = v119;
      v120[2] = 0;
      v120[3] = 0;
      sub_240919298(v117, v142, &qword_27E50CA50, &unk_240A33750);
      swift_storeEnumTagMultiPayload();
      sub_240972938();
      sub_240975108(&qword_27E50CA58, type metadata accessor for DiscoveryView);
      v121 = v143;
      sub_240A2B6EC();
      sub_240919298(v121, v164, &qword_27E50CA40, &qword_240A33748);
      swift_storeEnumTagMultiPayload();
      sub_24097287C();
      sub_2409729F0();
      v122 = v166;
      sub_240A2B6EC();
      sub_240919300(v121, &qword_27E50CA40, &qword_240A33748);
      sub_240919298(v122, v176, &qword_27E50CA30, &qword_240A33740);
      swift_storeEnumTagMultiPayload();
      sub_2409727F0();
      sub_240972CCC();
      sub_240A2B6EC();
      sub_240919300(v122, &qword_27E50CA30, &qword_240A33740);
      v103 = v117;
      v115 = &qword_27E50CA50;
      v116 = &unk_240A33750;
      return sub_240919300(v103, v115, v116);
    }

    v97 = *(v82 + 1);
    v179[0] = *v82;
    v179[1] = v97;
    v180 = *(v82 + 4);
    v98 = v139;
    sub_240970960(v179, v139);
    sub_240974490(v179);
    v99 = &qword_27E50CAE8;
    v100 = &qword_240A337A8;
    sub_240919298(v98, v158, &qword_27E50CAE8, &qword_240A337A8);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    sub_240972EC8();
    v101 = v161;
    sub_240A2B6EC();
    sub_240919298(v101, v170, &qword_27E50CAD8, &qword_240A337A0);
    swift_storeEnumTagMultiPayload();
    sub_240972D84();
    sub_240972C1C(&qword_27E50CAD0, &qword_27E50CAD8, &qword_240A337A0, sub_240972EC8);
    v102 = v172;
    sub_240A2B6EC();
    sub_240919300(v101, &qword_27E50CAD8, &qword_240A337A0);
    sub_240919298(v102, v176, &qword_27E50CAA8, &qword_240A33788);
    swift_storeEnumTagMultiPayload();
    sub_2409727F0();
    sub_240972CCC();
    sub_240A2B6EC();
    sub_240919300(v102, &qword_27E50CAA8, &qword_240A33788);
    v103 = v98;
LABEL_15:
    v115 = v99;
    v116 = v100;
    return sub_240919300(v103, v115, v116);
  }

  if (EnumCaseMultiPayload)
  {
    v109 = v135;
    v110 = v134;
    (*(v135 + 32))(v134, v82, v152);
    v111 = v156;
    sub_240970040(v156);
    sub_240919298(v111, v153, &qword_27E50CA98, &qword_240A33780);
    swift_storeEnumTagMultiPayload();
    sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
    sub_240972E3C();
    v112 = v155;
    sub_240A2B6EC();
    sub_240919298(v112, v170, &qword_27E50CAB8, &qword_240A33790);
    swift_storeEnumTagMultiPayload();
    sub_240972D84();
    sub_240972C1C(&qword_27E50CAD0, &qword_27E50CAD8, &qword_240A337A0, sub_240972EC8);
    v113 = v172;
    sub_240A2B6EC();
    sub_240919300(v112, &qword_27E50CAB8, &qword_240A33790);
    sub_240919298(v113, v176, &qword_27E50CAA8, &qword_240A33788);
    swift_storeEnumTagMultiPayload();
    sub_2409727F0();
    sub_240972CCC();
    sub_240A2B6EC();
    sub_240919300(v113, &qword_27E50CAA8, &qword_240A33788);
    sub_240919300(v111, &qword_27E50CA98, &qword_240A33780);
    return (*(v109 + 8))(v110, v152);
  }

  else
  {
    v87 = v132;
    (*(v132 + 32))(v147, v82, v148);
    v88 = sub_240A2A2EC();
    v89 = v133;
    sub_24096FB08(v88, v90, v133);

    sub_240919298(v89, v149, &qword_27E50CA78, &qword_240A33768);
    swift_storeEnumTagMultiPayload();
    sub_240972AA8();
    sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
    v91 = v150;
    sub_240A2B6EC();
    sub_240919298(v91, v164, &qword_27E50CA68, &qword_240A33760);
    swift_storeEnumTagMultiPayload();
    sub_24097287C();
    sub_2409729F0();
    v92 = v166;
    sub_240A2B6EC();
    sub_240919300(v91, &qword_27E50CA68, &qword_240A33760);
    sub_240919298(v92, v176, &qword_27E50CA30, &qword_240A33740);
    swift_storeEnumTagMultiPayload();
    sub_2409727F0();
    sub_240972CCC();
    sub_240A2B6EC();
    sub_240919300(v92, &qword_27E50CA30, &qword_240A33740);
    sub_240919300(v89, &qword_27E50CA78, &qword_240A33768);
    return (*(v87 + 8))(v147, v148);
  }
}

void sub_24096DC7C(void *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AgeMigrationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  sub_2409B0528(a1, a2);
}

uint64_t sub_24096DCF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  *a2 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay);
  return result;
}

void sub_24096DDCC(uint64_t a1)
{
  v2 = sub_240A2A33C();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v30 - v9;
  v11 = sub_240A2A39C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for AgeMigrationView() + 20);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v30[2] = v17;
  v30[3] = a1;
  v30[1] = v18;
  sub_240A2BD7C();
  v19 = v32;
  swift_getKeyPath();
  v32 = v19;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v20 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v12 + 16))(v16, &v19[v20], v11);

  sub_240A2A34C();
  (*(v12 + 8))(v16, v11);
  LODWORD(v20) = swift_getEnumCaseMultiPayload();
  sub_240975090(v10, MEMORY[0x277CED950]);
  if (v20 == 2)
  {
    if (qword_27E50AF38 != -1)
    {
      swift_once();
    }

    v21 = sub_240A2B00C();
    __swift_project_value_buffer(v21, qword_27E50C9C0);
    v22 = sub_240A2AFFC();
    v23 = sub_240A2C29C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2408FE000, v22, v23, "Sheet was dismissed because of another error. Allowing existing error to continue showing.", v24, 2u);
      MEMORY[0x245CCDDB0](v24, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AF38 != -1)
    {
      swift_once();
    }

    v25 = sub_240A2B00C();
    __swift_project_value_buffer(v25, qword_27E50C9C0);
    v26 = sub_240A2AFFC();
    v27 = sub_240A2C28C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2408FE000, v26, v27, "User dragged down to dismiss. Ending flow", v28, 2u);
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    sub_240A2BD7C();
    v29 = v31;
    *v7 = xmmword_240A315B0;
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    *(v7 + 2) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v31 = v29;
    sub_240A296EC();

    v31 = v29;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    v31 = v29;
    swift_getKeyPath();
    sub_240A296FC();
  }
}

uint64_t sub_24096E29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = type metadata accessor for AgeMigrationView();
  v4 = v3 - 8;
  v94 = *(v3 - 8);
  v5 = *(v94 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v96 = v7;
  v98 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_240A2A10C();
  v88 = *(v89 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v89, v9);
  v87 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for FamilyRepairView();
  v11 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103, v12);
  v90 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_240A2A46C();
  v101 = *(v14 - 8);
  v102 = v14;
  v15 = *(v101 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v92 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v99 = &v83 - v20;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB50, &qword_240A338A0);
  v21 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105, v22);
  v107 = (&v83 - v23);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB58, &qword_240A338A8);
  v24 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93, v25);
  v97 = (&v83 - v26);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB18, &qword_240A33828);
  v27 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106, v28);
  v100 = &v83 - v29;
  v30 = sub_240A2A33C();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_240A2A39C();
  v36 = *(v35 - 8);
  v37 = v36[8];
  v39 = MEMORY[0x28223BE20](v35, v38);
  v86 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v83 - v42;
  v44 = *(v4 + 28);
  v95 = a1;
  v45 = a1 + v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v91 = v45;
  sub_240A2BD7C();
  v46 = v113;
  swift_getKeyPath();
  v113 = v46;
  v85 = sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v47 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v48 = v36[2];
  v48(v43, &v46[v47], v35);

  sub_240A2A34C();
  v49 = v36[1];
  v49(v43, v35);
  v104 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v55 = v101;
    v54 = v102;
    v56 = v99;
    (*(v101 + 32))(v99, v104, v102);
    v104 = sub_240A2C06C();
    v84 = v57;
    v83 = *(v55 + 16);
    v83(v92, v56, v54);
    sub_240A2BD7C();
    v58 = v112;
    swift_getKeyPath();
    v112 = v58;
    sub_240A296EC();

    v59 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
    swift_beginAccess();
    v60 = &v58[v59];
    v61 = v86;
    v48(v86, v60, v35);
    v62 = v87;
    sub_240A2A29C();
    v49(v61, v35);
    v63 = sub_240A2A07C();

    (*(v88 + 8))(v62, v89);
    v64 = v98;
    sub_240974F30(v95, v98, type metadata accessor for AgeMigrationView);
    v65 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v66 = swift_allocObject();
    sub_240974EC8(v64, v66 + v65, type metadata accessor for AgeMigrationView);
    KeyPath = swift_getKeyPath();
    v68 = v90;
    *v90 = KeyPath;
    *(v68 + 8) = 0;
    *(v68 + 16) = swift_getKeyPath();
    *(v68 + 24) = 0;
    v69 = v103;
    v70 = v84;
    *(v68 + 32) = v104;
    *(v68 + 40) = v70;
    v71 = v92;
    v72 = v102;
    v83((v68 + v69[7]), v92, v102);
    v109 = v63 & 1;
    sub_240A2BC4C();
    v73 = *(v101 + 8);
    v73(v71, v72);
    v74 = v111;
    v75 = v68 + v69[8];
    *v75 = v110;
    *(v75 + 8) = v74;
    v76 = (v68 + v69[9]);
    *v76 = sub_240974400;
    v76[1] = v66;
    sub_240974F30(v68, v97, type metadata accessor for FamilyRepairView);
    swift_storeEnumTagMultiPayload();
    sub_240974310();
    sub_240975108(&qword_27E50CB28, type metadata accessor for FamilyRepairView);
    v77 = v100;
    sub_240A2B6EC();
    sub_240919298(v77, v107, &qword_27E50CB18, &qword_240A33828);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB38, &qword_240A33830);
    sub_240974254();
    sub_240974364();
    sub_240A2B6EC();
    sub_240919300(v77, &qword_27E50CB18, &qword_240A33828);
    sub_240975090(v68, type metadata accessor for FamilyRepairView);
    return (v73)(v99, v72);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v79 = v98;
      sub_240974F30(v95, v98, type metadata accessor for AgeMigrationView);
      v80 = (*(v94 + 80) + 16) & ~*(v94 + 80);
      v81 = swift_allocObject();
      sub_240974EC8(v79, v81 + v80, type metadata accessor for AgeMigrationView);
      v82 = v107;
      *v107 = sub_2409743E8;
      v82[1] = v81;
      v82[2] = 0;
      v82[3] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB38, &qword_240A33830);
      sub_240974254();
      sub_240974364();
      sub_240A2B6EC();
    }

    else
    {
      sub_240A2BD7C();
      v51 = v112;
      *v97 = v112;
      swift_storeEnumTagMultiPayload();
      sub_240974310();
      sub_240975108(&qword_27E50CB28, type metadata accessor for FamilyRepairView);
      v52 = v51;
      v53 = v100;
      sub_240A2B6EC();
      sub_240919298(v53, v107, &qword_27E50CB18, &qword_240A33828);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB38, &qword_240A33830);
      sub_240974254();
      sub_240974364();
      sub_240A2B6EC();

      sub_240919300(v53, &qword_27E50CB18, &qword_240A33828);
    }

    return sub_240975090(v104, MEMORY[0x277CED950]);
  }
}

void sub_24096EE50()
{
  v0 = *(type metadata accessor for AgeMigrationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  sub_2409B1F30();
}

void sub_24096EEC0(uint64_t a1)
{
  v2 = sub_240A2A39C();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A2A33C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AgeMigrationView();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF38 != -1)
  {
    swift_once();
  }

  v17 = sub_240A2B00C();
  __swift_project_value_buffer(v17, qword_27E50C9C0);
  sub_240974F30(a1, v16, type metadata accessor for AgeMigrationView);
  v18 = sub_240A2AFFC();
  v19 = sub_240A2C2AC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v2;
    v21 = v20;
    v38 = swift_slowAlloc();
    v43 = v38;
    *v21 = 136315138;
    v41 = v12;
    v22 = *(v12 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
    sub_240A2BD7C();
    v39 = a1;
    v23 = v42;
    swift_getKeyPath();
    v42 = v23;
    sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296EC();

    v24 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
    swift_beginAccess();
    v25 = v40;
    v26 = &v23[v24];
    v27 = v37;
    (*(v40 + 16))(v6, v26, v37);

    sub_240A2A34C();
    (*(v25 + 8))(v6, v27);
    v28 = sub_240A2A32C();
    v30 = v29;
    sub_240975090(v11, MEMORY[0x277CED950]);
    sub_240975090(v16, type metadata accessor for AgeMigrationView);
    v31 = sub_240925464(v28, v30, &v43);

    *(v21 + 4) = v31;
    v12 = v41;
    _os_log_impl(&dword_2408FE000, v18, v19, "presentingOverlay should not be true in state %s", v21, 0xCu);
    v32 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x245CCDDB0](v32, -1, -1);
    MEMORY[0x245CCDDB0](v21, -1, -1);
  }

  else
  {

    sub_240975090(v16, type metadata accessor for AgeMigrationView);
  }

  v33 = *(v12 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v34 = v43;
  if (*(v43 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v36);
    *(&v37 - 2) = v34;
    *(&v37 - 8) = 0;
    v43 = v34;
    sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296DC();
  }

  else
  {
    *(v43 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) = 0;
  }
}

uint64_t sub_24096F3CC@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_240A2975C();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v68 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v67 = &v60 - v8;
  v9 = sub_240A2A39C();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v61 = &v60 - v16;
  v17 = type metadata accessor for AgeMigrationView();
  v18 = *(v17 - 8);
  v62 = v17 - 8;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v71 = v1;
  v72 = &v60 - v24;
  sub_240974F30(v1, &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
  sub_240A2C21C();
  v25 = sub_240A2C20C();
  v26 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v25;
  *(v27 + 24) = v28;
  sub_240974EC8(&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for AgeMigrationView);
  sub_240974F30(v1, &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
  v29 = sub_240A2C20C();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = MEMORY[0x277D85700];
  sub_240974EC8(&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v26, type metadata accessor for AgeMigrationView);
  sub_240A2A10C();
  sub_240A2BD2C();
  v31 = v71;
  sub_240974F30(v71, &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
  v32 = sub_240A2C20C();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  v34 = MEMORY[0x277D85700];
  *(v33 + 24) = MEMORY[0x277D85700];
  sub_240974EC8(&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v26, type metadata accessor for AgeMigrationView);
  sub_240974F30(v31, &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
  v35 = sub_240A2C20C();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;
  sub_240974EC8(&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v26, type metadata accessor for AgeMigrationView);
  sub_240A297DC();
  v37 = v61;
  sub_240A2BD2C();
  v38 = v72;
  v39 = v63;
  sub_240919298(v72, v63, &qword_27E50BD18, &qword_240A33940);
  v40 = type metadata accessor for DiscoveryView();
  sub_240919298(v37, v39 + v40[8], &qword_27E50BD20, &qword_240A31BC0);
  v41 = *(v62 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v42 = v77;
  swift_getKeyPath();
  v77 = v42;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v43 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v45 = v65;
  v44 = v66;
  v46 = &v42[v43];
  v47 = v64;
  (*(v65 + 16))(v64, v46, v66);

  v48 = v67;
  sub_240A2A2BC();
  (*(v45 + 8))(v47, v44);
  v49 = v39 + v40[5];
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_240A2BC4C();
  v50 = v76;
  *v49 = v75;
  *(v49 + 16) = v50;
  v51 = v39;
  *(v39 + v40[6]) = 1;
  *(v39 + v40[7]) = 0;
  v52 = v40[9];
  v53 = v69;
  v54 = v70;
  (*(v69 + 16))(v68, v48, v70);
  sub_240A2BC4C();
  (*(v53 + 8))(v48, v54);
  sub_240919300(v37, &qword_27E50BD20, &qword_240A31BC0);
  sub_240919300(v38, &qword_27E50BD18, &qword_240A33940);
  v55 = v40[10];
  *(v51 + v55) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v56 = v40[11];
  *(v51 + v56) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v57 = v51 + v40[12];
  *v57 = swift_getKeyPath();
  *(v57 + 8) = 0;
  v58 = v51 + v40[13];
  result = swift_getKeyPath();
  *v58 = result;
  *(v58 + 8) = 0;
  return result;
}

uint64_t sub_24096FB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v45 = a2;
  v49 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB98, &qword_240A339A8);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47, v5);
  v48 = &v39 - v6;
  v7 = type metadata accessor for AgeMigrationView();
  v8 = v7 - 8;
  v40 = *(v7 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA88, &unk_240A33770);
  v11 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46, v12);
  v43 = &v39 - v13;
  v14 = sub_240A2A10C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_240A2A39C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v8 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v42 = v3;
  sub_240A2BD7C();
  v27 = v52;
  swift_getKeyPath();
  v52 = v27;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v28 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v21 + 16))(v25, &v27[v28], v20);
  sub_240A2A29C();
  (*(v21 + 8))(v25, v20);
  LOBYTE(v28) = sub_240A2A07C();

  (*(v15 + 8))(v19, v14);
  if (v28)
  {
    swift_storeEnumTagMultiPayload();
    sub_240972B34();
    sub_240936F7C();
    return sub_240A2B6EC();
  }

  else
  {
    v50 = sub_240A2BFDC();
    v51 = v30;
    sub_24091C4F8();
    v31 = v43;
    sub_240A2B24C();
    v32 = v41;
    sub_240974F30(v42, v41, type metadata accessor for AgeMigrationView);
    v33 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v34 = swift_allocObject();
    sub_240974EC8(v32, v34 + v33, type metadata accessor for AgeMigrationView);
    v35 = (v34 + ((v9 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    v36 = v45;
    *v35 = v44;
    v35[1] = v36;
    v37 = (v31 + *(v46 + 36));
    v38 = *(sub_240A2B2CC() + 20);

    sub_240A2C22C();
    *v37 = &unk_240A339B8;
    v37[1] = v34;
    sub_240919298(v31, v48, &qword_27E50CA88, &unk_240A33770);
    swift_storeEnumTagMultiPayload();
    sub_240972B34();
    sub_240936F7C();
    sub_240A2B6EC();
    return sub_240919300(v31, &qword_27E50CA88, &unk_240A33770);
  }
}

uint64_t sub_240970040@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CBA0, &qword_240A339C0);
  v1 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29, v2);
  v4 = &v27 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v28 = *(v30 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v30, v6);
  v27 = &v27 - v7;
  v8 = sub_240A2A10C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_240A2A39C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for AgeMigrationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v21 = v32;
  swift_getKeyPath();
  v32 = v21;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v22 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v15 + 16))(v19, &v21[v22], v14);
  sub_240A2A29C();
  (*(v15 + 8))(v19, v14);
  LOBYTE(v22) = sub_240A2A07C();

  (*(v9 + 8))(v13, v8);
  if (v22)
  {
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    sub_240936F7C();
    return sub_240A2B6EC();
  }

  else
  {
    v24 = v27;
    sub_240A2B22C();
    v25 = v28;
    v26 = v30;
    (*(v28 + 16))(v4, v24, v30);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    sub_240936F7C();
    sub_240A2B6EC();
    return (*(v25 + 8))(v24, v26);
  }
}

uint64_t sub_240970494@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CBA8, &qword_240A339C8);
  v2 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40, v3);
  v41 = &v34 - v4;
  v5 = type metadata accessor for AgeMigrationView();
  v6 = v5 - 8;
  v35 = *(v5 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v36 = v9;
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  v10 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39, v11);
  v13 = &v34 - v12;
  v14 = sub_240A2A10C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_240A2A39C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v6 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v38 = v1;
  sub_240A2BD7C();
  v27 = v43;
  swift_getKeyPath();
  v43 = v27;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v28 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v21 + 16))(v25, &v27[v28], v20);
  sub_240A2A29C();
  (*(v21 + 8))(v25, v20);
  LOBYTE(v28) = sub_240A2A07C();

  (*(v15 + 8))(v19, v14);
  if (v28)
  {
    swift_storeEnumTagMultiPayload();
    sub_240972938();
    sub_240936F7C();
    return sub_240A2B6EC();
  }

  else
  {
    sub_240A2B22C();
    v30 = v37;
    sub_240974F30(v38, v37, type metadata accessor for AgeMigrationView);
    v31 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v32 = swift_allocObject();
    sub_240974EC8(v30, v32 + v31, type metadata accessor for AgeMigrationView);
    v33 = &v13[*(v39 + 36)];
    *v33 = sub_240974950;
    *(v33 + 1) = v32;
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    sub_240919298(v13, v41, &qword_27E50CA50, &unk_240A33750);
    swift_storeEnumTagMultiPayload();
    sub_240972938();
    sub_240936F7C();
    sub_240A2B6EC();
    return sub_240919300(v13, &qword_27E50CA50, &unk_240A33750);
  }
}

uint64_t sub_240970960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_240A2A10C();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240A2A39C();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CBB0, &unk_240A339D0);
  v14 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for AgeMigrationView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D720, &unk_240A337B0);
  v22 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48, v23);
  v25 = v42 - v24;
  if (*(a1 + 8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    sub_240A2B21C();
    sub_240974F30(v2, v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
    v26 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v27 = swift_allocObject();
    sub_240974EC8(v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for AgeMigrationView);
    v28 = &v25[*(v48 + 36)];
    *v28 = sub_240975150;
    *(v28 + 1) = v27;
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    sub_240919298(v25, v17, &unk_27E50D720, &unk_240A337B0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240972F80();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    sub_240A2B6EC();
    return sub_240919300(v25, &unk_27E50D720, &unk_240A337B0);
  }

  else
  {
    v42[0] = sub_240A2BFDC();
    v42[1] = sub_240A2BFDC();
    v30 = *(v18 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
    sub_240A2BD7C();
    v31 = v54;
    swift_getKeyPath();
    v54 = v31;
    sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296EC();

    v32 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
    swift_beginAccess();
    v34 = v43;
    v33 = v44;
    (*(v43 + 16))(v13, &v31[v32], v44);
    sub_240A2A29C();
    (*(v34 + 8))(v13, v33);
    sub_240A2A07C();

    (*(v45 + 8))(v8, v46);
    LOBYTE(v34) = ~sub_240A2A05C();
    v50 = 1;
    sub_240A2BD3C();
    v35 = v51;
    v36 = v52;
    v37 = v53;
    v50 = 1;
    sub_240A2BD3C();
    v38 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
    [v38 setDismissalType_];
    v39 = sub_240A2BF1C();

    [v38 setTitle_];

    v40 = sub_240A2BF1C();

    [v38 setSubtitle_];

    v41 = MEMORY[0x277D84F90];
    *v17 = v38;
    *(v17 + 1) = v41;
    *(v17 + 2) = v35;
    *(v17 + 3) = v36;
    v17[32] = v37;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240972F80();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    return sub_240A2B6EC();
  }
}

void sub_240971028()
{
  v0 = *(type metadata accessor for AgeMigrationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  sub_2409AF530();
}

uint64_t sub_240971088()
{
  v0 = sub_240A2A39C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for AgeMigrationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v7 = v11;
  swift_getKeyPath();
  v11 = v7;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v8 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v1 + 16))(v5, &v7[v8], v0);

  sub_240A2A29C();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_240971244(uint64_t a1)
{
  v2 = sub_240A2A10C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for AgeMigrationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v9 = v12;
  (*(v3 + 16))(v7, a1, v2);
  swift_getKeyPath();
  v12 = v9;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v12 = v9;
  swift_getKeyPath();
  sub_240A2970C();

  swift_beginAccess();
  sub_240A2A2AC();
  swift_endAccess();
  v12 = v9;
  swift_getKeyPath();
  sub_240A296FC();
}

uint64_t sub_24097144C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_240A2A33C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A2A39C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for AgeMigrationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v14 = v18;
  swift_getKeyPath();
  v18 = v14;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v15 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v8 + 16))(v12, &v14[v15], v7);

  sub_240A2A34C();
  (*(v8 + 8))(v12, v7);
  sub_240971674(a1);
  return sub_240975090(v6, MEMORY[0x277CED950]);
}

uint64_t sub_240971674@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2976C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_240A2A33C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240974F30(v2, v14, MEMORY[0x277CED950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        goto LABEL_14;
      }

      v16 = 5;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_12;
      }

      v16 = 2;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_240975090(v14, MEMORY[0x277CED950]);
LABEL_12:
        v16 = 3;
        return (*(v5 + 56))(a1, v16, 6, v4);
      }

      sub_240975090(v14, MEMORY[0x277CED950]);
LABEL_14:
      v16 = 4;
      return (*(v5 + 56))(a1, v16, 6, v4);
    }

    if (EnumCaseMultiPayload == 2)
    {
      v17 = *(v14 + 4);
      sub_240926FD4();
      v18 = *v14;
      v33 = *(v14 + 1);
      v34 = v18;
      v19 = swift_allocError();
      v20 = v33;
      *v21 = v34;
      *(v21 + 16) = v20;
      *(v21 + 32) = v17;
      v22 = sub_240A2952C();

      v23 = [v22 domain];
      v24 = sub_240A2BF4C();
      *&v34 = v25;

      v26 = [v22 code];
      v27 = [v22 localizedDescription];
      v28 = sub_240A2BF4C();
      v30 = v29;

      v31 = v34;
      *v9 = v24;
      v9[1] = v31;
      v9[2] = v26;
      v9[3] = v28;
      v9[4] = v30;
      (*(v5 + 104))(v9, *MEMORY[0x277CED2C8], v4);
      (*(v5 + 32))(a1, v9, v4);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  return (*(v5 + 56))(a1, v16, 6, v4);
}

uint64_t sub_240971978()
{
  v0 = sub_240A2A33C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for AgeMigrationView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v6 = v9;
  sub_240971B3C(v4);
  swift_getKeyPath();
  v9 = v6;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v9 = v6;
  swift_getKeyPath();
  sub_240A2970C();

  swift_beginAccess();
  sub_240A2A35C();
  swift_endAccess();
  v9 = v6;
  swift_getKeyPath();
  sub_240A296FC();
}

uint64_t sub_240971B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2976C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50B658, &unk_240A30CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v29[-v13];
  v15 = sub_240A2962C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v18 = sub_240A297DC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v29[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_240974F30(v2, v22, MEMORY[0x277CED338]);
  v23 = (*(v5 + 48))(v22, 6, v4);
  if (v23 > 2)
  {
    if ((v23 - 5) >= 2)
    {
      if (v23 == 3)
      {
        sub_240A2960C();
        sub_240A2A2DC();
      }

      else
      {
        v27 = sub_240A2A45C();
        (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
        sub_240A2A3FC();
      }
    }
  }

  else if (!v23)
  {
    (*(v5 + 32))(v9, v22, v4);
    sub_240975108(&qword_27E50C518, MEMORY[0x277CED2E0]);
    v24 = swift_allocError();
    (*(v5 + 16))(v25, v9, v4);
    sub_240A2A47C();
    (*(v5 + 8))(v9, v4);

    v26 = v30;
    *a1 = *&v29[8];
    *(a1 + 16) = v26;
    *(a1 + 32) = v31;
  }

  sub_240A2A33C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_240971EF0()
{
  sub_240A2C06C();
  sub_24091C4F8();
  v0 = sub_240A2B9CC();
  v2 = v1;
  v4 = v3 & 1;
  sub_240A2BA6C();
  sub_240920658(v0, v2, v4);
}

uint64_t sub_240971FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = sub_240A2A33C();
  v3[18] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  sub_240A2C21C();
  v3[20] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v3[21] = v7;
  v3[22] = v6;

  return MEMORY[0x2822009F8](sub_240972098, v7, v6);
}

uint64_t sub_240972098()
{
  v1 = *(v0 + 120);
  *(v0 + 216) = *(type metadata accessor for AgeMigrationView() + 20);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  *(v0 + 192) = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_24097216C;
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);

  return sub_2409AFBE0(v4, v3);
}

uint64_t sub_24097216C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v8 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);
    v5 = *(v2 + 176);
    v6 = sub_2409722F0;
  }

  else
  {

    v4 = *(v2 + 168);
    v5 = *(v2 + 176);
    v6 = sub_240972288;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_240972288()
{
  v1 = v0[20];

  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2409722F0()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 216);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 120);

  sub_240A2BD7C();
  v9 = *(v0 + 88);
  sub_240A2A47C();
  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  *(v6 + 32) = *(v0 + 48);
  *v6 = v10;
  *(v6 + 16) = v11;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 96) = v9;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  *(v0 + 104) = v9;
  swift_getKeyPath();
  sub_240A2970C();

  swift_beginAccess();
  sub_240A2A35C();
  swift_endAccess();
  *(v0 + 112) = v9;
  swift_getKeyPath();
  sub_240A296FC();

  v12 = *(v0 + 152);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2409724E4(uint64_t a1)
{
  v22 = sub_240A2B52C();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v22, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v21 - v10);
  v12 = sub_240A2B2AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240919298(a1, v11, &qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  else
  {
    v18 = *v11;
    sub_240A2C2BC();
    v19 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v22);
  }

  sub_240A2B29C();
  return (*(v13 + 8))(v17, v12);
}

unint64_t sub_240972764()
{
  result = qword_27E50CA20;
  if (!qword_27E50CA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA08, &qword_240A33728);
    sub_2409727F0();
    sub_240972CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA20);
  }

  return result;
}

unint64_t sub_2409727F0()
{
  result = qword_27E50CA28;
  if (!qword_27E50CA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA30, &qword_240A33740);
    sub_24097287C();
    sub_2409729F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA28);
  }

  return result;
}

unint64_t sub_24097287C()
{
  result = qword_27E50CA38;
  if (!qword_27E50CA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA40, &qword_240A33748);
    sub_240972938();
    sub_240975108(&qword_27E50CA58, type metadata accessor for DiscoveryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA38);
  }

  return result;
}

unint64_t sub_240972938()
{
  result = qword_27E50CA48;
  if (!qword_27E50CA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA50, &unk_240A33750);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA48);
  }

  return result;
}

unint64_t sub_2409729F0()
{
  result = qword_27E50CA60;
  if (!qword_27E50CA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA68, &qword_240A33760);
    sub_240972AA8();
    sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA60);
  }

  return result;
}

unint64_t sub_240972AA8()
{
  result = qword_27E50CA70;
  if (!qword_27E50CA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA78, &qword_240A33768);
    sub_240972B34();
    sub_240936F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA70);
  }

  return result;
}

unint64_t sub_240972B34()
{
  result = qword_27E50CA80;
  if (!qword_27E50CA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA88, &unk_240A33770);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
    sub_240975108(&qword_27E50F4A0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA80);
  }

  return result;
}

uint64_t sub_240972C1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240972CCC()
{
  result = qword_27E50CAA0;
  if (!qword_27E50CAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CAA8, &qword_240A33788);
    sub_240972D84();
    sub_240972C1C(&qword_27E50CAD0, &qword_27E50CAD8, &qword_240A337A0, sub_240972EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CAA0);
  }

  return result;
}

unint64_t sub_240972D84()
{
  result = qword_27E50CAB0;
  if (!qword_27E50CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CAB8, &qword_240A33790);
    sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
    sub_240972E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CAB0);
  }

  return result;
}

unint64_t sub_240972E3C()
{
  result = qword_27E50CAC0;
  if (!qword_27E50CAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CAC8, &qword_240A33798);
    sub_240972938();
    sub_240936F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CAC0);
  }

  return result;
}

unint64_t sub_240972EC8()
{
  result = qword_27E50CAE0;
  if (!qword_27E50CAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CAE8, &qword_240A337A8);
    sub_240972F80();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CAE0);
  }

  return result;
}

unint64_t sub_240972F80()
{
  result = qword_27E50CAF0;
  if (!qword_27E50CAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D720, &unk_240A337B0);
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CAF0);
  }

  return result;
}

id sub_240973038(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v43 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCD0, &qword_240A33AF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v41 = &v41 - v17;
  if (qword_27E50AF38 != -1)
  {
    swift_once();
  }

  v18 = sub_240A2B00C();
  __swift_project_value_buffer(v18, qword_27E50C9C0);
  v19 = sub_240A2AFFC();
  v20 = sub_240A2C28C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2408FE000, v19, v20, "Making MigrationRemoteUIView. If this is called more than once, you have a problem!", v21, 2u);
    MEMORY[0x245CCDDB0](v21, -1, -1);
  }

  v22 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  swift_getKeyPath();
  v46 = a2;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v23 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__serverUIContext;
  swift_beginAccess();
  sub_240919298(&a2[v23], v11, &unk_27E50DCD0, &qword_240A33AF0);
  if ((*(v44 + 48))(v11, 1, v12) == 1)
  {
    sub_240919300(v11, &unk_27E50DCD0, &qword_240A33AF0);
    v24 = sub_240A2AFFC();
    v25 = sub_240A2C2AC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2408FE000, v24, v25, "Age migration serverUIContext is not available", v26, 2u);
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }
  }

  else
  {
    v27 = v11;
    v28 = v41;
    sub_240974EC8(v27, v41, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
    swift_getKeyPath();
    v45 = a2;
    sub_240A296EC();

    sub_2409AE678([objc_allocWithZone(MEMORY[0x277CECA58]) initWithAccountManager:*&a2[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager] presenter:v22]);
    swift_getKeyPath();
    v45 = a2;
    sub_240A296EC();

    v29 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter;
    v30 = *&a2[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter];
    if (v30)
    {
      [v30 configureWithSessionConfiguration_];
    }

    swift_getKeyPath();
    v45 = a2;
    sub_240A296EC();

    v31 = *&a2[v29];
    if (v31)
    {
      [v31 setDelegate_];
    }

    v32 = sub_240A2C24C();
    v33 = v43;
    (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
    v34 = v42;
    sub_240974F30(v28, v42, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
    sub_240A2C21C();
    v35 = a2;
    v36 = sub_240A2C20C();
    v37 = (*(v44 + 80) + 40) & ~*(v44 + 80);
    v38 = swift_allocObject();
    v39 = MEMORY[0x277D85700];
    v38[2] = v36;
    v38[3] = v39;
    v38[4] = v35;
    sub_240974EC8(v34, v38 + v37, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
    sub_2409F6830(0, 0, v33, &unk_240A33B78, v38);

    sub_240975090(v28, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
  }

  return v22;
}

uint64_t sub_240973638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = *(*(type metadata accessor for AgeMigrationViewModel.ServerUIContext(0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  sub_240A2C21C();
  v5[23] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v5[24] = v8;
  v5[25] = v7;

  return MEMORY[0x2822009F8](sub_2409736FC, v8, v7);
}

uint64_t sub_2409736FC()
{
  v35 = v0;
  if (qword_27E50AF38 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50C9C0);
  sub_240974F30(v1, v2, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
  v5 = v3;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  p_opt_class_meths = &OBJC_PROTOCOL___AAUISignInViewControllerDelegate.opt_class_meths;
  v11 = &OBJC_PROTOCOL___AAUISignInViewControllerDelegate.opt_class_meths;
  if (v8)
  {
    v12 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v13 = 138412546;
    swift_getKeyPath();
    v0[19] = v12;
    sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
    sub_240A296EC();

    v16 = *(v12 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter);
    *(v13 + 4) = v16;
    *v14 = v16;
    *(v13 + 12) = 2080;
    sub_240A2946C();
    sub_240975108(&qword_27E50CBF0, MEMORY[0x277CC8678]);
    v17 = v16;
    v18 = sub_240A2C62C();
    v20 = v19;
    sub_240975090(v9, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
    v21 = sub_240925464(v18, v20, &v34);

    *(v13 + 14) = v21;
    p_opt_class_meths = (&OBJC_PROTOCOL___AAUISignInViewControllerDelegate + 48);
    _os_log_impl(&dword_2408FE000, v6, v7, "Using remoteUIPresenter %@ to load age migration request %s", v13, 0x16u);
    sub_240919300(v14, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v22 = v15;
    v11 = (&OBJC_PROTOCOL___AAUISignInViewControllerDelegate + 48);
    MEMORY[0x245CCDDB0](v22, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  else
  {

    sub_240975090(v9, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
  }

  v23 = v0[20];
  swift_getKeyPath();
  v24 = p_opt_class_meths[398];
  v0[18] = v23;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v25 = *(v11[393] + v23);
  v0[26] = v25;
  if (v25)
  {
    v26 = v0[21];
    v27 = v25;
    v28 = sub_240A2943C();
    v0[27] = v28;
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_240973BCC;
    v29 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240A13784;
    v0[13] = &block_descriptor_9;
    v0[14] = v29;
    [v27 loadRequest:v28 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v30 = v0[23];

    v31 = v0[22];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_240973BCC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);
  if (v3)
  {
    v6 = sub_240973D74;
  }

  else
  {
    v6 = sub_240973CFC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_240973CFC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[23];

  v4 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_240973D74()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];

  swift_willThrow();

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t sub_240973E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240974E74();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240973E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240974E74();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240973ED4()
{
  sub_240974E74();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_240973EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel);
  sub_240A296EC();

  v4 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v5 = sub_240A2A39C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_240973FF4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_240A2A39C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  v10 = *a2;
  return sub_2409AEEC4(v8);
}

void sub_2409740C0(void *a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for AgeMigrationView() - 8) + 80);

  sub_24096DC7C(a1, a2);
}

uint64_t sub_240974158@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AgeMigrationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24096E29C(v4, a1);
}