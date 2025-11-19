unint64_t sub_2409741C8()
{
  result = qword_27E50CB08;
  if (!qword_27E50CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB00, &qword_240A33820);
    sub_240974254();
    sub_240974364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CB08);
  }

  return result;
}

unint64_t sub_240974254()
{
  result = qword_27E50CB10;
  if (!qword_27E50CB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB18, &qword_240A33828);
    sub_240974310();
    sub_240975108(&qword_27E50CB28, type metadata accessor for FamilyRepairView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CB10);
  }

  return result;
}

unint64_t sub_240974310()
{
  result = qword_27E50CB20;
  if (!qword_27E50CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CB20);
  }

  return result;
}

unint64_t sub_240974364()
{
  result = qword_27E50CB30;
  if (!qword_27E50CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB38, &qword_240A33830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CB30);
  }

  return result;
}

void sub_240974400()
{
  v0 = *(*(type metadata accessor for AgeMigrationView() - 8) + 80);

  sub_24096EE50();
}

uint64_t sub_2409744FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AgeMigrationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2409745B8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AgeMigrationView() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for AgeMigrationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_240A2B2AC();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v1 + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  (*(*(v10 - 8) + 8))(&v6[v9], v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409747BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AgeMigrationView() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_240974844()
{
  v2 = *(type metadata accessor for AgeMigrationView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_240915E50;

  return sub_240971FCC(v0 + v3, v5, v6);
}

unint64_t sub_240974954()
{
  result = qword_27E50CBB8;
  if (!qword_27E50CBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240975108(&qword_27E50CBC0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CBB8);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for AgeMigrationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_240A2B2AC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  (*(*(v9 - 8) + 8))(&v5[v8], v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_240974BD0()
{
  result = qword_27E50CBC8;
  if (!qword_27E50CBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB48, &unk_240A33890);
    sub_240974C88();
    sub_24091CE28(&qword_27E50BE60, &qword_27E50BE68, &qword_240A31CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CBC8);
  }

  return result;
}

unint64_t sub_240974C88()
{
  result = qword_27E50CBD0;
  if (!qword_27E50CBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB40, &qword_240A33860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA18, &qword_240A33738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB00, &qword_240A33820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA10, &qword_240A33730);
    sub_240A2A39C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA08, &qword_240A33728);
    sub_240972764();
    swift_getOpaqueTypeConformance2();
    sub_240975108(&unk_27E50DD50, MEMORY[0x277CED960]);
    swift_getOpaqueTypeConformance2();
    sub_2409741C8();
    swift_getOpaqueTypeConformance2();
    sub_24091CE28(&qword_27E50CBD8, &qword_27E50CBE0, &qword_240A33A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CBD0);
  }

  return result;
}

unint64_t sub_240974E74()
{
  result = qword_27E50CBE8;
  if (!qword_27E50CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CBE8);
  }

  return result;
}

uint64_t sub_240974EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_240974F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240974F98(uint64_t a1)
{
  v4 = *(type metadata accessor for AgeMigrationViewModel.ServerUIContext(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240915E50;

  return sub_240973638(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_240975090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_240975108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_240975154()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50CBF8);
  __swift_project_value_buffer(v0, qword_27E50CBF8);
  return sub_240A2AE9C();
}

uint64_t sub_2409751A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16[-v11];
  v13 = (v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride);
  *v13 = 0;
  v13[1] = 0;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_guardianAuthResponse) = a1;
  sub_240919A14(a2, v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings) = a3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v16[15] = 0;
  sub_240A2B0DC();
  __swift_destroy_boxed_opaque_existential_0(a2);
  (*(v8 + 32))(v3 + v14, v12, v7);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v3;
}

uint64_t sub_24097530C()
{
  v1[5] = v0;
  sub_240A2C21C();
  v1[6] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2409753A4, v3, v2);
}

uint64_t sub_2409753A4()
{
  v1 = v0[5];
  v2 = [objc_allocWithZone(sub_240A2983C()) init];
  v0[9] = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v4 = v0[5];
    v5 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v7 = (v4 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption);
    v8 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption + 24);
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_0(v7, v8);
    v10 = AISFamilyPickerSelectionProtocol.account.getter(v8, v9);
    v0[11] = v10;
    v11 = *(v5 + 16);
    v12 = v2;
    v18 = (v11 + *v11);
    v13 = v11[1];
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_2409755F0;

    return v18(v10, v12, ObjectType, v5);
  }

  else
  {
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_24097579C;
    v17 = v0[5];

    return sub_240912D7C();
  }
}

uint64_t sub_2409755F0()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *v0;

  swift_unknownObjectRelease();

  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  *v7 = v6;
  v7[1] = sub_24097579C;
  v8 = *(v1 + 40);

  return sub_240912D7C();
}

uint64_t sub_24097579C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2409758BC, v4, v3);
}

uint64_t sub_2409758BC()
{
  v1 = v0[9];
  v2 = v0[6];

  sub_240A2982C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24097592C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDAE8];
  v3 = sub_240A2A4AC();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_240975A04()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = sub_240A2B00C();
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v110 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v110 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v22 = &v110 - v21;
  v23 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride);
  if (v23)
  {
    v24 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride + 8);
    v25 = qword_27E50AF40;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v5, qword_27E50CBF8);

    v27 = sub_240A2AFFC();
    v28 = sub_240A2C29C();
    sub_24090C1A0(v23);
    v29 = os_log_type_enabled(v27, v28);
    v112 = v4;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v111 = v26;
      v31 = v30;
      v32 = swift_slowAlloc();
      v116 = v32;
      *v31 = 136315394;
      v33 = sub_240A2C7BC();
      v113 = v2;
      v35 = sub_240925464(v33, v34, &v116);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = swift_allocObject();
      *(v36 + 16) = v23;
      *(v36 + 24) = v24;
      v114 = sub_2409769E0;
      v115 = v36;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC38, qword_240A33CE8);
      v37 = sub_240A2BF9C();
      v39 = sub_240925464(v37, v38, &v116);

      *(v31 + 14) = v39;
      v2 = v113;
      _os_log_impl(&dword_2408FE000, v27, v28, "%s Calling next step override: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CCDDB0](v32, -1, -1);
      MEMORY[0x245CCDDB0](v31, -1, -1);
    }

    v40 = v23(v3);
    if (v2)
    {
      return sub_24090C1A0(v23);
    }

    else
    {
      v58 = v41;
      v59 = v40;
      swift_unknownObjectRetain();
      v60 = sub_240A2AFFC();
      v61 = sub_240A2C29C();
      v62 = v59;
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v60, v61))
      {
        v63 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v116 = v111;
        *v63 = 136315394;
        v64 = sub_240A2C7BC();
        v113 = 0;
        v66 = sub_240925464(v64, v65, &v116);

        *(v63 + 4) = v66;
        *(v63 + 12) = 2080;
        v114 = v62;
        v115 = v58;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
        v67 = sub_240A2BF9C();
        v69 = sub_240925464(v67, v68, &v116);

        *(v63 + 14) = v69;
        _os_log_impl(&dword_2408FE000, v60, v61, "%s Returning next step from override: %s", v63, 0x16u);
        v70 = v111;
        swift_arrayDestroy();
        MEMORY[0x245CCDDB0](v70, -1, -1);
        MEMORY[0x245CCDDB0](v63, -1, -1);
        sub_24090C1A0(v23);

        return v62;
      }

      else
      {
        sub_24090C1A0(v23);

        return v59;
      }
    }
  }

  else
  {
    v111 = v20;
    v112 = v5;
    v113 = v1;
    v43 = (v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption);
    v45 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption + 24);
    v44 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption + 32);
    __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption), v45);
    if ((*(v44 + 8))(v45, v44))
    {
      sub_240A2AE9C();
      v46 = sub_240A2AFFC();
      v47 = sub_240A2C2CC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_2408FE000, v46, v47, "AISFlowStepPasscodeSetup.nextStep with newChild or newTeen", v48, 2u);
        MEMORY[0x245CCDDB0](v48, -1, -1);
      }

      (*(v111 + 8))(v22, v112);
      v49 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_guardianAuthResponse);
      v50 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings);
      v51 = objc_allocWithZone(sub_240A2983C());
      v52 = v49;

      v53 = [v51 init];
      v54 = type metadata accessor for AISFlowStepChildCreate();
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      v57 = swift_allocObject();
      return sub_240976868(v52, v50, v53, v57);
    }

    else
    {
      v71 = v43[3];
      v72 = v43[4];
      __swift_project_boxed_opaque_existential_0(v43, v71);
      v73 = (*(v72 + 16))(v71, v72);
      if (v73)
      {
        v74 = v73;
        v75 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_guardianAuthResponse);
        sub_240A2AC0C();
        if (v76)
        {

          sub_240A2AE9C();
          v77 = v74;
          v78 = sub_240A2AFFC();
          v79 = sub_240A2C2CC();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            *v80 = 138412290;
            *(v80 + 4) = v77;
            *v81 = v74;
            v82 = v77;
            _os_log_impl(&dword_2408FE000, v78, v79, "AISFlowStepPasscodeSetup.nextStep with member %@. Starting silent auth step.", v80, 0xCu);
            sub_240915C68(v81);
            MEMORY[0x245CCDDB0](v81, -1, -1);
            MEMORY[0x245CCDDB0](v80, -1, -1);
          }

          (*(v111 + 8))(v14, v112);
          v83 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings);
          v84 = objc_allocWithZone(sub_240A2983C());
          v85 = v75;

          v86 = [v84 init];
          v87 = type metadata accessor for AISFlowStepSilentChildSignIn();
          v88 = *(v87 + 48);
          v89 = *(v87 + 52);
          v90 = swift_allocObject();
          *(v90 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_silentAuthResponse) = 0;
          *(v90 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_guardianAuthResponse) = v85;
          *(v90 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_selectedMember) = v77;
          *(v90 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings) = v83;
          *(v90 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask) = v86;
          *(v90 + 24) = 0;
          swift_unknownObjectWeakInit();
          LOBYTE(v114) = 0;
          sub_240A2B0DC();
          result = v90;
          *(v90 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
        }

        else
        {
          sub_240A2AE9C();
          v99 = v74;
          v100 = sub_240A2AFFC();
          v101 = sub_240A2C2CC();

          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            *v102 = 138412290;
            *(v102 + 4) = v99;
            *v103 = v74;
            v104 = v99;
            _os_log_impl(&dword_2408FE000, v100, v101, "AISFlowStepPasscodeSetup.nextStep with member %@. Starting interative auth step.", v102, 0xCu);
            sub_240915C68(v103);
            MEMORY[0x245CCDDB0](v103, -1, -1);
            MEMORY[0x245CCDDB0](v102, -1, -1);
          }

          (*(v111 + 8))(v18, v112);
          v105 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings);
          v106 = type metadata accessor for AISFlowStepChildSignIn();
          v107 = *(v106 + 48);
          v108 = *(v106 + 52);
          swift_allocObject();
          v109 = v75;

          return sub_240911894(v74, v109, v105);
        }
      }

      else
      {
        sub_240A2AE9C();
        v91 = sub_240A2AFFC();
        v92 = sub_240A2C2AC();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&dword_2408FE000, v91, v92, "AISFlowStepPasscodeSetup.nextStep invalid selectedFamilyOption", v93, 2u);
          MEMORY[0x245CCDDB0](v93, -1, -1);
        }

        (*(v111 + 8))(v10, v112);
        sub_2409767D8();
        v94 = swift_allocError();
        v95 = type metadata accessor for AISFlowStepChildSetupError();
        v96 = *(v95 + 48);
        v97 = *(v95 + 52);
        v98 = swift_allocObject();
        *(v98 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error) = v94;
        *(v98 + 24) = 0;
        swift_unknownObjectWeakInit();
        LOBYTE(v114) = 0;
        sub_240A2B0DC();
        result = v98;
        *(v98 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_240976490()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption));
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings);

  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride + 8);

  return sub_24090C1A0(v2);
}

uint64_t sub_2409764F4()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_guardianAuthResponse);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption));
  v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings);

  v6 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride + 8);
  sub_24090C1A0(*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride));

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t AISFlowStepPasscodeSetupError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

unint64_t sub_2409766B8()
{
  result = qword_27E50CC10;
  if (!qword_27E50CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CC10);
  }

  return result;
}

uint64_t type metadata accessor for AISFlowStepPasscodeSetup()
{
  result = qword_27E50CC18;
  if (!qword_27E50CC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2409767D8()
{
  result = qword_27E50CC28;
  if (!qword_27E50CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CC28);
  }

  return result;
}

uint64_t sub_24097682C(void (*a1)(void))
{
  a1();

  return sub_240A2C7BC();
}

uint64_t sub_240976868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16[-v12];
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_childAuthResults) = 0;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error) = 0;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_authResponse) = a1;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings) = a2;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask) = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v16[15] = 0;
  sub_240A2B0DC();
  (*(v9 + 32))(a4 + v14, v13, v8);
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return a4;
}

uint64_t sub_2409769E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v8;
  }

  return result;
}

void sub_240976A18(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v10[4] = sub_240976FE8;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_240976B34;
    v10[3] = &block_descriptor_10;
    v6 = _Block_copy(v10);
    v7 = v4;
    v8 = v1;
    v9 = a1;

    [v7 authenticateWithContext:v9 completion:v6];

    _Block_release(v6);
  }
}

uint64_t sub_240976B34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v4 = sub_240A2BEBC();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_240976BE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t type metadata accessor for SignInOptionAuthenticationController()
{
  result = qword_27E50CC90;
  if (!qword_27E50CC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240976DB8()
{
  sub_240948458();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_240976E88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v21 - v11;
  v13 = sub_240A2C24C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_240A2C21C();
  v14 = a2;

  v15 = a4;
  v16 = a3;
  v17 = sub_240A2C20C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a2;
  v18[5] = v16;
  v18[6] = a1;
  v18[7] = v15;
  sub_2409230D4(0, 0, v12, &unk_240A33DB0, v18);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240977008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_240A2B00C();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  sub_240A2C21C();
  v7[18] = sub_240A2C20C();
  v12 = sub_240A2C1BC();
  v7[19] = v12;
  v7[20] = v11;

  return MEMORY[0x2822009F8](sub_24097716C, v12, v11);
}

uint64_t sub_24097716C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = v1;

    sub_240A2AE9C();
    v5 = v1;
    v6 = sub_240A2AFFC();
    v7 = sub_240A2C2AC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_2408FE000, v6, v7, "Failed to authenticate with error: %@", v8, 0xCu);
      sub_240915C68(v9);
      MEMORY[0x245CCDDB0](v9, -1, -1);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }

    v12 = *(v0 + 136);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    v15 = *(v0 + 16);

    v16 = *(v14 + 8);
    v16(v12, v13);
    v17 = v1;
    if (sub_240978628(v15))
    {
    }

    else if (sub_24097887C(*(v0 + 16)))
    {
      v40 = *(v0 + 128);

      sub_240A2AE9C();
      v41 = sub_240A2AFFC();
      v42 = sub_240A2C28C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2408FE000, v41, v42, "Received Bluetooth error from Authkit", v43, 2u);
        MEMORY[0x245CCDDB0](v43, -1, -1);
      }

      v44 = *(v0 + 128);
      v45 = *(v0 + 48);
      v46 = *(v0 + 24);

      v16(v44, v45);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 184) = 1;
      v47 = v46;
      sub_240A2B12C();
    }

    else
    {
      v48 = sub_2409789B8(*(v0 + 16));

      if ((v48 & 1) == 0)
      {
        goto LABEL_32;
      }

      v49 = *(v0 + 120);
      sub_240A2AE9C();
      v50 = sub_240A2AFFC();
      v51 = sub_240A2C28C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_2408FE000, v50, v51, "Received Secondary error from Authkit", v52, 2u);
        MEMORY[0x245CCDDB0](v52, -1, -1);
      }

      v53 = *(v0 + 120);
      v54 = *(v0 + 48);
      v55 = *(v0 + 24);

      v16(v53, v54);
      v56 = *(v55 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback);
      if (v56)
      {
        v57 = *(v55 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback + 8);
        v58 = *(v0 + 112);

        sub_240A2AE9C();
        v59 = sub_240A2AFFC();
        v60 = sub_240A2C28C();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_2408FE000, v59, v60, "We have a valid setup fallback completion, calling it", v61, 2u);
          MEMORY[0x245CCDDB0](v61, -1, -1);
        }

        v62 = *(v0 + 112);
        v63 = *(v0 + 48);

        v64 = (v16)(v62, v63);
        v56(v64);
        sub_24090C1A0(v56);
      }

      else
      {
LABEL_32:
        v93 = *(v0 + 16);
        v94 = *(*(v0 + 24) + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings);
        v96 = *(v94 + 24);
        v95 = *(v94 + 32);
        v97 = v1;

        v96(v93, 1);
      }
    }

LABEL_34:
    v99 = *(v0 + 128);
    v98 = *(v0 + 136);
    v101 = *(v0 + 112);
    v100 = *(v0 + 120);
    v103 = *(v0 + 96);
    v102 = *(v0 + 104);
    v105 = *(v0 + 80);
    v104 = *(v0 + 88);
    v107 = *(v0 + 64);
    v106 = *(v0 + 72);

    v108 = *(v0 + 8);

    return v108();
  }

  v18 = *(v0 + 32);
  if (!v18)
  {
    v65 = *(v0 + 144);
    v66 = *(v0 + 104);

    sub_240A2AE9C();
    v67 = sub_240A2AFFC();
    v68 = sub_240A2C2AC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2408FE000, v67, v68, "Missing auth results for the auth.", v69, 2u);
      MEMORY[0x245CCDDB0](v69, -1, -1);
    }

    v70 = *(v0 + 104);
    v71 = *(v0 + 48);
    v72 = *(v0 + 56);
    v73 = *(v0 + 24);

    (*(v72 + 8))(v70, v71);
    v74 = *(v73 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings);
    v76 = *(v74 + 24);
    v75 = *(v74 + 32);
    sub_240977EF8();
    v77 = swift_allocError();
    *v78 = 1;

    v76(v77, 1);

    goto LABEL_34;
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 32);

  sub_240A2AE9C();
  v21 = sub_240A2AFFC();
  v22 = sub_240A2C28C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_2408FE000, v21, v22, "Authentication was successful", v23, 2u);
    MEMORY[0x245CCDDB0](v23, -1, -1);
  }

  v24 = *(v0 + 96);
  v25 = *(v0 + 48);
  v26 = *(v0 + 56);
  v27 = *(v0 + 24);

  v28 = *(v26 + 8);
  *(v0 + 168) = v28;
  v28(v24, v25);
  if (*(v27 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled) != 1)
  {
    v79 = *(v0 + 144);
    v80 = *(v0 + 64);

    sub_240A2AE9C();
    v81 = sub_240A2AFFC();
    v82 = sub_240A2C28C();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_2408FE000, v81, v82, "Skipping AIDA sign-in. SignIn completed successfully.", v83, 2u);
      MEMORY[0x245CCDDB0](v83, -1, -1);
    }

    v85 = *(v0 + 56);
    v84 = *(v0 + 64);
    v86 = *(v0 + 48);
    v87 = *(v0 + 24);

    v28(v84, v86);
    v88 = objc_allocWithZone(sub_240A2AA9C());
    v89 = sub_240A2AA7C();
    v90 = *(v87 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings);
    v92 = *(v90 + 24);
    v91 = *(v90 + 32);

    v92(v89, 0);

    goto LABEL_34;
  }

  v29 = *(v0 + 88);
  sub_240A2AE9C();
  v30 = sub_240A2AFFC();
  v31 = sub_240A2C28C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2408FE000, v30, v31, "AIDA sign-in is required.", v32, 2u);
    MEMORY[0x245CCDDB0](v32, -1, -1);
  }

  v33 = *(v0 + 88);
  v34 = *(v0 + 48);
  v35 = *(v0 + 56);

  v28(v33, v34);
  v36 = swift_task_alloc();
  *(v0 + 176) = v36;
  *v36 = v0;
  v36[1] = sub_240977A14;
  v37 = *(v0 + 40);
  v38 = *(v0 + 24);

  return sub_240977F4C(v37, v18);
}

uint64_t sub_240977A14(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 185) = a1;

  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return MEMORY[0x2822009F8](sub_240977B3C, v5, v4);
}

uint64_t sub_240977B3C()
{
  v1 = *(v0 + 185);
  v2 = *(v0 + 144);

  if (v1 == 1)
  {
    v3 = *(v0 + 80);
    sub_240A2AE9C();
    v4 = sub_240A2AFFC();
    v5 = sub_240A2C28C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2408FE000, v4, v5, "AIDA sign-in completed successfully.", v6, 2u);
      MEMORY[0x245CCDDB0](v6, -1, -1);
    }

    v7 = *(v0 + 168);
    v8 = *(v0 + 80);
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);

    v7(v8, v9);
    v13 = objc_allocWithZone(sub_240A2AA9C());
    v14 = sub_240A2AA7C();
    v15 = *(v12 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings);
    v17 = *(v15 + 24);
    v16 = *(v15 + 32);

    v17(v14, 0);
  }

  else
  {
    v18 = *(v0 + 72);
    v19 = *(v0 + 32);

    sub_240A2AE9C();
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C2AC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v20, v21, "Failed AIDA sign-in for the auth.", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v23 = *(v0 + 168);
    v24 = *(v0 + 72);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    v27 = *(v0 + 24);

    v23(v24, v25);
    v28 = *(v27 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings);
    v30 = *(v28 + 24);
    v29 = *(v28 + 32);
    sub_240977EF8();
    v31 = swift_allocError();
    *v32 = 4;

    v30(v31, 1);
  }

  v34 = *(v0 + 128);
  v33 = *(v0 + 136);
  v36 = *(v0 + 112);
  v35 = *(v0 + 120);
  v38 = *(v0 + 96);
  v37 = *(v0 + 104);
  v40 = *(v0 + 80);
  v39 = *(v0 + 88);
  v42 = *(v0 + 64);
  v41 = *(v0 + 72);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_240977E24(uint64_t a1)
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
  v10[1] = sub_240915E50;

  return sub_240977008(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_240977EF8()
{
  result = qword_27E50D530;
  if (!qword_27E50D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D530);
  }

  return result;
}

uint64_t sub_240977F4C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_240A2B00C();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_240A2C21C();
  v3[11] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v3[12] = v8;
  v3[13] = v7;

  return MEMORY[0x2822009F8](sub_240978050, v8, v7);
}

uint64_t sub_240978050()
{
  receiver = v0[5].receiver;
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "SignInOptionAuthenticationController: Begin AIDA sign-in.", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[5].receiver;
  super_class = v0[3].super_class;
  v7 = v0[4].receiver;
  v8 = v0[2].receiver;

  v9 = v7[1];
  v9(v5, super_class);
  v10 = [v8 presentingViewController];
  v0[7].receiver = v10;
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = v0[3].receiver;
      v15 = *&v14[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaOwnersManager];
      v16 = type metadata accessor for AIDASignInViewController();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR___AISAIDASignInViewController_cdpUIController] = 0;
      *&v17[OBJC_IVAR___AISAIDASignInViewController_navController] = v13;
      *&v17[OBJC_IVAR___AISAIDASignInViewController_aidaOwnersManager] = v15;
      v17[OBJC_IVAR___AISAIDASignInViewController_isTeenFlow] = 0;
      v0[1].receiver = v17;
      v0[1].super_class = v16;
      v18 = v11;
      v19 = v15;
      v20 = objc_msgSendSuper2(v0 + 1, sel_init);
      v0[7].super_class = v20;
      v21 = *&v14[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController];
      *&v14[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController] = v20;
      v20;

      v22 = swift_task_alloc();
      v0[8].receiver = v22;
      *v22 = v0;
      v22[1] = sub_240978388;
      v23 = v0[2].super_class;

      return sub_240A1F058(v23);
    }

    v26 = v0[5].super_class;
  }

  else
  {
    v25 = v0[5].super_class;
  }

  v27 = v0[4].super_class;
  sub_240A2AE9C();
  v28 = sub_240A2AFFC();
  v29 = sub_240A2C2AC();
  v30 = os_log_type_enabled(v28, v29);
  v32 = v0[4].receiver;
  v31 = v0[4].super_class;
  v33 = v0[3].super_class;
  if (v30)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2408FE000, v28, v29, "AIDA sign-in missing navController.", v34, 2u);
    MEMORY[0x245CCDDB0](v34, -1, -1);
  }

  v9(v31, v33);
  v36 = v0[4].super_class;
  v35 = v0[5].receiver;

  v37 = v0->super_class;

  return v37(0);
}

uint64_t sub_240978388(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = a1;

  v4 = *(v2 + 104);
  v5 = *(v2 + 96);

  return MEMORY[0x2822009F8](sub_2409784B0, v5, v4);
}

uint64_t sub_2409784B0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);

  v4 = *(v0 + 136);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_240978538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v5;
  return result;
}

uint64_t sub_2409785B8(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_240A2B12C();
}

uint64_t sub_240978628(uint64_t a1)
{
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](a1, v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    v22[1] = result;
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    sub_240978C0C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v10 = v22[0];
    v11 = [v22[0] domain];
    v12 = sub_240A2BF4C();
    v14 = v13;

    v15 = *MEMORY[0x277CEFF58];
    if (v12 == sub_240A2BF4C() && v14 == v16)
    {
    }

    else
    {
      v18 = sub_240A2C66C();

      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([v10 code] != -13006)
    {
LABEL_14:

      return 0;
    }

    sub_240A2AE9C();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C2CC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "Proximity auth invalidated", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return 1;
  }

  return result;
}

BOOL sub_24097887C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  sub_240978C0C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = [v12 domain];
  v3 = sub_240A2BF4C();
  v5 = v4;

  v6 = *MEMORY[0x277CEFF58];
  if (v3 == sub_240A2BF4C() && v5 == v7)
  {
  }

  else
  {
    v9 = sub_240A2C66C();

    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  v10 = [v12 code];

  return v10 == -13010;
}

uint64_t sub_2409789B8(uint64_t a1)
{
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](a1, v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    v22[1] = result;
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    sub_240978C0C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v10 = v22[0];
    v11 = [v22[0] domain];
    v12 = sub_240A2BF4C();
    v14 = v13;

    v15 = *MEMORY[0x277CEFF58];
    if (v12 == sub_240A2BF4C() && v14 == v16)
    {
    }

    else
    {
      v18 = sub_240A2C66C();

      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([v10 code] != -13009)
    {
LABEL_14:

      return 0;
    }

    sub_240A2AE9C();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C2CC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "Secondary action error", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return 1;
  }

  return result;
}

unint64_t sub_240978C0C()
{
  result = qword_27E50CCB0;
  if (!qword_27E50CCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50CCB0);
  }

  return result;
}

uint64_t sub_240978C58(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AISAppleIDAuthContextProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_presentingViewController] = a2;
  v15.receiver = v5;
  v15.super_class = v4;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v15, sel_init);
  v8 = *(a1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_selectedMember);
  v9 = v8;
  v10 = v7;

  v13 = sub_240919754(v10, a1, v8);
  type metadata accessor for AISSignInViewModel();
  v11 = v13;
  sub_240A2BC4C();

  return v14;
}

uint64_t sub_240978D84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t sub_240978DF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v5;
  return result;
}

uint64_t sub_240978E78(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_240A2B12C();
}

uint64_t sub_240978EF0(uint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v52 = a2;
  v47 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CD00, &qword_240A33F68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v46 - v9;
  v11 = sub_240A2C31C();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CD08, &qword_240A33F70);
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CCF8, &qword_240A33F60);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v46 - v25;
  v27 = OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator__image;
  v54[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CCF0, &qword_240A33ED8);
  sub_240A2B0DC();
  (*(v22 + 32))(v4 + v27, v26, v21);
  v28 = OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_context;
  *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_context) = 0;
  v29 = OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_publisher;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CD10, &qword_240A33F78);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(v4 + v29) = sub_240A2B0CC();
  v33 = (v4 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_cancellationToken);
  *v33 = 0u;
  v33[1] = 0u;
  v34 = MTLCreateSystemDefaultDevice();
  if (v34)
  {
    v35 = [objc_opt_self() contextWithMTLDevice_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2409264A4(MEMORY[0x277D84F90]);
    v36 = objc_allocWithZone(MEMORY[0x277CBF740]);
    type metadata accessor for CIContextOption(0);
    sub_240979B54(&qword_27E50B310, type metadata accessor for CIContextOption);
    v37 = sub_240A2BE9C();

    v35 = [v36 initWithOptions_];
  }

  v38 = *(v4 + v28);
  *(v4 + v28) = v35;

  v39 = (v4 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_scale);
  *v39 = a3;
  v39[1] = a3;
  v54[0] = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_publisher);

  sub_240A2C30C();
  sub_240979B08();
  v40 = sub_240A2C32C();
  v53 = v40;
  v41 = sub_240A2C2FC();
  (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
  sub_24091CE28(&qword_27E50CD18, &qword_27E50CD10, &qword_240A33F78);
  sub_240979B54(&qword_27E50CD20, sub_240979B08);
  sub_240A2B14C();
  sub_240919300(v10, &qword_27E50CD00, &qword_240A33F68);

  (*(v48 + 8))(v15, v49);

  swift_allocObject();
  swift_weakInit();
  sub_24091CE28(&qword_27E50CD28, &qword_27E50CD08, &qword_240A33F70);
  v42 = v51;
  v43 = sub_240A2B15C();

  (*(v50 + 8))(v20, v42);
  v54[3] = sub_240A2B09C();
  v54[0] = v43;
  v44 = OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_cancellationToken;
  swift_beginAccess();
  sub_240979BA4(v54, v4 + v44);
  swift_endAccess();
  if (v52)
  {
    sub_240979570(v47, v52);
  }

  return v4;
}

uint64_t sub_240979500(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_240979570(v1, v2);
  }

  return result;
}

void sub_240979570(uint64_t a1, unint64_t a2)
{
  v5 = sub_240A2BF8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_context);
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v11;
  sub_240A2BF7C();
  v14 = sub_240A2BF5C();
  v16 = v15;
  (*(v6 + 8))(v10, v5);
  if (v16 >> 60 == 15)
  {

LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    v26.a = 0.0;

    sub_240A2B12C();
    return;
  }

  v17 = [objc_opt_self() QRCodeGenerator];
  v18 = sub_240A295CC();
  [v17 setMessage_];

  v19 = [v17 outputImage];
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = v19;
  CGAffineTransformMakeScale(&v26, 5.0, 5.0);
  v21 = [v20 imageByApplyingTransform:&v26 highQualityDownsample:1];

  v22 = v21;
  [v22 extent];
  v23 = [v13 createCGImage:v22 fromRect:?];

  if (v23)
  {
    v24 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  }

  else
  {
LABEL_12:
    v24 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v26.a = v24;
  v25 = v24;

  sub_240A2B12C();

  sub_24092D94C(v14, v16);
}

uint64_t sub_24097985C()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CCF8, &qword_240A33F60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_publisher);

  sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_cancellationToken, &qword_27E50C6D0, &unk_240A33620);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for QRCodeGenerator()
{
  result = qword_27E50CCD8;
  if (!qword_27E50CCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240979998()
{
  sub_240979A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_240979A54()
{
  if (!qword_27E50CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CCF0, &qword_240A33ED8);
    v0 = sub_240A2B13C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50CCE8);
    }
  }
}

uint64_t sub_240979AB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_240A2B0BC();
  *a1 = result;
  return result;
}

unint64_t sub_240979B08()
{
  result = qword_27E50C450;
  if (!qword_27E50C450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50C450);
  }

  return result;
}

uint64_t sub_240979B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_240979BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6D0, &unk_240A33620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TeenSetupContinueOnParentOrGuardianView()
{
  result = qword_27E50CD30;
  if (!qword_27E50CD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240979C88()
{
  sub_240918B54();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_240979D10@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_240A29DBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240945D78(v7);
  v8 = sub_240A2C00C();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v7, v2);
  sub_240945D78(v7);
  v12 = sub_240A2C04C();
  v14 = v13;
  result = (v11)(v7, v2);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 3;
  return result;
}

unint64_t sub_240979E70()
{
  result = qword_27E50CD40;
  if (!qword_27E50CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CD40);
  }

  return result;
}

AppleIDSetupUI::AISTermsContext __swiftcall AISTermsContext.init(altDSID:clientInfo:)(Swift::String altDSID, Swift::String clientInfo)
{
  *v2 = altDSID;
  v2[1] = clientInfo;
  result.clientInfo = clientInfo;
  result.altDSID = altDSID;
  return result;
}

unint64_t AISTermsContext.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_240A2C47C();

  MEMORY[0x245CCCD90](v1, v2);
  MEMORY[0x245CCCD90](32010, 0xE200000000000000);
  return 0xD000000000000023;
}

uint64_t sub_240979F5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_240979FA4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_240979FF4()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50CD50);
  __swift_project_value_buffer(v0, qword_27E50CD50);
  return sub_240A2AE8C();
}

id TermsViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TermsViewController.init()()
{
  v1 = &v0[OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsContext];
  v3 = type metadata accessor for TermsViewController();
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_24097A1EC()
{
  sub_240A2C21C();
  *(v0 + 16) = sub_240A2C20C();
  v2 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24097A280, v2, v1);
}

uint64_t sub_24097A280()
{
  v1 = *(v0 + 16);

  if (qword_27E50AF48 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50CD50);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Pre Sign In terms is not supported", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  sub_24097A3CC();
  swift_allocError();
  *v6 = 1;
  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_24097A3CC()
{
  result = qword_27E50CD78;
  if (!qword_27E50CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CD78);
  }

  return result;
}

id TermsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id TermsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TermsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24097A698(char a1)
{
  if (a1)
  {
    if (qword_27E50AF48 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50CD50);
    oslog = sub_240A2AFFC();
    v3 = sub_240A2C28C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v3, "Terms agreement successful", v4, 2u);
      MEMORY[0x245CCDDB0](v4, -1, -1);
    }

    v5 = oslog;

LABEL_8:

    return;
  }

  v6 = v1;
  if (qword_27E50AF48 != -1)
  {
    swift_once();
  }

  v7 = sub_240A2B00C();
  __swift_project_value_buffer(v7, qword_27E50CD50);
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2AC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "Terms agreement was not successful.", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  v11 = v6 + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler;
  v12 = *(v6 + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler);
  if (v12)
  {
    v13 = *(v11 + 8);
    sub_24097A3CC();
    v14 = swift_allocError();
    *v15 = 2;

    v12(v14, 1);
    sub_24090C1A0(v12);
    v5 = v14;

    goto LABEL_8;
  }
}

void sub_24097A8DC(uint64_t a1)
{
  v2 = v1;
  if (qword_27E50AF48 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50CD50);

  v5 = sub_240A2AFFC();
  v6 = sub_240A2C29C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    if (!a1)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v9 = v8;

    v10 = sub_240A2BECC();
    v12 = sub_240925464(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2408FE000, v5, v6, "GenericTermsRemoteUI flow completed with termsInfo: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  else
  {
  }

  v13 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler;
  v14 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI19TermsViewController_termsInfoHandler);
  if (!v14)
  {
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(v13 + 8);

  v14(a1, 0);

  sub_24090C1A0(v14);
}

uint64_t dispatch thunk of TermsViewController.presentTerms(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_240915E50;

  return v12(a1, a2, a3);
}

unint64_t sub_24097ACB4()
{
  result = qword_27E50CD88;
  if (!qword_27E50CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CD88);
  }

  return result;
}

uint64_t sub_24097AD08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t AISFlowStepChildAccountRepair.__allocating_init(guardianAuthResponse:childAuthResults:locationServicesEnabled:settings:stepLoadTask:featureManager:currentDeviceInfoProvider:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v15 = *(v8 + 48);
  v16 = *(v8 + 52);
  v17 = swift_allocObject();
  v19 = a6[3];
  v18 = a6[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a6, v19);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v20, v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = sub_24097C3E8(a1, a2, a3, a4, a5, v23, v27, v28, v17, v19, v18);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v25;
}

uint64_t sub_24097AE98()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50CD90);
  __swift_project_value_buffer(v0, qword_27E50CD90);
  return sub_240A2AE9C();
}

uint64_t AISFlowStepChildAccountRepair.stepLoadTask.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t AISFlowStepChildAccountRepair.stepLoadTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t AISFlowStepChildAccountRepair.init(guardianAuthResponse:childAuthResults:locationServicesEnabled:settings:stepLoadTask:featureManager:currentDeviceInfoProvider:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v16 = a6[3];
  v15 = a6[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a6, v16);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17, v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_24097C3E8(a1, a2, a3, a4, a5, v20, v24, v25, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v22;
}

id sub_24097B140()
{
  v1 = v0;
  v2 = sub_240A298BC();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C768, &qword_240A330D0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v66 - v12;
  v14 = sub_240A2974C();
  v74 = *(v14 - 8);
  v75 = v14;
  v15 = *(v74 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v73 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_240A2B00C();
  v72 = *(v76 - 8);
  v18 = *(v72 + 64);
  MEMORY[0x28223BE20](v76, v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v66 - v25;
  v27 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  v28 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_guardianAuthResponse);
  sub_240A2ABEC();
  if (v29)
  {
    v30 = sub_240A2BF1C();
  }

  else
  {
    v30 = 0;
  }

  [v27 setAltDSID_];

  sub_240A2ABCC();
  v69 = v13;
  if (v79)
  {
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_240919300(v78, &qword_27E50C6D0, &unk_240A33620);
  }

  sub_240A2ABCC();
  if (v79)
  {
    if (swift_dynamicCast())
    {
      v78[0] = v77;
      sub_240A2C62C();
LABEL_11:
      v31 = sub_240A2BF1C();

      goto LABEL_14;
    }
  }

  else
  {
    sub_240919300(v78, &qword_27E50C6D0, &unk_240A33620);
  }

  v31 = 0;
LABEL_14:
  [v27 setDSID_];

  [v27 setAppProvidedContext_];
  v32 = v1;
  v33 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings);
  v34 = *(v33 + 16);
  v35 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  sub_240919298(v34 + v35, v26, &unk_27E50DCE0, &qword_240A32E20);
  v36 = sub_240A2962C();
  LODWORD(v34) = (*(*(v36 - 8) + 48))(v26, 1, v36);
  sub_240919300(v26, &unk_27E50DCE0, &qword_240A32E20);
  v37 = v34 == 1;
  v38 = v76;
  if (!v37)
  {
    sub_240A2AE9C();
    v39 = sub_240A2AFFC();
    v40 = sub_240A2C2CC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2408FE000, v39, v40, "AISFlowStepChildAccountRepair: setting context as migration", v41, 2u);
      MEMORY[0x245CCDDB0](v41, -1, -1);
    }

    (*(v72 + 8))(v21, v38);
    [v27 setAppProvidedContext_];
  }

  v42 = *(v33 + 16);
  v43 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  if (*(v42 + v43) != 2)
  {
    goto LABEL_26;
  }

  v44 = *(v32 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager + 32);
  __swift_project_boxed_opaque_existential_0((v32 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager), *(v32 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager + 24));
  v46 = v73;
  v45 = v74;
  v47 = v75;
  (*(v74 + 104))(v73, *MEMORY[0x277CED208], v75);
  v48 = sub_240A2AACC();
  (*(v45 + 8))(v46, v47);
  if (v48)
  {
    if (qword_27E50AF50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v38, qword_27E50CD90);
    v49 = sub_240A2AFFC();
    v50 = sub_240A2C29C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v69;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2408FE000, v49, v50, "Configuring guardian auth context with self proxied device to satisfy family server", v53, 2u);
      MEMORY[0x245CCDDB0](v53, -1, -1);
    }

    v54 = *(v32 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider + 8);
    (*(v32 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider))();
    v55 = v68;
    sub_240919298(v52, v68, &qword_27E50C768, &qword_240A330D0);
    v57 = v70;
    v56 = v71;
    if ((*(v70 + 48))(v55, 1, v71) == 1)
    {
      v58 = 0;
    }

    else
    {
      v62 = v67;
      (*(v57 + 32))(v67, v55, v56);
      v58 = sub_240A2989C();
      (*(v57 + 8))(v62, v56);
    }

    sub_240919300(v52, &qword_27E50C768, &qword_240A330D0);
    [v27 setProxiedDevice_];

    v63 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
    *(swift_allocObject() + 16) = v63;
    objc_allocWithZone(sub_240A29DEC());
    v64 = v63;
    v59 = sub_240A29DCC();
    [v27 setAnisetteDataProvider_];
  }

  else
  {
LABEL_26:
    if (qword_27E50AF50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v38, qword_27E50CD90);
    v59 = sub_240A2AFFC();
    v60 = sub_240A2C29C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2408FE000, v59, v60, "Age range not applicable for guardian auth modification", v61, 2u);
      MEMORY[0x245CCDDB0](v61, -1, -1);
    }
  }

  return v27;
}

uint64_t sub_24097BA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_240A2C21C();
  v3[3] = sub_240A2C20C();
  sub_240A29DEC();
  v7 = *(MEMORY[0x277CED660] + 4);
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_24097BAF4;

  return MEMORY[0x28213F3D0](a1, a2, a3);
}

uint64_t sub_24097BAF4()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_240A2C1BC();
  if (v2)
  {
    v8 = sub_24097BCB4;
  }

  else
  {
    v8 = sub_24097BC50;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24097BC50()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24097BCB4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t AISFlowStepChildAccountRepair.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_240A2999C();

  v4 = sub_240A2A4AC();
  v8 = *(v4 - 8);
  v5 = MEMORY[0x277CEDAA0];
  if (v3 != 1)
  {
    v5 = MEMORY[0x277CEDA98];
  }

  (*(*(v4 - 8) + 104))(a1, *v5, v4);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v4);
}

uint64_t AISFlowStepChildAccountRepair.nextStep()()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error);
  if (v8)
  {
    v9 = v8;
    sub_240A2AE9C();
    v10 = v8;
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C2CC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v30 = v3;
      v14 = v13;
      v29 = swift_slowAlloc();
      v32 = v29;
      *v14 = 136315138;
      v31 = v8;
      v15 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
      v16 = sub_240A2BF9C();
      v18 = sub_240925464(v16, v17, &v32);
      v28 = v2;
      v19 = v18;

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2408FE000, v11, v12, "AISFlowStepChildAccountRepair (skipping): child account repair failed with error: %s", v14, 0xCu);
      v20 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x245CCDDB0](v20, -1, -1);
      MEMORY[0x245CCDDB0](v14, -1, -1);

      (*(v30 + 8))(v7, v28);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }
  }

  v21 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_childAuthResults);
  v22 = type metadata accessor for AISFlowStepComplete();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  *(v25 + OBJC_IVAR____TtC14AppleIDSetupUI19AISFlowStepComplete_authResponse) = v21;
  *(v25 + 24) = 0;
  swift_unknownObjectWeakInit();
  LOBYTE(v32) = 0;
  v26 = v21;
  sub_240A2B0DC();
  *(v25 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v25;
}

uint64_t sub_24097C0D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask);
  swift_unknownObjectRelease();

  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager));
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider + 8);
}

uint64_t AISFlowStepChildAccountRepair.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask);
  swift_unknownObjectRelease();

  v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager));
  v6 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider + 8);

  return v0;
}

uint64_t AISFlowStepChildAccountRepair.__deallocating_deinit()
{
  AISFlowStepChildAccountRepair.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_UNKNOWN **sub_24097C2BC()
{
  result = AISFlowStepChildAccountRepair.nextStep()();
  if (v0)
  {
    return &protocol witness table for AISFlowStepBase;
  }

  return result;
}

uint64_t sub_24097C2E8()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_24097C330(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_24097C3E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = a7;
  v30 = a8;
  v27 = a4;
  v28 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v27 - v19;
  v32[3] = a10;
  v32[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a6, a10);
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error) = 0;
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_guardianAuthResponse) = a1;
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_childAuthResults) = a2;
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_locationServicesEnabled) = a3;
  v22 = v28;
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings) = v27;
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask) = v22;
  sub_240919A14(v32, a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager);
  v23 = (a9 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider);
  v24 = v30;
  *v23 = v29;
  v23[1] = v24;
  *(a9 + 24) = 0;
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v31 = 0;
  sub_240A2B0DC();
  __swift_destroy_boxed_opaque_existential_0(v32);
  (*(v16 + 32))(a9 + v25, v20, v15);
  *(a9 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return a9;
}

uint64_t type metadata accessor for AISFlowStepChildAccountRepair()
{
  result = qword_27E50CDA8;
  if (!qword_27E50CDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24097C6F0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
    swift_beginAccess();
    if (*(v3 + v12))
    {
      v13 = *(v3 + v12);

      v14 = a1;
      v15 = [v14 isCommunicationSafetyEnabled];
      if (v15)
      {
        v16 = v15;
        [v15 BOOLValue];
      }

      sub_240A2ACAC();

      if (*(v3 + v12))
      {
        v21 = *(v3 + v12);

        v22 = [v14 isEyeReliefEnabled];
        if (v22)
        {
          v23 = v22;
          [v22 BOOLValue];
        }

        sub_240A2ACBC();

        if (*(v3 + v12))
        {
          v24 = *(v3 + v12);

          v25 = [v14 isAppAndWebsiteActivityEnabled];
          if (v25)
          {
            v26 = v25;
            [v25 BOOLValue];
          }

          sub_240A2ACFC();

          goto LABEL_17;
        }
      }
    }

    else
    {
      v20 = a1;
    }

    goto LABEL_17;
  }

  sub_240A2AE9C();
  v17 = sub_240A2AFFC();
  v18 = sub_240A2C29C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2408FE000, v17, v18, "AISFlowStepChildAccountRepair stIntroductionModel is nil", v19, 2u);
    MEMORY[0x245CCDDB0](v19, -1, -1);
  }

  (*(v7 + 8))(v11, v6);
LABEL_17:
  v27 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error) = a2;
  v28 = a2;

  return sub_2409F4DA8();
}

uint64_t sub_24097C9BC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240915E50;

  return sub_24097BA1C(a1, a2, v6);
}

uint64_t AISFlowStepBase.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  return v0;
}

uint64_t sub_24097CAF0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_24097CB2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_24097CB8C(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24097CC20;
}

uint64_t sub_24097CC24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t sub_24097CC98()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_240A2B12C();
}

uint64_t (*sub_24097CD08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_240A2B10C();
  return sub_24097CDAC;
}

uint64_t sub_24097CDB0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  sub_240A2B0EC();
  return swift_endAccess();
}

uint64_t sub_24097CE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C420, &unk_240A342E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  sub_240A2B0FC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_24097CF5C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C420, &unk_240A342E0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  sub_240A2B0EC();
  swift_endAccess();
  return sub_24097D0CC;
}

void sub_24097D0CC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_240A2B0FC();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_240A2B0FC();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_24097D234()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_24097D27C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24097D334()
{
  sub_240A2C21C();
  *(v0 + 16) = sub_240A2C20C();
  v2 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24097D3C8, v2, v1);
}

uint64_t sub_24097D3C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24097D42C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_240A2A4AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_24097D498@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v5;
  return result;
}

uint64_t sub_24097D518(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_240A2B12C();
}

uint64_t sub_24097D58C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  sub_240A2B0EC();
  return swift_endAccess();
}

uint64_t sub_24097D604(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C420, &unk_240A342E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  sub_240A2B0FC();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_24097D788(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t AISFlowStepBase.__deallocating_deinit()
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

uint64_t (*sub_24097D8B0(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24097EA28;
}

void sub_24097D944(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t (*sub_24097D9C8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_240A2B10C();
  return sub_24097EA2C;
}

void sub_24097DA6C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_24097DB58()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240915E50;

  return v6();
}

uint64_t sub_24097DC68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AISFlowStepBase();
  result = sub_240A2B0BC();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of AISFlowStepProtocol.prepareForPresentation()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 88);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AISFlowStepDelegate.setupPasscode(for:nextTaskInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24097E030;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_24097E030(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of AISFlowStepDelegate.setupLocationServices(nextTaskInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24097EA24;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AISFlowStepDelegate.setupPerformAIDASignIn(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24097EA24;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AISFlowStepDelegate.stepDidEndFlow(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_240915E50;

  return v11(a1, a2, a3);
}

uint64_t type metadata accessor for AISFlowStepBase()
{
  result = qword_27E50CDC0;
  if (!qword_27E50CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24097E50C()
{
  sub_240948458();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AISFlowStepBase.prepareForPresentation()()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240915E50;

  return v6();
}

uint64_t dispatch thunk of AISFlowStepAuthentication.continue(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_240916360;

  return v11(a1, a2, a3);
}

uint64_t sub_24097EA5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v76 = a1;
  v72 = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDD8, &qword_240A34530);
  v3 = *(*(v68 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v68, v4);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v75 = (&v67 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDE0, &qword_240A34538);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v71 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v78 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v70 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v67 - v22;
  *&v86 = sub_240A2C06C();
  *(&v86 + 1) = v24;
  v74 = sub_24091C4F8();
  v25 = sub_240A2B9CC();
  v27 = v26;
  v29 = v28;
  sub_240A2B93C();
  v30 = sub_240A2B9AC();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_240920658(v25, v27, v29 & 1);

  *&v86 = v30;
  *(&v86 + 1) = v32;
  LOBYTE(v87) = v34 & 1;
  *(&v87 + 1) = v36;
  v69 = v23;
  sub_240A2BA6C();
  sub_240920658(v30, v32, v34 & 1);

  *&v86 = sub_240A2C06C();
  *(&v86 + 1) = v37;
  v38 = sub_240A2B9CC();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = sub_240A2B88C();
  v83 = v42 & 1;
  v82 = 1;
  *&v79 = v38;
  *(&v79 + 1) = v40;
  LOBYTE(v80) = v42 & 1;
  *(&v80 + 1) = *v85;
  DWORD1(v80) = *&v85[3];
  *(&v80 + 1) = v44;
  v81[0] = v45;
  *&v81[1] = *v84;
  *&v81[4] = *&v84[3];
  memset(&v81[8], 0, 32);
  v81[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1F0, &unk_240A32278);
  sub_240940614();
  v46 = v76;
  sub_240A2BA6C();
  v88 = *v81;
  *v89 = *&v81[16];
  *&v89[9] = *&v81[25];
  v86 = v79;
  v87 = v80;
  v47 = v77;
  sub_240919300(&v86, &qword_27E50C1F0, &unk_240A32278);
  v48 = sub_240A2B55C();
  v49 = v75;
  *v75 = v48;
  v49[1] = 0x4034000000000000;
  v50 = v49;
  *(v49 + 16) = 0;
  v51 = sub_240A2C0AC();
  if (!v51)
  {
    v53 = MEMORY[0x277D84F90];
LABEL_5:
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDE8, &unk_240A34550) + 44);
    *&v79 = v53;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDF0, &qword_240A34578);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDF8, &qword_240A34580);
    sub_24091CE28(&qword_27E50CE00, &qword_27E50CDF0, &qword_240A34578);
    sub_24091CE28(&qword_27E50CE08, &qword_27E50CDF8, &qword_240A34580);
    v57 = v50;
    sub_240A2BD6C();
    v58 = sub_240A2B86C();
    v59 = v50 + *(v68 + 36);
    *v59 = v58;
    *(v59 + 8) = 0u;
    *(v59 + 24) = 0u;
    *(v59 + 40) = 1;
    v60 = v69;
    v61 = v70;
    sub_240919298(v69, v70, &qword_27E50D9B0, &unk_240A34540);
    v62 = v78;
    v63 = v71;
    sub_240919298(v78, v71, &qword_27E50CDE0, &qword_240A34538);
    v64 = v73;
    sub_240919298(v57, v73, &qword_27E50CDD8, &qword_240A34530);
    v65 = v72;
    sub_240919298(v61, v72, &qword_27E50D9B0, &unk_240A34540);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE10, &qword_240A34588);
    sub_240919298(v63, v65 + *(v66 + 48), &qword_27E50CDE0, &qword_240A34538);
    sub_240919298(v64, v65 + *(v66 + 64), &qword_27E50CDD8, &qword_240A34530);
    sub_240919300(v57, &qword_27E50CDD8, &qword_240A34530);
    sub_240919300(v62, &qword_27E50CDE0, &qword_240A34538);
    sub_240919300(v60, &qword_27E50D9B0, &unk_240A34540);
    sub_240919300(v64, &qword_27E50CDD8, &qword_240A34530);
    sub_240919300(v63, &qword_27E50CDE0, &qword_240A34538);
    return sub_240919300(v61, &qword_27E50D9B0, &unk_240A34540);
  }

  v52 = v51;
  v53 = sub_24097F700(v51, 0);

  v54 = sub_24097F638(&v79, v53 + 4, v52, v46, v47);

  if (v54 == v52)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24097F1DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = sub_240A2BDEC();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE18, &unk_240A34590);
  return sub_24097F238(v3, v4, a2 + *(v6 + 44));
}

uint64_t sub_24097F238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE20, &qword_240A345A0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v48 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v47 - v17;
  v19 = *(sub_240A2B3FC() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_240A2B57C();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #6.0 }

  *v18 = _Q0;
  v27 = sub_240A2BB6C();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE28, &qword_240A345A8);
  *&v18[*(v28 + 52)] = v27;
  *&v18[*(v28 + 56)] = 256;
  sub_240A2BDEC();
  sub_240A2B28C();
  v29 = &v18[*(v11 + 44)];
  v30 = v53;
  *v29 = v52;
  *(v29 + 1) = v30;
  *(v29 + 2) = v54;
  v50 = a1;
  v51 = a2;
  sub_24091C4F8();

  v31 = sub_240A2B9CC();
  v33 = v32;
  LOBYTE(v19) = v34;
  sub_240A2B90C();
  v35 = sub_240A2B8CC();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  sub_240A2B91C();
  sub_240919300(v9, &qword_27E50B7D0, &qword_240A31218);
  v36 = sub_240A2B9AC();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_240920658(v31, v33, v19 & 1);

  v43 = v48;
  sub_240919298(v18, v48, &qword_27E50CE20, &qword_240A345A0);
  v44 = v49;
  sub_240919298(v43, v49, &qword_27E50CE20, &qword_240A345A0);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE30, &qword_240A345B0) + 48);
  *v45 = v36;
  *(v45 + 8) = v38;
  *(v45 + 16) = v40 & 1;
  *(v45 + 24) = v42;
  sub_24097F784(v36, v38, v40 & 1);

  sub_240919300(v18, &qword_27E50CE20, &qword_240A345A0);
  sub_240920658(v36, v38, v40 & 1);

  return sub_240919300(v43, &qword_27E50CE20, &qword_240A345A0);
}

uint64_t sub_24097F5D4@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_240A2B58C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CDD0, &qword_240A34528);
  return sub_24097EA5C(v4, v3, a1 + *(v5 + 44));
}

uint64_t sub_24097F638(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_240A2C0DC();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_24097F700(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE38, &qword_240A345B8);
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

uint64_t sub_24097F784(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_24097F7A4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_ageRangeSettingsProvider) ageRangeCache];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 ageRangeSettings];

    if (v3)
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v4 setNumberStyle_];
      result = [v3 u13Limit];
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        v7 = [v4 stringFromNumber_];

        if (v7)
        {
          v59 = sub_240A2BF4C();
          v9 = v8;
        }

        else
        {
          v9 = 0xE200000000000000;
          v59 = 12849;
        }

        v10 = [v3 u13Limit];
        v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        v12 = [v4 stringFromNumber_];

        if (v12)
        {
          v13 = sub_240A2BF4C();
          v15 = v14;
        }

        else
        {
          v15 = 0xE200000000000000;
          v13 = 13105;
        }

        result = [v3 u18Limit];
        if (!__OFSUB__(result, 1))
        {
          v56 = v15;
          v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
          v17 = [v4 stringFromNumber_];

          if (v17)
          {
            v53 = sub_240A2BF4C();
            v54 = v18;
          }

          else
          {
            v53 = 14129;
            v54 = 0xE200000000000000;
          }

          v19 = [v3 u18Limit];
          v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
          v21 = [v4 stringFromNumber_];

          v57 = v4;
          v58 = v3;
          v55 = v13;
          if (v21)
          {
            v51 = sub_240A2BF4C();
            v52 = v22;
          }

          else
          {
            v51 = 14385;
            v52 = 0xE200000000000000;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CEF8, &qword_240A346C8);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_240A32D00;
          v24 = sub_240A2BFEC();
          v26 = v25;
          sub_240A2BFEC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_240A305D0;
          v28 = MEMORY[0x277D837D0];
          *(v27 + 56) = MEMORY[0x277D837D0];
          v29 = sub_240913AEC();
          *(v27 + 64) = v29;
          *(v27 + 32) = v59;
          *(v27 + 40) = v9;
          v30 = sub_240A2BF6C();
          v32 = v31;

          v33 = *MEMORY[0x277D76A20];
          *(v23 + 32) = 1;
          *(v23 + 40) = v24;
          *(v23 + 48) = v26;
          *(v23 + 56) = v30;
          *(v23 + 64) = v32;
          *(v23 + 72) = v33;
          strcpy((v23 + 80), "figure.child");
          *(v23 + 93) = 0;
          *(v23 + 94) = -5120;
          v34 = v33;
          v35 = sub_240A2BFEC();
          v37 = v36;
          sub_240A2BFEC();
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_240A32540;
          *(v38 + 56) = v28;
          *(v38 + 64) = v29;
          *(v38 + 32) = v55;
          *(v38 + 40) = v56;
          *(v38 + 96) = v28;
          *(v38 + 104) = v29;
          *(v38 + 72) = v53;
          *(v38 + 80) = v54;
          v39 = sub_240A2BF6C();
          v41 = v40;

          *(v23 + 96) = 2;
          *(v23 + 104) = v35;
          *(v23 + 112) = v37;
          *(v23 + 120) = v39;
          *(v23 + 128) = v41;
          *(v23 + 136) = v34;
          *(v23 + 144) = 0xD000000000000010;
          *(v23 + 152) = 0x8000000240A3AFC0;
          v42 = sub_240A2BFEC();
          v44 = v43;
          sub_240A2BFEC();
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_240A305D0;
          *(v45 + 56) = v28;
          *(v45 + 64) = v29;
          *(v45 + 32) = v51;
          *(v45 + 40) = v52;
          v46 = sub_240A2BF6C();
          v48 = v47;

          v49 = *MEMORY[0x277D76A08];
          *(v23 + 160) = 3;
          *(v23 + 168) = v42;
          *(v23 + 176) = v44;
          *(v23 + 184) = v46;
          *(v23 + 192) = v48;
          *(v23 + 200) = v49;
          strcpy((v23 + 208), "figure.stand");
          *(v23 + 221) = 0;
          *(v23 + 222) = -5120;
          v50 = v49;

          return v23;
        }
      }

      __break(1u);
      return result;
    }
  }

  return sub_240983BF4();
}

id AgeSelectionViewController.init(with:context:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v71 = &v69 - v11;
  v77 = sub_240A2B00C();
  v12 = *(v77 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v77, v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v69 - v19;
  v21 = OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate;
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate] = 0;
  v22 = OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_ageRangeSettingsProvider;
  v23 = [objc_allocWithZone(MEMORY[0x277CF0148]) init];
  *&v4[v22] = v23;
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_protoAccountNavController] = a1;
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_context] = a2;
  v24 = *&v4[v21];
  *&v4[v21] = a3;
  v25 = v23;
  v75 = a1;
  v72 = a2;
  v76 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v26 = [v25 ageRangeCache];

  if (v26 && (v27 = [v26 ageRangeSettings], v26, v27))
  {
    sub_240A2AE9C();
    v28 = v27;
    v29 = sub_240A2AFFC();
    v30 = sub_240A2C2CC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v78 = v70;
      *v31 = 136315138;
      v32 = v28;
      v33 = [v32 description];
      v34 = sub_240A2BF4C();
      v36 = v35;

      v37 = sub_240925464(v34, v36, &v78);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_2408FE000, v29, v30, "Cache has settings at init: %s", v31, 0xCu);
      v38 = v70;
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x245CCDDB0](v38, -1, -1);
      MEMORY[0x245CCDDB0](v31, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v17, v77);
  }

  else
  {
    sub_240A2AE9C();
    v39 = sub_240A2AFFC();
    v40 = sub_240A2C2CC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2408FE000, v39, v40, "Cache has no settings at init", v41, 2u);
      MEMORY[0x245CCDDB0](v41, -1, -1);
    }

    (*(v12 + 8))(v20, v77);
  }

  v42 = [objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration()) init];
  type metadata accessor for AISSignInSettings();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_24098053C;
  v43[4] = 0;
  v43[5] = 0;
  v43[6] = 0;
  result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  if (result)
  {
    v45 = result;
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v46 = result;
      v47 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

      v48 = type metadata accessor for SignInOptionAuthenticationController();
      v49 = objc_allocWithZone(v48);
      *&v49[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController] = 0;
      *&v49[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = 0;
      v50 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController;
      *&v49[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController] = 0;
      v51 = &v49[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback];
      *v51 = 0;
      v51[1] = 0;
      v52 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController__isBluetoothDisabled;
      LOBYTE(v78) = 0;

      v53 = v71;
      sub_240A2B0DC();
      (*(v73 + 32))(&v49[v52], v53, v74);
      v54 = *&v49[v50];
      *&v49[v50] = v45;
      v55 = v45;

      *&v49[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings] = v43;
      *&v49[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaOwnersManager] = v47;
      v49[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled] = 1;
      v56 = *v51;
      v57 = v51[1];
      *v51 = 0;
      v51[1] = 0;

      v58 = v47;
      sub_24090C1A0(v56);
      v49[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_isAccountCreation] = 0;
      v80.receiver = v49;
      v80.super_class = v48;
      v59 = objc_msgSendSuper2(&v80, sel_init);

      *&v4[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_authController] = v59;
      v60 = objc_allocWithZone(type metadata accessor for ShieldSetup());
      v61 = v72;
      swift_unknownObjectRetain();
      v62 = v59;
      v63 = sub_240A06E90(v62, v61);

      swift_unknownObjectRelease();
      *&v4[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_shieldSetup] = v63;
      [objc_opt_self() deviceIsiPad];
      sub_240A2BFEC();
      sub_240A2BFEC();
      v64 = sub_240A2BF1C();

      v65 = sub_240A2BF1C();

      v66 = sub_240A2BF1C();
      v67 = type metadata accessor for AgeSelectionViewController();
      v79.receiver = v4;
      v79.super_class = v67;
      v68 = objc_msgSendSuper2(&v79, sel_initWithTitle_detailText_symbolName_adoptTableViewScrollView_, v64, v65, v66, 1);

      swift_unknownObjectRelease();

      return v68;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24098053C(void *a1, char a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v10 = a2 & 1;
  sub_240963F5C(a1);
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C29C();
  sub_240963F50(a1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v19[1] = a1;
    v20 = v10;
    sub_240963F5C(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CF30, &qword_240A346D0);
    v15 = sub_240A2BF9C();
    v17 = sub_240925464(v15, v16, &v21);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2408FE000, v11, v12, "result: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  return (*(v5 + 8))(v9, v4);
}

void sub_24098072C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for AgeSelectionViewController();
  v31.receiver = v0;
  v31.super_class = v7;
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  v8 = [*&v0[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_ageRangeSettingsProvider] ageRangeCache];
  v9 = [v8 ageRangeSettings];

  if (!v9)
  {
    v10 = sub_240A2C24C();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_240A2C21C();
    v11 = v1;
    v12 = sub_240A2C20C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    sub_2409230D4(0, 0, v6, &unk_240A345D8, v13);
  }

  v15 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v1 setTableView_];

  v16 = [v1 tableView];
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  v18 = [v1 tableView];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = v18;
  [v18 setRowHeight_];

  v20 = [v1 tableView];
  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = v20;
  v22 = [objc_opt_self() systemBackgroundColor];
  [v21 setBackgroundColor_];

  v23 = [v1 tableView];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  sub_2409194E8(0, &qword_27E50CE90, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = sub_240A2BF1C();
  [v24 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v26];

  v27 = [v1 tableView];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  [v27 setDataSource_];

  v29 = [v1 tableView];
  if (v29)
  {
    v30 = v29;
    [v29 setDelegate_];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_240980AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_240A2C21C();
  v4[4] = sub_240A2C20C();
  v4[5] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_240980B68, v6, v5);
}

uint64_t sub_240980B68()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_240A2C20C();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_240980C6C;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v3, v7, 0xD000000000000019, 0x8000000240A3D410, sub_240985344, v4, v8);
}

uint64_t sub_240980C6C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_240980DCC, v6, v5);
}

uint64_t sub_240980DCC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409418B8, v5, v4);
}

void sub_240980E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  v10 = *(a2 + OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_ageRangeSettingsProvider);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v9, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v9, v4);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  aBlock[4] = sub_24098534C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24098159C;
  aBlock[3] = &block_descriptor_34;
  v14 = _Block_copy(aBlock);

  [v10 refreshAgeRangeWithCompletion_];
  _Block_release(v14);
}

void sub_240981088(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v37 = a1;
  v5 = sub_240A2BE4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240A2BE6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_240A2B00C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = a2;
    sub_240A2AE9C();
    v24 = a2;
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C2AC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_2408FE000, v25, v26, "Failed to fetch age range settings: %@", v27, 0xCu);
      sub_240919300(v28, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v28, -1, -1);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    (*(v18 + 8))(v22, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
    sub_240A2C1CC();
  }

  else
  {
    v31 = v38;
    v35 = v11;
    v36 = v12;
    v34 = v6;
    if (v37)
    {
      sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
      v32 = sub_240A2C32C();
      aBlock[4] = sub_24098541C;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2409EC704;
      aBlock[3] = &block_descriptor_37;
      v33 = _Block_copy(aBlock);

      sub_240A2BE5C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_240985424(&qword_27E50CF10, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF90, &unk_240A30E50);
      sub_24098546C();
      sub_240A2C3FC();
      MEMORY[0x245CCD000](0, v16, v10, v33);
      _Block_release(v33);

      (*(v34 + 8))(v10, v5);
      (*(v36 + 8))(v16, v35);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
    sub_240A2C1CC();
  }
}

void sub_240981520()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong tableView];

    [v2 reloadData];
  }
}

void sub_24098159C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id AgeSelectionViewController.__allocating_init(title:detailText:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_240A2BF1C();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_240A2BF1C();

LABEL_6:
  v12 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 symbolName:v11];

  return v12;
}

id AgeSelectionViewController.__allocating_init(title:detailText:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_240A2BF1C();

  if (a4)
  {
    v10 = sub_240A2BF1C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithTitle:v9 detailText:v10 icon:a5];

  return v11;
}

id AgeSelectionViewController.__allocating_init(title:detailText:symbolName:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = sub_240A2BF1C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_240A2BF1C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 adoptTableViewScrollView:a7 & 1];

  return v15;
}

id AgeSelectionViewController.__allocating_init(title:detailText:icon:adoptTableViewScrollView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v11 = sub_240A2BF1C();

  if (a4)
  {
    v12 = sub_240A2BF1C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 adoptTableViewScrollView:a6 & 1];

  return v13;
}

id AgeSelectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int __swiftcall AgeSelectionViewController.numberOfSections(in:)(UITableView *in)
{
  v1 = *(sub_24097F7A4() + 2);

  return v1;
}

unint64_t AgeSelectionViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = sub_240A2B08C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2BF1C();
  v9 = sub_240A2963C();
  v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:v9];

  v11 = sub_24097F7A4();
  result = sub_240A2965C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= v11[2])
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v67 = v3;
  v68 = v2;
  v13 = &v11[8 * result];
  v14 = v13[6];
  v57 = v13[5];
  v15 = v13[8];
  v61 = v13[7];
  v16 = v13[9];
  v17 = v13[10];
  v18 = v13[11];

  v66 = v15;

  v19 = v16;

  MEMORY[0x245CCCFB0](v20);
  v21 = objc_opt_self();
  v64 = v19;
  v22 = [v21 configurationWithTextStyle_];
  v65 = v18;
  v23 = sub_240A2BF1C();
  v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

  v63 = v22;
  v62 = v24;
  sub_240A2B07C();
  v60 = objc_opt_self();
  v25 = [v60 systemBlueColor];
  v26 = sub_240A2B04C();
  sub_240A2B03C();
  v26(v69, 0);
  v27 = objc_opt_self();
  v28 = *MEMORY[0x277D76988];
  v29 = [v27 _preferredFontForTextStyle_weight_];
  v59 = v10;
  if (!v29)
  {
    v29 = [v27 preferredFontForTextStyle_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE98, &unk_240A345E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  v31 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v32 = sub_2409194E8(0, &unk_27E50CEA0, 0x277D74300);
  *(inited + 64) = v32;
  *(inited + 40) = v29;
  v56 = v31;
  v58 = v29;
  sub_240926DE0(inited);
  swift_setDeallocating();
  sub_240919300(inited + 32, &qword_27E50BB18, &unk_240A316A0);
  v33 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v34 = sub_240A2BF1C();
  v57 = v14;
  v35 = v34;
  type metadata accessor for Key(0);
  sub_240985424(&qword_27E50CEB0, type metadata accessor for Key);
  v36 = sub_240A2BE9C();

  v37 = [v33 initWithString:v35 attributes:v36];

  v38 = [v27 preferredFontForTextStyle_];
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_240A32540;
  *(v39 + 32) = v56;
  *(v39 + 40) = v38;
  v40 = *MEMORY[0x277D740C0];
  *(v39 + 64) = v32;
  *(v39 + 72) = v40;
  v56 = v38;
  v41 = v40;
  v42 = v60;
  v43 = [v60 secondaryLabelColor];
  *(v39 + 104) = sub_2409194E8(0, &unk_27E50CEB8, 0x277D75348);
  *(v39 + 80) = v43;
  sub_240926DE0(v39);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB18, &unk_240A316A0);
  swift_arrayDestroy();
  v44 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v45 = sub_240A2BF1C();
  v46 = sub_240A2BE9C();

  v47 = [v44 initWithString:v45 attributes:v46];

  v48 = v37;
  sub_240A2B02C();
  v49 = v47;
  sub_240A2B06C();
  sub_240A2B05C();
  v50 = v68;
  v69[3] = v68;
  v69[4] = MEMORY[0x277D74C30];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  v52 = v67;
  (*(v67 + 16))(boxed_opaque_existential_1, v7, v50);
  v53 = v59;
  MEMORY[0x245CCCFA0](v69);
  [v53 setAccessoryType_];
  v54 = v53;
  v55 = [v42 secondarySystemBackgroundColor];
  [v54 setBackgroundColor_];

  (*(v52 + 8))(v7, v50);
  return v54;
}

unint64_t AgeSelectionViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v23[-v7];
  v9 = sub_240A2963C();
  [a1 deselectRowAtIndexPath:v9 animated:1];

  v10 = sub_24097F7A4();
  result = sub_240A2965C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < v10[2])
  {
    v12 = &v10[8 * result];
    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[5];
    v26 = v12[4];
    v27 = v15;
    v24 = v13;
    v25 = v14;
    sub_240983EA4(&v24, v23);

    v16 = sub_240A2C24C();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_240A2C21C();
    sub_240983EA4(&v24, v23);
    v17 = v2;
    v18 = sub_240A2C20C();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    *(v19 + 32) = v17;
    v21 = v25;
    *(v19 + 40) = v24;
    *(v19 + 56) = v21;
    v22 = v27;
    *(v19 + 72) = v26;
    *(v19 + 88) = v22;
    sub_2409230D4(0, 0, v8, &unk_240A345F8, v19);
    sub_240983F9C(&v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_240982650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_240A2C21C();
  v5[4] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_2409826E8, v7, v6);
}

id sub_2409826E8()
{
  result = [objc_opt_self() defaultStore];
  *(v0 + 56) = result;
  if (result)
  {
    v2 = result;
    v3 = **(v0 + 24);
    *(v0 + 64) = v3;
    v4 = [objc_opt_self() sharedInstance];
    *(v0 + 72) = v4;
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_240982800;

    return sub_240983FCC(v3, v2, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240982800()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 56);
  v8 = *v0;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_240982958, v6, v5);
}

uint64_t sub_240982958()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[2];

  sub_240982ACC(v1);
  v4 = v0[1];

  return v4();
}

uint64_t AgeSelectionViewController.removeExistingProtoAccount(for:accountStore:accountManager:)(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_0(a2, v6);
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_0(a3, v9);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_240915E50;

  return sub_24098487C(a1, v8, v11, v6, v9, v7, v10);
}

void sub_240982ACC(char *a1)
{
  v3 = sub_240A2974C();
  v79 = *(v3 - 1);
  v4 = *(v79 + 8);
  MEMORY[0x28223BE20](v3, v5);
  v78 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A2B00C();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v13 = v1;
  v14 = sub_240A2AFFC();
  v15 = sub_240A2C2CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v80 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v77 = v3;
    v76 = v18;
    v82[0] = v18;
    *v17 = 136315394;
    v84[0] = v80;
    type metadata accessor for AKUserAgeRange(0);
    v19 = sub_240A2BF9C();
    v21 = sub_240925464(v19, v20, v82);
    v75 = v7;
    v22 = v21;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v84[0] = [*&v13[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_context] 0x1FD368EA8];
    type metadata accessor for AISAppleIDSignInFlowType(0);
    v23 = sub_240A2BF9C();
    v25 = sub_240925464(v23, v24, v82);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_2408FE000, v14, v15, "AgeSelectionViewController navigating to age range: %s with signInFlowType: %s", v17, 0x16u);
    v26 = v76;
    swift_arrayDestroy();
    v3 = v77;
    MEMORY[0x245CCDDB0](v26, -1, -1);
    v27 = v17;
    a1 = v80;
    MEMORY[0x245CCDDB0](v27, -1, -1);

    (*(v8 + 8))(v12, v75);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  if (a1 == 1 || a1 == 2 && (v28 = v79, v29 = v78, (*(v79 + 13))(v78, *MEMORY[0x277CED208], v3), v30 = sub_240A2973C(), (*(v28 + 1))(v29, v3), (v30 & 1) != 0))
  {
    v31 = [objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration()) init];
    v32 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    *&v31[v32] = a1;
    v33 = OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_context;
    v34 = [*&v13[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_context] signInFlowType];
    if (v34 >= 2)
    {
      sub_240A2C58C();
      __break(1u);
    }

    else
    {
      v35 = v34;
      v36 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
      swift_beginAccess();
      *&v31[v36] = v35;
      v37 = *&v13[v33];
      v38 = swift_allocObject();
      *(v38 + 16) = v13;
      v39 = objc_allocWithZone(MEMORY[0x277D08348]);
      v80 = v13;
      v40 = v31;
      v41 = v37;
      v75 = v37;
      v42 = [v39 init];
      v43 = [objc_opt_self() sharedInstance];
      v44 = type metadata accessor for ConnectToFamilyViewController();
      v45 = objc_allocWithZone(v44);
      v46 = sub_2409194E8(0, &qword_27E50C6C0, 0x277CF0130);
      v84[4] = MEMORY[0x277CEDE48];
      v84[3] = v46;
      v84[0] = v43;
      v47 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context] = 0;
      v48 = &v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
      *v48 = 0;
      v48[1] = 0;
      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController] = 0;
      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController] = 0;
      v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_isFamilyInviteAvailable] = 0;
      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_childSetupController] = 0;
      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel] = 0;
      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationHostingController] = 0;
      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_signInController] = 0;
      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController] = 0;
      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_shieldFlowContext] = 0;
      swift_unknownObjectWeakInit();
      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration] = v40;
      swift_beginAccess();
      v49 = *&v45[v47];
      *&v45[v47] = 0;
      v50 = v40;
      v78 = v43;

      *&v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider] = v42;
      sub_240919A14(v84, &v45[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager]);
      swift_beginAccess();
      v52 = *v48;
      v51 = v48[1];
      *v48 = sub_240985310;
      v48[1] = v38;
      v76 = v38;
      v77 = v42;

      sub_24090C1A0(v52);
      sub_240919A14(v84, &v83);
      v82[0] = 0;
      v53 = v41;
      v82[1] = v41;
      v79 = v50;
      v82[2] = v50;
      v75 = v75;
      sub_240949ECC();
      v54 = sub_240A2BF1C();

      sub_24094A010();
      v55 = sub_240A2BF1C();

      v81.receiver = v45;
      v81.super_class = v44;
      v56 = objc_msgSendSuper2(&v81, sel_initWithTitle_detailText_symbolName_contentLayout_, v54, v55, 0, 3);

      v57 = v56;
      v58 = [v57 buttonTray];
      v59 = [objc_opt_self() boldButton];
      sub_24094A27C();
      v60 = sub_240A2BF1C();

      [v59 setTitle:v60 forState:0];

      v61 = sub_24094A55C(v53);
      [v59 addAction:v61 forControlEvents:64];

      [v58 addButton_];
      v62 = [v57 buttonTray];

      v63 = [objc_opt_self() linkButton];
      sub_24094A874();
      v64 = sub_240A2BF1C();

      [v63 setTitle:v64 forState:0];

      v65 = sub_24094AAD8(v53);
      [v63 addAction:v65 forControlEvents:64];

      [v62 addButton_];

      sub_2409648F0(v82);
      __swift_destroy_boxed_opaque_existential_0(v84);
      v66 = v80;
      v67 = *&v80[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate];
      swift_unknownObjectWeakAssign();
      v68 = [v66 navigationController];
      if (v68)
      {
        v69 = v68;
        [v68 pushViewController:v57 animated:1];
      }

      else
      {
      }
    }
  }

  else
  {
    v70 = *&v13[OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate];
    if (v70)
    {
      v71 = [v70 respondsToSelector_];
      sub_240915CF8();
      v72 = swift_allocError();
      *v73 = 0;
      v73[1] = 0;
      swift_unknownObjectRetain();
      v74 = sub_240A2952C();
      if (v71)
      {
        [v70 shieldSetupDidFinishWithResult:0 viewControllersToRemove:0 error:v74];
        swift_unknownObjectRelease();
      }

      else
      {

        [v70 shieldSetupDidFinishWithResult:0 error:v74];
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_240983634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = objc_allocWithZone(MEMORY[0x277CEDE80]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v13 = sub_240A2BE9C();
    v14 = [v12 initWithAuthResults_];
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a3 + OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_protoAccountNavController);
  sub_240983B7C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  *(inited + 32) = sub_2409194E8(0, &unk_27E50CEC8, 0x277D461F0);
  v17 = sub_240947398(inited);
  swift_setDeallocating();
  sub_240A2AE9C();

  v18 = sub_240A2AFFC();
  v19 = sub_240A2C2CC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v37 = v14;
    v23 = v22;
    v39 = v17;
    v40 = v22;
    *v21 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CED8, &unk_240A346A8);
    v24 = sub_240A2BF9C();
    v36 = a3;
    v26 = sub_240925464(v24, v25, &v40);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_2408FE000, v18, v19, "Discarding view controllers from navigation stack: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v27 = v23;
    v14 = v37;
    MEMORY[0x245CCDDB0](v27, -1, -1);
    v28 = v21;
    a1 = v38;
    MEMORY[0x245CCDDB0](v28, -1, -1);

    a3 = v36;
  }

  else
  {
  }

  (*(v7 + 8))(v11, v6);
  v29 = OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate;
  v30 = *(a3 + OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate);
  if (v30 && ([*(a3 + OBJC_IVAR____TtC14AppleIDSetupUI26AgeSelectionViewController_delegate) respondsToSelector_] & 1) != 0)
  {
    if (v17)
    {
      sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
      swift_unknownObjectRetain();
      v31 = sub_240A2C15C();
      if (a1)
      {
LABEL_11:
        v32 = sub_240A2952C();
LABEL_20:
        [v30 shieldSetupDidFinishWithResult:v14 viewControllersToRemove:v31 error:v32];

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v31 = 0;
      if (a1)
      {
        goto LABEL_11;
      }
    }

    v32 = 0;
    goto LABEL_20;
  }

  v33 = *(a3 + v29);
  if (v33)
  {
    v34 = *(a3 + v29);
    swift_unknownObjectRetain();
    if (a1)
    {
      v35 = sub_240A2952C();
    }

    else
    {
      v35 = 0;
    }

    [v33 shieldSetupDidFinishWithResult:v14 error:v35];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_240983A30()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = objc_allocWithZone(type metadata accessor for AgeSelectionViewController());
  swift_unknownObjectRetain();
  return AgeSelectionViewController.init(with:context:delegate:)(v1, v2, v3);
}

uint64_t sub_240983A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409855D4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240983AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409855D4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240983B54()
{
  sub_2409855D4();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_240983B7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CEE8, &qword_240A346B8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27E50CEF0;
    v3 = &unk_240A346C0;
  }

  else
  {
    v2 = &qword_27E50C9A0;
    v3 = qword_240A31380;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_240983BF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CEF8, &qword_240A346C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_240A32D00;
  v1 = sub_240A2BFEC();
  v3 = v2;
  v4 = sub_240A2BFEC();
  v5 = *MEMORY[0x277D76A20];
  *(v0 + 32) = 1;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  *(v0 + 64) = v6;
  *(v0 + 72) = v5;
  strcpy((v0 + 80), "figure.child");
  *(v0 + 93) = 0;
  *(v0 + 94) = -5120;
  v7 = v5;
  v8 = sub_240A2BFEC();
  v10 = v9;
  v11 = sub_240A2BFEC();
  *(v0 + 96) = 2;
  *(v0 + 104) = v8;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v7;
  *(v0 + 144) = 0xD000000000000010;
  *(v0 + 152) = 0x8000000240A3AFC0;
  v13 = sub_240A2BFEC();
  v15 = v14;
  v16 = sub_240A2BFEC();
  v17 = *MEMORY[0x277D76A08];
  *(v0 + 160) = 3;
  *(v0 + 168) = v13;
  *(v0 + 176) = v15;
  *(v0 + 184) = v16;
  *(v0 + 192) = v18;
  *(v0 + 200) = v17;
  strcpy((v0 + 208), "figure.stand");
  *(v0 + 221) = 0;
  *(v0 + 222) = -5120;
  v19 = v17;
  return v0;
}

uint64_t sub_240983DF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_240980AC0(a1, v4, v5, v6);
}

uint64_t sub_240983EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_240982650(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_240983FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v4 = sub_240A2B00C();
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  sub_240A2C21C();
  v3[31] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v3[32] = v8;
  v3[33] = v7;

  return MEMORY[0x2822009F8](sub_2409840DC, v8, v7);
}

uint64_t sub_2409840DC()
{
  v23 = v0;
  v1 = [*(v0 + 200) protoAccount];
  *(v0 + 272) = v1;
  if (v1)
  {
    v2 = v1;

    return MEMORY[0x2822009F8](sub_2409842EC, 0, 0);
  }

  else
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);

    sub_240A2AE9C();
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C2CC();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = *(v0 + 208);
    if (v7)
    {
      v11 = *(v0 + 184);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      *(v0 + 168) = v11;
      type metadata accessor for AKUserAgeRange(0);
      v14 = sub_240A2BF9C();
      v16 = sub_240925464(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2408FE000, v5, v6, "No proto account exists for age range: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x245CCDDB0](v13, -1, -1);
      MEMORY[0x245CCDDB0](v12, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    v18 = *(v0 + 232);
    v17 = *(v0 + 240);
    v19 = *(v0 + 224);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2409842EC()
{
  v1 = v0[34];
  v2 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_240984418;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A13784;
  v0[13] = &block_descriptor_11;
  v0[14] = v3;
  [v2 removeAccount:v1 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240984418()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 280) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = *(v1 + 256);
    v5 = *(v1 + 264);
    v6 = sub_240984678;
  }

  else
  {
    v4 = *(v1 + 256);
    v5 = *(v1 + 264);
    v6 = sub_240984534;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_240984534()
{
  v2 = v0[30];
  v1 = v0[31];

  sub_240A2AE9C();
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2CC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[34];
  v7 = v0[30];
  v8 = v0[26];
  v9 = v0[27];
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully removed existing proto account", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
    v11 = v3;
    v3 = v6;
  }

  else
  {
    v11 = v0[34];
  }

  (*(v9 + 8))(v7, v8);
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[28];

  v15 = v0[1];

  return v15();
}

uint64_t sub_240984678()
{
  v31 = v0;
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[29];

  sub_240A2AE9C();
  v4 = v1;
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C2AC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[34];
    v8 = v0[35];
    v9 = v0[27];
    v28 = v0[26];
    v29 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[20];
    v15 = sub_240A2C6CC();
    v17 = sub_240925464(v15, v16, &v30);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_2408FE000, v5, v6, "Failed to remove proto account: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245CCDDB0](v11, -1, -1);
    MEMORY[0x245CCDDB0](v10, -1, -1);

    (*(v9 + 8))(v29, v28);
  }

  else
  {
    v19 = v0[34];
    v18 = v0[35];
    v20 = v0[29];
    v21 = v0[26];
    v22 = v0[27];

    (*(v22 + 8))(v20, v21);
  }

  v24 = v0[29];
  v23 = v0[30];
  v25 = v0[28];

  v26 = v0[1];

  return v26();
}

uint64_t sub_24098487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v11 = sub_240A2B00C();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v14 = *(a5 - 8);
  v15 = v14;
  v7[17] = v14;
  v16 = *(v14 + 64) + 15;
  v17 = swift_task_alloc();
  v7[18] = v17;
  v18 = *(a4 - 8);
  v19 = v18;
  v7[19] = v18;
  v20 = *(v18 + 64) + 15;
  v7[20] = swift_task_alloc();
  (*(v19 + 16))();
  (*(v15 + 16))(v17, a3, a5);
  sub_240A2C21C();
  v7[21] = sub_240A2C20C();
  v22 = sub_240A2C1BC();
  v7[22] = v22;
  v7[23] = v21;

  return MEMORY[0x2822009F8](sub_240984AA0, v22, v21);
}

uint64_t sub_240984AA0()
{
  v35 = v0;
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[9];
  v4 = sub_240A2AB4C();
  v0[24] = v4;
  if (v4)
  {
    v5 = *(MEMORY[0x277CEDCD0] + 4);
    v6 = v4;
    v7 = v4;
    v8 = swift_task_alloc();
    v0[25] = v8;
    *v8 = v0;
    v8[1] = sub_240984D3C;
    v9 = v0[20];
    v10 = v0[10];
    v11 = v0[8];

    return MEMORY[0x28213FCB8](v6, v11, v10);
  }

  else
  {
    v12 = v0[21];
    v13 = v0[16];

    sub_240A2AE9C();
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2CC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[16];
    v18 = v0[12];
    v19 = v0[13];
    if (v16)
    {
      v20 = v0[7];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136315138;
      v0[5] = v20;
      type metadata accessor for AKUserAgeRange(0);
      v23 = sub_240A2BF9C();
      v25 = sub_240925464(v23, v24, &v34);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2408FE000, v14, v15, "No proto account exists for age range: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x245CCDDB0](v22, -1, -1);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    (*(v19 + 8))(v17, v18);
    v27 = v0[17];
    v26 = v0[18];
    v29 = v0[15];
    v28 = v0[16];
    v30 = v0[14];
    v31 = v0[9];
    (*(v0[19] + 8))(v0[20], v0[8]);
    (*(v27 + 8))(v26, v31);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_240984D3C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v8 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = *(v2 + 184);
    v6 = sub_240984FDC;
  }

  else
  {

    v4 = *(v2 + 176);
    v5 = *(v2 + 184);
    v6 = sub_240984E58;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_240984E58()
{
  v1 = v0[21];
  v2 = v0[15];

  sub_240A2AE9C();
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2CC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully removed existing proto account", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v9 + 8))(v7, v8);
  v12 = v0[17];
  v11 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[14];
  v16 = v0[9];
  (*(v0[19] + 8))(v0[20], v0[8]);
  (*(v12 + 8))(v11, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_240984FDC()
{
  v35 = v0;
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[14];

  sub_240A2AE9C();
  v5 = v1;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v9 = v0[24];
    v10 = v0[13];
    v32 = v0[12];
    v33 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v16 = sub_240A2C6CC();
    v18 = sub_240925464(v16, v17, &v34);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2408FE000, v6, v7, "Failed to remove proto account: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);

    (*(v10 + 8))(v33, v32);
  }

  else
  {
    v19 = v0[26];
    v20 = v0[24];
    v22 = v0[13];
    v21 = v0[14];
    v23 = v0[12];

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[17];
  v24 = v0[18];
  v27 = v0[15];
  v26 = v0[16];
  v28 = v0[14];
  v29 = v0[9];
  (*(v0[19] + 8))(v0[20], v0[8]);
  (*(v25 + 8))(v24, v29);

  v30 = v0[1];

  return v30();
}

uint64_t sub_240985268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2409852B0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_24098534C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_240981088(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_240913DC0(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_33(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t sub_240985424(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24098546C()
{
  result = qword_27E50CF20;
  if (!qword_27E50CF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EF90, &unk_240A30E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CF20);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2409854E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24098552C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_240985580()
{
  result = qword_27E50CF38;
  if (!qword_27E50CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CF38);
  }

  return result;
}

unint64_t sub_2409855D4()
{
  result = qword_27E50CF40;
  if (!qword_27E50CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CF40);
  }

  return result;
}

id sub_240985688()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISSignInViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240985740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_240A2B00C();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  sub_240A2C21C();
  v7[10] = sub_240A2C20C();
  v12 = sub_240A2C1BC();
  v7[11] = v12;
  v7[12] = v11;

  return MEMORY[0x2822009F8](sub_240985844, v12, v11);
}

uint64_t sub_240985844()
{
  v29 = v0;
  v1 = v0[9];
  v2 = v0[2];
  sub_240A2AE9C();

  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    v12 = sub_240A2BEDC();
    v14 = sub_240925464(v12, v13, &v28);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2408FE000, v3, v4, "AISSignInViewModel: didCompleteWithAuthenticationResults\n%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245CCDDB0](v11, -1, -1);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  v15 = *(v8 + 8);
  v15(v6, v7);
  v0[13] = v15;
  v16 = v0[2];
  v17 = v0[3];
  v18 = objc_allocWithZone(sub_240A2AC6C());

  v19 = sub_240A2ABDC();
  v0[14] = v19;
  v20 = *(v17 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step);
  v21 = *(v17 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step + 8);
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 24);
  v27 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  v0[15] = v25;
  *v25 = v0;
  v25[1] = sub_240985AE4;

  return v27(v19, ObjectType, v21);
}

uint64_t sub_240985AE4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_240985CB0;
  }

  else
  {
    v7 = sub_240985C20;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_240985C20()
{
  v1 = *(v0 + 80);

  v3 = *(v0 + 112);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 40);
  (*(v0 + 32))(v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_240985CB0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);

  sub_240A2AE9C();
  v4 = v1;
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C2AC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 128);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2408FE000, v5, v6, "AISSignInViewModel: step continue failed with error: \n%@", v9, 0xCu);
    sub_240915C68(v10);
    MEMORY[0x245CCDDB0](v10, -1, -1);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 56) + 8;
  v14 = (*(v0 + 104))(*(v0 + 64), *(v0 + 48));
  v15 = *(v0 + 112);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 40);
  (*(v0 + 32))(v14);

  v19 = *(v0 + 8);

  return v19();
}

id sub_240986060()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - v8;
  sub_240A2AE9C();
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, "AISSignInViewModel: authenticationContext", v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  (*(v3 + 8))(v9, v2);
  v13 = *__swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_contextProvider), *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_contextProvider + 24));
  v14 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  [v14 setPresentingViewController_];
  [v14 setDelegate_];
  v15 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step);
  v16 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step + 8);
  ObjectType = swift_getObjectType();
  (*(v16 + 16))(v14, ObjectType, v16);
  return v14;
}

uint64_t sub_240986400()
{
  v0 = [objc_opt_self() tintColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [v1 configurationWithPointSize_];
  v4 = [v2 configurationByApplyingConfiguration_];
  sub_2409194E8(0, &qword_27E50D038, 0x277D755B8);
  sub_2409194E8(0, &unk_27E50D040, 0x277D46220);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_240A2C35C();

  return v7;
}

uint64_t sub_240986694(void *a1)
{
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = a1;
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C29C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = [v8 debugDescription];
    v14 = sub_240A2BF4C();
    v16 = v15;

    v17 = sub_240925464(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_2408FE000, v9, v10, "AISSignInViewModel: willAuthenticateWithContext\n%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_24098686C(uint64_t a1)
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
  v10[1] = sub_240915E50;

  return sub_240985740(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t SetupView.init(dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:userAgeRange:contextBuilder:reportHandler:setupController:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v75 = a5;
  v76 = a8;
  v81 = a6;
  v82 = a7;
  v73 = a1;
  v74 = a4;
  v83 = a2;
  v79 = a14;
  v80 = a3;
  v71 = a13;
  v72 = a15;
  v77 = a10;
  v78 = a12;
  v70 = a11;
  v69 = sub_240A2981C();
  v16 = *(v69 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v69, v18);
  v68 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v67 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = v67 - v31;
  LOBYTE(v86) = 0;
  sub_240A2BC4C();
  v33 = *(&v84 + 1);
  *(a9 + 48) = v84;
  *(a9 + 56) = v33;
  v34 = type metadata accessor for SetupView();
  v35 = v34[10];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
  sub_240919298(v32, v29, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v32, &qword_27E50C700, &unk_240A32F50);
  v37 = a9 + v34[11];
  v86 = 0;
  v87 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v38 = v85;
  *v37 = v84;
  *(v37 + 16) = v38;
  v39 = v34[12];
  *(a9 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v40 = v34[13];
  *(a9 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v41 = v34[14];
  *(a9 + v41) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v42 = a9 + v34[15];
  *v42 = swift_getKeyPath();
  *(v42 + 8) = 0;
  v43 = a9 + v34[16];
  *v43 = swift_getKeyPath();
  *(v43 + 8) = 0;
  v44 = a9 + v34[17];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  v46 = v34[18];
  v45 = v34[19];
  v47 = a9 + v34[22];
  LOBYTE(v86) = 1;
  sub_240A2BC4C();
  v48 = *(&v84 + 1);
  *v47 = v84;
  *(v47 + 8) = v48;
  sub_240A2979C();
  v67[2] = v34[9];
  v49 = *(v16 + 16);
  v67[1] = v23;
  v50 = v69;
  v49(v68, v23, v69);
  sub_240A2BC4C();
  (*(v16 + 8))(v23, v50);
  v51 = v71;
  v52 = v78;
  v53 = v79;
  *a9 = v70;
  *(a9 + 8) = v52;
  *(a9 + 16) = v51;
  *(a9 + 24) = v53;
  v54 = v72;
  v55 = v73;
  *(a9 + v46) = v73;
  v56 = v82;
  *(a9 + v45) = v83;
  *(a9 + 32) = v54;
  v57 = a9 + v34[20];
  v58 = v81;
  v59 = v74;
  *v57 = v80;
  *(v57 + 8) = v59;
  v60 = v76;
  *(v57 + 16) = v75;
  v61 = a9 + v34[21];
  *v61 = v58;
  *(v61 + 8) = v56;
  *(v61 + 16) = v60;
  v62 = objc_allocWithZone(sub_240A29DEC());

  swift_retain_n();

  v63 = v55;
  v64 = v83;

  *(a9 + 40) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v65 = sub_240A297AC();
  sub_240A2A04C();
  v65(&v84, 0);
  sub_240A2BC6C();
}

uint64_t type metadata accessor for SetupView()
{
  result = qword_27E50D250;
  if (!qword_27E50D250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240986FE0()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50D050);
  __swift_project_value_buffer(v0, qword_27E50D050);
  return sub_240A2AE7C();
}

uint64_t sub_24098702C@<X0>(uint64_t a1@<X8>)
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
  v14 = type metadata accessor for SetupView();
  sub_240919298(v1 + *(v14 + 48), v13, &qword_27E50BF50, &qword_240A31920);
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

uint64_t sub_240987234@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_240A2B52C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for SetupView();
  sub_240919298(v1 + *(v14 + 52), v13, &qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_240A29DBC();
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

BOOL sub_24098743C()
{
  v0 = sub_240A2A10C();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - v6;
  v8 = sub_240A2981C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v27 - v16;
  v18 = *(type metadata accessor for SetupView() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297BC();
  v19 = *(v9 + 8);
  v19(v17, v8);
  v28 = sub_240A2A02C();
  v20 = *(v30 + 8);
  v21 = v7;
  v22 = v31;
  v20(v21, v31);
  sub_240A2BC5C();
  v23 = v29;
  sub_240A297BC();
  v19(v14, v8);
  v24 = sub_240A2A03C();
  v20(v23, v22);
  return v28 == 2 || v24 == 2;
}

uint64_t SetupView.shouldAutoDismiss.getter()
{
  v1 = (v0 + *(type metadata accessor for SetupView() + 80));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0](&v6, v4);
  return v6;
}

void *sub_240987704@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SetupView() + 80));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  result = MEMORY[0x245CCC9B0](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_240987780(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for SetupView() + 80));
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  return sub_240A2BCFC();
}

uint64_t SetupView.shouldAutoDismiss.setter()
{
  v1 = (v0 + *(type metadata accessor for SetupView() + 80));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  return sub_240A2BCFC();
}

uint64_t (*SetupView.shouldAutoDismiss.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for SetupView() + 80));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0]();
  return sub_240987928;
}

uint64_t SetupView.$shouldAutoDismiss.getter()
{
  v1 = (v0 + *(type metadata accessor for SetupView() + 80));
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  sub_240A2BD1C();
  return v3;
}

uint64_t SetupView.isPreEstablishedClient.getter()
{
  v1 = (v0 + *(type metadata accessor for SetupView() + 84));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0](&v6, v4);
  return v6;
}

void *sub_240987A00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SetupView() + 84));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  result = MEMORY[0x245CCC9B0](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_240987A7C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for SetupView() + 84));
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  return sub_240A2BCFC();
}

uint64_t SetupView.isPreEstablishedClient.setter()
{
  v1 = (v0 + *(type metadata accessor for SetupView() + 84));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  return sub_240A2BCFC();
}

uint64_t (*SetupView.isPreEstablishedClient.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for SetupView() + 84));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0]();
  return sub_240998AA0;
}

void sub_240987C24(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 48);
  v5 = *(v1 + 19);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 18) = v2;
  sub_240A2BCFC();

  free(v1);
}

uint64_t SetupView.$isPreEstablishedClient.getter()
{
  v1 = (v0 + *(type metadata accessor for SetupView() + 84));
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  sub_240A2BD1C();
  return v3;
}

uint64_t sub_240987D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_240A2A24C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_240A2C21C();
  v3[11] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v3[12] = v8;
  v3[13] = v7;

  return MEMORY[0x2822009F8](sub_240987E24, v8, v7);
}

uint64_t sub_240987E24()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = sub_240A2A19C();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v3 + 104))(v1, *MEMORY[0x277CED8D0], v2);
  v6 = *(MEMORY[0x277CED838] + 4);
  v12 = (*MEMORY[0x277CED838] + MEMORY[0x277CED838]);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_240987F48;
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[4];

  return v12(v8, v9);
}

uint64_t sub_240987F48()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  v2[15] = v0;

  v8 = *(v5 + 8);
  v2[16] = v8;
  v2[17] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[13];
  v10 = v2[12];
  if (v0)
  {
    v11 = sub_2409883D8;
  }

  else
  {
    v11 = sub_2409880F4;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2409880F4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  if ((*(v5 + 88))(v3, v4) == *MEMORY[0x277CED8D8])
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 72);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = *(v0 + 16);
    (*(v0 + 128))(*(v0 + 80), v11);
    (*(v12 + 96))(v9, v11);
    v14 = sub_240A2A1AC();
    (*(*(v14 - 8) + 32))(v13, v9, v14);
  }

  else
  {
    v28 = *(v0 + 136);
    v29 = *(v0 + 128);
    v16 = *(v0 + 80);
    v17 = *(v0 + 56);
    v18 = *(v0 + 40);
    v29(*(v0 + 64), v18);
    v19 = sub_240A2976C();
    sub_24099885C(&qword_27E50C518, MEMORY[0x277CED2E0]);
    swift_allocError();
    v21 = v20;
    sub_240A2C47C();

    v6(v17, v16, v18);
    v22 = sub_240A2BF9C();
    MEMORY[0x245CCCD90](v22);

    *v21 = 0xD000000000000023;
    v21[1] = 0x8000000240A3D7A0;
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277CED290], v19);
    swift_willThrow();
    v29(v16, v18);
    v24 = *(v0 + 72);
    v23 = *(v0 + 80);
    v26 = *(v0 + 56);
    v25 = *(v0 + 64);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2409883D8()
{
  v1 = v0[11];

  v2 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_240988468()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24094DBBC;

  return sub_240988514();
}

uint64_t sub_240988514()
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
  v8 = *(type metadata accessor for SetupView() - 8);
  v1[16] = v8;
  v1[17] = *(v8 + 64);
  v1[18] = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v1[19] = v9;
  v1[20] = *(v9 + 64);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = sub_240A2C21C();
  v1[24] = sub_240A2C20C();
  v11 = sub_240A2C1BC();
  v1[25] = v11;
  v1[26] = v10;

  return MEMORY[0x2822009F8](sub_240988740, v11, v10);
}

uint64_t sub_240988740()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[27] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CEDE70] + 4);
  v4 = swift_task_alloc();
  v0[28] = v4;
  v5 = sub_240A29ACC();
  *v4 = v0;
  v4[1] = sub_240988814;
  v6 = v0[22];

  return MEMORY[0x2821400E8](v6, &unk_240A34BF8, v2, v5);
}

uint64_t sub_240988814()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_240988958, v5, v4);
}

uint64_t sub_240988958()
{
  v1 = v0[22];
  v2 = v0[9];
  v3 = sub_24098743C();
  if (sub_240996F78(v1, v3))
  {
    v0[29] = *(v0[9] + 32);
    sub_240A2A1DC();
    sub_24099885C(&qword_27E50D2D8, MEMORY[0x277CED848]);
    v4 = sub_240A2C1BC();
    v6 = v5;
    v7 = sub_240988B0C;
    v8 = v4;
    v9 = v6;
  }

  else
  {
    if (qword_27E50AF58 != -1)
    {
      swift_once();
    }

    v10 = sub_240A2B00C();
    __swift_project_value_buffer(v10, qword_27E50D050);
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C28C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2408FE000, v11, v12, "Teen Prox Setup User cancelled - not reporting result to avoid proceeding to next Buddy step", v13, 2u);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    v7 = sub_240988E30;
    v8 = 0;
    v9 = 0;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_240988B0C()
{
  v1 = v0[29];
  v0[30] = sub_240A2A1CC();
  v2 = v0[25];
  v3 = v0[26];

  return MEMORY[0x2822009F8](sub_240988B74, v2, v3);
}

uint64_t sub_240988B74()
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
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[11];
  v8 = v0[10];
  sub_2409963A8(v0[9], v6, type metadata accessor for SetupView);
  sub_240919298(v2, v1, &qword_27E50C6E0, &qword_240A32F18);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = (v5 + *(v4 + 80) + v9) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_240995610(v6, v11 + v9);
  sub_2409974DC(v1, v11 + v10);
  v0[6] = sub_24099754C;
  v0[7] = v11;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2409EC704;
  v0[5] = &block_descriptor_12;
  v12 = _Block_copy(v0 + 2);
  sub_240A2BE5C();
  v0[8] = MEMORY[0x277D84F90];
  sub_24099885C(&qword_27E50CF10, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF90, &unk_240A30E50);
  sub_24091CE28(&qword_27E50CF20, &qword_27E50EF90, &unk_240A30E50);
  sub_240A2C3FC();
  MEMORY[0x245CCD000](0, v15, v16, v12);
  _Block_release(v12);

  (*(v17 + 8))(v16, v8);
  (*(v19 + 8))(v15, v20);
  v13 = v0[7];

  return MEMORY[0x2822009F8](sub_240988E30, 0, 0);
}

uint64_t sub_240988E30()
{
  v1 = *(v0 + 184);
  *(v0 + 248) = sub_240A2C20C();
  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240988EBC, v3, v2);
}

uint64_t sub_240988EBC()
{
  v1 = v0[31];
  v2 = v0[9];

  sub_2409898C0();
  v3 = v0[25];
  v4 = v0[26];

  return MEMORY[0x2822009F8](sub_240988F28, v3, v4);
}

uint64_t sub_240988F28()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];

  sub_240919300(v3, &qword_27E50C6E0, &qword_240A32F18);

  v7 = v0[1];

  return v7();
}

uint64_t sub_240988FE8(uint64_t a1)
{
  v1[2] = sub_240A2C21C();
  v1[3] = sub_240A2C20C();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_24097BAF4;

  return sub_2409890A8(a1);
}

uint64_t sub_2409890A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for SetupView() - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  v4 = sub_240A2AB8C();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_240A29C8C();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_240A29C7C();
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

  return MEMORY[0x2822009F8](sub_2409892CC, v14, v13);
}

uint64_t sub_2409892CC()
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
  sub_240A29C6C();
  v8(v1);
  (*(v3 + 16))(v1, v2, v4);
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  sub_240A2C32C();
  sub_2409963A8(v7, v6, type metadata accessor for SetupView);
  v10 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v11 = swift_allocObject();
  sub_240995610(v6, v11 + v10);
  sub_240A2AB7C();
  sub_240A29BEC();
  (*(v22 + 8))(v5, v20);
  sub_240A29C3C();
  v12 = *(v0[3] + 32);
  v13 = *(MEMORY[0x277CED840] + 4);
  v24 = (*MEMORY[0x277CED840] + MEMORY[0x277CED840]);
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_240989598;
  v15 = v0[12];
  v16 = v0[2];

  return v24(v16, v15);
}

uint64_t sub_240989598()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_2409897D0;
  }

  else
  {
    v7 = sub_2409896D4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2409896D4()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v13 = v0[6];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v2, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2409897D0()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[22];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2409898C0()
{
  v1 = sub_240A2B2AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_240A2B00C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v28[-v15];
  v17 = (v0 + *(type metadata accessor for SetupView() + 80));
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v17) = *(v17 + 16);
  v30 = v18;
  v31 = v19;
  v32 = v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0](&v29, v20);
  if (v29 == 1)
  {
    sub_240A2AE7C();
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C28C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2408FE000, v21, v22, "Dismissing setup view & invalidating setup controller", v23, 2u);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    (*(v8 + 8))(v16, v7);
    sub_24098702C(v6);
    sub_240A2B29C();
    return (*(v2 + 8))(v6, v1);
  }

  else
  {
    sub_240A2AE7C();
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C28C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2408FE000, v25, v26, "Asked to dismiss but auto dismiss is disabled", v27, 2u);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    return (*(v8 + 8))(v13, v7);
  }
}

uint64_t sub_240989BB4()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v86 = *(v2 - 8);
  v3 = *(v86 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v75 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D368, &qword_240A34C98);
  v81 = *(v84 - 8);
  v11 = *(v81 + 64);
  v13 = MEMORY[0x28223BE20](v84, v12);
  v77 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v80 = &v75 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v83 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v75 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v88 = *(v25 - 8);
  v26 = *(v88 + 64);
  MEMORY[0x28223BE20](v25, v27);
  v85 = &v75 - v28;
  v29 = sub_240A2981C();
  v78 = *(v29 - 1);
  v79 = v29;
  v30 = *(v78 + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_240A297DC();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  v38 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF58 != -1)
  {
    swift_once();
  }

  v82 = v10;
  v87 = v2;
  __swift_project_value_buffer(v2, qword_27E50D050);
  v39 = sub_240A2AFFC();
  v40 = sub_240A2C28C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2408FE000, v39, v40, "User selected exit command (e.g., close button), cancelling back out", v41, 2u);
    MEMORY[0x245CCDDB0](v41, -1, -1);
  }

  v42 = *MEMORY[0x277CED270];
  v43 = sub_240A2976C();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v38, v42, v43);
  (*(v44 + 56))(v38, 0, 6, v43);
  v45 = type metadata accessor for SetupView();
  v46 = v45[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  sub_240A297FC();
  sub_240A2BC6C();
  v47 = v45[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);
  sub_240A2BC5C();
  v48 = v88;
  if ((*(v88 + 48))(v24, 1, v25) == 1)
  {
    sub_240919300(v24, &qword_27E50C700, &unk_240A32F50);
LABEL_11:
    sub_240A2AE7C();
    v69 = sub_240A2AFFC();
    v70 = sub_240A2C2AC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2408FE000, v69, v70, "onDisappear: No model coordination available, using direct assignment", v71, 2u);
      MEMORY[0x245CCDDB0](v71, -1, -1);
    }

    return (*(v86 + 8))(v7, v87);
  }

  v76 = v7;
  v49 = v85;
  (*(v48 + 32))(v85, v24, v25);
  v50 = (v1 + v45[11]);
  v51 = *(v50 + 2);
  v91 = *v50;
  v92 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2F0, &qword_240A34C10);
  sub_240A2BC5C();
  v52 = v89;
  if (!v89)
  {
    (*(v48 + 8))(v49, v25);
    v7 = v76;
    goto LABEL_11;
  }

  v75 = v90;
  sub_240A2BC5C();
  v53 = v83;
  v76 = v25;
  sub_240A29CAC();
  (*(v78 + 8))(v33, v79);
  v54 = v82;
  sub_240A2AE7C();
  v56 = v80;
  v55 = v81;
  v57 = *(v81 + 16);
  v58 = v84;
  v57(v80, v53, v84);
  v59 = sub_240A2AFFC();
  v60 = sub_240A2C29C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v91 = v79;
    *v61 = 136315138;
    v57(v77, v56, v58);
    v62 = sub_240A2BF9C();
    v64 = v63;
    v65 = v56;
    v66 = *(v55 + 8);
    v66(v65, v84);
    v67 = sub_240925464(v62, v64, &v91);
    v58 = v84;

    *(v61 + 4) = v67;
    _os_log_impl(&dword_2408FE000, v59, v60, "onDisappear: Sending user cancellation response: %s", v61, 0xCu);
    v68 = v79;
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x245CCDDB0](v68, -1, -1);
    MEMORY[0x245CCDDB0](v61, -1, -1);

    (*(v86 + 8))(v82, v87);
  }

  else
  {

    v73 = v56;
    v66 = *(v55 + 8);
    v66(v73, v58);
    (*(v86 + 8))(v54, v87);
  }

  v74 = v83;
  v52(v83);
  sub_24090C1A0(v52);
  v66(v74, v58);
  return (*(v88 + 8))(v85, v76);
}

uint64_t sub_24098A440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a2;
  v72 = a3;
  v76 = a1;
  v5 = sub_240A2981C();
  v75 = *(v5 - 8);
  v6 = *(v75 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v73 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v70 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v69 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v77 = *(v19 - 8);
  v20 = *(v77 + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v64 - v26;
  v28 = sub_240A2B00C();
  v67 = *(v28 - 8);
  v68 = v28;
  v29 = *(v67 + 64);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_240A2BE7C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  v38 = (&v64 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  *v38 = sub_240A2C32C();
  (*(v34 + 104))(v38, *MEMORY[0x277D85200], v33);
  v39 = sub_240A2BE8C();
  result = (*(v34 + 8))(v38, v33);
  if (v39)
  {
    v66 = v5;
    sub_240A2AE7C();
    v41 = v76;
    v42 = *(v77 + 16);
    v42(v27, v76, v19);
    v43 = sub_240A2AFFC();
    v44 = sub_240A2C29C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65 = a4;
      v47 = v46;
      *&v80 = v46;
      *v45 = 136315138;
      v42(v24, v27, v19);
      v48 = sub_240A2BF9C();
      v64 = v32;
      v49 = v42;
      v51 = v50;
      (*(v77 + 8))(v27, v19);
      v52 = sub_240925464(v48, v51, &v80);
      v42 = v49;

      *(v45 + 4) = v52;
      _os_log_impl(&dword_2408FE000, v43, v44, "SetupView updated with %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      v53 = v47;
      a4 = v65;
      MEMORY[0x245CCDDB0](v53, -1, -1);
      v54 = v45;
      v41 = v76;
      MEMORY[0x245CCDDB0](v54, -1, -1);

      (*(v67 + 8))(v64, v68);
    }

    else
    {

      (*(v77 + 8))(v27, v19);
      (*(v67 + 8))(v32, v68);
    }

    v55 = v69;
    v42(v69, v41, v19);
    (*(v77 + 56))(v55, 0, 1, v19);
    v56 = type metadata accessor for SetupView();
    v57 = v56[10];
    sub_240919298(v55, v70, &qword_27E50C700, &unk_240A32F50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);
    sub_240A2BC6C();
    sub_240919300(v55, &qword_27E50C700, &unk_240A32F50);
    v58 = (a4 + v56[11]);
    v59 = *(v58 + 2);
    v80 = *v58;
    v81 = v59;
    v60 = swift_allocObject();
    v61 = v72;
    *(v60 + 16) = v71;
    *(v60 + 24) = v61;
    v78 = sub_2409976C4;
    v79 = v60;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2F0, &qword_240A34C10);
    sub_240A2BC6C();
    v62 = v73;
    MEMORY[0x245CCA960](v19);
    v63 = v56[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
    sub_240A2BC5C();
    sub_240A2980C();
    (*(v75 + 8))(v62, v66);
    return sub_240A2BC6C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SetupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v81 = sub_240A2A10C();
  v90 = *(v81 - 8);
  v2 = *(v90 + 64);
  MEMORY[0x28223BE20](v81, v3);
  v77 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SetupView();
  v6 = v5 - 8;
  v79 = *(v5 - 8);
  v89 = *(v79 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v87 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240A297DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_240A2981C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D068, &qword_240A34920);
  v20 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74, v21);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D070, &qword_240A34928);
  v25 = *(v24 - 8);
  KeyPath = v24;
  v76 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v73 = &v72 - v28;
  v29 = *(v6 + 44);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  v84 = v1;
  v85 = v29;
  v86 = v30;
  sub_240A2BC5C();
  sub_240A297EC();
  v31 = *(v15 + 8);
  v82 = v15 + 8;
  v83 = v31;
  v31(v19, v14);
  SetupView.view(for:)(v13, v23);
  sub_2409987FC(v13, MEMORY[0x277CED338]);
  sub_240A2BC5C();
  v80 = type metadata accessor for SetupView;
  v32 = v87;
  sub_2409963A8(v1, v87, type metadata accessor for SetupView);
  v33 = *(v79 + 80);
  v34 = (v33 + 16) & ~v33;
  v78 = v34;
  v79 = v33;
  v35 = swift_allocObject();
  sub_240995610(v32, v35 + v34);
  v36 = sub_2409956F4();
  v37 = sub_24099885C(&qword_27E50D1C8, MEMORY[0x277CED360]);
  v38 = v74;
  sub_240A2BAFC();

  v39 = v83;
  v83(v19, v14);
  sub_240919300(v23, &qword_27E50D068, &qword_240A34920);
  v91 = v38;
  v92 = v14;
  v72 = v14;
  v93 = v36;
  v94 = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v88;
  v41 = KeyPath;
  v42 = v73;
  sub_240A2BA7C();
  v76[1](v42, v41);
  KeyPath = swift_getKeyPath();
  sub_240A2BC5C();
  v43 = v77;
  sub_240A297BC();
  v39(v19, v14);
  v44 = sub_240A2A03C();
  v45 = *(v90 + 8);
  v90 += 8;
  v76 = v45;
  v46 = v43;
  v47 = v43;
  v48 = v81;
  (v45)(v46, v81);
  v49 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1D0, &qword_240A349D0) + 36));
  v50 = v40;
  *v49 = KeyPath;
  v49[1] = v44;
  KeyPath = swift_getKeyPath();
  sub_240A2BC5C();
  sub_240A297BC();
  v51 = v72;
  v52 = v83;
  v83(v19, v72);
  v53 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1D8, &qword_240A349D8) + 36));
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE68, &qword_240A31CF8) + 28);
  sub_240A29FAC();
  v55 = v76;
  (v76)(v47, v48);
  *v53 = KeyPath;
  KeyPath = swift_getKeyPath();
  v56 = v84;
  sub_240A2BC5C();
  sub_240A297BC();
  v52(v19, v51);
  v57 = sub_240A2A02C();
  (v55)(v47, v48);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1E0, &qword_240A349E0);
  v59 = v88;
  v60 = (v88 + *(v58 + 36));
  *v60 = KeyPath;
  v60[1] = v57;
  v61 = swift_getKeyPath();
  v62 = *(v56 + 40);
  v63 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1E8, &qword_240A34A10) + 36));
  *v63 = v61;
  v63[1] = v62;
  v64 = swift_getKeyPath();
  v65 = v62;
  LOBYTE(v62) = sub_24098743C();
  v66 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1F0, &qword_240A34A18) + 36);
  *v66 = v64;
  *(v66 + 8) = v62 & 1;
  v67 = v87;
  sub_2409963A8(v56, v87, v80);
  v68 = v78;
  v69 = swift_allocObject();
  sub_240995610(v67, v69 + v68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1F8, &qword_240A34A20);
  v71 = (v59 + *(result + 36));
  *v71 = 0;
  v71[1] = 0;
  v71[2] = sub_240996330;
  v71[3] = v69;
  return result;
}

uint64_t SetupView.view(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v311 = a2;
  v306 = a1;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1A0, &qword_240A349B8);
  v2 = *(*(v295 - 1) + 64);
  MEMORY[0x28223BE20](v295, v3);
  v265 = &v243 - v4;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D150, &qword_240A34990);
  v5 = *(*(v253 - 8) + 64);
  MEMORY[0x28223BE20](v253, v6);
  v244 = &v243 - v7;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D200, &qword_240A34A28);
  v8 = *(*(v251 - 8) + 64);
  MEMORY[0x28223BE20](v251, v9);
  v249 = &v243 - v10;
  v287 = type metadata accessor for SetupView();
  v245 = *(v287 - 8);
  v11 = *(v245 + 64);
  MEMORY[0x28223BE20](v287, v12);
  v246 = v13;
  v247 = &v243 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D720, &unk_240A337B0);
  v14 = *(*(v250 - 8) + 64);
  MEMORY[0x28223BE20](v250, v15);
  v248 = &v243 - v16;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D140, &qword_240A34988);
  v17 = *(*(v277 - 8) + 64);
  MEMORY[0x28223BE20](v277, v18);
  v252 = &v243 - v19;
  v305 = sub_240A2976C();
  v20 = *(v305 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v305, v22);
  v283 = &v243 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v296 = &v243 - v26;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D208, &qword_240A34A30);
  v27 = *(*(v289 - 8) + 64);
  MEMORY[0x28223BE20](v289, v28);
  v290 = &v243 - v29;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D210, &qword_240A34A38);
  v30 = *(*(v274 - 8) + 64);
  MEMORY[0x28223BE20](v274, v31);
  v275 = &v243 - v32;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D110, &qword_240A34970);
  v33 = *(*(v288 - 8) + 64);
  MEMORY[0x28223BE20](v288, v34);
  v276 = &v243 - v35;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D100, &qword_240A34968);
  v36 = *(*(v310 - 8) + 64);
  MEMORY[0x28223BE20](v310, v37);
  v292 = &v243 - v38;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D120, &qword_240A34978);
  v39 = *(*(v273 - 8) + 64);
  MEMORY[0x28223BE20](v273, v40);
  v262 = &v243 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8, v44);
  v272 = &v243 - v45;
  v281 = type metadata accessor for SignInView();
  v46 = *(*(v281 - 1) + 64);
  MEMORY[0x28223BE20](v281, v47);
  v264 = &v243 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D220, &qword_240A34A48);
  v49 = *(*(v279 - 8) + 64);
  MEMORY[0x28223BE20](v279, v50);
  v280 = &v243 - v51;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0E0, &qword_240A34960);
  v52 = *(*(v303 - 8) + 64);
  MEMORY[0x28223BE20](v303, v53);
  v282 = (&v243 - v54);
  v270 = sub_240A2A10C();
  v269 = *(v270 - 8);
  v55 = *(v269 + 64);
  v57 = MEMORY[0x28223BE20](v270, v56);
  v261 = &v243 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v59);
  v268 = &v243 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8, v63);
  v271 = &v243 - v64;
  v278 = type metadata accessor for AuthenticationView();
  v65 = *(*(v278 - 8) + 64);
  MEMORY[0x28223BE20](v278, v66);
  v263 = &v243 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_240A2975C();
  v293 = *(v294 - 8);
  v68 = *(v293 + 64);
  v70 = MEMORY[0x28223BE20](v294, v69);
  v291 = &v243 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70, v72);
  v304 = &v243 - v73;
  v260 = sub_240A29AFC();
  v259 = *(v260 - 8);
  v74 = *(v259 + 64);
  MEMORY[0x28223BE20](v260, v75);
  v258 = &v243 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_240A29B5C();
  v255 = *(v257 - 8);
  v77 = *(v255 + 64);
  MEMORY[0x28223BE20](v257, v78);
  v254 = &v243 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_240A2981C();
  v286 = *(v298 - 8);
  v80 = *(v286 + 64);
  v82 = MEMORY[0x28223BE20](v298, v81);
  v256 = &v243 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x28223BE20](v82, v84);
  v266 = &v243 - v86;
  MEMORY[0x28223BE20](v85, v87);
  v285 = &v243 - v88;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D228, &qword_240A34A58);
  v89 = *(*(v297 - 8) + 64);
  v91 = MEMORY[0x28223BE20](v297, v90);
  v267 = &v243 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91, v93);
  v284 = &v243 - v94;
  v95 = type metadata accessor for DiscoveryView();
  v96 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95, v97);
  v99 = &v243 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D230, &qword_240A34A60);
  v100 = *(*(v307 - 8) + 64);
  MEMORY[0x28223BE20](v307, v101);
  v309 = &v243 - v102;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D238, &qword_240A34A68);
  v103 = *(*(v299 - 8) + 64);
  MEMORY[0x28223BE20](v299, v104);
  v301 = &v243 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D240, &qword_240A34A70);
  v107 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106, v108);
  v110 = (&v243 - v109);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0A0, &qword_240A34940);
  v111 = *(*(v300 - 8) + 64);
  MEMORY[0x28223BE20](v300, v112);
  v114 = &v243 - v113;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D090, &qword_240A34938);
  v115 = *(*(v308 - 8) + 64);
  MEMORY[0x28223BE20](v308, v116);
  v302 = &v243 - v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0B0, &qword_240A34948);
  v119 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118, v120);
  v122 = &v243 - v121;
  v123 = sub_240A297DC();
  v124 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123 - 8, v125);
  v127 = &v243 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2409963A8(v306, v127, MEMORY[0x277CED338]);
  v128 = v20;
  v129 = *(v20 + 48);
  v130 = v305;
  v131 = v129(v127, 6);
  if (v131 > 2)
  {
    if (v131 <= 4)
    {
      if (v131 == 3)
      {
        v132 = v287;
        v133 = *(v287 + 36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
        v134 = v312;
        v135 = v284;
        sub_240A2BC7C();
        swift_getKeyPath();
        sub_240A2BD0C();

        sub_240919300(v135, &qword_27E50D228, &qword_240A34A58);
        v306 = *(v134 + *(v132 + 76));
        v136 = v306;
        v137 = v285;
        sub_240A2BC5C();
        sub_240A297CC();
        v138 = *(v286 + 8);
        v139 = v298;
        v138(v137, v298);
        v140 = v266;
        sub_240A2BC5C();
        v141 = v268;
        sub_240A297BC();
        v138(v140, v139);
        LODWORD(v305) = sub_240A2A07C();
        v142 = *(v269 + 8);
        v143 = v141;
        v144 = v270;
        v142(v143, v270);
        v145 = v256;
        sub_240A2BC5C();
        v146 = v261;
        sub_240A297BC();
        v138(v145, v139);
        v147 = sub_240A29DFC();
        v149 = v148;
        v142(v146, v144);
        v150 = v278;
        v151 = *(v278 + 28);
        v313 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
        sub_240A2BC4C();
        v152 = v263;
        *&v263[v151] = v315;
        v153 = v150[8];
        v313 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D6F0, &qword_240A34B08);
        sub_240A2BC4C();
        *(v152 + v153) = v315;
        v154 = v150[9];
        v313 = 0;
        sub_240A2BC4C();
        *(v152 + v154) = v315;
        v155 = v152 + v150[12];
        *v155 = swift_getKeyPath();
        v155[8] = 0;
        v156 = v152 + v150[13];
        *v156 = swift_getKeyPath();
        v156[8] = 0;
        v157 = v150[14];
        *&v315 = 0;
        v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D248, &unk_240A34FB0);
        v159 = *(v158 + 48);
        v160 = *(v158 + 52);
        swift_allocObject();
        *(v152 + v157) = sub_240A2AF1C();
        v161 = v271;
        sub_240919298(v271, v152 + v150[5], &qword_27E50D700, &qword_240A34A50);
        v162 = (v152 + v150[6]);
        *v162 = v147;
        v162[1] = v149;
        *v152 = v306;
        LOBYTE(v313) = v305 & 1;
        sub_240A2BC4C();
        v163 = *(&v315 + 1);
        v164 = v152 + v150[10];
        *v164 = v315;
        *(v164 + 1) = v163;
        v165 = v293;
        v166 = v304;
        v167 = v294;
        (*(v293 + 16))(v291, v304, v294);
        v168 = v152 + v150[11];
        sub_240A2BC4C();
        (*(v165 + 8))(v166, v167);
        sub_240919300(v161, &qword_27E50D700, &qword_240A34A50);
        sub_2409963A8(v152, v280, type metadata accessor for AuthenticationView);
        swift_storeEnumTagMultiPayload();
        sub_24099885C(&qword_27E50D0E8, type metadata accessor for AuthenticationView);
        sub_24099885C(&qword_27E50D0F0, type metadata accessor for SignInView);
        v169 = v282;
        sub_240A2B6EC();
        sub_240919298(v169, v301, &qword_27E50D0E0, &qword_240A34960);
        swift_storeEnumTagMultiPayload();
        sub_24099580C();
        sub_240995A38();
        v170 = v302;
        sub_240A2B6EC();
        sub_240919300(v169, &qword_27E50D0E0, &qword_240A34960);
        sub_240919298(v170, v309, &qword_27E50D090, &qword_240A34938);
        swift_storeEnumTagMultiPayload();
        sub_240995780();
        sub_240995B24();
        sub_240A2B6EC();
        sub_240919300(v170, &qword_27E50D090, &qword_240A34938);
        return sub_2409987FC(v152, type metadata accessor for AuthenticationView);
      }

      else
      {
        v211 = *(v287 + 36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
        v212 = v284;
        sub_240A2BC7C();
        swift_getKeyPath();
        sub_240A2BD0C();

        sub_240919300(v212, &qword_27E50D228, &qword_240A34A58);
        v213 = v285;
        sub_240A2BC5C();
        sub_240A297CC();
        v214 = *(v286 + 8);
        v215 = v213;
        v216 = v298;
        v214(v215, v298);
        v217 = v266;
        sub_240A2BC5C();
        v218 = v268;
        sub_240A297BC();
        v214(v217, v216);
        LOBYTE(v214) = sub_240A2A07C();
        (*(v269 + 8))(v218, v270);
        v219 = v267;
        sub_240A2BC7C();
        swift_getKeyPath();
        v220 = v281;
        v221 = v264;
        v222 = &v264[v281[9]];
        sub_240A2BD0C();

        sub_240919300(v219, &qword_27E50D228, &qword_240A34A58);
        v223 = v220[5];
        v313 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
        sub_240A2BC4C();
        *(v221 + v223) = v315;
        v224 = v221 + v220[10];
        *v224 = swift_getKeyPath();
        *(v224 + 8) = 0;
        v225 = v272;
        sub_240919298(v272, v221, &qword_27E50D218, &qword_240A34A40);
        *(v221 + v220[6]) = 0;
        v226 = v293;
        v227 = v304;
        v228 = v294;
        (*(v293 + 16))(v291, v304, v294);
        v229 = v221 + v220[7];
        sub_240A2BC4C();
        LOBYTE(v313) = v214 & 1;
        sub_240A2BC4C();
        (*(v226 + 8))(v227, v228);
        sub_240919300(v225, &qword_27E50D218, &qword_240A34A40);
        v230 = *(&v315 + 1);
        v231 = v221 + v220[8];
        *v231 = v315;
        *(v231 + 8) = v230;
        sub_2409963A8(v221, v280, type metadata accessor for SignInView);
        swift_storeEnumTagMultiPayload();
        sub_24099885C(&qword_27E50D0E8, type metadata accessor for AuthenticationView);
        sub_24099885C(&qword_27E50D0F0, type metadata accessor for SignInView);
        v232 = v282;
        sub_240A2B6EC();
        sub_240919298(v232, v301, &qword_27E50D0E0, &qword_240A34960);
        swift_storeEnumTagMultiPayload();
        sub_24099580C();
        sub_240995A38();
        v233 = v302;
        sub_240A2B6EC();
        sub_240919300(v232, &qword_27E50D0E0, &qword_240A34960);
        sub_240919298(v233, v309, &qword_27E50D090, &qword_240A34938);
        swift_storeEnumTagMultiPayload();
        sub_240995780();
        sub_240995B24();
        sub_240A2B6EC();
        sub_240919300(v233, &qword_27E50D090, &qword_240A34938);
        return sub_2409987FC(v221, type metadata accessor for SignInView);
      }
    }

    if (v131 == 5)
    {
      v178 = v262;
      sub_24098F6F0(v262);
      v173 = &qword_27E50D120;
      v174 = &qword_240A34978;
      sub_240919298(v178, v275, &qword_27E50D120, &qword_240A34978);
      swift_storeEnumTagMultiPayload();
      sub_240995C3C();
      sub_240995DAC();
      v179 = v276;
      sub_240A2B6EC();
      sub_240919298(v179, v290, &qword_27E50D110, &qword_240A34970);
      swift_storeEnumTagMultiPayload();
      sub_240995BB0();
      sub_2409961EC();
      v180 = v292;
      sub_240A2B6EC();
      sub_240919300(v179, &qword_27E50D110, &qword_240A34970);
      sub_240919298(v180, v309, &qword_27E50D100, &qword_240A34968);
      swift_storeEnumTagMultiPayload();
      sub_240995780();
      sub_240995B24();
      sub_240A2B6EC();
      sub_240919300(v180, &qword_27E50D100, &qword_240A34968);
      v177 = v178;
    }

    else
    {
      v234 = v265;
      sub_240991A5C(v265);
      v173 = &qword_27E50D1A0;
      v174 = &qword_240A349B8;
      sub_240919298(v234, v290, &qword_27E50D1A0, &qword_240A349B8);
      swift_storeEnumTagMultiPayload();
      sub_240995BB0();
      sub_2409961EC();
      v235 = v292;
      sub_240A2B6EC();
      sub_240919298(v235, v309, &qword_27E50D100, &qword_240A34968);
      swift_storeEnumTagMultiPayload();
      sub_240995780();
      sub_240995B24();
      sub_240A2B6EC();
      sub_240919300(v235, &qword_27E50D100, &qword_240A34968);
      v177 = v234;
    }

    return sub_240919300(v177, v173, v174);
  }

  v279 = v118;
  v280 = v106;
  v281 = v110;
  v282 = v95;
  v306 = v114;
  v172 = v283;
  if (v131)
  {
    if (v131 != 1)
    {
      v188 = v287;
      v189 = *(v287 + 36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
      v190 = v312;
      v191 = v284;
      sub_240A2BC7C();
      swift_getKeyPath();
      sub_240A2BD0C();

      sub_240919300(v191, &qword_27E50D228, &qword_240A34A58);
      v192 = v285;
      sub_240A2BC5C();
      v193 = v254;
      sub_240A2978C();
      v296 = *(v286 + 8);
      (v296)(v192, v298);
      v194 = v258;
      sub_240A29B0C();
      (*(v255 + 8))(v193, v257);
      LODWORD(v305) = sub_240A29AEC();
      (*(v259 + 8))(v194, v260);
      v295 = *(v190 + *(v188 + 72));
      v195 = v295;
      v196 = v267;
      sub_240A2BC7C();
      swift_getKeyPath();
      v197 = v282;
      v198 = &v99[v282[8]];
      sub_240A2BD0C();

      sub_240919300(v196, &qword_27E50D228, &qword_240A34A58);
      sub_240A2BC5C();
      v199 = v304;
      sub_240A297CC();
      (v296)(v192, v298);
      v200 = &v99[v197[5]];
      v313 = 0;
      v314 = 0xE000000000000000;
      sub_240A2BC4C();
      v201 = v316;
      *v200 = v315;
      *(v200 + 2) = v201;
      v99[v197[6]] = v305 & 1;
      *&v99[v197[7]] = v295;
      v202 = v197[9];
      v203 = v293;
      v204 = v294;
      (*(v293 + 16))(v291, v199, v294);
      sub_240A2BC4C();
      (*(v203 + 8))(v199, v204);
      v205 = v197[10];
      *&v99[v205] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
      swift_storeEnumTagMultiPayload();
      v206 = v197[11];
      *&v99[v206] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v207 = &v99[v197[12]];
      *v207 = swift_getKeyPath();
      v207[8] = 0;
      v208 = &v99[v197[13]];
      *v208 = swift_getKeyPath();
      v208[8] = 0;
      sub_2409963A8(v99, v281, type metadata accessor for DiscoveryView);
      swift_storeEnumTagMultiPayload();
      sub_2409958C8();
      sub_24099885C(&qword_27E50CA58, type metadata accessor for DiscoveryView);
      v209 = v306;
      sub_240A2B6EC();
      sub_240919298(v209, v301, &qword_27E50D0A0, &qword_240A34940);
      swift_storeEnumTagMultiPayload();
      sub_24099580C();
      sub_240995A38();
      v210 = v302;
      sub_240A2B6EC();
      sub_240919300(v209, &qword_27E50D0A0, &qword_240A34940);
      sub_240919298(v210, v309, &qword_27E50D090, &qword_240A34938);
      swift_storeEnumTagMultiPayload();
      sub_240995780();
      sub_240995B24();
      sub_240A2B6EC();
      sub_240919300(v210, &qword_27E50D090, &qword_240A34938);
      return sub_2409987FC(v99, type metadata accessor for DiscoveryView);
    }

    sub_24098EC70(v122);
    v173 = &qword_27E50D0B0;
    v174 = &qword_240A34948;
    sub_240919298(v122, v281, &qword_27E50D0B0, &qword_240A34948);
    swift_storeEnumTagMultiPayload();
    sub_2409958C8();
    sub_24099885C(&qword_27E50CA58, type metadata accessor for DiscoveryView);
    v175 = v306;
    sub_240A2B6EC();
    sub_240919298(v175, v301, &qword_27E50D0A0, &qword_240A34940);
    swift_storeEnumTagMultiPayload();
    sub_24099580C();
    sub_240995A38();
    v176 = v302;
    sub_240A2B6EC();
    sub_240919300(v175, &qword_27E50D0A0, &qword_240A34940);
    sub_240919298(v176, v309, &qword_27E50D090, &qword_240A34938);
    swift_storeEnumTagMultiPayload();
    sub_240995780();
    sub_240995B24();
    sub_240A2B6EC();
    sub_240919300(v176, &qword_27E50D090, &qword_240A34938);
    v177 = v122;
    return sub_240919300(v177, v173, v174);
  }

  v181 = v128;
  v182 = *(v128 + 32);
  v183 = v296;
  v184 = v130;
  v182(v296, v127, v130);
  (*(v181 + 16))(v172, v183, v130);
  v185 = (*(v181 + 88))(v172, v130);
  if (v185 == *MEMORY[0x277CED2D8] || v185 == *MEMORY[0x277CED270] || v185 == *MEMORY[0x277CED268])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    v236 = v248;
    sub_240A2B21C();
    v237 = v247;
    sub_2409963A8(v312, v247, type metadata accessor for SetupView);
    v238 = (*(v245 + 80) + 16) & ~*(v245 + 80);
    v239 = swift_allocObject();
    sub_240995610(v237, v239 + v238);
    v240 = (v236 + *(v250 + 36));
    *v240 = sub_240996348;
    v240[1] = v239;
    v240[2] = 0;
    v240[3] = 0;
    sub_240919298(v236, v249, &unk_27E50D720, &unk_240A337B0);
    swift_storeEnumTagMultiPayload();
    sub_240972F80();
    sub_240995E38();
    v187 = v252;
    sub_240A2B6EC();
    sub_240919300(v236, &unk_27E50D720, &unk_240A337B0);
  }

  else
  {
    v186 = v244;
    sub_24098FEAC(v183, v244);
    sub_240919298(v186, v249, &qword_27E50D150, &qword_240A34990);
    swift_storeEnumTagMultiPayload();
    sub_240972F80();
    sub_240995E38();
    v187 = v252;
    sub_240A2B6EC();
    sub_240919300(v186, &qword_27E50D150, &qword_240A34990);
    (*(v181 + 8))(v172, v130);
  }

  sub_240919298(v187, v275, &qword_27E50D140, &qword_240A34988);
  swift_storeEnumTagMultiPayload();
  sub_240995C3C();
  sub_240995DAC();
  v241 = v276;
  sub_240A2B6EC();
  sub_240919298(v241, v290, &qword_27E50D110, &qword_240A34970);
  swift_storeEnumTagMultiPayload();
  sub_240995BB0();
  sub_2409961EC();
  v242 = v292;
  sub_240A2B6EC();
  sub_240919300(v241, &qword_27E50D110, &qword_240A34970);
  sub_240919298(v242, v309, &qword_27E50D100, &qword_240A34968);
  swift_storeEnumTagMultiPayload();
  sub_240995780();
  sub_240995B24();
  sub_240A2B6EC();
  sub_240919300(v242, &qword_27E50D100, &qword_240A34968);
  sub_240919300(v187, &qword_27E50D140, &qword_240A34988);
  return (*(v181 + 8))(v296, v184);
}

void sub_24098D898(uint64_t a1, uint64_t a2, uint64_t (*a3)())
{
  v202 = a3;
  v185 = sub_240A2A10C();
  v184 = *(v185 - 8);
  v5 = *(v184 + 64);
  MEMORY[0x28223BE20](v185, v6);
  v183 = &v168[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v205 = type metadata accessor for SetupView();
  v8 = *(*(v205 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v205, v9);
  v195 = &v168[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10, v12);
  v194 = &v168[-v14];
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v168[-v17];
  v20 = MEMORY[0x28223BE20](v16, v19);
  v204 = &v168[-v21];
  MEMORY[0x28223BE20](v20, v22);
  v186 = &v168[-v23];
  v24 = sub_240A2B00C();
  v190 = *(v24 - 8);
  v25 = *(v190 + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v203 = &v168[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27, v29);
  v173 = &v168[-v30];
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v199 = *(v188 - 8);
  v31 = *(v199 + 64);
  MEMORY[0x28223BE20](v188, v32);
  v175 = &v168[-v33];
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v34 = *(*(v179 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v179, v35);
  v178 = &v168[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v36, v38);
  v187 = &v168[-v39];
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D368, &qword_240A34C98);
  v176 = *(v200 - 8);
  v40 = *(v176 + 64);
  v42 = MEMORY[0x28223BE20](v200, v41);
  v171 = &v168[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = MEMORY[0x28223BE20](v42, v44);
  v172 = &v168[-v46];
  v48 = MEMORY[0x28223BE20](v45, v47);
  v174 = &v168[-v49];
  MEMORY[0x28223BE20](v48, v50);
  v201 = &v168[-v51];
  v52 = sub_240A2BE7C();
  v197 = *(v52 - 8);
  v198 = v52;
  v53 = *(v197 + 64);
  MEMORY[0x28223BE20](v52, v54);
  v196 = &v168[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = sub_240A2981C();
  v57 = *(v56 - 8);
  v58 = v57[8];
  v60 = MEMORY[0x28223BE20](v56, v59);
  v182 = &v168[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = MEMORY[0x28223BE20](v60, v62);
  v65 = &v168[-v64];
  MEMORY[0x28223BE20](v63, v66);
  v68 = &v168[-v67];
  if (qword_27E50AF58 != -1)
  {
    swift_once();
  }

  v191 = v24;
  v69 = __swift_project_value_buffer(v24, qword_27E50D050);
  v70 = v57[2];
  v70(v68, a1, v56);
  v177 = a2;
  v70(v65, a2, v56);
  v189 = v69;
  v71 = sub_240A2AFFC();
  v72 = sub_240A2C29C();
  v73 = os_log_type_enabled(v71, v72);
  v192 = v56;
  v193 = v18;
  v181 = v57;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    *&v207 = v170;
    *v74 = 136315394;
    sub_24099885C(&qword_27E50D378, MEMORY[0x277CED360]);
    v75 = sub_240A2C62C();
    v169 = v72;
    v77 = v76;
    v78 = v57[1];
    v78(v68, v56);
    v79 = sub_240925464(v75, v77, &v207);

    *(v74 + 4) = v79;
    *(v74 + 12) = 2080;
    v80 = sub_240A2C62C();
    v82 = v81;
    v180 = v78;
    v78(v65, v56);
    v83 = sub_240925464(v80, v82, &v207);

    *(v74 + 14) = v83;
    _os_log_impl(&dword_2408FE000, v71, v169, "Setup: onChange, \n==== oldValue ===\n %s \n\n==== newValue ===\n %s", v74, 0x16u);
    v84 = v170;
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v84, -1, -1);
    MEMORY[0x245CCDDB0](v74, -1, -1);
  }

  else
  {

    v85 = v57[1];
    v85(v65, v56);
    v180 = v85;
    v85(v68, v56);
  }

  v86 = v203;
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  v87 = sub_240A2C32C();
  v89 = v196;
  v88 = v197;
  *v196 = v87;
  v90 = v198;
  (*(v88 + 104))(v89, *MEMORY[0x277D85200], v198);
  v91 = sub_240A2BE8C();
  (*(v88 + 8))(v89, v90);
  v92 = v204;
  v93 = v205;
  v94 = v201;
  v95 = v202;
  v96 = v199;
  v97 = v200;
  if ((v91 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v98 = *(v205 + 40);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);
  v100 = v187;
  sub_240A2BC5C();
  v101 = v100;
  v102 = v100;
  v103 = v188;
  if ((*(v96 + 48))(v102, 1, v188))
  {
    sub_240919300(v101, &qword_27E50C700, &unk_240A32F50);
  }

  else
  {
    v198 = v99;
    v125 = v97;
    v126 = v175;
    (*(v96 + 16))(v175, v101, v103);
    sub_240919300(v101, &qword_27E50C700, &unk_240A32F50);
    v127 = v174;
    sub_240A29CAC();
    v128 = v126;
    v129 = v125;
    (*(v96 + 8))(v128, v103);
    v130 = v176;
    (*(v176 + 32))(v94, v127, v125);
    v131 = v95 + *(v93 + 44);
    v132 = *(v131 + 2);
    v207 = *v131;
    v208 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2F0, &qword_240A34C10);
    sub_240A2BC5C();
    v133 = v206;
    if (v206)
    {
      v134 = v94;
      v135 = *(&v206 + 1);
      v136 = v173;
      sub_240A2AE7C();
      v137 = v129;
      v138 = *(v130 + 16);
      v139 = v172;
      v138(v172, v134, v137);
      v140 = sub_240A2AFFC();
      v141 = sub_240A2C29C();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v204 = v135;
        v143 = v130;
        v144 = v139;
        v145 = v137;
        v146 = v142;
        v203 = swift_slowAlloc();
        *&v207 = v203;
        *v146 = 136315138;
        v138(v171, v144, v145);
        v199 = sub_240A2BF9C();
        v148 = v147;
        v149 = *(v143 + 8);
        v149(v144, v145);
        v150 = sub_240925464(v199, v148, &v207);

        *(v146 + 4) = v150;
        _os_log_impl(&dword_2408FE000, v140, v141, "[onChange] Sending response: %s", v146, 0xCu);
        v151 = v203;
        __swift_destroy_boxed_opaque_existential_0(v203);
        MEMORY[0x245CCDDB0](v151, -1, -1);
        MEMORY[0x245CCDDB0](v146, -1, -1);

        (*(v190 + 8))(v173, v191);
      }

      else
      {

        v149 = *(v130 + 8);
        v149(v139, v137);
        (*(v190 + 8))(v136, v191);
        v145 = v137;
      }

      v123 = v193;
      v152 = v201;
      v133(v201);
      sub_24090C1A0(v133);
      v149(v152, v145);
      v122 = v194;
      v124 = v195;
      v95 = v202;
      goto LABEL_19;
    }

    (*(v130 + 8))(v94, v125);
    v92 = v204;
  }

  sub_240A2AE7C();
  v104 = v186;
  sub_2409963A8(v95, v186, type metadata accessor for SetupView);
  sub_2409963A8(v95, v92, type metadata accessor for SetupView);
  v105 = sub_240A2AFFC();
  v106 = sub_240A2C2AC();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    v209 = v201;
    *v107 = 136315394;
    v108 = v205;
    v109 = &v104[*(v205 + 40)];
    sub_240A2BC5C();
    v110 = sub_240A2BF9C();
    v112 = v111;
    sub_2409987FC(v104, type metadata accessor for SetupView);
    v113 = sub_240925464(v110, v112, &v209);

    *(v107 + 4) = v113;
    *(v107 + 12) = 2080;
    v114 = v204;
    v115 = v204 + *(v108 + 44);
    v116 = *(v115 + 2);
    v207 = *v115;
    v208 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2F0, &qword_240A34C10);
    sub_240A2BC5C();
    v207 = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
    v117 = sub_240A2BF9C();
    v119 = v118;
    sub_2409987FC(v114, type metadata accessor for SetupView);
    v120 = sub_240925464(v117, v119, &v209);

    *(v107 + 14) = v120;
    _os_log_impl(&dword_2408FE000, v105, v106, "[onChange] Unable to send response, no modelSender available: %s %s", v107, 0x16u);
    v121 = v201;
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v121, -1, -1);
    MEMORY[0x245CCDDB0](v107, -1, -1);

    (*(v190 + 8))(v203, v191);
  }

  else
  {

    sub_2409987FC(v104, type metadata accessor for SetupView);
    (*(v190 + 8))(v86, v191);
    sub_2409987FC(v92, type metadata accessor for SetupView);
  }

  v123 = v193;
  v122 = v194;
  v124 = v195;
LABEL_19:
  sub_2409963A8(v95, v123, type metadata accessor for SetupView);
  sub_2409963A8(v95, v122, type metadata accessor for SetupView);
  sub_2409963A8(v95, v124, type metadata accessor for SetupView);
  v153 = sub_240A2AFFC();
  v154 = sub_240A2C29C();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    *v155 = 67109632;
    LODWORD(v203) = v154;
    v156 = sub_24098743C();
    v202 = type metadata accessor for SetupView;
    sub_2409987FC(v123, type metadata accessor for SetupView);
    *(v155 + 4) = v156;
    *(v155 + 8) = 1024;
    v204 = v153;
    v157 = v205;
    v158 = *(v205 + 36);
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
    v159 = v182;
    sub_240A2BC5C();
    v160 = v183;
    sub_240A297BC();
    v200 = (v181 + 1);
    v161 = v180;
    v180(v159, v192);
    v162 = sub_240A2A02C();
    v199 = *(v184 + 8);
    v163 = v185;
    (v199)(v160, v185);
    v164 = v122;
    v165 = v202;
    sub_2409987FC(v164, v202);
    *(v155 + 10) = v162 == 2;
    *(v155 + 14) = 1024;
    v166 = v124 + *(v157 + 36);
    sub_240A2BC5C();
    sub_240A297BC();
    v153 = v204;
    v161(v159, v192);
    v167 = sub_240A2A03C();
    (v199)(v160, v163);
    sub_2409987FC(v124, v165);
    *(v155 + 16) = v167 == 2;
    _os_log_impl(&dword_2408FE000, v153, v203, "Is Teen Setup: %{BOOL}d\n peerIsTeen: %{BOOL}d\n IamTeen: %{BOOL}d", v155, 0x14u);
    MEMORY[0x245CCDDB0](v155, -1, -1);
  }

  else
  {
    sub_2409987FC(v124, type metadata accessor for SetupView);
    sub_2409987FC(v122, type metadata accessor for SetupView);
    sub_2409987FC(v123, type metadata accessor for SetupView);
  }
}

uint64_t keypath_get_9Tm@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_240A2B53C();
  *a2 = v4;
  return result;
}

uint64_t keypath_set_10Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();
  return sub_240A2B54C();
}

uint64_t sub_24098EB28@<X0>(void *a1@<X8>)
{
  sub_2409987A8();
  result = sub_240A2B53C();
  *a1 = v3;
  return result;
}

uint64_t sub_24098EB78(void **a1)
{
  v1 = *a1;
  sub_2409987A8();
  v2 = v1;
  return sub_240A2B54C();
}

uint64_t sub_24098EBD4@<X0>(_BYTE *a1@<X8>)
{
  sub_2409988A4();
  result = sub_240A2B53C();
  *a1 = v3;
  return result;
}

uint64_t sub_24098EC24(char *a1)
{
  v2 = *a1;
  sub_2409988A4();
  return sub_240A2B54C();
}

uint64_t sub_24098EC70@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2C8, &qword_240A34BC8);
  v2 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84, v3);
  v85 = &v74 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  v5 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83, v6);
  v74 = &v74 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2D0, &qword_240A34BD0);
  v8 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80, v9);
  v11 = &v74 - v10;
  v12 = type metadata accessor for SetupView();
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v78 = v15;
  v79 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0C0, &qword_240A34950);
  v16 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82, v17);
  v81 = &v74 - v18;
  v19 = sub_240A2A10C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_240A2981C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v12 + 36);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  v76 = v1;
  v89 = v32;
  v90 = v31;
  sub_240A2BC5C();
  sub_240A297BC();
  v33 = *(v26 + 8);
  v75 = v25;
  v88 = v33;
  v33(v30, v25);
  sub_240A29DFC();
  v35 = v34;
  v36 = v19;
  v87 = *(v20 + 8);
  v87(v24, v19);
  if (v35)
  {
    v37 = sub_240A2BF1C();
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  [v38 containsString:@"Mac"];

  v39 = v76;
  v40 = v76 + *(v12 + 84);
  v41 = *v40;
  v42 = *(v40 + 8);
  LOBYTE(v40) = *(v40 + 16);
  v93 = v41;
  v94 = v42;
  v95 = v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0](&v92, v43);
  v44 = v75;
  if (v92)
  {
    goto LABEL_9;
  }

  sub_240A2BC5C();
  sub_240A297BC();
  v88(v30, v44);
  sub_240A29DFC();
  v46 = v45;
  v87(v24, v36);
  if (v46)
  {
    v47 = sub_240A2BF1C();
  }

  else
  {
    v47 = 0;
  }

  v48 = v47;
  v49 = [v48 containsString:@"Mac"];

  if (v49)
  {
LABEL_9:
    sub_240A2BC5C();
    sub_240A297BC();
    v88(v30, v44);
    v50 = sub_240A29DFC();
    v52 = v51;
    v87(v24, v36);
    started = type metadata accessor for SetupStartViewController();
    v54 = objc_allocWithZone(started);
    v55 = &v54[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
    *v55 = v50;
    v55[1] = v52;
    v91.receiver = v54;
    v91.super_class = started;
    v56 = objc_msgSendSuper2(&v91, sel_initWithContentView_, 0);
    v92 = 1;
    sub_240A2BD3C();
    v57 = v93;
    v58 = v94;
    v59 = v95;
    sub_240A2C06C();
    v60 = v56;
    v61 = sub_240A2BF1C();

    [v60 showActivityIndicatorWithStatus_];

    LOBYTE(v61) = sub_240A2B88C();
    v62 = sub_240A2B3AC();
    v63 = v79;
    sub_2409963A8(v39, v79, type metadata accessor for SetupView);
    v64 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v65 = swift_allocObject();
    sub_240995610(v63, v65 + v64);
    v66 = MEMORY[0x277D84F90];
    *v11 = v60;
    *(v11 + 1) = v66;
    *(v11 + 2) = v57;
    *(v11 + 3) = v58;
    v11[32] = v59;
    *(v11 + 5) = v62;
    v11[48] = v61;
    *(v11 + 7) = sub_240996D34;
    *(v11 + 8) = v65;
    *(v11 + 9) = 0;
    *(v11 + 10) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0D0, &qword_240A34958);
    sub_240996848(&qword_27E50D0C8, &qword_27E50D0D0, &qword_240A34958, sub_240936BEC);
    sub_240972938();
    v67 = v81;
    sub_240A2B6EC();
  }

  else
  {
    v68 = v74;
    sub_240A2B22C();
    v69 = v79;
    sub_2409963A8(v39, v79, type metadata accessor for SetupView);
    v70 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v71 = swift_allocObject();
    sub_240995610(v69, v71 + v70);
    v72 = (v68 + *(v83 + 36));
    *v72 = sub_240996D54;
    v72[1] = v71;
    v72[2] = 0;
    v72[3] = 0;
    sub_240919298(v68, v11, &qword_27E50CA50, &unk_240A33750);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0D0, &qword_240A34958);
    sub_240996848(&qword_27E50D0C8, &qword_27E50D0D0, &qword_240A34958, sub_240936BEC);
    sub_240972938();
    v67 = v81;
    sub_240A2B6EC();
    sub_240919300(v68, &qword_27E50CA50, &unk_240A33750);
  }

  sub_240919298(v67, v85, &qword_27E50D0C0, &qword_240A34950);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
  sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
  sub_240995980();
  sub_240A2B6EC();
  return sub_240919300(v67, &qword_27E50D0C0, &qword_240A34950);
}

uint64_t sub_24098F584(uint64_t a1)
{
  v2 = sub_240A297DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  sub_2409963A8(a1, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277CED338]);
  return sub_240A297FC();
}

uint64_t sub_24098F620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_24098F6F0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for SetupView();
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v52 = sub_240A29DBC();
  v5 = *(v52 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v52, v7);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D2F8, &qword_240A34C20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D130, &qword_240A34980);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v45 - v18;
  v20 = v1;
  if (sub_24098743C())
  {
    sub_24099235C(v19);
    sub_240919298(v19, v14, &qword_27E50D130, &qword_240A34980);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240995CF4();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    sub_240A2B6EC();
    return sub_240919300(v19, &qword_27E50D130, &qword_240A34980);
  }

  else
  {
    v48 = v14;
    v50 = v10;
    v51 = v15;
    sub_240A2C06C();
    v45[0] = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_240987234(v9);
    sub_240A2C05C();
    (*(v5 + 8))(v9, v52);
    sub_240A2C06C();
    v45[1] = v3;

    v61 = 1;
    sub_240A2BD3C();
    v52 = aBlock;
    v49 = v56;
    v47 = v57;
    v61 = 1;
    sub_240A2BD3C();
    v22 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
    [v22 setDismissalType_];
    v23 = sub_240A2BF1C();

    [v22 setTitle_];

    v24 = sub_240A2BF1C();

    [v22 setSubtitle_];

    sub_240A2C06C();
    v46 = type metadata accessor for SetupView;
    v25 = v45[0];
    sub_2409963A8(v1, v45[0], type metadata accessor for SetupView);
    v26 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v27 = swift_allocObject();
    v28 = v25;
    sub_240995610(v25, v27 + v26);
    v29 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v30 = swift_allocObject();
    v30[2] = sub_240998AA4;
    v30[3] = v27;
    v30[4] = v29;
    v31 = v22;

    v32 = v31;
    v33 = sub_240A2BF1C();

    v59 = sub_2409977DC;
    v60 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v56 = 1107296256;
    v57 = sub_2409DFF20;
    v58 = &block_descriptor_101;
    v34 = _Block_copy(&aBlock);
    v35 = [objc_opt_self() actionWithTitle:v33 style:0 handler:v34];

    _Block_release(v34);

    v36 = [v32 addAction_];

    sub_2409963A8(v20, v28, v46);
    v37 = swift_allocObject();
    sub_240995610(v28, v37 + v26);
    LOBYTE(aBlock) = v47;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_2409977E8;
    *(v38 + 24) = v37;

    v39 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_240937AA4(0, v39[2] + 1, 1, v39);
    }

    v41 = v39[2];
    v40 = v39[3];
    v42 = v48;
    if (v41 >= v40 >> 1)
    {
      v39 = sub_240937AA4((v40 > 1), v41 + 1, 1, v39);
    }

    v39[2] = v41 + 1;
    v43 = &v39[2 * v41];
    v43[4] = sub_240997818;
    v43[5] = v38;
    LOBYTE(v43) = aBlock;
    *v42 = v32;
    *(v42 + 1) = v39;
    v44 = v49;
    *(v42 + 2) = v52;
    *(v42 + 3) = v44;
    v42[32] = v43;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240995CF4();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    return sub_240A2B6EC();
  }
}

uint64_t sub_24098FEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a1;
  v169 = a2;
  v149 = sub_240A2A10C();
  v148 = *(v149 - 8);
  v2 = *(v148 + 64);
  MEMORY[0x28223BE20](v149, v3);
  v5 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_240A2981C();
  v146 = *(v147 - 8);
  v6 = *(v146 + 64);
  MEMORY[0x28223BE20](v147, v7);
  v9 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for SetupView();
  v160 = *(v158 - 1);
  v10 = *(v160 + 8);
  MEMORY[0x28223BE20](v158, v11);
  v170 = v12;
  v13 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D308, &qword_240A34C40);
  v14 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166, v15);
  v168 = (&v142 - v16);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D310, &qword_240A34C48);
  v17 = *(*(v162 - 1) + 64);
  MEMORY[0x28223BE20](v162, v18);
  v163 = (&v142 - v19);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D160, &qword_240A34998);
  v20 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167, v21);
  v164 = &v142 - v22;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D318, &qword_240A34C50);
  v151 = *(v155 - 8);
  v23 = *(v151 + 64);
  MEMORY[0x28223BE20](v155, v24);
  v150 = &v142 - v25;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D320, &qword_240A34C58);
  v26 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152, v27);
  v154 = &v142 - v28;
  v29 = sub_240A29DBC();
  v157 = *(v29 - 8);
  v30 = *(v157 + 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D328, &qword_240A34C60);
  v145 = *(v153 - 8);
  v34 = *(v145 + 64);
  MEMORY[0x28223BE20](v153, v35);
  v144 = &v142 - v36;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D170, &qword_240A349A0);
  v37 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161, v38);
  v156 = &v142 - v39;
  v40 = sub_240A2A21C();
  v159 = *(v40 - 8);
  v41 = v159[8];
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v142 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_240A2976C();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45, v48);
  v50 = &v142 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v50, v165, v45);
  v51 = (*(v46 + 88))(v50, v45);
  if (v51 == *MEMORY[0x277CED2B0])
  {
    (*(v46 + 8))(v50, v45);
    v52 = _s14AppleIDSetupUI22ProxCardViewControllerC037newAuthenticationFailedMissingAccountefG0ACyFZ_0();
    LOBYTE(v181) = 1;
    sub_240A2BD3C();
    v158 = *(&aBlock + 1);
    v159 = aBlock;
    LODWORD(v165) = v173;
    sub_240A2C06C();
    v157 = type metadata accessor for SetupView;
    v53 = v13;
    sub_2409963A8(v171, v13, type metadata accessor for SetupView);
    v54 = (*(v160 + 80) + 16) & ~*(v160 + 80);
    v55 = swift_allocObject();
    sub_240995610(v13, v55 + v54);
    v56 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v57 = swift_allocObject();
    v57[2] = sub_2409981A4;
    v57[3] = v55;
    v57[4] = v56;
    v58 = v52;

    v59 = sub_240A2BF1C();

    v174 = sub_240998A78;
    v175 = v57;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v160 = &v173;
    *&v173 = sub_2409DFF20;
    *(&v173 + 1) = &block_descriptor_158;
    v60 = _Block_copy(&aBlock);
    v61 = objc_opt_self();
    v62 = [v61 actionWithTitle:v59 style:0 handler:v60];

    _Block_release(v60);

    v63 = [v58 addAction_];

    sub_2409963A8(v171, v53, v157);
    v64 = swift_allocObject();
    sub_240995610(v53, v64 + v54);
    v65 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v66 = swift_allocObject();
    v66[2] = sub_240998224;
    v66[3] = v64;
    v66[4] = v65;
    v67 = v58;

    v68 = sub_240A2BF1C();
    v174 = sub_240998A78;
    v175 = v66;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v173 = sub_2409DFF20;
    *(&v173 + 1) = &block_descriptor_169;
    v69 = _Block_copy(&aBlock);
    v70 = [v61 actionWithTitle:v68 style:0 handler:v69];

    _Block_release(v69);

    [v67 setDismissButtonAction_];

    v71 = MEMORY[0x277D84F90];
    v72 = v163;
    *v163 = v67;
    v72[1] = v71;
    v73 = v158;
    v72[2] = v159;
    v72[3] = v73;
    *(v72 + 32) = v165;
    swift_storeEnumTagMultiPayload();

    v74 = v67;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
    sub_240995F7C();
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
    v75 = v164;
    sub_240A2B6EC();
    sub_240919298(v75, v168, &qword_27E50D160, &qword_240A34998);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D190, &qword_240A349B0);
    sub_240995EC4();
    sub_24099613C();
    sub_240A2B6EC();

    return sub_240919300(v75, &qword_27E50D160, &qword_240A34998);
  }

  v165 = v40;
  v143 = v13;
  v77 = v171;
  if (v51 == *MEMORY[0x277CED278])
  {
    (*(v46 + 96))(v50, v45);
    (v159[4])(v44, v50, v165);
    sub_240A2A1FC();
    v142 = v44;
    if (v78)
    {
      sub_240A2A20C();
      if (v79)
      {
        v170 = sub_240A2BB7C();
        v180 = v170;
        sub_240987234(v33);
        sub_240A2C05C();
        (*(v157 + 1))(v33, v29);
        v80 = sub_240A2C06C();
        v82 = v81;
        v160 = v81;

        *&v181 = v80;
        *(&v181 + 1) = v82;
        v83 = v77 + *(v158 + 22);
        v84 = *v83;
        v85 = *(v83 + 8);
        v178 = v84;
        v179 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
        v86 = sub_240A2BC7C();
        v158 = &v142;
        v151 = aBlock;
        LODWORD(v157) = v173;
        v88 = MEMORY[0x28223BE20](v86, v87);
        MEMORY[0x28223BE20](v88, v89);
        v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D178, &qword_240A349A8);
        v90 = sub_24091C4F8();
        v141 = sub_24091CE28(&qword_27E50D180, &qword_27E50D178, &qword_240A349A8);
        v91 = v144;
        sub_240A2BA9C();

        v92 = v145;
        v93 = v153;
        (*(v145 + 16))(v154, v91, v153);
        swift_storeEnumTagMultiPayload();
        *&aBlock = MEMORY[0x277CE0F78];
        *(&aBlock + 1) = MEMORY[0x277D837D0];
        *&v173 = v171;
        *(&v173 + 1) = MEMORY[0x277CE0BD8];
        v174 = MEMORY[0x277CE0F70];
        v175 = v90;
        v176 = v141;
        v177 = MEMORY[0x277CE0BC8];
        swift_getOpaqueTypeConformance2();
        v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D8A0, &unk_240A32240);
        v95 = sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
        *&aBlock = MEMORY[0x277CE0F78];
        *(&aBlock + 1) = MEMORY[0x277D837D0];
        *&v173 = v94;
        *(&v173 + 1) = MEMORY[0x277CE0F70];
        v174 = v90;
        v175 = v95;
        swift_getOpaqueTypeConformance2();
        v96 = v156;
        sub_240A2B6EC();
        (*(v92 + 8))(v91, v93);
LABEL_13:
        sub_240919298(v96, v163, &qword_27E50D170, &qword_240A349A0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
        sub_240995F7C();
        sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
        v140 = v164;
        sub_240A2B6EC();
        sub_240919298(v140, v168, &qword_27E50D160, &qword_240A34998);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D190, &qword_240A349B0);
        sub_240995EC4();
        sub_24099613C();
        sub_240A2B6EC();
        sub_240919300(v140, &qword_27E50D160, &qword_240A34998);
        sub_240919300(v96, &qword_27E50D170, &qword_240A349A0);
        return (v159[1])(v142, v165);
      }
    }

    v170 = sub_240A2BB7C();
    v180 = v170;
    sub_240987234(v33);
    sub_240A2C05C();
    (*(v157 + 1))(v33, v29);
    v122 = sub_240A2C06C();
    v124 = v123;

    *&v181 = v122;
    *(&v181 + 1) = v124;
    v125 = v77 + *(v158 + 22);
    v126 = *v125;
    v127 = *(v125 + 8);
    v178 = v126;
    v179 = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
    v128 = sub_240A2BC7C();
    MEMORY[0x28223BE20](v128, v129);
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
    v130 = sub_24091C4F8();
    v160 = sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
    v131 = v150;
    v132 = MEMORY[0x277CE0F78];
    sub_240A2BAAC();

    v133 = v151;
    v134 = v155;
    (*(v151 + 16))(v154, v131, v155);
    swift_storeEnumTagMultiPayload();
    v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D178, &qword_240A349A8);
    v136 = sub_24091CE28(&qword_27E50D180, &qword_27E50D178, &qword_240A349A8);
    v137 = v132;
    *&aBlock = v132;
    v138 = MEMORY[0x277D837D0];
    *(&aBlock + 1) = MEMORY[0x277D837D0];
    *&v173 = v135;
    *(&v173 + 1) = MEMORY[0x277CE0BD8];
    v139 = MEMORY[0x277CE0F70];
    v174 = MEMORY[0x277CE0F70];
    v175 = v130;
    v176 = v136;
    v177 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    *&aBlock = v137;
    *(&aBlock + 1) = v138;
    *&v173 = v171;
    *(&v173 + 1) = v139;
    v174 = v130;
    v175 = v160;
    swift_getOpaqueTypeConformance2();
    v96 = v156;
    sub_240A2B6EC();
    (*(v133 + 8))(v131, v134);
    goto LABEL_13;
  }

  if (sub_24098743C())
  {
    sub_240994AF8(&aBlock);
    v181 = aBlock;
    v182 = v173;
    v183 = v174;
  }

  else
  {
    v97 = *(v158 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
    sub_240A2BC5C();
    sub_240A297BC();
    (*(v146 + 8))(v9, v147);
    sub_240A29FAC();
    (*(v148 + 8))(v5, v149);
    v98 = _s14AppleIDSetupUI22ProxCardViewControllerC014newSetupFailedefG011deviceClassAC0aB009AISDeviceL0O_tFZ_0();
    (*(v157 + 1))(v33, v29);
    LOBYTE(v181) = 1;
    sub_240A2BD3C();
    v164 = *(&aBlock + 1);
    v165 = aBlock;
    LODWORD(v163) = v173;
    v159 = sub_240A2C06C();
    v162 = type metadata accessor for SetupView;
    v99 = v143;
    sub_2409963A8(v77, v143, type metadata accessor for SetupView);
    v161 = (*(v160 + 80) + 16) & ~*(v160 + 80);
    v100 = v161;
    v101 = swift_allocObject();
    sub_240995610(v99, v101 + v100);
    v102 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v103 = swift_allocObject();
    v103[2] = sub_240998AA4;
    v103[3] = v101;
    v103[4] = v102;
    v104 = v98;

    v105 = sub_240A2BF1C();

    v174 = sub_2409977DC;
    v175 = v103;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v160 = &v173;
    *&v173 = sub_2409DFF20;
    *(&v173 + 1) = &block_descriptor_137;
    v106 = _Block_copy(&aBlock);
    v159 = objc_opt_self();
    v107 = [v159 actionWithTitle:v105 style:0 handler:v106];

    _Block_release(v106);

    v108 = [v104 addAction_];

    v109 = v143;
    sub_2409963A8(v171, v143, v162);
    v110 = v161;
    v111 = swift_allocObject();
    sub_240995610(v109, v111 + v110);
    v112 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v113 = swift_allocObject();
    v113[2] = sub_2409980E8;
    v113[3] = v111;
    v113[4] = v112;
    v114 = v104;

    v115 = sub_240A2BF1C();
    v174 = sub_2409977DC;
    v175 = v113;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v173 = sub_2409DFF20;
    *(&v173 + 1) = &block_descriptor_147;
    v116 = _Block_copy(&aBlock);
    v117 = [v159 actionWithTitle:v115 style:0 handler:v116];

    _Block_release(v116);

    [v114 setDismissButtonAction_];

    *&v181 = v114;
    *(&v181 + 1) = MEMORY[0x277D84F90];
    *&v182 = v165;
    *(&v182 + 1) = v164;
    LOBYTE(v183) = v163;
    HIBYTE(v183) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
  sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40);
  sub_240A2B6EC();
  v118 = v173;
  v119 = v174;
  v120 = BYTE1(v174);
  v121 = v168;
  *v168 = aBlock;
  v121[1] = v118;
  *(v121 + 32) = v119;
  *(v121 + 33) = v120;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D190, &qword_240A349B0);
  sub_240995EC4();
  sub_24099613C();
  sub_240A2B6EC();
  return (*(v46 + 8))(v50, v45);
}

uint64_t sub_240991A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v31 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D340, &qword_240A34C78);
  v8 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32, v9);
  v11 = v31 - v10;
  v12 = type metadata accessor for SetupView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D1B0, &qword_240A349C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v31 - v19;
  if (sub_24098743C())
  {
    v31[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D348, &qword_240A34C80);
    v31[1] = a1;
    sub_24091CE28(&qword_27E50D350, &qword_27E50D348, &qword_240A34C80);
    sub_240A2B6FC();
    sub_2409963A8(v1, v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
    v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v22 = swift_allocObject();
    sub_240995610(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = &v20[*(v16 + 36)];
    *v23 = sub_24099872C;
    v23[1] = v22;
    v23[2] = 0;
    v23[3] = 0;
    v24 = &qword_27E50D1B0;
    v25 = &qword_240A349C0;
    sub_240919298(v20, v11, &qword_27E50D1B0, &qword_240A349C0);
    swift_storeEnumTagMultiPayload();
    sub_240996278();
    sub_240972938();
    sub_240A2B6EC();
    v26 = v20;
  }

  else
  {
    sub_240A2B22C();
    sub_2409963A8(v1, v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
    v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v28 = swift_allocObject();
    sub_240995610(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    v29 = &v7[*(v3 + 36)];
    *v29 = sub_240998A74;
    v29[1] = v28;
    v29[2] = 0;
    v29[3] = 0;
    v24 = &qword_27E50CA50;
    v25 = &unk_240A33750;
    sub_240919298(v7, v11, &qword_27E50CA50, &unk_240A33750);
    swift_storeEnumTagMultiPayload();
    sub_240996278();
    sub_240972938();
    sub_240A2B6EC();
    v26 = v7;
  }

  return sub_240919300(v26, v24, v25);
}

uint64_t sub_240991EA4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_240A2B58C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D358, &qword_240A34C88);
  return sub_240991EF4((a1 + *(v2 + 44)));
}

uint64_t sub_240991EF4@<X0>(_BYTE *a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v2 = *(v1 - 8);
  v3 = v2[8];
  v5 = MEMORY[0x28223BE20](v1, v4);
  v32 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v30[-v8];
  sub_240A2B22C();
  v34 = sub_240A2C01C();
  v35 = v10;
  sub_24091C4F8();
  v11 = sub_240A2B9CC();
  v13 = v12;
  v15 = v14;
  v16 = sub_240A2B99C();
  v18 = v17;
  v31 = v19;
  v21 = v20;
  sub_240920658(v11, v13, v15 & 1);

  v22 = v2[2];
  v23 = v32;
  v22(v32, v9, v1);
  v24 = v33;
  v22(v33, v23, v1);
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D360, &qword_240A34C90) + 48)];
  *v25 = v16;
  *(v25 + 1) = v18;
  v26 = v31;
  v27 = v31 & 1;
  v25[16] = v31 & 1;
  *(v25 + 3) = v21;
  sub_24097F784(v16, v18, v26 & 1);
  v28 = v2[1];

  v28(v9, v1);
  sub_240920658(v16, v18, v27);

  return (v28)(v23, v1);
}

uint64_t sub_240992130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = type metadata accessor for SetupView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v21 - v11;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v23 = v13;
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  result = sub_240A2BC5C();
  if ((v22 & 1) == 0)
  {
    v23 = v13;
    v24 = v14;
    v22 = 1;
    sub_240A2BC6C();
    v16 = sub_240A2C24C();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    sub_2409963A8(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SetupView);
    sub_240A2C21C();
    v17 = sub_240A2C20C();
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v17;
    *(v19 + 24) = v20;
    sub_240995610(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    sub_2409230D4(0, 0, v12, v21, v19);
  }

  return result;
}

uint64_t sub_24099235C@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D300, &qword_240A34C28);
  v2 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71, v3);
  v73 = (&v64 - v4);
  v5 = type metadata accessor for SetupView();
  v6 = v5 - 8;
  v68 = *(v5 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v69 = v9;
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  v10 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72, v11);
  v67 = &v64 - v12;
  v13 = sub_240A2A10C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_240A2981C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v65 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v64 - v26;
  v28 = *(v6 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  v29 = v1;
  sub_240A2BC5C();
  sub_240A297BC();
  v30 = *(v20 + 8);
  v66 = v19;
  v31 = v19;
  v32 = v30;
  v30(v27, v31);
  v33 = sub_240A2A07C();
  (*(v14 + 8))(v18, v13);
  if (v33)
  {
    v34 = v67;
    sub_240A2B22C();
    v35 = v70;
    sub_2409963A8(v29, v70, type metadata accessor for SetupView);
    v36 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v37 = swift_allocObject();
    sub_240995610(v35, v37 + v36);
    v38 = v73;
    v39 = (v34 + *(v72 + 36));
    *v39 = sub_240997B9C;
    v39[1] = v37;
    v39[2] = 0;
    v39[3] = 0;
    sub_240919298(v34, v38, &qword_27E50CA50, &unk_240A33750);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240972938();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    sub_240A2B6EC();
    return sub_240919300(v34, &qword_27E50CA50, &unk_240A33750);
  }

  else
  {
    v64 = sub_240A2C01C();
    v41 = v29;
    v42 = v65;
    sub_240A2BC5C();
    sub_240A2C01C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_240A305D0;
    v44 = sub_240997820();
    v46 = v45;
    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 64) = sub_240913AEC();
    *(v43 + 32) = v44;
    *(v43 + 40) = v46;
    sub_240A2BF6C();

    v32(v42, v66);
    v81 = 1;
    sub_240A2BD3C();
    v47 = aBlock;
    v67 = v76;
    LODWORD(v66) = v77;
    v81 = 1;
    sub_240A2BD3C();
    v48 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
    [v48 setDismissalType_];
    v49 = sub_240A2BF1C();

    [v48 setTitle_];

    v50 = sub_240A2BF1C();

    [v48 setSubtitle_];

    sub_240A2C06C();
    v51 = v70;
    sub_2409963A8(v41, v70, type metadata accessor for SetupView);
    v52 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v53 = swift_allocObject();
    sub_240995610(v51, v53 + v52);
    v54 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v55 = swift_allocObject();
    v55[2] = sub_240997B24;
    v55[3] = v53;
    v55[4] = v54;
    v56 = v48;

    v57 = sub_240A2BF1C();

    v79 = sub_240998A78;
    v80 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_2409DFF20;
    v78 = &block_descriptor_118;
    v58 = _Block_copy(&aBlock);
    v59 = [objc_opt_self() actionWithTitle:v57 style:0 handler:v58];

    _Block_release(v58);

    v60 = [v56 addAction_];

    v61 = MEMORY[0x277D84F90];
    v62 = v73;
    *v73 = v56;
    v62[1] = v61;
    v63 = v67;
    v62[2] = v47;
    v62[3] = v63;
    *(v62 + 32) = v66;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240972938();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0);
    return sub_240A2B6EC();
  }
}