uint64_t sub_4E524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = *(*(type metadata accessor for LostAccessory() - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = *(*(type metadata accessor for DelegatedURLShare() - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_B7A60();
  v4[15] = sub_B7A50();
  v8 = sub_B7A00();
  v4[16] = v8;
  v4[17] = v7;

  return _swift_task_switch(sub_4E620, v8, v7);
}

uint64_t sub_4E620()
{
  v31 = v0;
  v1 = v0[11];
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission))
  {
    v2 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL;
    v0[18] = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL;
    if (*(v1 + v2) == 1)
    {
      *(v1 + v2) = 1;
    }

    else
    {
      swift_getKeyPath();
      v9 = swift_task_alloc();
      *(v9 + 16) = v1;
      *(v9 + 24) = 1;
      v0[2] = v1;
      sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
      sub_B65B0();
    }

    v10 = v0[11];
    v0[19] = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_logger;

    v11 = sub_B69A0();
    v12 = sub_B7B20();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[11];
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      swift_getKeyPath();
      v0[10] = v14;
      sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
      sub_B65C0();

      *(v15 + 4) = *(v1 + v2);

      _os_log_impl(&dword_0, v11, v12, "Building share url. isLoadingShareURL: %{BOOL}d", v15, 8u);
    }

    else
    {
      v16 = v0[11];
    }

    v18 = v0[11];
    v17 = v0[12];
    v19 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies;
    v0[20] = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies;
    v20 = (v18 + v19);
    v21 = *v20;
    v0[21] = v20[1];
    v22 = v20[3];
    v0[22] = v22;
    sub_50754(v18 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory, v17, type metadata accessor for LostAccessory);

    v23 = v22;
    v28 = (v21 + *v21);
    v24 = v21[1];
    v25 = swift_task_alloc();
    v0[23] = v25;
    *v25 = v0;
    v25[1] = sub_4E9FC;
    v26 = v0[14];
    v27 = v0[12];

    return v28(v26, v27);
  }

  else
  {
    v3 = v0[15];

    v29 = 2;
    v30 = 2;
    sub_4CDC8(&v29);
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[12];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_4E9FC()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_4EEF0;
  }

  else
  {
    v3 = sub_4EB10;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_4EB10()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[12];

  v4 = sub_B65A0();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v0[16];
  v6 = v0[17];

  return _swift_task_switch(sub_4EBB4, v5, v6);
}

uint64_t sub_4EBB4()
{
  v32 = v0;
  v1 = v0[18];
  v2 = v0[11];
  if (*(v2 + v1))
  {
    v3 = v0[24];
    v4 = v0[15];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = 0;
    v0[9] = v2;
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
  }

  else
  {
    v6 = v0[15];

    *(v2 + v1) = 0;
  }

  v7 = v0[19];
  v8 = v0[11];

  v9 = sub_B69A0();
  v10 = sub_B7B20();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[18];
    v12 = v0[11];
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    swift_getKeyPath();
    v0[8] = v12;
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65C0();

    *(v13 + 4) = *(v12 + v11);

    _os_log_impl(&dword_0, v9, v10, "End building share url. isLoadingShareURL: %{BOOL}d", v13, 8u);
  }

  else
  {
    v14 = v0[11];
  }

  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[11] + v0[20];
  sub_50754(v15, v16, type metadata accessor for DelegatedURLShare);
  v19 = *(v17 + 32);
  v18 = *(v17 + 40);
  v20 = type metadata accessor for DelegatedSharesSetupWebsiteViewModel();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  sub_507BC(v16, v23 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_delegatedURLShare, type metadata accessor for DelegatedURLShare);
  v24 = (v23 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_dependencies);
  *v24 = v19;
  v24[1] = v18;
  v30 = v23;
  v31 = 0;

  sub_4CDC8(&v30);
  sub_50824(v15, type metadata accessor for DelegatedURLShare);
  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[12];

  v28 = v0[1];

  return v28();
}

uint64_t sub_4EEF0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[12];

  v4 = sub_B65A0();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v0[16];
  v6 = v0[17];

  return _swift_task_switch(sub_4EF94, v5, v6);
}

uint64_t sub_4EF94()
{
  v36 = v0;
  v1 = v0[18];
  v2 = v0[11];
  if (*(v2 + v1))
  {
    v3 = v0[15];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = 0;
    v0[7] = v2;
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
  }

  else
  {
    v5 = v0[15];

    *(v2 + v1) = 0;
  }

  v6 = v0[11] + v0[20];
  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  v0[3] = v0[24];
  swift_errorRetain();

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  type metadata accessor for SPBeaconSharingError(0);
  if (swift_dynamicCast())
  {
    v10 = v0[4];
    v0[5] = v10;
    v0[6] = v9;
    sub_5070C(&qword_EEC30, type metadata accessor for SPBeaconSharingError);
    v11 = sub_B78C0();

    if (v11)
    {
      v12 = v0[11] + v0[19];
      v13 = sub_B69A0();
      v14 = sub_B7B40();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "Failed to build share URL. Delegation limit reached.", v15, 2u);
      }

      v16 = v0[24];
      v17 = v0[11];

      v34 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v18 = v0[24];
  v19 = v0[19];
  v20 = v0[11];
  swift_errorRetain();
  v21 = sub_B69A0();
  v22 = sub_B7B40();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[24];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&dword_0, v21, v22, "Failed to build share URL with error %@", v24, 0xCu);
    sub_A194(v25, &qword_EF4F8, &qword_C16D0);
  }

  v27 = v0[24];
  v28 = v0[11];

  v34 = 0;
LABEL_13:
  v35 = 2;
  sub_4CDC8(&v34);

  v30 = v0[13];
  v29 = v0[14];
  v31 = v0[12];

  v32 = v0[1];

  return v32();
}

uint64_t sub_4F37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_B65A0();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0E70, &qword_C0800);
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = sub_B7A60();
  v6[16] = sub_B7A50();
  v14 = sub_B7A00();
  v6[17] = v14;
  v6[18] = v13;

  return _swift_task_switch(sub_4F4E0, v14, v13);
}

uint64_t sub_4F4E0()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  sub_B7A90();
  swift_beginAccess();
  v4 = v0[15];
  v5 = sub_B7A50();
  v0[19] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_4F5DC;
  v8 = v0[14];
  v9 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 21, v5, &protocol witness table for MainActor, v9);
}

uint64_t sub_4F5DC()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return _swift_task_switch(sub_4F720, v5, v4);
}

uint64_t sub_4F720()
{
  v1 = *(v0 + 168);
  if (v1 != 3)
  {
    v2 = *(v0 + 56);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
      v5 = sub_B69A0();
      v6 = sub_B7B20();
      v7 = os_log_type_enabled(v5, v6);
      v9 = *(v0 + 80);
      v8 = *(v0 + 88);
      v10 = *(v0 + 72);
      if (v7)
      {
        v32 = v6;
        log = v5;
        v11 = swift_slowAlloc();
        *(v0 + 40) = swift_slowAlloc();
        *v11 = 141558531;
        *(v11 + 4) = 1752392040;
        *(v11 + 12) = 2081;
        sub_5070C(&qword_F0A28, &type metadata accessor for UUID);
        v12 = sub_B7DA0();
        v14 = v13;
        (*(v9 + 8))(v8, v10);
        v15 = sub_17834(v12, v14, (v0 + 40));

        *(v11 + 14) = v15;
        *(v11 + 22) = 2082;
        v16 = 0xE300000000000000;
        v17 = 7496038;
        if (v1 != 1)
        {
          v17 = 0x54426E6968746977;
          v16 = 0xED000065676E6152;
        }

        if (v1)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0x6E776F6E6B6E75;
        }

        if (v1)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0xE700000000000000;
        }

        v20 = sub_17834(v18, v19, (v0 + 40));

        *(v11 + 24) = v20;
        _os_log_impl(&dword_0, log, v32, "%{private,mask.hash}s proximity: %{public}s", v11, 0x20u);
        swift_arrayDestroy();

        if (!v1)
        {
          goto LABEL_19;
        }
      }

      else
      {

        (*(v9 + 8))(v8, v10);
        if (!v1)
        {
          goto LABEL_19;
        }
      }

      if (v1 == 1)
      {
        v21 = 1;
LABEL_20:

        *(v4 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = v21 & 1;

        v26 = *(v0 + 120);
        v27 = sub_B7A50();
        *(v0 + 152) = v27;
        v28 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
        v29 = swift_task_alloc();
        *(v0 + 160) = v29;
        *v29 = v0;
        v29[1] = sub_4F5DC;
        v30 = *(v0 + 112);
        v31 = *(v0 + 96);

        return AsyncStream.Iterator.next(isolation:)(v0 + 168, v27, &protocol witness table for MainActor, v31);
      }

LABEL_19:
      v21 = sub_B7DD0();
      goto LABEL_20;
    }
  }

  v22 = *(v0 + 128);
  v23 = *(v0 + 88);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t DelegatedSharesSetupIntroductionViewModel.deinit()
{
  sub_50824(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies, type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies);
  sub_50824(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask);

  v2 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_logger;
  v3 = sub_B69C0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_4BE18(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination + 8));
  v4 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel___observationRegistrar;
  v5 = sub_B6600();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t DelegatedSharesSetupIntroductionViewModel.__deallocating_deinit()
{
  sub_50824(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies, type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies);
  sub_50824(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask);

  v2 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_logger;
  v3 = sub_B69C0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_4BE18(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination + 8));
  v4 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel___observationRegistrar;
  v5 = sub_B6600();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_4FDB0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 == -1)
  {
    if (a4 == -1)
    {
      sub_4C52C(a1, 255);
      sub_4C52C(a3, 255);
      sub_4BE18(a1, 255);
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_5;
  }

  if (a4 == -1)
  {
LABEL_5:
    sub_4C52C(a1, a2);
    sub_4C52C(a3, a4);
    sub_4BE18(a1, a2);
    sub_4BE18(a3, a4);
    v9 = 1;
    return v9 & 1;
  }

  sub_4C52C(a1, a2);
  sub_4C52C(a3, a4);
  v8 = sub_80950(a1, a2, a3, a4);
  sub_4BE18(a3, a4);
  sub_4BE18(a1, a2);
  v9 = v8 ^ 1;
  return v9 & 1;
}

uint64_t _s13FindMyAppCore41DelegatedSharesSetupIntroductionViewModelC13lostAccessory12dependencies40hasValidItemLocationToContinueSubmissionAcA04LostL0V_AC12DependenciesVSbtcfC_0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LostAccessory();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_50754(a1, v13, type metadata accessor for LostAccessory);
  sub_50754(a2, v9, type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies);
  v14 = type metadata accessor for DelegatedSharesSetupIntroductionViewModel();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask) = 0;
  sub_B69B0();
  v18 = v17 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination;
  *v18 = 0;
  *(v18 + 8) = -1;
  sub_B65F0();
  sub_50824(a2, type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies);
  sub_50824(a1, type metadata accessor for LostAccessory);
  sub_4BE18(*v18, *(v18 + 8));
  *v18 = 0;
  *(v18 + 8) = -1;
  sub_507BC(v13, v17 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_507BC(v9, v17 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies, type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies);
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL) = 0;
  *(v17 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = a3;
  return v17;
}

uint64_t type metadata accessor for DelegatedSharesSetupIntroductionViewModel()
{
  result = qword_F0DB0;
  if (!qword_F0DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_50160()
{
  result = type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for LostAccessory();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_B69C0();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = sub_B6600();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_502DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_4DE84(v4);
}

uint64_t sub_50320()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask);
  *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask) = *(v0 + 24);
}

uint64_t sub_50364()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5039C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_B65A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_5050C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_B65A0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_F248;

  return sub_4F37C(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_5068C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_4C52C(v1, v4);
  return sub_4BE18(v3, v5);
}

uint64_t sub_5070C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_50754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_507BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_50824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int ItemContactInfoSetupIntroductionViewModel.Stack.hashValue.getter()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(0);
  sub_B7EC0(v1);
  return sub_B7EE0();
}

void ItemContactInfoSetupIntroductionViewModel.Stack.hash(into:)()
{
  v1 = *v0;
  sub_B7EC0(0);
  sub_B7EC0(v1);
}

Swift::Int sub_50948()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(0);
  sub_B7EC0(v1);
  return sub_B7EE0();
}

Swift::Int sub_50998@<X0>(Swift::Int *a1@<X8>)
{
  v3 = *v1;
  sub_B7EB0();
  sub_B7EC0(0);
  sub_B7EC0(v3);
  result = sub_B7EE0();
  *a1 = result;
  return result;
}

uint64_t sub_50A10(uint64_t a1)
{
  result = sub_50A88(&qword_F0E78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_50A88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DelegatedSharesSetupIntroductionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t _s5StackOwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t _s5StackOwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_50C44()
{
  result = qword_F0E88;
  if (!qword_F0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0E88);
  }

  return result;
}

uint64_t sub_50CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_50D00()
{
  result = qword_F0E90;
  if (!qword_F0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0E90);
  }

  return result;
}

unint64_t sub_50D54()
{
  result = qword_F0E98;
  if (!qword_F0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0E98);
  }

  return result;
}

unint64_t sub_50DAC()
{
  result = qword_F0EA0;
  if (!qword_F0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0EA0);
  }

  return result;
}

unint64_t sub_50E04()
{
  result = qword_F0EA8;
  if (!qword_F0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0EA8);
  }

  return result;
}

uint64_t sub_50E84@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0B90, &unk_C0B60);
  v92 = *(v1 - 8);
  v93 = v1;
  v2 = *(v92 + 64);
  __chkstk_darwin(v1);
  v91 = v73 - v3;
  v4 = sub_B6980();
  v74 = *(v4 - 8);
  v5 = *(v74 + 64);
  __chkstk_darwin(v4);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v73 - v10;
  v82 = sub_B6850();
  v81 = *(v82 - 8);
  v12 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EB0, &qword_C0B70);
  v84 = *(v85 - 8);
  v14 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = v73 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EB8, &qword_C0B78);
  v87 = *(v88 - 8);
  v16 = *(v87 + 64);
  __chkstk_darwin(v88);
  v97 = v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EC0, &unk_C0B80);
  v89 = *(v18 - 8);
  v90 = v18;
  v19 = *(v89 + 64);
  __chkstk_darwin(v18);
  v86 = v73 - v20;
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v21 = sub_B62F0();
  v22 = __swift_project_value_buffer(v21, qword_FAD48);
  v23 = *(v21 - 8);
  v24 = *(v23 + 16);
  v25 = v22;
  v95 = v23 + 16;
  v26 = v24;
  v24(v11);
  v28 = *(v23 + 56);
  v27 = v23 + 56;
  v29 = v28;
  v28(v11, 0, 1, v21);
  v76 = sub_B78D0();
  v75 = v30;
  sub_A194(v11, &unk_F17B0, &qword_BE7D0);
  v73[7] = sub_538B0();
  v73[6] = v31;
  v101 = &type metadata for SolariumFeatureFlag;
  v102 = sub_28360();
  v32 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v98);
  if (v32)
  {
    v33 = v11;
    v34 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_40D5C();
    if (qword_EEB08 != -1)
    {
      swift_once();
    }

    v33 = v11;
    v35 = __swift_project_value_buffer(v4, qword_FAEA0);
    (*(v74 + 16))(v7, v35, v4);
    v34 = sub_B7B90();
  }

  v73[4] = v34;
  v73[3] = v73;
  v36 = __chkstk_darwin(v34);
  v73[2] = &v70;
  __chkstk_darwin(v36);
  v37 = v33;
  v78 = v25;
  v79 = v26;
  v26(v33, v25, v21);
  v77 = v29;
  v29(v33, 0, 1, v21);
  v38 = sub_B78D0();
  v74 = v21;
  v73[1] = v38;
  sub_A194(v33, &unk_F17B0, &qword_BE7D0);
  sub_52570();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EC8, &qword_C1D70);
  v73[5] = v27;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0ED0, &unk_C0B90);
  v40 = sub_53A6C();
  v41 = sub_A8CC(&qword_F0EE0, &qword_F0ED0, &unk_C0B90);
  v71 = v40;
  v72 = v41;
  v70 = v39;
  v42 = v80;
  sub_B6840();
  v43 = sub_53BF4(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
  v44 = v83;
  v45 = v82;
  sub_B73B0();
  v46 = (*(v81 + 8))(v42, v45);
  __chkstk_darwin(v46);
  v47 = v96;
  v72 = v96;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EE8, &qword_C0BA0);
  v98 = v45;
  v99 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EF0, &qword_C0BA8);
  v51 = sub_53AF8();
  v98 = v50;
  v99 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v85;
  sub_B7450();
  (*(v84 + 8))(v44, v53);
  v106 = *(v47 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C80, &qword_C0680);
  sub_B75E0();
  v83 = v98;
  v82 = v99;
  LODWORD(v84) = v100;
  v96 = *v47;
  v54 = v74;
  v79(v37, v78, v74);
  v77(v37, 0, 1, v54);
  v55 = sub_B78D0();
  v57 = v56;
  sub_A194(v37, &unk_F17B0, &qword_BE7D0);
  v98 = v55;
  v99 = v57;
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *&v106 = sub_B7580();
  v60 = sub_47AD4();
  sub_97E8();
  v61 = v91;
  sub_B6AE0();
  v62 = sub_B64C0();
  v98 = v53;
  v99 = v48;
  v100 = OpaqueTypeConformance2;
  v101 = v52;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_53BF4(&qword_F0BA0, &type metadata accessor for URL);
  v71 = v60;
  v72 = &protocol witness table for Never;
  v70 = v64;
  v65 = v88;
  v66 = v86;
  v67 = v97;
  sub_B7290();

  (*(v92 + 8))(v61, v93);
  (*(v87 + 8))(v67, v65);
  v98 = v65;
  v99 = v62;
  v100 = &type metadata for Image;
  v101 = &type metadata for Never;
  v102 = v63;
  v103 = v64;
  v104 = v60;
  v105 = &protocol witness table for Never;
  swift_getOpaqueTypeConformance2();
  v68 = v90;
  sub_B7300();
  return (*(v89 + 8))(v66, v68);
}

uint64_t sub_51B3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_delegatedURLShare;
  if (*(v9 + *(type metadata accessor for DelegatedURLShare() + 32)) == 1)
  {
    v27 = &type metadata for SolariumFeatureFlag;
    v28 = sub_28360();
    sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(&v24);
    type metadata accessor for DelegatedSharesReportingModule();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_B7580();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = sub_B7570();

    (*(v5 + 8))(v8, v4);
    v20 = v12;
    v21 = 0;
    v22 = 257;
    v23 = 0;
  }

  else
  {
    v27 = &type metadata for SolariumFeatureFlag;
    v28 = sub_28360();
    sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(&v24);
    type metadata accessor for DelegatedSharesReportingModule();
    v13 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass:v13];
    sub_B7580();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v15 = sub_B7570();

    (*(v5 + 8))(v8, v4);
    v20 = v15;
    v21 = 0;
    v22 = 257;
    v23 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  sub_40DB8();
  result = sub_B6F00();
  v17 = v25;
  v18 = v26 != 0;
  *a2 = v24;
  *(a2 + 16) = v17;
  *(a2 + 18) = v18;
  return result;
}

uint64_t sub_51EB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0ED0, &unk_C0B90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  *v8 = sub_B6EA0();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0F18, &qword_C0BD0);
  sub_51FC8(a1, &v8[*(v9 + 44)]);
  sub_53D38(v8, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_51FC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v3 = sub_B62F0();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  __chkstk_darwin(v3);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShareWebLinkPlatterView(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v44 - v11;
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  sub_B7A60();
  v47 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_delegatedURLShare;
  v17 = *a1;
  v16 = a1[1];
  v18 = a1[2];
  v61 = *(a1 + 3);
  v19 = swift_allocObject();
  v20 = *(a1 + 1);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = a1[4];
  v21 = sub_B64C0();
  (*(*(v21 - 8) + 16))(v12, v17 + v15, v21);
  v22 = &v12[*(v6 + 20)];
  *v22 = sub_53DF8;
  v22[1] = v19;
  *(&v59 + 1) = &type metadata for SolariumFeatureFlag;
  v23 = sub_28360();
  *&v60[0] = v23;

  sub_C5D8(v16);
  sub_A310(&v61, v56, &qword_F0C80, &qword_C0680);
  LOBYTE(v16) = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v58);
  if (v16)
  {
    v24 = xmmword_BFB50;
  }

  else
  {
    if (qword_EEAB8 != -1)
    {
      swift_once();
    }

    v24 = xmmword_FAD90;
  }

  *&v12[*(v6 + 24)] = v24;
  sub_53E60(v12, v14);
  *(&v59 + 1) = &type metadata for SolariumFeatureFlag;
  *&v60[0] = v23;
  v25 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v58);
  if (v25)
  {
    v59 = 0u;
    memset(v60, 0, 25);
    v58 = 0u;
  }

  else
  {
    sub_B6E60();
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v26 = v46;
    v27 = __swift_project_value_buffer(v46, qword_FAD48);
    (*(v45 + 16))(v44, v27, v26);
    v28 = sub_B71B0();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    KeyPath = swift_getKeyPath();
    LOBYTE(v56[0]) = 0;
    v32 &= 1u;
    LOBYTE(v53) = v32;
    sub_41410(v28, v30, v32);

    sub_9C84(v28, v30, v32);

    v36 = v56[0];
    v37 = v53;
    sub_41410(v28, v30, v32);
    *&v58 = 0x4030000000000000;
    BYTE8(v58) = v36;
    *&v59 = v28;
    *(&v59 + 1) = v30;
    LOBYTE(v60[0]) = v37;
    *(&v60[0] + 1) = v34;
    *&v60[1] = KeyPath;
    BYTE8(v60[1]) = 1;
  }

  v38 = v49;
  sub_53ECC(v14, v49);
  v50 = v58;
  v51 = v59;
  v52[0] = v60[0];
  *(v52 + 9) = *(v60 + 9);
  v39 = v48;
  *v48 = 0x4034000000000000;
  *(v39 + 8) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0F20, &qword_C0C08);
  sub_53ECC(v38, v39 + *(v40 + 48));
  v41 = (v39 + *(v40 + 64));
  v53 = v50;
  v54 = v51;
  v55[0] = v52[0];
  *(v55 + 9) = *(v52 + 9);
  sub_A310(&v53, v56, &qword_F0F28, &unk_C0C10);
  sub_A194(&v58, &qword_F0F28, &unk_C0C10);
  v42 = v54;
  *v41 = v53;
  v41[1] = v42;
  v41[2] = v55[0];
  *(v41 + 41) = *(v55 + 9);
  sub_53F30(v14);
  v56[0] = v50;
  v56[1] = v51;
  v57[0] = v52[0];
  *(v57 + 9) = *(v52 + 9);
  sub_A194(v56, &qword_F0F28, &unk_C0C10);
  sub_53F30(v38);
}

char *sub_52570()
{
  v53 = sub_B6800();
  v1 = *(v53 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v53);
  v51 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_B67E0();
  v61 = *(v58 - 8);
  v4 = *(v61 + 64);
  __chkstk_darwin(v58);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_B67D0();
  v60 = *(v57 - 8);
  v7 = *(v60 + 64);
  __chkstk_darwin(v57);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v39 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
  v14 = *(v1 + 72);
  v52 = v1;
  v15 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v50 = v14;
  v59 = v15;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_BDA30;
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v16 = sub_B62F0();
  v17 = __swift_project_value_buffer(v16, qword_FAD48);
  v18 = *(v16 - 8);
  v19 = *(v18 + 16);
  v46 = v17;
  v45 = v18 + 16;
  v44 = v19;
  (v19)(v13);
  v43 = *(v18 + 56);
  v43(v13, 0, 1, v16);
  v20 = sub_B78D0();
  v54 = v21;
  v55 = v20;
  sub_A194(v13, &unk_F17B0, &qword_BE7D0);
  v22 = *(v60 + 104);
  v42 = enum case for OnboardingTrayAction.State.enabled(_:);
  v60 += 104;
  v41 = v22;
  v22(v9);
  v23 = *(v61 + 104);
  v61 += 104;
  v40 = v23;
  v23(v6, enum case for OnboardingTrayAction.Style.bold(_:), v58);
  v25 = *v0;
  v24 = v0[1];
  v26 = v9;
  v27 = v0[2];
  v63[0] = *(v0 + 3);
  v28 = swift_allocObject();
  v29 = *(v0 + 1);
  *(v28 + 16) = *v0;
  *(v28 + 32) = v29;
  *(v28 + 48) = v0[4];
  v47 = v25;

  v49 = v24;
  v48 = v27;
  sub_C5D8(v24);
  sub_A310(v63, v62, &qword_F0C80, &qword_C0680);
  v30 = v56;
  v55 = v6;
  sub_B67F0();
  v62[3] = &type metadata for SolariumFeatureFlag;
  v62[4] = sub_28360();
  v31 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v62);
  if (v31)
  {
    v44(v13, v46, v16);
    v43(v13, 0, 1, v16);
    sub_B78D0();
    sub_A194(v13, &unk_F17B0, &qword_BE7D0);
    v41(v26, v42, v57);
    v40(v55, enum case for OnboardingTrayAction.Style.link(_:), v58);
    v32 = swift_allocObject();
    v33 = *(v0 + 1);
    *(v32 + 16) = *v0;
    *(v32 + 32) = v33;
    *(v32 + 48) = v0[4];

    sub_C5D8(v49);
    sub_A310(v63, v62, &qword_F0C80, &qword_C0680);
    v34 = v51;
    sub_B67F0();
    v36 = *(v30 + 2);
    v35 = *(v30 + 3);
    if (v36 >= v35 >> 1)
    {
      v30 = sub_536D4(v35 > 1, v36 + 1, 1, v30, &qword_F0BE8, &unk_C0EB0, &type metadata accessor for OnboardingTrayAction);
    }

    v37 = v59;
    *(v30 + 2) = v36 + 1;
    (*(v52 + 32))(&v30[v37 + v36 * v50], v34, v53);
  }

  return v30;
}

uint64_t sub_52C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0F10, &unk_C0BC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v27 = &v24 - v5;
  v6 = sub_B6F50();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0F00, &unk_C0BB0);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EF0, &qword_C0BA8);
  v12 = *(*(v29 - 8) + 64);
  v13 = __chkstk_darwin(v29);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  sub_B7A60();
  v28 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = &type metadata for SolariumFeatureFlag;
  v34 = sub_28360();
  v18 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v31);
  if (v18)
  {
    (*(v3 + 56))(v15, 1, 1, v2);
    v19 = sub_A8CC(&qword_F0F08, &qword_F0F00, &unk_C0BB0);
    v31 = v8;
    v32 = v19;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_53C3C(v15);
  }

  else
  {
    v20 = sub_B6F40();
    __chkstk_darwin(v20);
    *(&v24 - 2) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CB0, &qword_C06A0);
    sub_4C714();
    sub_B6A80();
    v21 = sub_A8CC(&qword_F0F08, &qword_F0F00, &unk_C0BB0);
    v22 = v27;
    sub_B6F60();
    (*(v3 + 16))(v15, v22, v2);
    (*(v3 + 56))(v15, 0, 1, v2);
    v31 = v8;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_53C3C(v15);
    (*(v3 + 8))(v22, v2);
    (*(v26 + 8))(v11, v8);
  }

  sub_53AF8();
  sub_B6F60();
  sub_53C3C(v17);
}

uint64_t sub_5311C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-v9];
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v11 = sub_B62F0();
  v12 = __swift_project_value_buffer(v11, qword_FAD48);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v5, v12, v11);
  (*(v13 + 56))(v5, 0, 1, v11);
  v14 = sub_B78D0();
  v16 = v15;
  sub_A194(v5, &unk_F17B0, &qword_BE7D0);
  v24 = v14;
  v25 = v16;
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];
  v26 = *(a1 + 3);
  v20 = swift_allocObject();
  v21 = *(a1 + 1);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v21;
  *(v20 + 48) = a1[4];

  sub_C5D8(v18);
  sub_A310(&v26, v23, &qword_F0C80, &qword_C0680);
  sub_97E8();
  sub_B7640();
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
  sub_B7360();
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_534A4(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 16);
    v3(isCurrentExecutor);
  }
}

uint64_t sub_53550@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_50E84(a1);
}

char *sub_5358C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0F30, &qword_C0C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 272);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[272 * v8])
    {
      memmove(v12, v13, 272 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_536D4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_538B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11[-1] - v2;
  v11[3] = &type metadata for SolariumFeatureFlag;
  v11[4] = sub_28360();
  v4 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_FAD48);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v3, v6, v5);
  (*(v7 + 56))(v3, 0, 1, v5);
  v8 = sub_B78D0();
  sub_A194(v3, &unk_F17B0, &qword_BE7D0);
  return v8;
}

unint64_t sub_53A6C()
{
  result = qword_F0ED8;
  if (!qword_F0ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EC8, &qword_C1D70);
    sub_40DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0ED8);
  }

  return result;
}

unint64_t sub_53AF8()
{
  result = qword_F0EF8;
  if (!qword_F0EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EF0, &qword_C0BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0F00, &unk_C0BB0);
    sub_A8CC(&qword_F0F08, &qword_F0F00, &unk_C0BB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0EF8);
  }

  return result;
}

uint64_t sub_53BF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_53C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EF0, &qword_C0BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_53CB0()
{
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C80, &qword_C0680);
  return sub_B75D0();
}

uint64_t sub_53D08()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    return v1();
  }

  return result;
}

uint64_t sub_53D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0ED0, &unk_C0B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_53DF8()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_delegatedURLShare;
  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_dependencies);
  v3 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_dependencies + 8);

  v4(v1 + v2);
}

uint64_t sub_53E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareWebLinkPlatterView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_53ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareWebLinkPlatterView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_53F30(uint64_t a1)
{
  v2 = type metadata accessor for ShareWebLinkPlatterView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_53F8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EC0, &unk_C0B80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EB8, &qword_C0B78);
  sub_B64C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EB0, &qword_C0B70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EE8, &qword_C0BA0);
  sub_B6850();
  sub_53BF4(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EF0, &qword_C0BA8);
  sub_53AF8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_53BF4(&qword_F0BA0, &type metadata accessor for URL);
  sub_47AD4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_541BC()
{
  sub_54380(v0 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_delegatedURLShare);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_dependencies + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DelegatedSharesSetupWebsiteViewModel()
{
  result = qword_F0F78;
  if (!qword_F0F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_54288()
{
  result = type metadata accessor for DelegatedURLShare();
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

unint64_t sub_54328()
{
  result = qword_F1008;
  if (!qword_F1008)
  {
    type metadata accessor for DelegatedSharesSetupWebsiteViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1008);
  }

  return result;
}

uint64_t sub_54380(uint64_t a1)
{
  v2 = type metadata accessor for DelegatedURLShare();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_54400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_B64C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_544D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_B64C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_545A8()
{
  result = sub_B64C0();
  if (v1 <= 0x3F)
  {
    result = sub_27660();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShareWebLinkPlatterView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShareWebLinkPlatterView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_546A8@<X0>(uint64_t a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6470();
  sub_97E8();
  v2 = sub_B7200();
  v4 = v3;
  v6 = v5;
  sub_B6F80();
  v7 = sub_B71C0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_9C84(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  LOBYTE(v34[0]) = 0;
  v16 = sub_B7540();
  sub_B6B80();
  *&v24 = v7;
  *(&v24 + 1) = v9;
  LOBYTE(v25) = v11 & 1;
  *(&v25 + 1) = *v23;
  DWORD1(v25) = *&v23[3];
  *(&v25 + 1) = v13;
  *&v26 = KeyPath;
  BYTE8(v26) = 0;
  HIDWORD(v26) = *&v22[3];
  *(&v26 + 9) = *v22;
  *&v27 = v15;
  *(&v27 + 1) = 1;
  v28 = 0;
  LOBYTE(v33) = 0;
  v29 = v24;
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v17 = v24;
  v18 = v25;
  v19 = v27;
  v20 = v33;
  *(a1 + 32) = v26;
  *(a1 + 48) = v19;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 64) = v20;
  *(a1 + 72) = 0x4020000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = v16;
  sub_A310(&v24, v34, &qword_F1198, &qword_C0E70);
  v34[0] = v7;
  v34[1] = v9;
  v35 = v11 & 1;
  *v36 = *v23;
  *&v36[3] = *&v23[3];
  v37 = v13;
  v38 = KeyPath;
  v39 = 0;
  *v40 = *v22;
  *&v40[3] = *&v22[3];
  v41 = v15;
  v42 = 1;
  v43 = 0;
  sub_A194(v34, &qword_F1198, &qword_C0E70);
}

double sub_54924@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_B6E30();
  v16 = 0;
  sub_546A8(&v9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v17 = v9;
  v18 = v10;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[5] = v14;
  v23[0] = v9;
  v23[1] = v10;
  sub_A310(&v17, &v8, &qword_F1190, &qword_C0E08);
  sub_A194(v23, &qword_F1190, &qword_C0E08);
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[7] = v17;
  *&v15[23] = v18;
  v3 = *&v15[32];
  *(a1 + 65) = *&v15[48];
  v4 = *&v15[80];
  *(a1 + 81) = *&v15[64];
  *(a1 + 97) = v4;
  v6 = *v15;
  result = *&v15[16];
  *(a1 + 33) = *&v15[16];
  *(a1 + 49) = v3;
  v7 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 112) = *&v15[95];
  *(a1 + 17) = v6;
  return result;
}

double sub_54A30()
{
  result = _UISheetCornerRadius;
  *&xmmword_FAD90 = 0x4030000000000000;
  *(&xmmword_FAD90 + 1) = _UISheetCornerRadius;
  return result;
}

uint64_t sub_54A54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35[1] = a1;
  v3 = type metadata accessor for ShareWebLinkPlatterView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10A8, &qword_C0D78);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v35 - v9;
  v11 = sub_B64C0();
  (*(*(v11 - 8) + 16))(v10, v2, v11);
  v12 = (v2 + *(v4 + 32));
  v13 = *v12;
  LOBYTE(v4) = sub_B70B0();
  sub_B6A10();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10B0, &qword_C0D80) + 36)];
  *v22 = v4;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = sub_B7760();
  v25 = v24;
  v26 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10B8, &qword_C0D88) + 36)];
  *v26 = 1;
  *(v26 + 4) = 256;
  *(v26 + 2) = v23;
  *(v26 + 3) = v25;
  v27 = v12[1];
  v28 = &v10[*(v7 + 36)];
  v29 = *(sub_B6C60() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = sub_B6E70();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  *v28 = v27;
  *(v28 + 1) = v27;
  *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10C0, &unk_C0D90) + 36)] = 256;
  sub_53ECC(v2, v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v33 = swift_allocObject();
  sub_53E60(v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  sub_55244();
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
  sub_B7460();

  return sub_A194(v10, &qword_F10A8, &qword_C0D78);
}

uint64_t sub_54DA4(uint64_t a1)
{
  v2 = type metadata accessor for ShareWebLinkPlatterView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_53ECC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_53E60(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_B7610();
}

uint64_t sub_54F38(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + *(type metadata accessor for ShareWebLinkPlatterView(0) + 20);
  v3 = *(v2 + 8);
  (*v2)(a1);
}

uint64_t sub_54FF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_B62F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_FAD48);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_B71B0();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_551D4()
{
  v1 = *(type metadata accessor for ShareWebLinkPlatterView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_54DA4(v2);
}

unint64_t sub_55244()
{
  result = qword_F10C8;
  if (!qword_F10C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F10A8, &qword_C0D78);
    sub_552FC();
    sub_A8CC(&qword_F10F8, &qword_F10C0, &unk_C0D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F10C8);
  }

  return result;
}

unint64_t sub_552FC()
{
  result = qword_F10D0;
  if (!qword_F10D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F10B8, &qword_C0D88);
    sub_553B4();
    sub_A8CC(&qword_F10E8, &qword_F10F0, &qword_C0DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F10D0);
  }

  return result;
}

unint64_t sub_553B4()
{
  result = qword_F10D8;
  if (!qword_F10D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F10B0, &qword_C0D80);
    sub_55440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F10D8);
  }

  return result;
}

unint64_t sub_55440()
{
  result = qword_F10E0;
  if (!qword_F10E0)
  {
    type metadata accessor for WebLinkRowView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F10E0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for ShareWebLinkPlatterView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_B64C0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_555A4()
{
  v1 = *(type metadata accessor for ShareWebLinkPlatterView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_54F38(v2);
}

uint64_t sub_55618(uint64_t a1, uint64_t a2)
{
  v4 = sub_B64C0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_55698(uint64_t a1, uint64_t a2)
{
  v4 = sub_B64C0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_55708()
{
  result = sub_B64C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_55774()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F10A8, &qword_C0D78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE88, &qword_BD620);
  sub_55244();
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5585C@<X0>(uint64_t a1@<X8>)
{
  result = sub_B6DB0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_55890(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_B6DC0();
}

uint64_t DelegatedSharesShareeItemDescriptionView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  swift_storeEnumTagMultiPayload();
  v11[3] = &type metadata for SolariumFeatureFlag;
  v11[4] = sub_28360();
  v4 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v11);
  v5 = (v4 & 1) == 0;
  if (v4)
  {
    v6 = 0xD00000000000002BLL;
  }

  else
  {
    v6 = 0xD000000000000024;
  }

  if (v5)
  {
    v7 = "ROR_CONTINUE_ACTION_SHEET";
  }

  else
  {
    v7 = "-website-cover-photo";
  }

  v8 = v7 | 0x8000000000000000;
  result = type metadata accessor for DelegatedSharesShareeItemDescriptionView();
  v10 = (a2 + *(result + 24));
  *v10 = v6;
  v10[1] = v8;
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_559E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for DelegatedSharesReportingState(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DelegatedSharesShareeItemDescriptionView();
  sub_56F3C(*(v0 + *(v9 + 20)) + OBJC_IVAR____TtC13FindMyAppCore45DelegatedSharesShareeItemDescriptionViewModel_reportingState, v8, type metadata accessor for DelegatedSharesReportingState);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  if ((*(*(v10 - 8) + 48))(v8, 2, v10))
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v11 = sub_B62F0();
    v12 = __swift_project_value_buffer(v11, qword_FAD48);
    v13 = *(v11 - 8);
    (*(v13 + 16))(v4, v12, v11);
    (*(v13 + 56))(v4, 0, 1, v11);
    v14 = sub_B78D0();
    sub_2B630(v4);
  }

  else
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v15 = sub_B62F0();
    v16 = __swift_project_value_buffer(v15, qword_FAD48);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v4, v16, v15);
    (*(v17 + 56))(v4, 0, 1, v15);
    v14 = sub_B78D0();
    sub_2B630(v4);
    sub_56FA4(v8);
  }

  return v14;
}

uint64_t DelegatedSharesShareeItemDescriptionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = type metadata accessor for DelegatedSharesShareeItemDescriptionView();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  __chkstk_darwin(v3 - 8);
  v61 = v5;
  v63 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_B67E0();
  v56 = *(v58 - 8);
  v6 = *(v56 + 64);
  __chkstk_darwin(v58);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B67D0();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  __chkstk_darwin(v8);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_B6980();
  v67 = *(v11 - 8);
  v12 = v67[8];
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v46 - v17;
  v19 = sub_B6850();
  v64 = *(v19 - 8);
  v65 = v19;
  v20 = *(v64 + 64);
  __chkstk_darwin(v19);
  v62 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v22 = sub_B62F0();
  v23 = __swift_project_value_buffer(v22, qword_FAD48);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v49 = v23;
  v48 = v25;
  (v25)(v18);
  v26 = *(v24 + 56);
  v26(v18, 0, 1, v22);
  v27 = sub_B78D0();
  v52 = v28;
  v53 = v27;
  sub_2B630(v18);
  v51 = sub_559E8();
  v50 = v29;
  v68[3] = &type metadata for SolariumFeatureFlag;
  v68[4] = sub_28360();
  v30 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v68);
  if (v30)
  {
    v31 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_40D5C();
    if (qword_EEB08 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v11, qword_FAEA0);
    (v67[2])(v14, v32, v11);
    v31 = sub_B7B90();
  }

  v67 = v31;
  v47 = &v46;
  __chkstk_darwin(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
  v33 = *(sub_B6800() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  v46 = xmmword_BDA30;
  *(v36 + 16) = xmmword_BDA30;
  v48(v18, v49, v22);
  v26(v18, 0, 1, v22);
  sub_B78D0();
  sub_2B630(v18);
  (*(v54 + 104))(v57, enum case for OnboardingTrayAction.State.enabled(_:), v55);
  (*(v56 + 104))(v59, enum case for OnboardingTrayAction.Style.bold(_:), v58);
  v37 = v63;
  sub_56F3C(v2, v63, type metadata accessor for DelegatedSharesShareeItemDescriptionView);
  v38 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v39 = swift_allocObject();
  sub_56AE4(v37, v39 + v38);
  sub_B67F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  sub_40DB8();
  v40 = v62;
  sub_B6830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0780, &qword_C0EC0);
  v41 = *(sub_B6C80() - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  *(swift_allocObject() + 16) = v46;
  sub_B6C70();
  sub_56BC0();
  v44 = v65;
  sub_B7300();

  return (*(v64 + 8))(v40, v44);
}

uint64_t sub_56558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for DelegatedSharesShareeItemDescriptionView() + 24));
  v10 = *v9;
  v11 = v9[1];
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();

  v14 = [v13 bundleForClass:ObjCClassFromMetadata];
  sub_B7580();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v15 = sub_B7570();

  result = (*(v5 + 8))(v8, v4);
  *a2 = v15;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  return result;
}

uint64_t sub_566F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_B6DE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v20 - v10);
  v12 = sub_B6B50();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_56ECC(a2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  else
  {
    v17 = *v11;
    sub_B7B50();
    v18 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
  }

  sub_B6B40();
  return (*(v13 + 8))(v16, v12);
}

uint64_t type metadata accessor for DelegatedSharesShareeItemDescriptionView()
{
  result = qword_F1208;
  if (!qword_F1208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_569B4()
{
  v1 = type metadata accessor for DelegatedSharesShareeItemDescriptionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B6B50();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  v9 = *(v5 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_56AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedSharesShareeItemDescriptionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_56B48(uint64_t a1)
{
  v3 = *(type metadata accessor for DelegatedSharesShareeItemDescriptionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_566F0(a1, v4);
}

unint64_t sub_56BC0()
{
  result = qword_F0560;
  if (!qword_F0560)
  {
    sub_B6850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0560);
  }

  return result;
}

uint64_t sub_56C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_56D24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_56DE8()
{
  sub_9EC8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DelegatedSharesShareeItemDescriptionViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_56E74()
{
  sub_B6850();
  sub_56BC0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_56ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_56F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_56FA4(uint64_t a1)
{
  v2 = type metadata accessor for DelegatedSharesReportingState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DelegatedSharesShareeItemDescriptionViewModel.__allocating_init(reportingState:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_57074(a1, v5 + OBJC_IVAR____TtC13FindMyAppCore45DelegatedSharesShareeItemDescriptionViewModel_reportingState);
  return v5;
}

uint64_t sub_57074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedSharesReportingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DelegatedSharesShareeItemDescriptionViewModel.__deallocating_deinit()
{
  sub_56FA4(v0 + OBJC_IVAR____TtC13FindMyAppCore45DelegatedSharesShareeItemDescriptionViewModel_reportingState);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_57164(uint64_t a1)
{
  result = sub_57228(&qword_F1248);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DelegatedSharesShareeItemDescriptionViewModel()
{
  result = qword_F1280;
  if (!qword_F1280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_57228(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DelegatedSharesShareeItemDescriptionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_57274()
{
  result = type metadata accessor for DelegatedSharesReportingState(319);
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

uint64_t sub_57354()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_F13A0);
  __swift_project_value_buffer(v0, qword_F13A0);
  type metadata accessor for OwnerInfoModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.ownerInfo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAC0 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_F13A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t OwnerInfoSectionView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for OwnerInfoSectionViewModel();
  result = sub_B75B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t OwnerInfoSectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_B6EA0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F13B8, "­");
  return sub_5754C(v4, v3, a1 + *(v5 + 44));
}

uint64_t sub_5754C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v30 = a3;
  v4 = type metadata accessor for DetailsSectionTemplate();
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_B63C0();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v29);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v28 - v14;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAC0 != -1)
  {
    swift_once();
  }

  v16 = sub_B62F0();
  v17 = __swift_project_value_buffer(v16, qword_F13A0);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v15, v17, v16);
  (*(v18 + 56))(v15, 0, 1, v16);
  v19 = sub_B78D0();
  v21 = v20;
  sub_2B630(v15);
  sub_B6390();
  v31[0] = a1;
  v31[1] = v28;
  v22 = sub_57928();
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  v31[3] = &type metadata for SolariumFeatureFlag;
  v31[4] = sub_28360();
  v23 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v31);
  if (v23)
  {
    v24 = xmmword_BED70;
  }

  else
  {
    if (qword_EEAE0 != -1)
    {
      swift_once();
    }

    v24 = xmmword_FAE50;
  }

  *(v7 + v4[8]) = v24;
  v25 = (v7 + v4[5]);
  *v25 = v19;
  v25[1] = v21;
  (*(v8 + 32))(v7 + v4[6], v11, v29);
  *(v7 + v4[7]) = v22;
  v26 = (v7 + v4[9]);
  *v26 = 0;
  v26[1] = 0;
  sub_30658(v7, v30);
}

char *sub_57928()
{
  v1 = sub_B65A0();
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = *(v45 + 64);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v41 - v7;
  v9 = *v0;
  v10 = v0[1];
  *&v53[0] = *v0;
  *(&v53[0] + 1) = v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F13D0, &qword_C1120);
  sub_B75C0();
  v11 = v47;
  swift_getKeyPath();
  *&v53[0] = v11;
  sub_57FB8();
  sub_B65C0();

  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  if (v13)
  {
    v41 = v12;
    v42 = v10;
    v43 = v9;
    if (qword_EEAC0 != -1)
    {
      swift_once();
    }

    v14 = sub_B62F0();
    v15 = __swift_project_value_buffer(v14, qword_F13A0);
    v16 = *(v14 - 8);
    (*(v16 + 16))(v8, v15, v14);
    (*(v16 + 56))(v8, 0, 1, v14);
    v17 = sub_B78D0();
    v19 = v18;
    sub_2B630(v8);
    *(&v53[7] + 8) = 0u;
    *(&v53[8] + 8) = 0u;
    *(&v53[9] + 1) = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    sub_B6590();
    v20 = sub_B6560();
    v22 = v21;
    (*(v45 + 8))(v4, v46);
    *&v53[0] = v20;
    *(&v53[0] + 1) = v22;
    *&v53[1] = v17;
    *(&v53[1] + 1) = v19;
    LOBYTE(v53[2]) = 0;
    *(&v53[2] + 1) = 0;
    *&v53[3] = 0;
    BYTE8(v53[3]) = 0;
    *&v53[4] = v41;
    *(&v53[4] + 1) = v13;
    LOBYTE(v53[5]) = 1;
    *(&v53[5] + 8) = 0u;
    *(&v53[6] + 8) = 0u;
    memset(&v53[10], 0, 112);
    sub_2C360(&v47, &v53[11]);
    v23 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_5358C((v24 > 1), v25 + 1, 1, v23);
    }

    v10 = v42;
    *(v23 + 2) = v25 + 1;
    memcpy(&v23[272 * v25 + 32], v53, 0x110uLL);
    v9 = v43;
  }

  else
  {
    v23 = &_swiftEmptyArrayStorage;
  }

  *&v53[0] = v9;
  *(&v53[0] + 1) = v10;
  sub_B75C0();
  v26 = v47;
  swift_getKeyPath();
  *&v53[0] = v26;
  sub_B65C0();

  v28 = *(v26 + 32);
  v27 = *(v26 + 40);

  if (v27)
  {
    if (qword_EEAC0 != -1)
    {
      swift_once();
    }

    v29 = sub_B62F0();
    v30 = __swift_project_value_buffer(v29, qword_F13A0);
    v31 = *(v29 - 8);
    (*(v31 + 16))(v8, v30, v29);
    (*(v31 + 56))(v8, 0, 1, v29);
    v32 = sub_B78D0();
    v34 = v33;
    sub_2B630(v8);
    *(&v53[7] + 8) = 0u;
    *(&v53[8] + 8) = 0u;
    *(&v53[9] + 1) = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    sub_B6590();
    v35 = sub_B6560();
    v37 = v36;
    (*(v45 + 8))(v4, v46);
    *&v53[0] = v35;
    *(&v53[0] + 1) = v37;
    *&v53[1] = v32;
    *(&v53[1] + 1) = v34;
    LOBYTE(v53[2]) = 0;
    *(&v53[2] + 1) = 0;
    *&v53[3] = 0;
    BYTE8(v53[3]) = 0;
    *&v53[4] = v28;
    *(&v53[4] + 1) = v27;
    LOBYTE(v53[5]) = 1;
    *(&v53[5] + 8) = 0u;
    *(&v53[6] + 8) = 0u;
    memset(&v53[10], 0, 112);
    sub_2C360(&v47, &v53[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_5358C(0, *(v23 + 2) + 1, 1, v23);
    }

    v39 = *(v23 + 2);
    v38 = *(v23 + 3);
    if (v39 >= v38 >> 1)
    {
      v23 = sub_5358C((v38 > 1), v39 + 1, 1, v23);
    }

    *(v23 + 2) = v39 + 1;
    memcpy(&v23[272 * v39 + 32], v53, 0x110uLL);
  }

  return v23;
}

unint64_t sub_57F44()
{
  result = qword_F13C0;
  if (!qword_F13C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F13C8, &unk_C10D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F13C0);
  }

  return result;
}

unint64_t sub_57FB8()
{
  result = qword_F13D8;
  if (!qword_F13D8)
  {
    type metadata accessor for OwnerInfoSectionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F13D8);
  }

  return result;
}

uint64_t sub_58018()
{
  swift_getKeyPath();
  v4 = v0;
  sub_57FB8();
  sub_B65C0();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_58098()
{
  swift_getKeyPath();
  v4 = v0;
  sub_57FB8();
  sub_B65C0();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_58118@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_57FB8();
  sub_B65C0();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_581AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (sub_B7DD0())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_57FB8();
    sub_B65B0();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_582EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_57FB8();
  sub_B65C0();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_58380(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_583C8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 32) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 40);
      if (sub_B7DD0())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_57FB8();
    sub_B65B0();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t OwnerInfoSectionViewModel.__allocating_init(account:serialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  sub_B69B0();
  sub_B65F0();
  sub_581AC(a1, a2);
  sub_583C8(a3, a4);
  return v11;
}

uint64_t OwnerInfoSectionViewModel.init(account:serialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  sub_B69B0();
  sub_B65F0();
  sub_581AC(a1, a2);
  sub_583C8(a3, a4);
  return v4;
}

Swift::Void __swiftcall OwnerInfoSectionViewModel.updateProperties(account:serialNumber:)(Swift::String_optional account, Swift::String_optional serialNumber)
{
  object = serialNumber.value._object;
  countAndFlagsBits = serialNumber.value._countAndFlagsBits;
  v4 = account.value._object;
  v5 = account.value._countAndFlagsBits;
  v6 = sub_B69A0();
  v7 = sub_B7B60();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Updating Owner section for item", v8, 2u);
  }

  sub_581AC(v5, v4);
  if (object)
  {
    sub_97E8();
    countAndFlagsBits = sub_B7BF0();
  }

  else
  {
    v9 = 0;
  }

  sub_583C8(countAndFlagsBits, v9);
}

uint64_t OwnerInfoSectionViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC13FindMyAppCore25OwnerInfoSectionViewModel_logger;
  v4 = sub_B69C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13FindMyAppCore25OwnerInfoSectionViewModel___observationRegistrar;
  v6 = sub_B6600();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t OwnerInfoSectionViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC13FindMyAppCore25OwnerInfoSectionViewModel_logger;
  v4 = sub_B69C0();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC13FindMyAppCore25OwnerInfoSectionViewModel___observationRegistrar;
  v6 = sub_B6600();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OwnerInfoSectionViewModel()
{
  result = qword_F1410;
  if (!qword_F1410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_589D0()
{
  result = sub_B69C0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_B6600();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_58AF0()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_58B94()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

__n128 OwnerInfoSectionViewModel.Dependencies.init(pasteboardHandler:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_58C14()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_FADB0);
  __swift_project_value_buffer(v0, qword_FADB0);
  type metadata accessor for LostModeDetailPlatterModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t sub_58CE0()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_FADC8);
  __swift_project_value_buffer(v0, qword_FADC8);
  type metadata accessor for SeeLostItemModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t SeeLostItemView.init(viewModel:onDismiss:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  type metadata accessor for SeeLostItemViewModel();
  result = sub_B75B0();
  *a3 = v7;
  a3[1] = v8;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

uint64_t sub_58DE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11[-1] - v2;
  v11[3] = &type metadata for SolariumFeatureFlag;
  v11[4] = sub_28360();
  v4 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (qword_EEAD0 != -1)
  {
    swift_once();
  }

  v5 = sub_B62F0();
  v6 = __swift_project_value_buffer(v5, qword_FADC8);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v3, v6, v5);
  (*(v7 + 56))(v3, 0, 1, v5);
  v8 = sub_B78D0();
  sub_A194(v3, &unk_F17B0, &qword_BE7D0);
  return v8;
}

uint64_t SeeLostItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v145 = a1;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v141 = *(v142 - 8);
  v2 = *(v141 + 64);
  __chkstk_darwin(v142);
  v117 = &v116 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v140 = &v116 - v6;
  v151 = sub_B67E0();
  v156 = *(v151 - 8);
  v7 = *(v156 + 64);
  __chkstk_darwin(v151);
  v152 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_B67D0();
  v155 = *(v150 - 8);
  v9 = *(v155 + 64);
  v10 = __chkstk_darwin(v150);
  v146 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v127 = &v116 - v13;
  __chkstk_darwin(v12);
  v126 = &v116 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v116 - v17;
  v137 = sub_B6850();
  v136 = *(v137 - 8);
  v19 = *(v136 + 64);
  __chkstk_darwin(v137);
  v135 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BB8, &qword_C0468);
  v139 = *(v153 - 8);
  v21 = *(v139 + 64);
  __chkstk_darwin(v153);
  v138 = &v116 - v22;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E0, &qword_C12A8);
  v143 = *(v144 - 8);
  v23 = *(v143 + 64);
  __chkstk_darwin(v144);
  v154 = &v116 - v24;
  v25 = *v1;
  v161 = v1[1];
  v26 = v1[2];
  v27 = v1[3];
  v159 = v26;
  if (qword_EEAD0 != -1)
  {
    swift_once();
  }

  v28 = sub_B62F0();
  v29 = __swift_project_value_buffer(v28, qword_FADC8);
  v30 = *(v28 - 8);
  v31 = v30 + 16;
  v32 = *(v30 + 16);
  v32(v18, v29, v28);
  v34 = *(v30 + 56);
  v33 = v30 + 56;
  v34(v18, 0, 1, v28);
  v134 = sub_B78D0();
  v133 = v35;
  sub_A194(v18, &unk_F17B0, &qword_BE7D0);
  v36 = v161;
  v165 = v25;
  v166 = v161;
  v167 = v159;
  v168 = v27;
  v158 = v27;
  v132 = sub_58DE8();
  v131 = v37;
  v148 = v31;
  v147 = v32;
  v32(v18, v29, v28);
  v128 = v28;
  v149 = v34;
  v34(v18, 0, 1, v28);
  v130 = sub_B78D0();
  v129 = v38;
  sub_A194(v18, &unk_F17B0, &qword_BE7D0);
  v162 = v25;
  v163 = v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  v40 = v164;
  swift_getKeyPath();
  v162 = v40;
  v160 = sub_5D9BC(&qword_F15F0, type metadata accessor for SeeLostItemViewModel);
  sub_B65C0();

  v41 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isPartnerURL);

  v42 = v25;
  v157 = v39;
  if (v41)
  {
    goto LABEL_8;
  }

  v162 = v25;
  v163 = v161;
  sub_B75C0();
  v43 = v164;
  swift_getKeyPath();
  v162 = v43;
  sub_B65C0();

  v44 = *(v43 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isSignedIn);

  if ((v44 & 1) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
    v56 = *(sub_B6800() - 8);
    v125 = *(v56 + 72);
    v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v58 = swift_allocObject();
    v124 = v58;
    *(v58 + 16) = xmmword_BD800;
    v146 = (v58 + v57);
    v59 = v128;
    v147(v18, v29, v128);
    v149(v18, 0, 1, v59);
    v119 = sub_B78D0();
    v118 = v60;
    sub_A194(v18, &unk_F17B0, &qword_BE7D0);
    v61 = v161;
    v162 = v42;
    v163 = v161;
    sub_B75C0();
    v120 = v33;
    v62 = v42;
    v63 = v164;
    swift_getKeyPath();
    v162 = v63;
    sub_B65C0();

    v64 = *(v63 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

    v65 = *(v155 + 104);
    v123 = v65;
    v155 += 104;
    v122 = enum case for OnboardingTrayAction.State.enabled(_:);
    if (v64)
    {
      v66 = enum case for OnboardingTrayAction.State.loading(_:);
    }

    else
    {
      v66 = enum case for OnboardingTrayAction.State.enabled(_:);
    }

    v65(v126, v66, v150);
    v67 = *(v156 + 104);
    v156 += 104;
    v121 = v67;
    v67(v152, enum case for OnboardingTrayAction.Style.bold(_:), v151);
    v68 = swift_allocObject();
    v68[2] = v42;
    v68[3] = v61;
    v70 = v158;
    v69 = v159;
    v68[4] = v159;
    v68[5] = v70;

    sub_B67F0();
    v147(v18, v29, v59);
    v149(v18, 0, 1, v59);
    sub_B78D0();
    v149 = v71;
    sub_A194(v18, &unk_F17B0, &qword_BE7D0);
    v162 = v62;
    v163 = v61;
    sub_B75C0();
    v72 = v164;
    swift_getKeyPath();
    v162 = v72;
    sub_B65C0();

    v73 = *(v72 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

    if (v73)
    {
      v74 = enum case for OnboardingTrayAction.State.disabled(_:);
    }

    else
    {
      v74 = v122;
    }

    v123(v127, v74, v150);
    v121(v152, enum case for OnboardingTrayAction.Style.link(_:), v151);
    v75 = swift_allocObject();
    v75[2] = v62;
    v75[3] = v61;
    v75[4] = v69;
    v75[5] = v70;
    v55 = v62;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
    v45 = *(sub_B6800() - 8);
    v46 = *(v45 + 72);
    v127 = ((*(v45 + 80) + 32) & ~*(v45 + 80));
    *(swift_allocObject() + 16) = xmmword_BDA30;
    v47 = v128;
    v147(v18, v29, v128);
    v149(v18, 0, 1, v47);
    sub_B78D0();
    v149 = v48;
    sub_A194(v18, &unk_F17B0, &qword_BE7D0);
    v49 = v161;
    v162 = v25;
    v163 = v161;
    sub_B75C0();
    v50 = v164;
    swift_getKeyPath();
    v162 = v50;
    sub_B65C0();

    v51 = *(v50 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

    v52 = &enum case for OnboardingTrayAction.State.loading(_:);
    if (!v51)
    {
      v52 = &enum case for OnboardingTrayAction.State.enabled(_:);
    }

    (*(v155 + 104))(v146, *v52, v150);
    (*(v156 + 104))(v152, enum case for OnboardingTrayAction.Style.bold(_:), v151);
    v53 = swift_allocObject();
    v53[2] = v25;
    v53[3] = v49;
    v54 = v158;
    v53[4] = v159;
    v53[5] = v54;

    v55 = v42;
  }

  sub_B67F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15F8, &qword_C1330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C08, &qword_C04D8);
  sub_5D3E0();
  sub_A8CC(&qword_F0C28, &qword_F0C08, &qword_C04D8);
  v76 = v135;
  sub_B6840();
  v77 = v55;
  v78 = v161;
  v165 = v55;
  v166 = v161;
  sub_B75C0();
  v79 = v162;
  swift_getKeyPath();
  v165 = v79;
  sub_B65C0();

  v80 = *(v79 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

  v81 = sub_5D9BC(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
  v82 = v138;
  v83 = v137;
  sub_B73A0();
  v84 = (*(v136 + 8))(v76, v83);
  __chkstk_darwin(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0558, &qword_BFBB8);
  v165 = v83;
  v166 = v81;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0568, &qword_BFBC0);
  v88 = sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0);
  v165 = v87;
  v166 = v88;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v153;
  v160 = v85;
  v155 = v89;
  v156 = OpaqueTypeConformance2;
  sub_B7450();
  (*(v139 + 8))(v82, v90);
  v165 = v77;
  v166 = v78;
  sub_B75C0();
  v91 = v140;
  sub_5E754(v140);

  v92 = v141;
  v93 = v142;
  if ((*(v141 + 48))(v91, 1, v142))
  {
    sub_A194(v91, &qword_EEE08, &qword_BD530);
    v94 = 0;
    v95 = 0xE000000000000000;
  }

  else
  {
    v96 = v117;
    (*(v92 + 16))(v117, v91, v93);
    sub_A194(v91, &qword_EEE08, &qword_BD530);
    v94 = sub_B6920();
    v95 = v97;
    (*(v92 + 8))(v96, v93);
  }

  v165 = v94;
  v166 = v95;
  sub_97E8();
  v157 = sub_B7200();
  v151 = v99;
  v152 = v98;
  v101 = v100;
  sub_B7A60();
  v102 = v161;

  v103 = v158;

  v104 = sub_B7A50();
  v105 = swift_allocObject();
  v105[2] = v104;
  v105[3] = &protocol witness table for MainActor;
  v105[4] = v77;
  v105[5] = v102;
  v106 = v159;
  v105[6] = v159;
  v105[7] = v103;

  v107 = sub_B7A50();
  v108 = swift_allocObject();
  v108[2] = v107;
  v108[3] = &protocol witness table for MainActor;
  v108[4] = v77;
  v108[5] = v102;
  v108[6] = v106;
  v108[7] = v103;
  v109 = sub_B76D0();
  v110 = __chkstk_darwin(v109);
  __chkstk_darwin(v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
  v165 = v153;
  v166 = v160;
  v167 = v156;
  v168 = v155;
  swift_getOpaqueTypeConformance2();
  sub_9BD4();
  v111 = v144;
  v112 = v157;
  v113 = v152;
  v114 = v154;
  sub_B7400();

  sub_9C84(v112, v113, v101 & 1);

  return (*(v143 + 8))(v114, v111);
}

uint64_t sub_5A504@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_B7550();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &type metadata for SolariumFeatureFlag;
  v23 = sub_28360();
  v7 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v19);
  if (v7)
  {
    type metadata accessor for SeeLostItemModule();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_B7580();
    (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
    v10 = sub_B7570();

    (*(v3 + 8))(v6, v2);
    v15 = v10;
    v16 = 0;
    v17 = 257;
    v18 = 0;
  }

  else
  {
    v15 = sub_5A780;
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1610, &qword_C1338);
  sub_40DB8();
  sub_A8CC(&qword_F1608, &qword_F1610, &qword_C1338);
  result = sub_B6F00();
  v12 = v20;
  v13 = v21 != 0;
  *a1 = v19;
  *(a1 + 16) = v12;
  *(a1 + 18) = v13;
  return result;
}

double sub_5A780@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_B7550();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SeeLostItemModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_B7580();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v9 = sub_B7570();

  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1618, &qword_C1480);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_BD800;
  *(v10 + 32) = sub_B74D0();
  *(v10 + 40) = sub_B74E0();
  sub_B7740();
  sub_B77D0();
  sub_B6B60();
  sub_B6B60();
  sub_B6BC0();
  v11 = v14[1];

  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 17) = 1;
  *(a1 + 19) = 1;
  *(a1 + 24) = v11;
  result = *&v15;
  v13 = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = v13;
  return result;
}

uint64_t sub_5AA20@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26[-v4];
  v27[3] = &type metadata for SolariumFeatureFlag;
  v27[4] = sub_28360();
  v6 = sub_B6610();
  result = __swift_destroy_boxed_opaque_existential_0(v27);
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    KeyPath = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    if (qword_EEAD0 != -1)
    {
      swift_once();
    }

    v16 = sub_B62F0();
    v17 = __swift_project_value_buffer(v16, qword_FADC8);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v5, v17, v16);
    v13 = 1;
    (*(v18 + 56))(v5, 0, 1, v16);
    v19 = sub_B78D0();
    v21 = v20;
    sub_A194(v5, &unk_F17B0, &qword_BE7D0);
    v27[0] = v19;
    v27[1] = v21;
    sub_97E8();
    v9 = sub_B7200();
    v10 = v22;
    v24 = v23;
    v11 = v25;
    KeyPath = swift_getKeyPath();
    LOBYTE(v27[0]) = 0;
    v24 &= 1u;
    v26[0] = v24;
    sub_41410(v9, v10, v24);

    sub_9C84(v9, v10, v24);

    v15 = LOBYTE(v27[0]);
    v14 = v26[0];
    v8 = 0x4030000000000000;
  }

  *a1 = v8;
  *(a1 + 8) = v15;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v14;
  *(a1 + 40) = v11;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = v13;
  return result;
}

uint64_t sub_5AC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_B7A60();
  v5[7] = sub_B7A50();
  v7 = sub_B7A00();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_5AD34, v7, v6);
}

uint64_t sub_5AD34()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_5ADF4;

  return sub_5DD18();
}

uint64_t sub_5ADF4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_5AF38, v5, v4);
}

uint64_t sub_5AF38()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_5AF98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v19 - v9;
  v19[2] = a2;
  v19[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  v11 = v19[1];
  v12 = sub_B69A0();
  v13 = sub_B7B60();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "SeeLostItemViewModel: Opening partner item link on web", v14, 2u);
  }

  v15 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL;
  v16 = sub_B64C0();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, v11 + v15, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  a4(v10);

  return sub_A194(v10, &unk_F1790, &qword_C16E0);
}

uint64_t sub_5B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_B7A80();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_B7A60();

  v17 = sub_B7A50();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = a5;
  sub_30A3C(0, 0, v15, a7, v18);
}

uint64_t sub_5B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_B7A60();
  v5[7] = sub_B7A50();
  v7 = sub_B7A00();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_5B35C, v7, v6);
}

uint64_t sub_5B35C()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_5B41C;

  return sub_5DD18();
}

uint64_t sub_5B41C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_5DC68, v5, v4);
}

uint64_t sub_5B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[0] = a4;
  v18[1] = a5;
  v8 = sub_B6F50();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0568, &qword_BFBC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v18 - v13;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_B6F30();
  __chkstk_darwin(v15);
  v18[-4] = a1;
  v18[-3] = a2;
  v16 = v18[0];
  v18[-2] = a3;
  v18[-1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0630, &unk_BFD20);
  sub_41428();
  sub_B6A80();
  sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0);
  sub_B6F60();
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_5B7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a3;
  v74 = a4;
  v75 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0690, &unk_BFD50);
  v7 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v9 = &v69 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0680, &qword_BFD48);
  v10 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v12 = &v69 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0698, &qword_BFD60);
  v13 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v80 = &v69 - v14;
  v15 = sub_B7950();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v69 - v22;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0658, &unk_BFD30);
  v24 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v69 = &v69 - v25;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0648, &unk_C1FC0);
  v26 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v71 = &v69 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0630, &unk_BFD20);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v77 = &v69 - v30;
  sub_B7A60();
  v76 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v85 = &type metadata for SolariumFeatureFlag;
  v86 = sub_28360();
  v31 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v83);
  if (v31)
  {
    v72 = a5;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v32 = sub_B62F0();
    v33 = __swift_project_value_buffer(v32, qword_FAD48);
    v34 = *(v32 - 8);
    (*(v34 + 16))(v23, v33, v32);
    (*(v34 + 56))(v23, 0, 1, v32);
    v35 = sub_B78D0();
    v37 = v36;
    sub_A194(v23, &unk_F17B0, &qword_BE7D0);
    (*(v16 + 104))(v19, enum case for String.ButtonType.cancel(_:), v15);
    v38 = sub_B7960();
    v40 = v39;
    (*(v16 + 8))(v19, v15);
    v41 = swift_allocObject();
    v41[2] = a1;
    v42 = a1;
    v44 = v74;
    v43 = v75;
    v45 = v73;
    v41[3] = v75;
    v41[4] = v45;
    v41[5] = v44;
    v83 = v35;
    v84 = v37;
    __chkstk_darwin(v41);
    *(&v69 - 4) = &v83;
    *(&v69 - 3) = v38;
    *(&v69 - 2) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
    sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0);
    v46 = v69;
    sub_B7610();

    v83 = v42;
    v84 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
    sub_B75C0();
    v47 = v82;
    swift_getKeyPath();
    v83 = v47;
    sub_5D9BC(&qword_F15F0, type metadata accessor for SeeLostItemViewModel);
    sub_B65C0();

    LOBYTE(v40) = *(v47 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

    KeyPath = swift_getKeyPath();
    v49 = swift_allocObject();
    *(v49 + 16) = v40;
    v50 = (v46 + *(v70 + 36));
    *v50 = KeyPath;
    v50[1] = sub_42D18;
    v50[2] = v49;
    sub_415C0();
    v51 = v71;
    sub_B7360();
    sub_A194(v46, &qword_F0658, &unk_BFD30);
    sub_A310(v51, v80, &qword_F0648, &unk_C1FC0);
    swift_storeEnumTagMultiPayload();
    sub_5D908(&qword_F0640, &qword_F0648, &unk_C1FC0, sub_415C0);
    sub_5D908(&qword_F0678, &qword_F0680, &qword_BFD48, sub_416A4);
    v52 = v77;
    sub_B6F00();
    sub_A194(v51, &qword_F0648, &unk_C1FC0);
    a5 = v72;
  }

  else
  {
    v53 = v12;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v54 = sub_B62F0();
    v55 = __swift_project_value_buffer(v54, qword_FAD48);
    v56 = *(v54 - 8);
    (*(v56 + 16))(v23, v55, v54);
    (*(v56 + 56))(v23, 0, 1, v54);
    v57 = sub_B78D0();
    v59 = v58;
    sub_A194(v23, &unk_F17B0, &qword_BE7D0);
    v83 = v57;
    v84 = v59;
    v60 = swift_allocObject();
    v62 = v74;
    v61 = v75;
    v60[2] = a1;
    v60[3] = v61;
    v60[4] = v73;
    v60[5] = v62;
    sub_97E8();

    sub_B7640();
    v83 = a1;
    v84 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
    sub_B75C0();
    v63 = v82;
    swift_getKeyPath();
    v83 = v63;
    sub_5D9BC(&qword_F15F0, type metadata accessor for SeeLostItemViewModel);
    sub_B65C0();

    LOBYTE(v59) = *(v63 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData);

    v64 = swift_getKeyPath();
    v65 = swift_allocObject();
    *(v65 + 16) = v59;
    v66 = &v9[*(v72 + 36)];
    *v66 = v64;
    v66[1] = sub_417AC;
    v66[2] = v65;
    sub_416A4();
    v67 = v53;
    sub_B7360();
    sub_A194(v9, &qword_F0690, &unk_BFD50);
    sub_A310(v53, v80, &qword_F0680, &qword_BFD48);
    swift_storeEnumTagMultiPayload();
    sub_5D908(&qword_F0640, &qword_F0648, &unk_C1FC0, sub_415C0);
    sub_5D908(&qword_F0678, &qword_F0680, &qword_BFD48, sub_416A4);
    v52 = v77;
    sub_B6F00();
    sub_A194(v67, &qword_F0680, &qword_BFD48);
  }

  sub_5DA40(v52, a5);
}

uint64_t sub_5C340(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_B64C0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  a3(v7);
  sub_A194(v7, &unk_F1790, &qword_C16E0);
}

uint64_t sub_5C49C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, BOOL *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v13 - v8;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13[2] = a1;
  v13[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  sub_5E754(v9);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  sub_A194(v9, &qword_EEE08, &qword_BD530);

  *a3 = v11;
  return result;
}

uint64_t sub_5C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[0] = a4;
  v8[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  LOWORD(v8[0]) = -256;
  sub_6001C(v8);
}

uint64_t sub_5C718(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v15 - v11;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = a1;
  v17 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  sub_5E754(v12);

  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v13 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_A194(v12, &qword_EEE08, &qword_BD530);
    v13 = sub_B6930();
    (*(v5 + 8))(v8, v4);
  }

  v16 = v13;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50);
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
  sub_B76E0();
}

uint64_t sub_5CA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v23 - v14;
  sub_B7A60();
  v23[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[2] = sub_B68C0();
  v23[3] = v16;
  sub_B68A0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_A194(v11, &qword_EEF48, &unk_C01F0);
    v19 = sub_B6A00();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  else
  {
    sub_B6890();
    (*(v18 + 8))(v11, v17);
  }

  (*(v4 + 16))(v7, a1, v3);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  (*(v4 + 32))(v21 + v20, v7, v3);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_5CDD0()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v0 = sub_B68D0();
  v2(v0);
}

uint64_t sub_5CE98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = a1;
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F15E8, &qword_C12B0);
  sub_B75C0();
  sub_5E754(v14);

  if ((*(v7 + 48))(v14, 1, v6))
  {
    sub_A194(v14, &qword_EEE08, &qword_BD530);
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    (*(v7 + 16))(v10, v14, v6);
    sub_A194(v14, &qword_EEE08, &qword_BD530);
    v15 = sub_B6940();
    v16 = v17;
    (*(v7 + 8))(v10, v6);
  }

  v27 = v15;
  v28 = v16;
  sub_97E8();
  v18 = sub_B7200();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  *a3 = v18;
  *(a3 + 8) = v20;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v24;
  return result;
}

uint64_t sub_5D1DC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_5D9BC(&qword_F15F0, type metadata accessor for SeeLostItemViewModel);
  sub_B65C0();

  *a3 = *(v5 + *a2);
  return result;
}

unint64_t sub_5D3E0()
{
  result = qword_F1600;
  if (!qword_F1600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F15F8, &qword_C1330);
    sub_40DB8();
    sub_A8CC(&qword_F1608, &qword_F1610, &qword_C1338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1600);
  }

  return result;
}

uint64_t sub_5D4A8@<X0>(BOOL *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[6];
  v5 = v1[7];
  return sub_5C49C(v1[4], v1[5], a1);
}

uint64_t sub_5D4B8(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  return sub_5C638(a1, v1[2], v1[3], v1[4], v1[5]);
}

uint64_t sub_5D4C8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_5C718(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_5D4D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_5CE98(v1[2], v1[3], a1);
}

uint64_t sub_5D548()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F15E0, &qword_C12A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BB8, &qword_C0468);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0558, &qword_BFBB8);
  sub_B6850();
  sub_5D9BC(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0568, &qword_BFBC0);
  sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_9BD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5D724(uint64_t a1)
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
  v10[1] = sub_2184C;

  return sub_5B2C4(a1, v4, v5, v6, v7);
}

uint64_t sub_5D7FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_5D890()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8) + 80);

  return sub_5CDD0();
}

uint64_t sub_5D908(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_5D9BC(&qword_F0670, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5D9BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5DA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0630, &unk_BFD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_5DB74(uint64_t a1)
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
  v10[1] = sub_F248;

  return sub_5AC9C(a1, v4, v5, v6, v7);
}

uint64_t sub_5DCA8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  return *(v2 + *a2);
}

uint64_t sub_5DD18()
{
  v1[7] = v0;
  sub_B7A60();
  v1[8] = sub_B7A50();
  v3 = sub_B7A00();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_5DDB0, v3, v2);
}

uint64_t sub_5DDB0()
{
  v13 = v0;
  v1 = v0[7];
  swift_getKeyPath();
  v0[2] = v1;
  v0[11] = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel___observationRegistrar;
  v0[12] = sub_60848();
  sub_B65C0();

  if ((*(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isPartnerURL) & 1) != 0 || (v2 = v0[7], swift_getKeyPath(), v0[3] = v2, sub_B65C0(), , *(v2 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isSignedIn) == 1))
  {
    v3 = v0[7];
    v4 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData;
    v0[13] = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData;
    if (*(v3 + v4) == 1)
    {
      *(v3 + v4) = 1;
    }

    else
    {
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v3;
      *(v5 + 24) = 1;
      v0[4] = v3;
      sub_B65B0();
    }

    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_5DFF0;
    v7 = v0[7];

    return sub_608EC();
  }

  else
  {
    v10 = v0[7];
    v9 = v0[8];

    v12[0] = 516;
    sub_6001C(v12);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_5DFF0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = *(v4 + 72);
    v8 = *(v4 + 80);
    v9 = sub_5E540;
  }

  else
  {
    *(v4 + 136) = a1 & 1;
    v7 = *(v4 + 72);
    v8 = *(v4 + 80);
    v9 = sub_5E11C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_5E11C()
{
  v23 = v0;
  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 56) + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger;
    v2 = sub_B69A0();
    v3 = sub_B7B60();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "SeeLostItemViewModel: Share is valid", v4, 2u);
    }

    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_5E3C0;
    v6 = *(v0 + 56);

    return sub_60D0C(0, 0);
  }

  else
  {
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);

    v10 = sub_B69A0();
    v11 = sub_B7B60();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "SeeLostItemViewModel: Share is not valid", v12, 2u);
    }

    v13 = *(v0 + 104);
    v14 = *(v0 + 56);

    if (*(v14 + v13))
    {
      v15 = *(v0 + 120);
      v17 = *(v0 + 88);
      v16 = *(v0 + 96);
      v18 = *(v0 + 56);
      swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v0 + 48) = v18;
      sub_B65B0();
    }

    else
    {
      *(*(v0 + 56) + *(v0 + 104)) = 0;
    }

    v20 = *(v0 + 56);
    v22[0] = 515;
    sub_6001C(v22);
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_5E3C0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_5E4E0, v4, v3);
}

uint64_t sub_5E4E0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_5E540()
{
  v21 = v0;
  v1 = v0[15];
  v3 = v0[7];
  v2 = v0[8];

  swift_errorRetain();
  v4 = sub_B69A0();
  v5 = sub_B7B40();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v4, v5, "SeeLostItemViewModel: Failed to load preview data with error: %@", v7, 0xCu);
    sub_A194(v8, &qword_EF4F8, &qword_C16D0);
  }

  v10 = v0[13];
  v11 = v0[7];

  if (*(v11 + v10))
  {
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[7];
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    v0[5] = v14;
    sub_B65B0();
  }

  else
  {
    *(v0[7] + v0[13]) = 0;
  }

  v16 = v0[15];
  v17 = v0[7];
  v20[0] = 513;
  sub_6001C(v20);

  v18 = v0[1];

  return v18();
}

uint64_t sub_5E754@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v81 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v81 - v9;
  swift_getKeyPath();
  v96 = v1;
  sub_60848();
  sub_B65C0();

  if ((*&v1[OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination] + 256) >= 0x300u)
  {
    v12 = *&v1[OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination];
    v94 = v6;
    v95 = a1;
    if (v12 <= 1)
    {
      if (v12)
      {
        if (qword_EEAD0 != -1)
        {
          swift_once();
        }

        v67 = sub_B62F0();
        v68 = __swift_project_value_buffer(v67, qword_FADC8);
        v69 = *(v67 - 8);
        v70 = *(v69 + 16);
        v70(v10, v68, v67);
        v71 = *(v69 + 56);
        v71(v10, 0, 1, v67);
        v72 = sub_B78D0();
        v92 = v73;
        v93 = v72;
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        v70(v10, v68, v67);
        v71(v10, 0, 1, v67);
        v74 = sub_B78D0();
        v90 = v75;
        v91 = v74;
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
        v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
        v77 = *(v76 + 72);
        v89 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        *(swift_allocObject() + 16) = xmmword_BDA30;
        v70(v10, v68, v67);
        v71(v10, 0, 1, v67);
        sub_B78D0();
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
        (*(*(v78 - 8) + 56))(v94, 1, 1, v78);
        v25 = swift_allocObject();
        swift_weakInit();
      }

      else
      {
        if (qword_EEAD0 != -1)
        {
          swift_once();
        }

        v26 = sub_B62F0();
        v27 = __swift_project_value_buffer(v26, qword_FADC8);
        v28 = *(v26 - 8);
        v29 = *(v28 + 16);
        v29(v10, v27, v26);
        v30 = *(v28 + 56);
        v30(v10, 0, 1, v26);
        v31 = sub_B78D0();
        v92 = v32;
        v93 = v31;
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        v29(v10, v27, v26);
        v30(v10, 0, 1, v26);
        v33 = sub_B78D0();
        v90 = v34;
        v91 = v33;
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
        v36 = *(v35 + 72);
        v89 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        *(swift_allocObject() + 16) = xmmword_BDA30;
        v29(v10, v27, v26);
        v30(v10, 0, 1, v26);
        sub_B78D0();
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
        (*(*(v37 - 8) + 56))(v94, 1, 1, v37);
        v25 = swift_allocObject();
        swift_weakInit();
      }
    }

    else if (v12 == 2)
    {
      if (qword_EEAD0 != -1)
      {
        swift_once();
      }

      v38 = sub_B62F0();
      v39 = __swift_project_value_buffer(v38, qword_FADC8);
      v40 = *(v38 - 8);
      v41 = *(v40 + 16);
      v41(v10, v39, v38);
      v42 = *(v40 + 56);
      v42(v10, 0, 1, v38);
      v43 = sub_B78D0();
      v92 = v44;
      v93 = v43;
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      v41(v10, v39, v38);
      v42(v10, 0, 1, v38);
      v45 = sub_B78D0();
      v90 = v46;
      v91 = v45;
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v48 = *(v47 + 72);
      v89 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      v41(v10, v39, v38);
      v42(v10, 0, 1, v38);
      sub_B78D0();
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      (*(*(v49 - 8) + 56))(v94, 1, 1, v49);
      v25 = swift_allocObject();
      swift_weakInit();
    }

    else
    {
      if (v12 != 3)
      {
        if (qword_EEAD0 != -1)
        {
          swift_once();
        }

        v50 = sub_B62F0();
        v51 = __swift_project_value_buffer(v50, qword_FADC8);
        v52 = *(v50 - 8);
        v53 = *(v52 + 16);
        v53(v10, v51, v50);
        v54 = *(v52 + 56);
        v54(v10, 0, 1, v50);
        v55 = sub_B78D0();
        v91 = v56;
        v92 = v55;
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        v85 = v51;
        v53(v10, v51, v50);
        v84 = v53;
        v54(v10, 0, 1, v50);
        v83 = v54;
        v57 = sub_B78D0();
        v89 = v58;
        v90 = v57;
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
        v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
        v87 = *(v59 + 72);
        v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v61 = swift_allocObject();
        v88 = v61;
        *(v61 + 16) = xmmword_BD800;
        v93 = v61 + v60;
        v53(v10, v51, v50);
        v54(v10, 0, 1, v50);
        sub_B78D0();
        v81[1] = v62;
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
        v64 = *(v63 - 8);
        v82 = *(v64 + 56);
        v65 = v94;
        v82(v94, 1, 1, v63);
        v96 = ItemContactInfoSetupIntroductionViewModel.bind();
        v97 = 0;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
        sub_B68B0();
        v84(v10, v85, v50);
        v83(v10, 0, 1, v50);
        sub_B78D0();
        sub_A194(v10, &unk_F17B0, &qword_BE7D0);
        (*(v64 + 104))(v65, enum case for AlertInfo.ActionInfo.Style.cancel<A>(_:), v63);
        v82(v65, 0, 1, v63);
        v66 = swift_allocObject();
        swift_weakInit();
        v96 = sub_63038;
        v97 = v66;
        sub_B68B0();
        a1 = v95;
        goto LABEL_23;
      }

      if (qword_EEAD0 != -1)
      {
        swift_once();
      }

      v13 = sub_B62F0();
      v14 = __swift_project_value_buffer(v13, qword_FADC8);
      v15 = *(v13 - 8);
      v16 = *(v15 + 16);
      v16(v10, v14, v13);
      v17 = *(v15 + 56);
      v17(v10, 0, 1, v13);
      v18 = sub_B78D0();
      v92 = v19;
      v93 = v18;
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      v16(v10, v14, v13);
      v17(v10, 0, 1, v13);
      v20 = sub_B78D0();
      v90 = v21;
      v91 = v20;
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v23 = *(v22 + 72);
      v89 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      v16(v10, v14, v13);
      v17(v10, 0, 1, v13);
      sub_B78D0();
      sub_A194(v10, &unk_F17B0, &qword_BE7D0);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      (*(*(v24 - 8) + 56))(v94, 1, 1, v24);
      v25 = swift_allocObject();
      swift_weakInit();
    }

    v96 = sub_63040;
    v97 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
    sub_B68B0();
    a1 = v95;
LABEL_23:
    sub_B6910();
    v11 = 0;
    goto LABEL_24;
  }

  v11 = 1;
LABEL_24:
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v79 - 8) + 56))(a1, v11, 1, v79);
}

uint64_t sub_5FA58()
{
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_5FAD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_5FB58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_60848();
  sub_B65B0();
}

uint64_t sub_5FC1C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_60848();
    sub_B65B0();
  }

  return result;
}

uint64_t sub_5FCF0()
{
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound + 8);

  return v1;
}

uint64_t sub_5FD7C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);
  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_62A94;
  a2[1] = v6;
}

uint64_t sub_5FE30(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_60848();

  sub_B65B0();
}

uint64_t sub_5FF1C@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  *a1 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination);
  return result;
}

uint64_t sub_5FF9C@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_60848();
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination);
  return result;
}

uint64_t sub_6001C(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination;
  result = *(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination);
  if (result >> 8 <= 0xFE)
  {
    if (v2 >> 8 > 0xFE)
    {
      goto LABEL_7;
    }

    result = sub_80A98(result, v2);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + v3) = v2;
    return result;
  }

  if (v2 >> 8 > 0xFE)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_60848();
  sub_B65B0();
}

uint64_t sub_60130()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_60848();
      sub_B65B0();
    }

    else
    {
      *(result + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
    }
  }

  return result;
}

uint64_t sub_6023C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData))
    {
      v1 = Strong;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v9 = v1;
      sub_60848();
      sub_B65B0();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    v7[0] = v4;
    sub_60848();
    sub_B65C0();

    v6 = *(v4 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);
    v5 = *(v4 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound + 8);

    v7[0] = 0;
    v7[1] = 0;
    v8 = 1;
    v6(v7);
  }

  return result;
}

uint64_t SeeLostItemViewModel.__allocating_init(inputURL:sharingUUID:isPartnerURL:isSignedIn:delegate:dependencies:onItemFound:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v51 = a7;
  v52 = a8;
  v46 = a5;
  v47 = a2;
  v44 = a3;
  v45 = a4;
  v50 = a1;
  v12 = sub_B65A0();
  v40 = v12;
  v48 = *(v12 - 8);
  v13 = v48;
  v14 = *(v48 + 64);
  __chkstk_darwin(v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_B64C0();
  v49 = *(v17 - 8);
  v18 = v49;
  v19 = *(v49 + 64);
  __chkstk_darwin(v17);
  v53 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 16);
  v39[1] = &qword_C1480;
  v22 = *a6;
  v42 = a6[1];
  v43 = v22;
  v41 = v17;
  v21();
  v23 = *(v13 + 16);
  v23(v16, a2, v12);
  v24 = *(v9 + 48);
  v25 = *(v9 + 52);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__delegate;
  swift_unknownObjectWeakInit();
  v28 = (v26 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);
  *v28 = ItemContactInfoSetupIntroductionViewModel.bind();
  v28[1] = 0;
  sub_B69B0();
  v29 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination;
  *(v26 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__destination) = -256;
  sub_B65F0();
  *(v26 + v29) = -256;
  (v21)(v26 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL, v53, v17);
  v30 = v40;
  v23((v26 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_sharingUUID), v16, v40);
  v31 = v45;
  *(v26 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isPartnerURL) = v44;
  *(v26 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isSignedIn) = v31;
  swift_unknownObjectRetain();
  sub_60800(v26 + v27);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v26 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
  v32 = (v26 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies);
  v33 = v42;
  *v32 = v43;
  v32[1] = v33;
  swift_getKeyPath();
  v54 = v26;
  v55 = v51;
  v56 = v52;
  v57 = v26;
  sub_60848();
  sub_B65B0();
  swift_unknownObjectRelease();

  v34 = *(v48 + 8);
  v35 = v30;
  v34(v47, v30);
  v36 = *(v49 + 8);
  v37 = v41;
  v36(v50, v41);
  v34(v16, v35);
  v36(v53, v37);
  return v26;
}

unint64_t sub_60848()
{
  result = qword_F15F0;
  if (!qword_F15F0)
  {
    type metadata accessor for SeeLostItemViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F15F0);
  }

  return result;
}

uint64_t type metadata accessor for SeeLostItemViewModel()
{
  result = qword_F16B0;
  if (!qword_F16B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_608EC()
{
  v1[2] = v0;
  sub_B7A60();
  v1[3] = sub_B7A50();
  v3 = sub_B7A00();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_60984, v3, v2);
}

uint64_t sub_60984()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger;
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SeeLostItemViewModel: Requesting preview", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 24);
  v7 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL;
  v11 = (*(v5 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 16) + **(v5 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 16));
  v8 = *(*(v5 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 16) + 4);
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_60B10;

  return v11(v5 + v7);
}

uint64_t sub_60B10(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    v9 = sub_60CA4;
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    v9 = sub_60C3C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_60C3C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2(v3);
}

uint64_t sub_60CA4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2(0);
}

uint64_t sub_60D0C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = sub_B64C0();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = sub_B65A0();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  sub_B7A60();
  v3[15] = sub_B7A50();
  v12 = sub_B7A00();
  v3[16] = v12;
  v3[17] = v11;

  return _swift_task_switch(sub_60E98, v12, v11);
}

uint64_t sub_60E98()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 8);
  v3 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL;
  v9 = (*(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies) + **(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies));
  v4 = *(*(v1 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies) + 4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_60FAC;
  v6 = v0[5];
  v7 = v0[6];

  return v9(v1 + v3, v6, v7);
}

uint64_t sub_60FAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v7 = *(v3 + 136);
  v8 = *(v3 + 128);
  if (v1)
  {
    v9 = sub_615AC;
  }

  else
  {
    v9 = sub_610F0;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_610F0()
{
  v51 = v0;
  v1 = v0[19];
  v2 = v0[15];

  if (!v1)
  {
    goto LABEL_9;
  }

  v3 = v0[19];
  v4 = [v3 share];
  if (v4)
  {
    v5 = v4;
    v6 = v0[7] + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger;
    v7 = sub_B69A0();
    v8 = sub_B7B60();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "SeeLostItemViewModel: On item found", v9, 2u);
    }

    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[12];
    v13 = v0[7];

    swift_getKeyPath();
    v0[4] = v13;
    sub_60848();
    sub_B65C0();

    v15 = *(v13 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);
    v14 = *(v13 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound + 8);

    v16 = [v5 beaconIdentifier];
    sub_B6580();

    v17 = sub_B6560();
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v48 = v17;
    v49 = v19;
    v50 = 0;
    v15(&v48);

    sub_62C40(v48, v49, v50);
    goto LABEL_15;
  }

  v20 = [v3 authUrl];
  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = v0[9];
  v22 = v0[10];
  v23 = v0[8];
  v24 = v20;
  sub_B7900();

  sub_B64B0();

  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    sub_A194(v0[8], &unk_F1790, &qword_C16E0);
LABEL_9:
    v25 = v0[7] + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger;
    v26 = sub_B69A0();
    v27 = sub_B7B60();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "SeeLostItemViewModel: Failed to load item data", v28, 2u);
    }

    v29 = v0[7];

    if (*(v29 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData))
    {
      v30 = v0[20];
      v31 = v0[7];
      swift_getKeyPath();
      v32 = swift_task_alloc();
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      v0[3] = v31;
      sub_60848();
      sub_B65B0();
    }

    else
    {
      *(v29 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
    }

    v33 = v0[19];
    v34 = v0[7];
    LOWORD(v48) = 512;
    sub_6001C(&v48);

    goto LABEL_15;
  }

  v40 = v0[7];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v41 = sub_B69A0();
  v42 = sub_B7B60();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "SeeLostItemViewModel: Opening partner authentication flow", v43, 2u);
  }

  v45 = v0[10];
  v44 = v0[11];
  v46 = v0[9];
  v47 = v0[7];

  sub_617E8();
  (*(v45 + 8))(v44, v46);
LABEL_15:
  v35 = v0[14];
  v36 = v0[11];
  v37 = v0[8];

  v38 = v0[1];

  return v38();
}

uint64_t sub_615AC()
{
  v21 = v0;
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[7];

  swift_errorRetain();
  v4 = sub_B69A0();
  v5 = sub_B7B40();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v4, v5, "SeeLostItemViewModel: Failed to load item data with error: %@", v7, 0xCu);
    sub_A194(v8, &qword_EF4F8, &qword_C16D0);
  }

  v10 = v0[7];

  if (*(v10 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData))
  {
    v11 = v0[7];
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    v0[2] = v11;
    sub_60848();
    sub_B65B0();
  }

  else
  {
    *(v10 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
  }

  v13 = v0[20];
  v14 = v0[7];
  v20[0] = 512;
  sub_6001C(v20);

  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[8];

  v18 = v0[1];

  return v18();
}

void sub_617E8()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = objc_allocWithZone(ASWebAuthenticationSession);

  sub_B6480(v4);
  v6 = v5;
  v7 = sub_B78E0();
  v10[4] = sub_62C88;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_62AEC;
  v10[3] = &block_descriptor_0;
  v8 = _Block_copy(v10);
  v9 = [v3 initWithURL:v6 callbackURLScheme:v7 completionHandler:v8];
  _Block_release(v8);

  [v9 setPrefersEphemeralWebBrowserSession:1];
  swift_getKeyPath();
  v10[0] = v1;
  sub_60848();
  sub_B65C0();

  [v9 setPresentationContextProvider:swift_unknownObjectWeakLoadStrong()];
  swift_unknownObjectRelease();
  [v9 start];
}

uint64_t sub_619C4(uint64_t a1, char *a2, uint64_t a3)
{
  v45 = a1;
  v5 = sub_B69C0();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  v7 = __chkstk_darwin(v5);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v43 - v17;
  sub_B7A60();
  v48 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!a2)
  {
    v31 = sub_B7A80();
    (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
    sub_62CD8(v45, v14);

    v32 = sub_B7A50();
    v33 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = a3;
    sub_62E70(v14, v34 + v33);
    sub_30CFC(0, 0, v18, &unk_C1720, v34);
    goto LABEL_19;
  }

  swift_getErrorValue();
  if (sub_B7E30() == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v21 = v46;
    v20 = v47;
    if (Strong)
    {
      v22 = v43;
      (*(v46 + 16))(v43, Strong + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger, v47);

      swift_errorRetain();
      v23 = sub_B69A0();
      v24 = sub_B7B60();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v49 = a2;
        v50[0] = v26;
        *v25 = 136315138;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17A0, &qword_C1728);
        v27 = sub_B7930();
        v29 = sub_17834(v27, v28, v50);

        *(v25 + 4) = v29;
        v30 = "SeeLostItemViewModel: User cancelled the authentication: %s";
LABEL_12:
        _os_log_impl(&dword_0, v23, v24, v30, v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);

        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    swift_beginAccess();
    v35 = swift_weakLoadStrong();
    v21 = v46;
    v20 = v47;
    if (v35)
    {
      v22 = v44;
      (*(v46 + 16))(v44, v35 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger, v47);

      swift_errorRetain();
      v23 = sub_B69A0();
      v24 = sub_B7B60();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v49 = a2;
        v50[0] = v26;
        *v25 = 136315138;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17A0, &qword_C1728);
        v36 = sub_B7930();
        v38 = sub_17834(v36, v37, v50);

        *(v25 + 4) = v38;
        v30 = "SeeLostItemViewModel: ASWebAuthenticationSession returned error: %s";
        goto LABEL_12;
      }

LABEL_13:

      (*(v21 + 8))(v22, v20);
    }
  }

  swift_beginAccess();
  v39 = swift_weakLoadStrong();
  if (!v39)
  {
  }

  if (*(v39 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData))
  {
    v40 = v39;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v43 - 2) = v40;
    *(&v43 - 8) = 0;
    v49 = v40;
    sub_60848();
    sub_B65B0();
  }

  *(v39 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__isLoadingItemData) = 0;
LABEL_19:
}

uint64_t sub_62048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_B7A60();
  v5[9] = sub_B7A50();
  v8 = sub_B7A00();
  v5[10] = v8;
  v5[11] = v7;

  return _swift_task_switch(sub_6211C, v8, v7);
}

uint64_t sub_6211C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 64);
    sub_62CD8(*(v0 + 56), v3);
    v4 = sub_B64C0();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 48))(v3, 1, v4);
    v7 = *(v0 + 64);
    if (v6 == 1)
    {
      sub_A194(*(v0 + 64), &unk_F1790, &qword_C16E0);
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v14 = *(v0 + 64);
      v8 = sub_B6470();
      v9 = v15;
      (*(v5 + 8))(v7, v4);
    }

    *(v0 + 104) = v9;
    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_62308;

    return sub_60D0C(v8, v9);
  }

  else
  {
    v10 = *(v0 + 72);

    v11 = *(v0 + 64);
    **(v0 + 40) = *(v0 + 96) == 0;

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_62308()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v8 = *v0;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_62468, v6, v5);
}

uint64_t sub_62468()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 64);
  **(v0 + 40) = *(v0 + 96) == 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t SeeLostItemViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_sharingUUID;
  v2 = sub_B65A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL;
  v4 = sub_B64C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_60800(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__delegate);
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 8);
  v6 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 24);

  v7 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound + 8);

  v8 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger;
  v9 = sub_B69C0();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel___observationRegistrar;
  v11 = sub_B6600();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t SeeLostItemViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_sharingUUID;
  v2 = sub_B65A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_inputURL;
  v4 = sub_B64C0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_60800(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__delegate);
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 8);
  v6 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_dependencies + 24);

  v7 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound + 8);

  v8 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel_logger;
  v9 = sub_B69C0();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel___observationRegistrar;
  v11 = sub_B6600();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_627EC()
{
  result = qword_F1680;
  if (!qword_F1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1680);
  }

  return result;
}

uint64_t sub_62858()
{
  result = sub_B65A0();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_B64C0();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_B69C0();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = sub_B6600();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_629E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_62A20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_62A48()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC13FindMyAppCore20SeeLostItemViewModel__onItemFound);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_62A94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_62AEC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_B64A0();
    v12 = sub_B64C0();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_B64C0();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_A194(v9, &unk_F1790, &qword_C16E0);
}

uint64_t sub_62C40(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_62C50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_62CB0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_62CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_62D48()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_B64C0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_62E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_62EE0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_F1790, &qword_C16E0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_F248;

  return sub_62048(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_62FE8(unsigned __int16 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_6001C(&v4);
}

void static SeeLostItemViewModel.Dependencies.live()(void *a1@<X8>)
{
  *a1 = &unk_C17A0;
  a1[1] = 0;
  a1[2] = &unk_C17A8;
  a1[3] = 0;
}

uint64_t sub_63110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_B69C0();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17E0, &qword_C17B8);
  v3[25] = v7;
  v8 = *(v7 - 8);
  v3[26] = v8;
  v9 = *(v8 + 64) + 15;
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_6323C, 0, 0);
}

uint64_t sub_6323C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = [objc_allocWithZone(SPOwnerInterface) init];
  v14 = [v3 beaconSharingSession];
  v0[28] = v14;

  sub_B6470();
  v4 = sub_B78E0();

  if (v1)
  {
    v5 = v0[20];
    v6 = v0[21];
    v7 = sub_B78E0();
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[26];
  v9 = v0[27];
  v10 = v0[25];
  v11 = [objc_allocWithZone(SPDelegatedShareImportContext) initWithUrl:v4 callbackValue:v7];
  v0[29] = v11;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_63498;
  swift_continuation_init();
  v0[17] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_64150();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  sub_B7A10();
  (*(v8 + 32))(boxed_opaque_existential_0, v9, v10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_63818;
  v0[13] = &block_descriptor_4;
  [v14 importDelegatedShare:v11 completion:?];
  (*(v8 + 8))(boxed_opaque_existential_0, v10);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_63498()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_6363C;
  }

  else
  {
    v3 = sub_635A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_635A8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);

  swift_unknownObjectRelease();
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_6363C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[24];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_B69B0();
  swift_errorRetain();
  v5 = sub_B69A0();
  v6 = sub_B7B60();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v5, v6, "SeeLostItemViewModel: Error when importing delegated share: %@", v8, 0xCu);
    sub_640E8(v9);
  }

  v11 = v0[30];
  v12 = v0[27];
  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[22];

  swift_willThrow();
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];
  v17 = v0[30];

  return v16();
}

void sub_63818(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17E0, &qword_C17B8);
    sub_B7A20();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17E0, &qword_C17B8);
    sub_B7A30();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_638C8(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_B69C0();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D8, &qword_C17B0);
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_639F0, 0, 0);
}

uint64_t sub_639F0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  v5 = [objc_allocWithZone(SPOwnerInterface) init];
  v6 = [v5 beaconSharingSession];
  v0[25] = v6;

  sub_B6470();
  v7 = objc_allocWithZone(SPDelegatedShareImportContext);
  v8 = sub_B78E0();

  v9 = [v7 initWithUrl:v8 callbackValue:0];
  v0[26] = v9;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_63C44;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  sub_B7A10();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v3);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_6402C;
  v0[13] = &block_descriptor_1;
  [v6 importSharePreview:v9 completion:?];
  (*(v1 + 8))(boxed_opaque_existential_0, v3);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_63C44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_63DE8;
  }

  else
  {
    v3 = sub_63D54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_63D54()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);

  swift_unknownObjectRelease();
  v4 = *(v0 + 224);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_63DE8()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[21];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_B69B0();
  swift_errorRetain();
  v5 = sub_B69A0();
  v6 = sub_B7B60();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[27];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v5, v6, "SeeLostItemViewModel: Error when trying to preview status for delegated share: %@", v8, 0xCu);
    sub_640E8(v9);
  }

  v11 = v0[27];
  v12 = v0[24];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[19];

  swift_willThrow();
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];
  v17 = v0[27];

  return v16(0);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_6402C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D8, &qword_C17B0);
    sub_B7A20();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D8, &qword_C17B0);
    sub_B7A30();
  }
}

uint64_t sub_640E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4F8, &qword_C16D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_64150()
{
  result = qword_F17E8;
  if (!qword_F17E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_F17E8);
  }

  return result;
}

uint64_t sub_641A4(uint64_t a1)
{
  result = sub_6421C(&qword_F17F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_6421C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SeeLostItemViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s5AlertOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5AlertOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_643B0(uint64_t a1)
{
  *(a1 + 8) = sub_643E0();
  result = sub_64434();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_643E0()
{
  result = qword_F1800;
  if (!qword_F1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1800);
  }

  return result;
}

unint64_t sub_64434()
{
  result = qword_F1808;
  if (!qword_F1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1808);
  }

  return result;
}

unint64_t sub_6448C()
{
  result = qword_F1810;
  if (!qword_F1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1810);
  }

  return result;
}

unint64_t sub_644E4()
{
  result = qword_F1818;
  if (!qword_F1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1818);
  }

  return result;
}

unint64_t sub_6453C()
{
  result = qword_F1820;
  if (!qword_F1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1820);
  }

  return result;
}

unint64_t sub_64594()
{
  result = qword_F1828;
  if (!qword_F1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1828);
  }

  return result;
}

unint64_t sub_645EC()
{
  result = qword_F1830;
  if (!qword_F1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1830);
  }

  return result;
}

unint64_t sub_64644()
{
  result = qword_F1838;
  if (!qword_F1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1838);
  }

  return result;
}

uint64_t ItemContactInfoUpdater.init(enableBlock:updateBlock:disableBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_64718@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_B6DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_A310(v2, &v17 - v11, &qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_B6B50();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_B7B50();
    v16 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

double ItemContactInfoSetupConfirmationView.init(viewModel:onDismiss:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_B6370();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v14 = v13[7];
  v29 = 0x404E000000000000;
  sub_275B4();
  sub_B6AB0();
  v15 = a4 + v13[8];
  *v15 = xmmword_C1CE0;
  *(v15 + 2) = 0x3FF0000000000000;
  v16 = (a4 + v13[5]);
  *&v27 = a1;
  type metadata accessor for ItemContactInfoSetupConfirmationViewModel();

  sub_B75B0();
  v17 = v30;
  *v16 = v29;
  v16[1] = v17;
  v18 = (a4 + v13[9]);
  *v18 = a2;
  v18[1] = a3;
  swift_getKeyPath();
  v29 = a1;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v19 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  (*(v9 + 16))(v12, a1 + v19, v8);
  MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  v23 = a4 + v13[6];
  v26[0] = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
  v26[1] = v22;
  sub_B75B0();

  result = *&v27;
  v25 = v28;
  *v23 = v27;
  *(v23 + 2) = v25;
  return result;
}

uint64_t ItemContactInfoSetupConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v130 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v124 = *(v3 - 1);
  v125 = v3;
  v4 = *(v124 + 64);
  __chkstk_darwin(v3);
  v108 = &v107 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v123 = &v107 - v8;
  v9 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v122 = *(v9 - 8);
  v10 = v122[8];
  __chkstk_darwin(v9);
  v126 = v11;
  v133 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_B6980();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v107 - v19;
  v115 = sub_B6850();
  v114 = *(v115 - 8);
  v21 = *(v114 + 64);
  __chkstk_darwin(v115);
  v113 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BB8, &qword_C0468);
  v117 = *(v119 - 8);
  v23 = *(v117 + 64);
  __chkstk_darwin(v119);
  v116 = (&v107 - v24);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1848, &qword_C1D50);
  v120 = *(v121 - 8);
  v25 = *(v120 + 64);
  __chkstk_darwin(v121);
  v118 = &v107 - v26;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1850, &qword_C1D58);
  v27 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v132 = &v107 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1858, &qword_C1D60);
  v128 = *(v29 - 8);
  v129 = v29;
  v30 = *(v128 + 64);
  __chkstk_darwin(v29);
  v127 = &v107 - v31;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v32 = sub_B62F0();
  v33 = __swift_project_value_buffer(v32, qword_FADB0);
  v34 = *(v32 - 8);
  (*(v34 + 16))(v20, v33, v32);
  (*(v34 + 56))(v20, 0, 1, v32);
  v131 = sub_B78D0();
  v112 = v35;
  sub_A194(v20, &unk_F17B0, &qword_BE7D0);
  v139 = &type metadata for SolariumFeatureFlag;
  v140 = sub_28360();
  v36 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v136);
  v134 = v9;
  if (v36)
  {
    v37 = [objc_opt_self() clearColor];
  }

  else
  {
    v38 = (v2 + *(v9 + 20));
    v40 = *v38;
    v39 = v38[1];
    v136 = v40;
    v137 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
    sub_B75C0();
    v41 = v142 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory;
    LOBYTE(v41) = *(v41 + *(type metadata accessor for LostAccessory() + 24));

    sub_40D5C();
    if (v41)
    {
      if (qword_EEB18 != -1)
      {
        swift_once();
      }

      v42 = qword_FAED0;
    }

    else
    {
      if (qword_EEB20 != -1)
      {
        swift_once();
      }

      v42 = qword_FAEE8;
    }

    v43 = __swift_project_value_buffer(v12, v42);
    (*(v13 + 16))(v16, v43, v12);
    v37 = sub_B7B90();
  }

  v111 = v37;
  v110 = &v107;
  v44 = __chkstk_darwin(v37);
  __chkstk_darwin(v44);
  v45 = v2;
  v109 = sub_6AB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EC8, &qword_C1D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1868, &unk_C1D78);
  sub_53A6C();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1870, &qword_C1D88);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1878, &qword_C1D90);
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1880, &qword_C1D98);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1888, &qword_C1DA0);
  v50 = sub_705D0();
  v136 = v49;
  v137 = &type metadata for Color;
  v138 = v50;
  v139 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v136 = v48;
  v137 = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v136 = v47;
  v137 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  v136 = v46;
  v137 = v53;
  swift_getOpaqueTypeConformance2();
  v54 = v113;
  sub_B6840();
  v55 = *(v134 + 20);
  v131 = v45;
  v56 = (v45 + v55);
  v57 = v56[1];
  v134 = *v56;
  v136 = v134;
  v137 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v59 = v142;
  swift_getKeyPath();
  v136 = v59;
  v60 = sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  LOBYTE(v45) = *(v59 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);

  if ((v45 & 1) == 0)
  {
    v136 = v134;
    v137 = v57;
    sub_B75C0();
    v61 = v142;
    swift_getKeyPath();
    v136 = v61;
    sub_B65C0();

    v62 = *(v61 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling);
  }

  v112 = v60;
  v63 = sub_72884(&qword_F0560, &type metadata accessor for OnboardingWelcomeView);
  v64 = v116;
  v65 = v115;
  sub_B73A0();
  v66 = (*(v114 + 8))(v54, v65);
  __chkstk_darwin(v66);
  v67 = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F18B8, &qword_C1E08);
  v136 = v65;
  v137 = v63;
  swift_getOpaqueTypeConformance2();
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F18C0, &qword_C1E10);
  v69 = sub_70814();
  v136 = v68;
  v137 = v69;
  swift_getOpaqueTypeConformance2();
  v70 = v118;
  v71 = v119;
  sub_B7450();
  (*(v117 + 8))(v64, v71);
  v72 = v133;
  sub_728EC(v67, v133, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v73 = *(v122 + 80);
  v74 = (v73 + 16) & ~v73;
  v117 = v74 + v126;
  v75 = swift_allocObject();
  v119 = v74;
  sub_708C8(v72, v75 + v74);
  v76 = v132;
  (*(v120 + 32))(v132, v70, v121);
  v77 = &v76[*(v135 + 36)];
  *v77 = sub_7092C;
  v77[1] = v75;
  v77[2] = 0;
  v77[3] = 0;
  v136 = v134;
  v137 = v57;
  v122 = v57;
  v121 = v58;
  sub_B75C0();
  v78 = v123;
  sub_73D48(v123);

  v80 = v124;
  v79 = v125;
  if ((*(v124 + 48))(v78, 1, v125))
  {
    sub_A194(v78, &qword_EEE08, &qword_BD530);
    v81 = 0;
    v82 = 0xE000000000000000;
  }

  else
  {
    v83 = v108;
    (*(v80 + 16))(v108, v78, v79);
    sub_A194(v78, &qword_EEE08, &qword_BD530);
    v81 = sub_B6920();
    v82 = v84;
    (*(v80 + 8))(v83, v79);
  }

  v136 = v81;
  v137 = v82;
  sub_97E8();
  v85 = sub_B7200();
  v123 = v86;
  v124 = v85;
  LODWORD(v118) = v87;
  v120 = v88;
  v89 = v131;
  v90 = v133;
  v125 = type metadata accessor for ItemContactInfoSetupConfirmationView;
  sub_728EC(v131, v133, type metadata accessor for ItemContactInfoSetupConfirmationView);
  sub_B7A60();
  v91 = sub_B7A50();
  v92 = (v73 + 32) & ~v73;
  v93 = swift_allocObject();
  *(v93 + 16) = v91;
  *(v93 + 24) = &protocol witness table for MainActor;
  sub_708C8(v90, v93 + v92);
  sub_728EC(v89, v90, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v94 = sub_B7A50();
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  *(v95 + 24) = &protocol witness table for MainActor;
  sub_708C8(v90, v95 + v92);
  v96 = sub_B76D0();
  v113 = &v107;
  v97 = __chkstk_darwin(v96);
  __chkstk_darwin(v97);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F18E0, &qword_C1E28);
  v116 = sub_709A4();
  v126 = sub_70B3C();
  v114 = v73;
  v98 = v118;
  v99 = v127;
  v101 = v123;
  v100 = v124;
  v102 = v132;
  sub_B7400();

  sub_9C84(v100, v101, v98 & 1);

  sub_A194(v102, &qword_F1850, &qword_C1D58);
  v136 = v134;
  v137 = v122;
  sub_B75C0();
  v103 = v142;
  swift_getKeyPath();
  v136 = v103;
  sub_B65C0();

  LOBYTE(v102) = *(v103 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss);

  LOBYTE(v142) = v102;
  sub_728EC(v89, v90, v125);
  v104 = swift_allocObject();
  sub_708C8(v90, v104 + v119);
  v136 = v135;
  v137 = v115;
  v138 = &type metadata for Text;
  v139 = v116;
  v140 = v126;
  v141 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v105 = v129;
  sub_B7470();

  return (*(v128 + 8))(v99, v105);
}

uint64_t sub_65DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v11 = *v9;
  v10 = v9[1];
  *&v24 = v11;
  *(&v24 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v12 = v20 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory;
  LOBYTE(v12) = *(v12 + *(type metadata accessor for LostAccessory() + 24));

  v27 = &type metadata for SolariumFeatureFlag;
  v28 = sub_28360();
  sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v24);
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_B7580();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v15 = sub_B7570();

  (*(v5 + 8))(v8, v4);
  v20 = v15;
  v21 = 0;
  v22 = 257;
  v23 = (v12 & 1) != 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  sub_40DB8();
  result = sub_B6F00();
  v17 = v25;
  v18 = v26 != 0;
  *a2 = v24;
  *(a2 + 16) = v17;
  *(a2 + 18) = v18;
  return result;
}

uint64_t sub_66190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_B6E50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1888, &qword_C1DA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1880, &qword_C1D98);
  v44 = *(v48 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v48);
  v41 = &v40 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1878, &qword_C1D90);
  v46 = *(v49 - 8);
  v14 = *(v46 + 64);
  __chkstk_darwin(v49);
  v43 = &v40 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1870, &qword_C1D88);
  v45 = *(v47 - 8);
  v16 = *(v45 + 64);
  __chkstk_darwin(v47);
  v42 = &v40 - v17;
  v50 = a1;
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F19F8, &qword_C2058);
  sub_A8CC(&qword_F1A00, &qword_F19F8, &qword_C2058);
  sub_B7180();
  sub_B6E40();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F18A0, &qword_C1DA8) + 36);
  (*(v4 + 16))(&v11[v18], v7, v3);
  v19 = *(v4 + 56);
  v19(&v11[v18], 0, 1, v3);
  KeyPath = swift_getKeyPath();
  v21 = &v11[*(v8 + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0748, &qword_BFE70) + 28);
  (*(v4 + 32))(v21 + v22, v7, v3);
  v23 = v41;
  v19(v21 + v22, 0, 1, v3);
  *v21 = KeyPath;
  v53 = sub_B74E0();
  v24 = sub_705D0();
  sub_B7380();

  sub_A194(v11, &qword_F1888, &qword_C1DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_BD800;
  LOBYTE(KeyPath) = sub_B70E0();
  *(inited + 32) = KeyPath;
  v26 = sub_B7100();
  *(inited + 33) = v26;
  sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != KeyPath)
  {
    sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v26)
  {
    sub_B70F0();
  }

  v27 = (v50 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 32));
  v28 = v27[2];
  v53 = v8;
  v54 = &type metadata for Color;
  v55 = v24;
  v56 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v43;
  v31 = v48;
  sub_B7270();
  (*(v44 + 8))(v23, v31);
  sub_B70C0();
  v32 = *v27;
  v53 = v31;
  v54 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v42;
  v35 = v49;
  sub_B7270();
  (*(v46 + 8))(v30, v35);
  v53 = v35;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v51;
  v37 = v47;
  sub_B7390();
  (*(v45 + 8))(v34, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1868, &unk_C1D78);
  return (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
}

uint64_t sub_66848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v86 = sub_B62F0();
  v85 = *(v86 - 8);
  v3 = *(v85 + 64);
  __chkstk_darwin(v86);
  v84 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A10, &qword_C20A0);
  v92 = *(v100 - 8);
  v5 = *(v92 + 64);
  __chkstk_darwin(v100);
  v87 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A18, &qword_C20A8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v94 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v80 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A20, &qword_C20B0);
  v89 = *(v97 - 8);
  v12 = *(v89 + 64);
  __chkstk_darwin(v97);
  v83 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A28, &qword_C20B8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v93 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v103 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A30, &qword_C20C0);
  v88 = *(v19 - 8);
  v20 = *(v88 + 64);
  __chkstk_darwin(v19);
  v81 = &v80 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A38, &qword_C20C8);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v91 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v102 = &v80 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A40, &qword_C20D0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v80 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A48, &qword_C20D8);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v101 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v80 - v36;
  v38 = sub_B7A60();
  v90 = sub_B7A50();
  v82 = v38;
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v41 = *v39;
  v40 = v39[1];
  v104 = *v39;
  v105 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v42 = *(v108 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems);

  v98 = a1;
  v99 = v37;
  if (v42)
  {
    __chkstk_darwin(v43);
    *(&v80 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B08, &qword_C2158);
    sub_72648();
    sub_B7720();
    v104 = 1;
    LOWORD(v105) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
    sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60);
    v37 = v99;
    *&v31[*(v27 + 36)] = sub_B76A0();
    sub_AB00(v31, v37, &qword_F1A40, &qword_C20D0);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = 1;
  (*(v28 + 56))(v37, v44, 1, v27);
  v104 = v41;
  v105 = v40;
  sub_B75C0();
  v46 = *(v108 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems);

  if ((v46 & 2) != 0)
  {
    __chkstk_darwin(v47);
    *(&v80 - 2) = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AC8, &qword_C2130);
    sub_72384();
    v48 = v81;
    sub_B7720();
    v104 = 1;
    LOWORD(v105) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
    sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60);
    *(v48 + *(v19 + 36)) = sub_B76A0();
    sub_AB00(v48, v102, &qword_F1A30, &qword_C20C0);
    v45 = 0;
  }

  v49 = 1;
  (*(v88 + 56))(v102, v45, 1, v19);
  v104 = v41;
  v105 = v40;
  sub_B75C0();
  v50 = *(v108 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems);

  if ((v50 & 4) != 0)
  {
    __chkstk_darwin(v51);
    v52 = v98;
    *(&v80 - 2) = v98;
    sub_694B0(v52, &v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A98, &qword_C2118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AA0, &qword_C2120);
    sub_72248();
    sub_72300();
    v53 = v83;
    sub_B7730();
    v104 = 1;
    LOWORD(v105) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
    sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60);
    *(v53 + *(v97 + 36)) = sub_B76A0();
    sub_AB00(v53, v103, &qword_F1A20, &qword_C20B0);
    v49 = 0;
  }

  v54 = 1;
  (*(v89 + 56))(v103, v49, 1, v97);
  v104 = v41;
  v105 = v40;
  sub_B75C0();
  v55 = *(v108 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType);

  if (v55 == 1)
  {
    __chkstk_darwin(v56);
    *(&v80 - 2) = v98;
    sub_B7A50();
    sub_B7A00();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v57 = v37;
    sub_B6E60();
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v58 = v86;
    v59 = __swift_project_value_buffer(v86, qword_FADB0);
    (*(v85 + 16))(v84, v59, v58);
    v60 = sub_B71B0();
    v62 = v61;
    v64 = v63;
    v66 = v65;

    v104 = v60;
    v105 = v62;
    v106 = v64 & 1;
    v107 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A58, &qword_C20E8);
    sub_72010();
    v67 = v87;
    sub_B7730();
    v104 = 1;
    LOWORD(v105) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
    sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60);
    *(v67 + *(v100 + 36)) = sub_B76A0();
    sub_AB00(v67, v96, &qword_F1A10, &qword_C20A0);
    v54 = 0;
    v37 = v57;
  }

  v68 = v96;
  (*(v92 + 56))(v96, v54, 1, v100);
  v69 = v37;
  v70 = v101;
  sub_A310(v69, v101, &qword_F1A48, &qword_C20D8);
  v71 = v102;
  v72 = v91;
  sub_A310(v102, v91, &qword_F1A38, &qword_C20C8);
  v73 = v103;
  v74 = v93;
  sub_A310(v103, v93, &qword_F1A28, &qword_C20B8);
  v75 = v94;
  sub_A310(v68, v94, &qword_F1A18, &qword_C20A8);
  v76 = v70;
  v77 = v95;
  sub_A310(v76, v95, &qword_F1A48, &qword_C20D8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A50, &qword_C20E0);
  sub_A310(v72, v77 + v78[12], &qword_F1A38, &qword_C20C8);
  sub_A310(v74, v77 + v78[16], &qword_F1A28, &qword_C20B8);
  sub_A310(v75, v77 + v78[20], &qword_F1A18, &qword_C20A8);
  sub_A194(v68, &qword_F1A18, &qword_C20A8);
  sub_A194(v73, &qword_F1A28, &qword_C20B8);
  sub_A194(v71, &qword_F1A38, &qword_C20C8);
  sub_A194(v99, &qword_F1A48, &qword_C20D8);
  sub_A194(v75, &qword_F1A18, &qword_C20A8);
  sub_A194(v74, &qword_F1A28, &qword_C20B8);
  sub_A194(v72, &qword_F1A38, &qword_C20C8);
  sub_A194(v101, &qword_F1A48, &qword_C20D8);
}

uint64_t sub_6769C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v36 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B30, &qword_C2168);
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v40);
  v37 = &v36 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B20, &qword_C2160);
  v9 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v42 = &v36 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B08, &qword_C2158);
  v11 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v13 = &v36 - v12;
  sub_B7A60();
  v39 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v14 = sub_B62F0();
  v15 = __swift_project_value_buffer(v14, qword_FAD48);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v6, v15, v14);
  (*(v16 + 56))(v6, 0, 1, v14);
  v17 = sub_B78D0();
  v19 = v18;
  sub_A194(v6, &unk_F17B0, &qword_BE7D0);
  v49 = v17;
  v50 = v19;
  v20 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v21 = v20[1];
  v44 = *v20;
  v22 = v44;
  v45 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75E0();
  v24 = v46;
  v23 = v47;
  v25 = v48;
  swift_getKeyPath();
  v46 = v24;
  v47 = v23;
  v48 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B38, &qword_C2198);
  sub_B76B0();

  sub_97E8();
  v26 = v37;
  sub_B7670();
  v46 = v22;
  v47 = v21;
  sub_B75C0();
  v27 = *(v44 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems);

  if (v27)
  {
    v28 = sub_B6F80();
  }

  else
  {
    v28 = sub_B6FA0();
  }

  v29 = v28;
  v30 = v42;
  (*(v38 + 32))(v42, v26, v40);
  *(v30 + *(v36 + 36)) = v29;
  v46 = v22;
  v47 = v21;
  sub_B75C0();
  v31 = *(v44 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems);

  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = (v31 & 1) == 0;
  sub_AB00(v30, v13, &qword_F1B20, &qword_C2160);
  v34 = &v13[*(v41 + 36)];
  *v34 = KeyPath;
  v34[1] = sub_42D18;
  v34[2] = v33;
  sub_AB00(v13, v43, &qword_F1B08, &qword_C2158);
}

uint64_t sub_67BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B40, &qword_C21A0);
  v3 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v88 = (&v67 - v4);
  v5 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v80 = *(v5 - 8);
  v6 = *(v80 + 64);
  __chkstk_darwin(v5);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AF8, &qword_C2148);
  v76 = *(v77 - 8);
  v7 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v67 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AF0, &qword_C2140);
  v9 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v82 = &v67 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AD8, &qword_C2138);
  v11 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v79 = &v67 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B48, &qword_C21A8);
  v13 = *(v86 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v86);
  v81 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1AC8, &qword_C2130);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v85 = &v67 - v18;
  sub_B7A60();
  v84 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = (a1 + *(v5 + 20));
  v20 = *v19;
  v21 = v19[1];
  v93 = *v19;
  v94 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v22 = *(v90 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems);

  if ((v22 & 2) != 0)
  {
    v71 = v6;
    v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = v13;
    sub_B6E60();
    v41 = (a1 + *(v5 + 24));
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v70 = v42;
    v90 = v42;
    v91 = v43;
    v69 = v43;
    v68 = v44;
    v92 = v44;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B50, &qword_C2B90);
    sub_B75E0();
    v45 = v75;
    sub_B7790();
    v74 = a1;
    sub_68620();
    sub_A8CC(&qword_F1B00, &qword_F1AF8, &qword_C2148);
    v46 = v82;
    v47 = v77;
    sub_B7280();
    (*(v76 + 8))(v45, v47);
    v93 = v20;
    v94 = v21;
    sub_B75C0();
    v48 = v90;
    swift_getKeyPath();
    v93 = v48;
    sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65C0();

    v49 = *(v48 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);

    KeyPath = swift_getKeyPath();
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    v52 = (v46 + *(v78 + 36));
    *v52 = KeyPath;
    v52[1] = sub_42D18;
    v52[2] = v51;
    v93 = v20;
    v94 = v21;
    sub_B75C0();
    v53 = v90;
    swift_getKeyPath();
    v93 = v53;
    sub_B65C0();

    v54 = *(v53 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);

    if (v54 == 1)
    {
      v55 = sub_B6FA0();
    }

    else
    {
      v55 = sub_B6F80();
    }

    v56 = v55;
    v40 = v85;
    v57 = v79;
    sub_AB00(v82, v79, &qword_F1AF0, &qword_C2140);
    v58 = v83;
    *(v57 + *(v83 + 36)) = v56;
    v93 = v70;
    v94 = v69;
    v95 = v68;
    sub_B75C0();
    v93 = v90;
    v94 = v91;
    v59 = v72;
    sub_728EC(v74, v72, type metadata accessor for ItemContactInfoSetupConfirmationView);
    v60 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v61 = swift_allocObject();
    sub_708C8(v59, v61 + v60);
    v62 = sub_72460();
    v63 = v81;
    sub_B7470();

    sub_A194(v57, &qword_F1AD8, &qword_C2138);
    v64 = v73;
    v65 = v86;
    (*(v73 + 16))(v88, v63, v86);
    swift_storeEnumTagMultiPayload();
    v93 = v58;
    v94 = &type metadata for String;
    v95 = v62;
    v96 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    sub_B6F00();
    (*(v64 + 8))(v63, v65);
  }

  else
  {
    v93 = v20;
    v94 = v21;
    sub_B75C0();
    v23 = v90;
    swift_getKeyPath();
    v93 = v23;
    sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65C0();

    v25 = *(v23 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
    v24 = *(v23 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);

    v93 = v25;
    v94 = v24;
    sub_97E8();
    v26 = sub_B7200();
    v28 = v27;
    v30 = v29;
    LODWORD(v93) = sub_B6FA0();
    v31 = sub_B71C0();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_9C84(v26, v28, v30 & 1);

    v38 = v88;
    *v88 = v31;
    v38[1] = v33;
    *(v38 + 16) = v35 & 1;
    v38[3] = v37;
    swift_storeEnumTagMultiPayload();
    v39 = sub_72460();
    v93 = v83;
    v94 = &type metadata for String;
    v95 = v39;
    v96 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v40 = v85;
    sub_B6F00();
  }

  sub_AB00(v40, v89, &qword_F1AC8, &qword_C2130);
}

uint64_t sub_68620()
{
  v1 = sub_B6320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_B6370();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LostModeInfo();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v0 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v17 = *v15;
  v16 = v15[1];
  v20[2] = v17;
  v20[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  sub_728EC(v20[1] + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, v14, type metadata accessor for LostModeInfo);

  (*(v7 + 16))(v10, v14, v6);
  sub_72954(v14);
  sub_B6330();
  (*(v7 + 8))(v10, v6);
  v18 = (*(v2 + 88))(v5, v1);
  if (v18 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    return 5;
  }

  if (v18 == enum case for PersonModel.Handle.Kind.email(_:))
  {
    return 7;
  }

  if (v18 != enum case for PersonModel.Handle.Kind.unknown(_:))
  {
    (*(v2 + 8))(v5, v1);
  }

  return 6;
}

uint64_t sub_688D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_B6320();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = *a1;
  v40 = a1[1];
  v41 = v14;
  v15 = *a2;
  v38 = a2[1];
  v39 = v15;
  sub_B7A60();
  v43 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v17 = (a3 + *(v16 + 20));
  v18 = v17[1];
  v42 = *v17;
  *&v46 = v42;
  *(&v46 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  (*(v7 + 16))(v13, v44 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v6);

  (*(v7 + 104))(v11, enum case for PersonModel.Handle.Kind.phoneNumber(_:), v6);
  sub_72884(&qword_F1B58, &type metadata accessor for PersonModel.Handle.Kind);
  v19 = sub_B78C0();
  v20 = *(v7 + 8);
  v20(v11, v6);
  v20(v13, v6);
  if (v19)
  {
    v21 = sub_68DB0(v41, v40, v39, v38);
    v23 = v22;
    v24 = *(v16 + 24);
    v41 = a3;
    v25 = (a3 + v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    *&v46 = *v25;
    *(&v46 + 1) = v27;
    v47 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B50, &qword_C2B90);
    sub_B75C0();
    if (v21 == v44 && v23 == v45)
    {
    }

    else
    {
      v40 = v28;
      v29 = sub_B7DD0();

      if (v29)
      {
      }

      else
      {
        *&v46 = v26;
        *(&v46 + 1) = v27;
        v47 = v40;
        v44 = v21;
        v45 = v23;
        sub_B75D0();
      }
    }

    a3 = v41;
  }

  *&v46 = v42;
  *(&v46 + 1) = v18;
  sub_B75C0();
  v30 = v44;
  v31 = a3 + *(v16 + 24);
  v32 = *v31;
  v33 = *(v31 + 16);
  v46 = v32;
  v47 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B50, &qword_C2B90);
  sub_B75C0();
  v34 = v44;
  v35 = v45;
  if (*(v30 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo) == v44 && *(v30 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8) == v45 || (sub_B7DD0() & 1) != 0)
  {
    sub_76EA8(v34, v35);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v38 - 4) = v30;
    *(&v38 - 3) = v34;
    *(&v38 - 2) = v35;
    *&v46 = v30;
    sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }
}

uint64_t sub_68DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v9 = *v8;
  v10 = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v12 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 40);
  v11 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 48);
  v13 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 56);

  v14 = a3;
  v15 = a1;
  v16 = v11(v14, a4);
  v18 = v17;

  v19 = v16;
  sub_B75C0();
  v21 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 32);
  v20 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 40);
  v22 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 56);

  v23 = v21(v19, v18);
  v25 = v24;

  v26 = v23 == v15 && v25 == a2;
  if (!v26 && (sub_B7DD0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = sub_B7990();
  if (v27 >= sub_B7990())
  {
    goto LABEL_10;
  }

  v28 = sub_B7990();
  result = sub_B7990();
  v30 = __OFSUB__(v28, result);
  v31 = v28 - result;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    result = sub_B7990();
    if (!__OFSUB__(result, v31))
    {
      sub_7FAB0((result - v31) & ~((result - v31) >> 63), v19, v18, v32);

      sub_B75C0();
      v33 = sub_B7970();
      v35 = v34;

      v36 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 32);
      v37 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 40);
      v38 = *(v40 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 56);

      v23 = v36(v33, v35);

LABEL_10:

      return v23;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_69090@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_B6EA0();
  sub_69210(a1, &v13);
  v4 = v13;
  v5 = v14;
  v6 = *(&v14 + 1);
  v7 = v15;
  v8 = BYTE8(v15);
  v9 = *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  sub_B6AC0();
  sub_B7760();
  sub_B6B10();

  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[39] = v15;
  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  result = *v12;
  *(a2 + 112) = *&v12[47];
  *(a2 + 97) = *&v12[32];
  *(a2 + 81) = *&v12[16];
  *(a2 + 65) = *v12;
  return result;
}

uint64_t sub_69210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v5 = *v4;
  v6 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  swift_getKeyPath();
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v7 = v26 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  v8 = (v7 + *(type metadata accessor for LostModeInfo() + 20));
  v10 = *v8;
  v9 = v8[1];

  sub_97E8();
  v11 = sub_B7200();
  v13 = v12;
  v15 = v14;
  sub_B75C0();
  v16 = *(v25 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems);

  if ((v16 & 4) != 0)
  {
    sub_B6F80();
  }

  else
  {
    sub_B6FA0();
  }

  v17 = sub_B71C0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_9C84(v11, v13, v15 & 1);

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_41410(v17, v19, v21 & 1);

  sub_9C84(v17, v19, v21 & 1);
}

uint64_t sub_694B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_B62F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v11 = *v9;
  v10 = v9[1];
  v23[2] = v11;
  v23[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v12 = *(v23[1] + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType);

  if (v12)
  {

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    sub_B6E60();
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_FADB0);
    (*(v5 + 16))(v8, v18, v4);
    v14 = sub_B71B0();
    v15 = v19;
    v21 = v20;
    v17 = v22;

    v16 = v21 & 1;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  return result;
}

uint64_t sub_69704@<X0>(uint64_t a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_697B4(a1);
}

uint64_t sub_697B4@<X0>(uint64_t a1@<X8>)
{
  v145 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B60, &qword_C21E0);
  v132 = *(v2 - 8);
  v3 = *(v132 + 64);
  __chkstk_darwin(v2);
  v5 = &v123 - v4;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A90, &unk_C2108);
  v6 = *(*(v144 - 8) + 64);
  v7 = __chkstk_darwin(v144);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v123 - v10;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B68, &qword_C21E8);
  v12 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v143 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v136 = *(v14 - 8);
  v137 = v14;
  v15 = *(v136 + 64);
  __chkstk_darwin(v14);
  v124 = &v123 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v126 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v125 = &v123 - v21;
  v133 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v22 = *(v133 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v133);
  v24 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v123 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A78, &unk_C20F8);
  v139 = *(v29 - 8);
  v140 = v29;
  v30 = *(v139 + 64);
  v31 = __chkstk_darwin(v29);
  v135 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v134 = &v123 - v33;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B70, &unk_C21F0);
  v129 = *(v130 - 8);
  v34 = *(v129 + 8);
  __chkstk_darwin(v130);
  v128 = &v123 - v35;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1A70, &qword_C20F0);
  v36 = *(*(v141 - 8) + 64);
  v37 = __chkstk_darwin(v141);
  v127 = &v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v131 = &v123 - v39;
  v149 = &type metadata for SolariumFeatureFlag;
  v150 = sub_28360();
  v40 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v147);
  v138 = v23;
  if (v40)
  {
    sub_B69F0();
    v41 = sub_B6A00();
    (*(*(v41 - 8) + 56))(v28, 0, 1, v41);
    sub_728EC(v1, &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
    v42 = *(v22 + 80);
    v126 = ~v42;
    v43 = v1;
    v44 = swift_allocObject();
    v45 = sub_708C8(v24, v44 + ((v42 + 16) & ~v42));
    __chkstk_darwin(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0840, &qword_BFF58);
    sub_A8CC(&qword_F0848, &qword_F0840, &qword_BFF58);
    sub_B7600();
    v46 = v1;
    v47 = (v1 + *(v133 + 20));
    v49 = *v47;
    v48 = v47[1];
    v135 = v49;
    v147 = v49;
    v148 = v48;
    v133 = v48;
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
    sub_B75C0();
    v50 = v125;
    sub_749A4(v125);

    v52 = v136;
    v51 = v137;
    if ((*(v136 + 48))(v50, 1, v137))
    {
      sub_A194(v50, &qword_EEE08, &qword_BD530);
      v53 = 0;
      v54 = 0xE000000000000000;
    }

    else
    {
      v68 = v124;
      (*(v52 + 16))(v124, v50, v51);
      sub_A194(v50, &qword_EEE08, &qword_BD530);
      v53 = sub_B6920();
      v54 = v69;
      (*(v52 + 8))(v68, v51);
    }

    v147 = v53;
    v148 = v54;
    sub_97E8();
    v70 = sub_B7200();
    v136 = v71;
    v137 = v70;
    LODWORD(v124) = v72;
    v125 = v73;
    sub_728EC(v43, v24, type metadata accessor for ItemContactInfoSetupConfirmationView);
    sub_B7A60();
    v74 = sub_B7A50();
    v75 = (v42 + 32) & v126;
    v76 = swift_allocObject();
    *(v76 + 16) = v74;
    *(v76 + 24) = &protocol witness table for MainActor;
    sub_708C8(v24, v76 + v75);
    sub_728EC(v46, v24, type metadata accessor for ItemContactInfoSetupConfirmationView);
    v77 = sub_B7A50();
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = &protocol witness table for MainActor;
    sub_708C8(v24, v78 + v75);
    v79 = sub_B76D0();
    v80 = __chkstk_darwin(v79);
    __chkstk_darwin(v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
    sub_A8CC(&qword_F1A80, &qword_F1A78, &unk_C20F8);
    sub_9BD4();
    v81 = v140;
    v82 = v124;
    v83 = v128;
    v85 = v136;
    v84 = v137;
    v86 = v134;
    sub_B7310();

    sub_9C84(v84, v85, v82 & 1);

    (*(v139 + 8))(v86, v81);
    v147 = v135;
    v148 = v133;
    sub_B75C0();
    v87 = v146;
    swift_getKeyPath();
    v147 = v87;
    sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65C0();

    v88 = *(v87 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling);

    KeyPath = swift_getKeyPath();
    v90 = swift_allocObject();
    *(v90 + 16) = v88;
    v91 = v127;
    (*(v129 + 4))(v127, v83, v130);
    v92 = (v91 + *(v141 + 36));
    *v92 = KeyPath;
    v92[1] = sub_42D18;
    v92[2] = v90;
    v93 = &qword_F1A70;
    v94 = &qword_C20F0;
    v95 = v131;
    sub_AB00(v91, v131, &qword_F1A70, &qword_C20F0);
    sub_A310(v95, v143, &qword_F1A70, &qword_C20F0);
    swift_storeEnumTagMultiPayload();
    sub_720F4(&qword_F1A68, &qword_F1A70, &qword_C20F0);
    sub_720F4(&qword_F1A88, &qword_F1A90, &unk_C2108);
  }

  else
  {
    v129 = v9;
    v130 = v5;
    v131 = v2;
    v134 = v11;
    sub_B69E0();
    v55 = sub_B6A00();
    (*(*(v55 - 8) + 56))(v28, 0, 1, v55);
    sub_728EC(v1, &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
    v56 = *(v22 + 80);
    v123 = ~v56;
    v57 = swift_allocObject();
    v128 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = sub_708C8(v128, v57 + ((v56 + 16) & ~v56));
    __chkstk_darwin(v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0840, &qword_BFF58);
    sub_A8CC(&qword_F0848, &qword_F0840, &qword_BFF58);
    sub_B7600();
    v59 = v1;
    v60 = (v1 + *(v133 + 20));
    v62 = *v60;
    v61 = v60[1];
    v133 = v62;
    v147 = v62;
    v148 = v61;
    v127 = v61;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
    sub_B75C0();
    v63 = v126;
    sub_749A4(v126);

    v65 = v136;
    v64 = v137;
    if ((*(v136 + 48))(v63, 1, v137))
    {
      sub_A194(v63, &qword_EEE08, &qword_BD530);
      v66 = 0;
      v67 = 0xE000000000000000;
    }

    else
    {
      v96 = v124;
      (*(v65 + 16))(v124, v63, v64);
      sub_A194(v63, &qword_EEE08, &qword_BD530);
      v66 = sub_B6920();
      v67 = v97;
      (*(v65 + 8))(v96, v64);
    }

    v147 = v66;
    v148 = v67;
    sub_97E8();
    v98 = sub_B7200();
    v136 = v99;
    v137 = v98;
    LODWORD(v124) = v100;
    v126 = v101;
    v102 = v59;
    v103 = v128;
    sub_728EC(v59, v128, type metadata accessor for ItemContactInfoSetupConfirmationView);
    sub_B7A60();
    v104 = sub_B7A50();
    v105 = (v56 + 32) & v123;
    v106 = swift_allocObject();
    *(v106 + 16) = v104;
    *(v106 + 24) = &protocol witness table for MainActor;
    sub_708C8(v103, v106 + v105);
    sub_728EC(v102, v103, type metadata accessor for ItemContactInfoSetupConfirmationView);
    v107 = sub_B7A50();
    v108 = swift_allocObject();
    *(v108 + 16) = v107;
    *(v108 + 24) = &protocol witness table for MainActor;
    sub_708C8(v103, v108 + v105);
    v109 = sub_B76D0();
    v110 = __chkstk_darwin(v109);
    __chkstk_darwin(v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
    sub_A8CC(&qword_F1A80, &qword_F1A78, &unk_C20F8);
    sub_9BD4();
    v111 = v140;
    v112 = v124;
    v113 = v130;
    v115 = v136;
    v114 = v137;
    v116 = v135;
    sub_B7400();

    sub_9C84(v114, v115, v112 & 1);

    (*(v139 + 8))(v116, v111);
    v147 = v133;
    v148 = v127;
    sub_B75C0();
    v117 = v146;
    swift_getKeyPath();
    v147 = v117;
    sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65C0();

    LOBYTE(v103) = *(v117 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling);

    v118 = swift_getKeyPath();
    v119 = swift_allocObject();
    *(v119 + 16) = v103;
    v120 = v129;
    (*(v132 + 32))(v129, v113, v131);
    v121 = (v120 + *(v144 + 36));
    *v121 = v118;
    v121[1] = sub_42D18;
    v121[2] = v119;
    v93 = &qword_F1A90;
    v94 = &unk_C2108;
    v95 = v134;
    sub_AB00(v120, v134, &qword_F1A90, &unk_C2108);
    sub_A310(v95, v143, &qword_F1A90, &unk_C2108);
    swift_storeEnumTagMultiPayload();
    sub_720F4(&qword_F1A68, &qword_F1A70, &qword_C20F0);
    sub_720F4(&qword_F1A88, &qword_F1A90, &unk_C2108);
  }

  sub_B6F00();
  return sub_A194(v95, v93, v94);
}

void *sub_6AB7C()
{
  v1 = v0;
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_B67E0();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_B67D0();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v33 - v15;
  v17 = (v0 + *(v3 + 28));
  v18 = *v17;
  v19 = v17[1];
  v43 = *v17;
  v44 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v20 = *(v42 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType);

  if (v20)
  {
    return &_swiftEmptyArrayStorage;
  }

  v34 = v4;
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
  v22 = *(sub_B6800() - 8);
  v23 = *(v22 + 72);
  v33 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_BDA30;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v24 = sub_B62F0();
  v25 = __swift_project_value_buffer(v24, qword_FADB0);
  v26 = *(v24 - 8);
  (*(v26 + 16))(v16, v25, v24);
  (*(v26 + 56))(v16, 0, 1, v24);
  sub_B78D0();
  sub_A194(v16, &unk_F17B0, &qword_BE7D0);
  v43 = v18;
  v44 = v19;
  sub_B75C0();
  v27 = v42;
  swift_getKeyPath();
  v43 = v27;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  LODWORD(v24) = *(v27 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);

  v28 = &enum case for OnboardingTrayAction.State.loading(_:);
  if (!v24)
  {
    v28 = &enum case for OnboardingTrayAction.State.enabled(_:);
  }

  (*(v37 + 104))(v12, *v28, v38);
  (*(v39 + 104))(v41, enum case for OnboardingTrayAction.Style.bold(_:), v40);
  v29 = v35;
  sub_728EC(v36, v35, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v30 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v31 = swift_allocObject();
  sub_708C8(v29, v31 + v30);
  sub_B67F0();
  return v21;
}

uint64_t sub_6B0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v55 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F19E8, &qword_C1FB0);
  v2 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v4 = &v44 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F18D8, &qword_C1E18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v44 - v8;
  v10 = sub_B6F50();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F19F0, &qword_C1FB8);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v52 = &v44 - v17;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F18C0, &qword_C1E10);
  v18 = *(*(v54 - 8) + 64);
  v19 = __chkstk_darwin(v54);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v44 - v22;
  sub_B7A60();
  v56 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v25 = v53;
  v26 = (v53 + *(v24 + 20));
  v28 = *v26;
  v27 = v26[1];
  v58 = v28;
  v59 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v29 = *(v57 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType);

  if (v29 == 1)
  {
    v30 = sub_B6F30();
    v46 = v9;
    v47 = v6;
    v48 = v5;
    v45 = v16;
    __chkstk_darwin(v30);
    *(&v44 - 2) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0648, &unk_C1FC0);
    sub_71B40();
    v31 = v52;
    sub_B6A80();
    v32 = sub_B6F40();
    __chkstk_darwin(v32);
    *(&v44 - 2) = v25;
    v33 = v45;
    sub_B6A80();
    v34 = *(v51 + 48);
    v35 = v49;
    v36 = *(v49 + 16);
    v37 = v31;
    v38 = v50;
    v36(v4, v37, v50);
    v36(&v4[v34], v33, v38);
    v39 = v46;
    sub_B6EE0();
    v40 = v47;
    v41 = v48;
    (*(v47 + 16))(v21, v39, v48);
    (*(v40 + 56))(v21, 0, 1, v41);
    sub_A8CC(&qword_F18D0, &qword_F18D8, &qword_C1E18);
    sub_B6F70();
    sub_A194(v21, &qword_F18C0, &qword_C1E10);
    (*(v40 + 8))(v39, v41);
    v42 = *(v35 + 8);
    v42(v33, v38);
    v42(v52, v38);
  }

  else
  {
    (*(v6 + 56))(v21, 1, 1, v5);
    sub_A8CC(&qword_F18D0, &qword_F18D8, &qword_C1E18);
    sub_B6F70();
    sub_A194(v21, &qword_F18C0, &qword_C1E10);
  }

  sub_70814();
  sub_B6F60();
  sub_A194(v23, &qword_F18C0, &qword_C1E10);
}

uint64_t sub_6B704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v4 = sub_B7950();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0658, &unk_BFD30);
  v13 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v15 = &v37 - v14;
  sub_B7A60();
  v41 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v16 = sub_B62F0();
  v17 = __swift_project_value_buffer(v16, qword_FAD48);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v12, v17, v16);
  (*(v18 + 56))(v12, 0, 1, v16);
  v19 = sub_B78D0();
  v21 = v20;
  sub_A194(v12, &unk_F17B0, &qword_BE7D0);
  (*(v5 + 104))(v8, enum case for String.ButtonType.cancel(_:), v4);
  v22 = sub_B7960();
  v24 = v23;
  (*(v5 + 8))(v8, v4);
  v25 = v40;
  sub_728EC(v40, &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
  v26 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v27 = swift_allocObject();
  v28 = sub_708C8(&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v45 = v19;
  v46 = v21;
  __chkstk_darwin(v28);
  *(&v37 - 4) = &v45;
  *(&v37 - 3) = v22;
  *(&v37 - 2) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
  sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0);
  sub_B7610();

  v29 = (v25 + *(v39 + 20));
  v31 = *v29;
  v30 = v29[1];
  v45 = v31;
  v46 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v32 = v44;
  swift_getKeyPath();
  v45 = v32;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  LOBYTE(v21) = *(v32 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);

  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = v21;
  v35 = &v15[*(v42 + 36)];
  *v35 = KeyPath;
  v35[1] = sub_42D18;
  v35[2] = v34;
  sub_415C0();
  sub_B7360();
  sub_A194(v15, &qword_F0658, &unk_BFD30);
}

uint64_t sub_6BCFC(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 36);
  if (*v2)
  {
    v3 = *(v2 + 8);
    (*v2)();
  }
}

uint64_t sub_6BDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v54 = a2;
  v46 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v44 = *(v46 - 8);
  v2 = *(v44 + 64);
  __chkstk_darwin(v46);
  v45 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_B7950();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0668, &qword_C1FD0);
  v51 = *(v53 - 8);
  v12 = *(v51 + 64);
  __chkstk_darwin(v53);
  v14 = &v44 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0658, &unk_BFD30);
  v15 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v47 = &v44 - v16;
  sub_B7A60();
  v50 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v49 = v14;
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v17 = sub_B62F0();
  v18 = __swift_project_value_buffer(v17, qword_FAD48);
  v19 = *(v17 - 8);
  (*(v19 + 16))(v11, v18, v17);
  (*(v19 + 56))(v11, 0, 1, v17);
  v20 = sub_B78D0();
  v22 = v21;
  sub_A194(v11, &unk_F17B0, &qword_BE7D0);
  (*(v4 + 104))(v7, enum case for String.ButtonType.done(_:), v3);
  v23 = sub_B7960();
  v25 = v24;
  (*(v4 + 8))(v7, v3);
  v26 = v48;
  v27 = v45;
  sub_728EC(v48, v45, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = swift_allocObject();
  v30 = sub_708C8(v27, v29 + v28);
  v56 = v20;
  v57 = v22;
  __chkstk_darwin(v30);
  *(&v44 - 4) = &v56;
  *(&v44 - 3) = v23;
  *(&v44 - 2) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
  sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0);
  v31 = v49;
  sub_B7610();

  v32 = (v26 + *(v46 + 20));
  v33 = *v32;
  v34 = v32[1];
  v56 = *v32;
  v57 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v35 = v55;
  swift_getKeyPath();
  v56 = v35;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  LOBYTE(v22) = *(v35 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting);
  v36 = 1;

  if ((v22 & 1) == 0)
  {
    v56 = v33;
    v57 = v34;
    sub_B75C0();
    v37 = v55;
    swift_getKeyPath();
    v56 = v37;
    sub_B65C0();

    v38 = *(v37 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton);

    v36 = v38 ^ 1;
  }

  KeyPath = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v36 & 1;
  v41 = v47;
  (*(v51 + 32))(v47, v31, v53);
  v42 = (v41 + *(v52 + 36));
  *v42 = KeyPath;
  v42[1] = sub_417AC;
  v42[2] = v40;
  sub_415C0();
  sub_B7360();
  sub_A194(v41, &qword_F0658, &unk_BFD30);
}

uint64_t sub_6C4E8(uint64_t a1)
{
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v21[0] = *(v2 - 8);
  v3 = *(v21[0] + 64);
  __chkstk_darwin(v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v21 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 + *(v2 + 20));
  v10 = *v8;
  v9 = v8[1];
  v22 = v10;
  v23 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v11 = v21[1];
  swift_getKeyPath();
  v22 = v11;
  sub_72884(&qword_F1840, type metadata accessor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v12 = *(v11 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton);

  if (v12 == 1)
  {
    v14 = sub_B7A80();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    sub_728EC(a1, v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
    v15 = sub_B7A50();
    v16 = (*(v21[0] + 80) + 32) & ~*(v21[0] + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = &protocol witness table for MainActor;
    sub_708C8(v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    sub_30A3C(0, 0, v7, &unk_C2038, v17);
  }

  else
  {
    v18 = a1 + *(v2 + 36);
    if (*v18)
    {
      v19 = *(v18 + 8);
      (*v18)(v13);
    }
  }
}

uint64_t sub_6C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_B7A60();
  v4[6] = sub_B7A50();
  v6 = sub_B7A00();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_6C8B4, v6, v5);
}

uint64_t sub_6C8B4()
{
  v1 = v0[5];
  v2 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v0[9] = v2;
  v3 = (v1 + *(v2 + 20));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v0[10] = v0[4];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_6C98C;

  return sub_734C8();
}

uint64_t sub_6C98C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 96) = a1;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);

  return _swift_task_switch(sub_730C0, v6, v5);
}

uint64_t sub_6CAD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - v4;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a1 + *(type metadata accessor for ItemContactInfoSetupConfirmationView() + 20));
  v8 = *v6;
  v7 = v6[1];
  v14[2] = v8;
  v14[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  v9 = sub_B7A80();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();

  v11 = sub_B7A50();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;

  sub_30A3C(0, 0, v5, &unk_C1FA8, v12);
}

uint64_t sub_6CCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[2] = a2;
  v3 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v21[0] = *(v3 - 8);
  v4 = *(v21[0] + 64);
  __chkstk_darwin(v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v21 - v12;
  sub_B7A60();
  v21[1] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = (a1 + *(v3 + 20));
  v16 = *v14;
  v15 = v14[1];
  v22 = v16;
  v23 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1860, &qword_C1D68);
  sub_B75C0();
  sub_73D48(v13);

  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_A194(v13, &qword_EEE08, &qword_BD530);
    v17 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v6 + 16))(v9, v13, v5);
    sub_A194(v13, &qword_EEE08, &qword_BD530);
    v17 = sub_B6930();
    (*(v6 + 8))(v9, v5);
  }

  v22 = v17;
  swift_getKeyPath();
  sub_728EC(a1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ItemContactInfoSetupConfirmationView);
  v18 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
  v19 = swift_allocObject();
  sub_708C8(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1900, &qword_C1E30);
  sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50);
  sub_70BC0();
  sub_B76E0();
}

uint64_t sub_6D0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v121 = a3;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F19D8, &qword_C1F58);
  v4 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v120 = &v95 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F19E0, &unk_C1F60);
  v6 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v104 = &v95 - v7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1910, &unk_C1E38);
  v8 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v105 = &v95 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v113 = *(v10 - 8);
  v110 = *(v113 + 64);
  __chkstk_darwin(v10);
  v112 = &v95 - v11;
  v12 = type metadata accessor for ItemContactInfoSetupConfirmationView();
  v106 = *(v12 - 8);
  v13 = *(v106 + 64);
  __chkstk_darwin(v12 - 8);
  v107 = v14;
  v109 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v98 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v97 = &v95 - v20;
  __chkstk_darwin(v19);
  v101 = &v95 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v116 = *(v22 - 8);
  v117 = v22;
  v23 = *(v116 + 64);
  v24 = __chkstk_darwin(v22);
  v99 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v100 = &v95 - v27;
  __chkstk_darwin(v26);
  v102 = &v95 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v96 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v95 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v95 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v95 - v40;
  __chkstk_darwin(v39);
  v43 = &v95 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1900, &qword_C1E30);
  v45 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44 - 8);
  v115 = &v95 - v46;
  sub_B7A60();
  v114 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = a1;
  sub_B68A0();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  v51 = v50(v43, 1, v48);
  v122 = v10;
  v123 = v47;
  v108 = v43;
  if (v51 == 1)
  {
    v124 = sub_B68C0();
    v125 = v52;
    sub_B68A0();
    if (v50(v41, 1, v48) == 1)
    {
      sub_A194(v41, &qword_EEF48, &unk_C01F0);
      v53 = sub_B6A00();
      (*(*(v53 - 8) + 56))(v101, 1, 1, v53);
    }

    else
    {
      sub_B6890();
      (*(v49 + 8))(v41, v48);
    }

    v61 = v115;
    v62 = v109;
    sub_728EC(v111, v109, type metadata accessor for ItemContactInfoSetupConfirmationView);
    v64 = v112;
    v63 = v113;
    v65 = v122;
    (*(v113 + 16))(v112, v123, v122);
    v66 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v67 = (v107 + *(v63 + 80) + v66) & ~*(v63 + 80);
    v68 = swift_allocObject();
    sub_708C8(v62, v68 + v66);
    (*(v63 + 32))(v68 + v67, v64, v65);
    sub_97E8();
    v69 = v102;
    sub_B7630();
    v71 = v116;
    v70 = v117;
    (*(v116 + 16))(v104, v69, v117);
    swift_storeEnumTagMultiPayload();
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
    v72 = v105;
    sub_B6F00();
    sub_A310(v72, v120, &qword_F1910, &unk_C1E38);
    swift_storeEnumTagMultiPayload();
    sub_70C78();
    sub_B6F00();
    sub_A194(v72, &qword_F1910, &unk_C1E38);
    (*(v71 + 8))(v69, v70);
LABEL_18:
    sub_A194(v108, &qword_EEF48, &unk_C01F0);
    goto LABEL_19;
  }

  sub_A310(v43, v38, &qword_EEF48, &unk_C01F0);
  v54 = (*(v49 + 88))(v38, v48);
  if (v54 != enum case for AlertInfo.ActionInfo.Style.cancel<A>(_:) && v54 != enum case for AlertInfo.ActionInfo.Style.destructive<A>(_:))
  {
    v55 = *(v49 + 8);
    v55(v38, v48);
    v124 = sub_B68C0();
    v125 = v56;
    v57 = v96;
    sub_B68A0();
    if (v50(v57, 1, v48) == 1)
    {
      sub_A194(v57, &qword_EEF48, &unk_C01F0);
      v58 = sub_B6A00();
      (*(*(v58 - 8) + 56))(v98, 1, 1, v58);
    }

    else
    {
      sub_B6890();
      v55(v57, v48);
    }

    v84 = v109;
    sub_728EC(v111, v109, type metadata accessor for ItemContactInfoSetupConfirmationView);
    v86 = v112;
    v85 = v113;
    v87 = v122;
    (*(v113 + 16))(v112, v123, v122);
    v88 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v89 = (v107 + *(v85 + 80) + v88) & ~*(v85 + 80);
    v90 = swift_allocObject();
    sub_708C8(v84, v90 + v88);
    (*(v85 + 32))(v90 + v89, v86, v87);
    sub_97E8();
    v91 = v99;
    sub_B7630();
    v93 = v116;
    v92 = v117;
    (*(v116 + 16))(v120, v91, v117);
    swift_storeEnumTagMultiPayload();
    sub_70C78();
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
    v61 = v115;
    sub_B6F00();
    (*(v93 + 8))(v91, v92);
    goto LABEL_18;
  }

  sub_A194(v108, &qword_EEF48, &unk_C01F0);
  v124 = sub_B68C0();
  v125 = v59;
  sub_B68A0();
  if (v50(v35, 1, v48) == 1)
  {
    sub_A194(v35, &qword_EEF48, &unk_C01F0);
    v60 = sub_B6A00();
    (*(*(v60 - 8) + 56))(v97, 1, 1, v60);
  }

  else
  {
    sub_B6890();
    (*(v49 + 8))(v35, v48);
  }

  v61 = v115;
  v73 = v109;
  sub_728EC(v111, v109, type metadata accessor for ItemContactInfoSetupConfirmationView);
  v75 = v112;
  v74 = v113;
  v76 = v122;
  (*(v113 + 16))(v112, v123, v122);
  v77 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v78 = (v107 + *(v74 + 80) + v77) & ~*(v74 + 80);
  v79 = swift_allocObject();
  sub_708C8(v73, v79 + v77);
  (*(v74 + 32))(v79 + v78, v75, v76);
  sub_97E8();
  v80 = v100;
  sub_B7630();
  v82 = v116;
  v81 = v117;
  (*(v116 + 16))(v104, v80, v117);
  swift_storeEnumTagMultiPayload();
  sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620);
  v83 = v105;
  sub_B6F00();
  sub_A310(v83, v120, &qword_F1910, &unk_C1E38);
  swift_storeEnumTagMultiPayload();
  sub_70C78();
  sub_B6F00();
  sub_A194(v83, &qword_F1910, &unk_C1E38);
  (*(v82 + 8))(v80, v81);
LABEL_19:
  sub_AB00(v61, v121, &qword_F1900, &qword_C1E30);
}