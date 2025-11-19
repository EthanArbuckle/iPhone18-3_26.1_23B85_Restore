uint64_t sub_240A11BA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask);
  swift_unknownObjectRelease();

  sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption, &qword_27E50F058, &qword_240A38A10);
  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings);
}

uint64_t AISFlowStepFamilyPicker.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask);
  swift_unknownObjectRelease();

  sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption, &qword_27E50F058, &qword_240A38A10);
  v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings);

  return v0;
}

uint64_t AISFlowStepFamilyPicker.__deallocating_deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask);

  swift_unknownObjectRelease();

  sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption, &qword_27E50F058, &qword_240A38A10);
  v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_240A11E2C()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_240A11E74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_240A11F2C(uint64_t a1)
{
  v2[58] = a1;
  v2[59] = v1;
  v3 = sub_240A2B00C();
  v2[60] = v3;
  v4 = *(v3 - 8);
  v2[61] = v4;
  v5 = *(v4 + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  sub_240A2C21C();
  v2[65] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v2[66] = v7;
  v2[67] = v6;

  return MEMORY[0x2822009F8](sub_240A1203C, v7, v6);
}

uint64_t sub_240A1203C()
{
  v1 = *(v0 + 472);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (*(v0 + 560))
  {
    v2 = *(v0 + 520);
    v3 = *(v0 + 504);

    sub_240A2AE9C();
    v4 = sub_240A2AFFC();
    v5 = sub_240A2C29C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 504);
    v8 = *(v0 + 480);
    v9 = *(v0 + 488);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2408FE000, v4, v5, "AISFlowStepFamilyPicker familyPicker trying to run a step that already finished", v10, 2u);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
    v12 = *(v0 + 504);
    v11 = *(v0 + 512);
    v13 = *(v0 + 496);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v17 = *(v0 + 464);
    v16 = *(v0 + 472);
    v18 = sub_240A129E8();
    *(v0 + 544) = v18;
    v19 = sub_240A12CB4(v17);
    *(v0 + 552) = v19;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 448;
    *(v0 + 24) = sub_240A122C0;
    v20 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_240A271E4;
    *(v0 + 104) = &block_descriptor_31;
    *(v0 + 112) = v20;
    [v19 performWithContext:v18 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_240A122C0()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 528);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240A123C8, v2, v1);
}

uint64_t sub_240A123C8()
{
  v59 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  v3 = *(v0 + 448);
  sub_240A2AE9C();
  v4 = v3;
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C2CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_2408FE000, v5, v6, "AISFlowStepFamilyPicker familyPicker got response %@", v7, 0xCu);
    sub_240919300(v8, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v10 = *(v0 + 512);
  v11 = *(v0 + 480);
  v12 = *(v0 + 488);

  v13 = *(v12 + 8);
  v13(v10, v11);
  v14 = [v4 userInfo];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = sub_240A2BEBC();

  sub_240A2AF0C();
  *(v0 + 432) = sub_240A2AEFC();
  *(v0 + 440) = v17;
  sub_240A2C44C();
  if (!*(v16 + 16) || (v18 = sub_240925A94(v0 + 264), (v19 & 1) == 0))
  {

    sub_2409266D4(v0 + 264);
LABEL_10:
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    goto LABEL_11;
  }

  sub_240913DC0(*(v16 + 56) + 32 * v18, v0 + 304);
  sub_2409266D4(v0 + 264);

  if (!*(v0 + 328))
  {
LABEL_11:
    sub_240919300(v0 + 304, &qword_27E50C6D0, &unk_240A33620);
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F088, qword_240A38C90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 176) = 0;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
  }

LABEL_12:
  v20 = *(v0 + 472);
  v21 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption;
  swift_beginAccess();
  sub_240A13514(v0 + 144, v20 + v21);
  swift_endAccess();
  sub_240A132A0(v20 + v21, v0 + 224);
  if (*(v0 + 248))
  {
    v22 = *(v0 + 472);
    sub_24090C218((v0 + 224), v0 + 184);
    v23 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
    swift_beginAccess();
    if (*(v22 + v23))
    {
      v24 = *(*(*(v0 + 472) + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings) + 16);
      v25 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
      swift_beginAccess();
      if ((*(v24 + v25) - 1) > 1)
      {
      }

      else
      {
        v26 = *(v0 + 208);
        v27 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_0((v0 + 184), v26);
        v28 = *(v27 + 8);

        v28(v26, v27);
      }

      sub_240A2ACDC();
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  }

  else
  {
    sub_240919300(v0 + 224, &qword_27E50F058, &qword_240A38A10);
  }

  v29 = [v4 loadSuccess];
  v30 = *(v0 + 552);
  v31 = *(v0 + 544);
  if (v29)
  {
  }

  else
  {
    v32 = *(v0 + 496);
    v33 = [v4 error];
    sub_240A13310();
    v34 = swift_allocError();
    *v35 = v33;
    swift_willThrow();

    v36 = v34;
    sub_240A2AE9C();
    v37 = v34;
    v38 = sub_240A2AFFC();
    v39 = sub_240A2C2AC();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 496);
    v42 = *(v0 + 480);
    if (v40)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v58 = v44;
      *v43 = 136315138;
      *(v0 + 456) = v34;
      v45 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
      v46 = sub_240A2BF9C();
      v57 = v13;
      v48 = sub_240925464(v46, v47, &v58);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_2408FE000, v38, v39, "AISFlowStepFamilyPicker familyPicker failed: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x245CCDDB0](v44, -1, -1);
      MEMORY[0x245CCDDB0](v43, -1, -1);

      v57(v41, v42);
    }

    else
    {

      v13(v41, v42);
    }

    v49 = *(v0 + 472);
    v50 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask;
    swift_beginAccess();
    [*(v49 + v50) complete];
  }

  v51 = *(v0 + 472);
  sub_2409F4DB4();
  v53 = *(v0 + 504);
  v52 = *(v0 + 512);
  v54 = *(v0 + 496);

  v55 = *(v0 + 8);

  return v55();
}

id sub_240A129E8()
{
  v1 = v0;
  v2 = sub_240A2974C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v9 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_240A2ABFC();

  sub_240A1EADC(v11);

  v12 = sub_240A2BE9C();

  [v8 setEphemeralAuthResults_];

  (*(v3 + 104))(v7, *MEMORY[0x277CED208], v2);
  LOBYTE(v10) = sub_240A2973C();
  (*(v3 + 8))(v7, v2);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240A305D0;
    strcpy((inited + 32), "userAgeRange");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v14 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings) + 16);
    v15 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    v16 = *(v14 + v15);
    *(inited + 72) = MEMORY[0x277D83E88];
    *(inited + 48) = v16;
    sub_240926374(inited);
    swift_setDeallocating();
    sub_240919300(inited + 32, &qword_27E50BB00, &unk_240A38260);
    v17 = sub_240A2BE9C();

    [v8 setAdditionalParameters_];
  }

  return v8;
}

id sub_240A12CB4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
  [v2 setPresentationType_];
  v5[4] = sub_240A13584;
  v6 = v1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2409EC704;
  v5[3] = &block_descriptor_11_0;
  v3 = _Block_copy(v5);

  [v2 setPresentationHandler_];
  _Block_release(v3);
  return v2;
}

id sub_240A12DAC()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "AISFlowStepFamilyPicker familyCirclePresentationHandler", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask;
  swift_beginAccess();
  return [*(v1 + v11) complete];
}

uint64_t sub_240A12F1C(uint64_t a1)
{
  v4 = *v1;
  v2[2] = sub_240A2C21C();
  v2[3] = sub_240A2C20C();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_2409F5208;

  return sub_240A11F2C(a1);
}

unint64_t AISFlowStepFamilyPickerError.description.getter()
{
  v1 = 0xD000000000000018;
  v2 = *v0;
  if (*v0 != 1)
  {
    sub_240A2C47C();

    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v4 = sub_240A2BF9C();
    MEMORY[0x245CCCD90](v4);

    return 0xD00000000000002FLL;
  }

  return v1;
}

uint64_t AISFlowStepError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t sub_240A13138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17[-v12];
  v14 = a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse) = a1;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings) = a2;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask) = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v17[15] = 0;
  sub_240A2B0DC();
  (*(v9 + 32))(a4 + v15, v13, v8);
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return a4;
}

uint64_t sub_240A132A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F058, &qword_240A38A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_240A13310()
{
  result = qword_27E50F060;
  if (!qword_27E50F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F060);
  }

  return result;
}

unint64_t sub_240A13368()
{
  result = qword_27E50F070;
  if (!qword_27E50F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F070);
  }

  return result;
}

uint64_t type metadata accessor for AISFlowStepFamilyPicker()
{
  result = qword_27E50F078;
  if (!qword_27E50F078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14AppleIDSetupUI28AISFlowStepFamilyPickerErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240A13514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F058, &qword_240A38A10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_9_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ChildSafetyFeaturesViewController.__allocating_init(pendingDOB:accountManager:accountStore:completionHandler:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28 = a1;
  v27 = objc_allocWithZone(v6);
  v12 = a2[3];
  v11 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13, v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v19 = a3[3];
  v18 = a3[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a3, v19);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v20, v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = sub_240A16294(v28, v16, v23, a4, a5, v27, v12, v19, v11, v18);
  sub_240964BB8(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v25;
}

uint64_t sub_240A13784(uint64_t a1, char a2, void *a3)
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

    return swift_continuation_throwingResume();
  }
}

id ChildSafetyFeaturesViewController.init(pendingDOB:accountManager:accountStore:completionHandler:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25[0] = a1;
  v10 = a2[3];
  v9 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v10);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v11, v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v17 = a3[3];
  v16 = a3[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a3, v17);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18, v18);
  v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_240A16294(v25[0], v14, v21, a4, a5, v25[1], v10, v17, v9, v16);
  sub_240964BB8(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v23;
}

uint64_t sub_240A13A24()
{
  sub_2409E0948();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_240A2C39C();
}

void sub_240A13AC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_240A2C24C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_240A2C21C();
    v8 = v6;
    v9 = sub_240A2C20C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    sub_2409230D4(0, 0, v4, &unk_240A38D40, v10);
  }
}

uint64_t sub_240A13C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_240A2C21C();
  v4[3] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_240A13CB0, v6, v5);
}

uint64_t sub_240A13CB0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08308]) init];
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_240A13D64;
  v3 = v0[2];

  return sub_240A13EA4(v1);
}

uint64_t sub_240A13D64()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24094DCF8, v5, v4);
}

uint64_t sub_240A13EA4(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_240A2B00C();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v7 = sub_240A2962C();
  v2[26] = v7;
  v8 = *(v7 - 8);
  v2[27] = v8;
  v9 = *(v8 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = sub_240A2C21C();
  v2[30] = sub_240A2C20C();
  v10 = swift_task_alloc();
  v2[31] = v10;
  *v10 = v2;
  v10[1] = sub_240A1405C;

  return sub_240A156CC();
}

uint64_t sub_240A1405C()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 232);
  v8 = *v0;

  v6 = sub_240A2C1BC();
  *(v1 + 256) = v6;
  *(v1 + 264) = v5;

  return MEMORY[0x2822009F8](sub_240A141A0, v6, v5);
}

uint64_t sub_240A141A0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  sub_2409BF428(v0[19] + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_pendingDOB, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_240919300(v0[25], &unk_27E50DCE0, &qword_240A32E20);
    v4 = v0[24];
    sub_240A2AE9C();
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C2CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2408FE000, v5, v6, "Setting screentimes features", v7, 2u);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }

    v8 = v0[24];
    v9 = v0[20];
    v10 = v0[21];
    v11 = v0[18];

    v12 = *(v10 + 8);
    v0[35] = v12;
    v12(v8, v9);
    v0[2] = v0;
    v0[7] = v0 + 37;
    v0[3] = sub_240A14750;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240A13784;
    v0[13] = &block_descriptor_32;
    v0[14] = v13;
    [v11 setRestrictionsWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    v14 = swift_task_alloc();
    v0[34] = v14;
    *v14 = v0;
    v14[1] = sub_240A14454;
    v15 = v0[28];
    v16 = v0[19];

    return sub_240A14C64(v15);
  }
}

uint64_t sub_240A14454()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v6 = *v0;

  v3 = *(v1 + 264);
  v4 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_240A14574, v4, v3);
}

uint64_t sub_240A14574()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  v1 = v0[24];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Setting screentimes features", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[24];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[18];

  v9 = *(v7 + 8);
  v0[35] = v9;
  v9(v5, v6);
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_240A14750;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A13784;
  v0[13] = &block_descriptor_32;
  v0[14] = v10;
  [v8 setRestrictionsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240A14750()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 264);
  v5 = *(v1 + 256);
  if (v3)
  {
    v6 = sub_240A14A30;
  }

  else
  {
    v6 = sub_240A14880;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_240A14880()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 184);

  v3 = *(v0 + 296);
  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v3;
    _os_log_impl(&dword_2408FE000, v4, v5, "Updated ScreenTime settings for child account with success - %{BOOL}d", v6, 8u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v7 = *(v0 + 152);
  v8 = *(v0 + 168) + 8;
  (*(v0 + 280))(*(v0 + 184), *(v0 + 160));
  v9 = *(v7 + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler);
  if (v9)
  {
    v10 = *(v7 + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler + 8);
    sub_240915CF8();
    v11 = swift_allocError();
    *v12 = xmmword_240A32CF0;

    v9(v11, 0);
    sub_240964BB8(v9);
  }

  v13 = *(v0 + 224);
  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_240A14A30()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 240);
  v3 = *(v0 + 176);

  swift_willThrow();
  sub_240A2AE9C();
  v4 = v1;
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C2AC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 288);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2408FE000, v5, v6, "Failed to update ScreenTime settings for child account with error - %@", v9, 0xCu);
    sub_240919300(v10, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v10, -1, -1);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 168) + 8;
  (*(v0 + 280))(*(v0 + 176), *(v0 + 160));
  v15 = *(v13 + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler);
  if (v15)
  {
    v16 = *(v13 + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler + 8);
    sub_240915CF8();
    v17 = swift_allocError();
    *v18 = xmmword_240A32CF0;

    v15(v17, 0);
    sub_240964BB8(v15);
  }

  v19 = *(v0 + 224);
  v20 = *(v0 + 192);
  v21 = *(v0 + 200);
  v23 = *(v0 + 176);
  v22 = *(v0 + 184);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_240A14C64(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_240A2B00C();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_240A2C21C();
  v2[13] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v2[14] = v7;
  v2[15] = v6;

  return MEMORY[0x2822009F8](sub_240A14D70, v7, v6);
}

uint64_t sub_240A14D70()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountStore;
  v0[16] = OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountStore;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_0((v1 + v2), v3);
  v5 = *(MEMORY[0x277CEDCC8] + 4);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_240A14E34;

  return MEMORY[0x28213FCB0](v3, v4);
}

uint64_t sub_240A14E34(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {

    v6 = *(v3 + 112);
    v7 = *(v3 + 120);
    v8 = sub_240A1539C;
  }

  else
  {
    v6 = *(v3 + 112);
    v7 = *(v3 + 120);
    v8 = sub_240A14F5C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_240A14F5C()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[6];
    v3 = (v0[7] + v0[16]);
    v4 = sub_240A295EC();
    [v1 aa:v4 setPendingDOB:?];

    v5 = v3[3];
    v6 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v5);
    v7 = *(MEMORY[0x277CEDCD8] + 4);
    v8 = v1;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_240A15150;
    v10 = v0[18];

    return MEMORY[0x28213FCC0](v10, v5, v6);
  }

  else
  {
    v11 = v0[13];

    v12 = v0[11];
    sub_240A2AE9C();
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C2AC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[11];
    v17 = v0[8];
    v18 = v0[9];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "No primary Apple Account available.", v19, 2u);
      MEMORY[0x245CCDDB0](v19, -1, -1);
    }

    (*(v18 + 8))(v16, v17);
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[10];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_240A15150()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = sub_240A154C0;
  }

  else
  {

    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = sub_240A1526C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_240A1526C()
{
  v2 = v0[12];
  v1 = v0[13];

  sub_240A2AE9C();
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2CC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[9];
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully saved pending DOB", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v9 + 8))(v7, v8);
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_240A1539C()
{
  v1 = v0[13];

  v2 = v0[11];
  sub_240A2AE9C();
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2AC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "No primary Apple Account available.", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  (*(v8 + 8))(v6, v7);
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];

  v13 = v0[1];

  return v13();
}

uint64_t sub_240A154C0()
{
  v31 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);

  sub_240A2AE9C();
  v5 = v1;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2AC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 144);
    v10 = *(v0 + 72);
    v28 = *(v0 + 64);
    v29 = *(v0 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    v15 = *(v0 + 32);
    v16 = sub_240A2C6CC();
    v18 = sub_240925464(v16, v17, &v30);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2408FE000, v6, v7, "Failed to save pending DOB: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);

    (*(v10 + 8))(v29, v28);
  }

  else
  {
    v19 = *(v0 + 160);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v0 + 64);

    (*(v21 + 8))(v20, v22);
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v25 = *(v0 + 80);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_240A156CC()
{
  v1[6] = v0;
  v2 = sub_240A2B00C();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_240A2C21C();
  v1[13] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v1[14] = v6;
  v1[15] = v5;

  return MEMORY[0x2822009F8](sub_240A157E4, v6, v5);
}

uint64_t sub_240A157E4()
{
  v1 = (v0[6] + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountManager);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v3 = sub_240A2AB6C();
  if (v3)
  {
    v4 = v3;
    v5 = v0[13];
    v6 = v0[10];

    sub_240A2AE9C();
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C2CC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "Primary account found, skipping saving proto account", v13, 2u);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    v15 = v0[11];
    v14 = v0[12];
    v17 = v0[9];
    v16 = v0[10];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[12];
    sub_240A2AE9C();
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C2CC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2408FE000, v21, v22, "Creating new proto account for child", v23, 2u);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    v24 = v0[12];
    v25 = v0[7];
    v26 = v0[8];

    v27 = *(v26 + 8);
    v0[16] = v27;
    v27(v24, v25);
    v28 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v1[3]);
    v29 = sub_240A2AB5C();
    v30 = [objc_allocWithZone(MEMORY[0x277CB8F30]) initWithAccountType_];
    v0[17] = v30;

    if (v30)
    {
      [v30 proto:1 setAgeRange:?];
    }

    v31 = (v0[6] + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountStore);
    v32 = v31[3];
    v33 = v31[4];
    __swift_project_boxed_opaque_existential_0(v31, v32);
    v34 = *(MEMORY[0x277CEDCD8] + 4);
    v35 = swift_task_alloc();
    v0[18] = v35;
    *v35 = v0;
    v35[1] = sub_240A15AF0;

    return MEMORY[0x28213FCC0](v30, v32, v33);
  }
}

uint64_t sub_240A15AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_240A15D78;
  }

  else
  {
    v7 = sub_240A15C2C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_240A15C2C()
{
  v1 = v0[13];
  v2 = v0[11];

  sub_240A2AE9C();
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2CC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[11];
  v9 = v0[7];
  v10 = v0[8];
  if (v5)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully saved proto account", v11, 2u);
    MEMORY[0x245CCDDB0](v11, -1, -1);
    v12 = v3;
  }

  else
  {
    v12 = v0[17];
    v7 = v3;
  }

  v6(v8, v9);
  v14 = v0[11];
  v13 = v0[12];
  v16 = v0[9];
  v15 = v0[10];

  v17 = v0[1];

  return v17();
}

uint64_t sub_240A15D78()
{
  v33 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  v3 = *(v0 + 72);

  sub_240A2AE9C();
  v4 = v1;
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C2AC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 152);
    v31 = *(v0 + 128);
    v8 = *(v0 + 64);
    v29 = *(v0 + 136);
    v30 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    v14 = *(v0 + 32);
    v15 = sub_240A2C6CC();
    v17 = sub_240925464(v15, v16, &v32);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_2408FE000, v5, v6, "Failed to save proto account: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245CCDDB0](v11, -1, -1);
    MEMORY[0x245CCDDB0](v10, -1, -1);

    v31(v30, v9);
  }

  else
  {
    v18 = *(v0 + 152);
    v19 = *(v0 + 128);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 56);

    v19(v20, v22);
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v26 = *(v0 + 72);
  v25 = *(v0 + 80);

  v27 = *(v0 + 8);

  return v27();
}

id ChildSafetyFeaturesViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id ChildSafetyFeaturesViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
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

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id ChildSafetyFeaturesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChildSafetyFeaturesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_240A16294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46[3] = a7;
  v46[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  v45[3] = a8;
  v45[4] = a10;
  v19 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(a8 - 8) + 32))(v19, a3, a8);
  v20 = &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  sub_2409BF428(a1, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_pendingDOB]);
  sub_240919A14(v46, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountManager]);
  sub_240919A14(v45, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountStore]);
  *v20 = a4;
  *(v20 + 1) = a5;
  sub_240964BBC(a4, a5);
  sub_240A2BFEC();
  [objc_opt_self() deviceIsiPad];
  sub_240A2BFEC();
  sub_240A2BFEC();
  v21 = sub_240A2BF1C();

  v22 = sub_240A2BF1C();

  v23 = sub_240A2BF1C();
  v44.receiver = a6;
  v44.super_class = type metadata accessor for ChildSafetyFeaturesViewController();
  v24 = objc_msgSendSuper2(&v44, sel_initWithTitle_detailText_symbolName_contentLayout_, v21, v22, v23, 2);

  v25 = v24;
  v26 = [v25 buttonTray];
  v27 = [objc_opt_self() boldButton];
  sub_240A2BFEC();
  v28 = sub_240A2BF1C();

  [v27 setTitle:v28 forState:0];

  sub_2409E0948();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = sub_240A2C39C();
  [v27 addAction:v30 forControlEvents:{64, 0, 0, 0, sub_240A16B40, v29}];

  [v26 addButton_];
  sub_240A2BFEC();
  v31 = sub_240A2BF1C();

  sub_240A2BFEC();
  v32 = sub_240A2BF1C();

  v33 = sub_240A2BF1C();
  [v25 addBulletedListItemWithTitle:v31 description:v32 symbolName:v33];

  sub_240A2BFEC();
  v34 = sub_240A2BF1C();

  sub_240A2BFEC();
  v35 = sub_240A2BF1C();

  v36 = sub_240A2BF1C();
  [v25 addBulletedListItemWithTitle:v34 description:v35 symbolName:v36];

  sub_240A2BFEC();
  v37 = sub_240A2BF1C();

  sub_240A2BFEC();
  v38 = sub_240A2BF1C();

  v39 = sub_240A2BF1C();
  [v25 addBulletedListItemWithTitle:v37 description:v38 symbolName:v39];

  sub_240A2BFEC();
  v40 = sub_240A2BF1C();

  v41 = sub_240A2BF1C();

  v42 = sub_240A2BF1C();
  [v25 addBulletedListItemWithTitle:v40 description:v41 symbolName:v42];

  sub_240919300(a1, &unk_27E50DCE0, &qword_240A32E20);
  __swift_destroy_boxed_opaque_existential_0(v45);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v25;
}

uint64_t type metadata accessor for ChildSafetyFeaturesViewController()
{
  result = qword_27E50F0C0;
  if (!qword_27E50F0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240A16900()
{
  sub_240A16A08();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_240A16A08()
{
  if (!qword_27E50F0D0)
  {
    sub_240A2962C();
    v0 = sub_240A2C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50F0D0);
    }
  }
}

uint64_t sub_240A16A8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_240A13C18(a1, v4, v5, v6);
}

id SetupStartViewController.__allocating_init(deviceModel:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithContentView_, 0);
}

id SetupStartViewController.init(deviceModel:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SetupStartViewController();
  return objc_msgSendSuper2(&v5, sel_initWithContentView_, 0);
}

id sub_240A16C14()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SetupStartViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  sub_240A2C06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_240A305D0;
  v2 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
  v3 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel + 8];

  v4 = sub_240A2A9BC();
  v6 = v5;

  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_240913AEC();
  *(v1 + 32) = v4;
  *(v1 + 40) = v6;
  sub_240A2BF6C();

  v7 = sub_240A2BF1C();

  [v0 setTitle_];

  sub_240A16DC0();
  return [v0 setDismissalType_];
}

void sub_240A16DC0()
{
  v1 = [objc_allocWithZone(type metadata accessor for AISDeviceImage()) init];
  v2 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
  v3 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel + 8];
  v41 = &v0[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];

  v4 = [v0 traitCollection];
  sub_240965A54(v2, v3, v4);
  v42 = v5;

  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v6 setContentMode_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v0 contentView];
  [v7 addSubview_];

  if (v42)
  {
    [v42 size];
    if (v9 > 0.0)
    {
      v10 = [objc_opt_self() constraintWithItem:v6 attribute:7 relatedBy:0 toItem:v6 attribute:8 multiplier:v8 / v9 constant:0.0];
      [v6 addConstraint_];
    }
  }

  v40 = objc_opt_self();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_240A33530;
  v12 = [v6 centerXAnchor];
  v13 = [v0 contentView];
  v14 = [v13 mainContentGuide];

  v15 = [v14 centerXAnchor];
  v16 = [v12 constraintEqualToAnchor_];

  *(v11 + 32) = v16;
  v17 = [v6 centerYAnchor];
  v18 = [v0 &selRef_configurationWithTextStyle_];
  v19 = [v18 mainContentGuide];

  v20 = [v19 centerYAnchor];
  v21 = [v17 constraintEqualToAnchor_];

  *(v11 + 40) = v21;
  v22 = [v6 topAnchor];
  v23 = [v0 &selRef_configurationWithTextStyle_];
  v24 = [v23 mainContentGuide];

  v25 = [v24 topAnchor];
  v26 = [v22 constraintGreaterThanOrEqualToAnchor_];

  *(v11 + 48) = v26;
  v27 = [v6 bottomAnchor];
  v28 = [v0 &selRef_configurationWithTextStyle_];
  v29 = [v28 mainContentGuide];

  v30 = [v29 bottomAnchor];
  v31 = [v27 constraintLessThanOrEqualToAnchor_];

  *(v11 + 56) = v31;
  sub_24092F234();
  v32 = sub_240A2C15C();

  [v40 activateConstraints_];

  v33 = *(v41 + 1);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_240A32D10;
  v35 = [v6 heightAnchor];

  v36 = 150.0;
  if (!v33)
  {
    v36 = 75.0;
  }

  v37 = [v35 constraintEqualToConstant_];

  *(v34 + 32) = v37;
  v38 = sub_240A2C15C();

  [v40 activateConstraints_];
}

id SetupStartViewController.__allocating_init(contentView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView_];

  return v3;
}

id SetupStartViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupStartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_240A17438(void *a1, void (*a2)(uint64_t, unint64_t))
{
  if ([a1 sender])
  {
    sub_240A2C3DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    sub_2409194E8(0, &qword_27E50F0E0, 0x277D43378);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    [v9 resignFirstResponder];
    v3 = [v9 text];
    if (v3)
    {
      v4 = v3;
      v5 = sub_240A2BF4C();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        a2(v5, v7);

        return;
      }
    }
  }

  else
  {
    sub_240A17ABC(v12);
  }
}

void sub_240A175B0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [a3 performWithSender:Strong target:0];
}

void sub_240A17618(void *a1, id a2, uint64_t a3)
{
  v6 = [a2 superview];
  if (!v6)
  {
    [a2 addAction:a3 forControlEvents:0x2000];
    [a2 setTextContentType_];
    [a2 setAutocorrectionType_];
    [a2 setSecureTextEntry_];
    [a2 setAutocapitalizationType_];
    [a2 setEnablesReturnKeyAutomatically_];
    [a2 setReturnKeyType_];
    v7 = [objc_opt_self() systemFontOfSize:18.0 weight:*MEMORY[0x277D74410]];
    [a2 setFont_];

    [a2 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = [objc_opt_self() secondarySystemBackgroundColor];
    [a2 setBackgroundColor_];

    sub_240A2C06C();
    v9 = sub_240A2BF1C();

    [a2 setPlaceholder_];

    v10 = [a1 contentView];
    [v10 addSubview_];

    v11 = [a1 contentView];
    v12 = [v11 mainContentGuide];

    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_240A308F0;
    v15 = [a2 topAnchor];
    v16 = [v12 topAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v14 + 32) = v17;
    v18 = [a2 centerXAnchor];
    v19 = [v12 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v14 + 40) = v20;
    v21 = [a2 bottomAnchor];
    v22 = [v12 bottomAnchor];
    v23 = [v21 constraintLessThanOrEqualToAnchor_];

    *(v14 + 48) = v23;
    v24 = [a2 heightAnchor];
    v25 = [v24 constraintEqualToConstant_];

    *(v14 + 56) = v25;
    v26 = [a2 widthAnchor];
    v27 = [v12 widthAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(v14 + 64) = v28;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v29 = sub_240A2C15C();

    [v13 activateConstraints_];

    v6 = v29;
  }
}

uint64_t sub_240A17ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6D0, &unk_240A33620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DiscoveringSetupView()
{
  result = qword_27E50F0E8;
  if (!qword_27E50F0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240A17B98()
{
  sub_24093CE9C();
  if (v0 <= 0x3F)
  {
    sub_240A17E4C(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_240A17E4C(319, &qword_27E50C0D0, MEMORY[0x277CED688], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_240A17DFC(319, &qword_27E50C0D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_240A17DFC(319, &unk_27E50D8E0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_240A17E4C(319, &qword_27E50BD60, sub_2409E0948, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_240A17E4C(319, &unk_27E50BD70, MEMORY[0x277CED338], MEMORY[0x277CE11F8]);
              if (v6 <= 0x3F)
              {
                sub_240A17E4C(319, &unk_27E50D900, MEMORY[0x277CED260], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_240A17DFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_240A17E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_240A17ECC()
{
  v0 = sub_240A2B73C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C190, &qword_240A32228);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0C8, &qword_240A32740);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v31 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v31 - v22;
  sub_2409460C4(&v31 - v22);
  (*(v1 + 104))(v20, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v20, 0, 1, v0);
  v24 = *(v6 + 56);
  sub_240919298(v23, v10, &qword_27E50C0C8, &qword_240A32740);
  sub_240919298(v20, &v10[v24], &qword_27E50C0C8, &qword_240A32740);
  v25 = *(v1 + 48);
  if (v25(v10, 1, v0) != 1)
  {
    sub_240919298(v10, v16, &qword_27E50C0C8, &qword_240A32740);
    if (v25(&v10[v24], 1, v0) != 1)
    {
      v27 = &v10[v24];
      v28 = v32;
      (*(v1 + 32))(v32, v27, v0);
      sub_240A1B968(&qword_27E50C198, MEMORY[0x277CE0570]);
      v26 = sub_240A2BF0C();
      v29 = *(v1 + 8);
      v29(v28, v0);
      sub_240919300(v20, &qword_27E50C0C8, &qword_240A32740);
      sub_240919300(v23, &qword_27E50C0C8, &qword_240A32740);
      v29(v16, v0);
      sub_240919300(v10, &qword_27E50C0C8, &qword_240A32740);
      return v26 & 1;
    }

    sub_240919300(v20, &qword_27E50C0C8, &qword_240A32740);
    sub_240919300(v23, &qword_27E50C0C8, &qword_240A32740);
    (*(v1 + 8))(v16, v0);
    goto LABEL_6;
  }

  sub_240919300(v20, &qword_27E50C0C8, &qword_240A32740);
  sub_240919300(v23, &qword_27E50C0C8, &qword_240A32740);
  if (v25(&v10[v24], 1, v0) != 1)
  {
LABEL_6:
    sub_240919300(v10, &qword_27E50C190, &qword_240A32228);
    v26 = 0;
    return v26 & 1;
  }

  sub_240919300(v10, &qword_27E50C0C8, &qword_240A32740);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_240A18314()
{
  v1 = v0;
  v2 = sub_240A29EFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_240A29EEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DiscoveringSetupView();
  v15 = *(v14 + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0](v16);
  sub_240A29E8C();
  (*(v9 + 8))(v13, v8);
  v17 = (*(v3 + 88))(v7, v2);
  if (v17 != *MEMORY[0x277CED6A0])
  {
    if (v17 == *MEMORY[0x277CED698] || v17 == *MEMORY[0x277CED6A8])
    {
      (*(v3 + 8))(v7, v2);
      return 1;
    }

    if (v17 != *MEMORY[0x277CED6B0])
    {
      if (v17 == *MEMORY[0x277CED6B8])
      {
        (*(v3 + 8))(v7, v2);
      }

      else if (v17 != *MEMORY[0x277CED690])
      {
        result = sub_240A2C58C();
        __break(1u);
        return result;
      }

      v22 = (v1 + *(v14 + 36));
      v23 = *v22;
      v24 = *(v22 + 1);
      v25[16] = v23;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
      sub_240A2BC5C();
      return v25[15];
    }
  }

  (*(v3 + 96))(v7, v2);
  v18 = *(v7 + 1);

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v20 = sub_240A2A0DC();
  (*(*(v20 - 8) + 8))(&v7[v19], v20);
  return 1;
}

double sub_240A18664@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_240A2975C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DiscoveringSetupView();
  if (*(v1 + *(v9 + 24)))
  {
    sub_240A18A9C(v36);
    LOBYTE(v32) = 1;
    v38 = 1;
  }

  else
  {
    v10 = *(v9 + 52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    sub_240A2BC5C();
    v11 = (*(v4 + 88))(v8, v3);
    v12 = (v4 + 8);
    if (v11 == *MEMORY[0x277CED240])
    {
      (*v12)(v8, v3);
      started = type metadata accessor for SetupStartViewController();
      v14 = objc_allocWithZone(started);
      v15 = &v14[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
      *v15 = 0;
      *(v15 + 1) = 0;
      v30.receiver = v14;
      v30.super_class = started;
      v16 = objc_msgSendSuper2(&v30, sel_initWithContentView_, 0);
      LOBYTE(v36[0]) = 1;
      sub_240A2BD3C();
      v17 = v39;
      v18 = v40;
      sub_240A2C06C();
      v19 = v16;
      v20 = sub_240A2BF1C();

      [v19 showActivityIndicatorWithStatus_];

      LOBYTE(v20) = sub_240A2B88C();
      v21 = sub_240A2B3AC();
      v31 = 0;
      *&v39 = v19;
      *(&v39 + 1) = MEMORY[0x277D84F90];
      v40 = v17;
      v41[0] = v18;
      *&v41[1] = v36[0];
      *&v41[4] = *(v36 + 3);
      *&v41[8] = v21;
      v41[16] = v20;
      v41[17] = 0;
    }

    else
    {
      (*v12)(v8, v3);
      v22 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
      LOBYTE(v36[0]) = 1;
      sub_240A2BD3C();
      v23 = v39;
      v24 = v40;
      sub_240A2C06C();
      v25 = v22;
      v26 = sub_240A2BF1C();

      [v25 showActivityIndicatorWithStatus_];

      LOBYTE(v26) = sub_240A2B88C();
      v27 = sub_240A2B3AC();
      v31 = 1;
      *&v39 = v25;
      *(&v39 + 1) = MEMORY[0x277D84F90];
      v40 = v23;
      v41[0] = v24;
      *&v41[1] = v36[0];
      *&v41[4] = *(v36 + 3);
      *&v41[8] = v27;
      v41[16] = v26;
      v41[17] = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
    sub_240936BEC();
    sub_240936CA4();
    sub_240A2B6EC();
    v36[0] = v32;
    v36[1] = v33;
    v36[2] = v34;
    v37 = v35;
    v31 = 0;
    v38 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
  sub_240936B60();
  sub_240A2B6EC();
  v28 = v40;
  *a1 = v39;
  *(a1 + 16) = v28;
  result = *v41;
  *(a1 + 32) = *v41;
  *(a1 + 47) = *&v41[15];
  return result;
}

uint64_t sub_240A18A9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F0F8, &qword_240A38E48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v38 - v6;
  v8 = sub_240A29EFC();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v38 - v15;
  v17 = sub_240A29EEC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(type metadata accessor for DiscoveringSetupView() + 32);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0](v24);
  sub_240A29E8C();
  v25 = v17;
  v26 = v40;
  (*(v18 + 8))(v22, v25);
  v27 = v8;
  if ((*(v26 + 88))(v16, v8) != *MEMORY[0x277CED6A0])
  {
    goto LABEL_7;
  }

  v38 = v2;
  v39 = v16;
  (*(v26 + 16))(v13, v16, v8);
  v28 = v26;
  v29 = v27;
  (*(v26 + 96))(v13, v27);
  v31 = *v13;
  v30 = *(v13 + 1);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v33 = sub_240A2A0DC();
  v34 = *(v33 - 8);
  if ((*(v34 + 88))(&v13[v32], v33) != *MEMORY[0x277CED780])
  {
    (*(v34 + 8))(&v13[v32], v33);
    goto LABEL_6;
  }

  (*(v34 + 96))(&v13[v32], v33);
  if (*&v13[v32] != 4)
  {
LABEL_6:

    v27 = v29;
    v2 = v38;
    v16 = v39;
    v26 = v28;
LABEL_7:
    *v7 = sub_240A2B55C();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F100, &unk_240A38E50);
    sub_240A18EB4(v2, &v7[*(v36 + 44)]);
    sub_24091CE28(&qword_27E50F108, &qword_27E50F0F8, &qword_240A38E48);
    v35 = sub_240A2BCDC();
    goto LABEL_8;
  }

  v42 = v31;
  v43 = v30;
  sub_24094032C();
  v35 = sub_240A2BCDC();
  v27 = v29;
  v16 = v39;
  v26 = v28;
LABEL_8:
  result = (*(v26 + 8))(v16, v27);
  *v41 = v35;
  return result;
}

uint64_t sub_240A18EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F110, &qword_240A38E60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F118, &qword_240A38E68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F120, &qword_240A38E70);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v66 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v66 - v24;
  if ((sub_240A18314() & 1) != 0 && (sub_240A17ECC() & 1) == 0)
  {
    v26 = sub_240A2B59C();
  }

  else
  {
    v26 = sub_240A2B58C();
  }

  *v7 = v26;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F128, &qword_240A38E78);
  sub_240A19904(a1, &v7[*(v27 + 44)]);
  v28 = sub_240A2B86C();
  sub_24093A86C(v7, v12, &qword_27E50F110, &qword_240A38E60);
  v29 = &v12[*(v8 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = sub_240A2B85C();
  sub_24093A86C(v12, v22, &qword_27E50F118, &qword_240A38E68);
  v31 = &v22[*(v13 + 36)];
  *v31 = v30;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  v32 = v25;
  sub_24093A86C(v22, v25, &qword_27E50F120, &qword_240A38E70);
  v33 = sub_240A17ECC();
  v76 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if ((v33 & 1) == 0)
  {
    sub_240A19368(v87);
    v76 = v87[0];
    sub_240A2BDEC();
    sub_240A2B42C();
    v34 = v91;
    v35 = v92;
    v36 = v93;
    v37 = v94;
    v38 = v95;
    v39 = v96;
    v40 = v97;
    v41 = v98;
    v42 = v99;
    v43 = v100;
    v44 = v101;
    v45 = v102;
    v46 = v103;
    v47 = v104;
  }

  v67 = v39;
  v68 = v47;
  *&v77 = v43;
  *(&v77 + 1) = v44;
  *&v78 = v45;
  *(&v78 + 1) = v46;
  v48 = v32;
  v73 = v32;
  v74 = v18;
  v49 = v18;
  v50 = v18;
  v51 = v34;
  v69 = v34;
  v70 = v35;
  v52 = v38;
  v71 = v40;
  v72 = v41;
  v53 = v42;
  sub_240919298(v48, v50, &qword_27E50F120, &qword_240A38E70);
  v54 = v49;
  v55 = v75;
  sub_240919298(v54, v75, &qword_27E50F120, &qword_240A38E70);
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F130, &unk_240A38E80) + 48);
  v57 = v76;
  *&v79 = v76;
  *(&v79 + 1) = v51;
  *&v80 = v35;
  *(&v80 + 1) = v36;
  *&v81 = v37;
  *(&v81 + 1) = v52;
  v58 = v67;
  *&v82 = v67;
  *(&v82 + 1) = v40;
  *&v83 = v41;
  *(&v83 + 1) = v53;
  v84 = v77;
  v85 = v78;
  v59 = v68;
  v86 = v68;
  *(v56 + 112) = v68;
  v60 = v84;
  *(v56 + 64) = v83;
  *(v56 + 80) = v60;
  *(v56 + 96) = v85;
  v61 = v79;
  v62 = v80;
  v63 = v82;
  *(v56 + 32) = v81;
  *(v56 + 48) = v63;
  *v56 = v61;
  *(v56 + 16) = v62;
  v64 = v57;
  sub_240919298(&v79, v87, &qword_27E50C150, &unk_240A321B0);
  sub_240919300(v73, &qword_27E50F120, &qword_240A38E70);
  v87[0] = v64;
  v87[1] = v69;
  v87[2] = v70;
  v87[3] = v36;
  v87[4] = v37;
  v87[5] = v52;
  v87[6] = v58;
  v87[7] = v71;
  v87[8] = v72;
  v87[9] = v53;
  v88 = v77;
  v89 = v78;
  v90 = v59;
  sub_240919300(v87, &qword_27E50C150, &unk_240A321B0);
  return sub_240919300(v74, &qword_27E50F120, &qword_240A38E70);
}

uint64_t sub_240A19368@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v49 = &v44 - v5;
  v51 = type metadata accessor for PairingView();
  v6 = *(*(v51 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v51, v7);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v44 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C158, &qword_240A38E90);
  v13 = *(*(v47 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v47, v14);
  v45 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v46 = &v44 - v18;
  v19 = sub_240A29EFC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_240A29EEC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DiscoveringSetupView();
  v31 = *(v48 + 32);
  v52 = v1;
  MEMORY[0x245CCC9B0](v2);
  sub_240A29E8C();
  (*(v26 + 8))(v30, v25);
  v32 = (*(v20 + 88))(v24, v19);
  if (v32 == *MEMORY[0x277CED6A0])
  {
    goto LABEL_2;
  }

  if (v32 == *MEMORY[0x277CED698] || v32 == *MEMORY[0x277CED6A8])
  {
    (*(v20 + 8))(v24, v19);
    goto LABEL_6;
  }

  if (v32 == *MEMORY[0x277CED6B0])
  {
LABEL_2:
    (*(v20 + 96))(v24, v19);
    v33 = *(v24 + 1);

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
    v35 = sub_240A2A0DC();
    (*(*(v35 - 8) + 8))(&v24[v34], v35);
LABEL_6:
    v36 = v52;
    v37 = v49;
    sub_240A2BD1C();
    swift_getKeyPath();
    sub_240A2BD0C();

    sub_240919300(v37, &qword_27E50BE28, qword_240A320C0);
    v38 = *(v36 + *(v48 + 28));
    v39 = v51;
    v40 = *(v51 + 24);
    *&v12[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    v12[*(v39 + 20)] = v38;
    sub_240A1B884(v12, v50, type metadata accessor for PairingView);
    sub_240A1B968(&qword_27E50C160, type metadata accessor for PairingView);
    v41 = sub_240A2BCDC();
    result = sub_240940380(v12);
LABEL_7:
    *v53 = v41;
    return result;
  }

  if (v32 == *MEMORY[0x277CED6B8])
  {
    (*(v20 + 8))(v24, v19);
LABEL_12:
    v43 = v46;
    sub_240A1B538(v46);
    sub_240919298(v43, v45, &qword_27E50C158, &qword_240A38E90);
    sub_2409403DC();
    v41 = sub_240A2BCDC();
    result = sub_240919300(v43, &qword_27E50C158, &qword_240A38E90);
    goto LABEL_7;
  }

  if (v32 == *MEMORY[0x277CED690])
  {
    goto LABEL_12;
  }

  result = sub_240A2C65C();
  __break(1u);
  return result;
}

uint64_t sub_240A19904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v253 = a2;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F140, &qword_240A38F00);
  v3 = *(*(v252 - 8) + 64);
  MEMORY[0x28223BE20](v252, v4);
  v233 = &v208 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F148, &qword_240A38F08);
  v231 = *(v6 - 8);
  v232 = v6;
  v7 = *(v231 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v214 = &v208 - v9;
  v227 = sub_240A29EEC();
  v225 = *(v227 - 8);
  v10 = *(v225 + 64);
  MEMORY[0x28223BE20](v227, v11);
  v224 = &v208 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F150, &unk_240A38F10);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v230 = &v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v239 = &v208 - v19;
  v20 = sub_240A2B75C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for DiscoveringSetupView();
  v218 = *(v241 - 8);
  v26 = *(v218 + 64);
  MEMORY[0x28223BE20](v241, v27);
  v234 = v28;
  v235 = &v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v212 = &v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v222 = &v208 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1B0, &unk_240A38F20);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v41 = MEMORY[0x28223BE20](v37, v40);
  v213 = &v208 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v43);
  v219 = &v208 - v44;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1B8, &unk_240A32250);
  v45 = *(*(v221 - 8) + 64);
  MEMORY[0x28223BE20](v221, v46);
  v220 = &v208 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1C0, &qword_240A38F30);
  v49 = *(*(v48 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v48 - 8, v50);
  v226 = &v208 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v53);
  v243 = &v208 - v54;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F158, &qword_240A38F38);
  v55 = *(*(v246 - 8) + 64);
  MEMORY[0x28223BE20](v246, v56);
  v248 = &v208 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F160, &qword_240A38F40);
  v216 = *(v58 - 8);
  v217 = v58;
  v59 = *(v216 + 64);
  MEMORY[0x28223BE20](v58, v60);
  v211 = &v208 - v61;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F168, &qword_240A38F48);
  v62 = *(*(v208 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v208, v63);
  v210 = &v208 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v66);
  v209 = &v208 - v67;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F170, &qword_240A38F50);
  v68 = *(*(v244 - 8) + 64);
  MEMORY[0x28223BE20](v244, v69);
  v215 = (&v208 - v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F178, &unk_240A38F58);
  v72 = *(*(v71 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v71 - 8, v73);
  v251 = &v208 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74, v76);
  v78 = &v208 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1C8, &qword_240A32260);
  v80 = *(*(v79 - 8) + 64);
  v82 = MEMORY[0x28223BE20](v79 - 8, v81);
  v250 = &v208 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82, v84);
  v257 = &v208 - v85;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F180, &qword_240A38F68);
  v86 = *(*(v240 - 8) + 64);
  v88 = MEMORY[0x28223BE20](v240, v87);
  v247 = &v208 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88, v90);
  v255 = &v208 - v91;
  v92 = sub_240A18314();
  v249 = v78;
  v228 = v25;
  v229 = v20;
  v242 = v21;
  v237 = v37;
  v238 = v29;
  v236 = v38;
  v223 = v30;
  if ((v92 & 1) != 0 || (sub_240A17ECC() & 1) == 0)
  {
    v245 = 0;
  }

  else
  {
    sub_240A19368(v267);
    v245 = *&v267[0];
  }

  *&v267[0] = sub_240A1B010();
  *(&v267[0] + 1) = v93;
  v254 = sub_24091C4F8();
  v94 = sub_240A2B9CC();
  v96 = v95;
  v98 = v97;
  sub_240A2B8BC();
  v99 = sub_240A2B9AC();
  v256 = a1;
  v100 = v99;
  v102 = v101;
  v104 = v103;

  sub_240920658(v94, v96, v98 & 1);

  v105 = sub_240A2B99C();
  v107 = v106;
  LOBYTE(v96) = v108;
  v110 = v109;
  sub_240920658(v100, v102, v104 & 1);

  v111 = sub_240A2B86C();
  LOBYTE(v96) = v96 & 1;
  LOBYTE(v267[0]) = v96;
  LOBYTE(v264) = 1;
  v112 = sub_240A2B70C();
  *&v264 = v105;
  *(&v264 + 1) = v107;
  LOBYTE(v265) = v96;
  *(&v265 + 1) = v110;
  LOBYTE(v266[0]) = v111;
  *(v266 + 8) = 0u;
  *(&v266[1] + 8) = 0u;
  BYTE8(v266[2]) = 1;
  HIDWORD(v266[2]) = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1D8, &qword_240A32270);
  sub_24094055C();
  v113 = v255;
  sub_240A2BA6C();
  v267[2] = v266[0];
  v267[3] = v266[1];
  v267[4] = v266[2];
  v267[0] = v264;
  v267[1] = v265;
  sub_240919300(v267, &qword_27E50C1D8, &qword_240A32270);
  KeyPath = swift_getKeyPath();
  v115 = v113 + *(v240 + 36);
  *v115 = KeyPath;
  *(v115 + 8) = 1;
  *&v264 = sub_240A1B234();
  *(&v264 + 1) = v116;
  v117 = sub_240A2B9CC();
  v119 = v118;
  v121 = v120;
  sub_240A2B96C();
  v122 = sub_240A2B9AC();
  v124 = v123;
  LOBYTE(v100) = v125;

  sub_240920658(v117, v119, v121 & 1);

  LODWORD(v264) = sub_240A2B72C();
  v126 = sub_240A2B98C();
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v133 = v100 & 1;
  v134 = v256;
  sub_240920658(v122, v124, v133);

  v135 = (sub_240A18314() & 1) == 0;
  v136 = swift_getKeyPath();
  if (sub_240A18314())
  {
    v137 = 12.0;
  }

  else
  {
    v137 = 0.0;
  }

  v138 = swift_getKeyPath();
  v263 = v130 & 1;
  *&v259 = v126;
  *(&v259 + 1) = v128;
  LOBYTE(v260) = v130 & 1;
  *(&v260 + 1) = v132;
  *&v261 = v136;
  BYTE8(v261) = v135;
  *&v262 = v138;
  *(&v262 + 1) = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1F8, &unk_240A38FD0);
  sub_2409406EC();
  sub_240A2BA6C();
  v264 = v259;
  v265 = v260;
  v266[0] = v261;
  v266[1] = v262;
  sub_240919300(&v264, &qword_27E50C1F8, &unk_240A38FD0);
  if (sub_240A18314())
  {
    v139 = sub_240A17ECC();
    v140 = 1;
    v141 = v249;
    v142 = v215;
    if (v139)
    {
      v143 = v209;
      sub_240A2BD5C();
      sub_240A2BDEC();
      sub_240A2B28C();
      v144 = (v143 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1B0, &qword_240A39000) + 36));
      v145 = v260;
      *v144 = v259;
      v144[1] = v145;
      v144[2] = v261;
      v146 = sub_240A2B72C();
      *(v143 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1B8, &qword_240A39008) + 36)) = v146;
      v147 = v143 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1C0, &qword_240A39010) + 36);
      v148 = *MEMORY[0x277CE0118];
      v149 = sub_240A2B57C();
      (*(*(v149 - 8) + 104))(v147, v148, v149);
      *(v147 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1C8, &qword_240A39018) + 36)) = 256;
      v150 = sub_240A2B86C();
      v151 = v143 + *(v208 + 36);
      *v151 = v150;
      *(v151 + 8) = 0u;
      *(v151 + 24) = 0u;
      *(v151 + 40) = 1;
      sub_240A19368(&v258);
      v152 = v258;
      v153 = v210;
      sub_240919298(v143, v210, &qword_27E50F168, &qword_240A38F48);
      v154 = v211;
      sub_240919298(v153, v211, &qword_27E50F168, &qword_240A38F48);
      *(v154 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1D0, &unk_240A39020) + 48)) = v152;

      sub_240919300(v143, &qword_27E50F168, &qword_240A38F48);

      sub_240919300(v153, &qword_27E50F168, &qword_240A38F48);
      sub_240A1BE54(v154, v142);
      v140 = 0;
    }

    (*(v216 + 56))(v142, v140, 1, v217);
    sub_240919298(v142, v248, &qword_27E50F170, &qword_240A38F50);
    swift_storeEnumTagMultiPayload();
    sub_240A1B9B0();
    sub_24091CE28(&qword_27E50F1A0, &qword_27E50F140, &qword_240A38F00);
    sub_240A2B6EC();
    sub_240919300(v142, &qword_27E50F170, &qword_240A38F50);
  }

  else
  {
    v155 = (v134 + *(v241 + 40));
    v156 = v155[1];
    v157 = v228;
    if (v156)
    {
      v158 = *v155;

      sub_240A2C06C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v159 = swift_allocObject();
      *(v159 + 16) = xmmword_240A305D0;
      *(v159 + 56) = MEMORY[0x277D837D0];
      *(v159 + 64) = sub_240913AEC();
      *(v159 + 32) = v158;
      *(v159 + 40) = v156;
      v160 = sub_240A2BF6C();
      v162 = v161;
    }

    else
    {
      v160 = sub_240A2C06C();
      v162 = v163;
    }

    v164 = v235;
    *&v259 = v160;
    *(&v259 + 1) = v162;
    sub_240A1B884(v134, v235, type metadata accessor for DiscoveringSetupView);
    v165 = (*(v218 + 80) + 16) & ~*(v218 + 80);
    v217 = *(v218 + 80);
    v166 = swift_allocObject();
    v240 = v165;
    sub_240A1B8EC(v164, v166 + v165);
    v167 = v222;
    sub_240A2BCCC();
    sub_240A2B74C();
    v168 = sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
    v169 = sub_240A1B968(&qword_27E50C228, MEMORY[0x277CDE400]);
    v170 = v219;
    v171 = v238;
    v172 = v229;
    v218 = v168;
    v216 = v169;
    sub_240A2BA1C();
    v173 = v242 + 8;
    v215 = *(v242 + 8);
    v215(v157, v172);
    v223 = *(v223 + 8);
    (v223)(v167, v171);
    LOBYTE(v171) = sub_240A2B86C();
    v174 = v220;
    (*(v236 + 32))(v220, v170, v237);
    v175 = v174 + *(v221 + 36);
    *v175 = v171;
    *(v175 + 8) = 0u;
    *(v175 + 24) = 0u;
    v176 = v157;
    v177 = 1;
    *(v175 + 40) = 1;
    sub_240940888();
    sub_240A2BA6C();
    sub_240919300(v174, &qword_27E50C1B8, &unk_240A32250);
    v178 = *(v241 + 32);
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
    v180 = v224;
    MEMORY[0x245CCC9B0](v179);
    LOBYTE(v178) = sub_240A29E7C();
    (*(v225 + 8))(v180, v227);
    if (v178)
    {
      *&v259 = sub_240A2C06C();
      *(&v259 + 1) = v181;
      v242 = v173;
      v182 = v172;
      v183 = v176;
      v184 = v235;
      sub_240A1B884(v134, v235, type metadata accessor for DiscoveringSetupView);
      v185 = v240;
      v186 = swift_allocObject();
      sub_240A1B8EC(v184, v186 + v185);
      v187 = v212;
      sub_240A2BCCC();
      sub_240A2B74C();
      v188 = v213;
      v189 = v238;
      v190 = v218;
      v191 = v216;
      sub_240A2BA1C();
      v215(v183, v182);
      (v223)(v187, v189);
      *&v259 = v189;
      *(&v259 + 1) = v182;
      *&v260 = v190;
      *(&v260 + 1) = v191;
      swift_getOpaqueTypeConformance2();
      v192 = v214;
      v193 = v237;
      sub_240A2BA6C();
      (*(v236 + 8))(v188, v193);
      sub_24093A86C(v192, v239, &qword_27E50F148, &qword_240A38F08);
      v177 = 0;
    }

    v194 = v239;
    (*(v231 + 56))(v239, v177, 1, v232);
    v195 = v243;
    v196 = v226;
    sub_240919298(v243, v226, &qword_27E50C1C0, &qword_240A38F30);
    v197 = v230;
    sub_240919298(v194, v230, &qword_27E50F150, &unk_240A38F10);
    v198 = v233;
    sub_240919298(v196, v233, &qword_27E50C1C0, &qword_240A38F30);
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F188, &qword_240A38FE8);
    sub_240919298(v197, v198 + *(v199 + 48), &qword_27E50F150, &unk_240A38F10);
    sub_240919300(v197, &qword_27E50F150, &unk_240A38F10);
    sub_240919300(v196, &qword_27E50C1C0, &qword_240A38F30);
    sub_240919298(v198, v248, &qword_27E50F140, &qword_240A38F00);
    swift_storeEnumTagMultiPayload();
    sub_240A1B9B0();
    sub_24091CE28(&qword_27E50F1A0, &qword_27E50F140, &qword_240A38F00);
    v141 = v249;
    sub_240A2B6EC();
    sub_240919300(v198, &qword_27E50F140, &qword_240A38F00);
    sub_240919300(v194, &qword_27E50F150, &unk_240A38F10);
    sub_240919300(v195, &qword_27E50C1C0, &qword_240A38F30);
  }

  v200 = v255;
  v201 = v247;
  sub_240919298(v255, v247, &qword_27E50F180, &qword_240A38F68);
  v202 = v257;
  v203 = v250;
  sub_240919298(v257, v250, &qword_27E50C1C8, &qword_240A32260);
  v204 = v251;
  sub_240919298(v141, v251, &qword_27E50F178, &unk_240A38F58);
  v205 = v253;
  *v253 = v245;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1A8, &unk_240A38FF0);
  sub_240919298(v201, v205 + v206[12], &qword_27E50F180, &qword_240A38F68);
  sub_240919298(v203, v205 + v206[16], &qword_27E50C1C8, &qword_240A32260);
  sub_240919298(v204, v205 + v206[20], &qword_27E50F178, &unk_240A38F58);
  sub_240919300(v141, &qword_27E50F178, &unk_240A38F58);
  sub_240919300(v202, &qword_27E50C1C8, &qword_240A32260);
  sub_240919300(v200, &qword_27E50F180, &qword_240A38F68);
  sub_240919300(v204, &qword_27E50F178, &unk_240A38F58);
  sub_240919300(v203, &qword_27E50C1C8, &qword_240A32260);
  sub_240919300(v201, &qword_27E50F180, &qword_240A38F68);
}

uint64_t sub_240A1B010()
{
  v1 = sub_240A29DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_240A18314() & 1) != 0 || (v7 = type metadata accessor for DiscoveringSetupView(), v8 = (v0 + *(v7 + 40)), (v9 = v8[1]) == 0))
  {

    return sub_240A2C06C();
  }

  else
  {
    v10 = *v8;
    v11 = *(v7 + 20);

    sub_240945D78(v6);
    sub_240A2C05C();
    (*(v2 + 8))(v6, v1);
    sub_240A2C06C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_240A305D0;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_240913AEC();
    *(v12 + 32) = v10;
    *(v12 + 40) = v9;
    v13 = sub_240A2BF6C();

    return v13;
  }
}

uint64_t sub_240A1B234()
{
  v1 = sub_240A29DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_240A18314())
  {
    v7 = sub_240A2BF1C();
    v8 = SFLocalizableWAPIStringKeyForKey();

    sub_240A2BF4C();
    v9 = v0 + *(type metadata accessor for DiscoveringSetupView() + 20);
    sub_240945D78(v6);
    sub_240A2C05C();
  }

  else
  {
    v10 = v0 + *(type metadata accessor for DiscoveringSetupView() + 20);
    sub_240945D78(v6);
    sub_240A2C05C();
  }

  (*(v2 + 8))(v6, v1);
  v11 = sub_240A2C06C();

  return v11;
}

uint64_t sub_240A1B3F0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DiscoveringSetupView() + 36));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  return sub_240A2BC6C();
}

uint64_t sub_240A1B46C()
{
  v0 = sub_240A29EEC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = *(type metadata accessor for DiscoveringSetupView() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0]();
  sub_240A29EBC();
  return sub_240A2BCFC();
}

uint64_t sub_240A1B538@<X0>(uint64_t a1@<X8>)
{
  v32[0] = a1;
  v1 = sub_240A2BBDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F138, &unk_240A38EF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C168, &qword_240A32218);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v32 - v17;
  sub_240A18314();
  sub_240A2BBCC();
  (*(v2 + 104))(v6, *MEMORY[0x277CE0FE0], v1);
  v19 = sub_240A2BC1C();

  (*(v2 + 8))(v6, v1);
  v32[1] = v19;
  v32[2] = 0;
  v33 = 1;
  sub_240A2B8FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B830, &qword_240A31320);
  sub_2409208F0();
  sub_240A2BA0C();

  v20 = sub_240A2B72C();
  (*(v8 + 32))(v18, v12, v7);
  *&v18[*(v14 + 44)] = v20;
  LOBYTE(v20) = sub_240A2B85C();
  sub_240A2B1AC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v32[0];
  sub_24093A86C(v18, v32[0], &qword_27E50C168, &qword_240A32218);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C158, &qword_240A38E90);
  v31 = v29 + *(result + 36);
  *v31 = v20;
  *(v31 + 8) = v22;
  *(v31 + 16) = v24;
  *(v31 + 24) = v26;
  *(v31 + 32) = v28;
  *(v31 + 40) = 0;
  return result;
}

uint64_t sub_240A1B884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240A1B8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveringSetupView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240A1B968(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_240A1B9B0()
{
  result = qword_27E50F190;
  if (!qword_27E50F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50F170, &qword_240A38F50);
    sub_24091CE28(&qword_27E50F198, &qword_27E50F160, &qword_240A38F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F190);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for DiscoveringSetupView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C218, &qword_240A38FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_240A2B73C();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_240A29DBC();
    (*(*(v10 - 8) + 8))(&v5[v9], v10);
  }

  else
  {
    v11 = *&v5[v9];
  }

  v12 = &v5[v1[8]];
  v13 = *v12;

  v14 = *(v12 + 1);

  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0) + 32);
  v16 = sub_240A29EEC();
  (*(*(v16 - 8) + 8))(&v12[v15], v16);
  v17 = *&v5[v1[9] + 8];

  v18 = *&v5[v1[10] + 8];

  v19 = &v5[v1[12]];
  v20 = *v19;

  v21 = *(v19 + 1);

  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v23 = sub_240A2976C();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(&v19[v22], 6, v23))
  {
    (*(v24 + 8))(&v19[v22], v23);
  }

  v25 = &v5[v1[13]];
  v26 = sub_240A2975C();
  (*(*(v26 - 8) + 8))(v25, v26);
  v27 = *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0) + 28)];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240A1BE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F160, &qword_240A38F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240A1BEFC()
{
  result = qword_27E50F1D8;
  if (!qword_27E50F1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50F1E0, &unk_240A39030);
    sub_240936B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F1D8);
  }

  return result;
}

id AISAppleIDSignInConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AISAppleIDSignInConfiguration.username.getter()
{
  v1 = (v0 + OBJC_IVAR___AISAppleIDSignInConfiguration_username);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t AISAppleIDSignInConfiguration.username.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AISAppleIDSignInConfiguration_username);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t AISAppleIDSignInConfiguration.canEditUsername.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.canEditUsername.setter(char a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AISAppleIDSignInConfiguration.allowSkip.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.allowSkip.setter(char a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AISAppleIDSignInConfiguration.shouldShowSystemBackButton.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.shouldShowSystemBackButton.setter(char a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AISAppleIDSignInConfiguration.isProximitySetupEnabled.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_isProximitySetupEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.isProximitySetupEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_isProximitySetupEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_240A1CA14(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_240A1CAD0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void *AISAppleIDSignInConfiguration.aidaServiceContext.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_aidaServiceContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AISAppleIDSignInConfiguration.aidaServiceContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_aidaServiceContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AISAppleIDSignInConfiguration.signInFlowType.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.signInFlowType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AISAppleIDSignInConfiguration.ageMigrationPendingDOB.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  return sub_2409BF428(v1 + v3, a1);
}

uint64_t AISAppleIDSignInConfiguration.ageMigrationPendingDOB.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  sub_240963E78(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AISAppleIDSignInConfiguration.userAgeRange.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.userAgeRange.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AISAppleIDSignInConfiguration.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___AISAppleIDSignInConfiguration_username];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername] = 1;
  v0[OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip] = 0;
  v0[OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton] = 1;
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_serviceTypes;
  if (qword_27E50AFB8 != -1)
  {
    swift_once();
  }

  *&v0[v3] = qword_27E516368;
  v0[OBJC_IVAR___AISAppleIDSignInConfiguration_isProximitySetupEnabled] = 0;
  *&v0[OBJC_IVAR___AISAppleIDSignInConfiguration_privacyLinkIdentifiers] = &unk_28528BC30;
  *&v0[OBJC_IVAR___AISAppleIDSignInConfiguration_aidaServiceContext] = 0;
  *&v0[OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType] = 0;
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  v5 = sub_240A2962C();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  *&v0[OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;

  return objc_msgSendSuper2(&v7, sel_init);
}

id AISAppleIDSignInConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_240A1D624()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C738, &qword_240A33090);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_240A30BE0;
  v1 = *MEMORY[0x277CED1A0];
  v2 = *MEMORY[0x277CED1A8];
  *(v0 + 32) = *MEMORY[0x277CED1A0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CED1B8];
  v4 = *MEMORY[0x277CED1B0];
  *(v0 + 48) = *MEMORY[0x277CED1B8];
  *(v0 + 56) = v4;
  v10 = *MEMORY[0x277CED1C0];
  *(v0 + 64) = *MEMORY[0x277CED1C0];
  qword_27E516368 = v0;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return v10;
}

uint64_t type metadata accessor for AISAppleIDSignInConfiguration()
{
  result = qword_27E50F230;
  if (!qword_27E50F230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240A1D748()
{
  sub_240A16A08();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_240A1D8D4()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50F240);
  __swift_project_value_buffer(v0, qword_27E50F240);
  return sub_240A2AE9C();
}

id sub_240A1D920(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a1[5];
  v10 = a1[7];
  v47 = a1[6];
  v11 = v47;
  v48 = v10;
  v12 = a1[7];
  v49 = a1[8];
  v13 = a1[1];
  v14 = a1[3];
  v43 = a1[2];
  v15 = v43;
  v44 = v14;
  v16 = a1[3];
  v17 = a1[5];
  v45 = a1[4];
  v18 = v45;
  v46 = v17;
  v19 = a1[1];
  v42[0] = *a1;
  v20 = v42[0];
  v42[1] = v19;
  v5[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_started] = 0;
  v21 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_viewModel];
  *(v21 + 6) = v11;
  *(v21 + 7) = v12;
  *(v21 + 8) = a1[8];
  *(v21 + 2) = v15;
  *(v21 + 3) = v16;
  *(v21 + 4) = v18;
  *(v21 + 5) = v9;
  *v21 = v20;
  *(v21 + 1) = v13;
  v22 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_listAccounts];
  *v22 = a2;
  v22[1] = a3;
  v23 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_connect];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = v43;
  v25 = v44;
  v26 = BYTE8(v44);
  v39 = v43;
  v40 = v44;
  v41 = BYTE8(v44);
  objc_allocWithZone(type metadata accessor for ImageCardContentView());
  sub_240A1E2A8(v42, v38);
  sub_240964BBC(a2, a3);

  sub_2409E12F0(v24, *(&v24 + 1), v25, v26);
  v27 = sub_2409E0A0C(&v39);
  v37.receiver = v6;
  v37.super_class = type metadata accessor for StartCardViewController();
  v28 = objc_msgSendSuper2(&v37, sel_initWithContentView_, v27);
  v29 = *(&v45 + 1);
  v30 = v28;
  [v30 setDismissalType_];
  v31 = sub_240A2BF1C();
  [v30 setTitle_];

  v32 = sub_240A2BF1C();
  [v30 setSubtitle_];

  v33 = v45;
  v34 = *&v27[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v27[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v45;
  v35 = v33;

  [*&v27[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];

  sub_24090C1A0(a2);
  sub_240A1E278(v42);

  return v30;
}

void sub_240A1DB68()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for StartCardViewController();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v1 = &v0[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_viewModel];
  v2 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_viewModel + 96];
  v3 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_viewModel + 104];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_240A2BF1C();
  v18 = sub_240A1E250;
  v19 = v4;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_2409DFF20;
  v17 = &block_descriptor_33;
  v6 = _Block_copy(&v14);
  v7 = objc_opt_self();
  v8 = [v7 actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  if (*(v1 + 17))
  {
    if (*&v0[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_listAccounts])
    {
      v9 = *(v1 + 16);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v11 = sub_240A2BF1C();
      v18 = sub_240A1E270;
      v19 = v10;
      v14 = MEMORY[0x277D85DD0];
      v15 = 1107296256;
      v16 = sub_2409DFF20;
      v17 = &block_descriptor_9_1;
      v12 = _Block_copy(&v14);
      v13 = [v7 actionWithTitle:v11 style:1 handler:v12];

      _Block_release(v12);
    }
  }
}

void sub_240A1DE0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_240A1DFA8();
  }
}

void sub_240A1DE60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_started] & 1) == 0)
    {
      v1 = *&Strong[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_listAccounts];
      if (v1)
      {
        v2 = *&Strong[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_listAccounts + 8];
        v3 = Strong;
        v1();
        Strong = v3;
      }
    }
  }
}

void sub_240A1DFA8()
{
  if (qword_27E50AFC0 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50F240);
  v2 = v0;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(&v2->isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_started);

    _os_log_impl(&dword_2408FE000, v3, v4, "Calling handleStartAction with started=%{BOOL}d", v5, 8u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  if ((*(&v2->isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_started) & 1) == 0)
  {
    *(&v2->isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_started) = 1;
    v6 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_viewModel;
    [v2 setDismissalType:*(&v2[10].isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_viewModel)];
    v7 = *(v6 + 14);
    v8 = *(v6 + 15);
    v9 = sub_240A2BF1C();
    [v2 showActivityIndicatorWithStatus:v9];

    v10 = *(&v2[1].isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_connect);
    (*(&v2->isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_connect))();
  }
}

id sub_240A1E15C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StartCardViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240A1E2E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_24091C780(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_24091C780(v32, v33);
    v17 = *(v2 + 40);
    result = sub_240A2C42C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_24091C780(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_240A1E5B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_24091C780(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_24091C780(v34, v35);
    v19 = *(v2 + 40);
    result = sub_240A2C42C();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_24091C780(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_240A1E87C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C010, &unk_240A31650);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
        swift_dynamicCast();
        sub_24091C780(&v25, v27);
        sub_24091C780(v27, v28);
        sub_24091C780(v28, &v26);
        result = sub_240925A1C(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_24091C780(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_24091C780(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_240A1EADC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_240913DC0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_24091C780(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_24091C780(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_24091C780(v32, v33);
    v17 = *(v2 + 40);
    result = sub_240A2C42C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_24091C780(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_240A1EDA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BB20, qword_240A39260);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        v17 = (*(a1 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a1 + 56) + 8 * v16);
        sub_2409194E8(0, &qword_27E50C610, 0x277CED1E0);

        v21 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
        swift_dynamicCast();
        result = sub_240925A1C(v19, v18);
        if (v22)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v27;
          result = swift_unknownObjectRelease();
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v23 = (v2[6] + 16 * result);
          *v23 = v19;
          v23[1] = v18;
          *(v2[7] + 8 * result) = v27;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_240A1EFE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_240A1F058(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_240A2B00C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = sub_240A2C21C();
  v2[9] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v2[10] = v7;
  v2[11] = v6;

  return MEMORY[0x2822009F8](sub_240A1F15C, v7, v6);
}

uint64_t sub_240A1F15C()
{
  v1 = v0[7];
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AIDASignInViewController: Begin AIDA sign-in.", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  sub_240A1E2E8(v8);
  v10 = objc_allocWithZone(MEMORY[0x277CFD4A8]);
  v11 = sub_240A2BE9C();

  v12 = [v10 initWithAuthenticationResults_];
  v0[12] = v12;

  if (v12)
  {
    v13 = v0[8];
    v15 = v0[2];
    v14 = v0[3];
    v16 = sub_240A1F6F0(v12, *(v14 + OBJC_IVAR___AISAIDASignInViewController_navController));
    v0[13] = v16;
    [v16 setShouldForceOperation_];
    [v16 setOperationUIPermissions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v17 = sub_240A2BE9C();
    [v16 setAuthenticationResults_];

    v18 = sub_240A2C20C();
    v0[14] = v18;
    v19 = swift_task_alloc();
    v0[15] = v19;
    *(v19 + 16) = v14;
    *(v19 + 24) = v16;
    v20 = *(MEMORY[0x277D859E0] + 4);
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_240A1F508;
    v22 = MEMORY[0x277D85700];
    v23 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 17, v18, v22, 0xD000000000000018, 0x8000000240A40440, sub_240A20694, v19, v23);
  }

  else
  {
    v24 = v0[9];
    v25 = v0[6];

    sub_240A2AE9C();
    v26 = sub_240A2AFFC();
    v27 = sub_240A2C28C();
    v28 = os_log_type_enabled(v26, v27);
    v30 = v0[5];
    v29 = v0[6];
    v31 = v0[4];
    if (v28)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2408FE000, v26, v27, "AIDA sign-in missing cdpContext.", v32, 2u);
      MEMORY[0x245CCDDB0](v32, -1, -1);
    }

    v9(v29, v31);
    v34 = v0[6];
    v33 = v0[7];

    v35 = v0[1];

    return v35(0);
  }
}

uint64_t sub_240A1F508()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v8 = *v0;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_240A1F668, v6, v5);
}

uint64_t sub_240A1F668()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  v3 = *(v0 + 136);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6(v3);
}

id sub_240A1F6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, "AIDASignInViewController: creating AIDA context.", v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v13 = sub_240A1FE3C(a1, a2);
  v14 = [objc_allocWithZone(MEMORY[0x277CED1D8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F308, &unk_240A39240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  v16 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  *(inited + 64) = sub_2409194E8(0, &unk_27E50F310, 0x277CECAD0);
  *(inited + 40) = v13;
  v17 = v16;
  v18 = v13;
  sub_240926350(inited);
  swift_setDeallocating();
  sub_240919300(inited + 32, &qword_27E50BAD8, &qword_240A31640);
  type metadata accessor for AIDAServiceType(0);
  sub_240A20740();
  v19 = sub_240A2BE9C();

  [v14 setSignInContexts_];

  [v14 setViewController_];
  sub_240A200E0(v14, a2);

  return v14;
}

void sub_240A1F988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = aBlock - v10;
  v12 = *(a2 + OBJC_IVAR___AISAIDASignInViewController_aidaOwnersManager);
  (*(v7 + 16))(aBlock - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  aBlock[4] = sub_240A2069C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240A1EFE0;
  aBlock[3] = &block_descriptor_34;
  v15 = _Block_copy(aBlock);

  [v12 signInToAllServicesInBackgroundUsingContext:a3 completion:v15];
  _Block_release(v15);
}

uint64_t sub_240A1FB4C(char a1, void *a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_240A2AE9C();
  v10 = a2;
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C29C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 67109378;
    *(v13 + 4) = a1 & 1;
    *(v13 + 8) = 2112;
    if (a2)
    {
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v13 + 10) = v16;
    *v14 = v17;
    _os_log_impl(&dword_2408FE000, v11, v12, "AIDASignInViewController: AIDA sign-in done with result: %{BOOL}d error: %@.", v13, 0x12u);
    sub_240919300(v14, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v19[15] = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  return sub_240A2C1CC();
}

id sub_240A1FD88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AIDASignInViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_240A1FE3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2974C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x277CECAD0]) initWithPresentingViewController_];
  [v18 setBackgroundDataclassEnablement_];
  [v18 setFindMyActivationAction_];
  (*(v13 + 104))(v17, *MEMORY[0x277CED208], v12);
  LOBYTE(a2) = sub_240A2973C();
  (*(v13 + 8))(v17, v12);
  if ((a2 & 1) != 0 && *(v3 + OBJC_IVAR___AISAIDASignInViewController_isTeenFlow) == 1)
  {
    sub_240A2AE9C();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C29C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "AIDASignInViewController: Skipping CDP enablement for teen flow - will instrument post sign-in/setup.", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    [v18 setSkipCDPEnablement_];
  }

  else
  {
    [v18 setCdpContext_];
  }

  return v18;
}

void sub_240A200E0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2974C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v17, *MEMORY[0x277CED208], v12);
  v18 = sub_240A2973C();
  (*(v13 + 8))(v17, v12);
  if ((v18 & 1) == 0 || (*(v3 + OBJC_IVAR___AISAIDASignInViewController_isTeenFlow) & 1) == 0)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277CFDAE0]) initWithPresentingViewController_];
    if (v19)
    {
      v20 = v19;
      [v19 setDelegate_];
      [a1 setCdpUiProvider_];
      v21 = *(v3 + OBJC_IVAR___AISAIDASignInViewController_cdpUIController);
      *(v3 + OBJC_IVAR___AISAIDASignInViewController_cdpUIController) = v20;
    }

    else
    {
      sub_240A2AE9C();
      v22 = sub_240A2AFFC();
      v23 = sub_240A2C2AC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2408FE000, v22, v23, "Failed to create CDPUIController for AIDA context.", v24, 2u);
        MEMORY[0x245CCDDB0](v24, -1, -1);
      }

      (*(v7 + 8))(v11, v6);
    }
  }
}

void sub_240A20384(void *a1, int a2, void *a3, void *aBlock, const char *a5)
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  sub_240A20544(v8, a5);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_240A20544(uint64_t a1, const char *a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, a2, v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  return (*(a1 + 16))(a1);
}

uint64_t sub_240A2069C(char a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230) - 8) + 80);

  return sub_240A1FB4C(a1, a2);
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_240A20740()
{
  result = qword_27E50BAF0;
  if (!qword_27E50BAF0)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BAF0);
  }

  return result;
}

void sub_240A20798(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_27E50AFC8 != -1)
  {
    swift_once();
  }

  v10 = sub_240A2B00C();
  __swift_project_value_buffer(v10, qword_27E50F320);
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C2CC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2408FE000, v11, v12, "Begin remoteUI flow for stolen device protection", v13, 2u);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  v14 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
  v15 = *&v5[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
  v16 = *&v5[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler + 8];
  *v14 = a3;
  *(v14 + 1) = a4;

  sub_24090C1A0(v15);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v5;
  v20[4] = sub_240A219DC;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_240A21718;
  v20[3] = &block_descriptor_35;
  v18 = _Block_copy(v20);

  v19 = v5;

  [a2 urlForKey:a1 completion:v18];
  _Block_release(v18);
}

uint64_t sub_240A2097C()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50F320);
  __swift_project_value_buffer(v0, qword_27E50F320);
  return sub_240A2AE9C();
}

id sub_240A209C8()
{
  v1 = v0;
  if (qword_27E50AFC8 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50F320);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Deinit StolenDeviceProtectionViewModel", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  [*&v1[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_remoteUIPresenter] setDelegate_];
  v6 = &v1[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
  v7 = *&v1[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
  v8 = *&v1[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler + 8];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_24090C1A0(v7);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for StolenDeviceProtectionViewModel();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_240A20BC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = a4;
  v32 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v31 - v17;
  v19 = sub_240A2C24C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_240A21A00(a1, v13);
  sub_240A2C21C();

  v20 = a2;
  v21 = a5;
  v22 = sub_240A2C20C();
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v22;
  *(v26 + 24) = v27;
  sub_240A21A70(v13, v26 + v23);
  v28 = (v26 + v24);
  v29 = v31;
  *v28 = v32;
  v28[1] = v29;
  *(v26 + v25) = a2;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  sub_2409230D4(0, 0, v18, &unk_240A392A8, v26);
}

uint64_t sub_240A20DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  v9 = sub_240A2946C();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v11 = *(v10 + 64) + 15;
  v8[25] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150) - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v13 = sub_240A295AC();
  v8[27] = v13;
  v14 = *(v13 - 8);
  v8[28] = v14;
  v15 = *(v14 + 64) + 15;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  sub_240A2C21C();
  v8[31] = sub_240A2C20C();
  v17 = sub_240A2C1BC();
  v8[32] = v17;
  v8[33] = v16;

  return MEMORY[0x2822009F8](sub_240A20F94, v17, v16);
}

uint64_t sub_240A20F94()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  sub_240A21A00(v0[18], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[31];
    v5 = v0[26];

    sub_240919300(v5, &qword_27E50C7E0, &qword_240A33150);
    if (qword_27E50AFC8 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50F320);
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C2CC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "Missing criticalAccountEditURL", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    v11 = v0[20];
    v10 = v0[21];
    v12 = v0[19];

    v12(0, v10);
    v14 = v0[29];
    v13 = v0[30];
    v16 = v0[25];
    v15 = v0[26];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v20 = v0[29];
    v19 = v0[30];
    v21 = v0[27];
    v22 = v0[28];
    v23 = v0[25];
    v24 = v0[22];
    (*(v22 + 32))(v19, v0[26], v21);
    (*(v22 + 16))(v20, v19, v21);
    sub_240A2945C();
    v25 = *(v24 + OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_remoteUIPresenter);
    v26 = sub_240A2943C();
    v0[34] = v26;
    v0[2] = v0;
    v0[7] = v0 + 36;
    v0[3] = sub_240A212CC;
    v27 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240A13784;
    v0[13] = &block_descriptor_11_1;
    v0[14] = v27;
    [v25 loadRequest:v26 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_240A212CC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 280) = v3;
  v4 = *(v1 + 264);
  v5 = *(v1 + 256);
  if (v3)
  {
    v6 = sub_240A214DC;
  }

  else
  {
    v6 = sub_240A213FC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_240A213FC()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[27];
  v5 = v0[28];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v10 = v0[29];
  v9 = v0[30];
  v12 = v0[25];
  v11 = v0[26];

  v13 = v0[1];

  return v13();
}

uint64_t sub_240A214DC()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[31];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  swift_willThrow();
  (*(v5 + 8))(v4, v6);

  if (qword_27E50AFC8 != -1)
  {
    swift_once();
  }

  v7 = v0[35];
  v8 = sub_240A2B00C();
  __swift_project_value_buffer(v8, qword_27E50F320);
  v9 = v7;
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C2AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[35];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2408FE000, v10, v11, "Failed to load stolen device protection request with error: %@", v13, 0xCu);
    sub_240919300(v14, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  v17 = v0[35];
  v18 = v0[30];
  v19 = v0[27];
  v20 = v0[28];
  v22 = v0[19];
  v21 = v0[20];

  v23 = v17;
  v22(0, v17);

  (*(v20 + 8))(v18, v19);
  v25 = v0[29];
  v24 = v0[30];
  v27 = v0[25];
  v26 = v0[26];

  v28 = v0[1];

  return v28();
}

uint64_t sub_240A21718(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v17 - v9;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a2)
  {
    sub_240A2958C();
    v13 = sub_240A295AC();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_240A295AC();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = a3;
  v12(v10, a3);

  return sub_240919300(v10, &qword_27E50C7E0, &qword_240A33150);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240A21A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240A21A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240A21AE0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_240915E50;

  return sub_240A20DF8(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t sub_240A21C60(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_240A2C21C();
  v2[16] = sub_240A2C20C();
  v4 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A21CF8, v4, v3);
}

uint64_t sub_240A21CF8()
{
  v1 = v0 + 2;
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  v5 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  [v6 setPresentingViewController_];
  v7 = v6;
  [v7 setIsUsernameEditable_];
  [v7 setForceInlinePresentation_];

  sub_24091D0CC(v7);
  v8 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
  swift_beginAccess();
  if (*(v3 + v8))
  {

    sub_240A2ACDC();
  }

  v9 = v0[14];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v28 = v5;
    v10 = v0[15];
    v11 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask;
    swift_beginAccess();
    v12 = *(v10 + v11);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    type metadata accessor for AISNavigationPushMonitor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14[3] = 0;
    swift_unknownObjectWeakAssign();
    v14[4] = sub_2409FC74C;
    v14[5] = v13;
    *(swift_allocObject() + 16) = v14;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = v0[14];
      v0[2] = Strong;
      v27 = Strong;
      swift_getKeyPath();
      swift_unknownObjectRetain_n();

      v17 = v16;

      v18 = sub_240A2955C();

      v1 = v0 + 2;
    }

    else
    {
      swift_unknownObjectRetain_n();

      v18 = 0;
    }

    v19 = v14[3];
    v14[3] = v18;

    swift_unknownObjectRelease();

    v5 = v28;
  }

  if (v5)
  {
    v20 = v0[15];
    v0[6] = sub_240A2245C;
    v0[7] = v20;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_240976B34;
    v0[5] = &block_descriptor_36;
    v21 = _Block_copy(v1);
    v22 = v0[7];
    v23 = v7;
    v24 = v5;

    [v24 authenticateWithContext:v23 completion:v21];

    _Block_release(v21);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_240A220C8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16 - v7;
  v9 = sub_240A2C24C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_240A2C21C();

  v11 = a2;
  v12 = sub_240A2C20C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  v13[5] = a1;
  v13[6] = a2;

  sub_2409233D4(0, 0, v8, &unk_240A39310, v13);
}

uint64_t sub_240A22240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_240A2C21C();
  v6[9] = sub_240A2C20C();
  v8 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A222DC, v8, v7);
}

uint64_t sub_240A222DC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(v0 + 56))
    {
      v4 = *(v0 + 56);
    }

    else
    {
      v4 = sub_24092624C(MEMORY[0x277D84F90]);
    }

    v5 = *(v0 + 64);

    sub_24091D5C4(v4, v5);
  }

  **(v0 + 40) = Strong == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_240A223C4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240915E50;

  return sub_240A21C60(a1);
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240A2247C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240915E50;

  return sub_240A22240(a1, v4, v5, v6, v7, v8);
}

void sub_240A2255C(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50B430, &qword_240A30820);
  sub_240A2C76C();
  if (v2 <= 0x3F)
  {
    sub_240A22900();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_240A225F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 9;
  if (v3 + 1 > 9)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_240A22720(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 9)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 9;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_240A22900()
{
  if (!qword_27E50F3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50B430, &qword_240A30820);
    v0 = sub_240A2C76C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50F3C8);
    }
  }
}

unint64_t sub_240A22978()
{
  result = qword_27E50F3D0;
  if (!qword_27E50F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F3D0);
  }

  return result;
}

uint64_t sub_240A229CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);

    v6(v7);
  }

  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = 0;
}

uint64_t sub_240A22A54()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

__n128 sub_240A22AC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_240A29EFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v6 + 16))(v10, a1, v5);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 != *MEMORY[0x277CED6A0])
  {
    if (v11 == *MEMORY[0x277CED6A8])
    {
      (*(v6 + 96))(v10, v5);
      v21 = sub_240A2A0DC();
      v22 = *(v21 - 8);
      if ((*(v22 + 88))(v10, v21) != *MEMORY[0x277CED788])
      {
        v36 = v2[1];
        v56 = *v2;
        v57 = v36;
        v59[0] = *(v2 + 40);
        v37 = v59[0];
        *(v59 + 9) = *(v2 + 49);
        v53 = v56;
        v54 = v36;
        *&v55[0] = 2;
        *(&v55[1] + 1) = *(v59 + 9);
        *(v55 + 8) = v37;
        v58 = 2;
        sub_240A24770(&v53, &v46);
        sub_240A247A8(&v56);
        (*(v22 + 8))(v10, v21);
        goto LABEL_12;
      }

      v23 = v2[1];
      v56 = *v2;
      v57 = v23;
      v24 = *(v2 + 40);
      v59[0] = v24;
      v25 = *(v2 + 49);
      *(v59 + 9) = v25;
      v53 = v56;
      v54 = v23;
      v26 = 1;
    }

    else
    {
      if (v11 != *MEMORY[0x277CED690])
      {
        v38 = v2[1];
        v56 = *v2;
        v57 = v38;
        v59[0] = *(v2 + 40);
        v39 = v59[0];
        *(v59 + 9) = *(v2 + 49);
        v53 = v56;
        v54 = v38;
        *&v55[0] = 4;
        *(&v55[1] + 1) = *(v59 + 9);
        *(v55 + 8) = v39;
        v58 = 4;
        sub_240A24770(&v53, &v46);
        sub_240A247A8(&v56);
        (*(v6 + 8))(v10, v5);
        goto LABEL_12;
      }

      v30 = v2[1];
      v56 = *v2;
      v57 = v30;
      v24 = *(v2 + 40);
      v59[0] = v24;
      v25 = *(v2 + 49);
      *(v59 + 9) = v25;
      v53 = v56;
      v54 = v30;
      v26 = 5;
    }

    *&v55[0] = v26;
    *(&v55[1] + 1) = v25;
    *(v55 + 8) = v24;
    v58 = v26;
    v20 = &v46;
    goto LABEL_11;
  }

  (*(v6 + 96))(v10, v5);
  v13 = *v10;
  v12 = *(v10 + 1);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v15 = sub_240A2A0DC();
  v16 = *(v15 - 8);
  if ((*(v16 + 88))(&v10[v14], v15) == *MEMORY[0x277CED788])
  {
    v60[0] = *(v2 + 40);
    sub_240919300(v60, &unk_27E50C3E0, &unk_240A30960);
    v17 = v2[1];
    v46 = *v2;
    v47 = v17;
    v18 = *(v2 + 4);
    v19 = *(v2 + 7);
    v52 = *(v2 + 64);
    v42 = v46;
    v43 = v17;
    v44 = v18;
    *&v45[0] = v13;
    *(&v45[0] + 1) = v12;
    *&v45[1] = v19;
    BYTE8(v45[1]) = v52;
    v48 = v18;
    v49 = v13;
    v50 = v12;
    v51 = v19;
    sub_240A24770(&v42, &v56);
    sub_240A247A8(&v46);
    v56 = v42;
    v57 = v43;
    v59[0] = v45[0];
    *(v59 + 9) = *(v45 + 9);
    v53 = v42;
    v54 = v43;
    *&v55[0] = 1;
    *(&v55[1] + 1) = *(v45 + 9);
    *(v55 + 8) = v45[0];
    v58 = 1;
    v20 = v41;
LABEL_11:
    sub_240A24770(&v53, v20);
    sub_240A247A8(&v56);
    goto LABEL_12;
  }

  v60[0] = *(v2 + 40);
  sub_240919300(v60, &unk_27E50C3E0, &unk_240A30960);
  v27 = v2[1];
  v46 = *v2;
  v47 = v27;
  v28 = *(v2 + 4);
  v29 = *(v2 + 7);
  v52 = *(v2 + 64);
  v42 = v46;
  v43 = v27;
  v44 = v28;
  *&v45[0] = v13;
  *(&v45[0] + 1) = v12;
  *&v45[1] = v29;
  BYTE8(v45[1]) = v52;
  v48 = v28;
  v49 = v13;
  v50 = v12;
  v51 = v29;
  sub_240A24770(&v42, &v56);
  sub_240A247A8(&v46);
  v56 = v42;
  v57 = v43;
  v59[0] = v45[0];
  *(v59 + 9) = *(v45 + 9);
  v53 = v42;
  v54 = v43;
  *&v55[0] = 2;
  *(&v55[1] + 1) = *(v45 + 9);
  *(v55 + 8) = v45[0];
  v58 = 2;
  sub_240A24770(&v53, v41);
  sub_240A247A8(&v56);
  (*(v16 + 8))(&v10[v14], v15);
LABEL_12:
  v31 = v55[2];
  v33 = v55[0];
  result = v55[1];
  v34 = v54;
  v35 = *(&v53 + 1);
  LOBYTE(v56) = v55[2];
  *a2 = v53;
  *(a2 + 8) = v35;
  *(a2 + 16) = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = result;
  *(a2 + 64) = v31;
  return result;
}

id sub_240A22FC8()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C29C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "making new prox auth vc", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v11 = v1[3];
  v50 = v1[2];
  v51 = v11;
  v52 = v1[4];
  v53 = *(v1 + 80);
  v12 = v1[1];
  v48 = *v1;
  v49 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F3E0, &qword_240A39688);
  MEMORY[0x245CCC9B0](v55);
  v14 = sub_240A23444();
  sub_240A247A8(v55);
  v15 = [objc_allocWithZone(MEMORY[0x277CF03B8]) initWithViewModel_];

  v16 = v1[3];
  v50 = v1[2];
  v51 = v16;
  v52 = v1[4];
  v53 = *(v1 + 80);
  v17 = v1[1];
  v48 = *v1;
  v49 = v17;
  MEMORY[0x245CCC9B0](v54, v13);

  sub_240A247A8(v54);
  v18 = sub_240A2BF1C();

  [v15 setVerificationCode_];

  v19 = *(v1 + 14);
  *&v50 = *(v1 + 13);
  *(&v50 + 1) = v19;
  *&v48 = MEMORY[0x277D85DD0];
  *(&v48 + 1) = 1107296256;
  *&v49 = sub_2409EC704;
  *(&v49 + 1) = &block_descriptor_37;
  v20 = _Block_copy(&v48);

  [v15 setAlternateButtonAction_];
  _Block_release(v20);
  v21 = v1[3];
  v50 = v1[2];
  v51 = v21;
  v52 = v1[4];
  v53 = *(v1 + 80);
  v22 = v1[1];
  v48 = *v1;
  v49 = v22;
  MEMORY[0x245CCC9B0](v41, v13);
  v45 = v41[2];
  v46 = v42;
  v47 = v43;
  v44[0] = v41[0];
  v44[1] = v41[1];
  sub_240A247A8(v44);
  if (v45 == 1)
  {
    v23 = v1[3];
    v50 = v1[2];
    v51 = v23;
    v52 = v1[4];
    v53 = *(v1 + 80);
    v24 = v1[1];
    v48 = *v1;
    v49 = v24;
    MEMORY[0x245CCC9B0](v41, v13);
    v25 = v42;

    sub_240A247A8(v41);
    if (v25)
    {

      v48 = *(v1 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F3E8, &qword_240A39690);
      sub_240A2BC5C();
      v26 = v36;
      v27 = v1[3];
      v50 = v1[2];
      v51 = v27;
      v52 = v1[4];
      v53 = *(v1 + 80);
      v28 = v1[1];
      v48 = *v1;
      v49 = v28;
      MEMORY[0x245CCC9B0](v34, v13);
      v38 = v34[2];
      v39 = v34[3];
      v40 = v35;
      v36 = v34[0];
      v37 = v34[1];
      swift_beginAccess();
      v29 = *(v26 + 32);
      v30 = *(v26 + 64);
      v50 = *(v26 + 48);
      v51 = v30;
      LOBYTE(v52) = *(v26 + 80);
      v49 = v29;
      v48 = *(v26 + 16);
      *(v26 + 80) = v40;
      *(v26 + 16) = v36;
      v31 = v37;
      *(v26 + 48) = v38;
      *(v26 + 64) = v39;
      *(v26 + 32) = v31;
      sub_240919300(&v48, &qword_27E50F3F0, &qword_240A39698);
    }
  }

  return v15;
}

id sub_240A23444()
{
  v1 = v0;
  v31 = sub_240A2B00C();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31, v4);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A29DBC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v32[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277CF03C0]) initWithType_];
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = sub_240A2BF1C();
  [v13 setTitleText_];

  v17 = *(v1 + 64);
  if (v17)
  {
    sub_240A29DAC();
    sub_240A2BFCC();
    (*(v8 + 8))(v12, v7);
  }

  else
  {
    v18 = *(v1 + 56);
    sub_240A2C03C();
  }

  v19 = sub_240A2BF1C();

  [v13 setDetailedText_];

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = sub_240A2BF1C();
  [v13 setSecondaryButtonTitle_];

  if (v17)
  {
    [v13 setShowHeaderView_];
  }

  sub_240A2AE9C();
  sub_240A24770(v1, v32);
  v23 = sub_240A2AFFC();
  v24 = sub_240A2C29C();
  sub_240A247A8(v1);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32[0] = v26;
    *v25 = 136315138;
    v27 = sub_240A242C0();
    v29 = sub_240925464(v27, v28, v32);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_2408FE000, v23, v24, "Converted BringParentDeviceNearbyView.ViewModel to AKProximityMessageViewModel. Current state is %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x245CCDDB0](v26, -1, -1);
    MEMORY[0x245CCDDB0](v25, -1, -1);
  }

  (*(v2 + 8))(v6, v31);
  return v13;
}

void sub_240A2379C(void *a1)
{
  v2 = v1;
  v67 = a1;
  v68 = sub_240A2B00C();
  v3 = *(v68 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v68, v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v66 = &v63 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v64 = &v63 - v17;
  v18 = *(v1 + 48);
  v19 = *(v1 + 16);
  v92 = *(v1 + 32);
  v93 = v18;
  v20 = *(v1 + 48);
  v94 = *(v1 + 64);
  v21 = *(v1 + 16);
  v90 = *v1;
  v91 = v21;
  v78 = v92;
  v79 = v20;
  *v80 = *(v1 + 64);
  v95 = *(v1 + 80);
  v80[16] = *(v1 + 80);
  v76 = v90;
  v77 = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F3E0, &qword_240A39688);
  MEMORY[0x245CCC9B0](&v110);
  v23 = v110;
  v85 = v111;
  v86 = v112;
  v87 = v113;
  v88 = v114;
  v89 = *(v1 + 88);
  v76 = *(v1 + 88);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F3E8, &qword_240A39690);
  sub_240A2BC5C();
  v24 = v110;
  swift_beginAccess();
  v25 = *(v24 + 48);
  v111 = *(v24 + 32);
  v112 = v25;
  v113 = *(v24 + 64);
  v114 = *(v24 + 80);
  v110 = *(v24 + 16);
  sub_240A248F0(&v110, &v76);

  if (!*(&v23 + 1))
  {
    if (!*(&v110 + 1))
    {
      v76 = v23;
      v77 = v85;
      v78 = v86;
      v79 = v87;
      v80[0] = v88;
      sub_240919300(&v76, &qword_27E50F3F0, &qword_240A39698);
LABEL_22:
      v59 = v64;
      sub_240A2AE9C();
      v60 = sub_240A2AFFC();
      v61 = sub_240A2C29C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_2408FE000, v60, v61, "BringParentDeviceNearbyView - Ignoring duplicate view model update", v62, 2u);
        MEMORY[0x245CCDDB0](v62, -1, -1);
      }

      (*(v3 + 8))(v59, v68);
      return;
    }

    goto LABEL_6;
  }

  if (!*(&v110 + 1))
  {
LABEL_6:
    v77 = v85;
    v78 = v86;
    v79 = v87;
    v81 = v111;
    v76 = v23;
    v80[0] = v88;
    *&v80[8] = v110;
    v82 = v112;
    v83 = v113;
    v84 = v114;
    sub_240919300(&v76, &unk_27E50F3F8, &unk_240A396A0);
    goto LABEL_7;
  }

  v101 = v110;
  v102 = v111;
  v103 = v112;
  v104 = v113;
  v105 = v114;
  v109 = v114;
  v108[2] = v112;
  v108[3] = v113;
  v108[0] = v110;
  v108[1] = v111;
  v107 = v88;
  v106[2] = v86;
  v106[3] = v87;
  v106[1] = v85;
  v106[0] = v23;
  v26 = sub_240A244DC(v106, v108);
  sub_240919300(&v101, &qword_27E50F3F0, &qword_240A39698);
  v76 = v23;
  v77 = v85;
  v78 = v86;
  v79 = v87;
  v80[0] = v88;
  sub_240919300(&v76, &qword_27E50F3F0, &qword_240A39698);
  if (v26)
  {
    goto LABEL_22;
  }

LABEL_7:
  v78 = v92;
  v79 = v93;
  *v80 = v94;
  v80[16] = v95;
  v76 = v90;
  v77 = v91;
  MEMORY[0x245CCC9B0](&v101, v22);
  v73 = v103;
  v74 = v104;
  v75 = v105;
  v72[0] = v101;
  v72[1] = v102;
  sub_240A247A8(v72);
  v27 = v68;
  v28 = v66;
  v63 = v3;
  if (v73 != 1)
  {
    goto LABEL_12;
  }

  v78 = v92;
  v79 = v93;
  *v80 = v94;
  v80[16] = v95;
  v76 = v90;
  v77 = v91;
  MEMORY[0x245CCC9B0](&v101, v22);
  v29 = v104;

  sub_240A247A8(&v101);
  if (v29)
  {

    sub_240A2AE9C();
    v30 = v15;
    v31 = sub_240A2AFFC();
    v32 = sub_240A2C29C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2408FE000, v31, v32, "Saving first pairing view model", v33, 2u);
      MEMORY[0x245CCDDB0](v33, -1, -1);
    }

    v34 = *(v3 + 8);
    v34(v30, v27);
    v76 = v89;
    sub_240A2BC5C();
    v35 = v96;
    v78 = v92;
    v79 = v93;
    *v80 = v94;
    v80[16] = v95;
    v76 = v90;
    v77 = v91;
    MEMORY[0x245CCC9B0](v69, v22);
    v98 = v69[2];
    v99 = v70;
    v100 = v71;
    v96 = v69[0];
    v97 = v69[1];
    swift_beginAccess();
    v36 = *(v35 + 32);
    v37 = *(v35 + 64);
    v78 = *(v35 + 48);
    v79 = v37;
    v80[0] = *(v35 + 80);
    v77 = v36;
    v76 = *(v35 + 16);
    *(v35 + 80) = v100;
    *(v35 + 16) = v96;
    v38 = v97;
    *(v35 + 48) = v98;
    *(v35 + 64) = v99;
    *(v35 + 32) = v38;
    sub_240919300(&v76, &qword_27E50F3F0, &qword_240A39698);
  }

  else
  {
LABEL_12:
    sub_240A2AE9C();
    v39 = sub_240A2AFFC();
    v40 = sub_240A2C29C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2408FE000, v39, v40, "Updated view model is not pairing with code. Clearing saved state", v41, 2u);
      MEMORY[0x245CCDDB0](v41, -1, -1);
    }

    v34 = *(v3 + 8);
    v34(v28, v27);
    v76 = v89;
    sub_240A2BC5C();
    v42 = v101;
    swift_beginAccess();
    v43 = *(v42 + 48);
    v77 = *(v42 + 32);
    v78 = v43;
    v44 = *(v42 + 64);
    v80[0] = *(v42 + 80);
    v79 = v44;
    v76 = *(v42 + 16);
    *(v42 + 80) = 0;
    *(v42 + 48) = 0u;
    *(v42 + 64) = 0u;
    *(v42 + 16) = 0u;
    *(v42 + 32) = 0u;
    sub_240919300(&v76, &qword_27E50F3F0, &qword_240A39698);
  }

  sub_240A2AE9C();
  sub_240A24960(v2, &v76);
  v45 = sub_240A2AFFC();
  v46 = v8;
  v47 = sub_240A2C29C();
  sub_2409E5088(v2);
  if (os_log_type_enabled(v45, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v96 = v49;
    *v48 = 136315138;
    v78 = v92;
    v79 = v93;
    *v80 = v94;
    v80[16] = v95;
    v76 = v90;
    v77 = v91;
    MEMORY[0x245CCC9B0](&v101, v22);
    v50 = sub_240A242C0();
    v51 = v34;
    v53 = v52;
    sub_240A247A8(&v101);
    v54 = sub_240925464(v50, v53, &v96);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_2408FE000, v45, v47, "Update uiview controller called with viewmodel: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x245CCDDB0](v49, -1, -1);
    MEMORY[0x245CCDDB0](v48, -1, -1);

    v51(v46, v68);
  }

  else
  {

    v34(v46, v27);
  }

  v78 = v92;
  v79 = v93;
  *v80 = v94;
  v80[16] = v95;
  v76 = v90;
  v77 = v91;
  MEMORY[0x245CCC9B0](v69, v22);
  v55 = v70;

  sub_240A247A8(v69);
  v56 = sub_240A2BF1C();
  if (v55)
  {
  }

  v57 = v67;
  [v67 setVerificationCode_];

  v78 = v92;
  v79 = v93;
  *v80 = v94;
  v80[16] = v95;
  v76 = v90;
  v77 = v91;
  MEMORY[0x245CCC9B0](&v96, v22);
  v58 = sub_240A23444();
  sub_240A247A8(&v96);
  [v57 updateViewWithViewModel_];
}

void sub_240A24154(void *a1)
{
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 14);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_240A2379C(a1);
}

uint64_t sub_240A241A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A2489C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240A2420C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A2489C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240A24270()
{
  sub_240A2489C();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_240A24298(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t sub_240A242C0()
{
  v1 = v0;
  sub_240A2C47C();
  MEMORY[0x245CCCD90](0xD000000000000031, 0x8000000240A405A0);
  MEMORY[0x245CCCD90](*v1, v1[1]);
  MEMORY[0x245CCCD90](0xD000000000000018, 0x8000000240A405E0);
  MEMORY[0x245CCCD90](v1[2], v1[3]);
  MEMORY[0x245CCCD90](0xD000000000000012, 0x8000000240A40600);
  v7 = *(v0 + 32);
  v2 = sub_240A2C62C();
  MEMORY[0x245CCCD90](v2);

  MEMORY[0x245CCCD90](0x6F63202020200A2CLL, 0xEB000000003D6564);
  if (*(v0 + 48))
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x245CCCD90](v3, v4);

  MEMORY[0x245CCCD90](0x6C66202020200A2CLL, 0xEF3D65707954776FLL);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v5 = sub_240A2BF9C();
  MEMORY[0x245CCCD90](v5);

  MEMORY[0x245CCCD90](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_240A24480(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_240A244DC(v7, v9) & 1;
}

uint64_t sub_240A244DC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_240A2C66C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_240A2C66C() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (*(a1 + 40) != *(a2 + 40) || v6 != v7) && (sub_240A2C66C() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v8 = *(a2 + 64);
    if (*(a1 + 64))
    {
      if ((*(a2 + 64) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 1) != 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }

    return 1;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_240A245C4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v6 = sub_240A2BFDC();
    v8 = v7;
    result = sub_240A2BFDC();
    v11 = 6;
  }

  else
  {
    v6 = sub_240A2C01C();
    v8 = v12;
    result = sub_240A2C01C();
    v11 = 5;
  }

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = result;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = a1;
  *(a3 + 64) = a2 & 1;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_240A246C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_240A2470C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t getEnumTagSinglePayload for ProxViewModel.FlowType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ProxViewModel.FlowType(uint64_t result, int a2, int a3)
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

uint64_t sub_240A2484C(uint64_t a1)
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

uint64_t sub_240A24868(uint64_t result, int a2)
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

unint64_t sub_240A2489C()
{
  result = qword_27E50F3D8;
  if (!qword_27E50F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F3D8);
  }

  return result;
}

uint64_t sub_240A248F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F3F0, &qword_240A39698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t ShieldError.description.getter()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0xD000000000000022;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0xD000000000000018;
      }

      goto LABEL_12;
    }

    return 0xD000000000000054;
  }

  else
  {
    if (!v1)
    {
      return 0xD000000000000041;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0xD000000000000019;
      }

LABEL_12:
      v3 = *v0;
      sub_240A2C47C();

      MEMORY[0x245CCCD90](v3, v1);
      return 0xD000000000000017;
    }

    return 0xD000000000000032;
  }
}

uint64_t ShieldError.errorCode.getter()
{
  v1 = *(v0 + 8);
  if (v1 > 5)
  {
    return 3004;
  }

  else
  {
    return qword_240A398B0[v1];
  }
}

uint64_t sub_240A24B4C(uint64_t a1)
{
  v2 = sub_240A24CE8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_240A24B88(uint64_t a1)
{
  v2 = sub_240A24CE8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_240A24BCC()
{
  v1 = *(v0 + 8);
  if (v1 > 5)
  {
    return 3004;
  }

  else
  {
    return qword_240A398B0[v1];
  }
}

uint64_t get_enum_tag_for_layout_string_14AppleIDSetupUI11ShieldErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_240A24C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240A24C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_240A24CB8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_240A24CE8()
{
  result = qword_27E50F408;
  if (!qword_27E50F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F408);
  }

  return result;
}

double sub_240A24D68@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (([v3 forceOfferAgeRangePicker] & 1) != 0 || (v4 = objc_msgSend(objc_opt_self(), sel_sharedInstance), v5 = objc_msgSend(v4, sel_protoAccount), v4, !v5) || (v5, objc_msgSend(v3, sel_skipSetupWithGuardian)))
  {
    v6 = *v1;
    swift_unknownObjectWeakLoadStrong();
    v6;
    v3;
    sub_240A2B87C();
  }

  else
  {
    swift_unknownObjectWeakLoadStrong();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F478, &qword_240A39898);
  sub_240A253F4();
  sub_240964A98();
  sub_240A2B6EC();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 25) = v11;
  return result;
}

uint64_t sub_240A24EC8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_240A2B00C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_240A2C21C();
  v1[6] = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A24FBC, v6, v5);
}

uint64_t sub_240A24FBC()
{
  v1 = v0[6];

  v2 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v3 = [v2 aa_primaryAppleAccount];

  if (v3)
  {
    v4 = v0[5];

    sub_240A2AE9C();
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C2CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2408FE000, v5, v6, "Theres a primary Apple Account on the device, skipping setup", v7, 2u);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }

    v9 = v0[4];
    v8 = v0[5];
    v11 = v0[2];
    v10 = v0[3];

    (*(v9 + 8))(v8, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      if ([Strong respondsToSelector_])
      {
        sub_240915CF8();
        v14 = swift_allocError();
        *v15 = xmmword_240A315B0;
        v16 = sub_240A2952C();
        [v13 shieldSetupDidFinishWithResult:0 viewControllersToRemove:0 error:v16];

        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_240915CF8();
      v19 = swift_allocError();
      *v20 = xmmword_240A315B0;
      v21 = sub_240A2952C();

      [v18 shieldSetupDidFinishWithResult:0 error:v21];
      swift_unknownObjectRelease();
    }
  }

LABEL_10:
  v22 = v0[5];

  v23 = v0[1];

  return v23();
}

__n128 sub_240A25214@<Q0>(__n128 *a1@<X8>)
{
  sub_240A24D68(&v12);
  v10 = v12;
  v3 = v13;
  v4 = v14;
  v5 = v15;
  sub_240A252F0(v1, v11);
  v6 = swift_allocObject();
  sub_240A25328(v11, v6 + 16);
  v7 = (a1->n128_u64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F470, &qword_240A39890) + 36));
  v8 = v7 + *(sub_240A2B2CC() + 20);
  sub_240A2C22C();
  *v7 = &unk_240A39888;
  v7[1] = v6;
  result = v10;
  *a1 = v10;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u8[8] = v4;
  a1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_240A25360()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_240915E50;

  return sub_240A24EC8(v0 + 16);
}

unint64_t sub_240A253F4()
{
  result = qword_27E50F480;
  if (!qword_27E50F480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50F478, &qword_240A39898);
    sub_240985580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F480);
  }

  return result;
}

unint64_t sub_240A25480()
{
  result = qword_27E50F488;
  if (!qword_27E50F488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50F470, &qword_240A39890);
    sub_240A2550C();
    sub_240A25598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F488);
  }

  return result;
}

unint64_t sub_240A2550C()
{
  result = qword_27E50F490;
  if (!qword_27E50F490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50F498, &unk_240A398A0);
    sub_240A253F4();
    sub_240964A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F490);
  }

  return result;
}

unint64_t sub_240A25598()
{
  result = qword_27E50F4A0;
  if (!qword_27E50F4A0)
  {
    sub_240A2B2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F4A0);
  }

  return result;
}

uint64_t sub_240A255F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TermsView();
  v7 = a3 + v6[5];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
  sub_240A2BC4C();
  *(a3 + v8) = v15;
  if (qword_27E50AFD0 != -1)
  {
    swift_once();
  }

  v9 = sub_240A2B00C();
  __swift_project_value_buffer(v9, qword_27E50F4B0);
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C28C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, "init terms view", v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  v13 = sub_240A2A18C();
  result = (*(*(v13 - 8) + 32))(a3, a1, v13);
  *(a3 + v6[6]) = a2;
  return result;
}

uint64_t sub_240A25784()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50F4B0);
  __swift_project_value_buffer(v0, qword_27E50F4B0);
  return sub_240A2AE7C();
}

uint64_t sub_240A257D0@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1)@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v86 = v10;
  v87 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v85 = &v73 - v12;
  v13 = sub_240A2A18C();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v82 = v16;
  v83 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TermsView();
  v18 = *(v17 - 8);
  v78 = v17;
  v79 = v18;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v77 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v73 - v25;
  v80 = v27;
  MEMORY[0x28223BE20](v24, v28);
  v30 = &v73 - v29;
  if (qword_27E50AFD0 != -1)
  {
    swift_once();
  }

  v31 = sub_240A2B00C();
  v32 = __swift_project_value_buffer(v31, qword_27E50F4B0);
  sub_240A26EC0(v3, v30);
  v76 = v32;
  v33 = sub_240A2AFFC();
  v34 = sub_240A2C28C();
  v35 = os_log_type_enabled(v33, v34);
  v81 = v26;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v74 = v6;
    v37 = v36;
    v38 = swift_slowAlloc();
    v75 = a2;
    v39 = v38;
    v89[0] = v38;
    *v37 = 136315138;
    sub_240A26EC0(v30, v26);
    v40 = sub_240A2BF9C();
    v41 = v13;
    v42 = a1;
    v43 = v3;
    v45 = v44;
    sub_240A26F24(v30);
    v46 = sub_240925464(v40, v45, v89);
    v3 = v43;
    a1 = v42;
    v13 = v41;

    *(v37 + 4) = v46;
    _os_log_impl(&dword_2408FE000, v33, v34, "Showing terms view: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v47 = v39;
    a2 = v75;
    MEMORY[0x245CCDDB0](v47, -1, -1);
    v48 = v37;
    v6 = v74;
    MEMORY[0x245CCDDB0](v48, -1, -1);
  }

  else
  {

    sub_240A26F24(v30);
  }

  v49 = v77;
  sub_240A26EC0(v3, v77);
  v50 = sub_240A2AFFC();
  v51 = sub_240A2C28C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = v3;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    v55 = *(v49 + *(v78 + 24));
    v56 = v49;
    v57 = v55;
    sub_240A26F24(v56);
    *(v53 + 4) = v57;
    *v54 = v57;
    _os_log_impl(&dword_2408FE000, v50, v51, "Terms view's delegate: %@", v53, 0xCu);
    sub_240919300(v54, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v54, -1, -1);
    v58 = v53;
    v3 = v52;
    MEMORY[0x245CCDDB0](v58, -1, -1);
  }

  else
  {

    sub_240A26F24(v49);
  }

  v60 = v83;
  v59 = v84;
  (*(v84 + 16))(v83, a1, v13);
  v61 = v81;
  sub_240A26EC0(v3, v81);
  v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v63 = (v82 + *(v79 + 80) + v62) & ~*(v79 + 80);
  v64 = swift_allocObject();
  (*(v59 + 32))(v64 + v62, v60, v13);
  sub_240A26F80(v61, v64 + v63);
  v89[0] = sub_240A2C06C();
  v89[1] = v65;
  sub_24091C4F8();
  v66 = v85;
  sub_240A2B24C();
  v67 = v87;
  v69 = v88 + 32;
  v68 = *(v88 + 32);
  v68(v87, v66, v6);
  v70 = (*(v69 + 48) + 16) & ~*(v69 + 48);
  v71 = swift_allocObject();
  result = (v68)(v71 + v70, v67, v6);
  *a2 = sub_240A26FE4;
  a2[1] = v64;
  a2[2] = sub_240A270B8;
  a2[3] = v71;
  return result;
}

void sub_240A25DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_240A2A17C();
  sub_240A2A14C();
  if (qword_27E50AFD0 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50F4B0);
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C28C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "Running as client, attempting to show terms if necessary.", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v9 = sub_240A2A13C();
  v11 = v10;
  v12 = objc_opt_self();
  v13 = v4;
  v14 = [v12 defaultStore];
  v15 = objc_allocWithZone(MEMORY[0x277CECA50]);
  type metadata accessor for AATermsEntry(0);
  sub_240A27138(&qword_27E50B2D0, type metadata accessor for AATermsEntry);
  v16 = sub_240A2C27C();
  v17 = [v15 initWithAccount:v13 inStore:v14 termsEntries:v16];

  if (v17)
  {
    v18 = v17;
    sub_240926CA4(MEMORY[0x277D84F90]);
    v19 = sub_240A2BE9C();

    [v18 setAdditionalHeaders_];

    v20 = v18;
    v21 = MEMORY[0x277D837D0];
    sub_240A2C44C();
    v51 = v21;
    strcpy(&v49, "PreProxSetup");
    BYTE13(v49) = 0;
    HIWORD(v49) = -5120;
    v22 = [v20 additionalHeaders];
    if (v22)
    {
      v23 = v22;
      v24 = sub_240A2BEBC();

      sub_24091C780(&v49, v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v24;
      sub_2409F6508(v47, v52, isUniquelyReferenced_nonNull_native);
      sub_2409266D4(v52);
      if (v48)
      {
        v26 = sub_240A2BE9C();
      }

      else
      {
        v26 = 0;
      }

      [v20 setAdditionalHeaders_];

      *&v49 = 0xD000000000000019;
      *(&v49 + 1) = 0x8000000240A40880;
      v27 = v20;
      sub_240A2C44C();
      if (v11)
      {
        v28 = MEMORY[0x277D837D0];
        v29 = v11;
        v30 = v45;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v28 = 0;
        v50 = 0;
      }

      *&v49 = v30;
      *(&v49 + 1) = v29;
      v51 = v28;

      v31 = [v27 additionalHeaders];
      if (v31)
      {
        v32 = v31;
        v33 = sub_240A2BEBC();

        v48 = v33;
        if (v11)
        {
          sub_24091C780(&v49, v47);
          v34 = swift_isUniquelyReferenced_nonNull_native();
          sub_2409F6508(v47, v52, v34);
          sub_2409266D4(v52);
          if (v33)
          {
LABEL_17:
            v35 = sub_240A2BE9C();

LABEL_20:
            [v27 setAdditionalHeaders_];

            [v27 setDelegate_];
            goto LABEL_21;
          }
        }

        else
        {
          sub_240919300(&v49, &qword_27E50C6D0, &unk_240A33620);
          sub_240A28A88(v52, v47);
          sub_240919300(v47, &qword_27E50C6D0, &unk_240A33620);
          sub_2409266D4(v52);
          if (v48)
          {
            goto LABEL_17;
          }
        }

        v35 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_21:
  v36 = v17;
  v37 = sub_240A2AFFC();
  v38 = sub_240A2C28C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v52[0] = v40;
    *v39 = 136315138;
    *&v49 = [v36 delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F580, &qword_240A399D8);
    v41 = sub_240A2BF9C();
    v43 = sub_240925464(v41, v42, v52);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_2408FE000, v37, v38, "AAUIGenericTermsRemoteUI's delegate: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x245CCDDB0](v40, -1, -1);
    MEMORY[0x245CCDDB0](v39, -1, -1);
  }

  if (v17)
  {
    v44 = v36;
    [v44 presentFromViewController:a1 modal:1];
  }
}

double sub_240A264AC@<D0>(_OWORD *a1@<X8>)
{
  sub_240A257D0(v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_240A264EC()
{
  sub_240A2C72C();
  sub_240A2A18C();
  sub_240A27138(&qword_27E50F590, MEMORY[0x277CED7C8]);
  sub_240A2BEFC();
  return sub_240A2C74C();
}

uint64_t sub_240A26574()
{
  sub_240A2A18C();
  sub_240A27138(&qword_27E50F590, MEMORY[0x277CED7C8]);

  return sub_240A2BEFC();
}

uint64_t sub_240A265F8()
{
  sub_240A2C72C();
  sub_240A2A18C();
  sub_240A27138(&qword_27E50F590, MEMORY[0x277CED7C8]);
  sub_240A2BEFC();
  return sub_240A2C74C();
}

id sub_240A267B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TermsDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TermsView()
{
  result = qword_27E50F550;
  if (!qword_27E50F550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240A268A8(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (qword_27E50AFD0 != -1)
    {
      swift_once();
    }

    v4 = sub_240A2B00C();
    __swift_project_value_buffer(v4, qword_27E50F4B0);
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C28C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Terms agreement successful, finished";
LABEL_10:
      _os_log_impl(&dword_2408FE000, v5, v6, v8, v7, 2u);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AFD0 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50F4B0);
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C2AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Terms agreement was not successful.";
      goto LABEL_10;
    }
  }

  v10 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_finishedCompletion;
  v12 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_finishedCompletion);
  v11 = *(v10 + 8);

  v12(a1 & 1);
}

void sub_240A26A50(uint64_t a1)
{
  if (qword_27E50AFD0 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50F4B0);

  v4 = sub_240A2AFFC();
  v5 = sub_240A2C28C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    if (!a1)
    {
      goto LABEL_18;
    }

    v8 = v7;

    v9 = sub_240A2BECC();
    v11 = sub_240925464(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2408FE000, v4, v5, "Received accepted terms: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_acceptedCompletion);
  if (v12)
  {
    if (a1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_acceptedCompletion + 8);

      v12(a1);

      sub_24090C1A0(v12);
      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  oslog = sub_240A2AFFC();
  v14 = sub_240A2C2AC();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v14, "No completion handler provided", v15, 2u);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }
}

void sub_240A26CF8()
{
  sub_240A2A18C();
  if (v0 <= 0x3F)
  {
    sub_240A26DF8(319, &qword_27E50F560, &qword_27E50F568, qword_240A39910, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TermsDelegate();
      sub_240A26DF8(319, &qword_27E50F570, &unk_27E50F540, &unk_240A34F50, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_240A26DF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_240A26EC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TermsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240A26F24(uint64_t a1)
{
  v2 = type metadata accessor for TermsView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240A26F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TermsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_240A26FE4(uint64_t a1)
{
  v3 = *(sub_240A2A18C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TermsView() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_240A25DE8(a1, v1 + v4, v7);
}

uint64_t sub_240A270B8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_240A27138(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_240A27180()
{
  result = qword_27E50F598;
  if (!qword_27E50F598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50F5A0, qword_240A399E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F598);
  }

  return result;
}

uint64_t sub_240A271E4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_240A27248()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50F5B0);
  __swift_project_value_buffer(v0, qword_27E50F5B0);
  return sub_240A2AE9C();
}

uint64_t sub_240A27294()
{
  v0 = *MEMORY[0x277CED1C8];
  result = sub_240A2BF4C();
  qword_27E516380 = result;
  *algn_27E516388 = v2;
  return result;
}

uint64_t sub_240A272C4(uint64_t a1)
{
  v2[105] = v1;
  v2[104] = a1;
  v3 = sub_240A2974C();
  v2[106] = v3;
  v4 = *(v3 - 8);
  v2[107] = v4;
  v5 = *(v4 + 64) + 15;
  v2[108] = swift_task_alloc();
  v6 = sub_240A2B00C();
  v2[109] = v6;
  v7 = *(v6 - 8);
  v2[110] = v7;
  v8 = *(v7 + 64) + 15;
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20) - 8) + 64) + 15;
  v2[114] = swift_task_alloc();
  sub_240A2C21C();
  v2[115] = sub_240A2C20C();
  v11 = sub_240A2C1BC();
  v2[116] = v11;
  v2[117] = v10;

  return MEMORY[0x2822009F8](sub_240A2746C, v11, v10);
}

uint64_t sub_240A2746C()
{
  v92 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  *(v0 + 944) = v3;
  v4 = sub_24097B140();
  [v3 setAuthContext_];

  v5 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_guardianAuthResponse);
  v6 = sub_240A2ABFC();
  sub_240A1EADC(v6);

  v7 = sub_240A2BE9C();

  [v3 setEphemeralAuthResults_];

  v8 = sub_240A2858C(v2);
  *(v0 + 952) = v8;
  v9 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_childAuthResults);
  sub_240A2ABCC();
  if (*(v0 + 512))
  {
    sub_24091C780((v0 + 488), (v0 + 456));
    v10 = sub_240A2ABEC();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v89 = v8;
      v14 = *(v0 + 912);
      v15 = *(v0 + 840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_240A30BE0;
      *(inited + 32) = 0x64497265626D656DLL;
      *(inited + 40) = 0xE800000000000000;
      sub_240913DC0(v0 + 456, inited + 48);
      *(inited + 80) = 0x44495344746C61;
      *(inited + 88) = 0xE700000000000000;
      v17 = MEMORY[0x277D837D0];
      *(inited + 96) = v12;
      *(inited + 104) = v13;
      *(inited + 120) = v17;
      *(inited + 128) = 0x6574736575716572;
      *(inited + 136) = 0xE900000000000072;
      v18 = *MEMORY[0x277CEFF40];
      type metadata accessor for AKAppleIDAuthenticationAppProvidedContext(0);
      v20 = v19;
      *(inited + 144) = v18;
      *(inited + 168) = v19;
      *(inited + 176) = 0xD000000000000010;
      *(inited + 184) = 0x8000000240A3A9F0;
      *(inited + 192) = v18;
      *(inited + 216) = v19;
      *(inited + 224) = 0xD000000000000017;
      *(inited + 232) = 0x8000000240A3AA10;
      v21 = *(v15 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_locationServicesEnabled);
      *(inited + 264) = MEMORY[0x277D839B0];
      *(inited + 240) = v21;
      v22 = v18;
      v23 = sub_240926374(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB00, &unk_240A38260);
      swift_arrayDestroy();
      *(v0 + 808) = v23;
      v24 = *(v15 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings);
      v25 = *(v24 + 16);
      v26 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
      swift_beginAccess();
      sub_2409BF428(v25 + v26, v14);
      v27 = sub_240A2962C();
      v28 = (*(*(v27 - 8) + 48))(v14, 1, v27);
      sub_240919300(v14, &unk_27E50DCE0, &qword_240A32E20);
      if (v28 != 1)
      {
        v29 = *(v0 + 904);
        sub_240A2AE9C();
        v30 = sub_240A2AFFC();
        v31 = sub_240A2C2CC();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_2408FE000, v30, v31, "AISFlowStepChildAccountRepair: adding requester as migration", v32, 2u);
          MEMORY[0x245CCDDB0](v32, -1, -1);
        }

        v33 = *(v0 + 904);
        v34 = *(v0 + 880);
        v35 = *(v0 + 872);

        (*(v34 + 8))(v33, v35);
        v36 = *MEMORY[0x277CEFF20];
        *(v0 + 672) = v20;
        *(v0 + 648) = v36;
        sub_24091C780((v0 + 648), (v0 + 680));
        v37 = v36;
        v38 = *(v0 + 808);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = v38;
        sub_2409F6038((v0 + 680), 0x6574736575716572, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
        *(v0 + 808) = v38;
      }

      v40 = *(v24 + 16);
      v41 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
      swift_beginAccess();
      if (*(v40 + v41) == 2 && (v42 = *(v0 + 864), v43 = *(v0 + 856), v44 = *(v0 + 848), (*(v43 + 104))(v42, *MEMORY[0x277CED208], v44), v45 = sub_240A2973C(), (*(v43 + 8))(v42, v44), (v45 & 1) != 0))
      {
        if (qword_27E50AFD8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 872), qword_27E50F5B0);
        v46 = sub_240A2AFFC();
        v47 = sub_240A2C29C();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_2408FE000, v46, v47, "Adding family token of teen to additionalParams for family repair", v48, 2u);
          MEMORY[0x245CCDDB0](v48, -1, -1);
        }

        if (qword_27E50AFE0 != -1)
        {
          swift_once();
        }

        v49 = qword_27E516380;
        v50 = *algn_27E516388;
        v51 = sub_240A2AB9C();
        if (v52)
        {
          *(v0 + 576) = MEMORY[0x277D837D0];
          *(v0 + 552) = v51;
          *(v0 + 560) = v52;
          sub_24091C780((v0 + 552), (v0 + 616));
          v53 = *(v0 + 808);
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v91 = v53;
          sub_2409F6038((v0 + 616), v49, v50, v54);
          *(v0 + 808) = v53;
        }

        else
        {
          sub_240A289E4(v49, v50, (v0 + 584));
          sub_240919300(v0 + 584, &qword_27E50C6D0, &unk_240A33620);
        }
      }

      else
      {
        if (qword_27E50AFD8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 872), qword_27E50F5B0);
        v56 = sub_240A2AFFC();
        v57 = sub_240A2C29C();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_2408FE000, v56, v57, "Age range not applicable for token to be added to additional params", v58, 2u);
          MEMORY[0x245CCDDB0](v58, -1, -1);
        }
      }

      v59 = *(v0 + 808);
      v60 = sub_240A2BE9C();

      [v3 setAdditionalParameters_];

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 816;
      *(v0 + 24) = sub_240A27F58;
      v61 = swift_continuation_init();
      *(v0 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
      *(v0 + 352) = MEMORY[0x277D85DD0];
      *(v0 + 360) = 1107296256;
      *(v0 + 368) = sub_240A271E4;
      *(v0 + 376) = &block_descriptor_38;
      *(v0 + 384) = v61;
      [v89 performWithContext:v3 completion:v0 + 352];

      return MEMORY[0x282200938](v0 + 16);
    }

    v62 = *(v0 + 920);
    __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  }

  else
  {
    v55 = *(v0 + 920);

    sub_240919300(v0 + 488, &qword_27E50C6D0, &unk_240A33620);
  }

  sub_240A28990();
  v63 = swift_allocError();
  *v64 = 1;
  swift_willThrow();

  v65 = *(v0 + 888);
  v66 = *(v0 + 840);
  v67 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  [*(v66 + v67) complete];
  v68 = v63;
  sub_24097C6F0(0, v63);

  sub_240A2AE9C();
  v69 = v63;
  v70 = sub_240A2AFFC();
  v71 = sub_240A2C2AC();

  v72 = os_log_type_enabled(v70, v71);
  v73 = *(v0 + 888);
  v74 = *(v0 + 880);
  v75 = *(v0 + 872);
  if (v72)
  {
    v90 = *(v0 + 888);
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v91 = v77;
    *v76 = 136315138;
    *(v0 + 800) = v63;
    v78 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v79 = sub_240A2BF9C();
    v81 = sub_240925464(v79, v80, &v91);

    *(v76 + 4) = v81;
    _os_log_impl(&dword_2408FE000, v70, v71, "AISFlowStepChildAccountRepair familyRepair failed: %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x245CCDDB0](v77, -1, -1);
    MEMORY[0x245CCDDB0](v76, -1, -1);

    (*(v74 + 8))(v90, v75);
  }

  else
  {

    (*(v74 + 8))(v73, v75);
  }

  v82 = *(v0 + 912);
  v83 = *(v0 + 904);
  v84 = *(v0 + 896);
  v85 = *(v0 + 888);
  v86 = *(v0 + 864);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_240A27F58()
{
  v1 = *(*v0 + 936);
  v2 = *(*v0 + 928);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240A28060, v2, v1);
}

uint64_t sub_240A28060()
{
  v55 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 896);

  v3 = *(v0 + 816);
  sub_240A2AE9C();
  v4 = v3;
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C2CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_2408FE000, v5, v6, "AISFlowStepChildAccountRepair got circleController response %@", v7, 0xCu);
    sub_240919300(v8, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v10 = *(v0 + 896);
  v11 = *(v0 + 880);
  v12 = *(v0 + 872);

  (*(v11 + 8))(v10, v12);
  if ([v4 loadSuccess])
  {
    v13 = [v4 userInfo];
    if (v13)
    {
      v14 = v13;
      v15 = sub_240A2BEBC();

      *(v0 + 784) = 0xD000000000000013;
      *(v0 + 792) = 0x8000000240A40910;
      sub_240A2C44C();
      if (*(v15 + 16))
      {
        v16 = sub_240925A94(v0 + 416);
        if (v17)
        {
          sub_240913DC0(*(v15 + 56) + 32 * v16, v0 + 520);
          sub_2409266D4(v0 + 416);

          if (*(v0 + 544))
          {
            sub_240A29348();
            v18 = swift_dynamicCast();
            v19 = *(v0 + 824);
            if (v18)
            {
              v20 = *(v0 + 824);
            }

            else
            {
              v20 = 0;
            }

            goto LABEL_18;
          }

LABEL_17:
          sub_240919300(v0 + 520, &qword_27E50C6D0, &unk_240A33620);
          v20 = 0;
LABEL_18:
          v43 = *(v0 + 952);
          v44 = *(v0 + 944);
          v45 = *(v0 + 840);
          sub_24097C6F0(v20, 0);

          __swift_destroy_boxed_opaque_existential_0((v0 + 456));
          goto LABEL_19;
        }
      }

      sub_2409266D4(v0 + 416);
    }

    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    goto LABEL_17;
  }

  v21 = *(v0 + 952);
  v22 = *(v0 + 944);
  v23 = [v4 error];
  sub_240A28990();
  v24 = swift_allocError();
  *v25 = v23;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  v26 = *(v0 + 888);
  v27 = *(v0 + 840);
  v28 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  [*(v27 + v28) complete];
  v29 = v24;
  sub_24097C6F0(0, v24);

  sub_240A2AE9C();
  v30 = v24;
  v31 = sub_240A2AFFC();
  v32 = sub_240A2C2AC();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 888);
  v35 = *(v0 + 880);
  v36 = *(v0 + 872);
  if (v33)
  {
    v53 = *(v0 + 888);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v38;
    *v37 = 136315138;
    *(v0 + 800) = v24;
    v39 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v40 = sub_240A2BF9C();
    v42 = sub_240925464(v40, v41, &v54);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_2408FE000, v31, v32, "AISFlowStepChildAccountRepair familyRepair failed: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x245CCDDB0](v38, -1, -1);
    MEMORY[0x245CCDDB0](v37, -1, -1);

    (*(v35 + 8))(v53, v36);
  }

  else
  {

    (*(v35 + 8))(v34, v36);
  }

LABEL_19:
  v46 = *(v0 + 912);
  v47 = *(v0 + 904);
  v48 = *(v0 + 896);
  v49 = *(v0 + 888);
  v50 = *(v0 + 864);

  v51 = *(v0 + 8);

  return v51();
}

id sub_240A2858C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
  [v2 setPresentationType_];
  v5[4] = sub_240A29394;
  v6 = v1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2409EC704;
  v5[3] = &block_descriptor_4;
  v3 = _Block_copy(v5);

  [v2 setPresentationHandler_];
  _Block_release(v3);
  return v2;
}

uint64_t sub_240A28684()
{
  v1 = sub_240A2B00C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  [*(v0 + v7) complete];
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "AISFlowStepFamilyPicker familyCirclePresentationHandler", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_240A287F0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2409252E8;

  return sub_240A272C4(a1);
}

unint64_t AISFlowStepChildAccountRepairError.description.getter()
{
  v1 = 0xD00000000000002FLL;
  v2 = *v0;
  if (*v0 != 1)
  {
    sub_240A2C47C();
    MEMORY[0x245CCCD90](0xD000000000000031, 0x8000000240A408A0);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v4 = sub_240A2BF9C();
    MEMORY[0x245CCCD90](v4);

    return 0;
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_14AppleIDSetupUI34AISFlowStepChildAccountRepairErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_240A28990()
{
  result = qword_27E50F5C8;
  if (!qword_27E50F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F5C8);
  }

  return result;
}

double sub_240A289E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_240925A1C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2409389C0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_24091C780((*(v12 + 56) + 32 * v9), a3);
    sub_240A28B2C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_240A28A88@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_240925A94(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_240939028();
      v11 = v13;
    }

    sub_2409266D4(*(v11 + 48) + 40 * v8);
    sub_24091C780((*(v11 + 56) + 32 * v8), a2);
    sub_240A2918C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_240A28B2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_240A2C41C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_240A2C72C();

      sub_240A2C09C();
      v14 = sub_240A2C74C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_240A28CDC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_240A2C41C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_240A2C72C();

      sub_240A2C09C();
      v13 = sub_240A2C74C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_240A28E8C(int64_t a1, uint64_t a2)
{
  v4 = sub_240A299DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_240A2C41C();
    v16 = v14;
    v44 = (v15 + 1) & v14;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v45 = *(v17 + 56);
    v42 = (v17 - 8);
    v43 = v18;
    do
    {
      v19 = v11;
      v20 = v45 * v13;
      v21 = v16;
      v22 = v17;
      v43(v10, *(a2 + 48) + v45 * v13, v4);
      v23 = *(a2 + 40);
      sub_240A293B0();
      v24 = sub_240A2BEEC();
      result = (*v42)(v10, v4);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v44)
      {
        if (v25 >= v44 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          v29 = v28 + v45 * a1;
          v30 = v28 + v20 + v45;
          v31 = v45 * a1 < v20 || v29 >= v30;
          v17 = v22;
          if (v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v45 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v32 = *(a2 + 56);
          v33 = *(*(sub_240A2995C() - 8) + 72);
          v34 = v33 * a1;
          result = v32 + v33 * a1;
          v35 = v33 * v13;
          v36 = v32 + v33 * v13 + v33;
          if (v34 < v35 || result >= v36)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v19;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v38 = v34 == v35;
            v11 = v19;
            v16 = v21;
            if (!v38)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v44 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v19;
LABEL_4:
      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v39 = *(a2 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v41;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_240A2918C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_240A2C41C() + 1) & ~v5;
    do
    {
      sub_24092702C(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_240A2C42C();
      result = sub_2409266D4(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_240A29348()
{
  result = qword_27E50F5D0;
  if (!qword_27E50F5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50F5D0);
  }

  return result;
}

unint64_t sub_240A293B0()
{
  result = qword_27E50BAC0;
  if (!qword_27E50BAC0)
  {
    sub_240A299DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BAC0);
  }

  return result;
}